//����|  LCD �����]�p
#include "8051.h"

// P2   :data bus 
// P3.2	:RS
// P3.3 :R_W
// P3.4 :ENABLE

#define SIZE 8         //�X��LED�A���᭱��code��
#define _TH0_ 0x3c     //[3C]E0
#define _TL0_ 0xe0     //3C[E0]
#define COUNTER1  10    //10�����_�A�f�t�᭱��code�ΨӰ�0.5��@�����ƥ�
#define COUNTER2  20    //20�����_�A�f�t�᭱��code�ΨӰ�1��@�����ƥ�
#define COUNTER3  30    //30�����_�A�f�t�᭱��code�ΨӰ�1.5��@�����ƥ�

int COUNTER;

char counter;

void LCDcmd(char hex);   //��J�R�O��LCD 
void LCDdata(char hex);  //��J��ƨ�LCD 
code char addr1[] = {0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f }; //�]�w�Ĥ@���m 
code char addr2[] = {0xce, 0xc6, 0xc3, 0xcc, 0xc8, 0xc1, 0xcf, 0xc5, 0xc2, 0xcb, 0xc7, 0xc4, 0xca, 0xc9, 0xcd, 0xc0 }; //�]�w�ĤG���m
code char init[] = {0x38    ,0x0e    ,0x06    ,0x02    ,0x01   }; 
                  //00111111 00001110 00000110 00000010 00000001  ��Ө����q�W�����R�O 
code char ser[]={0xfe,0xfd,0xfb,0xf7};     //<<�W����  
code int key[]={1,2,3,12,4,5,6,13,7,8,9,14,10,0,11,15};  //<<�W����
code char keymsg[]={0xee,0xed,0xeb,0xe7,
                    0xde,0xdd,0xdb,0xd7, 
                    0xbe,0xbd,0xbb,0xb7, 
                    0x7e,0x7d,0x7b,0x77};  //<<�W����
code char msg[] = "0123456789abcdef";      //<<�W����
code char startmsg1[] = "hamster";
code char startmsg2[] = "press 0 to start";
int rx_flag;  //(?) 
char ch;
void delay (int t); 
int getkey();

int m;//�a����m 
int dir_m;//�a����V 

int a;//�y�H��m 
int state;//�i�J�C���P�_
int get;//����a��
int c;//�����p�� 
int count;//����X�� 

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
    
    P3_2 = 0;   // RS��l�Ƭ�0 
    P3_3 = 0;   // R_W��l�Ƭ�0 
    P3_4 = 0;   // ENABLE��l�Ƭ�0�ALCD�P�ॢ�� 
    
    SCON=0x50;  //SCON�Ȧs��01010000 
    //TMOD=0x20;  //2�����A�]�wtimer1��mode2 
    TH1=0xf3;   //���q�W�����A�Ψӭp��baud
    TR1=1;      //timer1�Ұ�  
    //IE=0x90;    // <<��2����(?) 
    rx_flag=0;  // (?) 
    
    TCON=0x00;   //00000000 ��l��TCON�Ȧs�� 
    TMOD=0x21;   //00100001 �]�wtimer1��mode2 �]�wTimer0��16�줸�p�ƾ� 
    //IP=0x01;     //00000001 �]�wINT0(8051��12�}��)�u�� //
    IE=0x82;     //10000010 ���_�P��A�ҥΤFTimer0 overflow�����_
    
    TL0 = _TL0_; //�]�w�t50000��machine cycle�~Ĳ�o���_ 
    TH0 = _TH0_; 
    TR0 = 1;     //TCON����TR0�]�w��1�A�Ұ�Timer0 
    counter = 0;
    
    for(i = 0; i < 5; i++)
	{  //��l��LCD
	   //1.��ƥH8�줸�ǰe �ù����C �r������j 
	   //2.�ù��}����ܴ�ХB���{�{ 
	   //3.Ū�gRAM��ù��M���Ц۰ʩ��k
	   //4.����k�쥪�W��
	   //5.�M�ſù�
        LCDcmd(init[i]); 
    }
    
    for(i = 0; i < 7; i++){   
	    LCDcmd( addr1[i] );//�]�w��l 
        LCDdata( startmsg1[i] );
    }
    for(i = 0; i < 16; i++){   
	    LCDcmd( addr2[i] );//�]�w��l 
        LCDdata( startmsg2[i] );
    }
    
    while(1)
	{
        x=getkey(); 
        LCDcmd(0x80);     //�]�wDDRAM��m00H (�ù����W��) 
        //LCDdata(msg[x]);  //�N���U�������Ʃ�JDDRAM��
		
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
        
        if(state == 0){//�C���|���}�l 
        	if(x == 0 ){
        	    state = 1;
        	    a=0; 
        	    LCDcmd( 0x01 );
        	    LCDcmd( addr1[a] );
        	    LCDdata( 'v' );
		    }
	    }
		else if(state == 1){//�C�����q 
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
			    state = 2;//��ܳt�� 
			    //LCDcmd( 0x01 );
			    //LCDdata( 'A' );
		    }
		    else if( x==8 && a==m){//���a�� 
		    	get = 1;
		    	count++;
		    	LCDcmd( addr1[a] );
        	    LCDdata( 'v' );
        	    LCDcmd( addr2[m] );
        	    LCDdata( '-' );
        	   
			}
			else if(x == 11){//B�ݤ��� 
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
        else if(state == 2){//��a���t��
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

void tmiintrt(void) interrupt 1  //Timer0 overflow���_ 
{
    TL0 = _TL0_;  //���]�ɶ�
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
int getkey()  //<<�W���� 
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
    delay(1000);  //����@�U�A�קK���U���䪺�u�ȹq��̰�(Debounce) 
    P2 = hex;     //P2��J���O 
    P3_4 = 1;     //ENABLE = 1  LCD�P�� 
    P3_4 = 0;     //ENABLE = 0  ����LCD�P�� 
}

void LCDdata(char hex)
{
    delay(1000);  //����@�U�A�קK���U���䪺�u�ȹq��̰�(Debounce) 
    P2 = hex;     //P2��J���O 
    P3_4 = 1;     //ENABLE = 1  LCD�P�� 
    P3_2 = 1;     //RS = 1  (R_W���¬O0) �g��ƨ�DDRAM��CGRAM 
    P3_4 = 0;     //ENABLE = 0  ����LCD�P��  
    P3_2 = 0;     //RS = 0  (R_W���¬O0) ��_�g�R�O��LCD�����A 
}

void delay(int t)
{
    int i;
    for(i = 0; i < t; i++)
        ;
}
