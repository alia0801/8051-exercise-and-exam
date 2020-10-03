;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Tue Oct 22 18:45:54 2019
;--------------------------------------------------------
	.module test4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _msg
	.globl _keymsg
	.globl _key
	.globl _ser
	.globl _addr
	.globl _init
	.globl _interr_s
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
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
	.globl _P0
	.globl _phones
	.globl _pcount
	.globl _temp
	.globl _ch
	.globl _rx_flag
	.globl _getkey
	.globl _LCDcmd
	.globl _LCDdata
	.globl _delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
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
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks 
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rx_flag::
	.ds 2
_ch::
	.ds 1
_temp::
	.ds 10
_pcount::
	.ds 2
_phones::
	.ds 50
_main_num_1_1::
	.ds 1
_main_x_1_1::
	.ds 2
_main_j_1_1::
	.ds 2
_main_state_1_1::
	.ds 2
_main_p_1_1::
	.ds 2
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_interr_s
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
;c:/sdcc/exam/test4.c:28: int pcount = 0;
;     genAssign
	clr	a
	mov	_pcount,a
	mov	(_pcount + 1),a
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
;num                       Allocated with name '_main_num_1_1'
;i                         Allocated to registers r4 r5 
;x                         Allocated with name '_main_x_1_1'
;j                         Allocated with name '_main_j_1_1'
;k                         Allocated to registers r3 r2 
;t                         Allocated to registers 
;state                     Allocated with name '_main_state_1_1'
;ad                        Allocated to registers 
;p                         Allocated with name '_main_p_1_1'
;------------------------------------------------------------
;c:/sdcc/exam/test4.c:31: void main()
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
;c:/sdcc/exam/test4.c:36: int state = 1; //state=1 store   state=0 see
;     genAssign
	mov	_main_state_1_1,#0x01
	clr	a
	mov	(_main_state_1_1 + 1),a
;c:/sdcc/exam/test4.c:39: P3_2 = 0;   // RS初始化為0 
;     genAssign
	clr	_P3_2
;c:/sdcc/exam/test4.c:40: P3_3 = 0;   // R_W初始化為0 
;     genAssign
	clr	_P3_3
;c:/sdcc/exam/test4.c:41: P3_4 = 0;   // ENABLE初始化為0，LCD致能失效 
;     genAssign
	clr	_P3_4
;c:/sdcc/exam/test4.c:45: pcount = 0;
;     genAssign
;c:/sdcc/exam/test4.c:47: for(i = 0; i < 5; i++)
;     genAssign
;	Peephole 3.h	changed mov r4,#0x00 to r4,a
	clr	a
	mov	_pcount,a
	mov	(_pcount + 1),a
	mov	r4,a
;	Peephole 3.i	changed mov r5,#0x00 to r5,a
	mov	r5,a
00140$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,#0x05
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00161$
00182$:
;c:/sdcc/exam/test4.c:54: LCDcmd(init[i]); 
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_init
	mov	dpl,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#(_init >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r6
	mov	r6,a
	mov	dpl,a
	push	ar4
	push	ar5
	lcall	_LCDcmd
	pop	ar5
	pop	ar4
;c:/sdcc/exam/test4.c:47: for(i = 0; i < 5; i++)
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r4
	cjne	r4,#0x00,00140$
	inc	r5
;c:/sdcc/exam/test4.c:56: while(1)
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00140$
00161$:
;     genAssign
;     genAssign
;	Peephole 3.h	changed mov r6,#0x00 to r6,a
	clr	a
	mov	_main_p_1_1,a
	mov	(_main_p_1_1 + 1),a
	mov	r6,a
;	Peephole 3.i	changed mov r7,#0x00 to r7,a
	mov	r7,a
