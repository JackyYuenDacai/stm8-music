#ifndef BITBAND_H
#define BITBAND_H

	#define BITBAND(addr, bitnum) ((addr & 0xF0000000)+0x2000000+((addr &0xFFFFF)<<5)+(bitnum<<2)) 
	#define MEM_ADDR(addr)  *((volatile unsigned long  *)(addr)) 
	#define BIT_ADDR(addr, bitnum)   MEM_ADDR(BITBAND(addr, bitnum)) 

	#define GPIOA_ODR_Addr    (GPIOA_BaseAddress+12) //0x4001080C 
	#define GPIOB_ODR_Addr    (GPIOB_BaseAddress+12) //0x40010C0C 
	#define GPIOC_ODR_Addr    (GPIOC_BaseAddress+12) //0x4001100C 
	#define GPIOD_ODR_Addr    (GPIOD_BaseAddress+12) //0x4001140C 
	#define GPIOE_ODR_Addr    (GPIOE_BaseAddress+12) //0x4001180C 
	#define GPIOF_ODR_Addr    (GPIOF_BaseAddress+12) //0x40011A0C    
	#define GPIOG_ODR_Addr    (GPIOG_BaseAddress+12) //0x40011E0C    

	#define GPIOA_IDR_Addr    (GPIOA_BaseAddress+8) //0x40010808 
	#define GPIOB_IDR_Addr    (GPIOB_BaseAddress+8) //0x40010C08 
	#define GPIOC_IDR_Addr    (GPIOC_BaseAddress+8) //0x40011008 
	#define GPIOD_IDR_Addr    (GPIOD_BaseAddress+8) //0x40011408 
	#define GPIOE_IDR_Addr    (GPIOE_BaseAddress+8) //0x40011808 
	#define GPIOF_IDR_Addr    (GPIOF_BaseAddress+8) //0x40011A08 
	#define GPIOG_IDR_Addr    (GPIOG_BaseAddress+8) //0x40011E08 

	#define PAout(n)   BIT_ADDR(GPIOA_ODR_Addr,n)  //?? 
	#define PAin(n)    BIT_ADDR(GPIOA_IDR_Addr,n)  //?? 

	#define PBout(n)   BIT_ADDR(GPIOB_ODR_Addr,n)  //?? 
	#define PBin(n)    BIT_ADDR(GPIOB_IDR_Addr,n)  //?? 

	#define PCout(n)   BIT_ADDR(GPIOC_ODR_Addr,n)  //?? 
	#define PCin(n)    BIT_ADDR(GPIOC_IDR_Addr,n)  //?? 

	#define PDout(n)   BIT_ADDR(GPIOD_ODR_Addr,n)  //?? 
	#define PDin(n)    BIT_ADDR(GPIOD_IDR_Addr,n)  //?? 

	#define PEout(n)   BIT_ADDR(GPIOE_ODR_Addr,n)  //?? 
	#define PEin(n)    BIT_ADDR(GPIOE_IDR_Addr,n)  //??

	#define PFout(n)   BIT_ADDR(GPIOF_ODR_Addr,n)  //?? 
	#define PFin(n)    BIT_ADDR(GPIOF_IDR_Addr,n)  //??

	#define PGout(n)   BIT_ADDR(GPIOG_ODR_Addr,n)  //?? 
	#define PGin(n)    BIT_ADDR(GPIOG_IDR_Addr,n)  //?? 

#ifndef __MyType_H  
#define __MyType_H  
  
  
	#ifndef BIT  
	#define BIT(x)  (1 << (x))  
	#endif  
	  
	/* io configs */  
	#ifndef sbi    
	#define sbi(io,bit)     ( io  |=  (1<<bit) )  
	//example:sbi(GPIOA->ODR,0);sbi(GPIOA->DDR,0);  
	#endif   
	  
	#ifndef cbi    
	#define cbi(io,bit)     ( io  &= ~(1<<bit) )    
	//example:cbi(GPIOA->ODR,0);cbi(GPIOA->DDR,0);  
	#endif   
	  
	#ifndef xor    
	#define xor(port, bit)          (port) ^= (1 << (bit))  
	#endif  
	  
	#ifndef gbi    
	#define gbi(pin ,bit)   ( pin &   (1<<bit) )    
	//example: gbi(GPIOA->IDR,0);  
	#endif   
	 
	#define SBI sbi
	#define CBI cbi
	#define XOR xor
	#define GBI gbi 

#endif         

	// BIT_ADDR(GPIOA_ODR_Addr,n)  *((volatile unsigned long  *)((0x4001080C & 0xF0000000)+0x2000000+((0x4001080C &0xFFFFF)<<5)+(2<<2)) )

#endif
