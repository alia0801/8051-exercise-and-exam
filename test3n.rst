                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Tue Oct 15 17:50:25 2019
                              5 ;--------------------------------------------------------
                              6 	.module test3n
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _startmsg
                             13 	.globl _msg
                             14 	.globl _keymsg
                             15 	.globl _key
                             16 	.globl _ser
                             17 	.globl _main
                             18 	.globl _T2CON_7
                             19 	.globl _T2CON_6
                             20 	.globl _T2CON_5
                             21 	.globl _T2CON_4
                             22 	.globl _T2CON_3
                             23 	.globl _T2CON_2
                             24 	.globl _T2CON_1
                             25 	.globl _T2CON_0
                             26 	.globl _RI
                             27 	.globl _TI
                             28 	.globl _RB8
                             29 	.globl _TB8
                             30 	.globl _REN
                             31 	.globl _SM2
                             32 	.globl _SM1
                             33 	.globl _SM0
                             34 	.globl _P1_7
                             35 	.globl _P1_6
                             36 	.globl _P1_5
                             37 	.globl _P1_4
                             38 	.globl _P1_3
                             39 	.globl _P1_2
                             40 	.globl _P1_1
                             41 	.globl _P1_0
                             42 	.globl _RXD
                             43 	.globl _TXD
                             44 	.globl _INT0
                             45 	.globl _INT1
                             46 	.globl _T0
                             47 	.globl _T1
                             48 	.globl _WR
                             49 	.globl _RD
                             50 	.globl _PX0
                             51 	.globl _PT0
                             52 	.globl _PX1
                             53 	.globl _PT1
                             54 	.globl _PS
                             55 	.globl _EX0
                             56 	.globl _ET0
                             57 	.globl _EX1
                             58 	.globl _ET1
                             59 	.globl _ES
                             60 	.globl _EA
                             61 	.globl _IT0
                             62 	.globl _IE0
                             63 	.globl _IT1
                             64 	.globl _IE1
                             65 	.globl _TR0
                             66 	.globl _TF0
                             67 	.globl _TR1
                             68 	.globl _TF1
                             69 	.globl _P
                             70 	.globl _OV
                             71 	.globl _RS0
                             72 	.globl _RS1
                             73 	.globl _F0
                             74 	.globl _AC
                             75 	.globl _CY
                             76 	.globl _RCAP2L
                             77 	.globl _RCAP2H
                             78 	.globl _T2CON
                             79 	.globl _SBUF
                             80 	.globl _SCON
                             81 	.globl _IP
                             82 	.globl _IE
                             83 	.globl _AUXR
                             84 	.globl _TH1
                             85 	.globl _TH0
                             86 	.globl _TL1
                             87 	.globl _TL0
                             88 	.globl _TMOD
                             89 	.globl _TCON
                             90 	.globl _PCON
                             91 	.globl _DPH
                             92 	.globl _DPL
                             93 	.globl _SP
                             94 	.globl _B
                             95 	.globl _ACC
                             96 	.globl _PSW
                             97 	.globl _P3
                             98 	.globl _P2
                             99 	.globl _P1
                            100 	.globl _P0
                            101 	.globl _send
                            102 	.globl _getkey
                            103 	.globl _delay
                            104 ;--------------------------------------------------------
                            105 ; special function registers
                            106 ;--------------------------------------------------------
                            107 	.area RSEG    (DATA)
                    0080    108 _P0	=	0x0080
                    0090    109 _P1	=	0x0090
                    00A0    110 _P2	=	0x00a0
                    00B0    111 _P3	=	0x00b0
                    00D0    112 _PSW	=	0x00d0
                    00E0    113 _ACC	=	0x00e0
                    00F0    114 _B	=	0x00f0
                    0081    115 _SP	=	0x0081
                    0082    116 _DPL	=	0x0082
                    0083    117 _DPH	=	0x0083
                    0087    118 _PCON	=	0x0087
                    0088    119 _TCON	=	0x0088
                    0089    120 _TMOD	=	0x0089
                    008A    121 _TL0	=	0x008a
                    008B    122 _TL1	=	0x008b
                    008C    123 _TH0	=	0x008c
                    008D    124 _TH1	=	0x008d
                    008E    125 _AUXR	=	0x008e
                    00A8    126 _IE	=	0x00a8
                    00B8    127 _IP	=	0x00b8
                    0098    128 _SCON	=	0x0098
                    0099    129 _SBUF	=	0x0099
                    00C8    130 _T2CON	=	0x00c8
                    00CB    131 _RCAP2H	=	0x00cb
                    00CA    132 _RCAP2L	=	0x00ca
                            133 ;--------------------------------------------------------
                            134 ; special function bits 
                            135 ;--------------------------------------------------------
                            136 	.area RSEG    (DATA)
                    00D7    137 _CY	=	0x00d7
                    00D6    138 _AC	=	0x00d6
                    00D5    139 _F0	=	0x00d5
                    00D4    140 _RS1	=	0x00d4
                    00D3    141 _RS0	=	0x00d3
                    00D2    142 _OV	=	0x00d2
                    00D0    143 _P	=	0x00d0
                    008F    144 _TF1	=	0x008f
                    008E    145 _TR1	=	0x008e
                    008D    146 _TF0	=	0x008d
                    008C    147 _TR0	=	0x008c
                    008B    148 _IE1	=	0x008b
                    008A    149 _IT1	=	0x008a
                    0089    150 _IE0	=	0x0089
                    0088    151 _IT0	=	0x0088
                    00AF    152 _EA	=	0x00af
                    00AC    153 _ES	=	0x00ac
                    00AB    154 _ET1	=	0x00ab
                    00AA    155 _EX1	=	0x00aa
                    00A9    156 _ET0	=	0x00a9
                    00A8    157 _EX0	=	0x00a8
                    00BC    158 _PS	=	0x00bc
                    00BB    159 _PT1	=	0x00bb
                    00BA    160 _PX1	=	0x00ba
                    00B9    161 _PT0	=	0x00b9
                    00B8    162 _PX0	=	0x00b8
                    00B7    163 _RD	=	0x00b7
                    00B6    164 _WR	=	0x00b6
                    00B5    165 _T1	=	0x00b5
                    00B4    166 _T0	=	0x00b4
                    00B3    167 _INT1	=	0x00b3
                    00B2    168 _INT0	=	0x00b2
                    00B1    169 _TXD	=	0x00b1
                    00B0    170 _RXD	=	0x00b0
                    0090    171 _P1_0	=	0x0090
                    0091    172 _P1_1	=	0x0091
                    0092    173 _P1_2	=	0x0092
                    0093    174 _P1_3	=	0x0093
                    0094    175 _P1_4	=	0x0094
                    0095    176 _P1_5	=	0x0095
                    0096    177 _P1_6	=	0x0096
                    0097    178 _P1_7	=	0x0097
                    009F    179 _SM0	=	0x009f
                    009E    180 _SM1	=	0x009e
                    009D    181 _SM2	=	0x009d
                    009C    182 _REN	=	0x009c
                    009B    183 _TB8	=	0x009b
                    009A    184 _RB8	=	0x009a
                    0099    185 _TI	=	0x0099
                    0098    186 _RI	=	0x0098
                    00C8    187 _T2CON_0	=	0x00c8
                    00C9    188 _T2CON_1	=	0x00c9
                    00CA    189 _T2CON_2	=	0x00ca
                    00CB    190 _T2CON_3	=	0x00cb
                    00CC    191 _T2CON_4	=	0x00cc
                    00CD    192 _T2CON_5	=	0x00cd
                    00CE    193 _T2CON_6	=	0x00ce
                    00CF    194 _T2CON_7	=	0x00cf
                            195 ;--------------------------------------------------------
                            196 ; overlayable register banks 
                            197 ;--------------------------------------------------------
                            198 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     199 	.ds 8
                            200 ;--------------------------------------------------------
                            201 ; internal ram data
                            202 ;--------------------------------------------------------
                            203 	.area DSEG    (DATA)
                            204 ;--------------------------------------------------------
                            205 ; overlayable items in internal ram 
                            206 ;--------------------------------------------------------
                            207 	.area	OSEG    (OVR,DATA)
                            208 	.area	OSEG    (OVR,DATA)
                            209 	.area	OSEG    (OVR,DATA)
                            210 ;--------------------------------------------------------
                            211 ; Stack segment in internal ram 
                            212 ;--------------------------------------------------------
                            213 	.area	SSEG	(DATA)
   0008                     214 __start__stack:
   0008                     215 	.ds	1
                            216 
                            217 ;--------------------------------------------------------
                            218 ; indirectly addressable internal ram data
                            219 ;--------------------------------------------------------
                            220 	.area ISEG    (DATA)
                            221 ;--------------------------------------------------------
                            222 ; bit data
                            223 ;--------------------------------------------------------
                            224 	.area BSEG    (BIT)
                            225 ;--------------------------------------------------------
                            226 ; paged external ram data
                            227 ;--------------------------------------------------------
                            228 	.area PSEG    (PAG,XDATA)
                            229 ;--------------------------------------------------------
                            230 ; external ram data
                            231 ;--------------------------------------------------------
                            232 	.area XSEG    (XDATA)
                            233 ;--------------------------------------------------------
                            234 ; external initialized ram data
                            235 ;--------------------------------------------------------
                            236 	.area XISEG   (XDATA)
                            237 	.area CSEG    (CODE)
                            238 	.area GSINIT0 (CODE)
                            239 	.area GSINIT1 (CODE)
                            240 	.area GSINIT2 (CODE)
                            241 	.area GSINIT3 (CODE)
                            242 	.area GSINIT4 (CODE)
                            243 	.area GSINIT5 (CODE)
                            244 ;--------------------------------------------------------
                            245 ; interrupt vector 
                            246 ;--------------------------------------------------------
                            247 	.area CSEG    (CODE)
   0000                     248 __interrupt_vect:
   0000 02 02 3B            249 	ljmp	__sdcc_gsinit_startup
                            250 ;--------------------------------------------------------
                            251 ; global & static initialisations
                            252 ;--------------------------------------------------------
                            253 	.area CSEG    (CODE)
                            254 	.area GSINIT  (CODE)
                            255 	.area GSFINAL (CODE)
                            256 	.area GSINIT  (CODE)
                            257 	.globl __sdcc_gsinit_startup
                            258 	.globl __sdcc_program_startup
                            259 	.globl __start__stack
                            260 	.globl __mcs51_genXINIT
                            261 	.globl __mcs51_genXRAMCLEAR
                            262 	.globl __mcs51_genRAMCLEAR
                            263 	.area GSFINAL (CODE)
   0294 02 00 03            264 	ljmp	__sdcc_program_startup
                            265 ;--------------------------------------------------------
                            266 ; Home
                            267 ;--------------------------------------------------------
                            268 	.area HOME    (CODE)
                            269 	.area CSEG    (CODE)
                            270 ;--------------------------------------------------------
                            271 ; code
                            272 ;--------------------------------------------------------
                            273 	.area CSEG    (CODE)
   0003                     274 __sdcc_program_startup:
   0003 12 00 08            275 	lcall	_main
                            276 ;	return from main will lock up
   0006 80 FE               277 	sjmp .
                            278 ;------------------------------------------------------------
                            279 ;Allocation info for local variables in function 'main'
                            280 ;------------------------------------------------------------
                            281 ;x                         Allocated to registers r2 r3 
                            282 ;y                         Allocated to registers r2 r3 
                            283 ;------------------------------------------------------------
                            284 ;c:/sdcc/exam/test3n.c:20: void main( )
                            285 ;	-----------------------------------------
                            286 ;	 function main
                            287 ;	-----------------------------------------
   0008                     288 _main:
                    0002    289 	ar2 = 0x02
                    0003    290 	ar3 = 0x03
                    0004    291 	ar4 = 0x04
                    0005    292 	ar5 = 0x05
                    0006    293 	ar6 = 0x06
                    0007    294 	ar7 = 0x07
                    0000    295 	ar0 = 0x00
                    0001    296 	ar1 = 0x01
                            297 ;c:/sdcc/exam/test3n.c:24: SCON=0x50;  //SCON暫存器01010000 
                            298 ;     genAssign
   0008 75 98 50            299 	mov	_SCON,#0x50
                            300 ;c:/sdcc/exam/test3n.c:25: TMOD=0x20;  //上次的，設定timer1為mode2 
                            301 ;     genAssign
   000B 75 89 20            302 	mov	_TMOD,#0x20
                            303 ;c:/sdcc/exam/test3n.c:26: TH1=0xe6;   //講義上有說，用來計算baud
                            304 ;     genAssign
   000E 75 8D E6            305 	mov	_TH1,#0xE6
                            306 ;c:/sdcc/exam/test3n.c:27: TR1=1;      //timer1啟動 
                            307 ;     genAssign
   0011 D2 8E               308 	setb	_TR1
                            309 ;c:/sdcc/exam/test3n.c:29: for(y=0;y<5;y++)        //開始時先送出"Hello world" 
                            310 ;     genAssign
   0013 7A 00               311 	mov	r2,#0x00
   0015 7B 00               312 	mov	r3,#0x00
   0017                     313 00107$:
                            314 ;     genCmpLt
                            315 ;     genCmp
   0017 C3                  316 	clr	c
   0018 EA                  317 	mov	a,r2
   0019 94 05               318 	subb	a,#0x05
   001B EB                  319 	mov	a,r3
   001C 64 80               320 	xrl	a,#0x80
   001E 94 80               321 	subb	a,#0x80
                            322 ;     genIfxJump
                            323 ;	Peephole 108	removed ljmp by inverse jump logic
   0020 50 21               324 	jnc	00105$
   0022                     325 00118$:
                            326 ;c:/sdcc/exam/test3n.c:30: send(startmsg[y]);  //ps.要送資料要以char送出 
                            327 ;     genPlus
                            328 ;	Peephole 236.g	used r2 instead of ar2
   0022 EA                  329 	mov	a,r2
   0023 24 30               330 	add	a,#_startmsg
   0025 F5 82               331 	mov	dpl,a
                            332 ;	Peephole 236.g	used r3 instead of ar3
   0027 EB                  333 	mov	a,r3
   0028 34 02               334 	addc	a,#(_startmsg >> 8)
   002A F5 83               335 	mov	dph,a
                            336 ;     genPointerGet
                            337 ;     genCodePointerGet
                            338 ;	Peephole 181	changed mov to clr
   002C E4                  339 	clr	a
   002D 93                  340 	movc	a,@a+dptr
                            341 ;     genCall
                            342 ;	Peephole 244.c	loading dpl from a instead of r4
   002E FC                  343 	mov	r4,a
   002F F5 82               344 	mov	dpl,a
   0031 C0 02               345 	push	ar2
   0033 C0 03               346 	push	ar3
   0035 12 00 72            347 	lcall	_send
   0038 D0 03               348 	pop	ar3
   003A D0 02               349 	pop	ar2
                            350 ;c:/sdcc/exam/test3n.c:29: for(y=0;y<5;y++)        //開始時先送出"Hello world" 
                            351 ;     genPlus
                            352 ;     genPlusIncr
                            353 ;	tail increment optimized
   003C 0A                  354 	inc	r2
   003D BA 00 D7            355 	cjne	r2,#0x00,00107$
   0040 0B                  356 	inc	r3
                            357 ;c:/sdcc/exam/test3n.c:31: while(1)
                            358 ;	Peephole 112.b	changed ljmp to sjmp
   0041 80 D4               359 	sjmp	00107$
   0043                     360 00105$:
                            361 ;c:/sdcc/exam/test3n.c:33: x = getkey();       //將按下的按鈕的int存進來 
                            362 ;     genCall
   0043 12 00 80            363 	lcall	_getkey
   0046 AA 82               364 	mov	r2,dpl
                            365 ;c:/sdcc/exam/test3n.c:34: if( x>=0 && x<=15)
                            366 ;     genCmpLt
                            367 ;     genCmp
                            368 ;	peephole 177.g	optimized mov sequence
   0048 E5 83               369 	mov	a,dph
   004A FB                  370 	mov	r3,a
                            371 ;     genIfxJump
                            372 ;	Peephole 112.a	removed ljmp by inverse jump logic
   004B 20 E7 F5            373 	jb	acc.7,00105$
   004E                     374 00119$:
                            375 ;     genCmpGt
                            376 ;     genCmp
   004E C3                  377 	clr	c
   004F 74 0F               378 	mov	a,#0x0F
   0051 9A                  379 	subb	a,r2
                            380 ;	Peephole 159	avoided xrl during execution
   0052 74 80               381 	mov	a,#(0x00 ^ 0x80)
   0054 8B F0               382 	mov	b,r3
   0056 63 F0 80            383 	xrl	b,#0x80
   0059 95 F0               384 	subb	a,b
                            385 ;     genIfxJump
                            386 ;	Peephole 112.b	changed ljmp to sjmp
                            387 ;	Peephole 160	removed sjmp by inverse jump logic
   005B 40 E6               388 	jc	00105$
   005D                     389 00120$:
                            390 ;c:/sdcc/exam/test3n.c:35: send(msg[x]);   //轉換為char後送出到PC 
                            391 ;     genPlus
                            392 ;	Peephole 236.g	used r2 instead of ar2
   005D EA                  393 	mov	a,r2
   005E 24 1F               394 	add	a,#_msg
   0060 F5 82               395 	mov	dpl,a
                            396 ;	Peephole 236.g	used r3 instead of ar3
   0062 EB                  397 	mov	a,r3
   0063 34 02               398 	addc	a,#(_msg >> 8)
   0065 F5 83               399 	mov	dph,a
                            400 ;     genPointerGet
                            401 ;     genCodePointerGet
                            402 ;	Peephole 181	changed mov to clr
   0067 E4                  403 	clr	a
   0068 93                  404 	movc	a,@a+dptr
                            405 ;     genCall
                            406 ;	Peephole 244.c	loading dpl from a instead of r2
   0069 FA                  407 	mov	r2,a
   006A F5 82               408 	mov	dpl,a
   006C 12 00 72            409 	lcall	_send
                            410 ;	Peephole 112.b	changed ljmp to sjmp
   006F 80 D2               411 	sjmp	00105$
   0071                     412 00111$:
   0071 22                  413 	ret
                            414 ;------------------------------------------------------------
                            415 ;Allocation info for local variables in function 'send'
                            416 ;------------------------------------------------------------
                            417 ;ch                        Allocated to registers 
                            418 ;------------------------------------------------------------
                            419 ;c:/sdcc/exam/test3n.c:38: void send(char ch)
                            420 ;	-----------------------------------------
                            421 ;	 function send
                            422 ;	-----------------------------------------
   0072                     423 _send:
                            424 ;     genReceive
   0072 85 82 99            425 	mov	_SBUF,dpl
                            426 ;c:/sdcc/exam/test3n.c:41: while(TI == 0)  //若TI旗標為0(資料正在傳送) 
   0075                     427 00101$:
                            428 ;     genNot
   0075 A2 99               429 	mov	c,_TI
   0077 B3                  430 	cpl	c
   0078 E4                  431 	clr	a
   0079 33                  432 	rlc	a
                            433 ;     genIfx
                            434 ;	Peephole 105	removed redundant mov
   007A FA                  435 	mov	r2,a
                            436 ;     genIfxJump
                            437 ;	Peephole 109	removed ljmp by inverse jump logic
   007B 70 F8               438 	jnz	00101$
   007D                     439 00108$:
                            440 ;c:/sdcc/exam/test3n.c:43: TI=0;           //要用軟體方式把旗標改回0 
                            441 ;     genAssign
   007D C2 99               442 	clr	_TI
   007F                     443 00104$:
   007F 22                  444 	ret
                            445 ;------------------------------------------------------------
                            446 ;Allocation info for local variables in function 'getkey'
                            447 ;------------------------------------------------------------
                            448 ;i                         Allocated to registers r4 r5 
                            449 ;k                         Allocated to registers r2 r3 
                            450 ;------------------------------------------------------------
                            451 ;c:/sdcc/exam/test3n.c:46: int getkey()
                            452 ;	-----------------------------------------
                            453 ;	 function getkey
                            454 ;	-----------------------------------------
   0080                     455 _getkey:
                            456 ;c:/sdcc/exam/test3n.c:49: int k=-1;  //判斷是否有按下按鍵 和 按下了什麼按鍵用 
                            457 ;     genAssign
   0080 7A FF               458 	mov	r2,#0xFF
   0082 7B FF               459 	mov	r3,#0xFF
                            460 ;c:/sdcc/exam/test3n.c:50: while(1)
                            461 ;c:/sdcc/exam/test3n.c:52: for(i=0;i<4;i++)
   0084                     462 00139$:
                            463 ;     genAssign
   0084 7C 00               464 	mov	r4,#0x00
   0086 7D 00               465 	mov	r5,#0x00
   0088                     466 00116$:
                            467 ;     genCmpLt
                            468 ;     genCmp
   0088 C3                  469 	clr	c
   0089 EC                  470 	mov	a,r4
   008A 94 04               471 	subb	a,#0x04
   008C ED                  472 	mov	a,r5
   008D 64 80               473 	xrl	a,#0x80
   008F 94 80               474 	subb	a,#0x80
                            475 ;     genIfxJump
   0091 40 03               476 	jc	00143$
   0093 02 01 A7            477 	ljmp	00119$
   0096                     478 00143$:
                            479 ;c:/sdcc/exam/test3n.c:54: P1=ser[i];      //迴圈定P1為11111110 11111101 11111011 11110111 
                            480 ;     genPlus
                            481 ;	Peephole 236.g	used r4 instead of ar4
   0096 EC                  482 	mov	a,r4
   0097 24 EB               483 	add	a,#_ser
   0099 F5 82               484 	mov	dpl,a
                            485 ;	Peephole 236.g	used r5 instead of ar5
   009B ED                  486 	mov	a,r5
   009C 34 01               487 	addc	a,#(_ser >> 8)
   009E F5 83               488 	mov	dph,a
                            489 ;     genPointerGet
                            490 ;     genCodePointerGet
                            491 ;	Peephole 181	changed mov to clr
   00A0 E4                  492 	clr	a
   00A1 93                  493 	movc	a,@a+dptr
   00A2 FE                  494 	mov	r6,a
                            495 ;     genAssign
   00A3 8E 90               496 	mov	_P1,r6
                            497 ;c:/sdcc/exam/test3n.c:55: if(P1!=ser[i])  //讀取P1，若P1不是剛剛定的那樣->有按下某個按鍵，加以列(行)判斷按下什麼按鍵 
                            498 ;     genAssign
                            499 ;     genCmpEq
                            500 ;	peephole 177.g	optimized mov sequence
   00A5 E5 90               501 	mov	a,_P1
   00A7 FF                  502 	mov	r7,a
   00A8 B5 06 03            503 	cjne	a,ar6,00144$
   00AB 02 01 99            504 	ljmp	00113$
   00AE                     505 00144$:
                            506 ;c:/sdcc/exam/test3n.c:57: if(P1==keymsg[i]) 
                            507 ;     genPlus
                            508 ;	Peephole 236.g	used r4 instead of ar4
   00AE EC                  509 	mov	a,r4
   00AF 24 0F               510 	add	a,#_keymsg
   00B1 F5 82               511 	mov	dpl,a
                            512 ;	Peephole 236.g	used r5 instead of ar5
   00B3 ED                  513 	mov	a,r5
   00B4 34 02               514 	addc	a,#(_keymsg >> 8)
   00B6 F5 83               515 	mov	dph,a
                            516 ;     genPointerGet
                            517 ;     genCodePointerGet
                            518 ;	Peephole 181	changed mov to clr
   00B8 E4                  519 	clr	a
   00B9 93                  520 	movc	a,@a+dptr
   00BA FE                  521 	mov	r6,a
                            522 ;     genAssign
                            523 ;     genCmpEq
                            524 ;	peephole 177.g	optimized mov sequence
   00BB E5 90               525 	mov	a,_P1
   00BD FF                  526 	mov	r7,a
                            527 ;	Peephole 112.b	changed ljmp to sjmp
                            528 ;	Peephole 199	optimized misc jump sequence
   00BE B5 06 1D            529 	cjne	a,ar6,00110$
                            530 ;00145$:
                            531 ;	Peephole 200	removed redundant sjmp
   00C1                     532 00146$:
                            533 ;c:/sdcc/exam/test3n.c:58: k=key[i];
                            534 ;     genLeftShift
                            535 ;     genLeftShiftLiteral
                            536 ;     genlshTwo
   00C1 8C 06               537 	mov	ar6,r4
   00C3 ED                  538 	mov	a,r5
   00C4 CE                  539 	xch	a,r6
   00C5 25 E0               540 	add	a,acc
   00C7 CE                  541 	xch	a,r6
   00C8 33                  542 	rlc	a
   00C9 FF                  543 	mov	r7,a
                            544 ;     genPlus
                            545 ;	Peephole 236.g	used r6 instead of ar6
   00CA EE                  546 	mov	a,r6
   00CB 24 EF               547 	add	a,#_key
   00CD F5 82               548 	mov	dpl,a
                            549 ;	Peephole 236.g	used r7 instead of ar7
   00CF EF                  550 	mov	a,r7
   00D0 34 01               551 	addc	a,#(_key >> 8)
   00D2 F5 83               552 	mov	dph,a
                            553 ;     genPointerGet
                            554 ;     genCodePointerGet
                            555 ;	Peephole 181	changed mov to clr
   00D4 E4                  556 	clr	a
   00D5 93                  557 	movc	a,@a+dptr
   00D6 FA                  558 	mov	r2,a
   00D7 74 01               559 	mov	a,#0x01
   00D9 93                  560 	movc	a,@a+dptr
   00DA FB                  561 	mov	r3,a
   00DB 02 01 99            562 	ljmp	00113$
   00DE                     563 00110$:
                            564 ;c:/sdcc/exam/test3n.c:59: else if(P1==keymsg[i+4]) 
                            565 ;     genCast
   00DE 8C 06               566 	mov	ar6,r4
                            567 ;     genPlus
                            568 ;     genPlusIncr
   00E0 74 04               569 	mov	a,#0x04
                            570 ;	Peephole 236.a	used r6 instead of ar6
   00E2 2E                  571 	add	a,r6
                            572 ;     genPlus
                            573 ;	Peephole 240	use clr instead of addc a,#0
                            574 ;     genPointerGet
                            575 ;     genCodePointerGet
                            576 ;	Peephole 181	changed mov to clr
                            577 ;	Peephole 186.d	optimized movc sequence
   00E3 90 02 0F            578 	mov	dptr,#_keymsg
   00E6 93                  579 	movc	a,@a+dptr
   00E7 FF                  580 	mov	r7,a
                            581 ;     genAssign
                            582 ;     genCmpEq
                            583 ;	peephole 177.g	optimized mov sequence
   00E8 E5 90               584 	mov	a,_P1
   00EA F8                  585 	mov	r0,a
                            586 ;	Peephole 112.b	changed ljmp to sjmp
                            587 ;	Peephole 199	optimized misc jump sequence
   00EB B5 07 31            588 	cjne	a,ar7,00107$
                            589 ;00147$:
                            590 ;	Peephole 200	removed redundant sjmp
   00EE                     591 00148$:
                            592 ;c:/sdcc/exam/test3n.c:60: k=key[i+4];
                            593 ;     genPlus
                            594 ;     genPlusIncr
   00EE 74 04               595 	mov	a,#0x04
                            596 ;	Peephole 236.a	used r6 instead of ar6
   00F0 2E                  597 	add	a,r6
                            598 ;     genMult
                            599 ;     genMultOneByte
   00F1 C2 D5               600 	clr	F0
   00F3 75 F0 02            601 	mov	b,#0x02
   00F6 30 E7 04            602 	jnb	acc.7,00149$
   00F9 B2 D5               603 	cpl	F0
   00FB F4                  604 	cpl	a
   00FC 04                  605 	inc	a
   00FD                     606 00149$:
   00FD A4                  607 	mul	ab
   00FE 30 D5 0A            608 	jnb	F0,00150$
   0101 F4                  609 	cpl	a
   0102 24 01               610 	add	a,#1
   0104 C5 F0               611 	xch	a,b
   0106 F4                  612 	cpl	a
   0107 34 00               613 	addc	a,#0
   0109 C5 F0               614 	xch	a,b
   010B                     615 00150$:
                            616 ;     genPlus
   010B 24 EF               617 	add	a,#_key
   010D F5 82               618 	mov	dpl,a
   010F 74 01               619 	mov	a,#(_key >> 8)
   0111 35 F0               620 	addc	a,b
   0113 F5 83               621 	mov	dph,a
                            622 ;     genPointerGet
                            623 ;     genCodePointerGet
                            624 ;	Peephole 181	changed mov to clr
   0115 E4                  625 	clr	a
   0116 93                  626 	movc	a,@a+dptr
   0117 FA                  627 	mov	r2,a
   0118 74 01               628 	mov	a,#0x01
   011A 93                  629 	movc	a,@a+dptr
   011B FB                  630 	mov	r3,a
   011C 02 01 99            631 	ljmp	00113$
   011F                     632 00107$:
                            633 ;c:/sdcc/exam/test3n.c:61: else if(P1==keymsg[i+8]) 
                            634 ;     genPlus
   011F 74 08               635 	mov	a,#0x08
                            636 ;	Peephole 236.a	used r6 instead of ar6
   0121 2E                  637 	add	a,r6
                            638 ;     genPlus
                            639 ;	Peephole 240	use clr instead of addc a,#0
                            640 ;     genPointerGet
                            641 ;     genCodePointerGet
                            642 ;	Peephole 181	changed mov to clr
                            643 ;	Peephole 186.d	optimized movc sequence
   0122 90 02 0F            644 	mov	dptr,#_keymsg
   0125 93                  645 	movc	a,@a+dptr
   0126 FF                  646 	mov	r7,a
                            647 ;     genAssign
                            648 ;     genCmpEq
                            649 ;	peephole 177.g	optimized mov sequence
   0127 E5 90               650 	mov	a,_P1
   0129 F8                  651 	mov	r0,a
                            652 ;	Peephole 112.b	changed ljmp to sjmp
                            653 ;	Peephole 199	optimized misc jump sequence
   012A B5 07 30            654 	cjne	a,ar7,00104$
                            655 ;00151$:
                            656 ;	Peephole 200	removed redundant sjmp
   012D                     657 00152$:
                            658 ;c:/sdcc/exam/test3n.c:62: k=key[i+8];
                            659 ;     genPlus
   012D 74 08               660 	mov	a,#0x08
                            661 ;	Peephole 236.a	used r6 instead of ar6
   012F 2E                  662 	add	a,r6
                            663 ;     genMult
                            664 ;     genMultOneByte
   0130 C2 D5               665 	clr	F0
   0132 75 F0 02            666 	mov	b,#0x02
   0135 30 E7 04            667 	jnb	acc.7,00153$
   0138 B2 D5               668 	cpl	F0
   013A F4                  669 	cpl	a
   013B 04                  670 	inc	a
   013C                     671 00153$:
   013C A4                  672 	mul	ab
   013D 30 D5 0A            673 	jnb	F0,00154$
   0140 F4                  674 	cpl	a
   0141 24 01               675 	add	a,#1
   0143 C5 F0               676 	xch	a,b
   0145 F4                  677 	cpl	a
   0146 34 00               678 	addc	a,#0
   0148 C5 F0               679 	xch	a,b
   014A                     680 00154$:
                            681 ;     genPlus
   014A 24 EF               682 	add	a,#_key
   014C F5 82               683 	mov	dpl,a
   014E 74 01               684 	mov	a,#(_key >> 8)
   0150 35 F0               685 	addc	a,b
   0152 F5 83               686 	mov	dph,a
                            687 ;     genPointerGet
                            688 ;     genCodePointerGet
                            689 ;	Peephole 181	changed mov to clr
   0154 E4                  690 	clr	a
   0155 93                  691 	movc	a,@a+dptr
   0156 FA                  692 	mov	r2,a
   0157 74 01               693 	mov	a,#0x01
   0159 93                  694 	movc	a,@a+dptr
   015A FB                  695 	mov	r3,a
                            696 ;	Peephole 112.b	changed ljmp to sjmp
   015B 80 3C               697 	sjmp	00113$
   015D                     698 00104$:
                            699 ;c:/sdcc/exam/test3n.c:63: else if(P1==keymsg[i+12]) 
                            700 ;     genPlus
   015D 74 0C               701 	mov	a,#0x0C
                            702 ;	Peephole 236.a	used r6 instead of ar6
   015F 2E                  703 	add	a,r6
                            704 ;     genPlus
                            705 ;	Peephole 240	use clr instead of addc a,#0
                            706 ;     genPointerGet
                            707 ;     genCodePointerGet
                            708 ;	Peephole 181	changed mov to clr
                            709 ;	Peephole 186.d	optimized movc sequence
   0160 90 02 0F            710 	mov	dptr,#_keymsg
   0163 93                  711 	movc	a,@a+dptr
   0164 FF                  712 	mov	r7,a
                            713 ;     genAssign
                            714 ;     genCmpEq
                            715 ;	peephole 177.g	optimized mov sequence
   0165 E5 90               716 	mov	a,_P1
   0167 F8                  717 	mov	r0,a
                            718 ;	Peephole 112.b	changed ljmp to sjmp
                            719 ;	Peephole 199	optimized misc jump sequence
   0168 B5 07 2E            720 	cjne	a,ar7,00113$
                            721 ;00155$:
                            722 ;	Peephole 200	removed redundant sjmp
   016B                     723 00156$:
                            724 ;c:/sdcc/exam/test3n.c:64: k=key[i+12];
                            725 ;     genPlus
   016B 74 0C               726 	mov	a,#0x0C
                            727 ;	Peephole 236.a	used r6 instead of ar6
   016D 2E                  728 	add	a,r6
                            729 ;     genMult
                            730 ;     genMultOneByte
   016E C2 D5               731 	clr	F0
   0170 75 F0 02            732 	mov	b,#0x02
   0173 30 E7 04            733 	jnb	acc.7,00157$
   0176 B2 D5               734 	cpl	F0
   0178 F4                  735 	cpl	a
   0179 04                  736 	inc	a
   017A                     737 00157$:
   017A A4                  738 	mul	ab
   017B 30 D5 0A            739 	jnb	F0,00158$
   017E F4                  740 	cpl	a
   017F 24 01               741 	add	a,#1
   0181 C5 F0               742 	xch	a,b
   0183 F4                  743 	cpl	a
   0184 34 00               744 	addc	a,#0
   0186 C5 F0               745 	xch	a,b
   0188                     746 00158$:
                            747 ;     genPlus
   0188 24 EF               748 	add	a,#_key
   018A F5 82               749 	mov	dpl,a
   018C 74 01               750 	mov	a,#(_key >> 8)
   018E 35 F0               751 	addc	a,b
   0190 F5 83               752 	mov	dph,a
                            753 ;     genPointerGet
                            754 ;     genCodePointerGet
                            755 ;	Peephole 181	changed mov to clr
   0192 E4                  756 	clr	a
   0193 93                  757 	movc	a,@a+dptr
   0194 FA                  758 	mov	r2,a
   0195 74 01               759 	mov	a,#0x01
   0197 93                  760 	movc	a,@a+dptr
   0198 FB                  761 	mov	r3,a
   0199                     762 00113$:
                            763 ;c:/sdcc/exam/test3n.c:66: if (k!=-1) break ;  //若有按下按鍵，則k會變為對應到的int，不會是-1，break for迴圈 
                            764 ;     genCmpEq
                            765 ;	Peephole 112.b	changed ljmp to sjmp
                            766 ;	Peephole 198	optimized misc jump sequence
   0199 BA FF 0B            767 	cjne	r2,#0xFF,00119$
   019C BB FF 08            768 	cjne	r3,#0xFF,00119$
                            769 ;00159$:
                            770 ;	Peephole 200	removed redundant sjmp
   019F                     771 00160$:
                            772 ;c:/sdcc/exam/test3n.c:52: for(i=0;i<4;i++)
                            773 ;     genPlus
                            774 ;     genPlusIncr
   019F 0C                  775 	inc	r4
   01A0 BC 00 01            776 	cjne	r4,#0x00,00161$
   01A3 0D                  777 	inc	r5
   01A4                     778 00161$:
   01A4 02 00 88            779 	ljmp	00116$
   01A7                     780 00119$:
                            781 ;c:/sdcc/exam/test3n.c:68: if(k!=-1)               //若有按下按鍵，準備回傳值 
                            782 ;     genCmpEq
   01A7 BA FF 06            783 	cjne	r2,#0xFF,00162$
   01AA BB FF 03            784 	cjne	r3,#0xFF,00162$
   01AD 02 00 84            785 	ljmp	00139$
   01B0                     786 00162$:
                            787 ;c:/sdcc/exam/test3n.c:69: while(1)
                            788 ;     genPlus
                            789 ;	Peephole 236.g	used r4 instead of ar4
   01B0 EC                  790 	mov	a,r4
   01B1 24 EB               791 	add	a,#_ser
   01B3 FC                  792 	mov	r4,a
                            793 ;	Peephole 236.g	used r5 instead of ar5
   01B4 ED                  794 	mov	a,r5
   01B5 34 01               795 	addc	a,#(_ser >> 8)
   01B7 FD                  796 	mov	r5,a
   01B8                     797 00123$:
                            798 ;c:/sdcc/exam/test3n.c:71: P1=ser[i];          //將P1再定回為原來判斷的樣子 
                            799 ;     genPointerGet
                            800 ;     genCodePointerGet
   01B8 8C 82               801 	mov	dpl,r4
   01BA 8D 83               802 	mov	dph,r5
                            803 ;	Peephole 181	changed mov to clr
   01BC E4                  804 	clr	a
   01BD 93                  805 	movc	a,@a+dptr
   01BE FE                  806 	mov	r6,a
                            807 ;     genAssign
   01BF 8E 90               808 	mov	_P1,r6
                            809 ;c:/sdcc/exam/test3n.c:72: if(P1==ser[i])      //若P1是原來判斷的樣子(用來保證按鍵被放開了) 
                            810 ;     genAssign
                            811 ;     genCmpEq
                            812 ;	peephole 177.g	optimized mov sequence
   01C1 E5 90               813 	mov	a,_P1
   01C3 FF                  814 	mov	r7,a
                            815 ;	Peephole 112.b	changed ljmp to sjmp
                            816 ;	Peephole 199	optimized misc jump sequence
   01C4 B5 06 F1            817 	cjne	a,ar6,00123$
                            818 ;00163$:
                            819 ;	Peephole 200	removed redundant sjmp
   01C7                     820 00164$:
                            821 ;c:/sdcc/exam/test3n.c:73: return k;       //回傳int值k 
                            822 ;     genRet
   01C7 8A 82               823 	mov	dpl,r2
   01C9 8B 83               824 	mov	dph,r3
   01CB                     825 00130$:
   01CB 22                  826 	ret
                            827 ;------------------------------------------------------------
                            828 ;Allocation info for local variables in function 'delay'
                            829 ;------------------------------------------------------------
                            830 ;t                         Allocated to registers r2 r3 
                            831 ;x                         Allocated to registers r4 r5 
                            832 ;------------------------------------------------------------
                            833 ;c:/sdcc/exam/test3n.c:78: void delay (int t)
                            834 ;	-----------------------------------------
                            835 ;	 function delay
                            836 ;	-----------------------------------------
   01CC                     837 _delay:
                            838 ;     genReceive
   01CC AA 82               839 	mov	r2,dpl
   01CE AB 83               840 	mov	r3,dph
                            841 ;c:/sdcc/exam/test3n.c:81: for (x=0;x<t;x++)
                            842 ;     genAssign
   01D0 7C 00               843 	mov	r4,#0x00
   01D2 7D 00               844 	mov	r5,#0x00
   01D4                     845 00101$:
                            846 ;     genCmpLt
                            847 ;     genCmp
   01D4 C3                  848 	clr	c
   01D5 EC                  849 	mov	a,r4
   01D6 9A                  850 	subb	a,r2
   01D7 ED                  851 	mov	a,r5
   01D8 64 80               852 	xrl	a,#0x80
   01DA 8B F0               853 	mov	b,r3
   01DC 63 F0 80            854 	xrl	b,#0x80
   01DF 95 F0               855 	subb	a,b
                            856 ;     genIfxJump
                            857 ;	Peephole 108	removed ljmp by inverse jump logic
   01E1 50 07               858 	jnc	00105$
   01E3                     859 00109$:
                            860 ;     genPlus
                            861 ;     genPlusIncr
                            862 ;	tail increment optimized
   01E3 0C                  863 	inc	r4
   01E4 BC 00 ED            864 	cjne	r4,#0x00,00101$
   01E7 0D                  865 	inc	r5
                            866 ;	Peephole 112.b	changed ljmp to sjmp
   01E8 80 EA               867 	sjmp	00101$
   01EA                     868 00105$:
   01EA 22                  869 	ret
                            870 	.area CSEG    (CODE)
   01EB                     871 _ser:
   01EB FE                  872 	.db #0xFE
   01EC FD                  873 	.db #0xFD
   01ED FB                  874 	.db #0xFB
   01EE F7                  875 	.db #0xF7
   01EF                     876 _key:
   01EF 01 00               877 	.byte #0x01,#0x00
   01F1 02 00               878 	.byte #0x02,#0x00
   01F3 03 00               879 	.byte #0x03,#0x00
   01F5 0C 00               880 	.byte #0x0C,#0x00
   01F7 04 00               881 	.byte #0x04,#0x00
   01F9 05 00               882 	.byte #0x05,#0x00
   01FB 06 00               883 	.byte #0x06,#0x00
   01FD 0D 00               884 	.byte #0x0D,#0x00
   01FF 07 00               885 	.byte #0x07,#0x00
   0201 08 00               886 	.byte #0x08,#0x00
   0203 09 00               887 	.byte #0x09,#0x00
   0205 0E 00               888 	.byte #0x0E,#0x00
   0207 0A 00               889 	.byte #0x0A,#0x00
   0209 00 00               890 	.byte #0x00,#0x00
   020B 0B 00               891 	.byte #0x0B,#0x00
   020D 0F 00               892 	.byte #0x0F,#0x00
   020F                     893 _keymsg:
   020F EE                  894 	.db #0xEE
   0210 ED                  895 	.db #0xED
   0211 EB                  896 	.db #0xEB
   0212 E7                  897 	.db #0xE7
   0213 DE                  898 	.db #0xDE
   0214 DD                  899 	.db #0xDD
   0215 DB                  900 	.db #0xDB
   0216 D7                  901 	.db #0xD7
   0217 BE                  902 	.db #0xBE
   0218 BD                  903 	.db #0xBD
   0219 BB                  904 	.db #0xBB
   021A B7                  905 	.db #0xB7
   021B 7E                  906 	.db #0x7E
   021C 7D                  907 	.db #0x7D
   021D 7B                  908 	.db #0x7B
   021E 77                  909 	.db #0x77
   021F                     910 _msg:
   021F 30 31 32 33 34 35   911 	.ascii "0123456789abcdef"
        36 37 38 39 61 62
        63 64 65 66
   022F 00                  912 	.db 0x00
   0230                     913 _startmsg:
   0230 48 65 6C 6C 6F 20   914 	.ascii "Hello "
   0236 00                  915 	.db 0x00
                            916 	.area XINIT   (CODE)
