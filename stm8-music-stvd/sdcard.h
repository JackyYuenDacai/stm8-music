#include"stm8s.h"
#include"sdc_io_spi.h"
 
#define PD_7 d6 d2 d5

 	//D7 1 GND
	//D6 2 SI
	//D5 7 SO
	//D4 8 NC
	//D3 9 NC
	//D2 5 CLK

typedef unsigned char UINT8;
typedef unsigned long UINT32;
typedef unsigned short UINT16;
typedef char INT8;
typedef long INT32;
  
unsigned int const len = 512;//扇区大小  
  
void DELAY_MS (unsigned int a){  
    unsigned int i;  
    while( --a != 0){  
        for(i = 0; i < 600; i++);  
    }  
}  
  
  
  
//***********模拟spi写函数  
/*void SD_SPI_W(unsigned char Data){  
	unsigned char i;
	for(i=8;i;i--)
	{
		SD_CLK=0;delay_us();
		SD_DI=(Data&0x80);delay_us();
		Data<<=1;
		SD_CLK=1;delay_us();
	}
	SD_DI = 1; delay_us();
}  */

#define SD_SPI_W sdc_sendbyte
#define SD_SPI_R sdc_readbyte

//***********模拟spi读函数  
/*unsigned char SD_SPI_R(){  
    unsigned char Data,i;  
	GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST); 
    PDout(5)=1;
	GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_IN_PU_NO_IT); 
    //SD_DO = 1;//设置DO接口为输入状态  
    for(i = 0; i<8; i++){  
        Data <<= 1;  
        SD_CLK = 0;  
        SD_CLK = 1;  
        Data |= SD_DO;  
    };  
    return Data;  
}  */
  
  
//**************读sd卡回应  
unsigned char SD_Response(){  
    unsigned char i,Response;  
    for(i = 0; i<10; i++){  
        Response = SD_SPI_R();  
        if(Response == 0x00)  
            break;  
        if(Response == 0x01)  
            break;  
    };  
    return Response;  
}  
  
  
//***************向SD发命令  
void SD_Cmd(unsigned char Cmd, unsigned long Argument, unsigned char CRC){  
    unsigned char arg[4];  
    arg[0] = (unsigned char)Argument;  
    arg[1] = (unsigned char)(Argument >> 8);  
    arg[2] = (unsigned char)(Argument >> 16);  
    arg[3] = (unsigned char)(Argument >> 24);  
  
    SD_SPI_W(Cmd | 0x40);  
    SD_SPI_W(arg[3]);  
    SD_SPI_W(arg[2]);  
    SD_SPI_W(arg[1]);  
    SD_SPI_W(arg[0]);  
    SD_SPI_W(CRC);  
}  
  
  
  
//*************SD卡初始化  
unsigned char SD_Init(){  
    unsigned int delay = 0;  
    unsigned char i;  
    unsigned char Response = 0xff;  
    sdc_spi_init();
    SDC_CS_H();  
    for(i = 0; i<30; i++){  
        SD_SPI_W(0xff);//上电后给74个以上的时间脉冲  
    };  
  
    SDC_CS_L();  
    SD_Cmd(0x00, 0, 0x95);//命令CMD0,复位SD卡  
  
    //等待复位成功  
    i = 0;  
    while(SD_Response() != 0x01){//等待SD卡回应信号  
        i++;  
        if(i > 100){  
            return 0;//失败返回0  
        };  
    };  
  
    SDC_CS_H();  
    SD_SPI_W(0xff);//关片选后写8个空脉冲，SD卡复位完毕  
    //设置SPI  
    i = 0;  
    SDC_CS_L();  
    while(Response != 0x00){//循环等待成功回应，若成功，回应信号为0x00  
        SD_Cmd(0x01, 0, 0xff);//CMD1,将SD卡设置为SPI模式，无需CRC校验，填入0xff  
        Response = SD_Response();  
        if(i > 100){  
            return 0;//尝试100次,失败返回0  
        };  
    };  
    SDC_CS_H();  
  
    SD_SPI_W(0xff);//给8个空脉冲  
    return 1;  
}  
  
  
//***************SD卡写入数据块  
unsigned char SD_Block_W(unsigned char* block, unsigned long address){  
    unsigned int i;  
    unsigned char Response_sdc_spi_sendbyte;  
    SDC_CS_L();  
    SD_Cmd(0x18, address, 0xff);//CMD18,块写入命令  
    while(SD_Response() != 0x00);//循环等待命令回应0x00  
    for(i = 0; i<10; i++){  
        SD_SPI_W(0xff);//写入一定量空脉冲  
    };  
  
    SD_SPI_W(0xfe);//0xfe为块头部，后面跟512b字节，+2bCRC(0xff,0xff)  
  
    for(i=0; i<len; i++){  
        SD_SPI_W(block[i]);//写入512b字节  
    };  
  
    SD_SPI_W(0xff);  
    SD_SPI_W(0xff);  
  
    Response_sdc_spi_sendbyte = SD_SPI_R()&0x0f;//写入CRC码后SD卡会回应一个xxx0,1001  
    while(SD_SPI_R() == 0);//等待SD卡回应  
  
    SDC_CS_H();  
    SD_SPI_W(0xff);//写入8个空脉冲  
  
    if(Response_sdc_spi_sendbyte == 0x05){  
        return 1;  
    }else{  
        return 0;  
    };  
}  
  
