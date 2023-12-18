#include <stdlib.h>
#include <stdio.h>
#include <sys/stat.h>

//#include <string.h> // memcpy (решил пожадничать одним include'ом ради учебных целей, и за счёт gcc-флага -save-temps)
extern void* memcpy (void* __restrict __dest, const void* __restrict __src, size_t __n)
    __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1, 2)));
extern void* memset (void* __s, int __c, size_t __n) __attribute__((__nothrow__, __leaf__)) __attribute__((__nonnull__(1)));

#include <stdarg.h> // va_list, va_start, va_end
#include <unistd.h> // write, read, close, getpid



typedef const char *text;
typedef unsigned char byte;
typedef unsigned short ushort;
//typedef unsigned long long int ulong; -> уже есть в types.h
typedef unsigned int uint;

typedef unsigned char bool;
#define false 0
#define true 1



byte BUFFER[256];

text buffprintf(text fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vsprintf(BUFFER, fmt, args);
    va_end(args);
    return BUFFER;
};

void error(int code, text fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vprintf(fmt, args);
    va_end(args);
    exit(code);
}

int sock_error(int sock, int code, text fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vdprintf(sock, fmt, args);
    va_end(args);
    return code;
}



// Перечисления

/* CodeGen (JavaScript)
// Url: https://docs.oracle.com/en/operating-systems/solaris/oracle-solaris/11.4/linkers-libraries/dynamic-section.html
let res = ["    /* my code-generator LAUNCHED *\/"];
for (let ch of document.getElementsByClassName("Formal")[0].children[1].children) {
    ch = ch.children;
    res.push("    case " + ch[1].innerText + ': n = "' + ch[0].innerText + '"; t = ' +
        {"Unspecified": 0, "d_val": 1, "d_ptr": 2, "Ignored": 3}[ch[2].innerText] + "; break;");
}
res.push("    /* my code-generator KNOCKED OUT *\/");
console.log(res.join("\n"));
*/
void DynampicArrayTags(int tag, text* name, int* type) {
    text n = "?"; int t = 0;
    switch (tag) {
    /* my code-generator LAUNCHED */
    case 0:          n = "DT_NULL";              t = 3; break;
    case 1:          n = "DT_NEEDED";            t = 1 | 16; break;
    case 2:          n = "DT_PLTRELSZ";          t = 1 | 8; break;
    case 3:          n = "DT_PLTGOT";            t = 2; break;
    case 4:          n = "DT_HASH";              t = 2; break;
    case 5:          n = "DT_STRTAB";            t = 2; break;
    case 6:          n = "DT_SYMTAB";            t = 2; break;
    case 7:          n = "DT_RELA";              t = 2; break;
    case 8:          n = "DT_RELASZ";            t = 1 | 8; break;
    case 9:          n = "DT_RELAENT";           t = 1 | 8; break;
    case 10:         n = "DT_STRSZ";             t = 1 | 8; break;
    case 11:         n = "DT_SYMENT";            t = 1 | 8; break;
    case 12:         n = "DT_INIT";              t = 2; break;
    case 13:         n = "DT_FINI";              t = 2; break;
    case 14:         n = "DT_SONAME";            t = 1 | 16; break;
    case 15:         n = "DT_RPATH";             t = 1 | 16; break;
    case 16:         n = "DT_SYMBOLIC";          t = 3; break;
    case 17:         n = "DT_REL";               t = 2; break;
    case 18:         n = "DT_RELSZ";             t = 1 | 8; break;
    case 19:         n = "DT_RELENT";            t = 1 | 8; break;
    case 20:         n = "DT_PLTREL";            t = 1; break;
    case 21:         n = "DT_DEBUG";             t = 2; break;
    case 22:         n = "DT_TEXTREL";           t = 3; break;
    case 23:         n = "DT_JMPREL";            t = 2; break;
    case 24:         n = "DT_BIND_NOW";          t = 3; break;
    case 25:         n = "DT_INIT_ARRAY";        t = 2; break;
    case 26:         n = "DT_FINI_ARRAY";        t = 2; break;
    case 27:         n = "DT_INIT_ARRAYSZ";      t = 1 | 8; break;
    case 28:         n = "DT_FINI_ARRAYSZ";      t = 1 | 8; break;
    case 29:         n = "DT_RUNPATH";           t = 1 | 16; break;
    case 30:         n = "DT_FLAGS";             t = 1; break;
  //case 32:         n = "DT_ENCODING";          t = 0; break; Это начало интервала до DT_LOOS
    case 32:         n = "DT_PREINIT_ARRAY";     t = 2; break;
    case 33:         n = "DT_PREINIT_ARRAYSZ";   t = 1 | 8; break;
    case 34:         n = "DT_SYMTAB_SHNDX";      t = 2; break;
  //case 0x6000000d: n = "DT_LOOS";              t = 0; break; Это конец интервала от DT_ENCODING
    case 0x6000000d: n = "DT_SUNW_AUXILIARY";    t = 1 | 16; break;
    case 0x6000000e: n = "DT_SUNW_RTLDINF";      t = 2; break;
    case 0x6000000f: n = "DT_SUNW_FILTER";       t = 1 | 16; break;
    case 0x60000010: n = "DT_SUNW_CAP";          t = 2; break;
    case 0x60000011: n = "DT_SUNW_SYMTAB";       t = 2; break;
    case 0x60000012: n = "DT_SUNW_SYMSZ";        t = 1 | 8; break;
  //case 0x60000013: n = "DT_SUNW_ENCODING";     t = 0; break; Это начало интервала до DT_HIOS
    case 0x60000013: n = "DT_SUNW_SORTENT";      t = 1 | 8; break;
    case 0x60000014: n = "DT_SUNW_SYMSORT";      t = 2; break;
    case 0x60000015: n = "DT_SUNW_SYMSORTSZ";    t = 1 | 8; break;
    case 0x60000016: n = "DT_SUNW_TLSSORT";      t = 2; break;
    case 0x60000017: n = "DT_SUNW_TLSSORTSZ";    t = 1 | 8; break;
    case 0x60000018: n = "DT_SUNW_CAPINFO";      t = 2; break;
    case 0x60000019: n = "DT_SUNW_STRPAD";       t = 1 | 8; break;
    case 0x6000001a: n = "DT_SUNW_CAPCHAIN";     t = 2; break;
    case 0x6000001b: n = "DT_SUNW_LDMACH";       t = 1; break;
    case 0x6000001c: n = "DT_SUNW_SYMTAB_SHNDX"; t = 2; break;
    case 0x6000001d: n = "DT_SUNW_CAPCHAINENT";  t = 1 | 8; break;
    case 0x6000001e: n = "DT_SUNW_DEFERRED";     t = 1 | 16; break;
    case 0x6000001f: n = "DT_SUNW_CAPCHAINSZ";   t = 1 | 8; break;
    case 0x60000020: n = "DT_SUNW_PHNAME";       t = 2 | 8; break;
    case 0x60000021: n = "DT_SUNW_PARENT";       t = 1 | 16; break;
    case 0x60000023: n = "DT_SUNW_SX_ASLR";      t = 1; break;
    case 0x60000025: n = "DT_SUNW_RELAX";        t = 1; break;
    case 0x60000027: n = "DT_SUNW_KMOD";         t = 1; break;
    case 0x60000029: n = "DT_SUNW_SX_NXHEAP";    t = 1; break;
    case 0x6000002b: n = "DT_SUNW_SX_NXSTACK";   t = 1; break;
    case 0x6000002d: n = "DT_SUNW_SX_ADIHEAP";   t = 1; break;
    case 0x6000002f: n = "DT_SUNW_SX_ADISTACK";  t = 1; break;
    case 0x60000031: n = "DT_SUNW_SX_SSBD";      t = 1; break;
    case 0x60000032: n = "DT_SUNW_SYMNSORT";     t = 2; break;
    case 0x60000033: n = "DT_SUNW_SYMNSORTSZ";   t = 1 | 8; break;
  //case 0x6ffff000: n = "DT_HIOS";              t = 0; break; Это конец интервала от DT_SUNW_ENCODING
  //case 0x6ffffd00: n = "DT_VALRNGLO";          t = 0; break; Это начало интервала до DT_VALRNGHI
    case 0x6ffffdf8: n = "DT_CHECKSUM";          t = 1; break;
    case 0x6ffffdf9: n = "DT_PLTPADSZ";          t = 1; break; // ??? не описан элемент
    case 0x6ffffdfa: n = "DT_MOVEENT";           t = 1 | 8; break;
    case 0x6ffffdfb: n = "DT_MOVESZ";            t = 1 | 8; break;
    case 0x6ffffdfd: n = "DT_POSFLAG_1";         t = 1; break;
    case 0x6ffffdfe: n = "DT_SYMINSZ";           t = 1 | 8; break;
    case 0x6ffffdff: n = "DT_SYMINENT";          t = 1 | 8; break;
  //case 0x6ffffdff: n = "DT_VALRNGHI";          t = 0; break; Это конец интервала от DT_VALRNGLO
  //case 0x6ffffe00: n = "DT_ADDRRNGLO";         t = 0; break; Это начало интервала до DT_ADDRRNGHI
    case 0x6ffffefa: n = "DT_CONFIG";            t = 1 | 16; break;
    case 0x6ffffefb: n = "DT_DEPAUDIT";          t = 1 | 16; break;
    case 0x6ffffefc: n = "DT_AUDIT";             t = 1 | 16; break;
    case 0x6ffffefd: n = "DT_PLTPAD";            t = 2; break;
    case 0x6ffffefe: n = "DT_MOVETAB";           t = 2; break;
    case 0x6ffffeff: n = "DT_SYMINFO";           t = 2; break;
  //case 0x6ffffeff: n = "DT_ADDRRNGHI";         t = 0; break; Это конец интервала от DT_ADDRRNGLO
    case 0x6ffffff0: n = "DT_VERSYM";            t = 2; break;
    case 0x6ffffff9: n = "DT_RELACOUNT";         t = 1; break;
    case 0x6ffffffa: n = "DT_RELCOUNT";          t = 1; break;
    case 0x6ffffffb: n = "DT_FLAGS_1";           t = 1; break;
    case 0x6ffffffc: n = "DT_VERDEF";            t = 2; break;
    case 0x6ffffffd: n = "DT_VERDEFNUM";         t = 1; break;
    case 0x6ffffffe: n = "DT_VERNEED";           t = 2; break;
    case 0x6fffffff: n = "DT_VERNEEDNUM";        t = 1; break;
  //case 0x70000000: n = "DT_LOPROC";            t = 0; break; Это начало интервала до DT_HIPROC
    case 0x70000001: n = "DT_SPARC_REGISTER";    t = 1; break;
    case 0x7ffffffd: n = "DT_AUXILIARY";         t = 1 | 16; break;
    case 0x7ffffffe: n = "DT_USED";              t = 1; break; // ??? не описан элемент
    case 0x7fffffff: n = "DT_FILTER";            t = 1 | 16; break;
  //case 0x7fffffff: n = "DT_HIPROC";            t = 0; break; Это конец интервала от DT_LOPROC
    /* my code-generator KNOCKED OUT */
    default:
        switch (tag) {
        case         32 ... 0x6000000d: n = "ENCODING   -   LOOS (0x%08x)"; break;
        case 0x60000013 ... 0x6ffff000: n = "SUNW_ENCODING--HIOS (0x%08x)"; break;
        case 0x6ffffd00 ... 0x6ffffdff: n = "VALRNGLO - VALRNGHI (0x%08x)"; break;
        case 0x6ffffe00 ... 0x6ffffeff: n = "ADDRRNGLO-ADDRRNGHI (0x%08x)"; break;
        case 0x70000000 ... 0x7fffffff: n = "LOPROC   -   HIPROC (0x%08x)"; break;
        default:                        n = "???  INTERVAL  ???  (0x%08x)";
        // сбой возможен только при tag = 31
        // или от 0x6ffff001 до 0x6ffffcff
        // или от 0x6fffff00 до 0x6ffffff8 (не включая 0x6ffffff0)
        // или при tag < 0, т.к. все они сейчас на стадии RESERVED (зарезервированы на будущее)
        }
        n = buffprintf(n, tag); t = 0;
    }
    *name = n; *type = t;
}

