/**
	@file	vs1001.h
	@brief	VS1001 interface library
	@author	Jesper Hansen 
	@date	2000
 
	$Id: vs1001.h,v 1.5 2007/06/04 15:12:18 brokentoaster Exp $
 
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

/* 
 * Modified for ButerflyMP3 13/07/2004	
 */
#ifndef __VS1001_H


// defines for Mode control of vs1001k

#define SM_DIFF 	1
#define SM_FFWD 	2
#define SM_RESET 	4
#define SM_MP12 	8
#define SM_PDOWN 	16
#define SM_DAC 		32
#define SM_DACMONO 	64
#define SM_BASS 	128
#define SM_DACT 	256
#define SM_IBMODE	512
#define SM_IBCLK	1024

// defines for SCI registers

#define SCI_MODE		0
#define SCI_STATUS		1
#define SCI_INT_FCTLH	2
#define SCI_CLOCKF		3
#define SCI_DECODE_TIME 4
#define SCI_AUDATA		5
#define SCI_WRAM		6
#define SCI_WRAMADDR	7
#define SCI_HDAT0		8
#define SCI_HDAT1		9
#define SCI_AIADDR		10
#define SCI_VOL			11

typedef enum {
	SOFT_RESET,
	HARD_RESET
} reset_e;



// setup I/O pins and directions for
// communicating with the VS1001
void vs1001_init_io(void);

// setup the VS1001 chip for decoding
void vs1001_init_chip(void);

// reset the VS1001
void vs1001_reset(reset_e r);

// send a number of zero's to the VS1001
void vs1001_nulls(unsigned int nNulls);

void vs1001_read(unsigned char address, unsigned short count, unsigned short *pData);
void vs1001_sine_test(void);void vs1001_quit_sine_test(void);
//
// write one or more word(s) to the VS1001 Control registers
//
void vs1001_write(unsigned char address, unsigned short count, unsigned short *pData);

void vs_1001_setvolume(unsigned char left, unsigned char right);

// send MP3 data
void vs1001_send_data(unsigned char b);
void vs1001_send_32(unsigned char *p);

#define __VS1001_H
#endif

