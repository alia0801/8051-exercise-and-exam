;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.5.0 #1020 (May  8 2005)
; This file generated Tue Nov 19 19:04:31 2019
;--------------------------------------------------------
	.module 1
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _startmsg2
	.globl _startmsg1
	.globl _msg
	.globl _keymsg
	.globl _key
	.globl _ser
	.globl _init
	.globl _addr2
	.globl _addr1
	.globl _interr_s
	.globl _tmiintrt
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
	.globl _count
	.globl _c
	.globl _get
	.globl _state
	.globl _a
	.globl _dir_m
	.globl _m
	.globl _ch
	.globl _rx_flag
	.globl _counter
	.globl _COUNTER
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
_COUNTER::
	.ds 2
_counter::
	.ds 1
_rx_flag::
	.ds 2
_ch::
	.ds 1
_m::
	.ds 2
_dir_m::
	.ds 2
_a::
	.ds 2
_state::
	.ds 2
_get::
	.ds 2
_c::
	.ds 2
_count::
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
	ljmp	_tmiintrt
	.ds	5
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
;x                         Allocated to registers r2 r3 
;------------------------------------------------------------
;c:/sdcc/exam/1.c:49: void main()
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
;c:/sdcc/exam/1.c:52: state = 0;
;     genAssign
;c:/sdcc/exam/1.c:53: m = 0;
;     genAssign
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	Peephole 3.d	removed redundant clr
	mov	_m,a
	mov	(_m + 1),a
;c:/sdcc/exam/1.c:54: dir_m = 1;
;     genAssign
	mov	_dir_m,#0x01
	clr	a
	mov	(_dir_m + 1),a
;c:/sdcc/exam/1.c:55: COUNTER = COUNTER1;
;     genAssign
	mov	_COUNTER,#0x0A
	clr	a
	mov	(_COUNTER + 1),a
;c:/sdcc/exam/1.c:56: get = 0;
;     genAssign
;c:/sdcc/exam/1.c:57: c = 0;
;     genAssign
;	Peephole 3.d	removed redundant clr
;c:/sdcc/exam/1.c:58: count = 0;
;     genAssign
	clr	a
	mov	_get,a
	mov	(_get + 1),a
	mov	_c,a
	mov	(_c + 1),a
;	Peephole 3.f	removed redundant clr
	mov	_count,a
	mov	(_count + 1),a
;c:/sdcc/exam/1.c:60: P3_2 = 0;   // RS初始化為0 
;     genAssign
	clr	_P3_2
;c:/sdcc/exam/1.c:61: P3_3 = 0;   // R_W初始化為0 
;     genAssign
	clr	_P3_3
;c:/sdcc/exam/1.c:62: P3_4 = 0;   // ENABLE初始化為0，LCD致能失效 
;     genAssign
	clr	_P3_4
;c:/sdcc/exam/1.c:64: SCON=0x50;  //SCON暫存器01010000 
;     genAssign
	mov	_SCON,#0x50
;c:/sdcc/exam/1.c:66: TH1=0xf3;   //講義上有說，用來計算baud
;     genAssign
	mov	_TH1,#0xF3
;c:/sdcc/exam/1.c:67: TR1=1;      //timer1啟動  
;     genAssign
	setb	_TR1
;c:/sdcc/exam/1.c:69: rx_flag=0;  // (?) 
;     genAssign
;c:/sdcc/exam/1.c:71: TCON=0x00;   //00000000 初始化TCON暫存器 
;     genAssign
	clr	a
	mov	_rx_flag,a
	mov	(_rx_flag + 1),a
;	Peephole 3.h	changed mov _TCON,#0x00 to _TCON,a
	mov	_TCON,a
;c:/sdcc/exam/1.c:72: TMOD=0x21;   //00100001 設定timer1為mode2 設定Timer0為16位元計數器 
;     genAssign
	mov	_TMOD,#0x21
;c:/sdcc/exam/1.c:74: IE=0x82;     //10000010 中斷致能，啟用了Timer0 overflow的中斷
;     genAssign
	mov	_IE,#0x82
;c:/sdcc/exam/1.c:76: TL0 = _TL0_; //設定差50000個machine cycle才觸發中斷 
;     genAssign
	mov	_TL0,#0xE0
;c:/sdcc/exam/1.c:77: TH0 = _TH0_; 
;     genAssign
	mov	_TH0,#0x3C