/* CodeGen (JavaScript)
// Url: https://gist.github.com/DtxdF/e6d940271e0efca7e0e2977723aec360
let find_p = () => {
    for (let p of document.getElementsByTagName("p"))
        if (p.outerText.indexOf("e_machine defines:") != -1) return p;
}
let res = [];
for (let line of find_p().nextElementSibling.outerText.split("\n"))
    if (line.indexOf("#define") != -1 && line.indexOf("/*") != -1) {
        let [a, b] = line.split("/*");
        a = a.split(/[ \t]/).filter(x => x);
        b = b.split("*\/")[0].trim();
        res.push("    case " + a[2] + ': return "' + b + '";');
    }
console.log(res.join("\n"));
*/
text Machines(int id) {
    switch (id) {
    case 0: return "No machine";
    case 1: return "AT&T WE 32100";
    case 2: return "SUN SPARC";
    case 3: return "Intel 80386";
    case 4: return "Motorola m68k family";
    case 5: return "Motorola m88k family";
    case 6: return "Intel MCU";
    case 7: return "Intel 80860";
    case 8: return "MIPS R3000 big-endian";
    case 9: return "IBM System/370";
    case 10: return "MIPS R3000 little-endian";
    case 15: return "HPPA";
    case 17: return "Fujitsu VPP500";
    case 18: return "Sun's \"v8plus\"";
    case 19: return "Intel 80960";
    case 20: return "PowerPC";
    case 21: return "PowerPC 64-bit";
    case 22: return "IBM S390";
    case 23: return "IBM SPU/SPC";
    case 36: return "NEC V800 series";
    case 37: return "Fujitsu FR20";
    case 38: return "TRW RH-32";
    case 39: return "Motorola RCE";
    case 40: return "ARM";
    case 41: return "Digital Alpha";
    case 42: return "Hitachi SH";
    case 43: return "SPARC v9 64-bit";
    case 44: return "Siemens Tricore";
    case 45: return "Argonaut RISC Core";
    case 46: return "Hitachi H8/300";
    case 47: return "Hitachi H8/300H";
    case 48: return "Hitachi H8S";
    case 49: return "Hitachi H8/500";
    case 50: return "Intel Merced";
    case 51: return "Stanford MIPS-X";
    case 52: return "Motorola Coldfire";
    case 53: return "Motorola M68HC12";
    case 54: return "Fujitsu MMA Multimedia Accelerator";
    case 55: return "Siemens PCP";
    case 56: return "Sony nCPU embeeded RISC";
    case 57: return "Denso NDR1 microprocessor";
    case 58: return "Motorola Start*Core processor";
    case 59: return "Toyota ME16 processor";
    case 60: return "STMicroelectronic ST100 processor";
    case 61: return "Advanced Logic Corp. Tinyj emb.fam";
    case 62: return "AMD x86-64 architecture";
    case 63: return "Sony DSP Processor";
    case 64: return "Digital PDP-10";
    case 65: return "Digital PDP-11";
    case 66: return "Siemens FX66 microcontroller";
    case 67: return "STMicroelectronics ST9+ 8/16 mc";
    case 68: return "STmicroelectronics ST7 8 bit mc";
    case 69: return "Motorola MC68HC16 microcontroller";
    case 70: return "Motorola MC68HC11 microcontroller";
    case 71: return "Motorola MC68HC08 microcontroller";
    case 72: return "Motorola MC68HC05 microcontroller";
    case 73: return "Silicon Graphics SVx";
    case 74: return "STMicroelectronics ST19 8 bit mc";
    case 75: return "Digital VAX";
    case 76: return "Axis Communications 32-bit emb.proc";
    case 77: return "Infineon Technologies 32-bit emb.proc";
    case 78: return "Element 14 64-bit DSP Processor";
    case 79: return "LSI Logic 16-bit DSP Processor";
    case 80: return "Donald Knuth's educational 64-bit proc";
    case 81: return "Harvard University machine-independent object files";
    case 82: return "SiTera Prism";
    case 83: return "Atmel AVR 8-bit microcontroller";
    case 84: return "Fujitsu FR30";
    case 85: return "Mitsubishi D10V";
    case 86: return "Mitsubishi D30V";
    case 87: return "NEC v850";
    case 88: return "Mitsubishi M32R";
    case 89: return "Matsushita MN10300";
    case 90: return "Matsushita MN10200";
    case 91: return "picoJava";
    case 92: return "OpenRISC 32-bit embedded processor";
    case 93: return "ARC International ARCompact";
    case 94: return "Tensilica Xtensa Architecture";
    case 95: return "Alphamosaic VideoCore";
    case 96: return "Thompson Multimedia General Purpose Proc";
    case 97: return "National Semi. 32000";
    case 98: return "Tenor Network TPC";
    case 99: return "Trebia SNP 1000";
    case 100: return "STMicroelectronics ST200";
    case 101: return "Ubicom IP2xxx";
    case 102: return "MAX processor";
    case 103: return "National Semi. CompactRISC";
    case 104: return "Fujitsu F2MC16";
    case 105: return "Texas Instruments msp430";
    case 106: return "Analog Devices Blackfin DSP";
    case 107: return "Seiko Epson S1C33 family";
    case 108: return "Sharp embedded microprocessor";
    case 109: return "Arca RISC";
    case 110: return "PKU-Unity & MPRC Peking Uni. mc series";
    case 111: return "eXcess configurable cpu";
    case 112: return "Icera Semi. Deep Execution Processor";
    case 113: return "Altera Nios II";
    case 114: return "National Semi. CompactRISC CRX";
    case 115: return "Motorola XGATE";
    case 116: return "Infineon C16x/XC16x";
    case 117: return "Renesas M16C";
    case 118: return "Microchip Technology dsPIC30F";
    case 119: return "Freescale Communication Engine RISC";
    case 120: return "Renesas M32C";
    case 131: return "Altium TSK3000";
    case 132: return "Freescale RS08";
    case 133: return "Analog Devices SHARC family";
    case 134: return "Cyan Technology eCOG2";
    case 135: return "Sunplus S+core7 RISC";
    case 136: return "New Japan Radio (NJR) 24-bit DSP";
    case 137: return "Broadcom VideoCore III";
    case 138: return "RISC for Lattice FPGA";
    case 139: return "Seiko Epson C17";
    case 140: return "Texas Instruments TMS320C6000 DSP";
    case 141: return "Texas Instruments TMS320C2000 DSP";
    case 142: return "Texas Instruments TMS320C55x DSP";
    case 143: return "Texas Instruments App. Specific RISC";
    case 144: return "Texas Instruments Prog. Realtime Unit";
    case 160: return "STMicroelectronics 64bit VLIW DSP";
    case 161: return "Cypress M8C";
    case 162: return "Renesas R32C";
    case 163: return "NXP Semi. TriMedia";
    case 164: return "QUALCOMM DSP6";
    case 165: return "Intel 8051 and variants";
    case 166: return "STMicroelectronics STxP7x";
    case 167: return "Andes Tech. compact code emb. RISC";
    case 168: return "Cyan Technology eCOG1X";
    case 169: return "Dallas Semi. MAXQ30 mc";
    case 170: return "New Japan Radio (NJR) 16-bit DSP";
    case 171: return "M2000 Reconfigurable RISC";
    case 172: return "Cray NV2 vector architecture";
    case 173: return "Renesas RX";
    case 174: return "Imagination Tech. META";
    case 175: return "MCST Elbrus";
    case 176: return "Cyan Technology eCOG16";
    case 177: return "National Semi. CompactRISC CR16";
    case 178: return "Freescale Extended Time Processing Unit";
    case 179: return "Infineon Tech. SLE9X";
    case 180: return "Intel L10M";
    case 181: return "Intel K10M";
    case 183: return "ARM AARCH64";
    case 185: return "Amtel 32-bit microprocessor";
    case 186: return "STMicroelectronics STM8";
    case 187: return "Tileta TILE64";
    case 188: return "Tilera TILEPro";
    case 189: return "Xilinx MicroBlaze";
    case 190: return "NVIDIA CUDA";
    case 191: return "Tilera TILE-Gx";
    case 192: return "CloudShield";
    case 193: return "KIPO-KAIST Core-A 1st gen.";
    case 194: return "KIPO-KAIST Core-A 2nd gen.";
    case 195: return "Synopsys ARCompact V2";
    case 196: return "Open8 RISC";
    case 197: return "Renesas RL78";
    case 198: return "Broadcom VideoCore V";
    case 199: return "Renesas 78KOR";
    case 200: return "Freescale 56800EX DSC";
    case 201: return "Beyond BA1";
    case 202: return "Beyond BA2";
    case 203: return "XMOS xCORE";
    case 204: return "Microchip 8-bit PIC(r)";
    case 210: return "KM211 KM32";
    case 211: return "KM211 KMX32";
    case 212: return "KM211 KMX16";
    case 213: return "KM211 KMX8";
    case 214: return "KM211 KVARC";
    case 215: return "Paneve CDP";
    case 216: return "Cognitive Smart Memory Processor";
    case 217: return "Bluechip CoolEngine";
    case 218: return "Nanoradio Optimized RISC";
    case 219: return "CSR Kalimba";
    case 220: return "Zilog Z80";
    case 221: return "Controls and Data Services VISIUMcore";
    case 222: return "FTDI Chip FT32";
    case 223: return "Moxie processor";
    case 224: return "AMD GPU";
    case 243: return "RISC-V";
    case 247: return "Linux BPF -- in-kernel virtual machine";
    case 252: return "C-SKY";
    default: return buffprintf("Unknown id (%d)", id);
    }
}

