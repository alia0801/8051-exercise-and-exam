                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Tue Oct 29 17:31:56 2019
                              5 ;--------------------------------------------------------
                              6 	.module test5
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _int_0
                             13 	.globl _main
                             14 	.globl _T2CON_7
                             15 	.globl _T2CON_6
                             16 	.globl _T2CON_5
                             17 	.globl _T2CON_4
                             18 	.globl _T2CON_3
                             19 	.globl _T2CON_2
                             20 	.globl _T2CON_1
                             21 	.globl _T2CON_0
                             22 	.globl _RI
                             23 	.globl _TI
                             24 	.globl _RB8
                             25 	.globl _TB8
                             26 	.globl _REN
                             27 	.globl _SM2
                             28 	.globl _SM1
                             29 	.globl _SM0
                             30 	.globl _P1_7
                             31 	.globl _P1_6
                             32 	.globl _P1_5
                             33 	.globl _P1_4
                             34 	.globl _P1_3
                             35 	.globl _P1_2
                             36 	.globl _P1_1
                             37 	.globl _P1_0
                             38 	.globl _RXD
                             39 	.globl _TXD
                             40 	.globl _INT0
                             41 	.globl _INT1
                             42 	.globl _T0
                             43 	.globl _T1
                             44 	.globl _WR
                             45 	.globl _RD
                             46 	.globl _PX0
                             47 	.globl _PT0
                             48 	.globl _PX1
                             49 	.globl _PT1
                             50 	.globl _PS
                             51 	.globl _EX0
                             52 	.globl _ET0
                             53 	.globl _EX1
                             54 	.globl _ET1
                             55 	.globl _ES
                             56 	.globl _EA
                             57 	.globl _IT0
                             58 	.globl _IE0
                             59 	.globl _IT1
                             60 	.globl _IE1
                             61 	.globl _TR0
                             62 	.globl _TF0
                             63 	.globl _TR1
                             64 	.globl _TF1
                             65 	.globl _P
                             66 	.globl _OV
                             67 	.globl _RS0
                             68 	.globl _RS1
                             69 	.globl _F0
                             70 	.globl _AC
                             71 	.globl _CY
                             72 	.globl _RCAP2L
                             73 	.globl _RCAP2H
                             74 	.globl _T2CON
                             75 	.globl _SBUF
                             76 	.globl _SCON
                             77 	.globl _IP
                             78 	.globl _IE
                             79 	.globl _AUXR
                             80 	.globl _TH1
                             81 	.globl _TH0
                             82 	.globl _TL1
                             83 	.globl _TL0
                             84 	.globl _TMOD
                             85 	.globl _TCON
                             86 	.globl _PCON
                             87 	.globl _DPH
                             88 	.globl _DPL
                             89 	.globl _SP
                             90 	.globl _B
                             91 	.globl _ACC
                             92 	.globl _PSW
                             93 	.globl _P3
                             94 	.globl _P2
                             95 	.globl _P1
                             96 	.globl _P0
                             97 ;--------------------------------------------------------
                             98 ; special function registers
                             99 ;--------------------------------------------------------
                            100 	.area RSEG    (DATA)
                    0080    101 _P0	=	0x0080
                    0090    102 _P1	=	0x0090
                    00A0    103 _P2	=	0x00a0
                    00B0    104 _P3	=	0x00b0
                    00D0    105 _PSW	=	0x00d0
                    00E0    106 _ACC	=	0x00e0
                    00F0    107 _B	=	0x00f0
                    0081    108 _SP	=	0x0081
                    0082    109 _DPL	=	0x0082
                    0083    110 _DPH	=	0x0083
                    0087    111 _PCON	=	0x0087
                    0088    112 _TCON	=	0x0088
                    0089    113 _TMOD	=	0x0089
                    008A    114 _TL0	=	0x008a
                    008B    115 _TL1	=	0x008b
                    008C    116 _TH0	=	0x008c
                    008D    117 _TH1	=	0x008d
                    008E    118 _AUXR	=	0x008e
                    00A8    119 _IE	=	0x00a8
                    00B8    120 _IP	=	0x00b8
                    0098    121 _SCON	=	0x0098
                    0099    122 _SBUF	=	0x0099
                    00C8    123 _T2CON	=	0x00c8
                    00CB    124 _RCAP2H	=	0x00cb
                    00CA    125 _RCAP2L	=	0x00ca
                            126 ;--------------------------------------------------------
                            127 ; special function bits 
                            128 ;--------------------------------------------------------
                            129 	.area RSEG    (DATA)
                    00D7    130 _CY	=	0x00d7
                    00D6    131 _AC	=	0x00d6
                    00D5    132 _F0	=	0x00d5
                    00D4    133 _RS1	=	0x00d4
                    00D3    134 _RS0	=	0x00d3
                    00D2    135 _OV	=	0x00d2
                    00D0    136 _P	=	0x00d0
                    008F    137 _TF1	=	0x008f
                    008E    138 _TR1	=	0x008e
                    008D    139 _TF0	=	0x008d
                    008C    140 _TR0	=	0x008c
                    008B    141 _IE1	=	0x008b
                    008A    142 _IT1	=	0x008a
                    0089    143 _IE0	=	0x0089
                    0088    144 _IT0	=	0x0088
                    00AF    145 _EA	=	0x00af
                    00AC    146 _ES	=	0x00ac
                    00AB    147 _ET1	=	0x00ab
                    00AA    148 _EX1	=	0x00aa
                    00A9    149 _ET0	=	0x00a9
                    00A8    150 _EX0	=	0x00a8
                    00BC    151 _PS	=	0x00bc
                    00BB    152 _PT1	=	0x00bb
                    00BA    153 _PX1	=	0x00ba
                    00B9    154 _PT0	=	0x00b9
                    00B8    155 _PX0	=	0x00b8
                    00B7    156 _RD	=	0x00b7
                    00B6    157 _WR	=	0x00b6
                    00B5    158 _T1	=	0x00b5
                    00B4    159 _T0	=	0x00b4
                    00B3    160 _INT1	=	0x00b3
                    00B2    161 _INT0	=	0x00b2
                    00B1    162 _TXD	=	0x00b1
                    00B0    163 _RXD	=	0x00b0
                    0090    164 _P1_0	=	0x0090
                    0091    165 _P1_1	=	0x0091
                    0092    166 _P1_2	=	0x0092
                    0093    167 _P1_3	=	0x0093
                    0094    168 _P1_4	=	0x0094
                    0095    169 _P1_5	=	0x0095
                    0096    170 _P1_6	=	0x0096
                    0097    171 _P1_7	=	0x0097
                    009F    172 _SM0	=	0x009f
                    009E    173 _SM1	=	0x009e
                    009D    174 _SM2	=	0x009d
                    009C    175 _REN	=	0x009c
                    009B    176 _TB8	=	0x009b
                    009A    177 _RB8	=	0x009a
                    0099    178 _TI	=	0x0099
                    0098    179 _RI	=	0x0098
                    00C8    180 _T2CON_0	=	0x00c8
                    00C9    181 _T2CON_1	=	0x00c9
                    00CA    182 _T2CON_2	=	0x00ca
                    00CB    183 _T2CON_3	=	0x00cb
                    00CC    184 _T2CON_4	=	0x00cc
                    00CD    185 _T2CON_5	=	0x00cd
                    00CE    186 _T2CON_6	=	0x00ce
                    00CF    187 _T2CON_7	=	0x00cf
                            188 ;--------------------------------------------------------
                            189 ; overlayable register banks 
                            190 ;--------------------------------------------------------
                            191 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     192 	.ds 8
                            193 ;--------------------------------------------------------
                            194 ; internal ram data
                            195 ;--------------------------------------------------------
                            196 	.area DSEG    (DATA)
                            197 ;--------------------------------------------------------
                            198 ; overlayable items in internal ram 
                            199 ;--------------------------------------------------------
                            200 	.area OSEG    (OVR,DATA)
                            201 ;--------------------------------------------------------
                            202 ; Stack segment in internal ram 
                            203 ;--------------------------------------------------------
                            204 	.area	SSEG	(DATA)
   0008                     205 __start__stack:
   0008                     206 	.ds	1
                            207 
                            208 ;--------------------------------------------------------
                            209 ; indirectly addressable internal ram data
                            210 ;--------------------------------------------------------
                            211 	.area ISEG    (DATA)
                            212 ;--------------------------------------------------------
                            213 ; bit data
                            214 ;--------------------------------------------------------
                            215 	.area BSEG    (BIT)
                            216 ;--------------------------------------------------------
                            217 ; paged external ram data
                            218 ;--------------------------------------------------------
                            219 	.area PSEG    (PAG,XDATA)
                            220 ;--------------------------------------------------------
                            221 ; external ram data
                            222 ;--------------------------------------------------------
                            223 	.area XSEG    (XDATA)
                            224 ;--------------------------------------------------------
                            225 ; external initialized ram data
                            226 ;--------------------------------------------------------
                            227 	.area XISEG   (XDATA)
                            228 	.area CSEG    (CODE)
                            229 	.area GSINIT0 (CODE)
                            230 	.area GSINIT1 (CODE)
                            231 	.area GSINIT2 (CODE)
                            232 	.area GSINIT3 (CODE)
                            233 	.area GSINIT4 (CODE)
                            234 	.area GSINIT5 (CODE)
                            235 ;--------------------------------------------------------
                            236 ; interrupt vector 
                            237 ;--------------------------------------------------------
                            238 	.area CSEG    (CODE)
   0000                     239 __interrupt_vect:
   0000 02 00 AB            240 	ljmp	__sdcc_gsinit_startup
   0003 02 00 1D            241 	ljmp	_int_0
                            242 ;--------------------------------------------------------
                            243 ; global & static initialisations
                            244 ;--------------------------------------------------------
                            245 	.area CSEG    (CODE)
                            246 	.area GSINIT  (CODE)
                            247 	.area GSFINAL (CODE)
                            248 	.area GSINIT  (CODE)
                            249 	.globl __sdcc_gsinit_startup
                            250 	.globl __sdcc_program_startup
                            251 	.globl __start__stack
                            252 	.globl __mcs51_genXINIT
                            253 	.globl __mcs51_genXRAMCLEAR
                            254 	.globl __mcs51_genRAMCLEAR
                            255 	.area GSFINAL (CODE)
   0104 02 00 06            256 	ljmp	__sdcc_program_startup
                            257 ;--------------------------------------------------------
                            258 ; Home
                            259 ;--------------------------------------------------------
                            260 	.area HOME    (CODE)
                            261 	.area CSEG    (CODE)
                            262 ;--------------------------------------------------------
                            263 ; code
                            264 ;--------------------------------------------------------
                            265 	.area CSEG    (CODE)
   0006                     266 __sdcc_program_startup:
   0006 12 00 0B            267 	lcall	_main
                            268 ;	return from main will lock up
   0009 80 FE               269 	sjmp .
                            270 ;------------------------------------------------------------
                            271 ;Allocation info for local variables in function 'main'
                            272 ;------------------------------------------------------------
                            273 ;------------------------------------------------------------
                            274 ;c:/sdcc/exam/test5.c:7: void main()
                            275 ;	-----------------------------------------
                            276 ;	 function main
                            277 ;	-----------------------------------------
   000B                     278 _main:
                    0002    279 	ar2 = 0x02
                    0003    280 	ar3 = 0x03
                    0004    281 	ar4 = 0x04
                    0005    282 	ar5 = 0x05
                    0006    283 	ar6 = 0x06
                    0007    284 	ar7 = 0x07
                    0000    285 	ar0 = 0x00
                    0001    286 	ar1 = 0x01
                            287 ;c:/sdcc/exam/test5.c:9: IT0 = 1;
                            288 ;     genAssign
   000B D2 88               289 	setb	_IT0
                            290 ;c:/sdcc/exam/test5.c:10: EX0 = 1;
                            291 ;     genAssign
   000D D2 A8               292 	setb	_EX0
                            293 ;c:/sdcc/exam/test5.c:11: EA = 1;
                            294 ;     genAssign
   000F D2 AF               295 	setb	_EA
                            296 ;c:/sdcc/exam/test5.c:12: LED = 0x00;  //預設全亮 
                            297 ;     genAssign
   0011 75 80 00            298 	mov	_P0,#0x00
                            299 ;c:/sdcc/exam/test5.c:13: WR &= 0xbf;  //10111111 16(WR)腳位拉低 
                            300 ;     genAnd
   0014 53 B0 BF            301 	anl	_P3,#0xBF
                            302 ;c:/sdcc/exam/test5.c:14: WR |= 0x40;  //01000000 16(WR)腳位拉高 (給ADC0804信號，做一次ADC轉換) 
                            303 ;     genOr
   0017 43 B0 40            304 	orl	_P3,#0x40
                            305 ;c:/sdcc/exam/test5.c:15: while(1);
   001A                     306 00102$:
                            307 ;	Peephole 112.b	changed ljmp to sjmp
   001A 80 FE               308 	sjmp	00102$
   001C                     309 00104$:
   001C 22                  310 	ret
                            311 ;------------------------------------------------------------
                            312 ;Allocation info for local variables in function 'int_0'
                            313 ;------------------------------------------------------------
                            314 ;------------------------------------------------------------
                            315 ;c:/sdcc/exam/test5.c:18: void int_0(void) interrupt 0
                            316 ;	-----------------------------------------
                            317 ;	 function int_0
                            318 ;	-----------------------------------------
   001D                     319 _int_0:
   001D C0 E0               320 	push	acc
   001F C0 02               321 	push	ar2
   0021 C0 03               322 	push	ar3
   0023 C0 D0               323 	push	psw
   0025 75 D0 00            324 	mov	psw,#0x00
                            325 ;c:/sdcc/exam/test5.c:20: if( DB == 0 ){
                            326 ;     genCmpEq
   0028 E5 90               327 	mov	a,_P1
                            328 ;	Peephole 162	removed sjmp by inverse jump logic
   002A 60 02               329 	jz	00141$
   002C                     330 00140$:
                            331 ;	Peephole 112.b	changed ljmp to sjmp
   002C 80 05               332 	sjmp	00126$
   002E                     333 00141$:
                            334 ;c:/sdcc/exam/test5.c:21: LED = 0xff;
                            335 ;     genAssign
   002E 75 80 FF            336 	mov	_P0,#0xFF
                            337 ;	Peephole 112.b	changed ljmp to sjmp
   0031 80 65               338 	sjmp	00127$
   0033                     339 00126$:
                            340 ;c:/sdcc/exam/test5.c:23: else if( DB > 0 && DB < 32 ){
                            341 ;     genCmpGt
                            342 ;     genCmp
                            343 ;     genIfxJump
                            344 ;	Peephole 108	removed ljmp by inverse jump logic
                            345 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0033 E5 90               346 	mov	a,_P1
   0035 24 FF               347 	add	a,#0xff - 0x00
   0037 50 0B               348 	jnc	00122$
   0039                     349 00142$:
                            350 ;     genCmpLt
                            351 ;     genCmp
                            352 ;     genIfxJump
                            353 ;	Peephole 108	removed ljmp by inverse jump logic
                            354 ;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
   0039 74 E0               355 	mov	a,#0x100 - 0x20
   003B 25 90               356 	add	a,_P1
   003D 40 05               357 	jc	00122$
   003F                     358 00143$:
                            359 ;c:/sdcc/exam/test5.c:24: LED = 0xfe;
                            360 ;     genAssign
   003F 75 80 FE            361 	mov	_P0,#0xFE
                            362 ;	Peephole 112.b	changed ljmp to sjmp
   0042 80 54               363 	sjmp	00127$
   0044                     364 00122$:
                            365 ;c:/sdcc/exam/test5.c:26: else if( DB < 64 ){
                            366 ;     genCmpLt
                            367 ;     genCmp
                            368 ;     genIfxJump
                            369 ;	Peephole 108	removed ljmp by inverse jump logic
                            370 ;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
   0044 74 C0               371 	mov	a,#0x100 - 0x40
   0046 25 90               372 	add	a,_P1
   0048 40 05               373 	jc	00119$
   004A                     374 00144$:
                            375 ;c:/sdcc/exam/test5.c:27: LED = 0xfc;
                            376 ;     genAssign
   004A 75 80 FC            377 	mov	_P0,#0xFC
                            378 ;	Peephole 112.b	changed ljmp to sjmp
   004D 80 49               379 	sjmp	00127$
   004F                     380 00119$:
                            381 ;c:/sdcc/exam/test5.c:29: else if( DB < 96 ){
                            382 ;     genCmpLt
                            383 ;     genCmp
                            384 ;     genIfxJump
                            385 ;	Peephole 108	removed ljmp by inverse jump logic
                            386 ;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
   004F 74 A0               387 	mov	a,#0x100 - 0x60
   0051 25 90               388 	add	a,_P1
   0053 40 05               389 	jc	00116$
   0055                     390 00145$:
                            391 ;c:/sdcc/exam/test5.c:30: LED = 0xf8;
                            392 ;     genAssign
   0055 75 80 F8            393 	mov	_P0,#0xF8
                            394 ;	Peephole 112.b	changed ljmp to sjmp
   0058 80 3E               395 	sjmp	00127$
   005A                     396 00116$:
                            397 ;c:/sdcc/exam/test5.c:32: else if( DB < 128 ){
                            398 ;     genCmpLt
                            399 ;     genCmp
                            400 ;     genIfxJump
                            401 ;	Peephole 108	removed ljmp by inverse jump logic
                            402 ;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
   005A 74 80               403 	mov	a,#0x100 - 0x80
   005C 25 90               404 	add	a,_P1
   005E 40 05               405 	jc	00113$
   0060                     406 00146$:
                            407 ;c:/sdcc/exam/test5.c:33: LED = 0xf0;
                            408 ;     genAssign
   0060 75 80 F0            409 	mov	_P0,#0xF0
                            410 ;	Peephole 112.b	changed ljmp to sjmp
   0063 80 33               411 	sjmp	00127$
   0065                     412 00113$:
                            413 ;c:/sdcc/exam/test5.c:35: else if( DB < 160 ){
                            414 ;     genCmpLt
                            415 ;     genCmp
                            416 ;     genIfxJump
                            417 ;	Peephole 108	removed ljmp by inverse jump logic
                            418 ;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
   0065 74 60               419 	mov	a,#0x100 - 0xA0
   0067 25 90               420 	add	a,_P1
   0069 40 05               421 	jc	00110$
   006B                     422 00147$:
                            423 ;c:/sdcc/exam/test5.c:36: LED = 0xe0;
                            424 ;     genAssign
   006B 75 80 E0            425 	mov	_P0,#0xE0
                            426 ;	Peephole 112.b	changed ljmp to sjmp
   006E 80 28               427 	sjmp	00127$
   0070                     428 00110$:
                            429 ;c:/sdcc/exam/test5.c:38: else if( DB < 192 ){
                            430 ;     genCmpLt
                            431 ;     genCmp
                            432 ;     genIfxJump
                            433 ;	Peephole 108	removed ljmp by inverse jump logic
                            434 ;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
   0070 74 40               435 	mov	a,#0x100 - 0xC0
   0072 25 90               436 	add	a,_P1
   0074 40 05               437 	jc	00107$
   0076                     438 00148$:
                            439 ;c:/sdcc/exam/test5.c:39: LED = 0xc0;
                            440 ;     genAssign
   0076 75 80 C0            441 	mov	_P0,#0xC0
                            442 ;	Peephole 112.b	changed ljmp to sjmp
   0079 80 1D               443 	sjmp	00127$
   007B                     444 00107$:
                            445 ;c:/sdcc/exam/test5.c:41: else if( DB < 224 ){
                            446 ;     genCmpLt
                            447 ;     genCmp
                            448 ;     genIfxJump
                            449 ;	Peephole 108	removed ljmp by inverse jump logic
                            450 ;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
   007B 74 20               451 	mov	a,#0x100 - 0xE0
   007D 25 90               452 	add	a,_P1
   007F 40 05               453 	jc	00104$
   0081                     454 00149$:
                            455 ;c:/sdcc/exam/test5.c:42: LED = 0x80;
                            456 ;     genAssign
   0081 75 80 80            457 	mov	_P0,#0x80
                            458 ;	Peephole 112.b	changed ljmp to sjmp
   0084 80 12               459 	sjmp	00127$
   0086                     460 00104$:
                            461 ;c:/sdcc/exam/test5.c:44: else if( DB < 256 ){
                            462 ;     genCast
   0086 AA 90               463 	mov	r2,_P1
   0088 7B 00               464 	mov	r3,#0x00
                            465 ;     genCmpLt
                            466 ;     genCmp
   008A C3                  467 	clr	c
   008B EA                  468 	mov	a,r2
   008C 94 00               469 	subb	a,#0x00
   008E EB                  470 	mov	a,r3
   008F 64 80               471 	xrl	a,#0x80
   0091 94 81               472 	subb	a,#0x81
                            473 ;     genIfxJump
                            474 ;	Peephole 108	removed ljmp by inverse jump logic
   0093 50 03               475 	jnc	00127$
   0095                     476 00150$:
                            477 ;c:/sdcc/exam/test5.c:45: LED = 0x00;
                            478 ;     genAssign
   0095 75 80 00            479 	mov	_P0,#0x00
   0098                     480 00127$:
                            481 ;c:/sdcc/exam/test5.c:48: WR &= 0xbf;       //10111111 16(WR)腳位拉低 
                            482 ;     genAnd
   0098 53 B0 BF            483 	anl	_P3,#0xBF
                            484 ;c:/sdcc/exam/test5.c:49: WR |= 0x40;       //01000000 16(WR)腳位拉高 (給ADC0804信號，做一次ADC轉換) 
                            485 ;     genOr
   009B 43 B0 40            486 	orl	_P3,#0x40
   009E                     487 00128$:
   009E D0 D0               488 	pop	psw
   00A0 D0 03               489 	pop	ar3
   00A2 D0 02               490 	pop	ar2
   00A4 D0 E0               491 	pop	acc
   00A6 32                  492 	reti
                            493 ;	eliminated unneeded push/pop dpl
                            494 ;	eliminated unneeded push/pop dph
                            495 ;	eliminated unneeded push/pop b
                            496 	.area CSEG    (CODE)
                            497 	.area XINIT   (CODE)
