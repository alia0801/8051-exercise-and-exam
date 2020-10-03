                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Tue Mar 10 19:27:14 2020
                              5 ;--------------------------------------------------------
                              6 	.module add
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 ;--------------------------------------------------------
                             14 ; special function registers
                             15 ;--------------------------------------------------------
                             16 	.area RSEG    (DATA)
                             17 ;--------------------------------------------------------
                             18 ; special function bits 
                             19 ;--------------------------------------------------------
                             20 	.area RSEG    (DATA)
                             21 ;--------------------------------------------------------
                             22 ; overlayable register banks 
                             23 ;--------------------------------------------------------
                             24 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      25 	.ds 8
                             26 ;--------------------------------------------------------
                             27 ; internal ram data
                             28 ;--------------------------------------------------------
                             29 	.area DSEG    (DATA)
                             30 ;--------------------------------------------------------
                             31 ; overlayable items in internal ram 
                             32 ;--------------------------------------------------------
                             33 	.area OSEG    (OVR,DATA)
                             34 ;--------------------------------------------------------
                             35 ; Stack segment in internal ram 
                             36 ;--------------------------------------------------------
                             37 	.area	SSEG	(DATA)
   0041                      38 __start__stack:
   0041                      39 	.ds	1
                             40 
                             41 ;--------------------------------------------------------
                             42 ; indirectly addressable internal ram data
                             43 ;--------------------------------------------------------
                             44 	.area ISEG    (DATA)
                             45 ;--------------------------------------------------------
                             46 ; bit data
                             47 ;--------------------------------------------------------
                             48 	.area BSEG    (BIT)
                             49 ;--------------------------------------------------------
                             50 ; paged external ram data
                             51 ;--------------------------------------------------------
                             52 	.area PSEG    (PAG,XDATA)
                             53 ;--------------------------------------------------------
                             54 ; external ram data
                             55 ;--------------------------------------------------------
                             56 	.area XSEG    (XDATA)
                             57 ;--------------------------------------------------------
                             58 ; external initialized ram data
                             59 ;--------------------------------------------------------
                             60 	.area XISEG   (XDATA)
                             61 	.area CSEG    (CODE)
                             62 	.area GSINIT0 (CODE)
                             63 	.area GSINIT1 (CODE)
                             64 	.area GSINIT2 (CODE)
                             65 	.area GSINIT3 (CODE)
                             66 	.area GSINIT4 (CODE)
                             67 	.area GSINIT5 (CODE)
                             68 ;--------------------------------------------------------
                             69 ; interrupt vector 
                             70 ;--------------------------------------------------------
                             71 	.area CSEG    (CODE)
   0000                      72 __interrupt_vect:
   0000 02 09 2B             73 	ljmp	__sdcc_gsinit_startup
                             74 ;--------------------------------------------------------
                             75 ; global & static initialisations
                             76 ;--------------------------------------------------------
                             77 	.area CSEG    (CODE)
                             78 	.area GSINIT  (CODE)
                             79 	.area GSFINAL (CODE)
                             80 	.area GSINIT  (CODE)
                             81 	.globl __sdcc_gsinit_startup
                             82 	.globl __sdcc_program_startup
                             83 	.globl __start__stack
                             84 	.globl __mcs51_genXINIT
                             85 	.globl __mcs51_genXRAMCLEAR
                             86 	.globl __mcs51_genRAMCLEAR
                             87 	.area GSFINAL (CODE)
   0984 02 00 03             88 	ljmp	__sdcc_program_startup
                             89 ;--------------------------------------------------------
                             90 ; Home
                             91 ;--------------------------------------------------------
                             92 	.area HOME    (CODE)
                             93 	.area CSEG    (CODE)
                             94 ;--------------------------------------------------------
                             95 ; code
                             96 ;--------------------------------------------------------
                             97 	.area CSEG    (CODE)
   0003                      98 __sdcc_program_startup:
   0003 12 00 08             99 	lcall	_main
                            100 ;	return from main will lock up
   0006 80 FE               101 	sjmp .
                            102 ;------------------------------------------------------------
                            103 ;Allocation info for local variables in function 'main'
                            104 ;------------------------------------------------------------
                            105 ;A                         Allocated to registers 
                            106 ;B                         Allocated to registers 
                            107 ;------------------------------------------------------------
                            108 ;c:/sdcc/exam/add.c:3: int main(){
                            109 ;	-----------------------------------------
                            110 ;	 function main
                            111 ;	-----------------------------------------
   0008                     112 _main:
                    0002    113 	ar2 = 0x02
                    0003    114 	ar3 = 0x03
                    0004    115 	ar4 = 0x04
                    0005    116 	ar5 = 0x05
                    0006    117 	ar6 = 0x06
                    0007    118 	ar7 = 0x07
                    0000    119 	ar0 = 0x00
                    0001    120 	ar1 = 0x01
                            121 ;c:/sdcc/exam/add.c:12: printf("%d",A+B);
                            122 ;     genIpush
   0008 74 05               123 	mov	a,#0x05
   000A C0 E0               124 	push	acc
                            125 ;	Peephole 181	changed mov to clr
   000C E4                  126 	clr	a
   000D C0 E0               127 	push	acc
                            128 ;     genIpush
   000F 74 25               129 	mov	a,#__str_0
   0011 C0 E0               130 	push	acc
   0013 74 00               131 	mov	a,#(__str_0 >> 8)
   0015 C0 E0               132 	push	acc
   0017 74 02               133 	mov	a,#0x02
   0019 C0 E0               134 	push	acc
                            135 ;     genCall
   001B 12 00 4F            136 	lcall	_printf
   001E E5 81               137 	mov	a,sp
   0020 24 FB               138 	add	a,#0xfb
   0022 F5 81               139 	mov	sp,a
   0024                     140 00101$:
   0024 22                  141 	ret
                            142 	.area CSEG    (CODE)
   0025                     143 __str_0:
   0025 25 64               144 	.ascii "%d"
   0027 00                  145 	.db 0x00
                            146 	.area XINIT   (CODE)
