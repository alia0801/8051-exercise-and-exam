//實驗一 步進馬達
#include "reg51.h"
void delay (int t);
void turn ( );

code char step [ ] = {0x09,0x03,0x06,0x0c};
int dir , dt;  //dir：方向  dt：時間間隔

void main ( )
{
	int i;
   dt=25000;
   //dir=1;
    while(1) {
   	    dir=1; 
   	    for(i = 0; i <10; i++){
   	 	   turn( );
	    }
        dir=2;
        for(i = 0; i <10; i++){
   	 	   turn( );
	    }
   }
}

void turn( )
{ 
   int x;
   if(dir == 1){  //turn right
    	for(x=0;x<4;x++) {
         P1=step[x];
         delay(dt);
      }
   }
   else if(dir == 2){
   	    for(x=3;x>=0;x--){
   	  	 P1=step[x];
         delay(dt);
		 }
   }
}
void delay(int t)
{
   int x;
   for(x=0;x<t;x++)
         ;
}
