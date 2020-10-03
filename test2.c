#include "reg51.h"

/*************************************************************/
/* 石英震盪器震一次需1/12M秒 8051的設計為震12次一個machine cycle 
/* 一個machine cycle 1/1M秒  50000個machine cycle 0.05秒
/* 設定timer0起始值 = (65535 - 50000) = 3CAF (0.05 秒/中斷)
/* ps. 65536是2的16次方，待會會設定Timer0為16位元計數器
/* 0.05 x 20 = 1  0.05秒的中斷跑20次，以1秒為週期LED亮或暗起來
/*************************************************************/

#define SIZE 8         //幾個LED，給後面的code用
#define _TH0_ 0xb1     //[3C]AF 
#define _TL0_ 0xdf     //3C[AF]
#define COUNTER  50    //20次中斷，搭配後面的code用來做1秒一次的事件 

void delay(int t);
void show(int method);
code char light[] = {0xfe    ,0xfd    ,0xfb    ,0xf7    ,0xef    ,0xdf    ,0xbf    ,0x7f    }; 
//                   11111110 11111101 11111011 11110111 11101111 11011111 10111111 01111111

char counter;

void main()
{
    TCON = 0x00;   //00000000 初始化TCON暫存器 
    TMOD = 0x01;   //00000001 設定Timer0為16位元計數器 
    IP = 0x01;     //00000001 設定INT0(8051的12腳位)優先 //
    IE = 0x83;     //10000011 中斷致能，啟用了Timer0 overflow的中斷和INT0的中斷 
    
    TL0 = _TL0_; //設定差50000個machine cycle才觸發中斷 
    TH0 = _TH0_; 
    
    TR0 = 1;     //TCON內的TR0設定為1，啟動Timer0 
    P1 = 0xff;   //11111111，預設8個LED全暗 
    counter = 0;
    while(1)
    {  //不做事，待在迴圈裏面，等中斷跳出去做其他事 
        ;
    }
}

void tmiintrt(void) interrupt 1  //Timer0 overflow中斷 
{
    TL0 = _TL0_;  //重設時間
    TH0 = _TH0_;
    counter++;
    if(counter == COUNTER)
    {
    	if (P1 == 0xff)  //若全暗->全亮 
    	    P1 = 0x00;
    	else             //否則全暗 
    	    P1 = 0xff;
    	counter = 0;
    }
}

void intx(void) interrupt 0  //INT0(8051 12腳位)外部中斷 
{
    if(P3==0xfa)  //按了接8051 10腳位的按鈕 
        show(0);
    else if (P3 == 0xf9)  //按了接8051 11腳位的按鈕 
        show(1);
    else
        show(2);  //同時按下兩個按鈕(不太可能同時按下，兩個按鈕都壓著別放開試試) 
}

void show(int method)
{  //根據按下的按鈕，LED燈的閃爍方式 
    int x;
    if (method ==0 || method == 2)
    {
    	IE = 0x83; 
       /* for (x=0;x<SIZE;x++)
        {
            P1=light[x]; 
            delay(10000); 
        }*/
    }
    if (method ==1 || method == 2)
    {
    	IE = 0x81; 
        /*for (x=SIZE-1;x>=0;x--)
        {
            P1=light[x]; 
            delay(10000);
        }*/
    }
}
void delay(int t)
{
    int x;
    for (x=0;x<t;x++);
}
