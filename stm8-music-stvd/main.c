/**
  ******************************************************************************
  * @file    Project/main.c 
  * @author  MCD Application Team
  * @version V2.2.0
  * @date    30-September-2014
  * @brief   Main program body
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 


/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "oled.h"
#include "pff3/pff.h"
#include "vs1001k/vs1001.h"
#include "bitband.h"

#include "bmp.h"
/* Private defines -----------------------------------------------------------*/

 
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

#define VSD_SCK_H()    GPIOE->ODR|=GPIO_PIN_5
#define VSD_SCK_L()    GPIOE->ODR&=~GPIO_PIN_5
#define VS_BSYNC_H()   GPIOB->ODR|=GPIO_PIN_0
#define VS_BSYNC_L()   GPIOB->ODR&=~GPIO_PIN_0


#define  SYS_CLOCK    16
 
extern void delay_us(); 
unsigned char IsButtonB(){
	return GPIO_ReadInputPin(GPIOD,GPIO_PIN_0)&GPIO_PIN_0;
}
void Startup_CLOCK_Config(){
	 CLK_DeInit();
	 CLK_HSECmd(ENABLE);
	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV4);
	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV4);
}
void CLOCK_Config()  
{  
   CLK_DeInit();
	 CLK_HSECmd(ENABLE);
	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
}  
void GPIO_init(void){
	
	GPIO_DeInit(GPIOD);
	//LED
	GPIO_Init(GPIOB,GPIO_PIN_1,GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_Init(GPIOB,GPIO_PIN_2,GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_Init(GPIOB,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST);
	//VS1001K
	GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);		//C5		CMD SCK CHECK
	GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_FAST); 	//C6		CMD SI  CHECK
	GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_IN_FL_NO_IT);       	//C7		CMD SO  CHECK
	GPIO_Init(GPIOC,GPIO_PIN_4,GPIO_MODE_OUT_PP_HIGH_FAST);   //C4		XCS     CHECK
	GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_OUT_PP_HIGH_FAST);   //C3		XRESET  CHECK
	GPIO_Init(GPIOC,GPIO_PIN_2,GPIO_MODE_IN_FL_NO_IT);        //C2		DREQ    CHECK
	GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_PP_HIGH_FAST);   //C1		DATA   	CHECK-ISH 
	GPIO_Init(GPIOE,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);    //E5	DATA CLK	UNKNOWN
	GPIO_Init(GPIOB,GPIO_PIN_0,GPIO_MODE_OUT_PP_HIGH_FAST);   //B0	BSYNC			UNKNOWN
	//BUTTON
	GPIO_Init(GPIOD,GPIO_PIN_0,GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOF,GPIO_PIN_ALL,GPIO_MODE_IN_PU_NO_IT);
	
	EXTI_DeInit();
	
	//EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);//
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_LOW);
	
	//SD CARD
	GPIO_Init(GPIOD,GPIO_PIN_7|GPIO_PIN_2|GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_FAST);	//SD GND CLK SI
 
	GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_IN_PU_NO_IT);      											//SD SO 
	GPIO_Init(GPIOD,GPIO_PIN_4,GPIO_MODE_OUT_OD_HIZ_FAST);												//SD NC
	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST);												//SD NC
	//GPIOD->ODR=0;
	//OLED
	GPIO_Init(GPIOB,GPIO_PIN_4,GPIO_MODE_OUT_PP_HIGH_FAST);		//C5 VS CMD SCK
	GPIO_Init(GPIOB,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST); 	//C6 VS CMD SI
	
}

#define BYTEPTIME 768
#define SENDPTIME 24
unsigned char led_count=0;
unsigned char j=0,k=0,temp=0;	
unsigned int i=0,readlen=0,count;
unsigned char buf[BYTEPTIME];
unsigned char textbuf[264]={0};
unsigned int textlen=0;
unsigned int textshown_pos0=1;
unsigned int textshown_pos1=16;
volatile FATFS fs;

void led_routine(){
	if(led_count&1)GPIO_WriteHigh(GPIOB,GPIO_PIN_1); else GPIO_WriteLow(GPIOB,GPIO_PIN_1); 
	if(led_count&2)GPIO_WriteHigh(GPIOB,GPIO_PIN_2); else GPIO_WriteLow(GPIOB,GPIO_PIN_2); 
	if(led_count&4)GPIO_WriteHigh(GPIOB,GPIO_PIN_3); else GPIO_WriteLow(GPIOB,GPIO_PIN_3); 
	//GPIOB->ODR = (GPIOB->ODR&(~7))+(GPIOB->ODR&led_count);
}