text ETypes(int id) {
    switch (id) {
    case 0: return "No file type";
    case 1: return "Relocatable file";
    case 2: return "Executable file";
    case 3: return "Shared object file";
    case 4: return "Core file";
    case 5: return "Number of defined types";
    case 0xfe00 ... 0xfeff: return buffprintf("OS-specific (%d)", id);
    case 0xff00 ... 0xffff: return buffprintf("Processor-specific (%d)", id);
    default: return buffprintf("Unknown id (%d)", id);
    }
}

text ShType(int id) {
    switch (id) {
    case          0: return "Section header table entry unused";
    case          1: return "Program data";
    case          2: return "Symbol table";
    case          3: return "String table";
    case          4: return "Relocation entries with addends";
    case          5: return "Symbol hash table";
    case          6: return "Dynamic linking information";
    case          7: return "Notes";
    case          8: return "Program space with no data (bss)";
    case          9: return "Relocation entries, no addends";
    case         10: return "Reserved";
    case         11: return "Dynamic linker symbol table";
    case         14: return "Array of constructors";
    case         15: return "Array of destructors";
    case         16: return "Array of pre-constructors";
    case         17: return "Section group";
    case         18: return "Extended section indeces";
    case         19: return "Number of defined types.";
    case 0x6ffffff5: return "Object attributes.";
    case 0x6ffffff6: return "GNU-style hash table.";
    case 0x6ffffff7: return "Prelink library list";
    case 0x6ffffff8: return "Checksum for DSO content.";
    case 0x6ffffffd: return "Version definition section.";
    case 0x6ffffffe: return "Version needs section.";
    case 0x6fffffff: return "Version symbol table.";
    default:
        switch (id) {
        case 0x60000000 ... 0x6ffffff9: return buffprintf("OS-specific type     (0x%08x)", id);
        case 0x6ffffffa ... 0x6fffffff: return buffprintf("Sun-specific         (0x%08x)", id);
        case 0x70000000 ... 0x7fffffff: return buffprintf("Processor-specific   (0x%08x)", id);
        case 0x80000000 ... 0x8fffffff: return buffprintf("Application-specific (0x%08x)", id);
        default:                        return buffprintf("Unknown id           (0x%08x)", id);
        }
    }
}

