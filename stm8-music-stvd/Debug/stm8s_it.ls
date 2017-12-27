   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  46                     ; 61 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  46                     ; 62 {
  47                     	switch	.text
  48  0000               f_TRAP_IRQHandler:
  52                     ; 66 }
  55  0000 80            	iret	
  77                     ; 73 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  77                     ; 74 
  77                     ; 75 {
  78                     	switch	.text
  79  0001               f_TLI_IRQHandler:
  83                     ; 79 }
  86  0001 80            	iret	
 108                     ; 86 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 108                     ; 87 {
 109                     	switch	.text
 110  0002               f_AWU_IRQHandler:
 114                     ; 91 }
 117  0002 80            	iret	
 139                     ; 98 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 139                     ; 99 {
 140                     	switch	.text
 141  0003               f_CLK_IRQHandler:
 145                     ; 103 }
 148  0003 80            	iret	
 171                     ; 110 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 171                     ; 111 {
 172                     	switch	.text
 173  0004               f_EXTI_PORTA_IRQHandler:
 177                     ; 115 }
 180  0004 80            	iret	
 203                     ; 122 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 203                     ; 123 {
 204                     	switch	.text
 205  0005               f_EXTI_PORTB_IRQHandler:
 209                     ; 127 }
 212  0005 80            	iret	
 235                     ; 134 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 235                     ; 135 {
 236                     	switch	.text
 237  0006               f_EXTI_PORTC_IRQHandler:
 241                     ; 139 }
 244  0006 80            	iret	
 246                     	xref	_OLED_Clear
 294                     ; 153 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 294                     ; 154 {
 295                     	switch	.text
 296  0007               f_EXTI_PORTD_IRQHandler:
 298       00000004      OFST:	set	4
 299  0007 3b0002        	push	c_x+2
 300  000a be00          	ldw	x,c_x
 301  000c 89            	pushw	x
 302  000d 3b0002        	push	c_y+2
 303  0010 be00          	ldw	x,c_y
 304  0012 89            	pushw	x
 305  0013 5204          	subw	sp,#4
 308                     ; 162 	disableInterrupts();
 311  0015 9b            	sim	
 313                     ; 163 	delay_ms(100);
 316  0016 ae0064        	ldw	x,#100
 317  0019 cd0000        	call	_delay_ms
 319                     ; 164 	temp0=textshown_pos0;
 321  001c ce0000        	ldw	x,_textshown_pos0
 322  001f 1f01          	ldw	(OFST-3,sp),x
 323                     ; 165 	temp1=textshown_pos1;
 325  0021 ce0000        	ldw	x,_textshown_pos1
 326  0024 1f03          	ldw	(OFST-1,sp),x
 328  0026               L321:
 329                     ; 167 	while(textbuf[textshown_pos0++]!=0 && textshown_pos0<textlen+1);
 331  0026 ce0000        	ldw	x,_textshown_pos0
 332  0029 5c            	incw	x
 333  002a cf0000        	ldw	_textshown_pos0,x
 334  002d 5a            	decw	x
 335  002e d60000        	ld	a,(_textbuf,x)
 336  0031 2709          	jreq	L331
 338  0033 ce0000        	ldw	x,_textlen
 339  0036 5c            	incw	x
 340  0037 c30000        	cpw	x,_textshown_pos0
 341  003a 22ea          	jrugt	L321
 342  003c               L331:
 343                     ; 168 	while(textbuf[textshown_pos1++]!=0 && textshown_pos1<textlen+1);
 345  003c ce0000        	ldw	x,_textshown_pos1
 346  003f 5c            	incw	x
 347  0040 cf0000        	ldw	_textshown_pos1,x
 348  0043 5a            	decw	x
 349  0044 d60000        	ld	a,(_textbuf,x)
 350  0047 2709          	jreq	L731
 352  0049 ce0000        	ldw	x,_textlen
 353  004c 5c            	incw	x
 354  004d c30000        	cpw	x,_textshown_pos1
 355  0050 22ea          	jrugt	L331
 356  0052               L731:
 357                     ; 169 	textshown_pos0+=2;textshown_pos1+=2;
 359  0052 ce0000        	ldw	x,_textshown_pos0
 360  0055 1c0002        	addw	x,#2
 361  0058 cf0000        	ldw	_textshown_pos0,x
 364  005b ce0000        	ldw	x,_textshown_pos1
 365  005e 1c0002        	addw	x,#2
 366  0061 cf0000        	ldw	_textshown_pos1,x
 367                     ; 170 	if(textshown_pos0 > textlen+1)textshown_pos0=1;
 369  0064 ce0000        	ldw	x,_textlen
 370  0067 5c            	incw	x
 371  0068 c30000        	cpw	x,_textshown_pos0
 372  006b 2406          	jruge	L141
 375  006d ae0001        	ldw	x,#1
 376  0070 cf0000        	ldw	_textshown_pos0,x
 377  0073               L141:
 378                     ; 171 	if(textshown_pos1 > textlen+1)textshown_pos1=1;
 380  0073 ce0000        	ldw	x,_textlen
 381  0076 5c            	incw	x
 382  0077 c30000        	cpw	x,_textshown_pos1
 383  007a 2406          	jruge	L341
 386  007c ae0001        	ldw	x,#1
 387  007f cf0000        	ldw	_textshown_pos1,x
 388  0082               L341:
 389                     ; 172 	OLED_Clear(); 
 391  0082 cd0000        	call	_OLED_Clear
 393                     ; 173 	OLED_ShowString(0,0,(unsigned char*)(textbuf+temp0),16);
 395  0085 4b10          	push	#16
 396  0087 1e02          	ldw	x,(OFST-2,sp)
 397  0089 1c0000        	addw	x,#_textbuf
 398  008c 89            	pushw	x
 399  008d 5f            	clrw	x
 400  008e 4f            	clr	a
 401  008f 95            	ld	xh,a
 402  0090 cd0000        	call	_OLED_ShowString
 404  0093 5b03          	addw	sp,#3
 405                     ; 174 	OLED_ShowString(0,2,(unsigned char*)(textbuf+temp1),16);
 407  0095 4b10          	push	#16
 408  0097 1e04          	ldw	x,(OFST+0,sp)
 409  0099 1c0000        	addw	x,#_textbuf
 410  009c 89            	pushw	x
 411  009d ae0002        	ldw	x,#2
 412  00a0 4f            	clr	a
 413  00a1 95            	ld	xh,a
 414  00a2 cd0000        	call	_OLED_ShowString
 416  00a5 5b03          	addw	sp,#3
 418  00a7               L741:
 419                     ; 175 	while(IsButtonB()==0);
 421  00a7 cd0000        	call	_IsButtonB
 423  00aa 4d            	tnz	a
 424  00ab 27fa          	jreq	L741
 425                     ; 176 	delay_ms(100);
 427  00ad ae0064        	ldw	x,#100
 428  00b0 cd0000        	call	_delay_ms
 430                     ; 177 	enableInterrupts();
 433  00b3 9a            	rim	
 435                     ; 178 }
 439  00b4 5b04          	addw	sp,#4
 440  00b6 85            	popw	x
 441  00b7 bf00          	ldw	c_y,x
 442  00b9 320002        	pop	c_y+2
 443  00bc 85            	popw	x
 444  00bd bf00          	ldw	c_x,x
 445  00bf 320002        	pop	c_x+2
 446  00c2 80            	iret	
 469                     ; 185 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 469                     ; 186 {
 470                     	switch	.text
 471  00c3               f_EXTI_PORTE_IRQHandler:
 475                     ; 190 }
 478  00c3 80            	iret	
 500                     ; 237 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 500                     ; 238 {
 501                     	switch	.text
 502  00c4               f_SPI_IRQHandler:
 506                     ; 242 }
 509  00c4 80            	iret	
 511                     	xref	_led_routine
 571                     ; 250 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 571                     ; 251 {
 572                     	switch	.text
 573  00c5               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 575       00000001      OFST:	set	1
 576  00c5 3b0002        	push	c_x+2
 577  00c8 be00          	ldw	x,c_x
 578  00ca 89            	pushw	x
 579  00cb 3b0002        	push	c_y+2
 580  00ce be00          	ldw	x,c_y
 581  00d0 89            	pushw	x
 582  00d1 88            	push	a
 585                     ; 257 	disableInterrupts();
 588  00d2 9b            	sim	
 590                     ; 258 	fs = TIM1_GetFlagStatus(TIM1_FLAG_UPDATE);  
 593  00d3 ae0001        	ldw	x,#1
 594  00d6 cd0000        	call	_TIM1_GetFlagStatus
 596  00d9 6b01          	ld	(OFST+0,sp),a
 597                     ; 259 	if(fs == SET)  
 599  00db 4a            	dec	a
 600  00dc 2615          	jrne	L122
 601                     ; 261 		TIM1_ClearFlag(TIM1_FLAG_UPDATE);  
 603  00de ae0001        	ldw	x,#1
 604  00e1 cd0000        	call	_TIM1_ClearFlag
 606                     ; 262 		led_count++;
 608  00e4 725c0000      	inc	_led_count
 609                     ; 263 		led_count%=8;
 611  00e8 c60000        	ld	a,_led_count
 612  00eb a407          	and	a,#7
 613  00ed c70000        	ld	_led_count,a
 614                     ; 264 		led_routine();
 616  00f0 cd0000        	call	_led_routine
 618  00f3               L122:
 619                     ; 266 	enableInterrupts();
 622  00f3 9a            	rim	
 624                     ; 267 }
 628  00f4 84            	pop	a
 629  00f5 85            	popw	x
 630  00f6 bf00          	ldw	c_y,x
 631  00f8 320002        	pop	c_y+2
 632  00fb 85            	popw	x
 633  00fc bf00          	ldw	c_x,x
 634  00fe 320002        	pop	c_x+2
 635  0101 80            	iret	
 658                     ; 274 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 658                     ; 275 {
 659                     	switch	.text
 660  0102               f_TIM1_CAP_COM_IRQHandler:
 664                     ; 279 }
 667  0102 80            	iret	
 690                     ; 312  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 690                     ; 313  {
 691                     	switch	.text
 692  0103               f_TIM2_UPD_OVF_BRK_IRQHandler:
 696                     ; 317  }
 699  0103 80            	iret	
 722                     ; 324  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 722                     ; 325  {
 723                     	switch	.text
 724  0104               f_TIM2_CAP_COM_IRQHandler:
 728                     ; 329  }
 731  0104 80            	iret	
 754                     ; 339  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 754                     ; 340  {
 755                     	switch	.text
 756  0105               f_TIM3_UPD_OVF_BRK_IRQHandler:
 760                     ; 344  }
 763  0105 80            	iret	
 786                     ; 351  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 786                     ; 352  {
 787                     	switch	.text
 788  0106               f_TIM3_CAP_COM_IRQHandler:
 792                     ; 356  }
 795  0106 80            	iret	
 817                     ; 417 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 817                     ; 418 {
 818                     	switch	.text
 819  0107               f_I2C_IRQHandler:
 823                     ; 422 }
 826  0107 80            	iret	
 849                     ; 430  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 849                     ; 431  {
 850                     	switch	.text
 851  0108               f_UART2_TX_IRQHandler:
 855                     ; 435  }
 858  0108 80            	iret	
 881                     ; 442  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 881                     ; 443  {
 882                     	switch	.text
 883  0109               f_UART2_RX_IRQHandler:
 887                     ; 447  }
 890  0109 80            	iret	
 912                     ; 496  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 912                     ; 497  {
 913                     	switch	.text
 914  010a               f_ADC1_IRQHandler:
 918                     ; 501  }
 921  010a 80            	iret	
 944                     ; 522  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 944                     ; 523  {
 945                     	switch	.text
 946  010b               f_TIM4_UPD_OVF_IRQHandler:
 950                     ; 527  }
 953  010b 80            	iret	
 976                     ; 535 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 976                     ; 536 {
 977                     	switch	.text
 978  010c               f_EEPROM_EEC_IRQHandler:
 982                     ; 540 }
 985  010c 80            	iret	
 997                     	xref	_led_count
 998                     	xref	_IsButtonB
 999                     	xref	_delay_ms