;c:/sdcc/exam/1.c:78: TR0 = 1;     //TCON內的TR0設定為1，啟動Timer0 
;     genAssign
	setb	_TR0
;c:/sdcc/exam/1.c:79: counter = 0;
;     genAssign
	mov	_counter,#0x00
;c:/sdcc/exam/1.c:81: for(i = 0; i < 5; i++)
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00144$:
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
	jnc	00161$
00181$:
;c:/sdcc/exam/1.c:88: LCDcmd(init[i]); 
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_init
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_init >> 8)
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
	lcall	_LCDcmd
	pop	ar3
	pop	ar2
;c:/sdcc/exam/1.c:81: for(i = 0; i < 5; i++)
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r2
	cjne	r2,#0x00,00144$
	inc	r3
;c:/sdcc/exam/1.c:91: for(i = 0; i < 7; i++){   
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00144$
00161$:
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00148$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x07
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00163$
00182$:
;c:/sdcc/exam/1.c:92: LCDcmd( addr1[i] );//設定位子 
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_addr1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_addr1 >> 8)
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
	lcall	_LCDcmd
	pop	ar3
	pop	ar2
;c:/sdcc/exam/1.c:93: LCDdata( startmsg1[i] );
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_startmsg1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_startmsg1 >> 8)
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
	lcall	_LCDdata
	pop	ar3
	pop	ar2
;c:/sdcc/exam/1.c:91: for(i = 0; i < 7; i++){   
;     genPlus
;     genPlusIncr
	inc	r2
;c:/sdcc/exam/1.c:95: for(i = 0; i < 16; i++){   
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 243	avoided branch to sjmp
	cjne	r2,#0x00,00148$
	inc	r3
00183$:
	sjmp	00148$
00163$:
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00152$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;	Peephole 108	removed ljmp by inverse jump logic
	jnc	00142$
00184$:
;c:/sdcc/exam/1.c:96: LCDcmd( addr2[i] );//設定位子 
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_addr2
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_addr2 >> 8)
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
	lcall	_LCDcmd
	pop	ar3
	pop	ar2
;c:/sdcc/exam/1.c:97: LCDdata( startmsg2[i] );
;     genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_startmsg2
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_startmsg2 >> 8)
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
	lcall	_LCDdata
	pop	ar3
	pop	ar2
