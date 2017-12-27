   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  63                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  63                     ; 54 {
  65                     	switch	.text
  66  0000               _WWDG_Init:
  68  0000 89            	pushw	x
  69       00000000      OFST:	set	0
  72                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  74  0001 9f            	ld	a,xl
  75  0002 a180          	cp	a,#128
  76  0004 250e          	jrult	L01
  77  0006 ae0038        	ldw	x,#56
  78  0009 89            	pushw	x
  79  000a 5f            	clrw	x
  80  000b 89            	pushw	x
  81  000c ae0000        	ldw	x,#L72
  82  000f cd0000        	call	_assert_failed
  84  0012 5b04          	addw	sp,#4
  85  0014               L01:
  86                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  88  0014 357f50d2      	mov	20690,#127
  89                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  91  0018 7b01          	ld	a,(OFST+1,sp)
  92  001a aac0          	or	a,#192
  93  001c c750d1        	ld	20689,a
  94                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
  96  001f 7b02          	ld	a,(OFST+2,sp)
  97  0021 a47f          	and	a,#127
  98  0023 aa40          	or	a,#64
  99  0025 c750d2        	ld	20690,a
 100                     ; 61 }
 103  0028 85            	popw	x
 104  0029 81            	ret	
 137                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 137                     ; 70 {
 138                     	switch	.text
 139  002a               _WWDG_SetCounter:
 141  002a 88            	push	a
 142       00000000      OFST:	set	0
 145                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 147  002b a180          	cp	a,#128
 148  002d 250e          	jrult	L02
 149  002f ae0048        	ldw	x,#72
 150  0032 89            	pushw	x
 151  0033 5f            	clrw	x
 152  0034 89            	pushw	x
 153  0035 ae0000        	ldw	x,#L72
 154  0038 cd0000        	call	_assert_failed
 156  003b 5b04          	addw	sp,#4
 157  003d               L02:
 158                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 160  003d 7b01          	ld	a,(OFST+1,sp)
 161  003f a47f          	and	a,#127
 162  0041 c750d1        	ld	20689,a
 163                     ; 77 }
 166  0044 84            	pop	a
 167  0045 81            	ret	
 190                     ; 86 uint8_t WWDG_GetCounter(void)
 190                     ; 87 {
 191                     	switch	.text
 192  0046               _WWDG_GetCounter:
 196                     ; 88   return(WWDG->CR);
 198  0046 c650d1        	ld	a,20689
 201  0049 81            	ret	
 224                     ; 96 void WWDG_SWReset(void)
 224                     ; 97 {
 225                     	switch	.text
 226  004a               _WWDG_SWReset:
 230                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 232  004a 358050d1      	mov	20689,#128
 233                     ; 99 }
 236  004e 81            	ret	
 270                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 270                     ; 109 {
 271                     	switch	.text
 272  004f               _WWDG_SetWindowValue:
 274  004f 88            	push	a
 275       00000000      OFST:	set	0
 278                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 280  0050 a180          	cp	a,#128
 281  0052 250e          	jrult	L43
 282  0054 ae006f        	ldw	x,#111
 283  0057 89            	pushw	x
 284  0058 5f            	clrw	x
 285  0059 89            	pushw	x
 286  005a ae0000        	ldw	x,#L72
 287  005d cd0000        	call	_assert_failed
 289  0060 5b04          	addw	sp,#4
 290  0062               L43:
 291                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 293  0062 7b01          	ld	a,(OFST+1,sp)
 294  0064 a47f          	and	a,#127
 295  0066 aa40          	or	a,#64
 296  0068 c750d2        	ld	20690,a
 297                     ; 114 }
 300  006b 84            	pop	a
 301  006c 81            	ret	
 314                     	xdef	_WWDG_SetWindowValue
 315                     	xdef	_WWDG_SWReset
 316                     	xdef	_WWDG_GetCounter
 317                     	xdef	_WWDG_SetCounter
 318                     	xdef	_WWDG_Init
 319                     	xref	_assert_failed
 320                     .const:	section	.text
 321  0000               L72:
 322  0000 6c6962726172  	dc.b	"library\stm8s_wwdg"
 323  0012 2e6300        	dc.b	".c",0
 343                     	end
