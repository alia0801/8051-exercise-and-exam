//����T4x4��L�PRS232�����ǿ�
#include "reg51.h"

/*****************************************************************/ 
/* 16����L���P�_�覡�����U�Y�ӫ���h�ϬY��ӱ��}�u��
/* ��code��8051��P1 8�ӱ��}�ӧP�_���U�F�������A�A�HUART�N��ƶǤJ��PC
/*****************************************************************/ 

code char ser[]={0xfe,0xfd,0xfb,0xf7};  //�H��(�C)�ˬd���S��������� 
code int key[]={1,2,3,12,4,5,6,13,7,8,9,14,10,0,11,15};  //���U�Y������int�� 
code char keymsg[]={0xee,0xed,0xeb,0xe7,
                    0xde,0xdd,0xdb,0xd7, 
                    0xbe,0xbd,0xbb,0xb7, 
                    0x7e,0x7d,0x7b,0x77};  //�T�{���U�F���ӫ���� 
code char msg[] = "0123456789=/c+-*";  //�̫��X���ɭԭn�নchar�� 
code char startmsg[] = "Hello ";  //�s����PC�@�}�l�T�{�� 
void send(char ch);  //�ǰe��ƨ�PC 
void delay (int t); 
int getkey();        //�P�_���U�F�������A�^��int
int calculator(int op[]);



void main( )
{
    int x;      //�x�s���F���� 
    int y;      //for�j���
	int i; 
	int ans=0;
	int oper[3];
    int count = 0;
    SCON=0x50;  //SCON�Ȧs��01010000 
    TMOD=0x20;  //�W�����A�]�wtimer1��mode2 
    TH1=0xf3;   //���q�W�����A�Ψӭp��baud
    TR1=1;      //timer1�Ұ� 

    for(y=0;y<5;y++)        //�}�l�ɥ��e�X"Hello world" 
        send(startmsg[y]);  //ps.�n�e��ƭn�Hchar�e�X 
    for(y=0; y<3; y++){
    	oper[y] = -1;
	}
    while(1)
    {
        x = getkey();       //�N���U�����s��int�s�i�� 
        send(msg[x]);      //�ഫ��char��e�X��PC 
        
        if( x>=0 && x<=15){
        	if(x==12){ //���UC 
            
                for(i=0; i<3;i++){
                    oper[i] = -1;	
			    }
			    count = 0;
		    }
		    else if(x==10){//���UA = 
		    
			    //if(count == 2){
            	    ans = calculator(oper) ;
            	    send(msg[ans]);
			    //}
			    /*for(i=0; i<3;i++){
                    oper[i] = -1;	
			    }
			    count = 0;*/
		    }
		    else{
		    	oper[count] = x;
                count++;
			}
		}
            
    }
}

int calculator(int op[]){
	int oper = op[1];
	int op1 = op[0];
	int op2 = op[2];
	int t = 0;
	//char ans;
	if(oper == 11){//B /
		t = op1/op2;
	}
	else if(oper == 13){//D +
		t = op1+op2;
	}
	else if(oper == 14){//E -
		t = op1-op2;
	}
	else if(oper == 15){//F *
		t = op1*op2;
	}
	//ans = t+'0';
	 return t;
}

void send(char ch)
{
    SBUF=ch;        //�Nchar�Ȱe�JSERIAL DATA BUFFER�ǰe��PC 
    while(TI == 0)  //�YTI�X�Ь�0(��ƥ��b�ǰe) 
        ;           //�����ơA���ƶǧ�����TI�X�з|�ѵw����ܬ�1�A���X�j�� 
    TI=0;           //�n�γn��覡��X�Ч�^0 
}

int getkey()
{
    int i;     //for�j��� 
    int k=-1;  //�P�_�O�_�����U���� �M ���U�F�������� 
    while(1)
	{
        for(i=0;i<4;i++)
        {    //�H��(�C)�覡�ӳv�@�P�_���S��������U�h 
            P1=ser[i];      //�j��wP1��11111110 11111101 11111011 11110111 
            if(P1!=ser[i])  //Ū��P1�A�YP1���O���w������->�����U�Y�ӫ���A�[�H�C(��)�P�_���U������� 
            {    //�a����L�u���A�ϫe��4bits��1111�Ybit�ܦ�0�A������bit�ܬ�0�ӧP�_���U���ӫ��� 
                if(P1==keymsg[i]) 
                    k=key[i];
                else if(P1==keymsg[i+4]) 
                    k=key[i+4];
                else if(P1==keymsg[i+8]) 
                    k=key[i+8];
                else if(P1==keymsg[i+12]) 
                    k=key[i+12];
            }
            if (k!=-1) break ;  //�Y�����U����A�hk�|�ܬ������쪺int�A���|�O-1�Abreak for�j�� 
        }
        if(k!=-1)               //�Y�����U����A�ǳƦ^�ǭ� 
        while(1)
        {
            P1=ser[i];          //�NP1�A�w�^����ӧP�_���ˤl 
            if(P1==ser[i])      //�YP1�O��ӧP�_���ˤl(�ΨӫO�ҫ���Q��}�F) 
                return k;       //�^��int��k 
        }
    }
}

void delay (int t)
{
    int x;
    for (x=0;x<t;x++)
        ;
}
