                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Tue Oct 15 18:21:01 2019
                              5 ;--------------------------------------------------------
                              6 	.module test3
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
                            101 	.globl _calculator
                            102 	.globl _send
                            103 	.globl _getkey
                            104 	.globl _delay
                            105 ;--------------------------------------------------------
                            106 ; special function registers
                            107 ;--------------------------------------------------------
                            108 	.area RSEG    (DATA)
                    0080    109 _P0	=	0x0080
                    0090    110 _P1	=	0x0090
                    00A0    111 _P2	=	0x00a0
                    00B0    112 _P3	=	0x00b0
                    00D0    113 _PSW	=	0x00d0
                    00E0    114 _ACC	=	0x00e0
                    00F0    115 _B	=	0x00f0
                    0081    116 _SP	=	0x0081
                    0082    117 _DPL	=	0x0082
                    0083    118 _DPH	=	0x0083
                    0087    119 _PCON	=	0x0087
                    0088    120 _TCON	=	0x0088
                    0089    121 _TMOD	=	0x0089
                    008A    122 _TL0	=	0x008a
                    008B    123 _TL1	=	0x008b
                    008C    124 _TH0	=	0x008c
                    008D    125 _TH1	=	0x008d
                    008E    126 _AUXR	=	0x008e
                    00A8    127 _IE	=	0x00a8
                    00B8    128 _IP	=	0x00b8
                    0098    129 _SCON	=	0x0098
                    0099    130 _SBUF	=	0x0099
                    00C8    131 _T2CON	=	0x00c8
                    00CB    132 _RCAP2H	=	0x00cb
                    00CA    133 _RCAP2L	=	0x00ca
                            134 ;--------------------------------------------------------
                            135 ; special function bits 
                            136 ;--------------------------------------------------------
                            137 	.area RSEG    (DATA)
                    00D7    138 _CY	=	0x00d7
                    00D6    139 _AC	=	0x00d6
                    00D5    140 _F0	=	0x00d5
                    00D4    141 _RS1	=	0x00d4
                    00D3    142 _RS0	=	0x00d3
                    00D2    143 _OV	=	0x00d2
                    00D0    144 _P	=	0x00d0
                    008F    145 _TF1	=	0x008f
                    008E    146 _TR1	=	0x008e
                    008D    147 _TF0	=	0x008d
                    008C    148 _TR0	=	0x008c
                    008B    149 _IE1	=	0x008b
                    008A    150 _IT1	=	0x008a
                    0089    151 _IE0	=	0x0089
                    0088    152 _IT0	=	0x0088
                    00AF    153 _EA	=	0x00af
                    00AC    154 _ES	=	0x00ac
                    00AB    155 _ET1	=	0x00ab
                    00AA    156 _EX1	=	0x00aa
                    00A9    157 _ET0	=	0x00a9
                    00A8    158 _EX0	=	0x00a8
                    00BC    159 _PS	=	0x00bc
                    00BB    160 _PT1	=	0x00bb
                    00BA    161 _PX1	=	0x00ba
                    00B9    162 _PT0	=	0x00b9
                    00B8    163 _PX0	=	0x00b8
                    00B7    164 _RD	=	0x00b7
                    00B6    165 _WR	=	0x00b6
                    00B5    166 _T1	=	0x00b5
                    00B4    167 _T0	=	0x00b4
                    00B3    168 _INT1	=	0x00b3
                    00B2    169 _INT0	=	0x00b2
                    00B1    170 _TXD	=	0x00b1
                    00B0    171 _RXD	=	0x00b0
                    0090    172 _P1_0	=	0x0090
                    0091    173 _P1_1	=	0x0091
                    0092    174 _P1_2	=	0x0092
                    0093    175 _P1_3	=	0x0093
                    0094    176 _P1_4	=	0x0094
                    0095    177 _P1_5	=	0x0095
                    0096    178 _P1_6	=	0x0096
                    0097    179 _P1_7	=	0x0097
                    009F    180 _SM0	=	0x009f
                    009E    181 _SM1	=	0x009e
                    009D    182 _SM2	=	0x009d
                    009C    183 _REN	=	0x009c
                    009B    184 _TB8	=	0x009b
                    009A    185 _RB8	=	0x009a
                    0099    186 _TI	=	0x0099
                    0098    187 _RI	=	0x0098
                    00C8    188 _T2CON_0	=	0x00c8
                    00C9    189 _T2CON_1	=	0x00c9
                    00CA    190 _T2CON_2	=	0x00ca
                    00CB    191 _T2CON_3	=	0x00cb
                    00CC    192 _T2CON_4	=	0x00cc
                    00CD    193 _T2CON_5	=	0x00cd
                    00CE    194 _T2CON_6	=	0x00ce
                    00CF    195 _T2CON_7	=	0x00cf
                            196 ;--------------------------------------------------------
                            197 ; overlayable register banks 
                            198 ;--------------------------------------------------------
                            199 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     200 	.ds 8
                            201 ;--------------------------------------------------------
                            202 ; internal ram data
                            203 ;--------------------------------------------------------
                            204 	.area DSEG    (DATA)
   0008                     205 _main_oper_1_1::
   0008                     206 	.ds 6
                            207 ;--------------------------------------------------------
                            208 ; overlayable items in internal ram 
                            209 ;--------------------------------------------------------
                            210 	.area	OSEG    (OVR,DATA)
                            211 	.area	OSEG    (OVR,DATA)
                            212 	.area	OSEG    (OVR,DATA)
                            213 ;--------------------------------------------------------
                            214 ; Stack segment in internal ram 
                            215 ;--------------------------------------------------------
                            216 	.area	SSEG	(DATA)
   0010                     217 __start__stack:
   0010                     218 	.ds	1
                            219 
                            220 ;--------------------------------------------------------
                            221 ; indirectly addressable internal ram data
                            222 ;--------------------------------------------------------
                            223 	.area ISEG    (DATA)
                            224 ;--------------------------------------------------------
                            225 ; bit data
                            226 ;--------------------------------------------------------
                            227 	.area BSEG    (BIT)
                            228 ;--------------------------------------------------------
                            229 ; paged external ram data
                            230 ;--------------------------------------------------------
                            231 	.area PSEG    (PAG,XDATA)
                            232 ;--------------------------------------------------------
                            233 ; external ram data
                            234 ;--------------------------------------------------------
                            235 	.area XSEG    (XDATA)
                            236 ;--------------------------------------------------------
                            237 ; external initialized ram data
                            238 ;--------------------------------------------------------
                            239 	.area XISEG   (XDATA)
                            240 	.area CSEG    (CODE)
                            241 	.area GSINIT0 (CODE)
                            242 	.area GSINIT1 (CODE)
                            243 	.area GSINIT2 (CODE)
                            244 	.area GSINIT3 (CODE)
                            245 	.area GSINIT4 (CODE)
                            246 	.area GSINIT5 (CODE)
                            247 ;--------------------------------------------------------
                            248 ; interrupt vector 
                            249 ;--------------------------------------------------------
                            250 	.area CSEG    (CODE)
   0000                     251 __interrupt_vect:
   0000 02 04 47            252 	ljmp	__sdcc_gsinit_startup
                            253 ;--------------------------------------------------------
                            254 ; global & static initialisations
                            255 ;--------------------------------------------------------
                            256 	.area CSEG    (CODE)
                            257 	.area GSINIT  (CODE)
                            258 	.area GSFINAL (CODE)
                            259 	.area GSINIT  (CODE)
                            260 	.globl __sdcc_gsinit_startup
                            261 	.globl __sdcc_program_startup
                            262 	.globl __start__stack
                            263 	.globl __mcs51_genXINIT
                            264 	.globl __mcs51_genXRAMCLEAR
                            265 	.globl __mcs51_genRAMCLEAR
                            266 	.area GSFINAL (CODE)
   04A0 02 00 03            267 	ljmp	__sdcc_program_startup
                            268 ;--------------------------------------------------------
                            269 ; Home
                            270 ;--------------------------------------------------------
                            271 	.area HOME    (CODE)
                            272 	.area CSEG    (CODE)
                            273 ;--------------------------------------------------------
                            274 ; code
                            275 ;--------------------------------------------------------
                            276 	.area CSEG    (CODE)
   0003                     277 __sdcc_program_startup:
   0003 12 00 08            278 	lcall	_main
                            279 ;	return from main will lock up
   0006 80 FE               280 	sjmp .
                            281 ;------------------------------------------------------------
                            282 ;Allocation info for local variables in function 'main'
                            283 ;------------------------------------------------------------
                            284 ;x                         Allocated to registers r4 r5 
                            285 ;y                         Allocated to registers r4 r5 
                            286 ;i                         Allocated to registers r2 r3 
                            287 ;ans                       Allocated to registers r6 r7 
                            288 ;oper                      Allocated with name '_main_oper_1_1'
                            289 ;count                     Allocated to registers r2 r3 
                            290 ;------------------------------------------------------------
                            291 ;c:/sdcc/exam/test3.c:24: void main( )
                            292 ;	-----------------------------------------
                            293 ;	 function main
                            294 ;	-----------------------------------------
   0008                     295 _main:
                    0002    296 	ar2 = 0x02
                    0003    297 	ar3 = 0x03
                    0004    298 	ar4 = 0x04
                    0005    299 	ar5 = 0x05
                    0006    300 	ar6 = 0x06
                    0007    301 	ar7 = 0x07
                    0000    302 	ar0 = 0x00
                    0001    303 	ar1 = 0x01
                            304 ;c:/sdcc/exam/test3.c:31: int count = 0;
                            305 ;     genAssign
   0008 7A 00               306 	mov	r2,#0x00
   000A 7B 00               307 	mov	r3,#0x00
                            308 ;c:/sdcc/exam/test3.c:32: SCON=0x50;  //SCON暫存器01010000 
                            309 ;     genAssign
   000C 75 98 50            310 	mov	_SCON,#0x50
                            311 ;c:/sdcc/exam/test3.c:33: TMOD=0x20;  //上次的，設定timer1為mode2 
                            312 ;     genAssign
   000F 75 89 20            313 	mov	_TMOD,#0x20
                            314 ;c:/sdcc/exam/test3.c:34: TH1=0xf3;   //講義上有說，用來計算baud
                            315 ;     genAssign
   0012 75 8D F3            316 	mov	_TH1,#0xF3
                            317 ;c:/sdcc/exam/test3.c:35: TR1=1;      //timer1啟動 
                            318 ;     genAssign
   0015 D2 8E               319 	setb	_TR1
                            320 ;c:/sdcc/exam/test3.c:37: for(y=0;y<5;y++)        //開始時先送出"Hello world" 
                            321 ;     genAssign
   0017 7C 00               322 	mov	r4,#0x00
   0019 7D 00               323 	mov	r5,#0x00
   001B                     324 00113$:
                            325 ;     genCmpLt
                            326 ;     genCmp
   001B C3                  327 	clr	c
   001C EC                  328 	mov	a,r4
   001D 94 05               329 	subb	a,#0x05
   001F ED                  330 	mov	a,r5
   0020 64 80               331 	xrl	a,#0x80
   0022 94 80               332 	subb	a,#0x80
                            333 ;     genIfxJump
                            334 ;	Peephole 108	removed ljmp by inverse jump logic
   0024 50 29               335 	jnc	00130$
   0026                     336 00138$:
                            337 ;c:/sdcc/exam/test3.c:38: send(startmsg[y]);  //ps.要送資料要以char送出 
                            338 ;     genPlus
                            339 ;	Peephole 236.g	used r4 instead of ar4
   0026 EC                  340 	mov	a,r4
   0027 24 96               341 	add	a,#_startmsg
   0029 F5 82               342 	mov	dpl,a
                            343 ;	Peephole 236.g	used r5 instead of ar5
   002B ED                  344 	mov	a,r5
   002C 34 03               345 	addc	a,#(_startmsg >> 8)
   002E F5 83               346 	mov	dph,a
                            347 ;     genPointerGet
                            348 ;     genCodePointerGet
                            349 ;	Peephole 181	changed mov to clr
   0030 E4                  350 	clr	a
   0031 93                  351 	movc	a,@a+dptr
                            352 ;     genCall
                            353 ;	Peephole 244.c	loading dpl from a instead of r6
   0032 FE                  354 	mov	r6,a
   0033 F5 82               355 	mov	dpl,a
   0035 C0 02               356 	push	ar2
   0037 C0 03               357 	push	ar3
   0039 C0 04               358 	push	ar4
   003B C0 05               359 	push	ar5
   003D 12 01 D8            360 	lcall	_send
   0040 D0 05               361 	pop	ar5
   0042 D0 04               362 	pop	ar4
   0044 D0 03               363 	pop	ar3
   0046 D0 02               364 	pop	ar2
                            365 ;c:/sdcc/exam/test3.c:37: for(y=0;y<5;y++)        //開始時先送出"Hello world" 
                            366 ;     genPlus
                            367 ;     genPlusIncr
                            368 ;	tail increment optimized
   0048 0C                  369 	inc	r4
   0049 BC 00 CF            370 	cjne	r4,#0x00,00113$
   004C 0D                  371 	inc	r5
                            372 ;c:/sdcc/exam/test3.c:39: for(y=0; y<3; y++){
                            373 ;	Peephole 112.b	changed ljmp to sjmp
   004D 80 CC               374 	sjmp	00113$
   004F                     375 00130$:
                            376 ;     genAssign
   004F 7C 00               377 	mov	r4,#0x00
   0051 7D 00               378 	mov	r5,#0x00
   0053                     379 00117$:
                            380 ;     genCmpLt
                            381 ;     genCmp
   0053 C3                  382 	clr	c
   0054 EC                  383 	mov	a,r4
   0055 94 03               384 	subb	a,#0x03
   0057 ED                  385 	mov	a,r5
   0058 64 80               386 	xrl	a,#0x80
   005A 94 80               387 	subb	a,#0x80
                            388 ;     genIfxJump
                            389 ;	Peephole 108	removed ljmp by inverse jump logic
   005C 50 19               390 	jnc	00111$
   005E                     391 00139$:
                            392 ;c:/sdcc/exam/test3.c:40: oper[y] = -1;
                            393 ;     genLeftShift
                            394 ;     genLeftShiftLiteral
                            395 ;     genlshTwo
   005E 8C 06               396 	mov	ar6,r4
   0060 ED                  397 	mov	a,r5
   0061 CE                  398 	xch	a,r6
   0062 25 E0               399 	add	a,acc
   0064 CE                  400 	xch	a,r6
   0065 33                  401 	rlc	a
   0066 FF                  402 	mov	r7,a
                            403 ;     genPlus
                            404 ;	Peephole 236.g	used r6 instead of ar6
   0067 EE                  405 	mov	a,r6
   0068 24 08               406 	add	a,#_main_oper_1_1
                            407 ;     genPointerSet
                            408 ;     genNearPointerSet
                            409 ;	Peephole 239	used a instead of acc
   006A F8                  410 	mov	r0,a
   006B 76 FF               411 	mov	@r0,#0xFF
   006D 08                  412 	inc	r0
   006E 76 FF               413 	mov	@r0,#0xFF
                            414 ;c:/sdcc/exam/test3.c:39: for(y=0; y<3; y++){
                            415 ;     genPlus
                            416 ;     genPlusIncr
                            417 ;	tail increment optimized
   0070 0C                  418 	inc	r4
   0071 BC 00 DF            419 	cjne	r4,#0x00,00117$
   0074 0D                  420 	inc	r5
                            421 ;c:/sdcc/exam/test3.c:42: while(1)
                            422 ;	Peephole 112.b	changed ljmp to sjmp
   0075 80 DC               423 	sjmp	00117$
   0077                     424 00111$:
                            425 ;c:/sdcc/exam/test3.c:44: x = getkey();       //將按下的按鈕的int存進來 
                            426 ;     genCall
   0077 C0 02               427 	push	ar2
   0079 C0 03               428 	push	ar3
   007B 12 01 E6            429 	lcall	_getkey
   007E AC 82               430 	mov	r4,dpl
   0080 AD 83               431 	mov	r5,dph
   0082 D0 03               432 	pop	ar3
   0084 D0 02               433 	pop	ar2
                            434 ;c:/sdcc/exam/test3.c:45: send(msg[x]);      //轉換為char後送出到PC 
                            435 ;     genPlus
                            436 ;	Peephole 236.g	used r4 instead of ar4
   0086 EC                  437 	mov	a,r4
   0087 24 85               438 	add	a,#_msg
   0089 F5 82               439 	mov	dpl,a
                            440 ;	Peephole 236.g	used r5 instead of ar5
   008B ED                  441 	mov	a,r5
   008C 34 03               442 	addc	a,#(_msg >> 8)
   008E F5 83               443 	mov	dph,a
                            444 ;     genPointerGet
                            445 ;     genCodePointerGet
                            446 ;	Peephole 181	changed mov to clr
   0090 E4                  447 	clr	a
   0091 93                  448 	movc	a,@a+dptr
                            449 ;     genCall
                            450 ;	Peephole 244.c	loading dpl from a instead of r6
   0092 FE                  451 	mov	r6,a
   0093 F5 82               452 	mov	dpl,a
   0095 C0 02               453 	push	ar2
   0097 C0 03               454 	push	ar3
   0099 C0 04               455 	push	ar4
   009B C0 05               456 	push	ar5
   009D 12 01 D8            457 	lcall	_send
   00A0 D0 05               458 	pop	ar5
   00A2 D0 04               459 	pop	ar4
   00A4 D0 03               460 	pop	ar3
   00A6 D0 02               461 	pop	ar2
                            462 ;c:/sdcc/exam/test3.c:47: if( x>=0 && x<=15){
                            463 ;     genCmpLt
                            464 ;     genCmp
   00A8 ED                  465 	mov	a,r5
                            466 ;     genIfxJump
                            467 ;	Peephole 112.a	removed ljmp by inverse jump logic
   00A9 20 E7 CB            468 	jb	acc.7,00111$
   00AC                     469 00140$:
                            470 ;     genCmpGt
                            471 ;     genCmp
   00AC C3                  472 	clr	c
   00AD 74 0F               473 	mov	a,#0x0F
   00AF 9C                  474 	subb	a,r4
                            475 ;	Peephole 159	avoided xrl during execution
   00B0 74 80               476 	mov	a,#(0x00 ^ 0x80)
   00B2 8D F0               477 	mov	b,r5
   00B4 63 F0 80            478 	xrl	b,#0x80
   00B7 95 F0               479 	subb	a,b
                            480 ;     genIfxJump
                            481 ;	Peephole 112.b	changed ljmp to sjmp
                            482 ;	Peephole 160	removed sjmp by inverse jump logic
   00B9 40 BC               483 	jc	00111$
   00BB                     484 00141$:
                            485 ;c:/sdcc/exam/test3.c:48: if(x==12){ //按下C 
                            486 ;     genCmpEq
                            487 ;	Peephole 112.b	changed ljmp to sjmp
                            488 ;	Peephole 198	optimized misc jump sequence
   00BB BC 0C 32            489 	cjne	r4,#0x0C,00105$
   00BE BD 00 2F            490 	cjne	r5,#0x00,00105$
                            491 ;00142$:
                            492 ;	Peephole 200	removed redundant sjmp
   00C1                     493 00143$:
                            494 ;c:/sdcc/exam/test3.c:50: for(i=0; i<3;i++){
                            495 ;     genAssign
   00C1 7A 00               496 	mov	r2,#0x00
   00C3 7B 00               497 	mov	r3,#0x00
   00C5                     498 00121$:
                            499 ;     genCmpLt
                            500 ;     genCmp
   00C5 C3                  501 	clr	c
   00C6 EA                  502 	mov	a,r2
   00C7 94 03               503 	subb	a,#0x03
   00C9 EB                  504 	mov	a,r3
   00CA 64 80               505 	xrl	a,#0x80
   00CC 94 80               506 	subb	a,#0x80
                            507 ;     genIfxJump
                            508 ;	Peephole 108	removed ljmp by inverse jump logic
   00CE 50 19               509 	jnc	00124$
   00D0                     510 00144$:
                            511 ;c:/sdcc/exam/test3.c:51: oper[i] = -1;	
                            512 ;     genLeftShift
                            513 ;     genLeftShiftLiteral
                            514 ;     genlshTwo
   00D0 8A 06               515 	mov	ar6,r2
   00D2 EB                  516 	mov	a,r3
   00D3 CE                  517 	xch	a,r6
   00D4 25 E0               518 	add	a,acc
   00D6 CE                  519 	xch	a,r6
   00D7 33                  520 	rlc	a
   00D8 FF                  521 	mov	r7,a
                            522 ;     genPlus
                            523 ;	Peephole 236.g	used r6 instead of ar6
   00D9 EE                  524 	mov	a,r6
   00DA 24 08               525 	add	a,#_main_oper_1_1
                            526 ;     genPointerSet
                            527 ;     genNearPointerSet
                            528 ;	Peephole 239	used a instead of acc
   00DC F8                  529 	mov	r0,a
   00DD 76 FF               530 	mov	@r0,#0xFF
   00DF 08                  531 	inc	r0
   00E0 76 FF               532 	mov	@r0,#0xFF
                            533 ;c:/sdcc/exam/test3.c:50: for(i=0; i<3;i++){
                            534 ;     genPlus
                            535 ;     genPlusIncr
                            536 ;	tail increment optimized
   00E2 0A                  537 	inc	r2
   00E3 BA 00 DF            538 	cjne	r2,#0x00,00121$
   00E6 0B                  539 	inc	r3
                            540 ;	Peephole 112.b	changed ljmp to sjmp
   00E7 80 DC               541 	sjmp	00121$
   00E9                     542 00124$:
                            543 ;c:/sdcc/exam/test3.c:53: count = 0;
                            544 ;     genAssign
   00E9 7A 00               545 	mov	r2,#0x00
   00EB 7B 00               546 	mov	r3,#0x00
   00ED 02 00 77            547 	ljmp	00111$
   00F0                     548 00105$:
                            549 ;c:/sdcc/exam/test3.c:55: else if(x==10){//按下A = 
                            550 ;     genCmpEq
                            551 ;	Peephole 112.b	changed ljmp to sjmp
                            552 ;	Peephole 198	optimized misc jump sequence
   00F0 BC 0A 35            553 	cjne	r4,#0x0A,00102$
   00F3 BD 00 32            554 	cjne	r5,#0x00,00102$
                            555 ;00145$:
                            556 ;	Peephole 200	removed redundant sjmp
   00F6                     557 00146$:
                            558 ;c:/sdcc/exam/test3.c:58: ans = calculator(oper) ;
                            559 ;     genCall
                            560 ;	Peephole 182.a	used 16 bit load of DPTR
   00F6 90 00 08            561 	mov	dptr,#_main_oper_1_1
   00F9 75 F0 00            562 	mov	b,#0x00
   00FC C0 02               563 	push	ar2
   00FE C0 03               564 	push	ar3
   0100 12 01 43            565 	lcall	_calculator
   0103 AE 82               566 	mov	r6,dpl
   0105 AF 83               567 	mov	r7,dph
   0107 D0 03               568 	pop	ar3
   0109 D0 02               569 	pop	ar2
                            570 ;c:/sdcc/exam/test3.c:59: send(msg[ans]);
                            571 ;     genPlus
                            572 ;	Peephole 236.g	used r6 instead of ar6
   010B EE                  573 	mov	a,r6
   010C 24 85               574 	add	a,#_msg
   010E F5 82               575 	mov	dpl,a
                            576 ;	Peephole 236.g	used r7 instead of ar7
   0110 EF                  577 	mov	a,r7
   0111 34 03               578 	addc	a,#(_msg >> 8)
   0113 F5 83               579 	mov	dph,a
                            580 ;     genPointerGet
                            581 ;     genCodePointerGet
                            582 ;	Peephole 181	changed mov to clr
   0115 E4                  583 	clr	a
   0116 93                  584 	movc	a,@a+dptr
                            585 ;     genCall
                            586 ;	Peephole 244.c	loading dpl from a instead of r6
   0117 FE                  587 	mov	r6,a
   0118 F5 82               588 	mov	dpl,a
   011A C0 02               589 	push	ar2
   011C C0 03               590 	push	ar3
   011E 12 01 D8            591 	lcall	_send
   0121 D0 03               592 	pop	ar3
   0123 D0 02               593 	pop	ar2
   0125 02 00 77            594 	ljmp	00111$
   0128                     595 00102$:
                            596 ;c:/sdcc/exam/test3.c:67: oper[count] = x;
                            597 ;     genLeftShift
                            598 ;     genLeftShiftLiteral
                            599 ;     genlshTwo
   0128 8A 06               600 	mov	ar6,r2
   012A EB                  601 	mov	a,r3
   012B CE                  602 	xch	a,r6
   012C 25 E0               603 	add	a,acc
   012E CE                  604 	xch	a,r6
   012F 33                  605 	rlc	a
   0130 FF                  606 	mov	r7,a
                            607 ;     genPlus
                            608 ;	Peephole 236.g	used r6 instead of ar6
   0131 EE                  609 	mov	a,r6
   0132 24 08               610 	add	a,#_main_oper_1_1
                            611 ;     genPointerSet
                            612 ;     genNearPointerSet
                            613 ;	Peephole 239	used a instead of acc
   0134 F8                  614 	mov	r0,a
   0135 A6 04               615 	mov	@r0,ar4
   0137 08                  616 	inc	r0
   0138 A6 05               617 	mov	@r0,ar5
                            618 ;c:/sdcc/exam/test3.c:68: count++;
                            619 ;     genPlus
                            620 ;     genPlusIncr
   013A 0A                  621 	inc	r2
   013B BA 00 01            622 	cjne	r2,#0x00,00147$
   013E 0B                  623 	inc	r3
   013F                     624 00147$:
   013F 02 00 77            625 	ljmp	00111$
   0142                     626 00125$:
   0142 22                  627 	ret
                            628 ;------------------------------------------------------------
                            629 ;Allocation info for local variables in function 'calculator'
                            630 ;------------------------------------------------------------
                            631 ;op                        Allocated to registers r2 r3 r4 
                            632 ;oper                      Allocated to registers r5 r6 
                            633 ;op1                       Allocated to registers r7 r0 
                            634 ;op2                       Allocated to registers r2 r3 
                            635 ;t                         Allocated to registers r4 r1 
                            636 ;------------------------------------------------------------
                            637 ;c:/sdcc/exam/test3.c:75: int calculator(int op[]){
                            638 ;	-----------------------------------------
                            639 ;	 function calculator
                            640 ;	-----------------------------------------
   0143                     641 _calculator:
                            642 ;     genReceive
   0143 AA 82               643 	mov	r2,dpl
   0145 AB 83               644 	mov	r3,dph
   0147 AC F0               645 	mov	r4,b
                            646 ;c:/sdcc/exam/test3.c:76: int oper = op[1];
                            647 ;     genPlus
                            648 ;     genPlusIncr
   0149 74 02               649 	mov	a,#0x02
                            650 ;	Peephole 236.a	used r2 instead of ar2
   014B 2A                  651 	add	a,r2
   014C FD                  652 	mov	r5,a
                            653 ;	Peephole 181	changed mov to clr
   014D E4                  654 	clr	a
                            655 ;	Peephole 236.b	used r3 instead of ar3
   014E 3B                  656 	addc	a,r3
   014F FE                  657 	mov	r6,a
   0150 8C 07               658 	mov	ar7,r4
                            659 ;     genPointerGet
                            660 ;     genGenPointerGet
   0152 8D 82               661 	mov	dpl,r5
   0154 8E 83               662 	mov	dph,r6
   0156 8F F0               663 	mov	b,r7
   0158 12 03 E3            664 	lcall	__gptrget
   015B FD                  665 	mov	r5,a
   015C A3                  666 	inc	dptr
   015D 12 03 E3            667 	lcall	__gptrget
   0160 FE                  668 	mov	r6,a
                            669 ;c:/sdcc/exam/test3.c:77: int op1 = op[0];
                            670 ;     genPointerGet
                            671 ;     genGenPointerGet
   0161 8A 82               672 	mov	dpl,r2
   0163 8B 83               673 	mov	dph,r3
   0165 8C F0               674 	mov	b,r4
   0167 12 03 E3            675 	lcall	__gptrget
   016A FF                  676 	mov	r7,a
   016B A3                  677 	inc	dptr
   016C 12 03 E3            678 	lcall	__gptrget
   016F F8                  679 	mov	r0,a
                            680 ;c:/sdcc/exam/test3.c:78: int op2 = op[2];
                            681 ;     genPlus
                            682 ;     genPlusIncr
   0170 74 04               683 	mov	a,#0x04
                            684 ;	Peephole 236.a	used r2 instead of ar2
   0172 2A                  685 	add	a,r2
   0173 FA                  686 	mov	r2,a
                            687 ;	Peephole 181	changed mov to clr
   0174 E4                  688 	clr	a
                            689 ;	Peephole 236.b	used r3 instead of ar3
   0175 3B                  690 	addc	a,r3
   0176 FB                  691 	mov	r3,a
                            692 ;     genPointerGet
                            693 ;     genGenPointerGet
   0177 8A 82               694 	mov	dpl,r2
   0179 8B 83               695 	mov	dph,r3
   017B 8C F0               696 	mov	b,r4
   017D 12 03 E3            697 	lcall	__gptrget
   0180 FA                  698 	mov	r2,a
   0181 A3                  699 	inc	dptr
   0182 12 03 E3            700 	lcall	__gptrget
   0185 FB                  701 	mov	r3,a
                            702 ;c:/sdcc/exam/test3.c:79: int t = 0;
                            703 ;     genAssign
   0186 7C 00               704 	mov	r4,#0x00
   0188 79 00               705 	mov	r1,#0x00
                            706 ;c:/sdcc/exam/test3.c:81: if(oper == 11){//B /
                            707 ;     genCmpEq
                            708 ;	Peephole 112.b	changed ljmp to sjmp
                            709 ;	Peephole 198	optimized misc jump sequence
   018A BD 0B 14            710 	cjne	r5,#0x0B,00110$
   018D BE 00 11            711 	cjne	r6,#0x00,00110$
                            712 ;00118$:
                            713 ;	Peephole 200	removed redundant sjmp
   0190                     714 00119$:
                            715 ;c:/sdcc/exam/test3.c:82: t = op1/op2;
                            716 ;     genAssign
   0190 8A 0E               717 	mov	__divsint_PARM_2,r2
   0192 8B 0F               718 	mov	(__divsint_PARM_2 + 1),r3
                            719 ;     genCall
   0194 8F 82               720 	mov	dpl,r7
   0196 88 83               721 	mov	dph,r0
   0198 12 04 0B            722 	lcall	__divsint
   019B AC 82               723 	mov	r4,dpl
   019D A9 83               724 	mov	r1,dph
                            725 ;	Peephole 112.b	changed ljmp to sjmp
   019F 80 32               726 	sjmp	00111$
   01A1                     727 00110$:
                            728 ;c:/sdcc/exam/test3.c:84: else if(oper == 13){//D +
                            729 ;     genCmpEq
                            730 ;	Peephole 112.b	changed ljmp to sjmp
                            731 ;	Peephole 198	optimized misc jump sequence
   01A1 BD 0D 0B            732 	cjne	r5,#0x0D,00107$
   01A4 BE 00 08            733 	cjne	r6,#0x00,00107$
                            734 ;00120$:
                            735 ;	Peephole 200	removed redundant sjmp
   01A7                     736 00121$:
                            737 ;c:/sdcc/exam/test3.c:85: t = op1+op2;
                            738 ;     genPlus
                            739 ;	Peephole 236.g	used r2 instead of ar2
   01A7 EA                  740 	mov	a,r2
                            741 ;	Peephole 236.a	used r7 instead of ar7
   01A8 2F                  742 	add	a,r7
   01A9 FC                  743 	mov	r4,a
                            744 ;	Peephole 236.g	used r3 instead of ar3
   01AA EB                  745 	mov	a,r3
                            746 ;	Peephole 236.b	used r0 instead of ar0
   01AB 38                  747 	addc	a,r0
   01AC F9                  748 	mov	r1,a
                            749 ;	Peephole 112.b	changed ljmp to sjmp
   01AD 80 24               750 	sjmp	00111$
   01AF                     751 00107$:
                            752 ;c:/sdcc/exam/test3.c:87: else if(oper == 14){//E -
                            753 ;     genCmpEq
                            754 ;	Peephole 112.b	changed ljmp to sjmp
                            755 ;	Peephole 198	optimized misc jump sequence
   01AF BD 0E 0C            756 	cjne	r5,#0x0E,00104$
   01B2 BE 00 09            757 	cjne	r6,#0x00,00104$
                            758 ;00122$:
                            759 ;	Peephole 200	removed redundant sjmp
   01B5                     760 00123$:
                            761 ;c:/sdcc/exam/test3.c:88: t = op1-op2;
                            762 ;     genMinus
   01B5 EF                  763 	mov	a,r7
   01B6 C3                  764 	clr	c
                            765 ;	Peephole 236.l	used r2 instead of ar2
   01B7 9A                  766 	subb	a,r2
   01B8 FC                  767 	mov	r4,a
   01B9 E8                  768 	mov	a,r0
                            769 ;	Peephole 236.l	used r3 instead of ar3
   01BA 9B                  770 	subb	a,r3
   01BB F9                  771 	mov	r1,a
                            772 ;	Peephole 112.b	changed ljmp to sjmp
   01BC 80 15               773 	sjmp	00111$
   01BE                     774 00104$:
                            775 ;c:/sdcc/exam/test3.c:90: else if(oper == 15){//F *
                            776 ;     genCmpEq
                            777 ;	Peephole 112.b	changed ljmp to sjmp
                            778 ;	Peephole 198	optimized misc jump sequence
   01BE BD 0F 12            779 	cjne	r5,#0x0F,00111$
   01C1 BE 00 0F            780 	cjne	r6,#0x00,00111$
                            781 ;00124$:
                            782 ;	Peephole 200	removed redundant sjmp
   01C4                     783 00125$:
                            784 ;c:/sdcc/exam/test3.c:91: t = op1*op2;
                            785 ;     genAssign
   01C4 8A 0E               786 	mov	__mulint_PARM_2,r2
   01C6 8B 0F               787 	mov	(__mulint_PARM_2 + 1),r3
                            788 ;     genCall
   01C8 8F 82               789 	mov	dpl,r7
   01CA 88 83               790 	mov	dph,r0
   01CC 12 03 9D            791 	lcall	__mulint
   01CF AC 82               792 	mov	r4,dpl
   01D1 A9 83               793 	mov	r1,dph
   01D3                     794 00111$:
                            795 ;c:/sdcc/exam/test3.c:94: return t;
                            796 ;     genRet
   01D3 8C 82               797 	mov	dpl,r4
   01D5 89 83               798 	mov	dph,r1
   01D7                     799 00112$:
   01D7 22                  800 	ret
                            801 ;------------------------------------------------------------
                            802 ;Allocation info for local variables in function 'send'
                            803 ;------------------------------------------------------------
                            804 ;ch                        Allocated to registers 
                            805 ;------------------------------------------------------------
                            806 ;c:/sdcc/exam/test3.c:97: void send(char ch)
                            807 ;	-----------------------------------------
                            808 ;	 function send
                            809 ;	-----------------------------------------
   01D8                     810 _send:
                            811 ;     genReceive
   01D8 85 82 99            812 	mov	_SBUF,dpl
                            813 ;c:/sdcc/exam/test3.c:100: while(TI == 0)  //若TI旗標為0(資料正在傳送) 
   01DB                     814 00101$:
                            815 ;     genNot
   01DB A2 99               816 	mov	c,_TI
   01DD B3                  817 	cpl	c
   01DE E4                  818 	clr	a
   01DF 33                  819 	rlc	a
                            820 ;     genIfx
                            821 ;	Peephole 105	removed redundant mov
   01E0 FA                  822 	mov	r2,a
                            823 ;     genIfxJump
                            824 ;	Peephole 109	removed ljmp by inverse jump logic
   01E1 70 F8               825 	jnz	00101$
   01E3                     826 00108$:
                            827 ;c:/sdcc/exam/test3.c:102: TI=0;           //要用軟體方式把旗標改回0 
                            828 ;     genAssign
   01E3 C2 99               829 	clr	_TI
   01E5                     830 00104$:
   01E5 22                  831 	ret
                            832 ;------------------------------------------------------------
                            833 ;Allocation info for local variables in function 'getkey'
                            834 ;------------------------------------------------------------
                            835 ;i                         Allocated to registers r4 r5 
                            836 ;k                         Allocated to registers r2 r3 
                            837 ;------------------------------------------------------------
                            838 ;c:/sdcc/exam/test3.c:105: int getkey()
                            839 ;	-----------------------------------------
                            840 ;	 function getkey
                            841 ;	-----------------------------------------
   01E6                     842 _getkey:
                            843 ;c:/sdcc/exam/test3.c:108: int k=-1;  //判斷是否有按下按鍵 和 按下了什麼按鍵用 
                            844 ;     genAssign
   01E6 7A FF               845 	mov	r2,#0xFF
   01E8 7B FF               846 	mov	r3,#0xFF
                            847 ;c:/sdcc/exam/test3.c:109: while(1)
                            848 ;c:/sdcc/exam/test3.c:111: for(i=0;i<4;i++)
   01EA                     849 00139$:
                            850 ;     genAssign
   01EA 7C 00               851 	mov	r4,#0x00
   01EC 7D 00               852 	mov	r5,#0x00
   01EE                     853 00116$:
                            854 ;     genCmpLt
                            855 ;     genCmp
   01EE C3                  856 	clr	c
   01EF EC                  857 	mov	a,r4
   01F0 94 04               858 	subb	a,#0x04
   01F2 ED                  859 	mov	a,r5
   01F3 64 80               860 	xrl	a,#0x80
   01F5 94 80               861 	subb	a,#0x80
                            862 ;     genIfxJump
   01F7 40 03               863 	jc	00143$
   01F9 02 03 0D            864 	ljmp	00119$
   01FC                     865 00143$:
                            866 ;c:/sdcc/exam/test3.c:113: P1=ser[i];      //迴圈定P1為11111110 11111101 11111011 11110111 
                            867 ;     genPlus
                            868 ;	Peephole 236.g	used r4 instead of ar4
   01FC EC                  869 	mov	a,r4
   01FD 24 51               870 	add	a,#_ser
   01FF F5 82               871 	mov	dpl,a
                            872 ;	Peephole 236.g	used r5 instead of ar5
   0201 ED                  873 	mov	a,r5
   0202 34 03               874 	addc	a,#(_ser >> 8)
   0204 F5 83               875 	mov	dph,a
                            876 ;     genPointerGet
                            877 ;     genCodePointerGet
                            878 ;	Peephole 181	changed mov to clr
   0206 E4                  879 	clr	a
   0207 93                  880 	movc	a,@a+dptr
   0208 FE                  881 	mov	r6,a
                            882 ;     genAssign
   0209 8E 90               883 	mov	_P1,r6
                            884 ;c:/sdcc/exam/test3.c:114: if(P1!=ser[i])  //讀取P1，若P1不是剛剛定的那樣->有按下某個按鍵，加以列(行)判斷按下什麼按鍵 
                            885 ;     genAssign
                            886 ;     genCmpEq
                            887 ;	peephole 177.g	optimized mov sequence
   020B E5 90               888 	mov	a,_P1
   020D FF                  889 	mov	r7,a
   020E B5 06 03            890 	cjne	a,ar6,00144$
   0211 02 02 FF            891 	ljmp	00113$
   0214                     892 00144$:
                            893 ;c:/sdcc/exam/test3.c:116: if(P1==keymsg[i]) 
                            894 ;     genPlus
                            895 ;	Peephole 236.g	used r4 instead of ar4
   0214 EC                  896 	mov	a,r4
   0215 24 75               897 	add	a,#_keymsg
   0217 F5 82               898 	mov	dpl,a
                            899 ;	Peephole 236.g	used r5 instead of ar5
   0219 ED                  900 	mov	a,r5
   021A 34 03               901 	addc	a,#(_keymsg >> 8)
   021C F5 83               902 	mov	dph,a
                            903 ;     genPointerGet
                            904 ;     genCodePointerGet
                            905 ;	Peephole 181	changed mov to clr
   021E E4                  906 	clr	a
   021F 93                  907 	movc	a,@a+dptr
   0220 FE                  908 	mov	r6,a
                            909 ;     genAssign
                            910 ;     genCmpEq
                            911 ;	peephole 177.g	optimized mov sequence
   0221 E5 90               912 	mov	a,_P1
   0223 FF                  913 	mov	r7,a
                            914 ;	Peephole 112.b	changed ljmp to sjmp
                            915 ;	Peephole 199	optimized misc jump sequence
   0224 B5 06 1D            916 	cjne	a,ar6,00110$
                            917 ;00145$:
                            918 ;	Peephole 200	removed redundant sjmp
   0227                     919 00146$:
                            920 ;c:/sdcc/exam/test3.c:117: k=key[i];
                            921 ;     genLeftShift
                            922 ;     genLeftShiftLiteral
                            923 ;     genlshTwo
   0227 8C 06               924 	mov	ar6,r4
   0229 ED                  925 	mov	a,r5
   022A CE                  926 	xch	a,r6
   022B 25 E0               927 	add	a,acc
   022D CE                  928 	xch	a,r6
   022E 33                  929 	rlc	a
   022F FF                  930 	mov	r7,a
                            931 ;     genPlus
                            932 ;	Peephole 236.g	used r6 instead of ar6
   0230 EE                  933 	mov	a,r6
   0231 24 55               934 	add	a,#_key
   0233 F5 82               935 	mov	dpl,a
                            936 ;	Peephole 236.g	used r7 instead of ar7
   0235 EF                  937 	mov	a,r7
   0236 34 03               938 	addc	a,#(_key >> 8)
   0238 F5 83               939 	mov	dph,a
                            940 ;     genPointerGet
                            941 ;     genCodePointerGet
                            942 ;	Peephole 181	changed mov to clr
   023A E4                  943 	clr	a
   023B 93                  944 	movc	a,@a+dptr
   023C FA                  945 	mov	r2,a
   023D 74 01               946 	mov	a,#0x01
   023F 93                  947 	movc	a,@a+dptr
   0240 FB                  948 	mov	r3,a
   0241 02 02 FF            949 	ljmp	00113$
   0244                     950 00110$:
                            951 ;c:/sdcc/exam/test3.c:118: else if(P1==keymsg[i+4]) 
                            952 ;     genCast
   0244 8C 06               953 	mov	ar6,r4
                            954 ;     genPlus
                            955 ;     genPlusIncr
   0246 74 04               956 	mov	a,#0x04
                            957 ;	Peephole 236.a	used r6 instead of ar6
   0248 2E                  958 	add	a,r6
                            959 ;     genPlus
                            960 ;	Peephole 240	use clr instead of addc a,#0
                            961 ;     genPointerGet
                            962 ;     genCodePointerGet
                            963 ;	Peephole 181	changed mov to clr
                            964 ;	Peephole 186.d	optimized movc sequence
   0249 90 03 75            965 	mov	dptr,#_keymsg
   024C 93                  966 	movc	a,@a+dptr
   024D FF                  967 	mov	r7,a
                            968 ;     genAssign
                            969 ;     genCmpEq
                            970 ;	peephole 177.g	optimized mov sequence
   024E E5 90               971 	mov	a,_P1
   0250 F8                  972 	mov	r0,a
                            973 ;	Peephole 112.b	changed ljmp to sjmp
                            974 ;	Peephole 199	optimized misc jump sequence
   0251 B5 07 31            975 	cjne	a,ar7,00107$
                            976 ;00147$:
                            977 ;	Peephole 200	removed redundant sjmp
   0254                     978 00148$:
                            979 ;c:/sdcc/exam/test3.c:119: k=key[i+4];
                            980 ;     genPlus
                            981 ;     genPlusIncr
   0254 74 04               982 	mov	a,#0x04
                            983 ;	Peephole 236.a	used r6 instead of ar6
   0256 2E                  984 	add	a,r6
                            985 ;     genMult
                            986 ;     genMultOneByte
   0257 C2 D5               987 	clr	F0
   0259 75 F0 02            988 	mov	b,#0x02
   025C 30 E7 04            989 	jnb	acc.7,00149$
   025F B2 D5               990 	cpl	F0
   0261 F4                  991 	cpl	a
   0262 04                  992 	inc	a
   0263                     993 00149$:
   0263 A4                  994 	mul	ab
   0264 30 D5 0A            995 	jnb	F0,00150$
   0267 F4                  996 	cpl	a
   0268 24 01               997 	add	a,#1
   026A C5 F0               998 	xch	a,b
   026C F4                  999 	cpl	a
   026D 34 00              1000 	addc	a,#0
   026F C5 F0              1001 	xch	a,b
   0271                    1002 00150$:
                           1003 ;     genPlus
   0271 24 55              1004 	add	a,#_key
   0273 F5 82              1005 	mov	dpl,a
   0275 74 03              1006 	mov	a,#(_key >> 8)
   0277 35 F0              1007 	addc	a,b
   0279 F5 83              1008 	mov	dph,a
                           1009 ;     genPointerGet
                           1010 ;     genCodePointerGet
                           1011 ;	Peephole 181	changed mov to clr
   027B E4                 1012 	clr	a
   027C 93                 1013 	movc	a,@a+dptr
   027D FA                 1014 	mov	r2,a
   027E 74 01              1015 	mov	a,#0x01
   0280 93                 1016 	movc	a,@a+dptr
   0281 FB                 1017 	mov	r3,a
   0282 02 02 FF           1018 	ljmp	00113$
   0285                    1019 00107$:
                           1020 ;c:/sdcc/exam/test3.c:120: else if(P1==keymsg[i+8]) 
                           1021 ;     genPlus
   0285 74 08              1022 	mov	a,#0x08
                           1023 ;	Peephole 236.a	used r6 instead of ar6
   0287 2E                 1024 	add	a,r6
                           1025 ;     genPlus
                           1026 ;	Peephole 240	use clr instead of addc a,#0
                           1027 ;     genPointerGet
                           1028 ;     genCodePointerGet
                           1029 ;	Peephole 181	changed mov to clr
                           1030 ;	Peephole 186.d	optimized movc sequence
   0288 90 03 75           1031 	mov	dptr,#_keymsg
   028B 93                 1032 	movc	a,@a+dptr
   028C FF                 1033 	mov	r7,a
                           1034 ;     genAssign
                           1035 ;     genCmpEq
                           1036 ;	peephole 177.g	optimized mov sequence
   028D E5 90              1037 	mov	a,_P1
   028F F8                 1038 	mov	r0,a
                           1039 ;	Peephole 112.b	changed ljmp to sjmp
                           1040 ;	Peephole 199	optimized misc jump sequence
   0290 B5 07 30           1041 	cjne	a,ar7,00104$
                           1042 ;00151$:
                           1043 ;	Peephole 200	removed redundant sjmp
   0293                    1044 00152$:
                           1045 ;c:/sdcc/exam/test3.c:121: k=key[i+8];
                           1046 ;     genPlus
   0293 74 08              1047 	mov	a,#0x08
                           1048 ;	Peephole 236.a	used r6 instead of ar6
   0295 2E                 1049 	add	a,r6
                           1050 ;     genMult
                           1051 ;     genMultOneByte
   0296 C2 D5              1052 	clr	F0
   0298 75 F0 02           1053 	mov	b,#0x02
   029B 30 E7 04           1054 	jnb	acc.7,00153$
   029E B2 D5              1055 	cpl	F0
   02A0 F4                 1056 	cpl	a
   02A1 04                 1057 	inc	a
   02A2                    1058 00153$:
   02A2 A4                 1059 	mul	ab
   02A3 30 D5 0A           1060 	jnb	F0,00154$
   02A6 F4                 1061 	cpl	a
   02A7 24 01              1062 	add	a,#1
   02A9 C5 F0              1063 	xch	a,b
   02AB F4                 1064 	cpl	a
   02AC 34 00              1065 	addc	a,#0
   02AE C5 F0              1066 	xch	a,b
   02B0                    1067 00154$:
                           1068 ;     genPlus
   02B0 24 55              1069 	add	a,#_key
   02B2 F5 82              1070 	mov	dpl,a
   02B4 74 03              1071 	mov	a,#(_key >> 8)
   02B6 35 F0              1072 	addc	a,b
   02B8 F5 83              1073 	mov	dph,a
                           1074 ;     genPointerGet
                           1075 ;     genCodePointerGet
                           1076 ;	Peephole 181	changed mov to clr
   02BA E4                 1077 	clr	a
   02BB 93                 1078 	movc	a,@a+dptr
   02BC FA                 1079 	mov	r2,a
   02BD 74 01              1080 	mov	a,#0x01
   02BF 93                 1081 	movc	a,@a+dptr
   02C0 FB                 1082 	mov	r3,a
                           1083 ;	Peephole 112.b	changed ljmp to sjmp
   02C1 80 3C              1084 	sjmp	00113$
   02C3                    1085 00104$:
                           1086 ;c:/sdcc/exam/test3.c:122: else if(P1==keymsg[i+12]) 
                           1087 ;     genPlus
   02C3 74 0C              1088 	mov	a,#0x0C
                           1089 ;	Peephole 236.a	used r6 instead of ar6
   02C5 2E                 1090 	add	a,r6
                           1091 ;     genPlus
                           1092 ;	Peephole 240	use clr instead of addc a,#0
                           1093 ;     genPointerGet
                           1094 ;     genCodePointerGet
                           1095 ;	Peephole 181	changed mov to clr
                           1096 ;	Peephole 186.d	optimized movc sequence
   02C6 90 03 75           1097 	mov	dptr,#_keymsg
   02C9 93                 1098 	movc	a,@a+dptr
   02CA FF                 1099 	mov	r7,a
                           1100 ;     genAssign
                           1101 ;     genCmpEq
                           1102 ;	peephole 177.g	optimized mov sequence
   02CB E5 90              1103 	mov	a,_P1
   02CD F8                 1104 	mov	r0,a
                           1105 ;	Peephole 112.b	changed ljmp to sjmp
                           1106 ;	Peephole 199	optimized misc jump sequence
   02CE B5 07 2E           1107 	cjne	a,ar7,00113$
                           1108 ;00155$:
                           1109 ;	Peephole 200	removed redundant sjmp
   02D1                    1110 00156$:
                           1111 ;c:/sdcc/exam/test3.c:123: k=key[i+12];
                           1112 ;     genPlus
   02D1 74 0C              1113 	mov	a,#0x0C
                           1114 ;	Peephole 236.a	used r6 instead of ar6
   02D3 2E                 1115 	add	a,r6
                           1116 ;     genMult
                           1117 ;     genMultOneByte
   02D4 C2 D5              1118 	clr	F0
   02D6 75 F0 02           1119 	mov	b,#0x02
   02D9 30 E7 04           1120 	jnb	acc.7,00157$
   02DC B2 D5              1121 	cpl	F0
   02DE F4                 1122 	cpl	a
   02DF 04                 1123 	inc	a
   02E0                    1124 00157$:
   02E0 A4                 1125 	mul	ab
   02E1 30 D5 0A           1126 	jnb	F0,00158$
   02E4 F4                 1127 	cpl	a
   02E5 24 01              1128 	add	a,#1
   02E7 C5 F0              1129 	xch	a,b
   02E9 F4                 1130 	cpl	a
   02EA 34 00              1131 	addc	a,#0
   02EC C5 F0              1132 	xch	a,b
   02EE                    1133 00158$:
                           1134 ;     genPlus
   02EE 24 55              1135 	add	a,#_key
   02F0 F5 82              1136 	mov	dpl,a
   02F2 74 03              1137 	mov	a,#(_key >> 8)
   02F4 35 F0              1138 	addc	a,b
   02F6 F5 83              1139 	mov	dph,a
                           1140 ;     genPointerGet
                           1141 ;     genCodePointerGet
                           1142 ;	Peephole 181	changed mov to clr
   02F8 E4                 1143 	clr	a
   02F9 93                 1144 	movc	a,@a+dptr
   02FA FA                 1145 	mov	r2,a
   02FB 74 01              1146 	mov	a,#0x01
   02FD 93                 1147 	movc	a,@a+dptr
   02FE FB                 1148 	mov	r3,a
   02FF                    1149 00113$:
                           1150 ;c:/sdcc/exam/test3.c:125: if (k!=-1) break ;  //若有按下按鍵，則k會變為對應到的int，不會是-1，break for迴圈 
                           1151 ;     genCmpEq
                           1152 ;	Peephole 112.b	changed ljmp to sjmp
                           1153 ;	Peephole 198	optimized misc jump sequence
   02FF BA FF 0B           1154 	cjne	r2,#0xFF,00119$
   0302 BB FF 08           1155 	cjne	r3,#0xFF,00119$
                           1156 ;00159$:
                           1157 ;	Peephole 200	removed redundant sjmp
   0305                    1158 00160$:
                           1159 ;c:/sdcc/exam/test3.c:111: for(i=0;i<4;i++)
                           1160 ;     genPlus
                           1161 ;     genPlusIncr
   0305 0C                 1162 	inc	r4
   0306 BC 00 01           1163 	cjne	r4,#0x00,00161$
   0309 0D                 1164 	inc	r5
   030A                    1165 00161$:
   030A 02 01 EE           1166 	ljmp	00116$
   030D                    1167 00119$:
                           1168 ;c:/sdcc/exam/test3.c:127: if(k!=-1)               //若有按下按鍵，準備回傳值 
                           1169 ;     genCmpEq
   030D BA FF 06           1170 	cjne	r2,#0xFF,00162$
   0310 BB FF 03           1171 	cjne	r3,#0xFF,00162$
   0313 02 01 EA           1172 	ljmp	00139$
   0316                    1173 00162$:
                           1174 ;c:/sdcc/exam/test3.c:128: while(1)
                           1175 ;     genPlus
                           1176 ;	Peephole 236.g	used r4 instead of ar4
   0316 EC                 1177 	mov	a,r4
   0317 24 51              1178 	add	a,#_ser
   0319 FC                 1179 	mov	r4,a
                           1180 ;	Peephole 236.g	used r5 instead of ar5
   031A ED                 1181 	mov	a,r5
   031B 34 03              1182 	addc	a,#(_ser >> 8)
   031D FD                 1183 	mov	r5,a
   031E                    1184 00123$:
                           1185 ;c:/sdcc/exam/test3.c:130: P1=ser[i];          //將P1再定回為原來判斷的樣子 
                           1186 ;     genPointerGet
                           1187 ;     genCodePointerGet
   031E 8C 82              1188 	mov	dpl,r4
   0320 8D 83              1189 	mov	dph,r5
                           1190 ;	Peephole 181	changed mov to clr
   0322 E4                 1191 	clr	a
   0323 93                 1192 	movc	a,@a+dptr
   0324 FE                 1193 	mov	r6,a
                           1194 ;     genAssign
   0325 8E 90              1195 	mov	_P1,r6
                           1196 ;c:/sdcc/exam/test3.c:131: if(P1==ser[i])      //若P1是原來判斷的樣子(用來保證按鍵被放開了) 
                           1197 ;     genAssign
                           1198 ;     genCmpEq
                           1199 ;	peephole 177.g	optimized mov sequence
   0327 E5 90              1200 	mov	a,_P1
   0329 FF                 1201 	mov	r7,a
                           1202 ;	Peephole 112.b	changed ljmp to sjmp
                           1203 ;	Peephole 199	optimized misc jump sequence
   032A B5 06 F1           1204 	cjne	a,ar6,00123$
                           1205 ;00163$:
                           1206 ;	Peephole 200	removed redundant sjmp
   032D                    1207 00164$:
                           1208 ;c:/sdcc/exam/test3.c:132: return k;       //回傳int值k 
                           1209 ;     genRet
   032D 8A 82              1210 	mov	dpl,r2
   032F 8B 83              1211 	mov	dph,r3
   0331                    1212 00130$:
   0331 22                 1213 	ret
                           1214 ;------------------------------------------------------------
                           1215 ;Allocation info for local variables in function 'delay'
                           1216 ;------------------------------------------------------------
                           1217 ;t                         Allocated to registers r2 r3 
                           1218 ;x                         Allocated to registers r4 r5 
                           1219 ;------------------------------------------------------------
                           1220 ;c:/sdcc/exam/test3.c:137: void delay (int t)
                           1221 ;	-----------------------------------------
                           1222 ;	 function delay
                           1223 ;	-----------------------------------------
   0332                    1224 _delay:
                           1225 ;     genReceive
   0332 AA 82              1226 	mov	r2,dpl
   0334 AB 83              1227 	mov	r3,dph
                           1228 ;c:/sdcc/exam/test3.c:140: for (x=0;x<t;x++)
                           1229 ;     genAssign
   0336 7C 00              1230 	mov	r4,#0x00
   0338 7D 00              1231 	mov	r5,#0x00
   033A                    1232 00101$:
                           1233 ;     genCmpLt
                           1234 ;     genCmp
   033A C3                 1235 	clr	c
   033B EC                 1236 	mov	a,r4
   033C 9A                 1237 	subb	a,r2
   033D ED                 1238 	mov	a,r5
   033E 64 80              1239 	xrl	a,#0x80
   0340 8B F0              1240 	mov	b,r3
   0342 63 F0 80           1241 	xrl	b,#0x80
   0345 95 F0              1242 	subb	a,b
                           1243 ;     genIfxJump
                           1244 ;	Peephole 108	removed ljmp by inverse jump logic
   0347 50 07              1245 	jnc	00105$
   0349                    1246 00109$:
                           1247 ;     genPlus
                           1248 ;     genPlusIncr
                           1249 ;	tail increment optimized
   0349 0C                 1250 	inc	r4
   034A BC 00 ED           1251 	cjne	r4,#0x00,00101$
   034D 0D                 1252 	inc	r5
                           1253 ;	Peephole 112.b	changed ljmp to sjmp
   034E 80 EA              1254 	sjmp	00101$
   0350                    1255 00105$:
   0350 22                 1256 	ret
                           1257 	.area CSEG    (CODE)
   0351                    1258 _ser:
   0351 FE                 1259 	.db #0xFE
   0352 FD                 1260 	.db #0xFD
   0353 FB                 1261 	.db #0xFB
   0354 F7                 1262 	.db #0xF7
   0355                    1263 _key:
   0355 01 00              1264 	.byte #0x01,#0x00
   0357 02 00              1265 	.byte #0x02,#0x00
   0359 03 00              1266 	.byte #0x03,#0x00
   035B 0C 00              1267 	.byte #0x0C,#0x00
   035D 04 00              1268 	.byte #0x04,#0x00
   035F 05 00              1269 	.byte #0x05,#0x00
   0361 06 00              1270 	.byte #0x06,#0x00
   0363 0D 00              1271 	.byte #0x0D,#0x00
   0365 07 00              1272 	.byte #0x07,#0x00
   0367 08 00              1273 	.byte #0x08,#0x00
   0369 09 00              1274 	.byte #0x09,#0x00
   036B 0E 00              1275 	.byte #0x0E,#0x00
   036D 0A 00              1276 	.byte #0x0A,#0x00
   036F 00 00              1277 	.byte #0x00,#0x00
   0371 0B 00              1278 	.byte #0x0B,#0x00
   0373 0F 00              1279 	.byte #0x0F,#0x00
   0375                    1280 _keymsg:
   0375 EE                 1281 	.db #0xEE
   0376 ED                 1282 	.db #0xED
   0377 EB                 1283 	.db #0xEB
   0378 E7                 1284 	.db #0xE7
   0379 DE                 1285 	.db #0xDE
   037A DD                 1286 	.db #0xDD
   037B DB                 1287 	.db #0xDB
   037C D7                 1288 	.db #0xD7
   037D BE                 1289 	.db #0xBE
   037E BD                 1290 	.db #0xBD
   037F BB                 1291 	.db #0xBB
   0380 B7                 1292 	.db #0xB7
   0381 7E                 1293 	.db #0x7E
   0382 7D                 1294 	.db #0x7D
   0383 7B                 1295 	.db #0x7B
   0384 77                 1296 	.db #0x77
   0385                    1297 _msg:
   0385 30 31 32 33 34 35  1298 	.ascii "0123456789=/c+-*"
        36 37 38 39 3D 2F
        63 2B 2D 2A
   0395 00                 1299 	.db 0x00
   0396                    1300 _startmsg:
   0396 48 65 6C 6C 6F 20  1301 	.ascii "Hello "
   039C 00                 1302 	.db 0x00
                           1303 	.area XINIT   (CODE)
