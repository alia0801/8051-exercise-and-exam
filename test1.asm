;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Tue Oct 01 19:15:46 2019
;--------------------------------------------------------
	.module test1
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _step
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
	.globl _dt
	.globl _dir
	.globl _turn
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
_dir::
	.ds 2
_dt::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;c:/sdcc/exam/test1.c:9: void main ( )
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
;c:/sdcc/exam/test1.c:12: dt=25000;
;     genAssign
	mov	_dt,#0xA8
	mov	(_dt + 1),#0x61
;c:/sdcc/exam/test1.c:14: while(1) {
00102$:
;c:/sdcc/exam/test1.c:15: dir=1; 
;     genAssign
	mov	_dir,#0x01
	clr	a
	mov	(_dir + 1),a
;c:/sdcc/exam/test1.c:16: for(i = 0; i <10; i++){
;     genAssign
	mov	r2,#0x0A
	mov	r3,#0x00
00106$:
;c:/sdcc/exam/test1.c:17: turn( );
;     genCall
	push	ar2
	push	ar3
	lcall	_turn
	pop	ar3
	pop	ar2
;     genDjnz
;     genMinus
;     genMinusDec
	dec	r2
	cjne	r2,#0xff,00117$
	dec	r3
00117$:
;c:/sdcc/exam/test1.c:16: for(i = 0; i <10; i++){
;     genIfx
	mov	a,r2
	orl	a,r3
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00106$
00118$:
;c:/sdcc/exam/test1.c:19: dir=2;
;     genAssign
	mov	_dir,#0x02
	clr	a
	mov	(_dir + 1),a
;c:/sdcc/exam/test1.c:20: for(i = 0; i <10; i++){
;     genAssign
	mov	r2,#0x0A
	mov	r3,#0x00
00109$:
;c:/sdcc/exam/test1.c:21: turn( );
;     genCall
	push	ar2
	push	ar3
	lcall	_turn
	pop	ar3
	pop	ar2
;     genDjnz
;     genMinus
;     genMinusDec
	dec	r2
	cjne	r2,#0xff,00119$
	dec	r3
00119$:
;c:/sdcc/exam/test1.c:20: for(i = 0; i <10; i++){
;     genIfx
	mov	a,r2
	orl	a,r3
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00109$
00120$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'turn'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 
;------------------------------------------------------------
;c:/sdcc/exam/test1.c:26: void turn( )
;	-----------------------------------------
;	 function turn
;	-----------------------------------------
_turn:
;c:/sdcc/exam/test1.c:29: if(dir == 1){  //turn right
;     genCmpEq
	mov	a,_dir
	cjne	a,#0x01,00122$
	mov	a,(_dir + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00123$
00122$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00123$:
;c:/sdcc/exam/test1.c:30: for(x=0;x<4;x++) {
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00106$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00114$
00124$:
;c:/sdcc/exam/test1.c:31: P1=step[x];
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_step
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_step >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	_P1,a
;c:/sdcc/exam/test1.c:32: delay(dt);
;     genCall
	mov	dpl,_dt
	mov	dph,(_dt + 1)
	push	ar2
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar2
;c:/sdcc/exam/test1.c:30: for(x=0;x<4;x++) {
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00106$
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00104$:
;c:/sdcc/exam/test1.c:35: else if(dir == 2){
;     genCmpEq
	mov	a,_dir
	cjne	a,#0x02,00125$
	mov	a,(_dir + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00126$
00125$:
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00126$:
;c:/sdcc/exam/test1.c:36: for(x=3;x>=0;x--){
;     genAssign
	mov	r2,#0x03
	mov	r3,#0x00
00110$:
;     genCmpLt
;     genCmp
	mov	a,r3
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	acc.7,00114$
00127$:
;c:/sdcc/exam/test1.c:37: P1=step[x];
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_step
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_step >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	_P1,a
;c:/sdcc/exam/test1.c:38: delay(dt);
;     genCall
	mov	dpl,_dt
	mov	dph,(_dt + 1)
	push	ar2
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar2
;c:/sdcc/exam/test1.c:36: for(x=3;x>=0;x--){
;     genMinus
;     genMinusDec
;	tail decrement optimized
	dec	r2
	cjne	r2,#0xff,00110$
	dec	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers r2 r3 
;x                         Allocated to registers r4 r5 
;------------------------------------------------------------
;c:/sdcc/exam/test1.c:42: void delay(int t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;c:/sdcc/exam/test1.c:45: for(x=0;x<t;x++)
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
_step:
	.db #0x09
	.db #0x03
	.db #0x06
	.db #0x0C
	.area XINIT   (CODE)
