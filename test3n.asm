;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Tue Oct 15 17:50:25 2019
;--------------------------------------------------------
	.module test3n
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _startmsg
	.globl _msg
	.globl _keymsg
	.globl _key
	.globl _ser
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
	.globl _send
	.globl _getkey
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;x                         Allocated to registers r2 r3 
;y                         Allocated to registers r2 r3 
;------------------------------------------------------------
;c:/sdcc/exam/test3n.c:20: void main( )
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
;c:/sdcc/exam/test3n.c:24: SCON=0x50;  //SCON暫存器01010000 
;     genAssign
	mov	_SCON,#0x50
;c:/sdcc/exam/test3n.c:25: TMOD=0x20;  //上次的，設定timer1為mode2 
;     genAssign
	mov	_TMOD,#0x20
;c:/sdcc/exam/test3n.c:26: TH1=0xe6;   //講義上有說，用來計算baud
;     genAssign
	mov	_TH1,#0xE6
;c:/sdcc/exam/test3n.c:27: TR1=1;      //timer1啟動 
;     genAssign
	setb	_TR1
;c:/sdcc/exam/test3n.c:29: for(y=0;y<5;y++)        //開始時先送出"Hello world" 
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x05
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00105$
00118$:
;c:/sdcc/exam/test3n.c:30: send(startmsg[y]);  //ps.要送資料要以char送出 
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_startmsg
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_startmsg >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r4
	mov	r4,a
	mov	dpl,a
	push	ar2
	push	ar3
	lcall	_send
	pop	ar3
	pop	ar2
;c:/sdcc/exam/test3n.c:29: for(y=0;y<5;y++)        //開始時先送出"Hello world" 
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
;c:/sdcc/exam/test3n.c:31: while(1)
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00105$:
;c:/sdcc/exam/test3n.c:33: x = getkey();       //將按下的按鈕的int存進來 
;     genCall
	lcall	_getkey
	mov	r2,dpl
;c:/sdcc/exam/test3n.c:34: if( x>=0 && x<=15)
;     genCmpLt
;     genCmp
;	peephole 177.g	optimized mov sequence
	mov	a,dph
	mov	r3,a
;     genIfxJump
;	Peephole 112.a	removed ljmp by inverse jump logic
	jb	acc.7,00105$
00119$:
;     genCmpGt
;     genCmp
	clr	c
	mov	a,#0x0F
	subb	a,r2
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00105$
00120$:
;c:/sdcc/exam/test3n.c:35: send(msg[x]);   //轉換為char後送出到PC 
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_msg
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_msg >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r2
	mov	r2,a
	mov	dpl,a
	lcall	_send
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;ch                        Allocated to registers 
;------------------------------------------------------------
;c:/sdcc/exam/test3n.c:38: void send(char ch)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
;     genReceive
	mov	_SBUF,dpl
;c:/sdcc/exam/test3n.c:41: while(TI == 0)  //若TI旗標為0(資料正在傳送) 
00101$:
;     genNot
	mov	c,_TI
	cpl	c
	clr	a
	rlc	a
;     genIfx
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
;	Peephole 109	removed ljmp by inverse jump logic
	jnz	00101$
00108$:
;c:/sdcc/exam/test3n.c:43: TI=0;           //要用軟體方式把旗標改回0 
;     genAssign
	clr	_TI
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getkey'
;------------------------------------------------------------
;i                         Allocated to registers r4 r5 
;k                         Allocated to registers r2 r3 
;------------------------------------------------------------
;c:/sdcc/exam/test3n.c:46: int getkey()
;	-----------------------------------------
;	 function getkey
;	-----------------------------------------
_getkey:
;c:/sdcc/exam/test3n.c:49: int k=-1;  //判斷是否有按下按鍵 和 按下了什麼按鍵用 
;     genAssign
	mov	r2,#0xFF
	mov	r3,#0xFF
