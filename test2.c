#include "reg51.h"

/*************************************************************/
/* �ۭ^�_�����_�@����1/12M�� 8051���]�p���_12���@��machine cycle 
/* �@��machine cycle 1/1M��  50000��machine cycle 0.05��
/* �]�wtimer0�_�l�� = (65535 - 50000) = 3CAF (0.05 ��/���_)
/* ps. 65536�O2��16����A�ݷ|�|�]�wTimer0��16�줸�p�ƾ�
/* 0.05 x 20 = 1  0.05�����_�]20���A�H1���g��LED�G�ηt�_��
/*************************************************************/

#define SIZE 8         //�X��LED�A���᭱��code��
#define _TH0_ 0xb1     //[3C]AF 
#define _TL0_ 0xdf     //3C[AF]
#define COUNTER  50    //20�����_�A�f�t�᭱��code�ΨӰ�1��@�����ƥ� 

void delay(int t);
void show(int method);
code char light[] = {0xfe    ,0xfd    ,0xfb    ,0xf7    ,0xef    ,0xdf    ,0xbf    ,0x7f    }; 
//                   11111110 11111101 11111011 11110111 11101111 11011111 10111111 01111111

char counter;

void main()
{
    TCON = 0x00;   //00000000 ��l��TCON�Ȧs�� 
    TMOD = 0x01;   //00000001 �]�wTimer0��16�줸�p�ƾ� 
    IP = 0x01;     //00000001 �]�wINT0(8051��12�}��)�u�� //
    IE = 0x83;     //10000011 ���_�P��A�ҥΤFTimer0 overflow�����_�MINT0�����_ 
    
    TL0 = _TL0_; //�]�w�t50000��machine cycle�~Ĳ�o���_ 
    TH0 = _TH0_; 
    
    TR0 = 1;     //TCON����TR0�]�w��1�A�Ұ�Timer0 
    P1 = 0xff;   //11111111�A�w�]8��LED���t 
    counter = 0;
    while(1)
    {  //�����ơA�ݦb�j���ح��A�����_���X�h����L�� 
        ;
    }
}

void tmiintrt(void) interrupt 1  //Timer0 overflow���_ 
{
    TL0 = _TL0_;  //���]�ɶ�
    TH0 = _TH0_;
    counter++;
    if(counter == COUNTER)
    {
    	if (P1 == 0xff)  //�Y���t->���G 
    	    P1 = 0x00;
    	else             //�_�h���t 
    	    P1 = 0xff;
    	counter = 0;
    }
}

void intx(void) interrupt 0  //INT0(8051 12�}��)�~�����_ 
{
    if(P3==0xfa)  //���F��8051 10�}�쪺���s 
        show(0);
    else if (P3 == 0xf9)  //���F��8051 11�}�쪺���s 
        show(1);
    else
        show(2);  //�P�ɫ��U��ӫ��s(���ӥi��P�ɫ��U�A��ӫ��s�����ۧO��}�ո�) 
}

void show(int method)
{  //�ھګ��U�����s�ALED�O���{�{�覡 
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