//****************从sd卡读数据块  
void SD_Block_R(unsigned char* block, unsigned long address){  
    unsigned int i;  
  
    SDC_CS_L();  
    SD_Cmd(0x51, address, 0xff);//CMD11,数据块读写命令，  
  
    while(SD_Response()!=0x00);//循环等待命令回应0x00  
  
    while(SD_SPI_R() != 0xfe); //0xfe为块读出的头， 后面紧跟512字节的数据块+2字节的CRC  
  
    for(i=0; i<len ; i++){  
        block[i] = SD_SPI_R();//读数据  
    };  
  
    SD_SPI_R();  
    SD_SPI_R();//两个字节的CRC。舍弃  
  
    SDC_CS_H();  
    SD_SPI_R();//8个空脉冲  
} 

char sd_sdc_spi_sendbyte_command_slow(char *a)
{
	 
	char i,count,state=0xff;
	SDC_CS_H();
	sdc_sendbyte(0xff);
  SDC_CS_L();//Ñ¡ÖÐCSÆ¬Ñ¡ 

	/*for(i=0;i<6;i++)
	{
		sdc_sendbyte(a[i]);
	} */
	sdc_sendbyte(a[0]);sdc_sendbyte(a[1]);sdc_sendbyte(a[2]);
	sdc_sendbyte(a[3]);sdc_sendbyte(a[4]);sdc_sendbyte(a[5]);
	count=0;
	while(state==0xff)
	{
		state=sdc_readbyte_slow();
		if(count++>100) 
    {
          SDC_CS_H();
          return state;
    }
	}    
  SDC_CS_H();
	sdc_sendbyte(0xff); 
	return state;
}
char sd_sdc_spi_sendbyte_command(char  *a)
{
	char i,count,state=0xff;
	SDC_CS_H();
	sdc_sendbyte(0xff);
  SDC_CS_L();//Ñ¡ÖÐCSÆ¬Ñ¡ 

	/*for(i=0;i<6;i++)
	{
		sdc_sendbyte(a[i]);
	} */
	sdc_sendbyte(a[0]);sdc_sendbyte(a[1]);sdc_sendbyte(a[2]);
	sdc_sendbyte(a[3]);sdc_sendbyte(a[4]);sdc_sendbyte(a[5]);
	count=0;
	while(state==0xff)
	{
		state=sdc_readbyte();
		if(count++>100) 
    {
          SDC_CS_H();
          return state;
    }
	}    
  SDC_CS_H();
	sdc_sendbyte(0xff); 
	return state;
}  

UINT8 disk_initialize_io(void)
{
	int i=0,count;
        char cmd[]={0x40,0x00,0x00,0x00,0x00,0x95};//CMD0
	sdc_spi_init();       
	//skip_sclk(10);
        for(;i<10;i++)
          sdc_readbyte();
        count=0;
	while(sd_sdc_spi_sendbyte_command(cmd)!=0x01)
        {
            if(count++>200)
                return 1;
        }
        
	cmd[0]=0X41;//CMD1
	cmd[5]=0XFF;
        
        count=0;
	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00)//SD¿š³õÊŒ»¯ 
        {
            if(count++>200)
                return 1;          
        }    

        return 0;
}         