;c:/sdcc/exam/test3n.c:50: while(1)
;c:/sdcc/exam/test3n.c:52: for(i=0;i<4;i++)
00139$:
;     genAssign
	mov	r4,#0x00
	mov	r5,#0x00
00116$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00143$
	ljmp	00119$
00143$:
;c:/sdcc/exam/test3n.c:54: P1=ser[i];      //迴圈定P1為11111110 11111101 11111011 11110111 
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_ser
	mov	dpl,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#(_ser >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
;     genAssign
	mov	_P1,r6
;c:/sdcc/exam/test3n.c:55: if(P1!=ser[i])  //讀取P1，若P1不是剛剛定的那樣->有按下某個按鍵，加以列(行)判斷按下什麼按鍵 
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r7,a
	cjne	a,ar6,00144$
	ljmp	00113$
00144$:
;c:/sdcc/exam/test3n.c:57: if(P1==keymsg[i]) 
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_keymsg
	mov	dpl,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#(_keymsg >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r7,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar6,00110$
;00145$:
;	Peephole 200	removed redundant sjmp
00146$:
;c:/sdcc/exam/test3n.c:58: k=key[i];
;     genLeftShift
;     genLeftShiftLiteral
;     genlshTwo
	mov	ar6,r4
	mov	a,r5
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_key
	mov	dpl,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,#(_key >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
	ljmp	00113$
00110$:
;c:/sdcc/exam/test3n.c:59: else if(P1==keymsg[i+4]) 
;     genCast
	mov	ar6,r4
;     genPlus
;     genPlusIncr
	mov	a,#0x04
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
;     genPlus
;	Peephole 240	use clr instead of addc a,#0
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
;	Peephole 186.d	optimized movc sequence
	mov	dptr,#_keymsg
	movc	a,@a+dptr
	mov	r7,a
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r0,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar7,00107$
;00147$:
;	Peephole 200	removed redundant sjmp
00148$:
;c:/sdcc/exam/test3n.c:60: k=key[i+4];
;     genPlus
;     genPlusIncr
	mov	a,#0x04
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
;     genMult
;     genMultOneByte
	clr	F0
	mov	b,#0x02
	jnb	acc.7,00149$
	cpl	F0
	cpl	a
	inc	a
00149$:
	mul	ab
	jnb	F0,00150$
	cpl	a
	add	a,#1
	xch	a,b
	cpl	a
	addc	a,#0
	xch	a,b
00150$:
;     genPlus
	add	a,#_key
	mov	dpl,a
	mov	a,#(_key >> 8)
	addc	a,b
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
	ljmp	00113$
00107$:
;c:/sdcc/exam/test3n.c:61: else if(P1==keymsg[i+8]) 
;     genPlus
	mov	a,#0x08
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
;     genPlus
;	Peephole 240	use clr instead of addc a,#0
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
;	Peephole 186.d	optimized movc sequence
	mov	dptr,#_keymsg
	movc	a,@a+dptr
	mov	r7,a
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r0,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar7,00104$
;00151$:
;	Peephole 200	removed redundant sjmp
00152$:
;c:/sdcc/exam/test3n.c:62: k=key[i+8];
;     genPlus
	mov	a,#0x08
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
;     genMult
;     genMultOneByte
	clr	F0
	mov	b,#0x02
	jnb	acc.7,00153$
	cpl	F0
	cpl	a
	inc	a
00153$:
	mul	ab
	jnb	F0,00154$
	cpl	a
	add	a,#1
	xch	a,b
	cpl	a
	addc	a,#0
	xch	a,b
00154$:
;     genPlus
	add	a,#_key
	mov	dpl,a
	mov	a,#(_key >> 8)
	addc	a,b
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00104$:
;c:/sdcc/exam/test3n.c:63: else if(P1==keymsg[i+12]) 
;     genPlus
	mov	a,#0x0C
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
;     genPlus
;	Peephole 240	use clr instead of addc a,#0
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
;	Peephole 186.d	optimized movc sequence
	mov	dptr,#_keymsg
	movc	a,@a+dptr
	mov	r7,a
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r0,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar7,00113$
;00155$:
;	Peephole 200	removed redundant sjmp
00156$:
;c:/sdcc/exam/test3n.c:64: k=key[i+12];
;     genPlus
	mov	a,#0x0C
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
;     genMult
;     genMultOneByte
	clr	F0
	mov	b,#0x02
	jnb	acc.7,00157$
	cpl	F0
	cpl	a
	inc	a
