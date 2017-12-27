#ifndef _VSDATSPI_H_
#define _VSDATSPI_H_

#include "stm8s.h"



	///GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_PP_HIGH_FAST);          //C2 VS DATA 
	//GPIO_Init(GPIOE,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);          //E5 VS DATA CLK

extern void delay_us();
#define VSD_MOSI_H()   GPIOC->ODR|=GPIO_PIN_1
#define VSD_MOSI_L()   GPIOC->ODR&=~GPIO_PIN_1
#define VSD_SCK_H()    GPIOE->ODR|=GPIO_PIN_5
#define VSD_SCK_L()    GPIOE->ODR&=~GPIO_PIN_5
#define VS_BSYNC_H()   GPIOB->ODR|=GPIO_PIN_0
#define VS_BSYNC_L()   GPIOB->ODR&=~GPIO_PIN_0

void vsd_sendbyte(unsigned char data)
{
    unsigned char i,temp=data;
    for(i=0;i<8;i++)
    {

      VSD_SCK_L();
			 
      if(temp&0x80){
          VSD_MOSI_H(); 
      }else{
          VSD_MOSI_L();
      }
			nop();
			VSD_SCK_H(); 
			VS_BSYNC_L();
			nop();
      temp<<=1;
    }
		VSD_SCK_L();
}



#endif
