/**
	@file	vs1001.c
	@brief	VS1001 interface library
	@author	Jesper Hansen 
	@date	2000
 
	$Id: vs1001.c,v 1.10 2007/06/04 15:12:18 brokentoaster Exp $
 
  Copyright (C) 2000 Jesper Hansen <jesperh@telia.com>.

  This file is part of the yampp system.

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software Foundation, 
  Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
**/

/**
 * Modified on 13/07/2004 for ButterflyMP3 project ( atMega169 )
 * by Nick Lott.
 **/
#include"stm8s.h"
/*
#include <avr/io.h>
#include <avr/pgmspace.h>
#include "types.h"
#include "delay.h"
#include "mmc.h" // for SPI routines
*/
#include "vs1001.h"

#include "vscmd_spi.h"
#include "vsdat_spi.h"



//
// VS1001 commands
//

#define VS1001_READ	0x03
#define VS1001_WRITE	0x02

extern void delay_ms(unsigned int);

//#define write_byte_spi(data) (vsc_sendbyte(data))


unsigned char write_byte_spi(unsigned char data)
{
	vsc_sendbyte(data);
	//loop_until_bit_is_set(SPSR, SPIF);    
	
	return vsc_readbyte();
}	


///
/// read one or more word(s) from the VS1001 Control registers
///
void vs1001_read(unsigned char address, unsigned short count, unsigned short *pData)
{
	unsigned char i;
	VSC_CS_L(); 	// xCS lo
	VS_BSYNC_L(); 	// byte sync lo
	
	vsc_sendbyte(VS1001_READ);
	vsc_sendbyte(address);

	while (count--)
	{
		*pData = (vsc_readbyte())<<8; 
			
		*pData++ |= vsc_readbyte();
	}

	VSC_CS_H();	// xCS hi

	//this is absolutely neccessary!
	//delay(5); //wait 5 microseconds after sending data to control port
	for (i=0;i<8;i++)
		;

}



///
/// write one or more word(s) to the VS1001 Control registers
///
void vs1001_write(unsigned char address, unsigned short count, unsigned short *pData)
{
	unsigned char i;
	VSC_CS_L(); 	// xCS lo
	VS_BSYNC_L(); 	// byte sync lo
	
	vsc_sendbyte(VS1001_WRITE);
	vsc_sendbyte(address);

	while (count--)
	{
		vsc_sendbyte((unsigned char)(((*pData&0xFF00) >> 8)&0xFF));
		vsc_sendbyte((unsigned char)((*pData)&0xFF));
		pData++;
	}
	
	VSC_CS_H();	// xCS hi

	//this is absolutely neccessary!
	//delay(5); //wait 5 microseconds after sending data to control port
	for (i=0;i<8;i++)
		;
}


/****************************************************************************
**
** MPEG Data Stream
**
****************************************************************************/


/* !!! WARNING !!!
	
ALL data on the spi lines is read as
input to the MPEG Stream by the vs1001 when the BSYNC line is high.

*/

///
/// send a byte to the VS1001 MPEG stream
///
void vs1001_send_data(unsigned char b)
{
	char i;
	VSC_CS_H();
	while(VS_DREQ_RE()==0);
	VS_BSYNC_H();	// byte sync hi
	delay_us();
	vsd_sendbyte(b);
	VS_BSYNC_L();	// byte sync lo
	//i = SPDR; 				// clear SPIF
	

}


///
/// send a burst of 32 data bytes to the VS1001 MPEG stream
///
void vs1001_send_32(unsigned char *p)
{
	int j;

	
	//j = SPDR; // clear SPIF
}


void vs1001_sine_test(void){
	int i=0;
	unsigned char cmd[8]={0x53,0xef,0x6e,65,0,0,0,0};	


	//vs1001_reset(HARD_RESET);

	for(i=0;i<8;i++){
		vs1001_send_data(cmd[i]);
	}

	for (i=0;i<8;i++)
		;
}
void vs1001_quit_sine_test(void){
	int i=0;
	unsigned char cmd[8]={0x45 ,0x78, 0x69 ,0x74, 0, 0, 0, 0};	


	//vs1001_reset(HARD_RESET);

	for(i=0;i<8;i++){
		vs1001_send_data(cmd[i]);
	}

	for (i=0;i<8;i++)
		;
}

/****************************************************************************
**
** Init and helper functions
**
****************************************************************************/


/// setup I/O pins and directions for
/// communicating with the VS1001
void vs1001_init_io(void)
{
	VS_BSYNC_L();
	// set the MP3/ChipSelect pin hi
	VSC_CS_H();
	// set the /Reset pin hi
	VS_RESET_H();
}


/// setup the VS1001 chip for decoding
void vs1001_init_chip(void)
{
	//we use a hardware reset, works much better 
	//than software rest, but makes a click noise.

	delay_ms(5);
	vs1001_reset(HARD_RESET);

	delay_ms(5);
	vs1001_nulls(32);
	vs1001_reset(SOFT_RESET);
	 
}



/// reset the VS1001
void vs1001_reset(reset_e r)
{

	unsigned short buf[2];
	unsigned char i;
	if (r == SOFT_RESET)
	{
 
 
		VSC_CS_L(); 	// xCS lo
		VS_BSYNC_L(); 	// byte sync lo		
		while(!VS_DREQ_RE());
		vsc_sendbyte(VS1001_WRITE);
		vsc_sendbyte(SCI_MODE);
		vsc_sendbyte((unsigned char)(0));
		vsc_sendbyte((unsigned char)(0x04));
		VSC_CS_H();	// xCS hi

		//this is absolutely neccessary!
		//delay(5); //wait 5 microseconds after sending data to control port
		//VS_RESET_L() ;;;;
		//VS_RESET_H() ;
		delay_ms(2);
		while(!VS_DREQ_RE()); //wait for DREQ
		// set CLOCKF for 24.576 MHz
		// change to doubler //nick 7/7/04		
		//buf[0] = 0x9800;
		//vs1001_write(SCI_CLOCKF,1,buf);	
		
		/*
		delay_ms(2);
		buf[0] = 0x9800;
		vs1001_write(SCI_CLOCKF,1,buf);	
		delay_ms(2);*/
		// Force clock doubler see pg32 of VS10XX appl.notes
		vs1001_nulls(32);
	    
		//SPSR = (1<<SPI2X);			//set spi to Fosc/2
	}
	else if (r == HARD_RESET)
	{
		VS_RESET_L() ;	// RESET- lo
		delay_ms(5);	// 1 mS	    
		VS_RESET_H() ;	// RESET- hi
		delay_ms(20);	// 5 mS	    
	}
}

///
/// send a number of zero's to the VS1001
///
void vs1001_nulls(unsigned int nNulls)
{
	while (nNulls--)
		vs1001_send_data(0);
}

///
/// Set the VS1001 volume
///
void vs_1001_setvolume(unsigned char left, unsigned char right)
{
	unsigned short buf[2];

	buf[0] = (((unsigned short)left) << 8) + ((unsigned short)right);

	vs1001_write(SCI_VOL, 1, buf);
}


