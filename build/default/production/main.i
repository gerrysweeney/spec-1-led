# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 285 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2








# 1 "/Applications/Microchip/xc8/v3.00/pic/include/xc.h" 1 3
# 18 "/Applications/Microchip/xc8/v3.00/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/xc8debug.h" 1 3



# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdlib.h" 1 3



# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/musl_xc8.h" 1 3
# 5 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdlib.h" 2 3





# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/features.h" 1 3
# 11 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdlib.h" 2 3
# 21 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdlib.h" 3
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 1 3
# 24 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);



double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);





unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);
# 55 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);




typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;




div_t div (int, int);
ldiv_t ldiv (long, long);




typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "/Applications/Microchip/xc8/v3.00/pic/include/c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/Applications/Microchip/xc8/v3.00/pic/include/xc.h" 2 3
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/builtins.h" 1 3



# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdint.h" 1 3
# 26 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdint.h" 3
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 1 3
# 133 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned short uintptr_t;
# 148 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef short intptr_t;
# 164 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef long int32_t;
# 192 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef int32_t intmax_t;







typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;
# 233 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef uint32_t uintmax_t;
# 27 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdint.h" 2 3

typedef int8_t int_fast8_t;




typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;




typedef uint8_t uint_fast8_t;




typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;
# 148 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdint.h" 3
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "/Applications/Microchip/xc8/v3.00/pic/include/c99/stdint.h" 2 3
# 5 "/Applications/Microchip/xc8/v3.00/pic/include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);
# 19 "/Applications/Microchip/xc8/v3.00/pic/include/builtins.h" 3
#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);
# 25 "/Applications/Microchip/xc8/v3.00/pic/include/xc.h" 2 3



# 1 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic.h" 1 3




# 1 "/Applications/Microchip/xc8/v3.00/pic/include/htc.h" 1 3






# 1 "/Applications/Microchip/xc8/v3.00/pic/include/xc.h" 1 3
# 8 "/Applications/Microchip/xc8/v3.00/pic/include/htc.h" 2 3
# 6 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic.h" 2 3



extern unsigned char __osccal_val(void);



# 1 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic_chip_select.h" 1 3
# 223 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic_chip_select.h" 3
# 1 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 1 3
# 44 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/__at.h" 1 3
# 45 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 2 3







extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");


typedef union {
    struct {
        unsigned INDF :8;
    };
} INDFbits_t;
extern volatile INDFbits_t INDFbits __attribute__((address(0x000)));
# 72 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");


typedef union {
    struct {
        unsigned TMR0 :8;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x001)));
# 92 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 112 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 198 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");


typedef union {
    struct {
        unsigned FSR :8;
    };
} FSRbits_t;
extern volatile FSRbits_t FSRbits __attribute__((address(0x004)));
# 218 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char GPIO __attribute__((address(0x005)));

__asm("GPIO equ 05h");


typedef union {
    struct {
        unsigned GP0 :1;
        unsigned GP1 :1;
        unsigned GP2 :1;
        unsigned GP3 :1;
        unsigned GP4 :1;
        unsigned GP5 :1;
    };
    struct {
        unsigned GPIO0 :1;
        unsigned GPIO1 :1;
        unsigned GPIO2 :1;
        unsigned GPIO3 :1;
        unsigned GPIO4 :1;
        unsigned GPIO5 :1;
    };
} GPIObits_t;
extern volatile GPIObits_t GPIObits __attribute__((address(0x005)));
# 306 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 326 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned GPIF :1;
        unsigned INTF :1;
        unsigned T0IF :1;
        unsigned GPIE :1;
        unsigned INTE :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned TMR0IF :1;
        unsigned :2;
        unsigned TMR0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 404 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned :2;
        unsigned CMIF :1;
        unsigned :2;
        unsigned ADIF :1;
        unsigned EEIF :1;
    };
    struct {
        unsigned T1IF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 452 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x00E)));
# 479 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x00F)));
# 499 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
# 564 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char CMCON __attribute__((address(0x019)));

__asm("CMCON equ 019h");


