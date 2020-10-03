                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Tue Oct 08 17:28:38 2019
                              5 ;--------------------------------------------------------
                              6 	.module test2
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _light
                             13 	.globl _intx
                             14 	.globl _tmiintrt
                             15 	.globl _main
                             16 	.globl _T2CON_7
                             17 	.globl _T2CON_6
                             18 	.globl _T2CON_5
                             19 	.globl _T2CON_4
                             20 	.globl _T2CON_3
                             21 	.globl _T2CON_2
                             22 	.globl _T2CON_1
                             23 	.globl _T2CON_0
                             24 	.globl _RI
                             25 	.globl _TI
                             26 	.globl _RB8
                             27 	.globl _TB8
                             28 	.globl _REN
                             29 	.globl _SM2
                             30 	.globl _SM1
                             31 	.globl _SM0
                             32 	.globl _P1_7
                             33 	.globl _P1_6
                             34 	.globl _P1_5
                             35 	.globl _P1_4
                             36 	.globl _P1_3
                             37 	.globl _P1_2
                             38 	.globl _P1_1
                             39 	.globl _P1_0
                             40 	.globl _RXD
                             41 	.globl _TXD
                             42 	.globl _INT0
                             43 	.globl _INT1
                             44 	.globl _T0
                             45 	.globl _T1
                             46 	.globl _WR
                             47 	.globl _RD
                             48 	.globl _PX0
                             49 	.globl _PT0
                             50 	.globl _PX1
                             51 	.globl _PT1
                             52 	.globl _PS
                             53 	.globl _EX0
                             54 	.globl _ET0
                             55 	.globl _EX1
                             56 	.globl _ET1
                             57 	.globl _ES
                             58 	.globl _EA
                             59 	.globl _IT0
                             60 	.globl _IE0
                             61 	.globl _IT1
                             62 	.globl _IE1
                             63 	.globl _TR0
                             64 	.globl _TF0
                             65 	.globl _TR1
                             66 	.globl _TF1
                             67 	.globl _P
                             68 	.globl _OV
                             69 	.globl _RS0
                             70 	.globl _RS1
                             71 	.globl _F0
                             72 	.globl _AC
                             73 	.globl _CY
                             74 	.globl _RCAP2L
                             75 	.globl _RCAP2H
                             76 	.globl _T2CON
                             77 	.globl _SBUF
                             78 	.globl _SCON
                             79 	.globl _IP
                             80 	.globl _IE
                             81 	.globl _AUXR
                             82 	.globl _TH1
                             83 	.globl _TH0
                             84 	.globl _TL1
                             85 	.globl _TL0
                             86 	.globl _TMOD
                             87 	.globl _TCON
                             88 	.globl _PCON
                             89 	.globl _DPH
                             90 	.globl _DPL
                             91 	.globl _SP
                             92 	.globl _B
                             93 	.globl _ACC
                             94 	.globl _PSW
                             95 	.globl _P3
                             96 	.globl _P2
                             97 	.globl _P1
                             98 	.globl _P0
                             99 	.globl _counter
                            100 	.globl _show
                            101 	.globl _delay
                            102 ;--------------------------------------------------------
                            103 ; special function registers
                            104 ;--------------------------------------------------------
                            105 	.area RSEG    (DATA)
                    0080    106 _P0	=	0x0080
                    0090    107 _P1	=	0x0090
                    00A0    108 _P2	=	0x00a0
                    00B0    109 _P3	=	0x00b0
                    00D0    110 _PSW	=	0x00d0
                    00E0    111 _ACC	=	0x00e0
                    00F0    112 _B	=	0x00f0
                    0081    113 _SP	=	0x0081
                    0082    114 _DPL	=	0x0082
                    0083    115 _DPH	=	0x0083
                    0087    116 _PCON	=	0x0087
                    0088    117 _TCON	=	0x0088
                    0089    118 _TMOD	=	0x0089
                    008A    119 _TL0	=	0x008a
                    008B    120 _TL1	=	0x008b
                    008C    121 _TH0	=	0x008c
                    008D    122 _TH1	=	0x008d
                    008E    123 _AUXR	=	0x008e
                    00A8    124 _IE	=	0x00a8
                    00B8    125 _IP	=	0x00b8
                    0098    126 _SCON	=	0x0098
                    0099    127 _SBUF	=	0x0099
                    00C8    128 _T2CON	=	0x00c8
                    00CB    129 _RCAP2H	=	0x00cb
                    00CA    130 _RCAP2L	=	0x00ca
                            131 ;--------------------------------------------------------
                            132 ; special function bits 
                            133 ;--------------------------------------------------------
                            134 	.area RSEG    (DATA)
                    00D7    135 _CY	=	0x00d7
                    00D6    136 _AC	=	0x00d6
                    00D5    137 _F0	=	0x00d5
                    00D4    138 _RS1	=	0x00d4
                    00D3    139 _RS0	=	0x00d3
                    00D2    140 _OV	=	0x00d2
                    00D0    141 _P	=	0x00d0
                    008F    142 _TF1	=	0x008f
                    008E    143 _TR1	=	0x008e
                    008D    144 _TF0	=	0x008d
                    008C    145 _TR0	=	0x008c
                    008B    146 _IE1	=	0x008b
                    008A    147 _IT1	=	0x008a
                    0089    148 _IE0	=	0x0089
                    0088    149 _IT0	=	0x0088
                    00AF    150 _EA	=	0x00af
                    00AC    151 _ES	=	0x00ac
                    00AB    152 _ET1	=	0x00ab
                    00AA    153 _EX1	=	0x00aa
                    00A9    154 _ET0	=	0x00a9
                    00A8    155 _EX0	=	0x00a8
                    00BC    156 _PS	=	0x00bc
                    00BB    157 _PT1	=	0x00bb
                    00BA    158 _PX1	=	0x00ba
                    00B9    159 _PT0	=	0x00b9
                    00B8    160 _PX0	=	0x00b8
                    00B7    161 _RD	=	0x00b7
                    00B6    162 _WR	=	0x00b6
                    00B5    163 _T1	=	0x00b5
                    00B4    164 _T0	=	0x00b4
                    00B3    165 _INT1	=	0x00b3
                    00B2    166 _INT0	=	0x00b2
                    00B1    167 _TXD	=	0x00b1
                    00B0    168 _RXD	=	0x00b0
                    0090    169 _P1_0	=	0x0090
                    0091    170 _P1_1	=	0x0091
                    0092    171 _P1_2	=	0x0092
                    0093    172 _P1_3	=	0x0093
                    0094    173 _P1_4	=	0x0094
                    0095    174 _P1_5	=	0x0095
                    0096    175 _P1_6	=	0x0096
                    0097    176 _P1_7	=	0x0097
                    009F    177 _SM0	=	0x009f
                    009E    178 _SM1	=	0x009e
                    009D    179 _SM2	=	0x009d
                    009C    180 _REN	=	0x009c
                    009B    181 _TB8	=	0x009b
                    009A    182 _RB8	=	0x009a
                    0099    183 _TI	=	0x0099
                    0098    184 _RI	=	0x0098
                    00C8    185 _T2CON_0	=	0x00c8
                    00C9    186 _T2CON_1	=	0x00c9
                    00CA    187 _T2CON_2	=	0x00ca
                    00CB    188 _T2CON_3	=	0x00cb
                    00CC    189 _T2CON_4	=	0x00cc
                    00CD    190 _T2CON_5	=	0x00cd
                    00CE    191 _T2CON_6	=	0x00ce
                    00CF    192 _T2CON_7	=	0x00cf
                            193 ;--------------------------------------------------------
                            194 ; overlayable register banks 
                            195 ;--------------------------------------------------------
                            196 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     197 	.ds 8
                            198 ;--------------------------------------------------------
                            199 ; internal ram data
                            200 ;--------------------------------------------------------
                            201 	.area DSEG    (DATA)
   0008                     202 _counter::
   0008                     203 	.ds 1
                            204 ;--------------------------------------------------------
                            205 ; overlayable items in internal ram 
                            206 ;--------------------------------------------------------
                            207 	.area	OSEG    (OVR,DATA)
                            208 	.area	OSEG    (OVR,DATA)
                            209 ;--------------------------------------------------------
                            210 ; Stack segment in internal ram 
                            211 ;--------------------------------------------------------
                            212 	.area	SSEG	(DATA)
   0009                     213 __start__stack:
   0009                     214 	.ds	1
                            215 
                            216 ;--------------------------------------------------------
                            217 ; indirectly addressable internal ram data
                            218 ;--------------------------------------------------------
                            219 	.area ISEG    (DATA)
                            220 ;--------------------------------------------------------
                            221 ; bit data
                            222 ;--------------------------------------------------------
                            223 	.area BSEG    (BIT)
                            224 ;--------------------------------------------------------
                            225 ; paged external ram data
                            226 ;--------------------------------------------------------
                            227 	.area PSEG    (PAG,XDATA)
                            228 ;--------------------------------------------------------
                            229 ; external ram data
                            230 ;--------------------------------------------------------
                            231 	.area XSEG    (XDATA)
                            232 ;--------------------------------------------------------
                            233 ; external initialized ram data
                            234 ;--------------------------------------------------------
                            235 	.area XISEG   (XDATA)
                            236 	.area CSEG    (CODE)
                            237 	.area GSINIT0 (CODE)
                            238 	.area GSINIT1 (CODE)
                            239 	.area GSINIT2 (CODE)
                            240 	.area GSINIT3 (CODE)
                            241 	.area GSINIT4 (CODE)
                            242 	.area GSINIT5 (CODE)
                            243 ;--------------------------------------------------------
                            244 ; interrupt vector 
                            245 ;--------------------------------------------------------
                            246 	.area CSEG    (CODE)
   0000                     247 __interrupt_vect:
   0000 02 01 03            248 	ljmp	__sdcc_gsinit_startup
   0003 02 00 59            249 	ljmp	_intx
   0006                     250 	.ds	5
   000B 02 00 30            251 	ljmp	_tmiintrt
                            252 ;--------------------------------------------------------
                            253 ; global & static initialisations
                            254 ;--------------------------------------------------------
                            255 	.area CSEG    (CODE)
                            256 	.area GSINIT  (CODE)
                            257 	.area GSFINAL (CODE)
                            258 	.area GSINIT  (CODE)
                            259 	.globl __sdcc_gsinit_startup
                            260 	.globl __sdcc_program_startup
                            261 	.globl __start__stack
                            262 	.globl __mcs51_genXINIT
                            263 	.globl __mcs51_genXRAMCLEAR
                            264 	.globl __mcs51_genRAMCLEAR
                            265 	.area GSFINAL (CODE)
   015C 02 00 0E            266 	ljmp	__sdcc_program_startup
                            267 ;--------------------------------------------------------
                            268 ; Home
                            269 ;--------------------------------------------------------
                            270 	.area HOME    (CODE)
                            271 	.area CSEG    (CODE)
                            272 ;--------------------------------------------------------
                            273 ; code
                            274 ;--------------------------------------------------------
                            275 	.area CSEG    (CODE)
   000E                     276 __sdcc_program_startup:
   000E 12 00 13            277 	lcall	_main
                            278 ;	return from main will lock up
   0011 80 FE               279 	sjmp .
                            280 ;------------------------------------------------------------
                            281 ;Allocation info for local variables in function 'main'
                            282 ;------------------------------------------------------------
                            283 ;------------------------------------------------------------
                            284 ;c:/sdcc/exam/test2.c:23: void main()
                            285 ;	-----------------------------------------
                            286 ;	 function main
                            287 ;	-----------------------------------------
   0013                     288 _main:
                    0002    289 	ar2 = 0x02
                    0003    290 	ar3 = 0x03
                    0004    291 	ar4 = 0x04
                    0005    292 	ar5 = 0x05
                    0006    293 	ar6 = 0x06
                    0007    294 	ar7 = 0x07
                    0000    295 	ar0 = 0x00
                    0001    296 	ar1 = 0x01
                            297 ;c:/sdcc/exam/test2.c:25: TCON = 0x00;   //00000000 初始化TCON暫存器 
                            298 ;     genAssign
   0013 75 88 00            299 	mov	_TCON,#0x00
                            300 ;c:/sdcc/exam/test2.c:26: TMOD = 0x01;   //00000001 設定Timer0為16位元計數器 
                            301 ;     genAssign
   0016 75 89 01            302 	mov	_TMOD,#0x01
                            303 ;c:/sdcc/exam/test2.c:27: IP = 0x01;     //00000001 設定INT0(8051的12腳位)優先 //
                            304 ;     genAssign
   0019 75 B8 01            305 	mov	_IP,#0x01
                            306 ;c:/sdcc/exam/test2.c:28: IE = 0x83;     //10000011 中斷致能，啟用了Timer0 overflow的中斷和INT0的中斷 
                            307 ;     genAssign
   001C 75 A8 83            308 	mov	_IE,#0x83
                            309 ;c:/sdcc/exam/test2.c:30: TL0 = _TL0_; //設定差50000個machine cycle才觸發中斷 
                            310 ;     genAssign
   001F 75 8A DF            311 	mov	_TL0,#0xDF
                            312 ;c:/sdcc/exam/test2.c:31: TH0 = _TH0_; 
                            313 ;     genAssign
   0022 75 8C B1            314 	mov	_TH0,#0xB1
                            315 ;c:/sdcc/exam/test2.c:33: TR0 = 1;     //TCON內的TR0設定為1，啟動Timer0 
                            316 ;     genAssign
   0025 D2 8C               317 	setb	_TR0
                            318 ;c:/sdcc/exam/test2.c:34: P1 = 0xff;   //11111111，預設8個LED全暗 
                            319 ;     genAssign
   0027 75 90 FF            320 	mov	_P1,#0xFF
                            321 ;c:/sdcc/exam/test2.c:35: counter = 0;
                            322 ;     genAssign
   002A 75 08 00            323 	mov	_counter,#0x00
                            324 ;c:/sdcc/exam/test2.c:36: while(1)
   002D                     325 00102$:
                            326 ;	Peephole 112.b	changed ljmp to sjmp
   002D 80 FE               327 	sjmp	00102$
   002F                     328 00104$:
   002F 22                  329 	ret
                            330 ;------------------------------------------------------------
                            331 ;Allocation info for local variables in function 'tmiintrt'
                            332 ;------------------------------------------------------------
                            333 ;------------------------------------------------------------
                            334 ;c:/sdcc/exam/test2.c:42: void tmiintrt(void) interrupt 1  //Timer0 overflow中斷 
                            335 ;	-----------------------------------------
                            336 ;	 function tmiintrt
                            337 ;	-----------------------------------------
   0030                     338 _tmiintrt:
   0030 C0 E0               339 	push	acc
   0032 C0 D0               340 	push	psw
   0034 75 D0 00            341 	mov	psw,#0x00
                            342 ;c:/sdcc/exam/test2.c:44: TL0 = _TL0_;  //重設時間
                            343 ;     genAssign
   0037 75 8A DF            344 	mov	_TL0,#0xDF
                            345 ;c:/sdcc/exam/test2.c:45: TH0 = _TH0_;
                            346 ;     genAssign
   003A 75 8C B1            347 	mov	_TH0,#0xB1
                            348 ;c:/sdcc/exam/test2.c:46: counter++;
                            349 ;     genPlus
                            350 ;     genPlusIncr
   003D 05 08               351 	inc	_counter
                            352 ;c:/sdcc/exam/test2.c:47: if(counter == COUNTER)
                            353 ;     genCmpEq
   003F E5 08               354 	mov	a,_counter
                            355 ;	Peephole 112.b	changed ljmp to sjmp
                            356 ;	Peephole 199	optimized misc jump sequence
   0041 B4 32 10            357 	cjne	a,#0x32,00106$
                            358 ;00110$:
                            359 ;	Peephole 200	removed redundant sjmp
   0044                     360 00111$:
                            361 ;c:/sdcc/exam/test2.c:49: if (P1 == 0xff)  //若全暗->全亮 
                            362 ;     genCmpEq
   0044 E5 90               363 	mov	a,_P1
                            364 ;	Peephole 112.b	changed ljmp to sjmp
                            365 ;	Peephole 199	optimized misc jump sequence
   0046 B4 FF 05            366 	cjne	a,#0xFF,00102$
                            367 ;00112$:
                            368 ;	Peephole 200	removed redundant sjmp
   0049                     369 00113$:
                            370 ;c:/sdcc/exam/test2.c:50: P1 = 0x00;
                            371 ;     genAssign
   0049 75 90 00            372 	mov	_P1,#0x00
                            373 ;	Peephole 112.b	changed ljmp to sjmp
   004C 80 03               374 	sjmp	00103$
   004E                     375 00102$:
                            376 ;c:/sdcc/exam/test2.c:52: P1 = 0xff;
                            377 ;     genAssign
   004E 75 90 FF            378 	mov	_P1,#0xFF
   0051                     379 00103$:
                            380 ;c:/sdcc/exam/test2.c:53: counter = 0;
                            381 ;     genAssign
   0051 75 08 00            382 	mov	_counter,#0x00
   0054                     383 00106$:
   0054 D0 D0               384 	pop	psw
   0056 D0 E0               385 	pop	acc
   0058 32                  386 	reti
                            387 ;	eliminated unneeded push/pop dpl
                            388 ;	eliminated unneeded push/pop dph
                            389 ;	eliminated unneeded push/pop b
                            390 ;------------------------------------------------------------
                            391 ;Allocation info for local variables in function 'intx'
                            392 ;------------------------------------------------------------
                            393 ;------------------------------------------------------------
                            394 ;c:/sdcc/exam/test2.c:57: void intx(void) interrupt 0  //INT0(8051 12腳位)外部中斷 
                            395 ;	-----------------------------------------
                            396 ;	 function intx
                            397 ;	-----------------------------------------
   0059                     398 _intx:
   0059 C0 E0               399 	push	acc
   005B C0 F0               400 	push	b
   005D C0 82               401 	push	dpl
   005F C0 83               402 	push	dph
   0061 C0 02               403 	push	(0+2)
   0063 C0 03               404 	push	(0+3)
   0065 C0 04               405 	push	(0+4)
   0067 C0 05               406 	push	(0+5)
   0069 C0 06               407 	push	(0+6)
   006B C0 07               408 	push	(0+7)
   006D C0 00               409 	push	(0+0)
   006F C0 01               410 	push	(0+1)
   0071 C0 D0               411 	push	psw
   0073 75 D0 00            412 	mov	psw,#0x00
                            413 ;c:/sdcc/exam/test2.c:59: if(P3==0xfa)  //按了接8051 10腳位的按鈕 
                            414 ;     genCmpEq
   0076 E5 B0               415 	mov	a,_P3
                            416 ;	Peephole 112.b	changed ljmp to sjmp
                            417 ;	Peephole 199	optimized misc jump sequence
   0078 B4 FA 08            418 	cjne	a,#0xFA,00105$
                            419 ;00111$:
                            420 ;	Peephole 200	removed redundant sjmp
   007B                     421 00112$:
                            422 ;c:/sdcc/exam/test2.c:60: show(0);
                            423 ;     genCall
                            424 ;	Peephole 182.b	used 16 bit load of dptr
   007B 90 00 00            425 	mov	dptr,#0x0000
   007E 12 00 B1            426 	lcall	_show
                            427 ;	Peephole 112.b	changed ljmp to sjmp
   0081 80 13               428 	sjmp	00107$
   0083                     429 00105$:
                            430 ;c:/sdcc/exam/test2.c:61: else if (P3 == 0xf9)  //按了接8051 11腳位的按鈕 
                            431 ;     genCmpEq
   0083 E5 B0               432 	mov	a,_P3
                            433 ;	Peephole 112.b	changed ljmp to sjmp
                            434 ;	Peephole 199	optimized misc jump sequence
   0085 B4 F9 08            435 	cjne	a,#0xF9,00102$
                            436 ;00113$:
                            437 ;	Peephole 200	removed redundant sjmp
   0088                     438 00114$:
                            439 ;c:/sdcc/exam/test2.c:62: show(1);
                            440 ;     genCall
                            441 ;	Peephole 182.b	used 16 bit load of dptr
   0088 90 00 01            442 	mov	dptr,#0x0001
   008B 12 00 B1            443 	lcall	_show
                            444 ;	Peephole 112.b	changed ljmp to sjmp
   008E 80 06               445 	sjmp	00107$
   0090                     446 00102$:
                            447 ;c:/sdcc/exam/test2.c:64: show(2);  //同時按下兩個按鈕(不太可能同時按下，兩個按鈕都壓著別放開試試) 
                            448 ;     genCall
                            449 ;	Peephole 182.b	used 16 bit load of dptr
   0090 90 00 02            450 	mov	dptr,#0x0002
   0093 12 00 B1            451 	lcall	_show
   0096                     452 00107$:
   0096 D0 D0               453 	pop	psw
   0098 D0 01               454 	pop	(0+1)
   009A D0 00               455 	pop	(0+0)
   009C D0 07               456 	pop	(0+7)
   009E D0 06               457 	pop	(0+6)
   00A0 D0 05               458 	pop	(0+5)
   00A2 D0 04               459 	pop	(0+4)
   00A4 D0 03               460 	pop	(0+3)
   00A6 D0 02               461 	pop	(0+2)
   00A8 D0 83               462 	pop	dph
   00AA D0 82               463 	pop	dpl
   00AC D0 F0               464 	pop	b
   00AE D0 E0               465 	pop	acc
   00B0 32                  466 	reti
                            467 ;------------------------------------------------------------
                            468 ;Allocation info for local variables in function 'show'
                            469 ;------------------------------------------------------------
                            470 ;method                    Allocated to registers r2 r3 
                            471 ;x                         Allocated with name '_show_x_1_1'
                            472 ;------------------------------------------------------------
                            473 ;c:/sdcc/exam/test2.c:67: void show(int method)
                            474 ;	-----------------------------------------
                            475 ;	 function show
                            476 ;	-----------------------------------------
   00B1                     477 _show:
                            478 ;     genReceive
   00B1 AA 82               479 	mov	r2,dpl
   00B3 AB 83               480 	mov	r3,dph
                            481 ;c:/sdcc/exam/test2.c:70: if (method ==0 || method == 2)
                            482 ;     genCmpEq
   00B5 BA 00 05            483 	cjne	r2,#0x00,00111$
   00B8 BB 00 02            484 	cjne	r3,#0x00,00111$
                            485 ;	Peephole 112.b	changed ljmp to sjmp
   00BB 80 06               486 	sjmp	00101$
   00BD                     487 00111$:
                            488 ;     genCmpEq
                            489 ;	Peephole 112.b	changed ljmp to sjmp
                            490 ;	Peephole 198	optimized misc jump sequence
   00BD BA 02 06            491 	cjne	r2,#0x02,00102$
   00C0 BB 00 03            492 	cjne	r3,#0x00,00102$
                            493 ;00112$:
                            494 ;	Peephole 200	removed redundant sjmp
   00C3                     495 00113$:
   00C3                     496 00101$:
                            497 ;c:/sdcc/exam/test2.c:72: IE = 0x83; 
                            498 ;     genAssign
   00C3 75 A8 83            499 	mov	_IE,#0x83
   00C6                     500 00102$:
                            501 ;c:/sdcc/exam/test2.c:79: if (method ==1 || method == 2)
                            502 ;     genCmpEq
   00C6 BA 01 05            503 	cjne	r2,#0x01,00114$
   00C9 BB 00 02            504 	cjne	r3,#0x00,00114$
                            505 ;	Peephole 112.b	changed ljmp to sjmp
   00CC 80 06               506 	sjmp	00104$
   00CE                     507 00114$:
                            508 ;     genCmpEq
                            509 ;	Peephole 112.b	changed ljmp to sjmp
                            510 ;	Peephole 198	optimized misc jump sequence
   00CE BA 02 06            511 	cjne	r2,#0x02,00107$
   00D1 BB 00 03            512 	cjne	r3,#0x00,00107$
                            513 ;00115$:
                            514 ;	Peephole 200	removed redundant sjmp
   00D4                     515 00116$:
   00D4                     516 00104$:
                            517 ;c:/sdcc/exam/test2.c:81: IE = 0x81; 
                            518 ;     genAssign
   00D4 75 A8 81            519 	mov	_IE,#0x81
   00D7                     520 00107$:
   00D7 22                  521 	ret
                            522 ;------------------------------------------------------------
                            523 ;Allocation info for local variables in function 'delay'
                            524 ;------------------------------------------------------------
                            525 ;t                         Allocated to registers r2 r3 
                            526 ;x                         Allocated to registers r4 r5 
                            527 ;------------------------------------------------------------
                            528 ;c:/sdcc/exam/test2.c:89: void delay(int t)
                            529 ;	-----------------------------------------
                            530 ;	 function delay
                            531 ;	-----------------------------------------
   00D8                     532 _delay:
                            533 ;     genReceive
   00D8 AA 82               534 	mov	r2,dpl
   00DA AB 83               535 	mov	r3,dph
                            536 ;c:/sdcc/exam/test2.c:92: for (x=0;x<t;x++);
                            537 ;     genAssign
   00DC 7C 00               538 	mov	r4,#0x00
   00DE 7D 00               539 	mov	r5,#0x00
   00E0                     540 00101$:
                            541 ;     genCmpLt
                            542 ;     genCmp
   00E0 C3                  543 	clr	c
   00E1 EC                  544 	mov	a,r4
   00E2 9A                  545 	subb	a,r2
   00E3 ED                  546 	mov	a,r5
   00E4 64 80               547 	xrl	a,#0x80
   00E6 8B F0               548 	mov	b,r3
   00E8 63 F0 80            549 	xrl	b,#0x80
   00EB 95 F0               550 	subb	a,b
                            551 ;     genIfxJump
                            552 ;	Peephole 108	removed ljmp by inverse jump logic
   00ED 50 07               553 	jnc	00105$
   00EF                     554 00109$:
                            555 ;     genPlus
                            556 ;     genPlusIncr
                            557 ;	tail increment optimized
   00EF 0C                  558 	inc	r4
   00F0 BC 00 ED            559 	cjne	r4,#0x00,00101$
   00F3 0D                  560 	inc	r5
                            561 ;	Peephole 112.b	changed ljmp to sjmp
   00F4 80 EA               562 	sjmp	00101$
   00F6                     563 00105$:
   00F6 22                  564 	ret
                            565 	.area CSEG    (CODE)
   00F7                     566 _light:
   00F7 FE                  567 	.db #0xFE
   00F8 FD                  568 	.db #0xFD
   00F9 FB                  569 	.db #0xFB
   00FA F7                  570 	.db #0xF7
   00FB EF                  571 	.db #0xEF
   00FC DF                  572 	.db #0xDF
   00FD BF                  573 	.db #0xBF
   00FE 7F                  574 	.db #0x7F
                            575 	.area XINIT   (CODE)
