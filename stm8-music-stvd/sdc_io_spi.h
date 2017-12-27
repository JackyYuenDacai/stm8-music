#ifndef _IOSPI_H_
#define _IOSPI_H_

#include "stm8s.h"
#include "bitband.h"

	//D7 1 GND
	//D6 2 SI
	//D5 7 SO
	//D4 8 NC
	//D3 9 NC
	//D2 5 CLK
const unsigned char DUS_C=2;
volatile void delay_us()  
{   
	int i=0;
	for(i=0;i<DUS_C;i++);
	
} 
#define SDC_MISO_RE()  (GPIOD->IDR&GPIO_PIN_5)
#define SDC_MOSI_H()   GPIOD->ODR|=GPIO_PIN_6
#define SDC_MOSI_L()   GPIOD->ODR&=~GPIO_PIN_6
#define SDC_CS_H()     GPIOD->ODR|=GPIO_PIN_7,delay_us()
#define SDC_CS_L()     GPIOD->ODR&=~GPIO_PIN_7,delay_us()
#define SDC_SCK_H()    GPIOD->ODR|=GPIO_PIN_2
#define SDC_SCK_L()    GPIOD->ODR&=~GPIO_PIN_2
//#define SDC_SCK_L()   _asm("ld a,$0x500F");_asm("and a,#251");	_asm("ld $0x500F,a");
//#define SDC_SCK_H()		_asm("ld a,$0x500F");_asm("or a,#4");		  _asm("ld $0x500F,a");
							
							

#define SDC_ASM
#ifdef SDC_ASM
extern unsigned char temp;
#endif
void __nop(){
}
void sdc_spi_init(void)
{
 	SDC_MOSI_H();
	SDC_SCK_H(); 
}
void sdc_sendbyte(unsigned char data)
{
#ifndef SDC_ASM
    unsigned char i,temp=data;
    //SDC_SCK_H();
    for(i=0;i<8;i++)
    {
      if(temp&0x80)
      {
          SDC_MOSI_H(); 
      }
      else
      {
          SDC_MOSI_L();
      }
			SDC_SCK_L(); 
			__nop();//__nop();
      SDC_SCK_H(); 
			__nop();//__nop();
      temp<<=1;
    }    
		SDC_SCK_H();
		SDC_MOSI_H(); 
#endif
#ifdef SDC_ASM
		SDC_SCK_H();
		temp=data;
		#asm
							ld a,#8        //set k=8
				//			jra __beginsend1
					__beginsend1:
							push a
							ld a,_temp     //if(temp&0x80)
							and a,#$80		 //goto set SI_H
							jrne __high1 
									ld a,$0x500F
									and a,#191
									ld $0x500F,a
									jra __jump_out1
							__high1:
									ld a,$0x500F
									or a,#64
									ld $0x500F,a
							__jump_out1:
							//delay not needed...
							ld a,$0x500F     //set SCK_L
							and a,#251
							ld $0x500F,a
							ld a,$0x500F    //set SCK_H
							or a,#4
							ld $0x500F,a
							sll _temp     //temp<<1
							pop a
							dec a
							jrne __beginsend1
			
	#endasm
	#endif
}
unsigned char sdc_readbyte_slow(void){
	unsigned char r=0,i;
	for(i=0;i<8;i++)
	{
	SDC_SCK_L();
	//__nop();
	r <<= 1; 
	//r+=SDC_MISO_RE();
	if(SDC_MISO_RE())
		r++;
	SDC_SCK_H();
	//__nop();
	}
	return r;
}
unsigned char sdc_readbyte_fast(void){
	#asm
		
		ld a,#0
		ld _temp,a
		ld a,#8
		__beginrecv:
			push a
			ld a,$0x500F     //set SCK_L
			and a,#251
			ld $0x500F,a
			
			ld a,_temp			//_temp<<1
			sll a
			ld _temp,a
			//ld _temp,xl
			ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
			and a,#32		//GPIOD PIN5
			jrne __recvHigh
			nop
			jra __offjump
		__recvHigh:
			ld a,_temp			//_temp++
			add a,#1
			ld _temp,a
		__offjump:
			ld a,$0x500F    //set SCK_H
			or a,#4
			ld $0x500F,a		
			pop a
			dec a
			jrne __beginrecv
		
	#endasm
	return temp;
}
unsigned char sdc_readbyte(void)
{
	#ifndef SDCASM
	unsigned char r=0;
	temp=0;
	SDC_SCK_L();if(SDC_MISO_RE())r+=128;SDC_SCK_H();
	SDC_SCK_L();if(SDC_MISO_RE())r+=64;	SDC_SCK_H();
	SDC_SCK_L();if(SDC_MISO_RE())r+=32;	SDC_SCK_H();
	SDC_SCK_L();if(SDC_MISO_RE())r+=16;	SDC_SCK_H();
	SDC_SCK_L();if(SDC_MISO_RE())r+=8;	SDC_SCK_H();
	SDC_SCK_L();if(SDC_MISO_RE())r+=4;	SDC_SCK_H();
	SDC_SCK_L();if(SDC_MISO_RE())r+=2;	SDC_SCK_H();
	SDC_SCK_L();if(SDC_MISO_RE())r+=1;	SDC_SCK_H();
	return r;
	#endif
	#ifdef SDCASM
	#asm
		
		ld a,#0
		ld _temp,a
		 
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh0
		nop
		jra __offjump0
	__recvHigh0:
		ld a,_temp			//_temp++
		add a,#128
		ld _temp,a
	__offjump0:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a		
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh1
		nop
		jra __offjump1
	__recvHigh1:
		ld a,_temp			//_temp++
		add a,#64
		ld _temp,a
	__offjump1:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a				
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh2
		nop
		jra __offjump2
	__recvHigh2:
		ld a,_temp			//_temp++
		add a,#32
		ld _temp,a
	__offjump2:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a				
		
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh3
		nop
		jra __offjump3
	__recvHigh3:
		ld a,_temp			//_temp++
		add a,#16
		ld _temp,a
	__offjump3:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a				
		
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh4
		nop
		jra __offjump4
	__recvHigh4:
		ld a,_temp			//_temp++
		add a,#8
		ld _temp,a
	__offjump4:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a				
		
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh5
		nop
		jra __offjump5
	__recvHigh5:
		ld a,_temp			//_temp++
		add a,#4
		ld _temp,a
	__offjump5:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a				
		
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh6
		nop
		jra __offjump6
	__recvHigh6:
		ld a,_temp			//_temp++
		add a,#2
		ld _temp,a
	__offjump6:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a				
		
		
		ld a,$0x500F     //set SCK_L
		and a,#251
		ld $0x500F,a
		nop
		ld a,_temp			//_temp<<1
		sll a
		ld _temp,a
		
		ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
		and a,#32		//GPIOD PIN5
		jrne __recvHigh7
		nop
		jra __offjump7
	__recvHigh7:
		ld a,_temp			//_temp++
		add a,#1
		ld _temp,a
	__offjump7:
	
		ld a,$0x500F    //set SCK_H
		or a,#4
		ld $0x500F,a		

	#endasm
	return temp;
	#endif
}



#endif
