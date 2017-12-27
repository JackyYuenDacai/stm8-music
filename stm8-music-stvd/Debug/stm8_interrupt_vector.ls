   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  48                     ; 12 @far @interrupt void NonHandledInterrupt (void)
  48                     ; 13 {
  49                     	switch	.text
  50  0000               f_NonHandledInterrupt:
  54                     ; 17 	return;
  57  0000 80            	iret	
  59                     .const:	section	.text
  60  0000               __vectab:
  61  0000 82            	dc.b	130
  63  0001 00            	dc.b	page(__stext)
  64  0002 0000          	dc.w	__stext
  65  0004 82            	dc.b	130
  67  0005 00            	dc.b	page(f_NonHandledInterrupt)
  68  0006 0000          	dc.w	f_NonHandledInterrupt
  69  0008 82            	dc.b	130
  71  0009 00            	dc.b	page(f_NonHandledInterrupt)
  72  000a 0000          	dc.w	f_NonHandledInterrupt
  73  000c 82            	dc.b	130
  75  000d 00            	dc.b	page(f_NonHandledInterrupt)
  76  000e 0000          	dc.w	f_NonHandledInterrupt
  77  0010 82            	dc.b	130
  79  0011 00            	dc.b	page(f_NonHandledInterrupt)
  80  0012 0000          	dc.w	f_NonHandledInterrupt
  81  0014 82            	dc.b	130
  83  0015 00            	dc.b	page(f_NonHandledInterrupt)
  84  0016 0000          	dc.w	f_NonHandledInterrupt
  85  0018 82            	dc.b	130
  87  0019 00            	dc.b	page(f_NonHandledInterrupt)
  88  001a 0000          	dc.w	f_NonHandledInterrupt
  89  001c 82            	dc.b	130
  91  001d 00            	dc.b	page(f_NonHandledInterrupt)
  92  001e 0000          	dc.w	f_NonHandledInterrupt
  93  0020 82            	dc.b	130
  95  0021 00            	dc.b	page(f_EXTI_PORTD_IRQHandler)
  96  0022 0000          	dc.w	f_EXTI_PORTD_IRQHandler
  97  0024 82            	dc.b	130
  99  0025 00            	dc.b	page(f_NonHandledInterrupt)
 100  0026 0000          	dc.w	f_NonHandledInterrupt
 101  0028 82            	dc.b	130
 103  0029 00            	dc.b	page(f_NonHandledInterrupt)
 104  002a 0000          	dc.w	f_NonHandledInterrupt
 105  002c 82            	dc.b	130
 107  002d 00            	dc.b	page(f_NonHandledInterrupt)
 108  002e 0000          	dc.w	f_NonHandledInterrupt
 109  0030 82            	dc.b	130
 111  0031 00            	dc.b	page(f_NonHandledInterrupt)
 112  0032 0000          	dc.w	f_NonHandledInterrupt
 113  0034 82            	dc.b	130
 115  0035 00            	dc.b	page(f_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
 116  0036 0000          	dc.w	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 117  0038 82            	dc.b	130
 119  0039 00            	dc.b	page(f_NonHandledInterrupt)
 120  003a 0000          	dc.w	f_NonHandledInterrupt
 121  003c 82            	dc.b	130
 123  003d 00            	dc.b	page(f_NonHandledInterrupt)
 124  003e 0000          	dc.w	f_NonHandledInterrupt
 125  0040 82            	dc.b	130
 127  0041 00            	dc.b	page(f_NonHandledInterrupt)
 128  0042 0000          	dc.w	f_NonHandledInterrupt
 129  0044 82            	dc.b	130
 131  0045 00            	dc.b	page(f_NonHandledInterrupt)
 132  0046 0000          	dc.w	f_NonHandledInterrupt
 133  0048 82            	dc.b	130
 135  0049 00            	dc.b	page(f_NonHandledInterrupt)
 136  004a 0000          	dc.w	f_NonHandledInterrupt
 137  004c 82            	dc.b	130
 139  004d 00            	dc.b	page(f_NonHandledInterrupt)
 140  004e 0000          	dc.w	f_NonHandledInterrupt
 141  0050 82            	dc.b	130
 143  0051 00            	dc.b	page(f_NonHandledInterrupt)
 144  0052 0000          	dc.w	f_NonHandledInterrupt
 145  0054 82            	dc.b	130
 147  0055 00            	dc.b	page(f_NonHandledInterrupt)
 148  0056 0000          	dc.w	f_NonHandledInterrupt
 149  0058 82            	dc.b	130
 151  0059 00            	dc.b	page(f_NonHandledInterrupt)
 152  005a 0000          	dc.w	f_NonHandledInterrupt
 153  005c 82            	dc.b	130
 155  005d 00            	dc.b	page(f_NonHandledInterrupt)
 156  005e 0000          	dc.w	f_NonHandledInterrupt
 157  0060 82            	dc.b	130
 159  0061 00            	dc.b	page(f_NonHandledInterrupt)
 160  0062 0000          	dc.w	f_NonHandledInterrupt
 161  0064 82            	dc.b	130
 163  0065 00            	dc.b	page(f_NonHandledInterrupt)
 164  0066 0000          	dc.w	f_NonHandledInterrupt
 165  0068 82            	dc.b	130
 167  0069 00            	dc.b	page(f_NonHandledInterrupt)
 168  006a 0000          	dc.w	f_NonHandledInterrupt
 169  006c 82            	dc.b	130
 171  006d 00            	dc.b	page(f_NonHandledInterrupt)
 172  006e 0000          	dc.w	f_NonHandledInterrupt
 173  0070 82            	dc.b	130
 175  0071 00            	dc.b	page(f_NonHandledInterrupt)
 176  0072 0000          	dc.w	f_NonHandledInterrupt
 177  0074 82            	dc.b	130
 179  0075 00            	dc.b	page(f_NonHandledInterrupt)
 180  0076 0000          	dc.w	f_NonHandledInterrupt
 181  0078 82            	dc.b	130
 183  0079 00            	dc.b	page(f_NonHandledInterrupt)
 184  007a 0000          	dc.w	f_NonHandledInterrupt
 185  007c 82            	dc.b	130
 187  007d 00            	dc.b	page(f_NonHandledInterrupt)
 188  007e 0000          	dc.w	f_NonHandledInterrupt
 239                     	xdef	__vectab
 240                     	xref	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 241                     	xref	f_EXTI_PORTD_IRQHandler
 242                     	xref	__stext
 243                     	xdef	f_NonHandledInterrupt
 262                     	end