;c:/sdcc/exam/1.c:95: for(i = 0; i < 16; i++){   
;     genPlus
;     genPlusIncr
	inc	r2
;c:/sdcc/exam/1.c:100: while(1)
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 243	avoided branch to sjmp
	cjne	r2,#0x00,00152$
	inc	r3
00185$:
	sjmp	00152$
00142$:
;c:/sdcc/exam/1.c:102: x=getkey(); 
;     genCall
	lcall	_getkey
	mov	r2,dpl
	mov	r3,dph
;c:/sdcc/exam/1.c:103: LCDcmd(0x80);     //設定DDRAM位置00H (螢幕左上角) 
;     genCall
	mov	dpl,#0x80
	push	ar2
	push	ar3
	lcall	_LCDcmd
	pop	ar3
	pop	ar2
;c:/sdcc/exam/1.c:121: if(state == 0){//遊戲尚未開始 
;     genCmpEq
	mov	a,_state
	jnz	00186$
	mov	a,(_state + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00187$
00186$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00139$
00187$:
;c:/sdcc/exam/1.c:122: if(x == 0 ){
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x00,00142$
	cjne	r3,#0x00,00142$
;00188$:
;	Peephole 200	removed redundant sjmp
00189$:
;c:/sdcc/exam/1.c:123: state = 1;
;     genAssign
	mov	_state,#0x01
	clr	a
	mov	(_state + 1),a
;c:/sdcc/exam/1.c:124: a=0; 
;     genAssign
	clr	a
	mov	_a,a
	mov	(_a + 1),a
;c:/sdcc/exam/1.c:125: LCDcmd( 0x01 );
;     genCall
	mov	dpl,#0x01
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:126: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:127: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00142$
00139$:
;c:/sdcc/exam/1.c:130: else if(state == 1){//遊戲階段 
;     genCmpEq
	mov	a,_state
	cjne	a,#0x01,00190$
	mov	a,(_state + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00191$
00190$:
	ljmp	00136$
00191$:
;c:/sdcc/exam/1.c:131: if(x == 7){
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x07,00123$
	cjne	r3,#0x00,00123$
;00192$:
;	Peephole 200	removed redundant sjmp
00193$:
;c:/sdcc/exam/1.c:132: if(a != 0){
;     genCmpEq
	mov	a,_a
	jnz	00194$
	mov	a,(_a + 1)
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00142$
00194$:
;c:/sdcc/exam/1.c:133: LCDcmd( 0x01 );
;     genCall
	mov	dpl,#0x01
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:134: a--;
;     genMinus
;     genMinusDec
	dec	_a
	mov	a,#0xff
	cjne	a,_a,00195$
	dec	(_a + 1)
00195$:
;c:/sdcc/exam/1.c:135: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:136: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;c:/sdcc/exam/1.c:137: LCDcmd( addr2[m] );
;     genPlus
	mov	a,_m
	add	a,#_addr2
	mov	dpl,a
	mov	a,(_m + 1)
	addc	a,#(_addr2 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:138: LCDdata( '*' );
;     genCall
	mov	dpl,#0x2A
	lcall	_LCDdata
	ljmp	00142$
00123$:
;c:/sdcc/exam/1.c:141: else if(x == 9){
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x09,00120$
	cjne	r3,#0x00,00120$
;00196$:
;	Peephole 200	removed redundant sjmp
00197$:
;c:/sdcc/exam/1.c:142: if(a != 15){
;     genCmpEq
	mov	a,_a
	cjne	a,#0x0F,00198$
	mov	a,(_a + 1)
	jnz	00198$
	ljmp	00142$
00198$:
;c:/sdcc/exam/1.c:143: LCDcmd( 0x01 );
;     genCall
	mov	dpl,#0x01
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:144: a++;
;     genPlus
;     genPlusIncr
	inc	_a
	clr	a
	cjne	a,_a,00199$
	inc	(_a + 1)
00199$:
;c:/sdcc/exam/1.c:145: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:146: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;c:/sdcc/exam/1.c:147: LCDcmd( addr2[m] );
;     genPlus
	mov	a,_m
	add	a,#_addr2
	mov	dpl,a
	mov	a,(_m + 1)
	addc	a,#(_addr2 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:148: LCDdata( '*' );
;     genCall
	mov	dpl,#0x2A
	lcall	_LCDdata
	ljmp	00142$
00120$:
;c:/sdcc/exam/1.c:151: else if(x == 10){//A
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x0A,00117$
	cjne	r3,#0x00,00117$
;00200$:
;	Peephole 200	removed redundant sjmp
00201$:
;c:/sdcc/exam/1.c:152: state = 2;//選擇速度 
;     genAssign
	mov	_state,#0x02
	clr	a
	mov	(_state + 1),a
	ljmp	00142$
00117$:
;c:/sdcc/exam/1.c:156: else if( x==8 && a==m){//打地鼠 
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x08,00113$
	cjne	r3,#0x00,00113$
;00202$:
;	Peephole 200	removed redundant sjmp
00203$:
;     genCmpEq
	mov	a,_a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 197.b	optimized misc jump sequence
	cjne	a,_m,00113$
	mov	a,(_a + 1)
	cjne	a,(_m + 1),00113$
;00204$:
;	Peephole 200	removed redundant sjmp
00205$:
;c:/sdcc/exam/1.c:157: get = 1;
;     genAssign
	mov	_get,#0x01
	clr	a
	mov	(_get + 1),a
;c:/sdcc/exam/1.c:158: count++;
;     genPlus
;     genPlusIncr
	inc	_count
	clr	a
	cjne	a,_count,00206$
	inc	(_count + 1)
00206$:
;c:/sdcc/exam/1.c:159: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:160: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;c:/sdcc/exam/1.c:161: LCDcmd( addr2[m] );
;     genPlus
	mov	a,_m
	add	a,#_addr2
	mov	dpl,a
	mov	a,(_m + 1)
	addc	a,#(_addr2 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:162: LCDdata( '-' );
;     genCall
	mov	dpl,#0x2D
	lcall	_LCDdata
	ljmp	00142$
00113$:
;c:/sdcc/exam/1.c:165: else if(x == 11){//B看分數 
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x0B,00110$
	cjne	r3,#0x00,00110$
;00207$:
;	Peephole 200	removed redundant sjmp
00208$:
;c:/sdcc/exam/1.c:166: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:167: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;c:/sdcc/exam/1.c:168: LCDcmd( addr2[m] );
;     genPlus
	mov	a,_m
	add	a,#_addr2
	mov	dpl,a
	mov	a,(_m + 1)
	addc	a,#(_addr2 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:169: LCDdata( '-' );
;     genCall
	mov	dpl,#0x2D
	lcall	_LCDdata
;c:/sdcc/exam/1.c:170: LCDcmd( addr1[0] );
;     genPointerGet
;     genCodePointerGet
	mov	dptr,#_addr1
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r4
	mov	r4,a
	mov	dpl,a
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:171: LCDdata( msg[count] );
;     genPlus
	mov	a,_count
	add	a,#_msg
	mov	dpl,a
	mov	a,(_count + 1)
	addc	a,#(_msg >> 8)
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
	lcall	_LCDdata
	ljmp	00142$
00110$:
;c:/sdcc/exam/1.c:173: else if(x == 14){//E
;     genCmpEq
	cjne	r2,#0x0E,00209$
	cjne	r3,#0x00,00209$
	sjmp	00210$
00209$:
	ljmp	00142$
00210$:
;c:/sdcc/exam/1.c:174: a = 15 - a;
;     genMinus
	mov	a,#0x0F
	clr	c
	subb	a,_a
	mov	_a,a
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,(_a + 1)
	mov	(_a + 1),a
;c:/sdcc/exam/1.c:175: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:176: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;c:/sdcc/exam/1.c:177: LCDcmd( addr2[m] );
;     genPlus
	mov	a,_m
	add	a,#_addr2
	mov	dpl,a
	mov	a,(_m + 1)
	addc	a,#(_addr2 >> 8)
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
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:178: LCDdata( '-' );
;     genCall
	mov	dpl,#0x2D
	lcall	_LCDdata
	ljmp	00142$
00136$:
;c:/sdcc/exam/1.c:181: else if(state == 2){//選地鼠速度
;     genCmpEq
	mov	a,_state
	cjne	a,#0x02,00211$
	mov	a,(_state + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00212$
00211$:
	ljmp	00142$
00212$:
;c:/sdcc/exam/1.c:182: state = 1;
;     genAssign
	mov	_state,#0x01
	clr	a
	mov	(_state + 1),a
;c:/sdcc/exam/1.c:183: if( x == 7 ){
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x07,00131$
	cjne	r3,#0x00,00131$
;00213$:
;	Peephole 200	removed redundant sjmp
00214$:
;c:/sdcc/exam/1.c:184: COUNTER = COUNTER1;
;     genAssign
	mov	_COUNTER,#0x0A
	clr	a
	mov	(_COUNTER + 1),a
	ljmp	00142$
00131$:
;c:/sdcc/exam/1.c:186: else if( x == 8 ){
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0x08,00128$
	cjne	r3,#0x00,00128$
;00215$:
;	Peephole 200	removed redundant sjmp
00216$:
;c:/sdcc/exam/1.c:187: COUNTER = COUNTER2;
;     genAssign
	mov	_COUNTER,#0x14
	clr	a
	mov	(_COUNTER + 1),a
	ljmp	00142$
00128$:
;c:/sdcc/exam/1.c:189: else if( x == 9 ){
;     genCmpEq
	cjne	r2,#0x09,00217$
	cjne	r3,#0x00,00217$
	sjmp	00218$
00217$:
	ljmp	00142$
00218$:
;c:/sdcc/exam/1.c:190: COUNTER = COUNTER3;
;     genAssign
	mov	_COUNTER,#0x1E
	clr	a
	mov	(_COUNTER + 1),a
	ljmp	00142$
00156$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tmiintrt'
;------------------------------------------------------------
;------------------------------------------------------------
;c:/sdcc/exam/1.c:198: void tmiintrt(void) interrupt 1  //Timer0 overflow中斷 
;	-----------------------------------------
;	 function tmiintrt
;	-----------------------------------------
_tmiintrt:
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
;c:/sdcc/exam/1.c:200: TL0 = _TL0_;  //重設時間
;     genAssign
	mov	_TL0,#0xE0
;c:/sdcc/exam/1.c:201: TH0 = _TH0_;
;     genAssign
	mov	_TH0,#0x3C
;c:/sdcc/exam/1.c:202: counter++;
;     genPlus
;     genPlusIncr
	inc	_counter
;c:/sdcc/exam/1.c:203: if(counter == COUNTER)
;     genCast
;	peephole 177.h	optimized mov sequence
	mov	a,_counter
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
;     genCmpEq
	mov	a,r2
	cjne	a,_COUNTER,00135$
	mov	a,r3
	cjne	a,(_COUNTER + 1),00135$
	sjmp	00136$
00135$:
	ljmp	00123$
00136$:
;c:/sdcc/exam/1.c:205: if(state == 1 && get == 0 ){
;     genCmpEq
	mov	a,_state
	cjne	a,#0x01,00137$
	mov	a,(_state + 1)
	jnz	00137$
	mov	a,#0x01
	sjmp	00138$
00137$:
	clr	a
00138$:
;     genIfx
;	Peephole 105	removed redundant mov
	mov	r2,a
;     genIfxJump
	jnz	00139$
	ljmp	00118$
00139$:
;     genCmpEq
	mov	a,_get
	jnz	00140$
	mov	a,(_get + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00141$
00140$:
	ljmp	00118$
00141$:
;c:/sdcc/exam/1.c:206: if(dir_m == 1){
;     genCmpEq
	mov	a,_dir_m
	cjne	a,#0x01,00142$
	mov	a,(_dir_m + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00143$
00142$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00143$:
;c:/sdcc/exam/1.c:207: if( m != 15 ){
;     genCmpEq
	mov	a,_m
	cjne	a,#0x0F,00144$
	mov	a,(_m + 1)
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00102$
00144$:
;c:/sdcc/exam/1.c:208: LCDcmd( 0x01 );
;     genCall
	mov	dpl,#0x01
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:209: m++;
;     genPlus
;     genPlusIncr
	inc	_m
	clr	a
	cjne	a,_m,00145$
	inc	(_m + 1)
00145$:
;c:/sdcc/exam/1.c:210: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r3
	mov	r3,a
	mov	dpl,a
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:211: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;c:/sdcc/exam/1.c:212: LCDcmd( addr2[m] );
;     genPlus
	mov	a,_m
	add	a,#_addr2
	mov	dpl,a
	mov	a,(_m + 1)
	addc	a,#(_addr2 >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r3
	mov	r3,a
	mov	dpl,a
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:213: LCDdata( '*' );
;     genCall
	mov	dpl,#0x2A
	lcall	_LCDdata
	ljmp	00119$
00102$:
;c:/sdcc/exam/1.c:216: dir_m = 0;
;     genAssign
	clr	a
	mov	_dir_m,a
	mov	(_dir_m + 1),a
	ljmp	00119$
00110$:
;c:/sdcc/exam/1.c:219: else if(dir_m == 0){
;     genCmpEq
	mov	a,_dir_m
	jnz	00146$
	mov	a,(_dir_m + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00147$
00146$:
	ljmp	00119$
00147$:
;c:/sdcc/exam/1.c:220: if( m != 0 ){
;     genCmpEq
	mov	a,_m
	jnz	00148$
	mov	a,(_m + 1)
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00105$
00148$:
;c:/sdcc/exam/1.c:221: LCDcmd( 0x01 );
;     genCall
	mov	dpl,#0x01
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:222: m--;
;     genMinus
;     genMinusDec
	dec	_m
	mov	a,#0xff
	cjne	a,_m,00149$
	dec	(_m + 1)
00149$:
;c:/sdcc/exam/1.c:223: LCDcmd( addr1[a] );
;     genPlus
	mov	a,_a
	add	a,#_addr1
	mov	dpl,a
	mov	a,(_a + 1)
	addc	a,#(_addr1 >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r3
	mov	r3,a
	mov	dpl,a
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:224: LCDdata( 'v' );
;     genCall
	mov	dpl,#0x76
	lcall	_LCDdata
;c:/sdcc/exam/1.c:225: LCDcmd( addr2[m] );
;     genPlus
	mov	a,_m
	add	a,#_addr2
	mov	dpl,a
	mov	a,(_m + 1)
	addc	a,#(_addr2 >> 8)
	mov	dph,a
;     genPointerGet
;     genCodePointerGet
;	Peephole 181	changed mov to clr
	clr	a
	movc	a,@a+dptr
;     genCall
;	Peephole 244.c	loading dpl from a instead of r3
	mov	r3,a
	mov	dpl,a
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:226: LCDdata( '*' );
;     genCall
	mov	dpl,#0x2A
	lcall	_LCDdata
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00105$:
;c:/sdcc/exam/1.c:228: dir_m = 1;
;     genAssign
	mov	_dir_m,#0x01
	clr	a
	mov	(_dir_m + 1),a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00118$:
;c:/sdcc/exam/1.c:233: else if(state == 1 && get == 1 ){
;     genIfx
	mov	a,r2
;     genIfxJump
;	Peephole 110	removed ljmp by inverse jump logic
	jz	00119$
00150$:
;     genCmpEq
	mov	a,_get
	cjne	a,#0x01,00151$
	mov	a,(_get + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00152$
00151$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00152$:
;c:/sdcc/exam/1.c:234: c++;
;     genPlus
;     genPlusIncr
	inc	_c
	clr	a
	cjne	a,_c,00153$
	inc	(_c + 1)
00153$:
;c:/sdcc/exam/1.c:235: if( c == 3 ){
;     genCmpEq
	mov	a,_c
	cjne	a,#0x03,00154$
	mov	a,(_c + 1)
;	Peephole 162	removed sjmp by inverse jump logic
	jz	00155$
00154$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00155$:
;c:/sdcc/exam/1.c:236: c = 0;
;     genAssign
;c:/sdcc/exam/1.c:237: get = 0;
;     genAssign
	clr	a
	mov	_c,a
	mov	(_c + 1),a
;	Peephole 3.d	removed redundant clr
	mov	_get,a
	mov	(_get + 1),a
00119$:
;c:/sdcc/exam/1.c:240: counter = 0;//////////////////////////////
;     genAssign
	mov	_counter,#0x00
00123$:
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
;Allocation info for local variables in function 'interr_s'
;------------------------------------------------------------
;------------------------------------------------------------
;c:/sdcc/exam/1.c:246: void interr_s(void) interrupt 4  //(? serial interrupt) 
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
;c:/sdcc/exam/1.c:248: if (RI)
;     genIfx
;     genIfxJump
;	Peephole 111	removed ljmp by inverse jump logic
;c:/sdcc/exam/1.c:250: RI = 0;
;     genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_RI,00107$
	sjmp	00102$
00107$:
;c:/sdcc/exam/1.c:251: rx_flag = 1; 
;     genAssign
	mov	_rx_flag,#0x01
	clr	a
	mov	(_rx_flag + 1),a
;c:/sdcc/exam/1.c:252: ch = SBUF;
;     genAssign
	mov	_ch,_SBUF
;c:/sdcc/exam/1.c:253: LCDcmd(0xc0); 
;     genCall
	mov	dpl,#0xC0
	lcall	_LCDcmd
;c:/sdcc/exam/1.c:254: LCDdata(ch);
;     genCall
	mov	dpl,_ch
	lcall	_LCDdata
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00102$:
;c:/sdcc/exam/1.c:258: TI = 0;
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
;c:/sdcc/exam/1.c:261: int getkey()  //<<上次的 
;	-----------------------------------------
;	 function getkey
;	-----------------------------------------
_getkey:
;c:/sdcc/exam/1.c:263: int i,k=-1; 
;     genAssign
	mov	r2,#0xFF
	mov	r3,#0xFF
;c:/sdcc/exam/1.c:264: while(1)
;c:/sdcc/exam/1.c:266: for(i=0;i<4;i++)
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
;c:/sdcc/exam/1.c:268: P1=ser[i]; 
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
;c:/sdcc/exam/1.c:269: if(P1!=ser[i])
;     genAssign
;     genCmpEq
;	peephole 177.g	optimized mov sequence
	mov	a,_P1
	mov	r7,a
	cjne	a,ar6,00144$
	ljmp	00113$
00144$:
;c:/sdcc/exam/1.c:271: if(P1==keymsg[i]) 
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
;c:/sdcc/exam/1.c:272: k=key[i];
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
;c:/sdcc/exam/1.c:273: else if(P1==keymsg[i+4])
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
;c:/sdcc/exam/1.c:274: k=key[i+4];
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
;c:/sdcc/exam/1.c:275: else if(P1==keymsg[i+8]) 
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
;c:/sdcc/exam/1.c:276: k=key[i+8];
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
;c:/sdcc/exam/1.c:277: else if(P1==keymsg[i+12]) 
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
;c:/sdcc/exam/1.c:278: k=key[i+12];
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
;c:/sdcc/exam/1.c:280: if (k!=-1) 
;     genCmpEq
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198	optimized misc jump sequence
	cjne	r2,#0xFF,00119$
	cjne	r3,#0xFF,00119$
;00159$:
;	Peephole 200	removed redundant sjmp
00160$:
;c:/sdcc/exam/1.c:266: for(i=0;i<4;i++)
;     genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00161$
	inc	r5
00161$:
	ljmp	00116$
00119$:
;c:/sdcc/exam/1.c:283: if(k!=-1)
;     genCmpEq
	cjne	r2,#0xFF,00162$
	cjne	r3,#0xFF,00162$
	ljmp	00139$
00162$:
;c:/sdcc/exam/1.c:284: while(1)
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
;c:/sdcc/exam/1.c:286: P1=ser[i]; 
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
;c:/sdcc/exam/1.c:287: if(P1==ser[i])
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
;c:/sdcc/exam/1.c:288: return k;
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
;c:/sdcc/exam/1.c:293: void LCDcmd(char hex) 
;	-----------------------------------------
;	 function LCDcmd
;	-----------------------------------------
_LCDcmd:
;     genReceive
	mov	r2,dpl
;c:/sdcc/exam/1.c:295: delay(1000);  //延遲一下，避免按下按鍵的短暫電位晃動(Debounce) 
;     genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x03E8
	push	ar2
	lcall	_delay
	pop	ar2
;c:/sdcc/exam/1.c:296: P2 = hex;     //P2放入指令 
;     genAssign
	mov	_P2,r2
;c:/sdcc/exam/1.c:297: P3_4 = 1;     //ENABLE = 1  LCD致能 
;     genAssign
	setb	_P3_4
;c:/sdcc/exam/1.c:298: P3_4 = 0;     //ENABLE = 0  關閉LCD致能 
;     genAssign
	clr	_P3_4
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDdata'
;------------------------------------------------------------
;hex                       Allocated to registers r2 
;------------------------------------------------------------
;c:/sdcc/exam/1.c:301: void LCDdata(char hex)
;	-----------------------------------------
;	 function LCDdata
;	-----------------------------------------
_LCDdata:
;     genReceive
	mov	r2,dpl
;c:/sdcc/exam/1.c:303: delay(1000);  //延遲一下，避免按下按鍵的短暫電位晃動(Debounce) 
;     genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x03E8
	push	ar2
	lcall	_delay
	pop	ar2
;c:/sdcc/exam/1.c:304: P2 = hex;     //P2放入指令 
;     genAssign
	mov	_P2,r2
;c:/sdcc/exam/1.c:305: P3_4 = 1;     //ENABLE = 1  LCD致能 
;     genAssign
	setb	_P3_4
;c:/sdcc/exam/1.c:306: P3_2 = 1;     //RS = 1  (R_W依舊是0) 寫資料到DDRAM或CGRAM 
;     genAssign
	setb	_P3_2
;c:/sdcc/exam/1.c:307: P3_4 = 0;     //ENABLE = 0  關閉LCD致能  
;     genAssign
	clr	_P3_4
;c:/sdcc/exam/1.c:308: P3_2 = 0;     //RS = 0  (R_W依舊是0) 恢復寫命令到LCD的狀態 
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
;c:/sdcc/exam/1.c:311: void delay(int t)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;c:/sdcc/exam/1.c:314: for(i = 0; i < t; i++)
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
_addr1:
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
	.db #0x8A
	.db #0x8B
	.db #0x8C
	.db #0x8D
	.db #0x8E
	.db #0x8F
_addr2:
	.db #0xCE
	.db #0xC6
	.db #0xC3
	.db #0xCC
	.db #0xC8
	.db #0xC1
	.db #0xCF
	.db #0xC5
	.db #0xC2
	.db #0xCB
	.db #0xC7
	.db #0xC4
	.db #0xCA
	.db #0xC9
	.db #0xCD
	.db #0xC0
_init:
	.db #0x38
	.db #0x0E
	.db #0x06
	.db #0x02
	.db #0x01
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
_startmsg1:
	.ascii "hamster"
	.db 0x00
_startmsg2:
	.ascii "press 0 to start"
	.db 0x00
	.area XINIT   (CODE)
