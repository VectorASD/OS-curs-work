#include <QApplication>

#include <QWidget>
#include <QGridLayout>
#include <QGroupBox>
#include <QRadioButton>
#include <QCheckBox>
#include <QLabel>
#include <QLineEdit>
#include <QFileDialog>
#include <QPushButton>
#include <QTextEdit>

#include <client.h>

class MainWindow : public QWidget {
    QHBoxLayout *hbox, *hbox2;
    QPushButton *opener, *sender;
    QLabel *path;
    QGridLayout grid;
    QCheckBox options[9];
    QLineEdit ip, port;
    QTextEdit result;

    QByteArray buffer;
    int options2num() {
        int num = 0;
        for (int i = 0; i < 9; i++) num |= options[i].isChecked() << i;
        return num;
    }
public:
    MainWindow() {
        setWindowTitle("Курсовая работа (клиент)");
        resize(640, 480);
        setLayout(&grid);

        hbox = new QHBoxLayout;
        opener = new QPushButton("Выбрать ELF-файл");
        path = new QLabel("ELF: ?");
        QObject::connect(opener, &QPushButton::clicked, [=]() {
            sender->setEnabled(false);
            QString filename = QFileDialog::getOpenFileName(this);
            if (!filename.length()) { path->setText("ELF: файл не выбран"); return; }
            QFile file(filename);
            if (!file.exists()) { path->setText("ELF: файл не обнаружен"); return; }
            if (!file.open(QIODevice::ReadOnly)) { path->setText("ELF: файл не удалось открыть"); return; }
            buffer = file.readAll();
            sender->setEnabled(true);
            path->setText("ELF: сейчас открыт (" + QString::number(buffer.size()) + " b.):\n" + filename);
        });
        hbox->addWidget(opener);
        hbox->addWidget(path);

        hbox2 = new QHBoxLayout;
        hbox2->addWidget(new QLabel("Server (ip/port):"));
        hbox2->addWidget(&ip);
        hbox2->addWidget(new QLabel("/"));
        hbox2->addWidget(&port);
        ip.setText("127.0.0.1");
        port.setText("2200");

        QGroupBox *groupBox = new QGroupBox("Опции");
        //groupBox->setFlat(true);
        QVBoxLayout *vbox = new QVBoxLayout;
        for (int i = 0; i < 9; i++) {
            auto checkbox = options + i;
            checkbox->setText(QString().sprintf("OPTION %u", 1 << i));
            checkbox->setChecked(true);
            vbox->addWidget(checkbox);
        }
        vbox->addStretch(1);
        groupBox->setLayout(vbox);

        sender = new QPushButton("Отправить");
        sender->setEnabled(false);
        QObject::connect(sender, &QPushButton::clicked, [=]() {
            QStringList list;
            client(list, this, ip.text(), port.text().toUShort(), buffer, options2num());
            result.setText(list.join(""));
        });

        grid.addLayout(hbox, 1, 1);
        grid.addLayout(hbox2, 2, 1);
        grid.addWidget(groupBox, 3, 1);
        grid.addWidget(sender, 4, 1);
        grid.addWidget(&result, 5, 1, 5, 1);
    }
    ~MainWindow() {}
};

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
