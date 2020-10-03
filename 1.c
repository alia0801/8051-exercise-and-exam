//實驗四  LCD 介面設計
#include "8051.h"

// P2   :data bus 
// P3.2	:RS
// P3.3 :R_W
// P3.4 :ENABLE

#define SIZE 8         //幾個LED，給後面的code用
#define _TH0_ 0x3c     //[3C]E0
#define _TL0_ 0xe0     //3C[E0]
#define COUNTER1  10    //10次中斷，搭配後面的code用來做0.5秒一次的事件
#define COUNTER2  20    //20次中斷，搭配後面的code用來做1秒一次的事件
#define COUNTER3  30    //30次中斷，搭配後面的code用來做1.5秒一次的事件

int COUNTER;

char counter;

void LCDcmd(char hex);   //輸入命令到LCD 
void LCDdata(char hex);  //輸入資料到LCD 
code char addr1[] = {0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f }; //設定第一行位置 
code char addr2[] = {0xce, 0xc6, 0xc3, 0xcc, 0xc8, 0xc1, 0xcf, 0xc5, 0xc2, 0xcb, 0xc7, 0xc4, 0xca, 0xc9, 0xcd, 0xc0 }; //設定第二行位置
code char init[] = {0x38    ,0x0e    ,0x06    ,0x02    ,0x01   }; 
                  //00111111 00001110 00000110 00000010 00000001  對照到講義上面的命令 
code char ser[]={0xfe,0xfd,0xfb,0xf7};     //<<上次的  
code int key[]={1,2,3,12,4,5,6,13,7,8,9,14,10,0,11,15};  //<<上次的
code char keymsg[]={0xee,0xed,0xeb,0xe7,
                    0xde,0xdd,0xdb,0xd7, 
                    0xbe,0xbd,0xbb,0xb7, 
                    0x7e,0x7d,0x7b,0x77};  //<<上次的
code char msg[] = "0123456789abcdef";      //<<上次的
code char startmsg1[] = "hamster";
code char startmsg2[] = "press 0 to start";
int rx_flag;  //(?) 
char ch;
void delay (int t); 
int getkey();

int m;//地鼠位置 
int dir_m;//地鼠方向 

int a;//獵人位置 
int state;//進入遊戲與否
int get;//打到地鼠
int c;//打到後計時 
int count;//打到幾次 

void main()
{
    int i,x; 
    state = 0;
    m = 0;
    dir_m = 1;
    COUNTER = COUNTER1;
    get = 0;
    c = 0;
    count = 0;
    
    P3_2 = 0;   // RS初始化為0 
    P3_3 = 0;   // R_W初始化為0 
    P3_4 = 0;   // ENABLE初始化為0，LCD致能失效 
    
    SCON=0x50;  //SCON暫存器01010000 
    //TMOD=0x20;  //2次的，設定timer1為mode2 
    TH1=0xf3;   //講義上有說，用來計算baud
    TR1=1;      //timer1啟動  
    //IE=0x90;    // <<第2次的(?) 
    rx_flag=0;  // (?) 
    
    TCON=0x00;   //00000000 初始化TCON暫存器 
    TMOD=0x21;   //00100001 設定timer1為mode2 設定Timer0為16位元計數器 
    //IP=0x01;     //00000001 設定INT0(8051的12腳位)優先 //
    IE=0x82;     //10000010 中斷致能，啟用了Timer0 overflow的中斷
    
    TL0 = _TL0_; //設定差50000個machine cycle才觸發中斷 
    TH0 = _TH0_; 
    TR0 = 1;     //TCON內的TR0設定為1，啟動Timer0 
    counter = 0;
    
    for(i = 0; i < 5; i++)
	{  //初始化LCD
	   //1.資料以8位元傳送 螢幕雙列 字元不放大 
	   //2.螢幕開啟顯示游標且不閃爍 
	   //3.讀寫RAM後螢幕和指標自動往右
	   //4.游標歸位左上方
	   //5.清空螢幕
        LCDcmd(init[i]); 
    }
    
    for(i = 0; i < 7; i++){   
	    LCDcmd( addr1[i] );//設定位子 
        LCDdata( startmsg1[i] );
    }
    for(i = 0; i < 16; i++){   
	    LCDcmd( addr2[i] );//設定位子 
        LCDdata( startmsg2[i] );
    }
    
    while(1)
	{
        x=getkey(); 
        LCDcmd(0x80);     //設定DDRAM位置00H (螢幕左上角) 
        //LCDdata(msg[x]);  //將按下的按鍵資料放入DDRAM內
		
		/*if( c == 3 ){
			c = 0;
			LCDcmd( addr1[a] );
        	LCDdata( 'v' );
			LCDcmd( addr2[m] );
        	LCDdata( '*' );
			if(x==14){//E
				dir_m = 1;
			}
			else if(x==15){//F
				dir_m = 0;
			}
			get = 0;
		} */
        
        if(state == 0){//遊戲尚未開始 
        	if(x == 0 ){
        	    state = 1;
        	    a=0; 
        	    LCDcmd( 0x01 );
        	    LCDcmd( addr1[a] );
        	    LCDdata( 'v' );
		    }
	    }
		else if(state == 1){//遊戲階段 
			if(x == 7){
        	    if(a != 0){
        		    LCDcmd( 0x01 );
        		    a--;
			        LCDcmd( addr1[a] );
        	        LCDdata( 'v' );
        	        LCDcmd( addr2[m] );
        	        LCDdata( '*' );
			    }
		    }
		    else if(x == 9){
        	    if(a != 15){
        	    	LCDcmd( 0x01 );
        		    a++;
			        LCDcmd( addr1[a] );
        	        LCDdata( 'v' );
        	        LCDcmd( addr2[m] );
        	        LCDdata( '*' );
			    }
		    }
		    else if(x == 10){//A
			    state = 2;//選擇速度 
			    //LCDcmd( 0x01 );
			    //LCDdata( 'A' );
		    }
		    else if( x==8 && a==m){//打地鼠 
		    	get = 1;
		    	count++;
		    	LCDcmd( addr1[a] );
        	    LCDdata( 'v' );
        	    LCDcmd( addr2[m] );
        	    LCDdata( '-' );
        	   
			}
			else if(x == 11){//B看分數 
			    LCDcmd( addr1[a] );
        	    LCDdata( 'v' );
        	    LCDcmd( addr2[m] );
        	    LCDdata( '-' );
			 	LCDcmd( addr1[0] );
        	    LCDdata( msg[count] );
			}
			else if(x == 14){//E
				a = 15 - a;
				LCDcmd( addr1[a] );
        	    LCDdata( 'v' );
        	    LCDcmd( addr2[m] );
        	    LCDdata( '-' );
			}
		}
        else if(state == 2){//選地鼠速度
            state = 1;
		    if( x == 7 ){
		    	COUNTER = COUNTER1;
		    } 
			else if( x == 8 ){
		    	COUNTER = COUNTER2;
		    } 
		    else if( x == 9 ){
		    	COUNTER = COUNTER3;
		    } 
        
        }    
        
    }
}

