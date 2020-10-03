//實驗四  LCD 介面設計
#include "8051.h"

// P2   :data bus 
// P3.2	:RS
// P3.3 :R_W   R/W = 0 時，LCD 執行寫入的動作，R/W = 1 時則做讀取的動作。
// P3.4 :ENABLE

void LCDcmd(char hex);   //輸入命令到LCD 
void LCDdata(char hex);  //輸入資料到LCD 
code char init[] = {0x38    ,0x0e    ,0x06    ,0x02    ,0x01   }; 
//對照到講義上面的命令00111111 00001110 00000110 00000010 00000001
code char addr[] = {0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89 }; //設定第一行位置 

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

char temp[10];
int pcount = 0;
char phones[5][10];

void main()
{
	char num;
    int i,x,j,k;
    int t = 0;
	int state = 1; //state=1 store   state=0 see
	int ad = 0;
	int p = 0;
    P3_2 = 0;   // RS初始化為0 
    P3_3 = 0;   // R_W初始化為0 
    P3_4 = 0;   // ENABLE初始化為0，LCD致能失效 
   // char phones[5][10];
    //int p;//記錄第幾筆資料
    //char temp[10];
    pcount = 0;

    for(i = 0; i < 5; i++)
    {   //初始化LCD
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
            num = msg[x];
            if(x==12){//C clear all
               	LCDcmd(0x01);  
			}
			
			else if(x==15){//F enter read mode
				state = 0;
				pcount = 0;
				for(k=0; k<10; k++){	
					LCDcmd(addr[k]);//依序設定顯示位置 
					LCDdata( phones[0][k] );//顯示數字 
				} 
			}
			
			else if(state == 1){//store mode
			
			    if(x==14){//E enter
				    j=0;  
			        if(p==5){//超過5筆從第1筆覆蓋 
			        	p=0;
					} 
			        if(p<5){//未超過5筆 
			            for(k=0; k<10; k++){//將temp內東西存到電話簿
				     	    phones[p][k] = temp[k];
					    }
						p++;
						LCDcmd(0x01); 	
					}
				     
			    } else if(x<10){//是數字
				 
			    	if(j<10){//確認未超過10碼 
					    LCDcmd(addr[j]);//設定顯示位置 
					    temp[j] = num;
					    j++;
					    if(j == 10){
				        	j = 0;
					    } 
				    }
					
				}	
			}
			else if(state == 0){//read mode 
				if(x == 11){//B return store mode 
					state = 1;
					LCDcmd(0x01); 
				}
				else if(x == 13){//D see next
				    pcount++;
				    if(pcount==5){
				    	pcount = 0;
					}
				    if(pcount<5){
					    for(k=0; k<10; k++){	
					        LCDcmd(addr[k]);//依序設定顯示位置 
					        LCDdata( phones[pcount][k] );//顯示數字 
			    	    }
					} 
				}
			} 
			
            if(x>=10){//不是數字 顯示在第2行 
            	LCDcmd(0xc0);     //設定DDRAM位置40H (螢幕左下角) 
			}
            
            //LCDcmd(0x80);     //設定DDRAM位置00H (螢幕左上角) 
            LCDdata(num);  //將按下的按鍵資料放入DDRAM內 
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