typedef union {
    struct {
        unsigned CM :3;
        unsigned CIS :1;
        unsigned CINV :1;
        unsigned :1;
        unsigned COUT :1;
    };
    struct {
        unsigned CM0 :1;
        unsigned CM1 :1;
        unsigned CM2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0x019)));
# 623 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x01E)));

__asm("ADRESH equ 01Eh");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x01E)));
# 643 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :2;
        unsigned :2;
        unsigned VCFG :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned :1;
        unsigned GO_DONE :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
    };
    struct {
        unsigned :1;
        unsigned nDONE :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
# 727 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nGPPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 797 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char TRISIO __attribute__((address(0x085)));

__asm("TRISIO equ 085h");


typedef union {
    struct {
        unsigned TRISIO0 :1;
        unsigned TRISIO1 :1;
        unsigned TRISIO2 :1;
        unsigned TRISIO3 :1;
        unsigned TRISIO4 :1;
        unsigned TRISIO5 :1;
    };
} TRISIObits_t;
extern volatile TRISIObits_t TRISIObits __attribute__((address(0x085)));
# 847 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned :2;
        unsigned CMIE :1;
        unsigned :2;
        unsigned ADIE :1;
        unsigned EEIE :1;
    };
    struct {
        unsigned T1IE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 895 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
    struct {
        unsigned nBOD :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
# 929 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char OSCCAL __attribute__((address(0x090)));

__asm("OSCCAL equ 090h");


typedef union {
    struct {
        unsigned :2;
        unsigned CAL :6;
    };
    struct {
        unsigned :2;
        unsigned CAL0 :1;
        unsigned CAL1 :1;
        unsigned CAL2 :1;
        unsigned CAL3 :1;
        unsigned CAL4 :1;
        unsigned CAL5 :1;
    };
} OSCCALbits_t;
extern volatile OSCCALbits_t OSCCALbits __attribute__((address(0x090)));
# 989 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char WPU __attribute__((address(0x095)));

__asm("WPU equ 095h");


typedef union {
    struct {
        unsigned WPU0 :1;
        unsigned WPU1 :1;
        unsigned WPU2 :1;
        unsigned :1;
        unsigned WPU4 :1;
        unsigned WPU5 :1;
    };
} WPUbits_t;
extern volatile WPUbits_t WPUbits __attribute__((address(0x095)));
# 1034 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char IOC __attribute__((address(0x096)));

__asm("IOC equ 096h");


extern volatile unsigned char IOCB __attribute__((address(0x096)));

__asm("IOCB equ 096h");


typedef union {
    struct {
        unsigned IOC0 :1;
        unsigned IOC1 :1;
        unsigned IOC2 :1;
        unsigned IOC3 :1;
        unsigned IOC4 :1;
        unsigned IOC5 :1;
    };
    struct {
        unsigned IOCB0 :1;
        unsigned IOCB1 :1;
        unsigned IOCB2 :1;
        unsigned IOCB3 :1;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
    };
} IOCbits_t;
extern volatile IOCbits_t IOCbits __attribute__((address(0x096)));
# 1125 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
typedef union {
    struct {
        unsigned IOC0 :1;
        unsigned IOC1 :1;
        unsigned IOC2 :1;
        unsigned IOC3 :1;
        unsigned IOC4 :1;
        unsigned IOC5 :1;
    };
    struct {
        unsigned IOCB0 :1;
        unsigned IOCB1 :1;
        unsigned IOCB2 :1;
        unsigned IOCB3 :1;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
    };
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __attribute__((address(0x096)));
# 1208 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char VRCON __attribute__((address(0x099)));

__asm("VRCON equ 099h");


typedef union {
    struct {
        unsigned VR :4;
        unsigned :1;
        unsigned VRR :1;
        unsigned :1;
        unsigned VREN :1;
    };
    struct {
        unsigned VR0 :1;
        unsigned VR1 :1;
        unsigned VR2 :1;
        unsigned VR3 :1;
    };
} VRCONbits_t;
extern volatile VRCONbits_t VRCONbits __attribute__((address(0x099)));
# 1268 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EEDATA __attribute__((address(0x09A)));

__asm("EEDATA equ 09Ah");


extern volatile unsigned char EEDAT __attribute__((address(0x09A)));

__asm("EEDAT equ 09Ah");


typedef union {
    struct {
        unsigned EEDATA :8;
    };
} EEDATAbits_t;
extern volatile EEDATAbits_t EEDATAbits __attribute__((address(0x09A)));







typedef union {
    struct {
        unsigned EEDATA :8;
    };
} EEDATbits_t;
extern volatile EEDATbits_t EEDATbits __attribute__((address(0x09A)));
# 1306 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EEADR __attribute__((address(0x09B)));

__asm("EEADR equ 09Bh");


typedef union {
    struct {
        unsigned EEADR :7;
    };
} EEADRbits_t;
extern volatile EEADRbits_t EEADRbits __attribute__((address(0x09B)));
# 1326 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0x09C)));

__asm("EECON1 equ 09Ch");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x09C)));
# 1364 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0x09D)));