text PType(int id) {
    switch (id) {
    case          0: return "Program header table entry unused";
    case          1: return "Loadable program segment";
    case          2: return "Dynamic linking information";
    case          3: return "Program interpreter";
    case          4: return "Auxiliary information";
    case          5: return "Reserved";
    case          6: return "Entry for header table itself";
    case          7: return "Thread-local storage segment";
    case          8: return "Number of defined types";
    case 0x6474e550: return "GCC .eh_frame_hdr segment";
    case 0x6474e551: return "Indicates stack executability";
    case 0x6474e552: return "Read-only after relocation";
    case 0x6ffffffa: return "Sun Specific segment";
    case 0x6ffffffb: return "Stack segment";
    default:
        switch (id) {
        case 0x60000000 ... 0x6ffffff9: return buffprintf("OS-specific type     (0x%08x)", id);
        case 0x6ffffffa ... 0x6fffffff: return buffprintf("Sun-specific         (0x%08x)", id);
        case 0x70000000 ... 0x7fffffff: return buffprintf("Processor-specific   (0x%08x)", id);
        default:                        return buffprintf("Unknown id           (0x%08x)", id);
        }
    }
}



// Заголовки

typedef ulong Is64p;

typedef struct {
    int magic;
    byte bits;
    byte endian;
    byte ei_version;
    byte abi;
    byte abi_version;
    byte pad[7]; // IBBBBBppppppp

    ushort e_type; // именно с этого места уже влияет параметр "endian" этой же структуры, что объясняет наличие параметра "pad"
    ushort machine;
    int e_version;
    Is64p entry_point;
    Is64p program_header_offset;
    Is64p section_header_offset;
    int flags;
    ushort e_ehsize;
    ushort len_program_headers;
    ushort num_program_headers;
    ushort len_section_headers;
    ushort num_section_headers;
    ushort section_names_idx;
} elf_header; // HHIxxxIHHHHHH

typedef struct { // Секционный заголовок
    int ofs_name;
    int type;
    Is64p flags;
    Is64p addr;
    Is64p ofs_body;
    Is64p len_body;
    int linked_section_idx;
    int info;
    Is64p align;
    Is64p entry_size;
} section_header; // IIxxxxIIxx

typedef struct { // Элемент таблицы символов
    int ofs_name;
    byte bind_type;
    byte other;
    ushort sh_idx;
    Is64p value;
    Is64p size;
} dyn_sym; // IBBHxx

/*typedef struct {
    int ofs_name;
    Is64p value;
    Is64p size;
    byte bind_type;
    byte other;
    ushort sh_idx;
} dyn_sym_32; // IxxBBH*/

typedef struct { // Заметочная секция
    int len_name;
    int len_descriptor;
    int type;
} note_section; // III

typedef struct { // Секция динамики
    Is64p tag;
    Is64p value;
} dynamic_section; // xx

typedef struct { // Программный заголовок
    int type;
    int flags;
    Is64p offset;
    Is64p vaddr;
    Is64p paddr;
    Is64p file_size;
    Is64p mem_size;
    Is64p align;
} program_header; // IIxxxxxx



// Программа

// Умный способ считывания структур - сразу с поддержкой направления данных (little/big) и архитектуры структур (x32/x64)
// Самая критическая функция по производительности. Производительность здесь - наше всё.

/*
B - 1 байт
H - 2 байта
I - 4 байта
L - 8 байтов
x - 4 или 8 байтов в зависимости от архитектуры
p - паддинг, пуддинг, т.е. игнор байтов БЕЗ проверки на НЕ нули
число - повторить n-раз следующий символ
*/
bool is64, my_prog_little, elf_prog_little = true;
void reader(byte **data_p, text structure, void *vres) {
    byte *data = *data_p, *res = (byte*) vres;

    bool swap = my_prog_little != elf_prog_little;
    byte bytes = 0, ARCH = is64 ? 8 : 4;
    int repeat = 0;

    while (true) {
        char c = *(structure++);
        switch (c) {
        case 0:
            *data_p = data;
            return; // Единственный выход из функции
        case 'B': bytes = 1; break;
        case 'H': bytes = 2; break;
        case 'I': bytes = 4; break;
        case 'L': bytes = 8; break;
        case 'x': bytes = ARCH; break;
        case 'p': bytes = 1; break;
        case '0' ... '9':
            repeat = repeat * 10 + (c - '0');
            continue;
        }
        byte out = c == 'x' ? 8 : bytes, pad = out - bytes;
        do {
            // printf("read %u b. x %u\n", bytes, repeat);
            ulong num = 0;
            switch (bytes) {
                case 1: num = *data; break;
                case 2: num = swap ? __builtin_bswap16(*(ushort*) data) : *(ushort*) data; break;
                case 4: num = swap ? __builtin_bswap32(*(uint*)   data) : *(uint*)   data; break;
                case 8: num = swap ? __builtin_bswap64(*(ulong*)  data) : *(ulong*)  data; break;
            }
            // printf("%lu\n", num);
            
            memcpy(res, data, bytes);
            data += bytes;
            res += bytes;
            if (pad) {
                memset(res, 0, pad);
                res += pad;
            }
        } while (--repeat > 0);
        repeat = 0;
    }
}

void make_move(int src, int dst, int size, byte *moves) {
    // printf("MOVES: %2u -> %2u | (%u)\n", src, dst, size);
    for (int i = 0; i < size; i++) moves[src + i] = dst + i;
}
void use_move(void *vdata, int size, byte *moves) {
    byte *data = (byte*) vdata;
    for (int i = 0; i < size; i++) BUFFER[i] = data[moves[i]];
    memcpy(vdata, BUFFER, size);
}

int open_file(text path, byte** yeah, int *size_p) {
    FILE *file;
    if ((file = fopen(path, "rb")) == NULL) return 1;
    struct stat st;
    if (stat(path, &st) != 0) return 2;
    int size = *size_p = st.st_size;
    byte* res = (byte*) malloc(size);
    if (fread(res, 1, size, file) != size) { free(res); return 3; }
    if (fclose(file) == EOF) { free(res); return 4; }
    *yeah = res;
    return 0;
}

