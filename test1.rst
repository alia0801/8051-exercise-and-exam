                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.5.0 #1020 (May  8 2005)
                              4 ; This file generated Tue Oct 01 19:15:46 2019
                              5 ;--------------------------------------------------------
                              6 	.module test1
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _step
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
                             97 	.globl _dt
                             98 	.globl _dir
                             99 	.globl _turn
                            100 	.globl _delay
                            101 ;--------------------------------------------------------
                            102 ; special function registers
                            103 ;--------------------------------------------------------
                            104 	.area RSEG    (DATA)
                    0080    105 _P0	=	0x0080
                    0090    106 _P1	=	0x0090
                    00A0    107 _P2	=	0x00a0
                    00B0    108 _P3	=	0x00b0
                    00D0    109 _PSW	=	0x00d0
                    00E0    110 _ACC	=	0x00e0
                    00F0    111 _B	=	0x00f0
                    0081    112 _SP	=	0x0081
                    0082    113 _DPL	=	0x0082
                    0083    114 _DPH	=	0x0083
                    0087    115 _PCON	=	0x0087
                    0088    116 _TCON	=	0x0088
                    0089    117 _TMOD	=	0x0089
                    008A    118 _TL0	=	0x008a
                    008B    119 _TL1	=	0x008b
                    008C    120 _TH0	=	0x008c
                    008D    121 _TH1	=	0x008d
                    008E    122 _AUXR	=	0x008e
                    00A8    123 _IE	=	0x00a8
                    00B8    124 _IP	=	0x00b8
                    0098    125 _SCON	=	0x0098
                    0099    126 _SBUF	=	0x0099
                    00C8    127 _T2CON	=	0x00c8
                    00CB    128 _RCAP2H	=	0x00cb
                    00CA    129 _RCAP2L	=	0x00ca
                            130 ;--------------------------------------------------------
                            131 ; special function bits 
                            132 ;--------------------------------------------------------
                            133 	.area RSEG    (DATA)
                    00D7    134 _CY	=	0x00d7
                    00D6    135 _AC	=	0x00d6
                    00D5    136 _F0	=	0x00d5
                    00D4    137 _RS1	=	0x00d4
                    00D3    138 _RS0	=	0x00d3
                    00D2    139 _OV	=	0x00d2
                    00D0    140 _P	=	0x00d0
                    008F    141 _TF1	=	0x008f
                    008E    142 _TR1	=	0x008e
                    008D    143 _TF0	=	0x008d
                    008C    144 _TR0	=	0x008c
                    008B    145 _IE1	=	0x008b
                    008A    146 _IT1	=	0x008a
                    0089    147 _IE0	=	0x0089
                    0088    148 _IT0	=	0x0088
                    00AF    149 _EA	=	0x00af
                    00AC    150 _ES	=	0x00ac
                    00AB    151 _ET1	=	0x00ab
                    00AA    152 _EX1	=	0x00aa
                    00A9    153 _ET0	=	0x00a9
                    00A8    154 _EX0	=	0x00a8
                    00BC    155 _PS	=	0x00bc
                    00BB    156 _PT1	=	0x00bb
                    00BA    157 _PX1	=	0x00ba
                    00B9    158 _PT0	=	0x00b9
                    00B8    159 _PX0	=	0x00b8
                    00B7    160 _RD	=	0x00b7
                    00B6    161 _WR	=	0x00b6
                    00B5    162 _T1	=	0x00b5
                    00B4    163 _T0	=	0x00b4
                    00B3    164 _INT1	=	0x00b3
                    00B2    165 _INT0	=	0x00b2
                    00B1    166 _TXD	=	0x00b1
                    00B0    167 _RXD	=	0x00b0
                    0090    168 _P1_0	=	0x0090
                    0091    169 _P1_1	=	0x0091
                    0092    170 _P1_2	=	0x0092
                    0093    171 _P1_3	=	0x0093
                    0094    172 _P1_4	=	0x0094
                    0095    173 _P1_5	=	0x0095
                    0096    174 _P1_6	=	0x0096
                    0097    175 _P1_7	=	0x0097
                    009F    176 _SM0	=	0x009f
                    009E    177 _SM1	=	0x009e
                    009D    178 _SM2	=	0x009d
                    009C    179 _REN	=	0x009c
                    009B    180 _TB8	=	0x009b
                    009A    181 _RB8	=	0x009a
                    0099    182 _TI	=	0x0099
                    0098    183 _RI	=	0x0098
                    00C8    184 _T2CON_0	=	0x00c8
                    00C9    185 _T2CON_1	=	0x00c9
                    00CA    186 _T2CON_2	=	0x00ca
                    00CB    187 _T2CON_3	=	0x00cb
                    00CC    188 _T2CON_4	=	0x00cc
                    00CD    189 _T2CON_5	=	0x00cd
                    00CE    190 _T2CON_6	=	0x00ce
                    00CF    191 _T2CON_7	=	0x00cf
                            192 ;--------------------------------------------------------
                            193 ; overlayable register banks 
                            194 ;--------------------------------------------------------
                            195 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     196 	.ds 8
                            197 ;--------------------------------------------------------
                            198 ; internal ram data
                            199 ;--------------------------------------------------------
                            200 	.area DSEG    (DATA)
   0008                     201 _dir::
   0008                     202 	.ds 2
   000A                     203 _dt::
   000A                     204 	.ds 2
                            205 ;--------------------------------------------------------
                            206 ; overlayable items in internal ram 
                            207 ;--------------------------------------------------------
                            208 	.area	OSEG    (OVR,DATA)
                            209 ;--------------------------------------------------------
                            210 ; Stack segment in internal ram 
                            211 ;--------------------------------------------------------
                            212 	.area	SSEG	(DATA)
   000C                     213 __start__stack:
   000C                     214 	.ds	1
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
   0000 02 00 ED            248 	ljmp	__sdcc_gsinit_startup
                            249 ;--------------------------------------------------------
                            250 ; global & static initialisations
                            251 ;--------------------------------------------------------
                            252 	.area CSEG    (CODE)
                            253 	.area GSINIT  (CODE)
                            254 	.area GSFINAL (CODE)
                            255 	.area GSINIT  (CODE)
                            256 	.globl __sdcc_gsinit_startup
                            257 	.globl __sdcc_program_startup
                            258 	.globl __start__stack
                            259 	.globl __mcs51_genXINIT
                            260 	.globl __mcs51_genXRAMCLEAR
                            261 	.globl __mcs51_genRAMCLEAR
                            262 	.area GSFINAL (CODE)
   0146 02 00 03            263 	ljmp	__sdcc_program_startup
                            264 ;--------------------------------------------------------
                            265 ; Home
                            266 ;--------------------------------------------------------
                            267 	.area HOME    (CODE)
                            268 	.area CSEG    (CODE)
                            269 ;--------------------------------------------------------
                            270 ; code
                            271 ;--------------------------------------------------------
                            272 	.area CSEG    (CODE)
   0003                     273 __sdcc_program_startup:
   0003 12 00 08            274 	lcall	_main
                            275 ;	return from main will lock up
   0006 80 FE               276 	sjmp .
                            277 ;------------------------------------------------------------
                            278 ;Allocation info for local variables in function 'main'
                            279 ;------------------------------------------------------------
                            280 ;i                         Allocated to registers r2 r3 
                            281 ;------------------------------------------------------------
                            282 ;c:/sdcc/exam/test1.c:9: void main ( )
                            283 ;	-----------------------------------------
                            284 ;	 function main
                            285 ;	-----------------------------------------
   0008                     286 _main:
                    0002    287 	ar2 = 0x02
                    0003    288 	ar3 = 0x03
                    0004    289 	ar4 = 0x04
                    0005    290 	ar5 = 0x05
                    0006    291 	ar6 = 0x06
                    0007    292 	ar7 = 0x07
                    0000    293 	ar0 = 0x00
                    0001    294 	ar1 = 0x01
                            295 ;c:/sdcc/exam/test1.c:12: dt=25000;
                            296 ;     genAssign
   0008 75 0A A8            297 	mov	_dt,#0xA8
   000B 75 0B 61            298 	mov	(_dt + 1),#0x61
                            299 ;c:/sdcc/exam/test1.c:14: while(1) {
   000E                     300 00102$:
                            301 ;c:/sdcc/exam/test1.c:15: dir=1; 
                            302 ;     genAssign
   000E 75 08 01            303 	mov	_dir,#0x01
   0011 E4                  304 	clr	a
   0012 F5 09               305 	mov	(_dir + 1),a
                            306 ;c:/sdcc/exam/test1.c:16: for(i = 0; i <10; i++){
                            307 ;     genAssign
   0014 7A 0A               308 	mov	r2,#0x0A
   0016 7B 00               309 	mov	r3,#0x00
   0018                     310 00106$:
                            311 ;c:/sdcc/exam/test1.c:17: turn( );
                            312 ;     genCall
   0018 C0 02               313 	push	ar2
   001A C0 03               314 	push	ar3
   001C 12 00 4D            315 	lcall	_turn
   001F D0 03               316 	pop	ar3
   0021 D0 02               317 	pop	ar2
                            318 ;     genDjnz
                            319 ;     genMinus
                            320 ;     genMinusDec
   0023 1A                  321 	dec	r2
   0024 BA FF 01            322 	cjne	r2,#0xff,00117$
   0027 1B                  323 	dec	r3
   0028                     324 00117$:
                            325 ;c:/sdcc/exam/test1.c:16: for(i = 0; i <10; i++){
                            326 ;     genIfx
   0028 EA                  327 	mov	a,r2
   0029 4B                  328 	orl	a,r3
                            329 ;     genIfxJump
                            330 ;	Peephole 109	removed ljmp by inverse jump logic
   002A 70 EC               331 	jnz	00106$
   002C                     332 00118$:
                            333 ;c:/sdcc/exam/test1.c:19: dir=2;
                            334 ;     genAssign
   002C 75 08 02            335 	mov	_dir,#0x02
   002F E4                  336 	clr	a
   0030 F5 09               337 	mov	(_dir + 1),a
                            338 ;c:/sdcc/exam/test1.c:20: for(i = 0; i <10; i++){
                            339 ;     genAssign
   0032 7A 0A               340 	mov	r2,#0x0A
   0034 7B 00               341 	mov	r3,#0x00
   0036                     342 00109$:
                            343 ;c:/sdcc/exam/test1.c:21: turn( );
                            344 ;     genCall
   0036 C0 02               345 	push	ar2
   0038 C0 03               346 	push	ar3
   003A 12 00 4D            347 	lcall	_turn
   003D D0 03               348 	pop	ar3
   003F D0 02               349 	pop	ar2
                            350 ;     genDjnz
                            351 ;     genMinus
                            352 ;     genMinusDec
   0041 1A                  353 	dec	r2
   0042 BA FF 01            354 	cjne	r2,#0xff,00119$
   0045 1B                  355 	dec	r3
   0046                     356 00119$:
                            357 ;c:/sdcc/exam/test1.c:20: for(i = 0; i <10; i++){
                            358 ;     genIfx
   0046 EA                  359 	mov	a,r2
   0047 4B                  360 	orl	a,r3
                            361 ;     genIfxJump
                            362 ;	Peephole 109	removed ljmp by inverse jump logic
   0048 70 EC               363 	jnz	00109$
   004A                     364 00120$:
                            365 ;	Peephole 112.b	changed ljmp to sjmp
   004A 80 C2               366 	sjmp	00102$
   004C                     367 00110$:
   004C 22                  368 	ret
                            369 ;------------------------------------------------------------
                            370 ;Allocation info for local variables in function 'turn'
                            371 ;------------------------------------------------------------
                            372 ;x                         Allocated to registers r2 r3 
                            373 ;------------------------------------------------------------
                            374 ;c:/sdcc/exam/test1.c:26: void turn( )
                            375 ;	-----------------------------------------
                            376 ;	 function turn
                            377 ;	-----------------------------------------
   004D                     378 _turn:
                            379 ;c:/sdcc/exam/test1.c:29: if(dir == 1){  //turn right
                            380 ;     genCmpEq
   004D E5 08               381 	mov	a,_dir
   004F B4 01 04            382 	cjne	a,#0x01,00122$
   0052 E5 09               383 	mov	a,(_dir + 1)
                            384 ;	Peephole 162	removed sjmp by inverse jump logic
   0054 60 02               385 	jz	00123$
   0056                     386 00122$:
                            387 ;	Peephole 112.b	changed ljmp to sjmp
   0056 80 35               388 	sjmp	00104$
   0058                     389 00123$:
                            390 ;c:/sdcc/exam/test1.c:30: for(x=0;x<4;x++) {
                            391 ;     genAssign
   0058 7A 00               392 	mov	r2,#0x00
   005A 7B 00               393 	mov	r3,#0x00
   005C                     394 00106$:
                            395 ;     genCmpLt
                            396 ;     genCmp
   005C C3                  397 	clr	c
   005D EA                  398 	mov	a,r2
   005E 94 04               399 	subb	a,#0x04
   0060 EB                  400 	mov	a,r3
   0061 64 80               401 	xrl	a,#0x80
   0063 94 80               402 	subb	a,#0x80
                            403 ;     genIfxJump
                            404 ;	Peephole 108	removed ljmp by inverse jump logic
   0065 50 5E               405 	jnc	00114$
   0067                     406 00124$:
                            407 ;c:/sdcc/exam/test1.c:31: P1=step[x];
                            408 ;     genPlus
                            409 ;	Peephole 236.g	used r2 instead of ar2
   0067 EA                  410 	mov	a,r2
   0068 24 E5               411 	add	a,#_step
   006A F5 82               412 	mov	dpl,a
                            413 ;	Peephole 236.g	used r3 instead of ar3
   006C EB                  414 	mov	a,r3
   006D 34 00               415 	addc	a,#(_step >> 8)
   006F F5 83               416 	mov	dph,a
                            417 ;     genPointerGet
                            418 ;     genCodePointerGet
                            419 ;	Peephole 181	changed mov to clr
   0071 E4                  420 	clr	a
   0072 93                  421 	movc	a,@a+dptr
   0073 F5 90               422 	mov	_P1,a
                            423 ;c:/sdcc/exam/test1.c:32: delay(dt);
                            424 ;     genCall
   0075 85 0A 82            425 	mov	dpl,_dt
   0078 85 0B 83            426 	mov	dph,(_dt + 1)
   007B C0 02               427 	push	ar2
   007D C0 03               428 	push	ar3
   007F 12 00 C6            429 	lcall	_delay
   0082 D0 03               430 	pop	ar3
   0084 D0 02               431 	pop	ar2
                            432 ;c:/sdcc/exam/test1.c:30: for(x=0;x<4;x++) {
                            433 ;     genPlus
                            434 ;     genPlusIncr
                            435 ;	tail increment optimized
   0086 0A                  436 	inc	r2
   0087 BA 00 D2            437 	cjne	r2,#0x00,00106$
   008A 0B                  438 	inc	r3
                            439 ;	Peephole 112.b	changed ljmp to sjmp
   008B 80 CF               440 	sjmp	00106$
   008D                     441 00104$:
                            442 ;c:/sdcc/exam/test1.c:35: else if(dir == 2){
                            443 ;     genCmpEq
   008D E5 08               444 	mov	a,_dir
   008F B4 02 04            445 	cjne	a,#0x02,00125$
   0092 E5 09               446 	mov	a,(_dir + 1)
                            447 ;	Peephole 162	removed sjmp by inverse jump logic
   0094 60 01               448 	jz	00126$
   0096                     449 00125$:
                            450 ;	Peephole 112.b	changed ljmp to sjmp
                            451 ;	Peephole 251.b	replaced sjmp to ret with ret
   0096 22                  452 	ret
   0097                     453 00126$:
                            454 ;c:/sdcc/exam/test1.c:36: for(x=3;x>=0;x--){
                            455 ;     genAssign
   0097 7A 03               456 	mov	r2,#0x03
   0099 7B 00               457 	mov	r3,#0x00
   009B                     458 00110$:
                            459 ;     genCmpLt
                            460 ;     genCmp
   009B EB                  461 	mov	a,r3
                            462 ;     genIfxJump
                            463 ;	Peephole 112.a	removed ljmp by inverse jump logic
   009C 20 E7 26            464 	jb	acc.7,00114$
   009F                     465 00127$:
                            466 ;c:/sdcc/exam/test1.c:37: P1=step[x];
                            467 ;     genPlus
                            468 ;	Peephole 236.g	used r2 instead of ar2
   009F EA                  469 	mov	a,r2
   00A0 24 E5               470 	add	a,#_step
   00A2 F5 82               471 	mov	dpl,a
                            472 ;	Peephole 236.g	used r3 instead of ar3
   00A4 EB                  473 	mov	a,r3
   00A5 34 00               474 	addc	a,#(_step >> 8)
   00A7 F5 83               475 	mov	dph,a
                            476 ;     genPointerGet
                            477 ;     genCodePointerGet
                            478 ;	Peephole 181	changed mov to clr
   00A9 E4                  479 	clr	a
   00AA 93                  480 	movc	a,@a+dptr
   00AB F5 90               481 	mov	_P1,a
                            482 ;c:/sdcc/exam/test1.c:38: delay(dt);
                            483 ;     genCall
   00AD 85 0A 82            484 	mov	dpl,_dt
   00B0 85 0B 83            485 	mov	dph,(_dt + 1)
   00B3 C0 02               486 	push	ar2
   00B5 C0 03               487 	push	ar3
   00B7 12 00 C6            488 	lcall	_delay
   00BA D0 03               489 	pop	ar3
   00BC D0 02               490 	pop	ar2
                            491 ;c:/sdcc/exam/test1.c:36: for(x=3;x>=0;x--){
                            492 ;     genMinus
                            493 ;     genMinusDec
                            494 ;	tail decrement optimized
   00BE 1A                  495 	dec	r2
   00BF BA FF D9            496 	cjne	r2,#0xff,00110$
   00C2 1B                  497 	dec	r3
                            498 ;	Peephole 112.b	changed ljmp to sjmp
   00C3 80 D6               499 	sjmp	00110$
   00C5                     500 00114$:
   00C5 22                  501 	ret
                            502 ;------------------------------------------------------------
                            503 ;Allocation info for local variables in function 'delay'
                            504 ;------------------------------------------------------------
                            505 ;t                         Allocated to registers r2 r3 
                            506 ;x                         Allocated to registers r4 r5 
                            507 ;------------------------------------------------------------
                            508 ;c:/sdcc/exam/test1.c:42: void delay(int t)
                            509 ;	-----------------------------------------
                            510 ;	 function delay
                            511 ;	-----------------------------------------
   00C6                     512 _delay:
                            513 ;     genReceive
   00C6 AA 82               514 	mov	r2,dpl
   00C8 AB 83               515 	mov	r3,dph
                            516 ;c:/sdcc/exam/test1.c:45: for(x=0;x<t;x++)
                            517 ;     genAssign
   00CA 7C 00               518 	mov	r4,#0x00
   00CC 7D 00               519 	mov	r5,#0x00
   00CE                     520 00101$:
                            521 ;     genCmpLt
                            522 ;     genCmp
   00CE C3                  523 	clr	c
   00CF EC                  524 	mov	a,r4
   00D0 9A                  525 	subb	a,r2
   00D1 ED                  526 	mov	a,r5
   00D2 64 80               527 	xrl	a,#0x80
   00D4 8B F0               528 	mov	b,r3
   00D6 63 F0 80            529 	xrl	b,#0x80
   00D9 95 F0               530 	subb	a,b
                            531 ;     genIfxJump
                            532 ;	Peephole 108	removed ljmp by inverse jump logic
   00DB 50 07               533 	jnc	00105$
   00DD                     534 00109$:
                            535 ;     genPlus
                            536 ;     genPlusIncr
                            537 ;	tail increment optimized
   00DD 0C                  538 	inc	r4
   00DE BC 00 ED            539 	cjne	r4,#0x00,00101$
   00E1 0D                  540 	inc	r5
                            541 ;	Peephole 112.b	changed ljmp to sjmp
   00E2 80 EA               542 	sjmp	00101$
   00E4                     543 00105$:
   00E4 22                  544 	ret
                            545 	.area CSEG    (CODE)
   00E5                     546 _step:
   00E5 09                  547 	.db #0x09
   00E6 03                  548 	.db #0x03
   00E7 06                  549 	.db #0x06
   00E8 0C                  550 	.db #0x0C
                            551 	.area XINIT   (CODE)
