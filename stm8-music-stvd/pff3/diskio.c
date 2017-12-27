/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for Petit FatFs (C)ChaN, 2014      */
/*-----------------------------------------------------------------------*/

#include "diskio.h"
#include "../sdcard.h"

/*-----------------------------------------------------------------------*/
/* Initialize Disk Drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (void)
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
                return STA_NOINIT;
        }
        
	cmd[0]=0X41;//CMD1
	cmd[5]=0XFF;
        
        count=0;
	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00)//SD¿š³õÊŒ»¯ 
        {
            if(count++>200)
                return STA_NOINIT;       
        }    

        return 0;
}

  

/*-----------------------------------------------------------------------*/
/* Read Partial Sector                                                   */
/*-----------------------------------------------------------------------*/

DRESULT disk_readp (
	BYTE* buff,		/* Pointer to the destination object */
	DWORD sector,	/* Sector number (LBA) */
	UINT offset,	/* Offset in the sector */
	UINT count		/* Byte count (bit15:destination) */
)
{
	int i;
	char time;
	char cmd[6]={0};
	UINT8 res= RES_ERROR;
      
	sector = sector << 9;
	cmd[0]=0X51;
	*((UINT32*)(cmd+1))=sector;
	//cmd[1] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0xFF000000) >>24);
	//cmd[2] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x00FF0000) >>16);
	//cmd[3] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x0000FF00) >>8);
	//cmd[4] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x000000FF) >>0);
	cmd[5]=0xff;
  time=0;
	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00){
		 if(time++>100)
		 {
				return res; 
		 }
	} 
	time=0; 
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
		for(i=0;i<512 - offset - count;i++)
						sdc_readbyte();
		SDC_CS_H();
		res = RES_OK;
		return res;

	return res;
}



/*-----------------------------------------------------------------------*/
/* Write Partial Sector                                                  */
/*-----------------------------------------------------------------------*/

DRESULT disk_writep (
	BYTE* buff,		/* Pointer to the data to be written, NULL:Initiate/Finalize write operation */
	DWORD sc		/* Sector number (LBA) or Number of bytes to send */
)
{
	DRESULT res;


	if (!buff) {
		if (sc) {

			// Initiate write process

		} else {

			// Finalize write process

		}
	} else {

		// Send data to the disk

	}

	return 1;
}

