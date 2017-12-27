#ifndef _VSCMDSPI_H_
#define _VSCMDSPI_H_

#include "stm8s.h"


	//GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);		//C5 SCK
	//GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_FAST); 	//C6 SI
	//GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_IN_PU_NO_IT);       	//C7 SO
	//GPIO_Init(GPIOC,GPIO_PIN_4,GPIO_MODE_OUT_PP_HIGH_FAST);     //C4 XCS
	//GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_OUT_PP_HIGH_FAST);          //C3 XRESET
	//GPIO_Init(GPIOC,GPIO_PIN_2,GPIO_MODE_IN_PU_NO_IT);          //C2 DREQ
extern unsigned char DUS_C;
extern void delay_us();
#define VSC_MISO_RE()  (GPIOC->IDR&GPIO_PIN_7)>>4
#define VSC_MOSI_H()   GPIOC->ODR|=GPIO_PIN_6
#define VSC_MOSI_L()   GPIOC->ODR&=~GPIO_PIN_6
#define VSC_CS_H()     GPIOC->ODR|=GPIO_PIN_4
#define VSC_CS_L()     GPIOC->ODR&=~GPIO_PIN_4
#define VSC_SCK_H()    GPIOC->ODR|=GPIO_PIN_5
#define VSC_SCK_L()    GPIOC->ODR&=~GPIO_PIN_5
#define VS_BSYNC_H()   GPIOB->ODR|=GPIO_PIN_0
#define VS_BSYNC_L()   GPIOB->ODR&=~GPIO_PIN_0
#define VS_RESET_H()   GPIOC->ODR|=GPIO_PIN_3
#define VS_RESET_L()    GPIOC->ODR&=~GPIO_PIN_3
#define VS_DREQ_RE() (GPIOC->IDR&GPIO_PIN_2)>>1

void vsc_spi_init(void)
{

}

void vsc_sendbyte(unsigned char data)
{
    unsigned char i,temp=data;
    VSC_SCK_H();
    ;;;
    for(i=0;i<8;i++)
    {
      VSC_SCK_L();;
      if(temp&0x80)
      {
          VSC_MOSI_H(); 
      }
      else
      {
          VSC_MOSI_L();
      }
			
      VSC_SCK_H(); 
      temp<<=1;
    }
}
void vsc_sendbyte_slow(unsigned char data){
    unsigned char i,temp=data;
    VSC_SCK_H();
    delay_us();
    for(i=0;i<8;i++)
    {
      VSC_SCK_L();;
      if(temp&0x80)
      {
          VSC_MOSI_H(); 
      }
      else
      {
          VSC_MOSI_L();
      }
			delay_us();delay_us();
      VSC_SCK_H(); delay_us();delay_us();
      temp<<=1;
    }
}

unsigned char vsc_readbyte(void)
{
	unsigned char r=0,i;
	//VSC_MOSI_L();
	VSC_SCK_H(); 
	;;;
	for(i=0;i<8;i++)
	{
	VSC_SCK_L();
	r <<= 1; 
	if(VSC_MISO_RE())
		r++;
	VSC_SCK_H();
	}
	return r;
}



#endif