volatile void playMP3File(const char*fileName){
	count=pf_open(fileName); 
	/*while(i<=0x10){  //no need to jump through ID3 Tags
		pf_read(buf,10,0); 
		i +=((DWORD)buf[6]&0x7F)*0x200000   +((DWORD)buf[7]&0x7F)*0x400+
				((DWORD)buf[8]&0x7F)*0x80   +((DWORD)buf[9]&0x7F)+10;
		pf_lseek(i);
	}*/
	vs1001_init_io();	
	vs1001_reset(HARD_RESET);
	pf_read(buf,BYTEPTIME,&readlen);
	do{
		for(count=0;count<SENDPTIME;count++){
				VSC_CS_H();
				#asm
				dreq_low:	
							ld a,$0x500B     //if(dreq == 1)
							and a,#$4		 //goto set dreq hi
							jrne dreq_hi
							jra dreq_low
				dreq_hi:
				#endasm
				for (j=0;j<32;j++)
				{
				
					temp=*(buf+(count<<5)+j);							
					#asm
							ld a,$5005		 //byte sync hi
							or a,#1
							ld $5005,a
							ld a,#8        //set k=8
							jra __beginsend
					__beginsend:
							push a
							ld a,$0x5014     //set SCK_L
							and a,#223
							ld $0x5014,a
							ld a,_temp     //if(temp&0x80)
							and a,#$80		 //goto set VSD_SI_H
							jrne __high 
									ld a,$500a
									and a,#253
									ld $500a,a
									jra __jump_out
							__high:
									ld a,$500a
									or a,#2
									ld $500a,a
							__jump_out:
							//delay not needed...
							ld a,$0x5014    //set SCK_H
							or a,#32
							ld $0x5014,a
							ld a,$5005	  //set BSYCN_L
							and a,#254
							ld $5005,a
							//delay
							sll _temp     //temp<<1
							pop a
							dec a
							jrne __beginsend
					#endasm
				
				}
		}
		pf_read(buf,BYTEPTIME,&readlen);
	}while(readlen!=0);
	vs1001_reset(HARD_RESET);
	
}
void TIM1_init(){
	TIM1_DeInit();
	TIM1_TimeBaseInit(0x1f3f,TIM1_COUNTERMODE_DOWN,500,0);
	TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
	TIM1_Cmd(ENABLE); 
}
void main(void)
{
	char a,b;
	sim();
	GPIO_init();
	b=pf_mount(&fs);
	vs1001_init_io();
	CLOCK_Config();
	delay_ms(500);
	TIM1_init();
	rim();
 	OLED_Init();			
	OLED_Clear(); 	
	
	//vs1001_init_chip();
	
	if(b==0)OLED_ShowString(0,0,"DISK_OK",16);
	else if(b==FR_NOT_READY)OLED_ShowString(0,0,"NOT_READY",16);
	else if(b==FR_DISK_ERR)OLED_ShowString(0,0,"DISK_ERR",16);
	else if(b==FR_NO_FILESYSTEM)OLED_ShowString(0,0,"NO_FILESYSTEM",16);
	else OLED_ShowString(0,0,"??",16);
	b=pf_open("TEST.TXT");
	if(b==FR_DISK_ERR)OLED_ShowString(0,2,"DISK_ERR",16);
	else if(b==FR_NOT_ENABLED)OLED_ShowString(0,2,"NOT_ENABLED",16);
	else if(b==FR_NO_FILE)OLED_ShowString(0,2,"DID NOT FIND",16);
	else if(b==FR_OK){
		OLED_ShowString(0,2,"OPENED",16);
		pf_read(buf,11,0);
		OLED_ShowString(0,0,buf,16);
	}
	a=pf_open("LETTER.TXT");
	
	if(a==FR_DISK_ERR)OLED_ShowString(0,2,"DISK_ERR",16);
	else if(a==FR_NOT_ENABLED)OLED_ShowString(0,2,"NOT_ENABLED",16);
	else if(a==FR_NO_FILE)OLED_ShowString(0,2,"DID NOT FIND",16);
	else if(a==FR_OK){
		OLED_ShowString(0,2,"OPENED",16);
		pf_read(textbuf,fs.fsize,&textlen);
		for(i=0;i<textlen;i++)
		textbuf[i]--;
	}
	delay_ms(500);
	OLED_Clear();
	//OLED_Set_Pos(1,0);
  //OLED_WR_Byte(0xf,OLED_DATA);
	//OLED_Set_Pos(2,0);
  //OLED_WR_Byte(0xf0,OLED_DATA);
	OLED_DrawBMP(0,0,127,7,BMP1);
  while (1)
  {
		if(GPIO_ReadInputPin(GPIOF,GPIO_PIN_4)==1)
			GPIO_WriteHigh(GPIOB,GPIO_PIN_3);
		else if(GPIO_ReadInputPin(GPIOF,GPIO_PIN_4)==0){
			  playMP3File("Hymn.mp3");
				playMP3File("MAGIC.MP3");
				playMP3File("MIRACLE.MP3");
				playMP3File("MENDSV.MP3");
		}
		//if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_0)==1)GPIO_WriteLow(GPIOB,GPIO_PIN_1);
  }
  
}

#ifdef USE_FULL_ASSERT

/*
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, unsigned long int line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