void tmiintrt(void) interrupt 1  //Timer0 overflow中斷 
{
    TL0 = _TL0_;  //重設時間
    TH0 = _TH0_;
    counter++;
    if(counter == COUNTER)
	{
		if(state == 1 && get == 0 ){
			if(dir_m == 1){
    		    if( m != 15 ){
    			    LCDcmd( 0x01 );
        		     m++;
        		    LCDcmd( addr1[a] );
        	        LCDdata( 'v' );
			        LCDcmd( addr2[m] );
        	        LCDdata( '*' );
			    }
			    else{
				    dir_m = 0;
			    }	
		    }
		    else if(dir_m == 0){
    		    if( m != 0 ){
    			    LCDcmd( 0x01 );
        		    m--;
        		    LCDcmd( addr1[a] );
        	        LCDdata( 'v' );
			        LCDcmd( addr2[m] );
        	        LCDdata( '*' );
			    }else{
				    dir_m = 1;
			    }
		    }
    	    
		}
		else if(state == 1 && get == 1 ){
			c++;
			if( c == 3 ){
				c = 0;
				get = 0;
			}
		}
    	counter = 0;//////////////////////////////
    
    }
}


void interr_s(void) interrupt 4  //(? serial interrupt) 
{
    if (RI)
	{
        RI = 0;
        rx_flag = 1; 
        ch = SBUF;
        LCDcmd(0xc0); 
        LCDdata(ch);
    }
    else
	{
    	TI = 0;
    }
}
int getkey()  //<<上次的 
{
    int i,k=-1; 
    while(1)
	{
        for(i=0;i<4;i++)
		{
            P1=ser[i]; 
            if(P1!=ser[i])
			{
                if(P1==keymsg[i]) 
                    k=key[i];
                else if(P1==keymsg[i+4])
                    k=key[i+4];
                else if(P1==keymsg[i+8]) 
                    k=key[i+8];
                else if(P1==keymsg[i+12]) 
                    k=key[i+12];
            }
            if (k!=-1) 
                break ;
        }
        if(k!=-1)
            while(1)
			{
                P1=ser[i]; 
                if(P1==ser[i])
                    return k;
        	}
    }
}

void LCDcmd(char hex) 
{
    delay(1000);  //延遲一下，避免按下按鍵的短暫電位晃動(Debounce) 
    P2 = hex;     //P2放入指令 
    P3_4 = 1;     //ENABLE = 1  LCD致能 
    P3_4 = 0;     //ENABLE = 0  關閉LCD致能 
}

void LCDdata(char hex)
{
    delay(1000);  //延遲一下，避免按下按鍵的短暫電位晃動(Debounce) 
    P2 = hex;     //P2放入指令 
    P3_4 = 1;     //ENABLE = 1  LCD致能 
    P3_2 = 1;     //RS = 1  (R_W依舊是0) 寫資料到DDRAM或CGRAM 
    P3_4 = 0;     //ENABLE = 0  關閉LCD致能  
    P3_2 = 0;     //RS = 0  (R_W依舊是0) 恢復寫命令到LCD的狀態 
}

void delay(int t)
{
    int i;
    for(i = 0; i < t; i++)
        ;
}
