;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Tue Oct 29 17:31:56 2019
;--------------------------------------------------------
	.module test5
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _int_0
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
	ljmp	_int_0
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
;c:/sdcc/exam/test5.c:7: void main()
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
;c:/sdcc/exam/test5.c:9: IT0 = 1;
;     genAssign
	setb	_IT0
;c:/sdcc/exam/test5.c:10: EX0 = 1;
;     genAssign
	setb	_EX0
;c:/sdcc/exam/test5.c:11: EA = 1;
;     genAssign
	setb	_EA
;c:/sdcc/exam/test5.c:12: LED = 0x00;  //預設全亮 
;     genAssign
	mov	_P0,#0x00
;c:/sdcc/exam/test5.c:13: WR &= 0xbf;  //10111111 16(WR)腳位拉低 
;     genAnd
	anl	_P3,#0xBF
;c:/sdcc/exam/test5.c:14: WR |= 0x40;  //01000000 16(WR)腳位拉高 (給ADC0804信號，做一次ADC轉換) 
;     genOr
	orl	_P3,#0x40
;c:/sdcc/exam/test5.c:15: while(1);
00102$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int_0'
;------------------------------------------------------------
;------------------------------------------------------------
;c:/sdcc/exam/test5.c:18: void int_0(void) interrupt 0
;	-----------------------------------------
;	 function int_0
;	-----------------------------------------
_int_0:
	push	acc
	push	ar2
	push	ar3
	push	psw
	mov	psw,#0x00
;c:/sdcc/exam/test5.c:20: if( DB == 0 ){
;     genCmpEq
	mov	a,_P1
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00141$
00140$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00126$
00141$:
;c:/sdcc/exam/test5.c:21: LED = 0xff;
;     genAssign
	mov	_P0,#0xFF
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00126$:
;c:/sdcc/exam/test5.c:23: else if( DB > 0 && DB < 32 ){
;     genCmpGt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,_P1
	add	a,#0xff - 0x00
	jnc	00122$
00142$:
;     genCmpLt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
	mov	a,#0x100 - 0x20
	add	a,_P1
	jc	00122$
00143$:
;c:/sdcc/exam/test5.c:24: LED = 0xfe;
;     genAssign
	mov	_P0,#0xFE
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00122$:
;c:/sdcc/exam/test5.c:26: else if( DB < 64 ){
;     genCmpLt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
	mov	a,#0x100 - 0x40
	add	a,_P1
	jc	00119$
00144$:
;c:/sdcc/exam/test5.c:27: LED = 0xfc;
;     genAssign
	mov	_P0,#0xFC
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00119$:
;c:/sdcc/exam/test5.c:29: else if( DB < 96 ){
;     genCmpLt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
	mov	a,#0x100 - 0x60
	add	a,_P1
	jc	00116$
00145$:
;c:/sdcc/exam/test5.c:30: LED = 0xf8;
;     genAssign
	mov	_P0,#0xF8
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00116$:
;c:/sdcc/exam/test5.c:32: else if( DB < 128 ){
;     genCmpLt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
	mov	a,#0x100 - 0x80
	add	a,_P1
	jc	00113$
00146$:
;c:/sdcc/exam/test5.c:33: LED = 0xf0;
;     genAssign
	mov	_P0,#0xF0
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00113$:
;c:/sdcc/exam/test5.c:35: else if( DB < 160 ){
;     genCmpLt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
	mov	a,#0x100 - 0xA0
	add	a,_P1
	jc	00110$
00147$:
;c:/sdcc/exam/test5.c:36: LED = 0xe0;
;     genAssign
	mov	_P0,#0xE0
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00110$:
;c:/sdcc/exam/test5.c:38: else if( DB < 192 ){
;     genCmpLt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
	mov	a,#0x100 - 0xC0
	add	a,_P1
	jc	00107$
00148$:
;c:/sdcc/exam/test5.c:39: LED = 0xc0;
;     genAssign
	mov	_P0,#0xC0
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00107$:
;c:/sdcc/exam/test5.c:41: else if( DB < 224 ){
;     genCmpLt
;     genCmp
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
;	Peephole 132.e	optimized genCmpLt by inverse logic (carry differs)
	mov	a,#0x100 - 0xE0
	add	a,_P1
	jc	00104$
00149$:
;c:/sdcc/exam/test5.c:42: LED = 0x80;
;     genAssign
	mov	_P0,#0x80
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00104$:
;c:/sdcc/exam/test5.c:44: else if( DB < 256 ){
;     genCast
	mov	r2,_P1
	mov	r3,#0x00
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x81
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00127$
00150$:
;c:/sdcc/exam/test5.c:45: LED = 0x00;
;     genAssign
	mov	_P0,#0x00
00127$:
;c:/sdcc/exam/test5.c:48: WR &= 0xbf;       //10111111 16(WR)腳位拉低 
;     genAnd
	anl	_P3,#0xBF
;c:/sdcc/exam/test5.c:49: WR |= 0x40;       //01000000 16(WR)腳位拉高 (給ADC0804信號，做一次ADC轉換) 
;     genOr
	orl	_P3,#0x40
00128$:
	pop	psw
	pop	ar3
	pop	ar2
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area XINIT   (CODE)
