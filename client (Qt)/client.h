#ifndef CLIENT_H
#define CLIENT_H

/* Мои коды ошибок:
 0 - всё пучком
 1 - не получилось открыть файловый дескриптор с эльфом (нет файла по пути, нет прав, заLOCKан (приватизирован) процессом и т.п.)
 2 - не получилось считать stat-метаданные файла. Странная ошибка, ибо никогда не получал, но возможна
 3 - не вышло считать файл (целиком). Обычно бывает, когда жёсткий диск ломается прямо в процессе считывания. Никогда не встречал
 4 - не получилось закрыть ранее открытый дескриптор. Ещё более странная ошибка, ведь файл наносекунду назад был удачно считан, но возможна
 5 - файл не содержит в себе эльфийских одёжек (magic-значение файла не верно)
 6 - файл не содержит в себе эльфийских одёжек (один из параметров заголовка с недопустимым нулевым байтом)
 7 - разрядность файла не 32 и не 64 бита... 128? ;'-}
 8 - направление данных ни little-endian, ни big-endian
 9 - версия ELF-файла должна быть всегда 1 и только всегда 1, иначе моя программа может встретить трудности в прочтении экзотики
10 - неподдерживаемый размер dynsym-секции
11 - ip2num: допускаются только символы '.', '\0', цифры 0-9 и игнорируемые ' ', '\n', '\r', '\t'...
12 - ip2num: одно из чисел больше 255
13 - ip2num: слишком много точек, т.е. их должно быть ровно 3, а не больше. Например "0.0.0.0.0"
14 - ip2num: слишком мало  точек, т.е. их должно быть ровно 3, а не меньше. Например "0.0.0"
15 - server: не получилось создать сокет
16 - server: не получилось забиндеть сокет
17 - server: проблемы с listen-функцией
18 - server: проблемы с accept-функцией
19 - client: не получилось создать сокет
20 - client: не получилось подсоединиться к сокету

  В соответствии с https://docs.oracle.com/en/operating-systems/solaris/oracle-solaris/11.4/linkers-libraries/elf-identification.html
я не имею права за pad с НЕ нулевыми байтами завершать программу ошибкой
*/

#include <QTcpSocket>
#include <QFile>

typedef unsigned char byte;
typedef const char* text;





/*
Коротко об uleb128 (unsigned little endian based 128) кодировке:
      0 -       127: 0xxxxxxx
    128 -     16383: 1xxxxxxx 0xxxxxxx
  16384 -   2097151: 1xxxxxxx 1xxxxxxx 0xxxxxxx
2097152 - 268435455: 1xxxxxxx 1xxxxxxx 1xxxxxxx 0xxxxxxx
и так далее...
если нужно передавать отрицательные числа, советую бит минуса переносить в начало, а не оставлять в конце
*/

void post_num(QTcpSocket &sock, int num) {
    //printf("IN NUM %u\n", num);
    while (num > 127) {
        byte b = 128 | (num & 127);
        //sock.putChar(char(b));
        sock.write((text) &b, 1);
        qDebug("SEND: %u", b);
        num >>= 7;
    }
    //sock.putChar(char(num));
    int c = char(num);
    sock.write((text) &c, 1);
    qDebug("SEND: %u", c);
    sock.flush();
}
void post_str(QTcpSocket &sock, text data, int size) {
    if (size == 0) size = int(strlen(data)) + 1;
    post_num(sock, size);
    sock.write(data, size);
    sock.flush();
}
#include <unistd.h>

void waiter(QTcpSocket &sock, int min_bytes) {
    while (sock.bytesAvailable() < min_bytes) sock.waitForReadyRead(1);
}

int see_num(QTcpSocket &sock) {
    int num = 0, shift = 0;
    char c;
    do {
        waiter(sock, 1);
        if (!sock.getChar(&c)) return -1;
        num |= (c & 127) << shift;
        shift += 7;
    } while (c < 0);
    //printf("OUT NUM %u\n", num);
    return num;
}
int see_str(QTcpSocket &sock, char **res) {
    int size = see_num(sock);
    if (size == -1) return -1;
    char *data = new char[size];
    waiter(sock, size);
    if (sock.read(data, size) != size) {
        delete[] data;
        return -1;
    }
    *res = data;
    return size;
}



#define ERROR(str) do { res.append(str); return; } while(0)

void client(QStringList &res, QObject *parent, QString ip, quint16 port, QByteArray &buffer, int options) {
    int num = 1;
    bool my_prog_little = *reinterpret_cast<byte*>(&num) == 1;
    // в случае big-endian внутри будет 0x00000001, т.е. первый байт = 0, а в случае little-endian будет 0x01000000, т.е. первый байт = 1

    res.append(QString().sprintf("PID: %u\n", getpid()));
    res.append(QString().sprintf("My prog (client) endian: %s\n", my_prog_little ? "little" : "big"));

    QTcpSocket sock(parent);
    sock.connectToHost(ip, port);
    if (!sock.waitForConnected(3000)) ERROR("Timeout");

    int filesize = buffer.size();
    if (options & 1) {
        res.append(QString().sprintf("Client: Размер файла:    %u b.\n", filesize));
        res.append("Client: Файл открыт удачно\n");
    }

    post_num(sock, options);
    post_str(sock, buffer.data(), filesize);

    int size;
    char *data;
    if ((size = see_str(sock, &data)) < 0) res.append("Unknown error: Не удалось считать результат (или ошибку) с сервера :/\n");
    else {
        res.append("|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|\n");
        res.append(data);
        res.append("|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|\n");
    }
    sock.close();
}

#endif // CLIENT_H