int compare(text a, text b) {
    int i = 0;
    char sa, sb;
    do {
        sa = a[i]; sb = b[i++];
        if (sa < sb) return -1;
        if (sa > sb) return 1;
    } while (sa != 0 && sb != 0);
    return 0;
}
int startswith(text str, text begin) {
    int pos = 0;
    char c;
    while (c = begin[pos]) if (str[pos++] != c) return false;
    return true;
}

text splitter = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";



int SectionTable(int fd, byte *start, section_header *dynsym, section_header *SH_arr) {
    text binds[] = {"LOCAL", "GLOBAL", "WEAK", "stb_3", "stb_4", "stb_5", "stb_6", "stb_7",
                    "stb_8", "stb_9", "LOOS", "stb_11", "HIOS", "LOPROC", "stb_14", "HIPROC"};
    text types[] = {"NOTYPE", "OBJECT", "FUNC", "SECTION", "FILE", "COMMON", "TLS", "stt_7",
                    "stt_8", "stt_9", "LOOS", "stt_11", "HIOS", "LOPROC", "stt_14", "HIPROC"};
    text visibility[] = {"DEFAULT", "INTERNAL", "HIDDEN", "PROTECTED", "EXPORTED", "SINGLETON", "ELIMATE"};

    ulong len_body = dynsym->len_body, entry_size = dynsym->entry_size;
    if (entry_size != (is64 ? 24 : 16)) return sock_error(fd, 10, "Неподдерживаемый размер dynsym-секции: %lu\n", entry_size);

    int entries = len_body / entry_size;
    byte *names_ofs = start + SH_arr[dynsym->linked_section_idx].ofs_body;

    byte *data = start + dynsym->ofs_body, **data_p = &data;
    dyn_sym DS;

    byte moves[sizeof(dyn_sym)]; // самое-то сломать мозг неопытному списывальщику моего курсача
    memset(moves, 0, sizeof(dyn_sym));
    make_move((size_t) &DS.ofs_name  - (size_t) &DS,  0, sizeof(DS.ofs_name),  moves);
    make_move((size_t) &DS.bind_type - (size_t) &DS, 20, sizeof(DS.bind_type), moves);
    make_move((size_t) &DS.other     - (size_t) &DS, 21, sizeof(DS.other),     moves);
    make_move((size_t) &DS.sh_idx    - (size_t) &DS, 22, sizeof(DS.sh_idx),    moves);
    make_move((size_t) &DS.value     - (size_t) &DS,  4, sizeof(DS.value),     moves);
    make_move((size_t) &DS.size      - (size_t) &DS, 12, sizeof(DS.size),      moves);

    dprintf(fd, "%s~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~0\n", splitter);
    dprintf(fd, " idx |  address  |   size   |   type  |  bind  | visibility | sh_idx | name\n");
    for (int i = 0; i < entries; i++) {
        reader(data_p, is64 ? "IBBHxx" : "IxxBBH", &DS);
        if (!is64) use_move(&DS, sizeof(dyn_sym), moves);

        int ofs_name = DS.ofs_name;
        byte bind_type = DS.bind_type, other = DS.other;
        ushort sh_idx = DS.sh_idx;
        ulong value = DS.value, size = DS.size;

        text name = (text) (names_ofs + ofs_name);
        char bind = bind_type >> 4, type = bind_type & 15;
        dprintf(fd, "%4u | 0x %6lx | %8lu | %7s | %6s | %10s | %6u | %s\n",
            i, value, size, types[type], binds[bind], visibility[other], sh_idx, name);
    }
    dprintf(fd, "%s~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~0\n", splitter);
    return 0;
}



void SectionHeader(int fd, byte *start, elf_header *header, section_header *SH_arr) {
    byte *names_ofs = start + SH_arr[header->section_names_idx].ofs_body;
    int sections = header->num_section_headers;

    memset(BUFFER, '~', 119); BUFFER[119] = 0;
    dprintf(fd, "%s0\n", BUFFER);
    dprintf(fd, " idx|      ofs_name      |    type    |     flags    |   addr  | ofs_body | len_body | LSI | info | align | entry_size |\n");
    for (int i = 0; i < sections; i++) {
        section_header SH = *(SH_arr + i);

        int ofs_name = SH.ofs_name, type = SH.type;
        ulong flags = SH.flags, addr = SH.addr, ofs_body = SH.ofs_body, len_body = SH.len_body;
        int linked_section_idx = SH.linked_section_idx, info = SH.info;
        ulong align = SH.align, entry_size = SH.entry_size;

        text name = (text) (names_ofs + ofs_name);
        byte flags_str[13];
        text flags_base = "WAEMSILOGTC";
        for (int i = 0; i < 11; i++) flags_str[i] = flags & (1 << i + (i > 2)) ? flags_base[i] : ' ';
        flags_str[11] = flags > 0xfff ? '*' : ' ';
        flags_str[12] = 0;

        dprintf(fd, "%3u | %-18s | 0x%8x | %12s | 0x%5lx | 0x%6lx | %8ld | %3d | %4d | %5lu | %10lu | %s\n",
            i, name, type, flags_str, addr, ofs_body, len_body, linked_section_idx, info, align, entry_size, ShType(type));
    }
    // всё ради одного "гвоздика" (нуля)... чуть позже я развил идею с БУФЕРОМ для замены целой горы тильд ;'-}
    memset(BUFFER, '~', 119); BUFFER[119] = 0;
    BUFFER[23] = '0';
    dprintf(fd, "%s0\n", BUFFER);
    // Обратите внимание, что названия флагов сконструированы разработчика ELF-формата грамотно!
    // Это означает, что каждая первая буква названия флага уникальна!
    dprintf(fd, "   Flags:              |\n");
    dprintf(fd, "W <-> WRITE            |\n");
    dprintf(fd, "A <-> ALLOC            |\n");
    dprintf(fd, "E <-> EXECINSTR        |\n");
    dprintf(fd, "M <-> MERGE            |\n");
    dprintf(fd, "S <-> STRINGS          |\n");
    dprintf(fd, "I <-> INFO_LINK        |\n");
    dprintf(fd, "L <-> LINK_ORDER       |\n");
    dprintf(fd, "O <-> OS_NONCONFORMING |\n");
    dprintf(fd, "G <-> GROUP            |\n");
    dprintf(fd, "T <-> TLS              |\n");
    dprintf(fd, "C <-> COMPRESSED       |\n");
    dprintf(fd, "* <-> flags > 0xfff    |\n");
    dprintf(fd, "~~~~~~~~~~~~~~~~~~~~~~~0\n");
}



