   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
 112                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 112                     ; 54 {
 114                     	switch	.text
 115  0000               _GPIO_DeInit:
 119                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 121  0000 7f            	clr	(x)
 122                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 124  0001 6f02          	clr	(2,x)
 125                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 127  0003 6f03          	clr	(3,x)
 128                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 130  0005 6f04          	clr	(4,x)
 131                     ; 59 }
 134  0007 81            	ret	
 375                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 375                     ; 72 {
 376                     	switch	.text
 377  0008               _GPIO_Init:
 379  0008 89            	pushw	x
 380       00000000      OFST:	set	0
 383                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 385  0009 7b06          	ld	a,(OFST+6,sp)
 386  000b 273a          	jreq	L41
 387  000d a140          	cp	a,#64
 388  000f 2736          	jreq	L41
 389  0011 a120          	cp	a,#32
 390  0013 2732          	jreq	L41
 391  0015 a160          	cp	a,#96
 392  0017 272e          	jreq	L41
 393  0019 a1a0          	cp	a,#160
 394  001b 272a          	jreq	L41
 395  001d a1e0          	cp	a,#224
 396  001f 2726          	jreq	L41
 397  0021 a180          	cp	a,#128
 398  0023 2722          	jreq	L41
 399  0025 a1c0          	cp	a,#192
 400  0027 271e          	jreq	L41
 401  0029 a1b0          	cp	a,#176
 402  002b 271a          	jreq	L41
 403  002d a1f0          	cp	a,#240
 404  002f 2716          	jreq	L41
 405  0031 a190          	cp	a,#144
 406  0033 2712          	jreq	L41
 407  0035 a1d0          	cp	a,#208
 408  0037 270e          	jreq	L41
 409  0039 ae004d        	ldw	x,#77
 410  003c 89            	pushw	x
 411  003d 5f            	clrw	x
 412  003e 89            	pushw	x
 413  003f ae0000        	ldw	x,#L771
 414  0042 cd0000        	call	_assert_failed
 416  0045 5b04          	addw	sp,#4
 417  0047               L41:
 418                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 420  0047 7b05          	ld	a,(OFST+5,sp)
 421  0049 2610          	jrne	L22
 422  004b ae004e        	ldw	x,#78
 423  004e 89            	pushw	x
 424  004f 5f            	clrw	x
 425  0050 89            	pushw	x
 426  0051 ae0000        	ldw	x,#L771
 427  0054 cd0000        	call	_assert_failed
 429  0057 5b04          	addw	sp,#4
 430  0059 7b05          	ld	a,(OFST+5,sp)
 431  005b               L22:
 432                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 434  005b 1e01          	ldw	x,(OFST+1,sp)
 435  005d 43            	cpl	a
 436  005e e404          	and	a,(4,x)
 437  0060 e704          	ld	(4,x),a
 438                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 440  0062 7b06          	ld	a,(OFST+6,sp)
 441  0064 2a14          	jrpl	L102
 442                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 444  0066 a510          	bcp	a,#16
 445  0068 2705          	jreq	L302
 446                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 448  006a f6            	ld	a,(x)
 449  006b 1a05          	or	a,(OFST+5,sp)
 451  006d 2004          	jra	L502
 452  006f               L302:
 453                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 455  006f 7b05          	ld	a,(OFST+5,sp)
 456  0071 43            	cpl	a
 457  0072 f4            	and	a,(x)
 458  0073               L502:
 459  0073 f7            	ld	(x),a
 460                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 462  0074 e602          	ld	a,(2,x)
 463  0076 1a05          	or	a,(OFST+5,sp)
 465  0078 2005          	jra	L702
 466  007a               L102:
 467                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 469  007a 7b05          	ld	a,(OFST+5,sp)
 470  007c 43            	cpl	a
 471  007d e402          	and	a,(2,x)
 472  007f               L702:
 473  007f e702          	ld	(2,x),a
 474                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 476  0081 7b06          	ld	a,(OFST+6,sp)
 477  0083 a540          	bcp	a,#64
 478  0085 2706          	jreq	L112
 479                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 481  0087 e603          	ld	a,(3,x)
 482  0089 1a05          	or	a,(OFST+5,sp)
 484  008b 2005          	jra	L312
 485  008d               L112:
 486                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 488  008d 7b05          	ld	a,(OFST+5,sp)
 489  008f 43            	cpl	a
 490  0090 e403          	and	a,(3,x)
 491  0092               L312:
 492  0092 e703          	ld	(3,x),a
 493                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 495  0094 7b06          	ld	a,(OFST+6,sp)
 496  0096 a520          	bcp	a,#32
 497  0098 2708          	jreq	L512
 498                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 500  009a 1e01          	ldw	x,(OFST+1,sp)
 501  009c e604          	ld	a,(4,x)
 502  009e 1a05          	or	a,(OFST+5,sp)
 504  00a0 2007          	jra	L712
 505  00a2               L512:
 506                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 508  00a2 1e01          	ldw	x,(OFST+1,sp)
 509  00a4 7b05          	ld	a,(OFST+5,sp)
 510  00a6 43            	cpl	a
 511  00a7 e404          	and	a,(4,x)
 512  00a9               L712:
 513  00a9 e704          	ld	(4,x),a
 514                     ; 131 }
 517  00ab 85            	popw	x
 518  00ac 81            	ret	
 562                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 562                     ; 142 {
 563                     	switch	.text
 564  00ad               _GPIO_Write:
 566  00ad 89            	pushw	x
 567       00000000      OFST:	set	0
 570                     ; 143   GPIOx->ODR = PortVal;
 572  00ae 1e01          	ldw	x,(OFST+1,sp)
 573  00b0 7b05          	ld	a,(OFST+5,sp)
 574  00b2 f7            	ld	(x),a
 575                     ; 144 }
 578  00b3 85            	popw	x
 579  00b4 81            	ret	
 626                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 626                     ; 155 {
 627                     	switch	.text
 628  00b5               _GPIO_WriteHigh:
 630  00b5 89            	pushw	x
 631       00000000      OFST:	set	0
 634                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 636  00b6 f6            	ld	a,(x)
 637  00b7 1a05          	or	a,(OFST+5,sp)
 638  00b9 f7            	ld	(x),a
 639                     ; 157 }
 642  00ba 85            	popw	x
 643  00bb 81            	ret	
 690                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 690                     ; 168 {
 691                     	switch	.text
 692  00bc               _GPIO_WriteLow:
 694  00bc 89            	pushw	x
 695       00000000      OFST:	set	0
 698                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 700  00bd 7b05          	ld	a,(OFST+5,sp)
 701  00bf 43            	cpl	a
 702  00c0 f4            	and	a,(x)
 703  00c1 f7            	ld	(x),a
 704                     ; 170 }
 707  00c2 85            	popw	x
 708  00c3 81            	ret	
 755                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 755                     ; 181 {
 756                     	switch	.text
 757  00c4               _GPIO_WriteReverse:
 759  00c4 89            	pushw	x
 760       00000000      OFST:	set	0
 763                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 765  00c5 f6            	ld	a,(x)
 766  00c6 1805          	xor	a,(OFST+5,sp)
 767  00c8 f7            	ld	(x),a
 768                     ; 183 }
 771  00c9 85            	popw	x
 772  00ca 81            	ret	
 810                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 810                     ; 192 {
 811                     	switch	.text
 812  00cb               _GPIO_ReadOutputData:
 816                     ; 193   return ((uint8_t)GPIOx->ODR);
 818  00cb f6            	ld	a,(x)
 821  00cc 81            	ret	
 858                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 858                     ; 203 {
 859                     	switch	.text
 860  00cd               _GPIO_ReadInputData:
 864                     ; 204   return ((uint8_t)GPIOx->IDR);
 866  00cd e601          	ld	a,(1,x)
 869  00cf 81            	ret	
 937                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 937                     ; 214 {
 938                     	switch	.text
 939  00d0               _GPIO_ReadInputPin:
 941  00d0 89            	pushw	x
 942       00000000      OFST:	set	0
 945                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 947  00d1 e601          	ld	a,(1,x)
 948  00d3 1405          	and	a,(OFST+5,sp)
 951  00d5 85            	popw	x
 952  00d6 81            	ret	
1031                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1031                     ; 226 {
1032                     	switch	.text
1033  00d7               _GPIO_ExternalPullUpConfig:
1035  00d7 89            	pushw	x
1036       00000000      OFST:	set	0
1039                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1041  00d8 7b05          	ld	a,(OFST+5,sp)
1042  00da 260e          	jrne	L05
1043  00dc ae00e4        	ldw	x,#228
1044  00df 89            	pushw	x
1045  00e0 5f            	clrw	x
1046  00e1 89            	pushw	x
1047  00e2 ae0000        	ldw	x,#L771
1048  00e5 cd0000        	call	_assert_failed
1050  00e8 5b04          	addw	sp,#4
1051  00ea               L05:
1052                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1054  00ea 7b06          	ld	a,(OFST+6,sp)
1055  00ec 2711          	jreq	L06
1056  00ee 4a            	dec	a
1057  00ef 270e          	jreq	L06
1058  00f1 ae00e5        	ldw	x,#229
1059  00f4 89            	pushw	x
1060  00f5 5f            	clrw	x
1061  00f6 89            	pushw	x
1062  00f7 ae0000        	ldw	x,#L771
1063  00fa cd0000        	call	_assert_failed
1065  00fd 5b04          	addw	sp,#4
1066  00ff               L06:
1067                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1069  00ff 7b06          	ld	a,(OFST+6,sp)
1070  0101 2708          	jreq	L374
1071                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1073  0103 1e01          	ldw	x,(OFST+1,sp)
1074  0105 e603          	ld	a,(3,x)
1075  0107 1a05          	or	a,(OFST+5,sp)
1077  0109 2007          	jra	L574
1078  010b               L374:
1079                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1081  010b 1e01          	ldw	x,(OFST+1,sp)
1082  010d 7b05          	ld	a,(OFST+5,sp)
1083  010f 43            	cpl	a
1084  0110 e403          	and	a,(3,x)
1085  0112               L574:
1086  0112 e703          	ld	(3,x),a
1087                     ; 238 }
1090  0114 85            	popw	x
1091  0115 81            	ret	
1104                     	xdef	_GPIO_ExternalPullUpConfig
1105                     	xdef	_GPIO_ReadInputPin
1106                     	xdef	_GPIO_ReadOutputData
1107                     	xdef	_GPIO_ReadInputData
1108                     	xdef	_GPIO_WriteReverse
1109                     	xdef	_GPIO_WriteLow
1110                     	xdef	_GPIO_WriteHigh
1111                     	xdef	_GPIO_Write
1112                     	xdef	_GPIO_Init
1113                     	xdef	_GPIO_DeInit
1114                     	xref	_assert_failed
1115                     .const:	section	.text
1116  0000               L771:
1117  0000 6c6962726172  	dc.b	"library\stm8s_gpio"
1118  0012 2e6300        	dc.b	".c",0
1138                     	end