1000                     	xref	_OLED_ShowString
1001                     	xref	_textlen
1002                     	xref	_textbuf
1003                     	xref	_textshown_pos1
1004                     	xref	_textshown_pos0
1005                     	xdef	f_EEPROM_EEC_IRQHandler
1006                     	xdef	f_TIM4_UPD_OVF_IRQHandler
1007                     	xdef	f_ADC1_IRQHandler
1008                     	xdef	f_UART2_TX_IRQHandler
1009                     	xdef	f_UART2_RX_IRQHandler
1010                     	xdef	f_I2C_IRQHandler
1011                     	xdef	f_TIM3_CAP_COM_IRQHandler
1012                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
1013                     	xdef	f_TIM2_CAP_COM_IRQHandler
1014                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
1015                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
1016                     	xdef	f_TIM1_CAP_COM_IRQHandler
1017                     	xdef	f_SPI_IRQHandler
1018                     	xdef	f_EXTI_PORTE_IRQHandler
1019                     	xdef	f_EXTI_PORTD_IRQHandler
1020                     	xdef	f_EXTI_PORTC_IRQHandler
1021                     	xdef	f_EXTI_PORTB_IRQHandler
1022                     	xdef	f_EXTI_PORTA_IRQHandler
1023                     	xdef	f_CLK_IRQHandler
1024                     	xdef	f_AWU_IRQHandler
1025                     	xdef	f_TLI_IRQHandler
1026                     	xdef	f_TRAP_IRQHandler
1027                     	xref	_TIM1_ClearFlag
1028                     	xref	_TIM1_GetFlagStatus
1029                     	xref.b	c_x
1030                     	xref.b	c_y
1049                     	end
