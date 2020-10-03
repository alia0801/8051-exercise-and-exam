;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Tue Oct 08 17:28:38 2019
;--------------------------------------------------------
	.module test2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _light
	.globl _intx
	.globl _tmiintrt
	.globl _main
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EA
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _RCAP2L
	.globl _RCAP2H
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _IP
	.globl _IE
	.globl _AUXR
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _counter
	.globl _show
	.globl _delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_AUXR	=	0x008e
_IE	=	0x00a8
_IP	=	0x00b8
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_RCAP2H	=	0x00cb
_RCAP2L	=	0x00ca
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
	.area RSEG    (DATA)
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_EA	=	0x00af
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
;--------------------------------------------------------
; overlayable register banks 
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_counter::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area CSEG    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area CSEG    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_intx
	.ds	5
	ljmp	_tmiintrt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;c:/sdcc/exam/test2.c:23: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;c:/sdcc/exam/test2.c:25: TCON = 0x00;   //00000000 初始化TCON暫存器 
;     genAssign
	mov	_TCON,#0x00
;c:/sdcc/exam/test2.c:26: TMOD = 0x01;   //00000001 設定Timer0為16位元計數器 
;     genAssign
	mov	_TMOD,#0x01
;c:/sdcc/exam/test2.c:27: IP = 0x01;     //00000001 設定INT0(8051的12腳位)優先 //
;     genAssign
	mov	_IP,#0x01
;c:/sdcc/exam/test2.c:28: IE = 0x83;     //10000011 中斷致能，啟用了Timer0 overflow的中斷和INT0的中斷 
;     genAssign
	mov	_IE,#0x83
;c:/sdcc/exam/test2.c:30: TL0 = _TL0_; //設定差50000個machine cycle才觸發中斷 
;     genAssign
	mov	_TL0,#0xDF
;c:/sdcc/exam/test2.c:31: TH0 = _TH0_; 
;     genAssign
	mov	_TH0,#0xB1
;c:/sdcc/exam/test2.c:33: TR0 = 1;     //TCON內的TR0設定為1，啟動Timer0 
;     genAssign
	setb	_TR0
;c:/sdcc/exam/test2.c:34: P1 = 0xff;   //11111111，預設8個LED全暗 
;     genAssign
	mov	_P1,#0xFF
;c:/sdcc/exam/test2.c:35: counter = 0;
;     genAssign
	mov	_counter,#0x00
;c:/sdcc/exam/test2.c:36: while(1)
00102$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tmiintrt'
;------------------------------------------------------------
;------------------------------------------------------------
;c:/sdcc/exam/test2.c:42: void tmiintrt(void) interrupt 1  //Timer0 overflow中斷 
;	-----------------------------------------
;	 function tmiintrt
;	-----------------------------------------
_tmiintrt:
	push	acc
	push	psw
	mov	psw,#0x00
;c:/sdcc/exam/test2.c:44: TL0 = _TL0_;  //重設時間
;     genAssign
	mov	_TL0,#0xDF
;c:/sdcc/exam/test2.c:45: TH0 = _TH0_;
;     genAssign
	mov	_TH0,#0xB1
;c:/sdcc/exam/test2.c:46: counter++;
;     genPlus
;     genPlusIncr
	inc	_counter
;c:/sdcc/exam/test2.c:47: if(counter == COUNTER)
;     genCmpEq
	mov	a,_counter
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,#0x32,00106$
;00110$:
;	Peephole 200	removed redundant sjmp
00111$:
;c:/sdcc/exam/test2.c:49: if (P1 == 0xff)  //若全暗->全亮 
;     genCmpEq
	mov	a,_P1
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,#0xFF,00102$
;00112$:
;	Peephole 200	removed redundant sjmp
00113$:
;c:/sdcc/exam/test2.c:50: P1 = 0x00;
;     genAssign
	mov	_P1,#0x00
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00102$:
;c:/sdcc/exam/test2.c:52: P1 = 0xff;
;     genAssign
	mov	_P1,#0xFF
00103$:
;c:/sdcc/exam/test2.c:53: counter = 0;
;     genAssign
	mov	_counter,#0x00
00106$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'intx'
;------------------------------------------------------------
;------------------------------------------------------------
;c:/sdcc/exam/test2.c:57: void intx(void) interrupt 0  //INT0(8051 12腳位)外部中斷 
;	-----------------------------------------
;	 function intx
;	-----------------------------------------
_intx:
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;c:/sdcc/exam/test2.c:59: if(P3==0xfa)  //按了接8051 10腳位的按鈕 
;     genCmpEq
	mov	a,_P3
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,#0xFA,00105$
;00111$:
;	Peephole 200	removed redundant sjmp
00112$:
;c:/sdcc/exam/test2.c:60: show(0);
;     genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0000
	lcall	_show
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00105$:
;c:/sdcc/exam/test2.c:61: else if (P3 == 0xf9)  //按了接8051 11腳位的按鈕 
;     genCmpEq
	mov	a,_P3
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,#0xF9,00102$
;00113$:
;	Peephole 200	removed redundant sjmp
00114$:
;c:/sdcc/exam/test2.c:62: show(1);
;     genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
	lcall	_show
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00102$:
;c:/sdcc/exam/test2.c:64: show(2);  //同時按下兩個按鈕(不太可能同時按下，兩個按鈕都壓著別放開試試) 
;     genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0002
	lcall	_show
00107$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'show'
;------------------------------------------------------------
;method                    Allocated to registers r2 r3 
;x                         Allocated with name '_show_x_1_1'
;------------------------------------------------------------
;c:/sdcc/exam/test2.c:67: void show(int method)
;	-----------------------------------------
;	 function show
;	-----------------------------------------
_show:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;c:/sdcc/exam/test2.c:70: if (method ==0 || method == 2)
;     genCmpEq
	cjne	r2,#0x00,00111$
	cjne	r3,#0x00,00111$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00111$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x02,00102$
	cjne	r3,#0x00,00102$
;00112$:
;	Peephole 200	removed redundant sjmp
00113$:
00101$:
;c:/sdcc/exam/test2.c:72: IE = 0x83; 
;     genAssign
	mov	_IE,#0x83
00102$:
;c:/sdcc/exam/test2.c:79: if (method ==1 || method == 2)
;     genCmpEq
	cjne	r2,#0x01,00114$
	cjne	r3,#0x00,00114$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00114$:
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x02,00107$
	cjne	r3,#0x00,00107$
;00115$:
;	Peephole 200	removed redundant sjmp
00116$:
00104$:
;c:/sdcc/exam/test2.c:81: IE = 0x81; 
;     genAssign
	mov	_IE,#0x81
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers r2 r3 
;x                         Allocated to registers r4 r5 
;------------------------------------------------------------
;c:/sdcc/exam/test2.c:89: void delay(int t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;c:/sdcc/exam/test2.c:92: for (x=0;x<t;x++);
;     genAssign
	mov	r4,#0x00
	mov	r5,#0x00
00101$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00105$
00109$:
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r4
	cjne	r4,#0x00,00101$
	inc	r5
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00105$:
	ret
	.area CSEG    (CODE)
_light:
	.db #0xFE
	.db #0xFD
	.db #0xFB
	.db #0xF7
	.db #0xEF
	.db #0xDF
	.db #0xBF
	.db #0x7F
	.area XINIT   (CODE)