__asm("EECON2 equ 09Dh");


typedef union {
    struct {
        unsigned EECON2 :8;
    };
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __attribute__((address(0x09D)));
# 1384 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ADRESL __attribute__((address(0x09E)));

__asm("ADRESL equ 09Eh");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x09E)));
# 1404 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ANSEL __attribute__((address(0x09F)));

__asm("ANSEL equ 09Fh");


typedef union {
    struct {
        unsigned ANS :4;
        unsigned ADCS :3;
    };
    struct {
        unsigned ANS0 :1;
        unsigned ANS1 :1;
        unsigned ANS2 :1;
        unsigned ANS3 :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
    };
} ANSELbits_t;
extern volatile ANSELbits_t ANSELbits __attribute__((address(0x09F)));
# 1484 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/proc/pic12f675.h" 3
extern volatile __bit ADCS0 __attribute__((address(0x4FC)));


extern volatile __bit ADCS1 __attribute__((address(0x4FD)));


extern volatile __bit ADCS2 __attribute__((address(0x4FE)));


extern volatile __bit ADFM __attribute__((address(0xFF)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF8)));


extern volatile __bit ANS0 __attribute__((address(0x4F8)));


extern volatile __bit ANS1 __attribute__((address(0x4F9)));


extern volatile __bit ANS2 __attribute__((address(0x4FA)));


extern volatile __bit ANS3 __attribute__((address(0x4FB)));


extern volatile __bit CAL0 __attribute__((address(0x482)));


extern volatile __bit CAL1 __attribute__((address(0x483)));


extern volatile __bit CAL2 __attribute__((address(0x484)));


extern volatile __bit CAL3 __attribute__((address(0x485)));


extern volatile __bit CAL4 __attribute__((address(0x486)));