void OtherSections(int fd, int current, byte *start, elf_header *header, section_header *dynsym, section_header *SH_arr) {
    byte *names_ofs = start + SH_arr[header->section_names_idx].ofs_body;
    byte *names_dynstr = start + SH_arr[dynsym->linked_section_idx].ofs_body;
    int sections = header->num_section_headers;
    
    byte *data, **data_p = &data;
    bool first = true;
    
    for (int i = 0; i < sections; i++) {
        section_header *SH = SH_arr + i;
        int type = SH->type;
        if (type >= 0 && type != current) continue;

        int ofs_name = SH->ofs_name;
        data = start + SH->ofs_body;
        byte *end_data = data + SH->len_body;
        
        text name = names_ofs + ofs_name;

        switch (type) {                                 // Новый способ определения секций
        case 7: { // if (startswith(name, ".note")) {     Старый способ определения секций
            note_section Note;
            if (first) first = false;
            else dprintf(fd, "\n");
            dprintf(fd, "    Section: %s\n", name);
            while (data < end_data) {
                reader(data_p, "III", &Note);
                int len_name = Note.len_name, len_descriptor = Note.len_descriptor;
                text str = (text) data;
                data += len_name + (-len_name & 3);
                byte *descriptor = data;
                data += len_descriptor + (-len_descriptor & 3);
                dprintf(fd, "Record: '%s' (type %u) | Descriptor:", str, Note.type);
                for (int i = 0; i < len_descriptor; i++) dprintf(fd, " %02x", descriptor[i]);
                dprintf(fd, "\n");
            }
            break; }
        case 1: // else if (startswith(name, ".comment")) {
            if (startswith(name, ".comment")) {
                if (first) first = false;
                else dprintf(fd, "\n");
                dprintf(fd, "    Section: %s\n", name);
                dprintf(fd, "Comment: '%s'\n", (text) data);
            }
            break;
        case 6: { // else if (startswith(name, ".dynamic")) {
            dynamic_section Dynamic;
            if (first) first = false;
            else dprintf(fd, "\n");
            dprintf(fd, "    Section: %-19s |\n", name);
            while (data < end_data) {
                reader(data_p, "xx", &Dynamic);
                text name;
                int type;
                DynampicArrayTags(Dynamic.tag, &name, &type);
                if (type == 3 /* Ignored */) continue;
                
                int t = type & 3, t2 = type >> 3;
                ulong value = Dynamic.value;
                
                if (t == 1) {
                    if      (t2 == 1) dprintf(fd, "%-32s | %lu b.\n", name, value);
                    else if (t2 == 2) dprintf(fd, "%-32s | '%s'\n", name, names_dynstr + value);
                    else              dprintf(fd, "%-32s | 0x%lx\n", name, value);
                } else if (t == 2 && t2 == 0) dprintf(fd, "%-32s |   Pointer: 0x %5lx\n", name, value);
                else dprintf(fd, "%-32s | %u (%u) | 0x%lx\n", name, t, t2, value);
            }
            break; }
        case 3: {
            // else if (startswith(name, ".strtab") || startswith(name, ".shstrtab") || startswith(name, ".dynstr")) {
            if (first) first = false;
            else dprintf(fd, "\n");
            dprintf(fd, "    Section: %s\n", name);
            byte *start = data;
            ulong begin = (ulong) data;
            while (data < end_data) {
                byte c = *(data++);
                if (c == 0) {
                    dprintf(fd, "STR (0x%5lx): '%s'\n", (ulong) start - begin, start);
                    start = data;
                }
            }
            break; }
        }
    }
    if (!first) dprintf(fd, "%s0\n", splitter);
}



void ProgramHeader(int fd, byte *start, elf_header *header, section_header *SH_arr) {
    byte *names_ofs = start + SH_arr[header->section_names_idx].ofs_body;
    int sections = header->num_program_headers;
    
    byte *data = start + header->program_header_offset, **data_p = &data;
    program_header PH_arr[sections];
    
    byte moves[sizeof(program_header)];
    memset(moves, 0, sizeof(program_header));
    make_move((size_t) &PH_arr->type      - (size_t) &PH_arr,  0, sizeof(PH_arr->type),      moves);
    make_move((size_t) &PH_arr->flags     - (size_t) &PH_arr, 44, sizeof(PH_arr->flags),     moves);
    make_move((size_t) &PH_arr->offset    - (size_t) &PH_arr,  4, sizeof(PH_arr->offset),    moves);
    make_move((size_t) &PH_arr->vaddr     - (size_t) &PH_arr, 12, sizeof(PH_arr->vaddr),     moves);
    make_move((size_t) &PH_arr->paddr     - (size_t) &PH_arr, 20, sizeof(PH_arr->paddr),     moves);
    make_move((size_t) &PH_arr->file_size - (size_t) &PH_arr, 28, sizeof(PH_arr->file_size), moves);
    make_move((size_t) &PH_arr->mem_size  - (size_t) &PH_arr, 36, sizeof(PH_arr->mem_size),  moves);
    make_move((size_t) &PH_arr->align     - (size_t) &PH_arr, 48, sizeof(PH_arr->align),     moves);
    
    for (int i = 0; i < sections; i++) {
        program_header *PH = PH_arr + i;
        reader(data_p, is64 ? "IIxxxxxx" : "IxxxxxIx", PH);
        if (!is64) use_move(PH, sizeof(program_header), moves);
    }

    memset(BUFFER, '~', 88); BUFFER[88] = 0;
    dprintf(fd, "%s0\n", BUFFER);
    dprintf(fd, " idx|    type    | flags |  offset  |   vaddr  |   paddr  | filesize | mem_size | align |\n");
    for (int i = 0; i < sections; i++) {
        program_header PH = PH_arr[i];
        
        int type = PH.type, flags = PH.flags;
        ulong offset = PH.offset, vaddr = PH.vaddr, paddr = PH.paddr;
        ulong file_size = PH.file_size, mem_size = PH.mem_size, align = PH.align;
        
        byte flags_str[5];
        text flags_base = "RWX";
        for (int i = 0; i < 3; i++) flags_str[i] = flags & (1 << (2 - i)) ? flags_base[i] : ' ';
        flags_str[3] = flags > 7 ? '*' : ' ';
        flags_str[4] = 0;
        
        dprintf(fd, "%3u | 0x%8x | %5s | 0x%6lx | 0x%6lx | 0x%6lx | %8ld | %8ld | %5ld | %s\n",
            i, type, flags_str, offset, vaddr, paddr, file_size, mem_size, align, PType(type));
    }
    memset(BUFFER, '~', 88); BUFFER[88] = 0;
    BUFFER[17] = '0';
    dprintf(fd, "%s0\n", BUFFER);
    dprintf(fd, "   Flags:        |\n");
    dprintf(fd, "R <-> READABLE   |\n");
    dprintf(fd, "W <-> WRITABLE   |\n");
    dprintf(fd, "X <-> EXECUTABLE |\n");
    dprintf(fd, "* <-> flags > 7  |\n");
    dprintf(fd, "~~~~~~~~~~~~~~~~~0\n");
}



