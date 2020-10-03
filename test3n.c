#include "reg51.h"

/*****************************************************************/ 
/* 16格鍵盤的判斷方式為按下某個按鍵則使某兩個接腳短路
/* 此code用8051的P1 8個接腳來判斷按下了什麼按鍵，再以UART將資料傳入到PC
/*****************************************************************/ 

code char ser[]={0xfe,0xfd,0xfb,0xf7};  //以行(列)檢查有沒有按按鍵用 
code int key[]={1,2,3,12,4,5,6,13,7,8,9,14,10,0,11,15};  //按下某按鍵轉int用 
code char keymsg[]={0xee,0xed,0xeb,0xe7,
                    0xde,0xdd,0xdb,0xd7, 
                    0xbe,0xbd,0xbb,0xb7, 
                    0x7e,0x7d,0x7b,0x77};  //確認按下了哪個按鍵用 
code char msg[] = "0123456789abcdef";  //最後輸出的時候要轉成char用 
code char startmsg[] = "Hello ";  //連結到PC一開始確認用 
void send(char ch);  //傳送資料到PC 
void delay (int t); 
int getkey();        //判斷按下了什麼按鍵，回傳int 

void main( )
{
    int x;      //儲存按了什麼 
    int y;      //for迴圈用 
    SCON=0x50;  //SCON暫存器01010000 
    TMOD=0x20;  //上次的，設定timer1為mode2 
    TH1=0xe6;   //講義上有說，用來計算baud
    TR1=1;      //timer1啟動 

    for(y=0;y<5;y++)        //開始時先送出"Hello world" 
        send(startmsg[y]);  //ps.要送資料要以char送出 
    while(1)
    {
        x = getkey();       //將按下的按鈕的int存進來 
        if( x>=0 && x<=15)
            send(msg[x]);   //轉換為char後送出到PC 
    }
}
void send(char ch)
{
    SBUF=ch;        //將char值送入SERIAL DATA BUFFER傳送至PC 
    while(TI == 0)  //若TI旗標為0(資料正在傳送) 
        ;           //不做事，當資料傳完之後TI旗標會由硬體改變為1，跳出迴圈 
    TI=0;           //要用軟體方式把旗標改回0 
}

int getkey()
{
    int i;     //for迴圈用 
    int k=-1;  //判斷是否有按下按鍵 和 按下了什麼按鍵用 
    while(1)
	{
        for(i=0;i<4;i++)
        {    //以行(列)方式來逐一判斷有沒有按鍵按下去 
            P1=ser[i];      //迴圈定P1為11111110 11111101 11111011 11110111 
            if(P1!=ser[i])  //讀取P1，若P1不是剛剛定的那樣->有按下某個按鍵，加以列(行)判斷按下什麼按鍵 
            {    //靠著鍵盤短路，使前面4bits的1111某bit變成0，偵測哪bit變為0來判斷按下哪個按鍵 
                if(P1==keymsg[i]) 
                    k=key[i];
                else if(P1==keymsg[i+4]) 
                    k=key[i+4];
                else if(P1==keymsg[i+8]) 
                    k=key[i+8];
                else if(P1==keymsg[i+12]) 
                    k=key[i+12];
            }
            if (k!=-1) break ;  //若有按下按鍵，則k會變為對應到的int，不會是-1，break for迴圈 
        }
        if(k!=-1)               //若有按下按鍵，準備回傳值 
        while(1)
        {
            P1=ser[i];          //將P1再定回為原來判斷的樣子 
            if(P1==ser[i])      //若P1是原來判斷的樣子(用來保證按鍵被放開了) 
                return k;       //回傳int值k 
        }
    }
}

void delay (int t)
{
    int x;
    for (x=0;x<t;x++)
        ;
}
