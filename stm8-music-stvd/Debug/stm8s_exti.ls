   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  46                     ; 53 void EXTI_DeInit(void)
  46                     ; 54 {
  48                     	switch	.text
  49  0000               _EXTI_DeInit:
  53                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  55  0000 725f50a0      	clr	20640
  56                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  58  0004 725f50a1      	clr	20641
  59                     ; 57 }
  62  0008 81            	ret	
 188                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 188                     ; 71 {
 189                     	switch	.text
 190  0009               _EXTI_SetExtIntSensitivity:
 192  0009 89            	pushw	x
 193       00000000      OFST:	set	0
 196                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 198  000a 9e            	ld	a,xh
 199  000b 4d            	tnz	a
 200  000c 2721          	jreq	L41
 201  000e 9e            	ld	a,xh
 202  000f 4a            	dec	a
 203  0010 271d          	jreq	L41
 204  0012 9e            	ld	a,xh
 205  0013 a102          	cp	a,#2
 206  0015 2718          	jreq	L41
 207  0017 9e            	ld	a,xh
 208  0018 a103          	cp	a,#3
 209  001a 2713          	jreq	L41
 210  001c 9e            	ld	a,xh
 211  001d a104          	cp	a,#4
 212  001f 270e          	jreq	L41
 213  0021 ae0049        	ldw	x,#73
 214  0024 89            	pushw	x
 215  0025 5f            	clrw	x
 216  0026 89            	pushw	x
 217  0027 ae0000        	ldw	x,#L111
 218  002a cd0000        	call	_assert_failed
 220  002d 5b04          	addw	sp,#4
 221  002f               L41:
 222                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 224  002f 7b02          	ld	a,(OFST+2,sp)
 225  0031 271a          	jreq	L42
 226  0033 a101          	cp	a,#1
 227  0035 2716          	jreq	L42
 228  0037 a102          	cp	a,#2
 229  0039 2712          	jreq	L42
 230  003b a103          	cp	a,#3
 231  003d 270e          	jreq	L42
 232  003f ae004a        	ldw	x,#74
 233  0042 89            	pushw	x
 234  0043 5f            	clrw	x
 235  0044 89            	pushw	x
 236  0045 ae0000        	ldw	x,#L111
 237  0048 cd0000        	call	_assert_failed
 239  004b 5b04          	addw	sp,#4
 240  004d               L42:
 241                     ; 77   switch (Port)
 243  004d 7b01          	ld	a,(OFST+1,sp)
 245                     ; 99   default:
 245                     ; 100     break;
 246  004f 270e          	jreq	L12
 247  0051 4a            	dec	a
 248  0052 271a          	jreq	L32
 249  0054 4a            	dec	a
 250  0055 2725          	jreq	L52
 251  0057 4a            	dec	a
 252  0058 2731          	jreq	L72
 253  005a 4a            	dec	a
 254  005b 2745          	jreq	L13
 255  005d 2053          	jra	L511
 256  005f               L12:
 257                     ; 79   case EXTI_PORT_GPIOA:
 257                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 259  005f c650a0        	ld	a,20640
 260  0062 a4fc          	and	a,#252
 261  0064 c750a0        	ld	20640,a
 262                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 264  0067 c650a0        	ld	a,20640
 265  006a 1a02          	or	a,(OFST+2,sp)
 266                     ; 82     break;
 268  006c 202f          	jp	LC001
 269  006e               L32:
 270                     ; 83   case EXTI_PORT_GPIOB:
 270                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 272  006e c650a0        	ld	a,20640
 273  0071 a4f3          	and	a,#243
 274  0073 c750a0        	ld	20640,a
 275                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 277  0076 7b02          	ld	a,(OFST+2,sp)
 278  0078 48            	sll	a
 279  0079 48            	sll	a
 280                     ; 86     break;
 282  007a 201e          	jp	LC002
 283  007c               L52:
 284                     ; 87   case EXTI_PORT_GPIOC:
 284                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 286  007c c650a0        	ld	a,20640
 287  007f a4cf          	and	a,#207
 288  0081 c750a0        	ld	20640,a
 289                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 291  0084 7b02          	ld	a,(OFST+2,sp)
 292  0086 97            	ld	xl,a
 293  0087 a610          	ld	a,#16
 294                     ; 90     break;
 296  0089 200d          	jp	LC003
 297  008b               L72:
 298                     ; 91   case EXTI_PORT_GPIOD:
 298                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 300  008b c650a0        	ld	a,20640
 301  008e a43f          	and	a,#63
 302  0090 c750a0        	ld	20640,a
 303                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 305  0093 7b02          	ld	a,(OFST+2,sp)
 306  0095 97            	ld	xl,a
 307  0096 a640          	ld	a,#64
 308  0098               LC003:
 309  0098 42            	mul	x,a
 310  0099 9f            	ld	a,xl
 311  009a               LC002:
 312  009a ca50a0        	or	a,20640
 313  009d               LC001:
 314  009d c750a0        	ld	20640,a
 315                     ; 94     break;
 317  00a0 2010          	jra	L511
 318  00a2               L13:
 319                     ; 95   case EXTI_PORT_GPIOE:
 319                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 321  00a2 c650a1        	ld	a,20641
 322  00a5 a4fc          	and	a,#252
 323  00a7 c750a1        	ld	20641,a
 324                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 326  00aa c650a1        	ld	a,20641
 327  00ad 1a02          	or	a,(OFST+2,sp)
 328  00af c750a1        	ld	20641,a
 329                     ; 98     break;
 331                     ; 99   default:
 331                     ; 100     break;
 333  00b2               L511:
 334                     ; 102 }
 337  00b2 85            	popw	x
 338  00b3 81            	ret	
 397                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 397                     ; 112 {
 398                     	switch	.text
 399  00b4               _EXTI_SetTLISensitivity:
 401  00b4 88            	push	a
 402       00000000      OFST:	set	0
 405                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 407  00b5 4d            	tnz	a
 408  00b6 2712          	jreq	L63
 409  00b8 a104          	cp	a,#4
 410  00ba 270e          	jreq	L63
 411  00bc ae0072        	ldw	x,#114
 412  00bf 89            	pushw	x
 413  00c0 5f            	clrw	x
 414  00c1 89            	pushw	x
 415  00c2 ae0000        	ldw	x,#L111
 416  00c5 cd0000        	call	_assert_failed
 418  00c8 5b04          	addw	sp,#4
 419  00ca               L63:
 420                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 422  00ca 721550a1      	bres	20641,#2
 423                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 425  00ce c650a1        	ld	a,20641
 426  00d1 1a01          	or	a,(OFST+1,sp)
 427  00d3 c750a1        	ld	20641,a
 428                     ; 119 }
 431  00d6 84            	pop	a
 432  00d7 81            	ret	
 477                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 477                     ; 127 {
 478                     	switch	.text
 479  00d8               _EXTI_GetExtIntSensitivity:
 481  00d8 88            	push	a
 482  00d9 88            	push	a
 483       00000001      OFST:	set	1
 486                     ; 128   uint8_t value = 0;
 488  00da 0f01          	clr	(OFST+0,sp)
 489                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 491  00dc 4d            	tnz	a
 492  00dd 271e          	jreq	L05
 493  00df a101          	cp	a,#1
 494  00e1 271a          	jreq	L05
 495  00e3 a102          	cp	a,#2
 496  00e5 2716          	jreq	L05
 497  00e7 a103          	cp	a,#3
 498  00e9 2712          	jreq	L05
 499  00eb a104          	cp	a,#4
 500  00ed 270e          	jreq	L05
 501  00ef ae0083        	ldw	x,#131
 502  00f2 89            	pushw	x
 503  00f3 5f            	clrw	x
 504  00f4 89            	pushw	x
 505  00f5 ae0000        	ldw	x,#L111
 506  00f8 cd0000        	call	_assert_failed
 508  00fb 5b04          	addw	sp,#4
 509  00fd               L05:
 510                     ; 133   switch (Port)
 512  00fd 7b02          	ld	a,(OFST+1,sp)
 514                     ; 150   default:
 514                     ; 151     break;
 515  00ff 2710          	jreq	L541
 516  0101 4a            	dec	a
 517  0102 2712          	jreq	L741
 518  0104 4a            	dec	a
 519  0105 2718          	jreq	L151
 520  0107 4a            	dec	a
 521  0108 271b          	jreq	L351
 522  010a 4a            	dec	a
 523  010b 2722          	jreq	L551
 524  010d 7b01          	ld	a,(OFST+0,sp)
 525  010f 2023          	jra	LC004
 526  0111               L541:
 527                     ; 135   case EXTI_PORT_GPIOA:
 527                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 529  0111 c650a0        	ld	a,20640
 530                     ; 137     break;
 532  0114 201c          	jp	LC005
 533  0116               L741:
 534                     ; 138   case EXTI_PORT_GPIOB:
 534                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 536  0116 c650a0        	ld	a,20640
 537  0119 a40c          	and	a,#12
 538  011b 44            	srl	a
 539  011c 44            	srl	a
 540                     ; 140     break;
 542  011d 2015          	jp	LC004
 543  011f               L151:
 544                     ; 141   case EXTI_PORT_GPIOC:
 544                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 546  011f c650a0        	ld	a,20640
 547  0122 4e            	swap	a
 548                     ; 143     break;
 550  0123 200d          	jp	LC005
 551  0125               L351:
 552                     ; 144   case EXTI_PORT_GPIOD:
 552                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 554  0125 c650a0        	ld	a,20640
 555  0128 4e            	swap	a
 556  0129 a40c          	and	a,#12
 557  012b 44            	srl	a
 558  012c 44            	srl	a
 559                     ; 146     break;
 561  012d 2003          	jp	LC005
 562  012f               L551:
 563                     ; 147   case EXTI_PORT_GPIOE:
 563                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 565  012f c650a1        	ld	a,20641
 566  0132               LC005:
 567  0132 a403          	and	a,#3
 568  0134               LC004:
 569                     ; 149     break;
 571                     ; 150   default:
 571                     ; 151     break;
 573                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 577  0134 85            	popw	x
 578  0135 81            	ret	
 612                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 612                     ; 163 {
 613                     	switch	.text
 614  0136               _EXTI_GetTLISensitivity:
 616  0136 88            	push	a
 617       00000001      OFST:	set	1
 620                     ; 164   uint8_t value = 0;
 622                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 624  0137 c650a1        	ld	a,20641
 625  013a a404          	and	a,#4
 626                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 630  013c 5b01          	addw	sp,#1
 631  013e 81            	ret	
 644                     	xdef	_EXTI_GetTLISensitivity
 645                     	xdef	_EXTI_GetExtIntSensitivity
 646                     	xdef	_EXTI_SetTLISensitivity
 647                     	xdef	_EXTI_SetExtIntSensitivity
 648                     	xdef	_EXTI_DeInit
 649                     	xref	_assert_failed
 650                     .const:	section	.text
 651  0000               L111:
 652  0000 6c6962726172  	dc.b	"library\stm8s_exti"
 653  0012 2e6300        	dc.b	".c",0
 673                     	end
