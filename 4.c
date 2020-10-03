//實驗四  LCD 介面設計
#include "8051.h"

// P2   :data bus 
// P3.2	:RS
// P3.3 :R_W
// P3.4 :ENABLE

void LCDcmd(char hex);   //輸入命令到LCD 
void LCDdata(char hex);  //輸入資料到LCD 
code char init[] = {0x38    ,0x0e    ,0x06    ,0x02    ,0x01   }; 
                  //00111111 00001110 00000110 00000010 00000001  對照到講義上面的命令 
code char ser[]={0xfe,0xfd,0xfb,0xf7};     //<<上次的  
code int key[]={1,2,3,12,4,5,6,13,7,8,9,14,10,0,11,15};  //<<上次的
code char keymsg[]={0xee,0xed,0xeb,0xe7,
                    0xde,0xdd,0xdb,0xd7, 
                    0xbe,0xbd,0xbb,0xb7, 
                    0x7e,0x7d,0x7b,0x77};  //<<上次的
code char msg[] = "0123456789abcdef";      //<<上次的
int rx_flag;  //(?) 
char ch;
void delay (int t); 
int getkey();

void main()
{
    int i,x; 
    P3_2 = 0;   // RS初始化為0 
    P3_3 = 0;   // R_W初始化為0 
    P3_4 = 0;   // ENABLE初始化為0，LCD致能失效 
    SCON=0x50;  // <<上次的 (?) 
    TMOD=0x20;  // <<上次的 (?)  
    TH1=0xfd;   // <<上次的 (?)  
    TR1=1;      // <<上次的 (?)  
    IE=0x90;    // <<第2次的(?) 
    rx_flag=0;  // (?) 
    for(i = 0; i < 5; i++)
	{  //初始化LCD
	   //1.資料以8位元傳送 螢幕雙列 字元不放大 
	   //2.螢幕開啟顯示游標且不閃爍 
	   //3.讀寫RAM後螢幕和指標自動往右
	   //4.游標歸位左上方
	   //5.清空螢幕
        LCDcmd(init[i]); 
    }
    while(1)
	{
        if (rx_flag==1)
		{  // (?) 
            rx_flag = 0; 
            SBUF = ch;
        }
        else
		{
            x=getkey(); 
            LCDcmd(0x80);     //設定DDRAM位置00H (螢幕左上角) 
            LCDdata(msg[x]);  //將按下的按鍵資料放入DDRAM內 
        }
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