00157$:
	mul	ab
	jnb	F0,00158$
	cpl	a
	add	a,#1
	xch	a,b
	cpl	a
	addc	a,#0
	xch	a,b
00158$:
;     genPlus
	add	a,#_key
	mov	dpl,a
	mov	a,#(_key >> 8)
	addc	a,b
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
00113$:
;c:/sdcc/exam/test3n.c:66: if (k!=-1) break ;  //若有按下按鍵，則k會變為對應到的int，不會是-1，break for迴圈 
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0xFF,00119$
	cjne	r3,#0xFF,00119$
;00159$:
;	Peephole 200	removed redundant sjmp
00160$:
;c:/sdcc/exam/test3n.c:52: for(i=0;i<4;i++)
;     genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00161$
	inc	r5
00161$:
	ljmp	00116$
00119$:
;c:/sdcc/exam/test3n.c:68: if(k!=-1)               //若有按下按鍵，準備回傳值 
;     genCmpEq
	cjne	r2,#0xFF,00162$
	cjne	r3,#0xFF,00162$
	ljmp	00139$
00162$:
;c:/sdcc/exam/test3n.c:69: while(1)
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_ser
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#(_ser >> 8)
	mov	r5,a
00123$:
;c:/sdcc/exam/test3n.c:71: P1=ser[i];          //將P1再定回為原來判斷的樣子 
;     genPointerGet
;     genCodePointerGet
	mov	dpl,r4
	mov	dph,r5
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
;     genAssign
	mov	_P1,r6
;c:/sdcc/exam/test3n.c:72: if(P1==ser[i])      //若P1是原來判斷的樣子(用來保證按鍵被放開了) 
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r7,a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 199	optimized misc jump sequence
	cjne	a,ar6,00123$
;00163$:
;	Peephole 200	removed redundant sjmp
00164$:
;c:/sdcc/exam/test3n.c:73: return k;       //回傳int值k 
;     genRet
	mov	dpl,r2
	mov	dph,r3
00130$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers r2 r3 
;x                         Allocated to registers r4 r5 
;------------------------------------------------------------
;c:/sdcc/exam/test3n.c:78: void delay (int t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;c:/sdcc/exam/test3n.c:81: for (x=0;x<t;x++)
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
_ser:
	.db #0xFE
	.db #0xFD
	.db #0xFB
	.db #0xF7
_key:
	.byte #0x01,#0x00
	.byte #0x02,#0x00
	.byte #0x03,#0x00
	.byte #0x0C,#0x00
	.byte #0x04,#0x00
	.byte #0x05,#0x00
	.byte #0x06,#0x00
	.byte #0x0D,#0x00
	.byte #0x07,#0x00
	.byte #0x08,#0x00
	.byte #0x09,#0x00
	.byte #0x0E,#0x00
	.byte #0x0A,#0x00
	.byte #0x00,#0x00
	.byte #0x0B,#0x00
	.byte #0x0F,#0x00
_keymsg:
	.db #0xEE
	.db #0xED
	.db #0xEB
	.db #0xE7
	.db #0xDE
	.db #0xDD
	.db #0xDB
	.db #0xD7
	.db #0xBE
	.db #0xBD
	.db #0xBB
	.db #0xB7
	.db #0x7E
	.db #0x7D
	.db #0x7B
	.db #0x77
_msg:
	.ascii "0123456789abcdef"
	.db 0x00
_startmsg:
	.ascii "Hello "
	.db 0x00
	.area XINIT   (CODE)