UINT8 disk_readio(UINT8 *buff,UINT32 sector,UINT32 offset,UINT32 count)
{
	int i;
    char time;
    char cmd[6]={0};
    UINT8 res= 1;
      
	sector = sector << 9;
	cmd[0]=0X51;
	cmd[1] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0xFF000000) >>24);
	cmd[2] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x00FF0000) >>16);
	cmd[3] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x0000FF00) >>8);
	cmd[4] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x000000FF) >>0);
	cmd[5]=0xff;

        time=0;
	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00)
        {
           if(time++>100)
           {
              return res;
           }
        }
        time=0; 
		//SDC_CS_H();
		//sdc_sendbyte(0xff);
        SDC_CS_L();

	while((sdc_readbyte())!=0xfe)
        {
            if(time++>100)
            {
              SDC_CS_H();
              return res;
            }
        }
        
         for(i=0;i<offset;i++)
              sdc_readbyte();
         do{
		*buff++ = sdc_readbyte();
            }while (--count);
        for(i=0;i<514 - offset - count;i++)
                sdc_readbyte();
         SDC_CS_H();
        res = 0;
        return res;
}       

UINT8 disk_sdc_spi_sendbytep (
	const UINT8 *buff,	/* Pointer to the bytes to be written (NULL:Initiate/Finalize sector sdc_spi_sendbyte) */
	UINT32 sc			/* Number of bytes to send, Sector number (LBA) or zero */
)
{
  UINT8 res=0;  
  return res;
}
void readsd(UINT8 *buf,unsigned long addstart)//读SD卡物理扇区
{  unsigned long sdbuff1,sdbuff2,sdbuff3,sdbuff4;   

   UINT32 j,n;
	UINT8 zh1,zh2,zh3,zh4,fhz;
   sdbuff1=addstart;
   sdbuff2=addstart;
   sdbuff3=addstart;
   sdbuff4=addstart;
      zh1=(sdbuff1>>24)&0x000000ff;
       zh2=(sdbuff2>>16)&0x000000ff;
         zh3=(sdbuff3>>8)&0x000000ff;
         zh4=sdbuff4&0x000000ff;
   // uchar pcmd[6]={0x51,zh1,zh2,zh3,zh4,0xff};//原来这里是高地址字节在前地地址在后啊201012月14日逻辑扇区在253*512=0X0001fa00
   SDC_CS_H();
   sdc_sendbyte(0xff);//据说是提高兼容性
    SDC_CS_L();
    sdc_sendbyte( 0x51);
    sdc_sendbyte( zh1);
    sdc_sendbyte( zh2);
    sdc_sendbyte(zh3);
    sdc_sendbyte(zh4);
    sdc_sendbyte(0xff);
    //DATEOUT=1;
  for(;;)
  {
    fhz=sdc_readbyte();
    if(fhz==0x00)break;
  }
  //DATEOUT=1;
  for(;;)
  {
    fhz=sdc_readbyte();
    if(fhz==0xfe)break;
	}
  //DATEOUT=1;
  n=0;
	for(j=512;j;j--)
{  
   buf[n]=sdc_readbyte();
    n++;

}
fhz=sdc_readbyte();
fhz=sdc_readbyte();
SDC_CS_H();
sdc_sendbyte(0xff);
}
/*
unsigned char SdReadBlock(unsigned char *Block, unsigned long address,int len)
{
unsigned int count;
//Block size is 512 bytes exactly
//First Lower SS

 //printf("MMC_read_block\n");

SD_CS=0;
//Then send write command
SdCommand(0x11,address,0xff);

	sector = sector << 9;
	cmd[0]=0x51;
	cmd[1] =(UINT8)((sector>>24 )& 0xFF);
	cmd[2] =(UINT8)((sector>>16 )& 0xFF);
	cmd[3] =(UINT8)((sector>>8 )& 0xFF);
	cmd[4] =(UINT8)((sector )& 0xFF);
	cmd[5]=0xff;

        time=0;
	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00)
        {
           if(time++>100)
           {
              return res;
           }
        }
        time=0; 
SDC_CS_H();
sdc_sendbyte(0xff);
        SDC_CS_L();

	while((sdc_readbyte())!=0xfe)
        {
            if(time++>100)
            {
              SDC_CS_H();
              return res;
            }
        }

if(SdResponse()==00)
{
//command was a success - now send data
//start with DATA TOKEN = 0xFE
while(sdc_readbyte();!=0xfe);

for(count=0;count<len;count++) *Block++=sdc_readbyte();

for(;count<512;count++) sdc_readbyte();

//data block sent - now send checksum
sdc_readbyte();
sdc_readbyte();
//Now read in the DATA RESPONSE token
SDC_CS_H();
sdc_readbyte();
return 1;
}
 //printf("Command 0x11 (Read) was not received by the MMC.\n");
return 0;
}*/