int elf_parser(int fd, byte *data, bool *options) {
    bool opt = options[0];
    //byte *data, **data_p = &data;
    //int filesize;
    //int err = open_file(args != 1 ? "liblab5_32.so" : /*"liblab5.so"*/ "main", data_p, &filesize);
    //if (err) error(err, "Ошибка открытия файла: %u\n", err);
    //if (opt) {
    //    printf("Размер файла:   %-33s |\n", buffprintf("%u b.", filesize));
    //    printf("Файл открыт удачно %30s |\n", "");
    //}
    byte **data_p = &data;
    byte *start = data;



    elf_header header;
    reader(data_p, "IBBBBBppppppp", &header); // начиная с начала и до e_type, не включая его

    if (header.magic != 1179403647) return sock_error(fd, 5, "Это не ELF\n");
    if (header.bits == 0 || header.endian == 0 || header.ei_version == 0) return sock_error(fd, 6, "Это не ELF\n");

    if (opt) {
        dprintf(fd, "%s0\n", splitter);
        dprintf(fd, "bits:        %-36s |\n", header.bits == 1 ? "b32" : header.bits == 2 ? "b64" : "?" );
        dprintf(fd, "endian:      %-36s |\n", header.endian == 1 ? "little" : header.endian == 2 ? "big" : "?");
        text vers = header.ei_version == 1 ? "CURRENT" : "NONE";
        if (header.ei_version > 1) vers = buffprintf("Экзотическая (%d)", header.ei_version);
        dprintf(fd, "ELF-версия:  %-36s |\n", vers);
        dprintf(fd, "abi:         %-36u |\n", header.abi);
        dprintf(fd, "abi_version: %-36u |\n", header.abi_version);
    }
    //byte* pad = header.pad; Теперь это проверяется внутри reader-функции (уже и это - нет), а не глазами человека
    //printf("pad: %u %u %u %u %u %u %u\n", pad[0], pad[1], pad[2], pad[3], pad[4], pad[5], pad[6]);

    if (header.bits != 1 && header.bits != 2) return sock_error(fd, 7, "Недопустимая разрядность (%u)\n", header.bits);
    if (header.endian != 1 && header.endian != 2) return sock_error(fd, 8, "Недопустимое направление данных (%u)\n", header.endian);
    if (header.ei_version != 1) return sock_error(fd, 9, "Отклонение от стандартной версии ELF-файла (%u)\n", header.ei_version);

    is64            = header.bits   == 2;
    elf_prog_little = header.endian == 1;

    reader(data_p, "HHIxxxIHHHHHH", &header.e_type); // начиная с e_type и до конца

    int sections = header.num_section_headers;
    if (opt) {
        dprintf(fd, "e_type:      %-36s |\n", buffprintf("'%s'", ETypes(header.e_type)));
        dprintf(fd, "machine:     %-36s |\n", buffprintf("'%s'", Machines(header.machine)));
        dprintf(fd, "e_version:   %-36u |\n", header.e_version);
    
        dprintf(fd, "%s0\n", splitter);
        dprintf(fd, "entry_point:           0x%-24lx |\n", header.entry_point);
        dprintf(fd, "program_header_offset: %-26lu |\n", header.program_header_offset);
        dprintf(fd, "section_header_offset: %-26lu |\n", header.section_header_offset);

        dprintf(fd, "flags:                 %-26d |\n", header.flags);
        dprintf(fd, "e_ehsize:              %-26d |\n", header.e_ehsize);
        dprintf(fd, "len_program_headers:   %-26d |\n", header.len_program_headers);
        dprintf(fd, "num_program_headers:   %-26d |\n", header.num_program_headers);
        dprintf(fd, "len_section_headers:   %-26d |\n", header.len_section_headers);
        dprintf(fd, "num_section_headers:   %-26d |\n", sections);
        dprintf(fd, "section_names_idx:     %-26d |\n", header.section_names_idx);
        dprintf(fd, "%s0\n", splitter);
    }



    data = start + header.section_header_offset;
    //int section_names_idx = header.section_names_idx;
    //byte *data2 = data + (is64 ? 64 : 40) * section_names_idx;
    //reader(&data2, "IIxxxxIIxx", &SH_arr);
    //byte *names_ofs = start + SH_arr->ofs_body;     Снова что-то устарело...

    section_header SH_arr[sections];
    section_header dynsym, symtab;
    for (int i = 0; i < sections; i++) {
        reader(data_p, "IIxxxxIIxx", SH_arr + i);
        /*
        section_header SH = *(SH_arr + i);
        if (compare(name, ".dynsym") == 0) dynsym = SH;     Теперь всё это в прошлом...
        if (compare(name, ".dynstr") == 0) dynstr = SH;     Но было так ;'-}
        if (compare(name, ".symtab") == 0) symtab = SH;     А всё оказалось проще...
        if (compare(name, ".strtab") == 0) strtab = SH;     Здешняя ShType-функция быстро раскрыла карты ;'-}
        */
        int type = (SH_arr + i)->type;
        if      (type == 2)  symtab = *(SH_arr + i);
        else if (type == 11) dynsym = *(SH_arr + i);
    }



    if (options[1]) SectionHeader(fd, start, &header, SH_arr);

    if (options[2]) {
        int err = SectionTable(fd, start, &dynsym, SH_arr);
        if (err) return err;
    }
    if (options[3]) {
        int err = SectionTable(fd, start, &symtab, SH_arr);
        if (err) return err;
    }
    
    if (options[4]) ProgramHeader(fd, start, &header, SH_arr);

    const int FEATURES = 4;
    bool hit = false;
    for (int i = 5; i < 5 + FEATURES; i++)
        if (options[i]) { hit = true; break; }
    if (hit) {
        dprintf(fd, "%s0\n", splitter);
        const int order[] = {7, 1, 6, 3};
        for (int i = 0; i < FEATURES; i++) {
            int type = order[i];
            if (options[i + 5]) OtherSections(fd, type, start, &header, &dynsym, SH_arr);
        }
    }
    //for (int i = 0; i < 10; i++) printf("%d %d\n", i, -i & 3); // МОщЩщЬ! (-i & 3) явно получше моего старенького ((4 - i % 4) % 4)

    //free(start); теперь это внутри handler-функции
    return 0;
}





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

#include <sys/socket.h>
#include <sys/un.h>
#include <netinet/in.h>
#include <pthread.h> // 'p' означает POSIX

typedef struct sockaddr_un sockaddr_un_t; // un = unix
typedef struct sockaddr_in sockaddr_in_t; // in = internet
typedef struct sockaddr* sockaddr_p;

/*
Коротко об uleb128 (unsigned little endian based 128) кодировке:
      0 -       127: 0xxxxxxx
    128 -     16383: 1xxxxxxx 0xxxxxxx
  16384 -   2097151: 1xxxxxxx 1xxxxxxx 0xxxxxxx
2097152 - 268435455: 1xxxxxxx 1xxxxxxx 1xxxxxxx 0xxxxxxx
и так далее...
если нужно передавать отрицательные числа, советую бит минуса переносить в начало, а не оставлять в конце
*/
void post_num(int sock, int num) {
    //printf("IN NUM %u\n", num);
    while (num > 127) {
        byte b = 128 | num & 127;
        write(sock, &b, 1);
        num >>= 7;
    }
    write(sock, &num, 1);
}
void post_str(int sock, text data, int size) {
    if (size == 0) size = strlen(data) + 1;
    post_num(sock, size);
    write(sock, data, size);
}

int see_num(int sock) {
    int num = 0, shift = 0;
    byte b;
    do {
        if (read(sock, &b, 1) == 0) return -1;
        num |= (b & 127) << shift;
        shift += 7;
    } while (b > 127);
    //printf("OUT NUM %u\n", num);
    return num;
}
int see_str(int sock, char **res) {
    int size = see_num(sock);
    if (size == -1) return -1;
    char *data = (char*) malloc(size);
    if (read(sock, data, size) != size) {
        free(data);
        return -1;
    }
    *res = data;
    return size;
}