extern volatile __bit CAL5 __attribute__((address(0x487)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CHS0 __attribute__((address(0xFA)));


extern volatile __bit CHS1 __attribute__((address(0xFB)));


extern volatile __bit CINV __attribute__((address(0xCC)));


extern volatile __bit CIS __attribute__((address(0xCB)));


extern volatile __bit CM0 __attribute__((address(0xC8)));


extern volatile __bit CM1 __attribute__((address(0xC9)));


extern volatile __bit CM2 __attribute__((address(0xCA)));


extern volatile __bit CMIE __attribute__((address(0x463)));


extern volatile __bit CMIF __attribute__((address(0x63)));


extern volatile __bit COUT __attribute__((address(0xCE)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit EEIE __attribute__((address(0x467)));


extern volatile __bit EEIF __attribute__((address(0x67)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0xF9)));


extern volatile __bit GO_DONE __attribute__((address(0xF9)));


extern volatile __bit GO_nDONE __attribute__((address(0xF9)));


extern volatile __bit GP0 __attribute__((address(0x28)));


extern volatile __bit GP1 __attribute__((address(0x29)));


extern volatile __bit GP2 __attribute__((address(0x2A)));


extern volatile __bit GP3 __attribute__((address(0x2B)));


extern volatile __bit GP4 __attribute__((address(0x2C)));


extern volatile __bit GP5 __attribute__((address(0x2D)));


extern volatile __bit GPIE __attribute__((address(0x5B)));


extern volatile __bit GPIF __attribute__((address(0x58)));


extern volatile __bit GPIO0 __attribute__((address(0x28)));


extern volatile __bit GPIO1 __attribute__((address(0x29)));


extern volatile __bit GPIO2 __attribute__((address(0x2A)));


extern volatile __bit GPIO3 __attribute__((address(0x2B)));


extern volatile __bit GPIO4 __attribute__((address(0x2C)));


extern volatile __bit GPIO5 __attribute__((address(0x2D)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOC0 __attribute__((address(0x4B0)));


extern volatile __bit IOC1 __attribute__((address(0x4B1)));


extern volatile __bit IOC2 __attribute__((address(0x4B2)));


extern volatile __bit IOC3 __attribute__((address(0x4B3)));


extern volatile __bit IOC4 __attribute__((address(0x4B4)));


extern volatile __bit IOC5 __attribute__((address(0x4B5)));


extern volatile __bit IOCB0 __attribute__((address(0x4B0)));


extern volatile __bit IOCB1 __attribute__((address(0x4B1)));


extern volatile __bit IOCB2 __attribute__((address(0x4B2)));


extern volatile __bit IOCB3 __attribute__((address(0x4B3)));


extern volatile __bit IOCB4 __attribute__((address(0x4B4)));


extern volatile __bit IOCB5 __attribute__((address(0x4B5)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit RD __attribute__((address(0x4E0)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x84)));


extern volatile __bit T1CKPS1 __attribute__((address(0x85)));


extern volatile __bit T1IE __attribute__((address(0x460)));


extern volatile __bit T1IF __attribute__((address(0x60)));


extern volatile __bit T1OSCEN __attribute__((address(0x83)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR1CS __attribute__((address(0x81)));


extern volatile __bit TMR1GE __attribute__((address(0x86)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x80)));


extern volatile __bit TRISIO0 __attribute__((address(0x428)));


extern volatile __bit TRISIO1 __attribute__((address(0x429)));


extern volatile __bit TRISIO2 __attribute__((address(0x42A)));


extern volatile __bit TRISIO3 __attribute__((address(0x42B)));


extern volatile __bit TRISIO4 __attribute__((address(0x42C)));


extern volatile __bit TRISIO5 __attribute__((address(0x42D)));


extern volatile __bit VCFG __attribute__((address(0xFE)));


extern volatile __bit VR0 __attribute__((address(0x4C8)));


extern volatile __bit VR1 __attribute__((address(0x4C9)));


extern volatile __bit VR2 __attribute__((address(0x4CA)));


extern volatile __bit VR3 __attribute__((address(0x4CB)));


extern volatile __bit VREN __attribute__((address(0x4CF)));


extern volatile __bit VRR __attribute__((address(0x4CD)));


extern volatile __bit WPU0 __attribute__((address(0x4A8)));


extern volatile __bit WPU1 __attribute__((address(0x4A9)));


extern volatile __bit WPU2 __attribute__((address(0x4AA)));


extern volatile __bit WPU4 __attribute__((address(0x4AC)));


extern volatile __bit WPU5 __attribute__((address(0x4AD)));


extern volatile __bit WR __attribute__((address(0x4E1)));


extern volatile __bit WREN __attribute__((address(0x4E2)));


extern volatile __bit WRERR __attribute__((address(0x4E3)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nBOD __attribute__((address(0x470)));


extern volatile __bit nBOR __attribute__((address(0x470)));


extern volatile __bit nDONE __attribute__((address(0xF9)));


extern volatile __bit nGPPU __attribute__((address(0x40F)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x471)));


extern volatile __bit nT1SYNC __attribute__((address(0x82)));


extern volatile __bit nTO __attribute__((address(0x1C)));
# 224 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic_chip_select.h" 2 3
# 14 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic.h" 2 3
# 76 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);


# 1 "/Applications/Microchip/xc8/v3.00/pic/include/eeprom_routines.h" 1 3
# 114 "/Applications/Microchip/xc8/v3.00/pic/include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 84 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic.h" 2 3
# 118 "/Applications/Microchip/mplabx/v6.20/packs/Microchip/PIC10-12Fxxx_DFP/1.7.178/xc8/pic/include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 29 "/Applications/Microchip/xc8/v3.00/pic/include/xc.h" 2 3
# 10 "main.c" 2
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 1 3
# 15 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 3
# 1 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 1 3
# 39 "/Applications/Microchip/xc8/v3.00/pic/include/c99/bits/alltypes.h" 3
typedef float float_t;




typedef double double_t;
# 16 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 2 3
# 42 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 3
int __fpclassifyf(float);







int __signbitf(float);
# 59 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 3
double acos(double);
float acosf(float);
long double acosl(long double);



double acosh(double);
float acoshf(float);
long double acoshl(long double);



double asin(double);
float asinf(float);
long double asinl(long double);



double asinh(double);
float asinhf(float);
long double asinhl(long double);



double atan(double);
float atanf(float);
long double atanl(long double);



double atan2(double, double);
float atan2f(float, float);
long double atan2l(long double, long double);



double atanh(double);
float atanhf(float);
long double atanhl(long double);



double cbrt(double);
float cbrtf(float);
long double cbrtl(long double);



double ceil(double);
float ceilf(float);
long double ceill(long double);



double copysign(double, double);
float copysignf(float, float);
long double copysignl(long double, long double);



double cos(double);
float cosf(float);
long double cosl(long double);



double cosh(double);
float coshf(float);
long double coshl(long double);



double erf(double);
float erff(float);
long double erfl(long double);



double erfc(double);
float erfcf(float);
long double erfcl(long double);



double exp(double);
float expf(float);
long double expl(long double);



double exp2(double);
float exp2f(float);
long double exp2l(long double);



double expm1(double);
float expm1f(float);
long double expm1l(long double);



double fabs(double);
float fabsf(float);
long double fabsl(long double);



double fdim(double, double);
float fdimf(float, float);
long double fdiml(long double, long double);



double floor(double);
float floorf(float);
long double floorl(long double);



double fma(double, double, double);
float fmaf(float, float, float);
long double fmal(long double, long double, long double);



double fmax(double, double);
float fmaxf(float, float);
long double fmaxl(long double, long double);



double fmin(double, double);
float fminf(float, float);
long double fminl(long double, long double);



double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);



double frexp(double, int *);
float frexpf(float, int *);
long double frexpl(long double, int *);



double hypot(double, double);
float hypotf(float, float);
long double hypotl(long double, long double);



int ilogb(double);
int ilogbf(float);
int ilogbl(long double);



double ldexp(double, int);
float ldexpf(float, int);
long double ldexpl(long double, int);




double lgamma(double);
float lgammaf(float);
long double lgammal(long double);
# 248 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 3
double log(double);
float logf(float);
long double logl(long double);



double log10(double);
float log10f(float);
long double log10l(long double);



double log1p(double);
float log1pf(float);
long double log1pl(long double);



double log2(double);
float log2f(float);
long double log2l(long double);



double logb(double);
float logbf(float);
long double logbl(long double);



long lrint(double);
long lrintf(float);
long lrintl(long double);



long lround(double);
long lroundf(float);
long lroundl(long double);



double modf(double, double *);
float modff(float, float *);
long double modfl(long double, long double *);



double nan(const char *);
float nanf(const char *);
long double nanl(const char *);



double nearbyint(double);
float nearbyintf(float);
long double nearbyintl(long double);



double nextafter(double, double);
float nextafterf(float, float);
long double nextafterl(long double, long double);



double nexttoward(double, long double);
float nexttowardf(float, long double);
long double nexttowardl(long double, long double);
# 326 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 3
double pow(double, double);
__attribute__((nonreentrant)) float powf(float, float);
long double powl(long double, long double);



double remainder(double, double);
float remainderf(float, float);
long double remainderl(long double, long double);



double remquo(double, double, int *);
float remquof(float, float, int *);
long double remquol(long double, long double, int *);



double rint(double);
float rintf(float);
long double rintl(long double);



double round(double);
float roundf(float);
long double roundl(long double);



double scalbln(double, long);
float scalblnf(float, long);
long double scalblnl(long double, long);



double scalbn(double, int);
float scalbnf(float, int);
long double scalbnl(long double, int);



double sin(double);
float sinf(float);
long double sinl(long double);



double sinh(double);
float sinhf(float);
long double sinhl(long double);



double sqrt(double);
float sqrtf(float);
long double sqrtl(long double);



double tan(double);
float tanf(float);
long double tanl(long double);



double tanh(double);
float tanhf(float);
long double tanhl(long double);



double tgamma(double);
float tgammaf(float);
long double tgammal(long double);



double trunc(double);
float truncf(float);
long double truncl(long double);
# 431 "/Applications/Microchip/xc8/v3.00/pic/include/c99/math.h" 3
extern int signgam;

double j0(double);
double j1(double);
double jn(int, double);

double y0(double);
double y1(double);
double yn(int, double);
# 11 "main.c" 2





#pragma config FOSC = INTRCIO

#pragma config WDTE = OFF

#pragma config PWRTE = OFF


#pragma config MCLRE = OFF

#pragma config BOREN = OFF

#pragma config CP = OFF

#pragma config CPD = OFF
# 59 "main.c"
void Timer0_Init(void) {
    OPTION_REGbits.T0CS = 1;
    TRISIO2 = 1;
    TMR0 = 0;
}


__attribute__((inline)) uint8_t Read_Timer0(void) {
    return TMR0;
}
# 77 "main.c"
const uint8_t log_table[100] = {
    0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20, 21, 22,
    24, 25, 27, 28, 30, 31, 33, 34, 36, 37, 39, 41, 42, 44, 46, 48, 49, 51,
    53, 55, 57, 59, 61, 63, 65, 67, 69, 72, 74, 76, 78, 81, 83, 85, 88, 90,
    93, 96, 98, 101, 104, 106, 109, 112, 115, 118, 121, 124, 127, 130, 133,
    137, 140, 143, 147, 150, 154, 158, 161, 165, 169, 173, 177, 181, 185, 189,
    193, 197, 202, 206, 211, 215, 220, 225, 230, 235, 240, 245, 250, 255
};
# 109 "main.c"
__attribute__((inline)) void bitbang_pwm_cycle(uint8_t bri)
{
    int16_t period = 99;

    int16_t on = log_table[bri];
    while(period) {
        if(on) {
            GPIObits.GPIO0 = 1;
            on--;
        }
        else
        {
            GPIObits.GPIO0 = 0;
        }
        period--;
    }
}



void main(void)
{
    ADCON0bits.ADON = 0;
    ANSELbits.ANS = 0;
    VRCON = 0;
    CMCON = 0x7;


    GPIObits.GPIO0 = 0;
    TRISIObits.TRISIO0 = 0;
    TRISIObits.TRISIO1 = 1;
    TRISIObits.TRISIO2 = 1;


    Timer0_Init();



    uint8_t last_state = GPIObits.GPIO1;

    uint8_t set_brightness = 0;



    uint8_t led_brightness = 0;


    uint8_t last_timer_val = 0;





    int16_t ac_sense_timeout = 0;







    int16_t muting_counter = 500;

    while(1)
    {
# 182 "main.c"
        uint8_t timer_val = Read_Timer0();
        if(timer_val != last_timer_val)
        {
            last_timer_val = timer_val;


            set_brightness = 99;



            ac_sense_timeout = 10;
        }


        bitbang_pwm_cycle(led_brightness);





        if(led_brightness != set_brightness) {

            if(led_brightness < set_brightness)
                led_brightness++;
            else if(led_brightness > set_brightness)
                led_brightness--;
        }
# 217 "main.c"
        if(ac_sense_timeout) {
            ac_sense_timeout--;
            if(ac_sense_timeout == 0) {
                set_brightness = 0;
                muting_counter = 500;
            }
        }



        if(GPIObits.GPIO1 && set_brightness) {

            if(muting_counter == 0) {

                for(int y = 0; y < 2; y++) {


                    for(uint8_t x = 0; x < 30; x++) {


                        bitbang_pwm_cycle(10 + x);
                    }


                    for(uint8_t x = 0; x < 20; x++) {


                        bitbang_pwm_cycle(30 + (x*2));
                    }
                }

                muting_counter = 300;
            } else {
                muting_counter--;
            }
        }
    }
}
