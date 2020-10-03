//���礭 ADC�ഫ 
#include "reg51.h"
#define	LED P0	
#define	DB P1
#define	WR P3

void main()
{
    IT0 = 1;
    EX0 = 1;
    EA = 1;
    LED = 0x00;  //�w�]���G 
    WR &= 0xbf;  //10111111 16(WR)�}��ԧC 
    WR |= 0x40;  //01000000 16(WR)�}��԰� (��ADC0804�H���A���@��ADC�ഫ) 
    while(1);
}

void int_0(void) interrupt 0
{
	if( DB == 0 ){
		LED = 0xff;
	}
	else if( DB < 32 ){
		LED = 0xfe;
	}
	else if( DB < 64 ){
		LED = 0xfc;
	}
	else if( DB < 96 ){
		LED = 0xf8;
	}
	else if( DB < 128 ){
		LED = 0xf0;
	}
	else if( DB < 160 ){
		LED = 0xe0;
	}
	else if( DB < 192 ){
		LED = 0xc0;
	}
	else if( DB < 224 ){
		LED = 0x80;
	}
	else if( DB < 256 ){
		LED = 0x00;
	} 
   // LED = DB ^ 0xff;  //xor ->P1�O1���}���P0�H0��X(LED�G) 
    WR &= 0xbf;       //10111111 16(WR)�}��ԧC 
    WR |= 0x40;       //01000000 16(WR)�}��԰� (��ADC0804�H���A���@��ADC�ഫ) 
}
