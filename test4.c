//����|  LCD �����]�p
#include "8051.h"

// P2   :data bus 
// P3.2	:RS
// P3.3 :R_W   R/W = 0 �ɡALCD ����g�J���ʧ@�AR/W = 1 �ɫh��Ū�����ʧ@�C
// P3.4 :ENABLE

void LCDcmd(char hex);   //��J�R�O��LCD 
void LCDdata(char hex);  //��J��ƨ�LCD 
code char init[] = {0x38    ,0x0e    ,0x06    ,0x02    ,0x01   }; 
//��Ө����q�W�����R�O00111111 00001110 00000110 00000010 00000001
code char addr[] = {0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89 }; //�]�w�Ĥ@���m 

code char ser[]={0xfe,0xfd,0xfb,0xf7};     //<<�W����  
code int key[]={1,2,3,12,4,5,6,13,7,8,9,14,10,0,11,15};  //<<�W����
code char keymsg[]={0xee,0xed,0xeb,0xe7,
                    0xde,0xdd,0xdb,0xd7, 
                    0xbe,0xbd,0xbb,0xb7, 
                    0x7e,0x7d,0x7b,0x77};  //<<�W����
code char msg[] = "0123456789abcdef";      //<<�W����
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
    P3_2 = 0;   // RS��l�Ƭ�0 
    P3_3 = 0;   // R_W��l�Ƭ�0 
    P3_4 = 0;   // ENABLE��l�Ƭ�0�ALCD�P�ॢ�� 
   // char phones[5][10];
    //int p;//�O���ĴX�����
    //char temp[10];
    pcount = 0;

    for(i = 0; i < 5; i++)
    {   //��l��LCD
        //1.��ƥH8�줸�ǰe �ù����C �r������j 
        //2.�ù��}����ܴ�ХB���{�{ 
        //3.Ū�gRAM��ù��M���Ц۰ʩ��k
        //4.����k�쥪�W��
        //5.�M�ſù�
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
					LCDcmd(addr[k]);//�̧ǳ]�w��ܦ�m 
					LCDdata( phones[0][k] );//��ܼƦr 
				} 
			}
			
			else if(state == 1){//store mode
			
			    if(x==14){//E enter
				    j=0;  
			        if(p==5){//�W�L5���q��1���л\ 
			        	p=0;
					} 
			        if(p<5){//���W�L5�� 
			            for(k=0; k<10; k++){//�Ntemp���F��s��q��ï
				     	    phones[p][k] = temp[k];
					    }
						p++;
						LCDcmd(0x01); 	
					}
				     
			    } else if(x<10){//�O�Ʀr
				 
			    	if(j<10){//�T�{���W�L10�X 
					    LCDcmd(addr[j]);//�]�w��ܦ�m 
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
					        LCDcmd(addr[k]);//�̧ǳ]�w��ܦ�m 
					        LCDdata( phones[pcount][k] );//��ܼƦr 
			    	    }
					} 
				}
			} 
			
            if(x>=10){//���O�Ʀr ��ܦb��2�� 
            	LCDcmd(0xc0);     //�]�wDDRAM��m40H (�ù����U��) 
			}
            
            //LCDcmd(0x80);     //�]�wDDRAM��m00H (�ù����W��) 
            LCDdata(num);  //�N���U�������Ʃ�JDDRAM�� 
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