00138$:
;c:/sdcc/exam/test4.c:58: if (rx_flag==1)
;     genCmpEq
	mov	a,_rx_flag
	cjne	a,#0x01,00183$
	mov	a,(_rx_flag + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00184$
00183$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00184$:
;c:/sdcc/exam/test4.c:60: rx_flag = 0; 
;     genAssign
	clr	a
	mov	_rx_flag,a
	mov	(_rx_flag + 1),a
;c:/sdcc/exam/test4.c:61: SBUF = ch;
;     genAssign
	mov	_SBUF,_ch
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00138$
00135$:
;c:/sdcc/exam/test4.c:65: x=getkey(); 
;     genCall
	push	ar6
	push	ar7
	lcall	_getkey
	mov	_main_x_1_1,dpl
	mov	(_main_x_1_1 + 1),dph
	pop	ar7
	pop	ar6
;c:/sdcc/exam/test4.c:66: num = msg[x];
;     genPlus
	mov	a,_main_x_1_1
	add	a,#_msg
	mov	dpl,a
	mov	a,(_main_x_1_1 + 1)
	addc	a,#(_msg >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
	mov	_main_num_1_1,a
;c:/sdcc/exam/test4.c:67: if(x==12){//C clear all
;     genCmpEq
	mov	a,_main_x_1_1
	cjne	a,#0x0C,00185$
	mov	a,(_main_x_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00186$
00185$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00130$
00186$:
;c:/sdcc/exam/test4.c:68: LCDcmd(0x01);  
;     genCall
	mov	dpl,#0x01
	push	ar6
	push	ar7
	lcall	_LCDcmd
	pop	ar7
	pop	ar6
	ljmp	00131$
00130$:
;c:/sdcc/exam/test4.c:71: else if(x==15){//F enter read mode
;     genCmpEq
	mov	a,_main_x_1_1
	cjne	a,#0x0F,00187$
	mov	a,(_main_x_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00188$
00187$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00188$:
;c:/sdcc/exam/test4.c:72: state = 0;
;     genAssign
;c:/sdcc/exam/test4.c:73: pcount = 0;
;     genAssign
;	Peephole 3.d	removed redundant clr
;c:/sdcc/exam/test4.c:74: for(k=0; k<10; k++){	
;     genAssign
;	Peephole 3.j	changed mov r3,#0x00 to r3,a
	clr a
	mov _main_state_1_1,a
	mov (_main_state_1_1 + 1),a
	mov _pcount,a
	mov (_pcount + 1),a
	mov r3,a
;	Peephole 3.k	changed mov r2,#0x00 to r2,a
	mov r2,a
00144$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r3
	subb	a,#0x0A
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00189$
	ljmp	00131$
00189$:
;c:/sdcc/exam/test4.c:75: LCDcmd(addr[k]);//依序設定顯示位置 
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,#_addr
	mov	dpl,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	addc	a,#(_addr >> 8)
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
	push	ar6
	push	ar7
	lcall	_LCDcmd
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
;c:/sdcc/exam/test4.c:76: LCDdata( phones[0][k] );//顯示數字 
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,#_phones
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	dpl,@r0
;     genCall
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	lcall	_LCDdata
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
;c:/sdcc/exam/test4.c:74: for(k=0; k<10; k++){	
;     genPlus
;     genPlusIncr
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 243	avoided branch to sjmp
	cjne	r3,#0x00,00144$
	inc	r2
00190$:
	sjmp	00144$
00127$:
;c:/sdcc/exam/test4.c:80: else if(state == 1){//store mode
;     genCmpEq
	mov	a,_main_state_1_1
	cjne	a,#0x01,00191$
	mov	a,(_main_state_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00192$
00191$:
	ljmp	00124$
00192$:
;c:/sdcc/exam/test4.c:82: if(x==14){//E enter
;     genCmpEq
	mov	a,_main_x_1_1
	cjne	a,#0x0E,00193$
	mov	a,(_main_x_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00194$
00193$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00194$:
;c:/sdcc/exam/test4.c:83: j=0;  
;     genAssign
	clr	a
	mov	_main_j_1_1,a
	mov	(_main_j_1_1 + 1),a
;c:/sdcc/exam/test4.c:87: if(p<5){//未超過5筆 
;     genCmpLt
;     genCmp
	clr	c
	mov	a,_main_p_1_1
	subb	a,#0x05
	mov	a,(_main_p_1_1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00195$
	ljmp	00131$
00195$:
;c:/sdcc/exam/test4.c:88: for(k=0; k<10; k++){//將temp內東西存到電話簿
;     genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#_phones
	mov	r2,a
;     genAssign
	mov	r3,#0x00
	mov	r4,#0x00
00148$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r3
	subb	a,#0x0A
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00151$
00196$:
;c:/sdcc/exam/test4.c:89: phones[p][k] = temp[k];
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r0,a
;     genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,#_temp
	mov	r1,a
;     genPointerGet
;     genNearPointerGet
	mov	ar5,@r1
;     genPointerSet
;     genNearPointerSet
	mov	@r0,ar5
;c:/sdcc/exam/test4.c:88: for(k=0; k<10; k++){//將temp內東西存到電話簿
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r3
	cjne	r3,#0x00,00148$
	inc	r4
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00148$
00151$:
;c:/sdcc/exam/test4.c:91: p++;
;     genPlus
	mov	a,#0x0A
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
;     genPlus
;     genPlusIncr
	inc	_main_p_1_1
	clr	a
	cjne	a,_main_p_1_1,00197$
	inc	(_main_p_1_1 + 1)
00197$:
;c:/sdcc/exam/test4.c:92: LCDcmd(0x01); 	
;     genCall
	mov	dpl,#0x01
	push	ar6
	push	ar7
	lcall	_LCDcmd
	pop	ar7
	pop	ar6
	ljmp	00131$
00110$:
;c:/sdcc/exam/test4.c:95: } else if(x<10){//是數字
;     genCmpLt
;     genCmp
	clr	c
	mov	a,_main_x_1_1
	subb	a,#0x0A
	mov	a,(_main_x_1_1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00198$
	ljmp	00131$
00198$:
;c:/sdcc/exam/test4.c:97: if(j<10){//確認未超過10碼 
;     genCmpLt
;     genCmp
	clr	c
	mov	a,_main_j_1_1
	subb	a,#0x0A
	mov	a,(_main_j_1_1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00199$
	ljmp	00131$
00199$:
;c:/sdcc/exam/test4.c:98: LCDcmd(addr[j]);//設定顯示位置 
;     genPlus
	mov	a,_main_j_1_1
	add	a,#_addr
	mov	dpl,a
	mov	a,(_main_j_1_1 + 1)
	addc	a,#(_addr >> 8)
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
	push	ar6
	push	ar7
	lcall	_LCDcmd
	pop	ar7
	pop	ar6
;c:/sdcc/exam/test4.c:99: temp[j] = num;
;     genPlus
	mov	a,_main_j_1_1
	add	a,#_temp
;     genPointerSet
;     genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	@r0,_main_num_1_1
;c:/sdcc/exam/test4.c:100: j++;
;     genPlus
;     genPlusIncr
	inc	_main_j_1_1
	clr	a
	cjne	a,_main_j_1_1,00200$
	inc	(_main_j_1_1 + 1)
00200$:
;c:/sdcc/exam/test4.c:101: if(j == 10){
;     genCmpEq
	mov	a,_main_j_1_1
	cjne	a,#0x0A,00201$
	mov	a,(_main_j_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00202$
00201$:
	ljmp	00131$
00202$:
;c:/sdcc/exam/test4.c:102: j = 0;
;     genAssign
	clr	a
	mov	_main_j_1_1,a
	mov	(_main_j_1_1 + 1),a
	ljmp	00131$
00124$:
;c:/sdcc/exam/test4.c:108: else if(state == 0){//read mode 
;     genCmpEq
	mov	a,_main_state_1_1
	jnz	00203$
	mov	a,(_main_state_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00204$
00203$:
	ljmp	00131$
00204$:
;c:/sdcc/exam/test4.c:109: if(x == 11){//B return store mode 
;     genCmpEq
	mov	a,_main_x_1_1
	cjne	a,#0x0B,00205$
	mov	a,(_main_x_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00206$
00205$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00206$:
;c:/sdcc/exam/test4.c:110: state = 1;
;     genAssign
	mov	_main_state_1_1,#0x01
	clr	a
	mov	(_main_state_1_1 + 1),a
;c:/sdcc/exam/test4.c:111: LCDcmd(0x01); 
;     genCall
	mov	dpl,#0x01
	push	ar6
	push	ar7
	lcall	_LCDcmd
	pop	ar7
	pop	ar6
	ljmp	00131$
00119$:
;c:/sdcc/exam/test4.c:113: else if(x == 13){//D see next
;     genCmpEq
	mov	a,_main_x_1_1
	cjne	a,#0x0D,00207$
	mov	a,(_main_x_1_1 + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00208$
00207$:
	ljmp	00131$
00208$:
;c:/sdcc/exam/test4.c:114: pcount++;
;     genPlus
;     genPlusIncr
	inc	_pcount
	clr	a
	cjne	a,_pcount,00209$
	inc	(_pcount + 1)
00209$:
;c:/sdcc/exam/test4.c:115: if(pcount==5){
;     genCmpEq
	mov	a,_pcount
	cjne	a,#0x05,00210$
	mov	a,(_pcount + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00211$
00210$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00211$:
;c:/sdcc/exam/test4.c:116: pcount = 0;
;     genAssign
	clr	a
	mov	_pcount,a
	mov	(_pcount + 1),a
00113$:
;c:/sdcc/exam/test4.c:118: if(pcount<5){
;     genCmpLt
;     genCmp
	clr	c
	mov	a,_pcount
	subb	a,#0x05
	mov	a,(_pcount + 1)
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00212$
	ljmp	00131$
00212$:
;c:/sdcc/exam/test4.c:119: for(k=0; k<10; k++){	
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00152$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00131$
00213$:
;c:/sdcc/exam/test4.c:120: LCDcmd(addr[k]);//依序設定顯示位置 
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_addr
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_addr >> 8)
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
	push	ar6
	push	ar7
	lcall	_LCDcmd
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
;c:/sdcc/exam/test4.c:121: LCDdata( phones[pcount][k] );//顯示數字 
;     genAssign
	mov	__mulint_PARM_2,#0x0A
	clr	a
	mov	(__mulint_PARM_2 + 1),a
;     genCall
	mov	dpl,_pcount
	mov	dph,(_pcount + 1)
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
;     genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#_phones
	mov	r4,a
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	dpl,@r0
;     genCall
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	lcall	_LCDdata
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
;c:/sdcc/exam/test4.c:119: for(k=0; k<10; k++){	
;     genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 243	avoided branch to sjmp
	cjne	r2,#0x00,00152$
	inc	r3
00214$:
	sjmp	00152$
00131$:
;c:/sdcc/exam/test4.c:127: if(x>=10){//不是數字 顯示在第2行 
;     genCmpLt
;     genCmp
	clr	c
	mov	a,_main_x_1_1
	subb	a,#0x0A
	mov	a,(_main_x_1_1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160	removed sjmp by inverse jump logic
	jc	00133$
00215$:
;c:/sdcc/exam/test4.c:128: LCDcmd(0xc0);     //設定DDRAM位置40H (螢幕左下角) 
;     genCall
	mov	dpl,#0xC0
	push	ar6
	push	ar7
	lcall	_LCDcmd
	pop	ar7
	pop	ar6
00133$:
;c:/sdcc/exam/test4.c:132: LCDdata(num);  //將按下的按鍵資料放入DDRAM內 
;     genCall
	mov	dpl,_main_num_1_1
	push	ar6
	push	ar7
	lcall	_LCDdata
	pop	ar7
	pop	ar6
	ljmp	00138$
00156$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interr_s'
;------------------------------------------------------------
;------------------------------------------------------------
;c:/sdcc/exam/test4.c:137: void interr_s(void) interrupt 4  //(? serial interrupt) 
;	-----------------------------------------
;	 function interr_s
;	-----------------------------------------
_interr_s:
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
;c:/sdcc/exam/test4.c:139: if (RI)
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
;c:/sdcc/exam/test4.c:141: RI = 0;
;     genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_RI,00107$
	sjmp	00102$
00107$:
;c:/sdcc/exam/test4.c:142: rx_flag = 1; 
;     genAssign
	mov	_rx_flag,#0x01
	clr	a
	mov	(_rx_flag + 1),a
;c:/sdcc/exam/test4.c:143: ch = SBUF;
;     genAssign
	mov	_ch,_SBUF
;c:/sdcc/exam/test4.c:144: LCDcmd(0xc0); 
;     genCall
	mov	dpl,#0xC0
	lcall	_LCDcmd
;c:/sdcc/exam/test4.c:145: LCDdata(ch);
;     genCall
	mov	dpl,_ch
	lcall	_LCDdata
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00102$:
;c:/sdcc/exam/test4.c:149: TI = 0;
;     genAssign
	clr	_TI
00104$:
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
;Allocation info for local variables in function 'getkey'
;------------------------------------------------------------
;i                         Allocated to registers r4 r5 
;k                         Allocated to registers r2 r3 
;------------------------------------------------------------
;c:/sdcc/exam/test4.c:152: int getkey()  //<<上次的 
;	-----------------------------------------
;	 function getkey
;	-----------------------------------------
_getkey:
;c:/sdcc/exam/test4.c:154: int i,k=-1; 
;     genAssign
	mov	r2,#0xFF
	mov	r3,#0xFF
;c:/sdcc/exam/test4.c:155: while(1)
;c:/sdcc/exam/test4.c:157: for(i=0;i<4;i++)
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
;c:/sdcc/exam/test4.c:159: P1=ser[i]; 
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
;c:/sdcc/exam/test4.c:160: if(P1!=ser[i])
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r7,a
	cjne	a,ar6,00144$
	ljmp	00113$
00144$:
;c:/sdcc/exam/test4.c:162: if(P1==keymsg[i]) 
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
;c:/sdcc/exam/test4.c:163: k=key[i];
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
;c:/sdcc/exam/test4.c:164: else if(P1==keymsg[i+4])
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
;c:/sdcc/exam/test4.c:165: k=key[i+4];
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
;c:/sdcc/exam/test4.c:166: else if(P1==keymsg[i+8]) 
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
;c:/sdcc/exam/test4.c:167: k=key[i+8];
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
;c:/sdcc/exam/test4.c:168: else if(P1==keymsg[i+12]) 
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
;c:/sdcc/exam/test4.c:169: k=key[i+12];
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
;c:/sdcc/exam/test4.c:171: if (k!=-1) 
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0xFF,00119$
	cjne	r3,#0xFF,00119$
;00159$:
;	Peephole 200	removed redundant sjmp
00160$:
;c:/sdcc/exam/test4.c:157: for(i=0;i<4;i++)
;     genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00161$
	inc	r5
00161$:
	ljmp	00116$
00119$:
;c:/sdcc/exam/test4.c:174: if(k!=-1)
;     genCmpEq
	cjne	r2,#0xFF,00162$
	cjne	r3,#0xFF,00162$
	ljmp	00139$
00162$:
;c:/sdcc/exam/test4.c:175: while(1)
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
;c:/sdcc/exam/test4.c:177: P1=ser[i]; 
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
;c:/sdcc/exam/test4.c:178: if(P1==ser[i])
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
;c:/sdcc/exam/test4.c:179: return k;
;     genRet
	mov	dpl,r2
	mov	dph,r3
00130$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDcmd'
;------------------------------------------------------------
;hex                       Allocated to registers r2 
;------------------------------------------------------------
;c:/sdcc/exam/test4.c:184: void LCDcmd(char hex) 
;	-----------------------------------------
;	 function LCDcmd
;	-----------------------------------------
_LCDcmd:
;     genReceive
	mov	r2,dpl
;c:/sdcc/exam/test4.c:186: delay(1000);  //延遲一下，避免按下按鍵的短暫電位晃動(Debounce) 
;     genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x03E8
	push	ar2
	lcall	_delay
	pop	ar2
;c:/sdcc/exam/test4.c:187: P2 = hex;     //P2放入指令 
;     genAssign
	mov	_P2,r2
;c:/sdcc/exam/test4.c:188: P3_4 = 1;     //ENABLE = 1  LCD致能 
;     genAssign
	setb	_P3_4
;c:/sdcc/exam/test4.c:189: P3_4 = 0;     //ENABLE = 0  關閉LCD致能 
;     genAssign
	clr	_P3_4
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDdata'
;------------------------------------------------------------
;hex                       Allocated to registers r2 
;------------------------------------------------------------
;c:/sdcc/exam/test4.c:192: void LCDdata(char hex)
;	-----------------------------------------
;	 function LCDdata
;	-----------------------------------------
_LCDdata:
;     genReceive
	mov	r2,dpl
;c:/sdcc/exam/test4.c:194: delay(1000);  //延遲一下，避免按下按鍵的短暫電位晃動(Debounce) 
;     genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x03E8
	push	ar2
	lcall	_delay
	pop	ar2
;c:/sdcc/exam/test4.c:195: P2 = hex;     //P2放入指令 
;     genAssign
	mov	_P2,r2
;c:/sdcc/exam/test4.c:196: P3_4 = 1;     //ENABLE = 1  LCD致能 
;     genAssign
	setb	_P3_4
;c:/sdcc/exam/test4.c:197: P3_2 = 1;     //RS = 1  (R_W依舊是0) 寫資料到DDRAM或CGRAM 
;     genAssign
	setb	_P3_2
;c:/sdcc/exam/test4.c:198: P3_4 = 0;     //ENABLE = 0  關閉LCD致能  
;     genAssign
	clr	_P3_4
;c:/sdcc/exam/test4.c:199: P3_2 = 0;     //RS = 0  (R_W依舊是0) 恢復寫命令到LCD的狀態 
;     genAssign
	clr	_P3_2
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;t                         Allocated to registers r2 r3 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;c:/sdcc/exam/test4.c:202: void delay(int t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;c:/sdcc/exam/test4.c:205: for(i = 0; i < t; i++)
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
_init:
	.db #0x38
	.db #0x0E
	.db #0x06
	.db #0x02
	.db #0x01
_addr:
	.db #0x80
	.db #0x81
	.db #0x82
	.db #0x83
	.db #0x84
	.db #0x85
	.db #0x86
	.db #0x87
	.db #0x88
	.db #0x89
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
	.area XINIT   (CODE)