#define HANDLER_ERROR(str) ({ post_str(sock, str, 0); continue; })
#define HANDLER_ERROR_2(str) ({ free(res); post_str(sock, str, 0); continue; })
void* handler(void *sock_v) {
    int sock = *(int*) sock_v;
    while (true) {
        FILE *file;
        if ((file = fopen("resultator.txt", "w")) == NULL) {    
            post_str(sock, "error 21.) Не удалось открыть файл результата на запись\n", 0);
            break;
        }

        int size, opt_flags;
        char *data;
        if ((opt_flags = see_num(sock)) < 0) break;
        if ((size = see_str(sock, &data)) < 0) break;
        
        bool options[9];
        for (int i = 0; i < 9; i++) options[i] = (opt_flags & (1 << i)) != 0;

        int fd = fileno(file);
        if (options[0]) {
            dprintf(fd, "%s0\n", splitter);
            dprintf(fd, "My prog (server) endian: %-24s |\n", my_prog_little ? "little" : "big");
            dprintf(fd, "Размер файла:            %-24s |\n", buffprintf("%u b.", size));
            dprintf(fd, "Файл принят удачно %30s |\n", "");
        }
        int code = elf_parser(fd, data, options);
        char b = '\0';
        write(fd, &b, 1);
        free(data);
        dprintf(fd, "exit code: %d\n", code);
        if (fclose(file) == EOF) HANDLER_ERROR("error 22.) Не удалось закрыть файл результата\n");
        
        struct stat st;
        if (stat("resultator.txt", &st) != 0) HANDLER_ERROR("error 23.) Не удалось узнать размер файла результата\n");
        size = st.st_size;
        byte* res = (byte*) malloc(size);
        if ((file = fopen("resultator.txt", "r")) == NULL) HANDLER_ERROR_2("error 24.) Не удалось открыть файл результата на чтение\n");
        if (fread(res, 1, size, file) != size) HANDLER_ERROR_2("error 25.) Не удалось считать файл результата\n");
        if (fclose(file) == EOF) HANDLER_ERROR_2("error 26.) Не удалось закрыть файл результата\n");
        post_str(sock, res, size);
        free(res);
    }
    printf("Disconnect\n");
    close(sock);
    return NULL;
}

/* py client (видно, что на нём в разы проще управлять сокетами, но при этом отличий между Питоном и Си мало):
import socket
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client.connect(("0.0.0.0", 9004))
client.send(bytes((4, 0, 0, 0)) + b"MEOW")
*/

int ip2num(text str) { // "0.0.0.0" равносилен INADDR_ANY, ибо это просто 0
    int pos = 0, num = 0, pos2 = 0;
    int arr[4];
    while (true) {
        char c = str[pos++];
        switch (c) {
        case 0: case '.':
            arr[pos2++] = num;
            num = 0;
            if (c == 0) {
                if (pos2 < 4) error(14, "Слишком мало точек в ip2num, должно быть 3, а не %u\n", pos2 - 1);
                return htonl(arr[0] << 24 | arr[1] << 16 | arr[2] << 8 | arr[3]);
            }
            if (pos2 == 4) error(13, "Слишком много точек в ip2num, должно быть 3\n");
            break;
        case '0' ... '9':
            num = num * 10 + (c - '0');
            if (num > 255) error(12, "Слишком большое число в ip2num: %u\n", num);
            break;
        case ' ': case '\n': case '\r': case '\t': break;
        default:
            error(11, "Странный символ в ip2num '%c' (%u) (0x%x)\n", c, c, c);
        }
    }
}

void server(text ip, int port) {
    //text sock_name = "mysock";
    //unlink(sock_name);
    //int ssock = socket(AF_UNIX, SOCK_STREAM, 0);
    //sockaddr_un_t name = { .sun_family = AF_LOCAL };
    //strcpy(name.sun_path, sock_name);
    
    int ssock = socket(AF_INET, SOCK_STREAM, 0);
    if (ssock < 0) error(15, "Не получилось создать сокет: %d\n", ssock);
    
    int s_addr = ip2num(ip);
    printf("Server address %u.%u.%u.%u:%u\n", s_addr & 255, s_addr >> 8 & 255, s_addr >> 16 & 255, s_addr >> 24 & 255, port);
    sockaddr_in_t addr = { .sin_family = AF_INET, .sin_port = htons(port), .sin_addr = { .s_addr = s_addr } };
    
    int rc = bind(ssock, (sockaddr_p) &addr, sizeof(addr));
    if (rc < 0) error(16, "Не получилось забиндеть сокет: %d\n", rc);

    rc = listen(ssock, 5);
    if (rc < 0) error(17, "listed() failed: %d\n", rc);
    
    while (true) {
        //sockaddr_un_t cln_name;
        //uint cln_name_len;
        //int sock = accept(ssock, (sockaddr_p) &cln_name, &cln_name_len);
        //printf("Client: %u | %u '%s'\n", cln_name.sun_family, cln_name_len, cln_name.sun_path);

        sockaddr_in_t client_address;
        int addr_len = sizeof(client_address);
        int sock = accept(ssock, (sockaddr_p) &client_address, &addr_len);
        if (sock < 0) error(18, "accept() failed: %d\n", sock);
        
        int cl_addr = client_address.sin_addr.s_addr, cl_port = client_address.sin_port;
        printf("Client address %u.%u.%u.%u:%u\n", cl_addr & 255, cl_addr >> 8 & 255, cl_addr >> 16 & 255, cl_addr >> 24 & 255, cl_port);
        
        /*int quit =*/   // handler(sock);
        //if (quit) break;
        pthread_t tid;
        int res = pthread_create(&tid, NULL, &handler, &sock);
        if (res) printf("thread init error: %d\n", res);
        else printf("new thread addr: %lx\n", tid);
    };
    
    close(ssock);
    //unlink(sock_name);
}

void client(text ip, int port, text filename, bool *options) {
    printf("My prog (client) endian: %s\n", my_prog_little ? "little" : "big");
    int sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) error(19, "Не получилось создать сокет: %d\n", sock);

    int s_addr = ip2num(ip);
    printf("Server address:          %u.%u.%u.%u:%u\n", s_addr & 255, s_addr >> 8 & 255, s_addr >> 16 & 255, s_addr >> 24 & 255, port);
    sockaddr_in_t addr = { .sin_family = AF_INET, .sin_port = htons(port), .sin_addr = { .s_addr = s_addr } };

    int status = connect(sock, (sockaddr_p) &addr, sizeof(addr));
    if (status < 0) error(20, "Не получилось подсоединиться к серверу\n");

    byte *data, **data_p = &data;
    int filesize;
    int err = open_file(filename, data_p, &filesize);
    if (err) error(err, "Ошибка открытия файла:   %u\n", err);
    if (options[0]) {
        printf("Client: Размер файла:    %s\n", buffprintf("%u b.", filesize));
        printf("Client: Файл открыт удачно\n");
    }

    int opt_flags = 0;
    for (int i = 0; i < 9; i++) opt_flags |= options[i] << i;
    post_num(sock, opt_flags);
    post_str(sock, data, filesize);
    free(data);

    int size;
    if ((size = see_str(sock, (char**) data_p)) < 0) {
        printf("Unknown error: Не удалось считать результат (или ошибку) с сервера :/\n");
    } else {
        printf("|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|\n");
        printf("%s", data);
        printf("|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|\n");
        free(data);
    }

    close(sock);
}

int main(int args, text argv[args]) {
    printf("PID: %u\n", getpid());
    //printf("IP: 0x%08x\n", ip2num("255.254.253.252"));

    int num = 1;
    my_prog_little = *(byte*) &num == 1;
    // в случае big-endian внутри будет 0x00000001, т.е. первый байт = 0, а в случае little-endian будет 0x01000000, т.е. первый байт = 1

    if (args > 1) {
        text filename = args > 2 ? argv[2] : "liblab5.so";
        bool options[] = {true, true, true, true, true, true, true, true, true};
        for (int i = 0; i < 9; i++) {
            char c = argv[1][i];
            if (c == 0) break;
            options[i] = c != '0' && c != ' ' && c != '-';
        }
        client("127.0.0.1", 2102, filename, options);
    } else server("127.0.0.1", 2102);
    return 0;
}

// cp curswork.service /etc/systemd/system/.
/* cat /etc/systemd/system/curswork.service
[Unit]
Description=curswork

[Service]
ExecStart=/home/vectorasd/lab6/main

[Install]
WantedBy=multi-user.target
*/
// gcc lab6.c -save-temps -lpthread -o main
// sudo systemctl start curswork
// sudo systemctl status curswork

