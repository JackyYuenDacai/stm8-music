   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  46                     ; 58 void TIM1_DeInit(void)
  46                     ; 59 {
  48                     	switch	.text
  49  0000               _TIM1_DeInit:
  53                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  55  0000 725f5250      	clr	21072
  56                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  58  0004 725f5251      	clr	21073
  59                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  61  0008 725f5252      	clr	21074
  62                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  64  000c 725f5253      	clr	21075
  65                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  67  0010 725f5254      	clr	21076
  68                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  70  0014 725f5256      	clr	21078
  71                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  73  0018 725f525c      	clr	21084
  74                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  76  001c 725f525d      	clr	21085
  77                     ; 70   TIM1->CCMR1 = 0x01;
  79  0020 35015258      	mov	21080,#1
  80                     ; 71   TIM1->CCMR2 = 0x01;
  82  0024 35015259      	mov	21081,#1
  83                     ; 72   TIM1->CCMR3 = 0x01;
  85  0028 3501525a      	mov	21082,#1
  86                     ; 73   TIM1->CCMR4 = 0x01;
  88  002c 3501525b      	mov	21083,#1
  89                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  91  0030 725f525c      	clr	21084
  92                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  94  0034 725f525d      	clr	21085
  95                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  97  0038 725f5258      	clr	21080
  98                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 100  003c 725f5259      	clr	21081
 101                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 103  0040 725f525a      	clr	21082
 104                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 106  0044 725f525b      	clr	21083
 107                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 109  0048 725f525e      	clr	21086
 110                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 112  004c 725f525f      	clr	21087
 113                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 115  0050 725f5260      	clr	21088
 116                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 118  0054 725f5261      	clr	21089
 119                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 121  0058 35ff5262      	mov	21090,#255
 122                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 124  005c 35ff5263      	mov	21091,#255
 125                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 127  0060 725f5265      	clr	21093
 128                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 130  0064 725f5266      	clr	21094
 131                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 133  0068 725f5267      	clr	21095
 134                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 136  006c 725f5268      	clr	21096
 137                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 139  0070 725f5269      	clr	21097
 140                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 142  0074 725f526a      	clr	21098
 143                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 145  0078 725f526b      	clr	21099
 146                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 148  007c 725f526c      	clr	21100
 149                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 151  0080 725f526f      	clr	21103
 152                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 154  0084 35015257      	mov	21079,#1
 155                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 157  0088 725f526e      	clr	21102
 158                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 160  008c 725f526d      	clr	21101
 161                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 163  0090 725f5264      	clr	21092
 164                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 166  0094 725f5255      	clr	21077
 167                     ; 101 }
 170  0098 81            	ret	
 274                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 274                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 274                     ; 113                        uint16_t TIM1_Period,
 274                     ; 114                        uint8_t TIM1_RepetitionCounter)
 274                     ; 115 {
 275                     	switch	.text
 276  0099               _TIM1_TimeBaseInit:
 278  0099 89            	pushw	x
 279       00000000      OFST:	set	0
 282                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 284  009a 7b05          	ld	a,(OFST+5,sp)
 285  009c 271e          	jreq	L41
 286  009e a110          	cp	a,#16
 287  00a0 271a          	jreq	L41
 288  00a2 a120          	cp	a,#32
 289  00a4 2716          	jreq	L41
 290  00a6 a140          	cp	a,#64
 291  00a8 2712          	jreq	L41
 292  00aa a160          	cp	a,#96
 293  00ac 270e          	jreq	L41
 294  00ae ae0075        	ldw	x,#117
 295  00b1 89            	pushw	x
 296  00b2 5f            	clrw	x
 297  00b3 89            	pushw	x
 298  00b4 ae0000        	ldw	x,#L37
 299  00b7 cd0000        	call	_assert_failed
 301  00ba 5b04          	addw	sp,#4
 302  00bc               L41:
 303                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 305  00bc 7b06          	ld	a,(OFST+6,sp)
 306  00be c75262        	ld	21090,a
 307                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 309  00c1 7b07          	ld	a,(OFST+7,sp)
 310  00c3 c75263        	ld	21091,a
 311                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 313  00c6 7b01          	ld	a,(OFST+1,sp)
 314  00c8 c75260        	ld	21088,a
 315                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 317  00cb 7b02          	ld	a,(OFST+2,sp)
 318  00cd c75261        	ld	21089,a
 319                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 319                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 321  00d0 c65250        	ld	a,21072
 322  00d3 a48f          	and	a,#143
 323  00d5 1a05          	or	a,(OFST+5,sp)
 324  00d7 c75250        	ld	21072,a
 325                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 327  00da 7b08          	ld	a,(OFST+8,sp)
 328  00dc c75264        	ld	21092,a
 329                     ; 133 }
 332  00df 85            	popw	x
 333  00e0 81            	ret	
 617                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 617                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 617                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 617                     ; 157                   uint16_t TIM1_Pulse,
 617                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 617                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 617                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 617                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 617                     ; 162 {
 618                     	switch	.text
 619  00e1               _TIM1_OC1Init:
 621  00e1 89            	pushw	x
 622  00e2 5203          	subw	sp,#3
 623       00000003      OFST:	set	3
 626                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 628  00e4 9e            	ld	a,xh
 629  00e5 4d            	tnz	a
 630  00e6 2727          	jreq	L62
 631  00e8 9e            	ld	a,xh
 632  00e9 a110          	cp	a,#16
 633  00eb 2722          	jreq	L62
 634  00ed 9e            	ld	a,xh
 635  00ee a120          	cp	a,#32
 636  00f0 271d          	jreq	L62
 637  00f2 9e            	ld	a,xh
 638  00f3 a130          	cp	a,#48
 639  00f5 2718          	jreq	L62
 640  00f7 9e            	ld	a,xh
 641  00f8 a160          	cp	a,#96
 642  00fa 2713          	jreq	L62
 643  00fc 9e            	ld	a,xh
 644  00fd a170          	cp	a,#112
 645  00ff 270e          	jreq	L62
 646  0101 ae00a4        	ldw	x,#164
 647  0104 89            	pushw	x
 648  0105 5f            	clrw	x
 649  0106 89            	pushw	x
 650  0107 ae0000        	ldw	x,#L37
 651  010a cd0000        	call	_assert_failed
 653  010d 5b04          	addw	sp,#4
 654  010f               L62:
 655                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 657  010f 7b05          	ld	a,(OFST+2,sp)
 658  0111 2712          	jreq	L63
 659  0113 a111          	cp	a,#17
 660  0115 270e          	jreq	L63
 661  0117 ae00a5        	ldw	x,#165
 662  011a 89            	pushw	x
 663  011b 5f            	clrw	x
 664  011c 89            	pushw	x
 665  011d ae0000        	ldw	x,#L37
 666  0120 cd0000        	call	_assert_failed
 668  0123 5b04          	addw	sp,#4
 669  0125               L63:
 670                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 672  0125 7b08          	ld	a,(OFST+5,sp)
 673  0127 2712          	jreq	L64
 674  0129 a144          	cp	a,#68
 675  012b 270e          	jreq	L64
 676  012d ae00a6        	ldw	x,#166
 677  0130 89            	pushw	x
 678  0131 5f            	clrw	x
 679  0132 89            	pushw	x
 680  0133 ae0000        	ldw	x,#L37
 681  0136 cd0000        	call	_assert_failed
 683  0139 5b04          	addw	sp,#4
 684  013b               L64:
 685                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 687  013b 7b0b          	ld	a,(OFST+8,sp)
 688  013d 2712          	jreq	L65
 689  013f a122          	cp	a,#34
 690  0141 270e          	jreq	L65
 691  0143 ae00a7        	ldw	x,#167
 692  0146 89            	pushw	x
 693  0147 5f            	clrw	x
 694  0148 89            	pushw	x
 695  0149 ae0000        	ldw	x,#L37
 696  014c cd0000        	call	_assert_failed
 698  014f 5b04          	addw	sp,#4
 699  0151               L65:
 700                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 702  0151 7b0c          	ld	a,(OFST+9,sp)
 703  0153 2712          	jreq	L66
 704  0155 a188          	cp	a,#136
 705  0157 270e          	jreq	L66
 706  0159 ae00a8        	ldw	x,#168
 707  015c 89            	pushw	x
 708  015d 5f            	clrw	x
 709  015e 89            	pushw	x
 710  015f ae0000        	ldw	x,#L37
 711  0162 cd0000        	call	_assert_failed
 713  0165 5b04          	addw	sp,#4
 714  0167               L66:
 715                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 717  0167 7b0d          	ld	a,(OFST+10,sp)
 718  0169 a155          	cp	a,#85
 719  016b 2712          	jreq	L67
 720  016d 7b0d          	ld	a,(OFST+10,sp)
 721  016f 270e          	jreq	L67
 722  0171 ae00a9        	ldw	x,#169
 723  0174 89            	pushw	x
 724  0175 5f            	clrw	x
 725  0176 89            	pushw	x
 726  0177 ae0000        	ldw	x,#L37
 727  017a cd0000        	call	_assert_failed
 729  017d 5b04          	addw	sp,#4
 730  017f               L67:
 731                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 733  017f 7b0e          	ld	a,(OFST+11,sp)
 734  0181 a12a          	cp	a,#42
 735  0183 2712          	jreq	L601
 736  0185 7b0e          	ld	a,(OFST+11,sp)
 737  0187 270e          	jreq	L601
 738  0189 ae00aa        	ldw	x,#170
 739  018c 89            	pushw	x
 740  018d 5f            	clrw	x
 741  018e 89            	pushw	x
 742  018f ae0000        	ldw	x,#L37
 743  0192 cd0000        	call	_assert_failed
 745  0195 5b04          	addw	sp,#4
 746  0197               L601:
 747                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 747                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 749  0197 c6525c        	ld	a,21084
 750  019a a4f0          	and	a,#240
 751  019c c7525c        	ld	21084,a
 752                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 752                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 752                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 752                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 754  019f 7b0c          	ld	a,(OFST+9,sp)
 755  01a1 a408          	and	a,#8
 756  01a3 6b03          	ld	(OFST+0,sp),a
 757  01a5 7b0b          	ld	a,(OFST+8,sp)
 758  01a7 a402          	and	a,#2
 759  01a9 1a03          	or	a,(OFST+0,sp)
 760  01ab 6b02          	ld	(OFST-1,sp),a
 761  01ad 7b08          	ld	a,(OFST+5,sp)
 762  01af a404          	and	a,#4
 763  01b1 6b01          	ld	(OFST-2,sp),a
 764  01b3 7b05          	ld	a,(OFST+2,sp)
 765  01b5 a401          	and	a,#1
 766  01b7 1a01          	or	a,(OFST-2,sp)
 767  01b9 1a02          	or	a,(OFST-1,sp)
 768  01bb ca525c        	or	a,21084
 769  01be c7525c        	ld	21084,a
 770                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 770                     ; 185                           (uint8_t)TIM1_OCMode);
 772  01c1 c65258        	ld	a,21080
 773  01c4 a48f          	and	a,#143
 774  01c6 1a04          	or	a,(OFST+1,sp)
 775  01c8 c75258        	ld	21080,a
 776                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 778  01cb c6526f        	ld	a,21103
 779  01ce a4fc          	and	a,#252
 780  01d0 c7526f        	ld	21103,a
 781                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 781                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 783  01d3 7b0e          	ld	a,(OFST+11,sp)
 784  01d5 a402          	and	a,#2
 785  01d7 6b03          	ld	(OFST+0,sp),a
 786  01d9 7b0d          	ld	a,(OFST+10,sp)
 787  01db a401          	and	a,#1
 788  01dd 1a03          	or	a,(OFST+0,sp)
 789  01df ca526f        	or	a,21103
 790  01e2 c7526f        	ld	21103,a
 791                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 793  01e5 7b09          	ld	a,(OFST+6,sp)
 794  01e7 c75265        	ld	21093,a
 795                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 797  01ea 7b0a          	ld	a,(OFST+7,sp)
 798  01ec c75266        	ld	21094,a
 799                     ; 196 }
 802  01ef 5b05          	addw	sp,#5
 803  01f1 81            	ret	
 906                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 906                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 906                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 906                     ; 220                   uint16_t TIM1_Pulse,
 906                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 906                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 906                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 906                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 906                     ; 225 {
 907                     	switch	.text
 908  01f2               _TIM1_OC2Init:
 910  01f2 89            	pushw	x
 911  01f3 5203          	subw	sp,#3
 912       00000003      OFST:	set	3
 915                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 917  01f5 9e            	ld	a,xh
 918  01f6 4d            	tnz	a
 919  01f7 2727          	jreq	L021
 920  01f9 9e            	ld	a,xh
 921  01fa a110          	cp	a,#16
 922  01fc 2722          	jreq	L021
 923  01fe 9e            	ld	a,xh
 924  01ff a120          	cp	a,#32
 925  0201 271d          	jreq	L021
 926  0203 9e            	ld	a,xh
 927  0204 a130          	cp	a,#48
 928  0206 2718          	jreq	L021
 929  0208 9e            	ld	a,xh
 930  0209 a160          	cp	a,#96
 931  020b 2713          	jreq	L021
 932  020d 9e            	ld	a,xh
 933  020e a170          	cp	a,#112
 934  0210 270e          	jreq	L021
 935  0212 ae00e3        	ldw	x,#227
 936  0215 89            	pushw	x
 937  0216 5f            	clrw	x
 938  0217 89            	pushw	x
 939  0218 ae0000        	ldw	x,#L37
 940  021b cd0000        	call	_assert_failed
 942  021e 5b04          	addw	sp,#4
 943  0220               L021:
 944                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 946  0220 7b05          	ld	a,(OFST+2,sp)
 947  0222 2712          	jreq	L031
 948  0224 a111          	cp	a,#17
 949  0226 270e          	jreq	L031
 950  0228 ae00e4        	ldw	x,#228
 951  022b 89            	pushw	x
 952  022c 5f            	clrw	x
 953  022d 89            	pushw	x
 954  022e ae0000        	ldw	x,#L37
 955  0231 cd0000        	call	_assert_failed
 957  0234 5b04          	addw	sp,#4
 958  0236               L031:
 959                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 961  0236 7b08          	ld	a,(OFST+5,sp)
 962  0238 2712          	jreq	L041
 963  023a a144          	cp	a,#68
 964  023c 270e          	jreq	L041
 965  023e ae00e5        	ldw	x,#229
 966  0241 89            	pushw	x
 967  0242 5f            	clrw	x
 968  0243 89            	pushw	x
 969  0244 ae0000        	ldw	x,#L37
 970  0247 cd0000        	call	_assert_failed
 972  024a 5b04          	addw	sp,#4
 973  024c               L041:
 974                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 976  024c 7b0b          	ld	a,(OFST+8,sp)
 977  024e 2712          	jreq	L051
 978  0250 a122          	cp	a,#34
 979  0252 270e          	jreq	L051
 980  0254 ae00e6        	ldw	x,#230
 981  0257 89            	pushw	x
 982  0258 5f            	clrw	x
 983  0259 89            	pushw	x
 984  025a ae0000        	ldw	x,#L37
 985  025d cd0000        	call	_assert_failed
 987  0260 5b04          	addw	sp,#4
 988  0262               L051:
 989                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 991  0262 7b0c          	ld	a,(OFST+9,sp)
 992  0264 2712          	jreq	L061
 993  0266 a188          	cp	a,#136
 994  0268 270e          	jreq	L061
 995  026a ae00e7        	ldw	x,#231
 996  026d 89            	pushw	x
 997  026e 5f            	clrw	x
 998  026f 89            	pushw	x
 999  0270 ae0000        	ldw	x,#L37
1000  0273 cd0000        	call	_assert_failed
1002  0276 5b04          	addw	sp,#4
1003  0278               L061:
1004                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1006  0278 7b0d          	ld	a,(OFST+10,sp)
1007  027a a155          	cp	a,#85
1008  027c 2712          	jreq	L071
1009  027e 7b0d          	ld	a,(OFST+10,sp)
1010  0280 270e          	jreq	L071
1011  0282 ae00e8        	ldw	x,#232
1012  0285 89            	pushw	x
1013  0286 5f            	clrw	x
1014  0287 89            	pushw	x
1015  0288 ae0000        	ldw	x,#L37
1016  028b cd0000        	call	_assert_failed
1018  028e 5b04          	addw	sp,#4
1019  0290               L071:
1020                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1022  0290 7b0e          	ld	a,(OFST+11,sp)
1023  0292 a12a          	cp	a,#42
1024  0294 2712          	jreq	L002
1025  0296 7b0e          	ld	a,(OFST+11,sp)
1026  0298 270e          	jreq	L002
1027  029a ae00e9        	ldw	x,#233
1028  029d 89            	pushw	x
1029  029e 5f            	clrw	x
1030  029f 89            	pushw	x
1031  02a0 ae0000        	ldw	x,#L37
1032  02a3 cd0000        	call	_assert_failed
1034  02a6 5b04          	addw	sp,#4
1035  02a8               L002:
1036                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1036                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1038  02a8 c6525c        	ld	a,21084
1039  02ab a40f          	and	a,#15
1040  02ad c7525c        	ld	21084,a
1041                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1041                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1041                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1041                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1043  02b0 7b0c          	ld	a,(OFST+9,sp)
1044  02b2 a480          	and	a,#128
1045  02b4 6b03          	ld	(OFST+0,sp),a
1046  02b6 7b0b          	ld	a,(OFST+8,sp)
1047  02b8 a420          	and	a,#32
1048  02ba 1a03          	or	a,(OFST+0,sp)
1049  02bc 6b02          	ld	(OFST-1,sp),a
1050  02be 7b08          	ld	a,(OFST+5,sp)
1051  02c0 a440          	and	a,#64
1052  02c2 6b01          	ld	(OFST-2,sp),a
1053  02c4 7b05          	ld	a,(OFST+2,sp)
1054  02c6 a410          	and	a,#16
1055  02c8 1a01          	or	a,(OFST-2,sp)
1056  02ca 1a02          	or	a,(OFST-1,sp)
1057  02cc ca525c        	or	a,21084
1058  02cf c7525c        	ld	21084,a
1059                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1059                     ; 249                           (uint8_t)TIM1_OCMode);
1061  02d2 c65259        	ld	a,21081
1062  02d5 a48f          	and	a,#143
1063  02d7 1a04          	or	a,(OFST+1,sp)
1064  02d9 c75259        	ld	21081,a
1065                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1067  02dc c6526f        	ld	a,21103
1068  02df a4f3          	and	a,#243
1069  02e1 c7526f        	ld	21103,a
1070                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1070                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1072  02e4 7b0e          	ld	a,(OFST+11,sp)
1073  02e6 a408          	and	a,#8
1074  02e8 6b03          	ld	(OFST+0,sp),a
1075  02ea 7b0d          	ld	a,(OFST+10,sp)
1076  02ec a404          	and	a,#4
1077  02ee 1a03          	or	a,(OFST+0,sp)
1078  02f0 ca526f        	or	a,21103
1079  02f3 c7526f        	ld	21103,a
1080                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1082  02f6 7b09          	ld	a,(OFST+6,sp)
1083  02f8 c75267        	ld	21095,a
1084                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1086  02fb 7b0a          	ld	a,(OFST+7,sp)
1087  02fd c75268        	ld	21096,a
1088                     ; 260 }
1091  0300 5b05          	addw	sp,#5
1092  0302 81            	ret	
1195                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1195                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1195                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1195                     ; 284                   uint16_t TIM1_Pulse,
1195                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1195                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1195                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1195                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1195                     ; 289 {
1196                     	switch	.text
1197  0303               _TIM1_OC3Init:
1199  0303 89            	pushw	x
1200  0304 5203          	subw	sp,#3
1201       00000003      OFST:	set	3
1204                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1206  0306 9e            	ld	a,xh
1207  0307 4d            	tnz	a
1208  0308 2727          	jreq	L212
1209  030a 9e            	ld	a,xh
1210  030b a110          	cp	a,#16
1211  030d 2722          	jreq	L212
1212  030f 9e            	ld	a,xh
1213  0310 a120          	cp	a,#32
1214  0312 271d          	jreq	L212
1215  0314 9e            	ld	a,xh
1216  0315 a130          	cp	a,#48
1217  0317 2718          	jreq	L212
1218  0319 9e            	ld	a,xh
1219  031a a160          	cp	a,#96
1220  031c 2713          	jreq	L212
1221  031e 9e            	ld	a,xh
1222  031f a170          	cp	a,#112
1223  0321 270e          	jreq	L212
1224  0323 ae0123        	ldw	x,#291
1225  0326 89            	pushw	x
1226  0327 5f            	clrw	x
1227  0328 89            	pushw	x
1228  0329 ae0000        	ldw	x,#L37
1229  032c cd0000        	call	_assert_failed
1231  032f 5b04          	addw	sp,#4
1232  0331               L212:
1233                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1235  0331 7b05          	ld	a,(OFST+2,sp)
1236  0333 2712          	jreq	L222
1237  0335 a111          	cp	a,#17
1238  0337 270e          	jreq	L222
1239  0339 ae0124        	ldw	x,#292
1240  033c 89            	pushw	x
1241  033d 5f            	clrw	x
1242  033e 89            	pushw	x
1243  033f ae0000        	ldw	x,#L37
1244  0342 cd0000        	call	_assert_failed
1246  0345 5b04          	addw	sp,#4
1247  0347               L222:
1248                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1250  0347 7b08          	ld	a,(OFST+5,sp)
1251  0349 2712          	jreq	L232
1252  034b a144          	cp	a,#68
1253  034d 270e          	jreq	L232
1254  034f ae0125        	ldw	x,#293
1255  0352 89            	pushw	x
1256  0353 5f            	clrw	x
1257  0354 89            	pushw	x
1258  0355 ae0000        	ldw	x,#L37
1259  0358 cd0000        	call	_assert_failed
1261  035b 5b04          	addw	sp,#4
1262  035d               L232:
1263                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1265  035d 7b0b          	ld	a,(OFST+8,sp)
1266  035f 2712          	jreq	L242
1267  0361 a122          	cp	a,#34
1268  0363 270e          	jreq	L242
1269  0365 ae0126        	ldw	x,#294
1270  0368 89            	pushw	x
1271  0369 5f            	clrw	x
1272  036a 89            	pushw	x
1273  036b ae0000        	ldw	x,#L37
1274  036e cd0000        	call	_assert_failed
1276  0371 5b04          	addw	sp,#4
1277  0373               L242:
1278                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1280  0373 7b0c          	ld	a,(OFST+9,sp)
1281  0375 2712          	jreq	L252
1282  0377 a188          	cp	a,#136
1283  0379 270e          	jreq	L252
1284  037b ae0127        	ldw	x,#295
1285  037e 89            	pushw	x
1286  037f 5f            	clrw	x
1287  0380 89            	pushw	x
1288  0381 ae0000        	ldw	x,#L37
1289  0384 cd0000        	call	_assert_failed
1291  0387 5b04          	addw	sp,#4
1292  0389               L252:
1293                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1295  0389 7b0d          	ld	a,(OFST+10,sp)
1296  038b a155          	cp	a,#85
1297  038d 2712          	jreq	L262
1298  038f 7b0d          	ld	a,(OFST+10,sp)
1299  0391 270e          	jreq	L262
1300  0393 ae0128        	ldw	x,#296
1301  0396 89            	pushw	x
1302  0397 5f            	clrw	x
1303  0398 89            	pushw	x
1304  0399 ae0000        	ldw	x,#L37
1305  039c cd0000        	call	_assert_failed
1307  039f 5b04          	addw	sp,#4
1308  03a1               L262:
1309                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1311  03a1 7b0e          	ld	a,(OFST+11,sp)
1312  03a3 a12a          	cp	a,#42
1313  03a5 2712          	jreq	L272
1314  03a7 7b0e          	ld	a,(OFST+11,sp)
1315  03a9 270e          	jreq	L272
1316  03ab ae0129        	ldw	x,#297
1317  03ae 89            	pushw	x
1318  03af 5f            	clrw	x
1319  03b0 89            	pushw	x
1320  03b1 ae0000        	ldw	x,#L37
1321  03b4 cd0000        	call	_assert_failed
1323  03b7 5b04          	addw	sp,#4
1324  03b9               L272:
1325                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1325                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1327  03b9 c6525d        	ld	a,21085
1328  03bc a4f0          	and	a,#240
1329  03be c7525d        	ld	21085,a
1330                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1330                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1330                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1330                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1332  03c1 7b0c          	ld	a,(OFST+9,sp)
1333  03c3 a408          	and	a,#8
1334  03c5 6b03          	ld	(OFST+0,sp),a
1335  03c7 7b0b          	ld	a,(OFST+8,sp)
1336  03c9 a402          	and	a,#2
1337  03cb 1a03          	or	a,(OFST+0,sp)
1338  03cd 6b02          	ld	(OFST-1,sp),a
1339  03cf 7b08          	ld	a,(OFST+5,sp)
1340  03d1 a404          	and	a,#4
1341  03d3 6b01          	ld	(OFST-2,sp),a
1342  03d5 7b05          	ld	a,(OFST+2,sp)
1343  03d7 a401          	and	a,#1
1344  03d9 1a01          	or	a,(OFST-2,sp)
1345  03db 1a02          	or	a,(OFST-1,sp)
1346  03dd ca525d        	or	a,21085
1347  03e0 c7525d        	ld	21085,a
1348                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1348                     ; 312                           (uint8_t)TIM1_OCMode);
1350  03e3 c6525a        	ld	a,21082
1351  03e6 a48f          	and	a,#143
1352  03e8 1a04          	or	a,(OFST+1,sp)
1353  03ea c7525a        	ld	21082,a
1354                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1356  03ed c6526f        	ld	a,21103
1357  03f0 a4cf          	and	a,#207
1358  03f2 c7526f        	ld	21103,a
1359                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1359                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1361  03f5 7b0e          	ld	a,(OFST+11,sp)
1362  03f7 a420          	and	a,#32
1363  03f9 6b03          	ld	(OFST+0,sp),a
1364  03fb 7b0d          	ld	a,(OFST+10,sp)
1365  03fd a410          	and	a,#16
1366  03ff 1a03          	or	a,(OFST+0,sp)
1367  0401 ca526f        	or	a,21103
1368  0404 c7526f        	ld	21103,a
1369                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1371  0407 7b09          	ld	a,(OFST+6,sp)
1372  0409 c75269        	ld	21097,a
1373                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1375  040c 7b0a          	ld	a,(OFST+7,sp)
1376  040e c7526a        	ld	21098,a
1377                     ; 323 }
1380  0411 5b05          	addw	sp,#5
1381  0413 81            	ret	
1454                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1454                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1454                     ; 340                   uint16_t TIM1_Pulse,
1454                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1454                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1454                     ; 343 {
1455                     	switch	.text
1456  0414               _TIM1_OC4Init:
1458  0414 89            	pushw	x
1459  0415 88            	push	a
1460       00000001      OFST:	set	1
1463                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1465  0416 9e            	ld	a,xh
1466  0417 4d            	tnz	a
1467  0418 2727          	jreq	L403
1468  041a 9e            	ld	a,xh
1469  041b a110          	cp	a,#16
1470  041d 2722          	jreq	L403
1471  041f 9e            	ld	a,xh
1472  0420 a120          	cp	a,#32
1473  0422 271d          	jreq	L403
1474  0424 9e            	ld	a,xh
1475  0425 a130          	cp	a,#48
1476  0427 2718          	jreq	L403
1477  0429 9e            	ld	a,xh
1478  042a a160          	cp	a,#96
1479  042c 2713          	jreq	L403
1480  042e 9e            	ld	a,xh
1481  042f a170          	cp	a,#112
1482  0431 270e          	jreq	L403
1483  0433 ae0159        	ldw	x,#345
1484  0436 89            	pushw	x
1485  0437 5f            	clrw	x
1486  0438 89            	pushw	x
1487  0439 ae0000        	ldw	x,#L37
1488  043c cd0000        	call	_assert_failed
1490  043f 5b04          	addw	sp,#4
1491  0441               L403:
1492                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1494  0441 7b03          	ld	a,(OFST+2,sp)
1495  0443 2712          	jreq	L413
1496  0445 a111          	cp	a,#17
1497  0447 270e          	jreq	L413
1498  0449 ae015a        	ldw	x,#346
1499  044c 89            	pushw	x
1500  044d 5f            	clrw	x
1501  044e 89            	pushw	x
1502  044f ae0000        	ldw	x,#L37
1503  0452 cd0000        	call	_assert_failed
1505  0455 5b04          	addw	sp,#4
1506  0457               L413:
1507                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1509  0457 7b08          	ld	a,(OFST+7,sp)
1510  0459 2712          	jreq	L423
1511  045b a122          	cp	a,#34
1512  045d 270e          	jreq	L423
1513  045f ae015b        	ldw	x,#347
1514  0462 89            	pushw	x
1515  0463 5f            	clrw	x
1516  0464 89            	pushw	x
1517  0465 ae0000        	ldw	x,#L37
1518  0468 cd0000        	call	_assert_failed
1520  046b 5b04          	addw	sp,#4
1521  046d               L423:
1522                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1524  046d 7b09          	ld	a,(OFST+8,sp)
1525  046f a155          	cp	a,#85
1526  0471 2712          	jreq	L433
1527  0473 7b09          	ld	a,(OFST+8,sp)
1528  0475 270e          	jreq	L433
1529  0477 ae015c        	ldw	x,#348
1530  047a 89            	pushw	x
1531  047b 5f            	clrw	x
1532  047c 89            	pushw	x
1533  047d ae0000        	ldw	x,#L37
1534  0480 cd0000        	call	_assert_failed
1536  0483 5b04          	addw	sp,#4
1537  0485               L433:
1538                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1540  0485 c6525d        	ld	a,21085
1541  0488 a4cf          	and	a,#207
1542  048a c7525d        	ld	21085,a
1543                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1543                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1545  048d 7b08          	ld	a,(OFST+7,sp)
1546  048f a420          	and	a,#32
1547  0491 6b01          	ld	(OFST+0,sp),a
1548  0493 7b03          	ld	a,(OFST+2,sp)
1549  0495 a410          	and	a,#16
1550  0497 1a01          	or	a,(OFST+0,sp)
1551  0499 ca525d        	or	a,21085
1552  049c c7525d        	ld	21085,a
1553                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1553                     ; 358                           TIM1_OCMode);
1555  049f c6525b        	ld	a,21083
1556  04a2 a48f          	and	a,#143
1557  04a4 1a02          	or	a,(OFST+1,sp)
1558  04a6 c7525b        	ld	21083,a
1559                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1561  04a9 7b09          	ld	a,(OFST+8,sp)
1562  04ab 270a          	jreq	L124
1563                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1565  04ad c6526f        	ld	a,21103
1566  04b0 aadf          	or	a,#223
1567  04b2 c7526f        	ld	21103,a
1569  04b5 2004          	jra	L324
1570  04b7               L124:
1571                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1573  04b7 721d526f      	bres	21103,#6
1574  04bb               L324:
1575                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1577  04bb 7b06          	ld	a,(OFST+5,sp)
1578  04bd c7526b        	ld	21099,a
1579                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1581  04c0 7b07          	ld	a,(OFST+6,sp)
1582  04c2 c7526c        	ld	21100,a
1583                     ; 373 }
1586  04c5 5b03          	addw	sp,#3
1587  04c7 81            	ret	
1791                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1791                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1791                     ; 390                      uint8_t TIM1_DeadTime,
1791                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1791                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1791                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1791                     ; 394 {
1792                     	switch	.text
1793  04c8               _TIM1_BDTRConfig:
1795  04c8 89            	pushw	x
1796  04c9 88            	push	a
1797       00000001      OFST:	set	1
1800                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1802  04ca 9e            	ld	a,xh
1803  04cb a104          	cp	a,#4
1804  04cd 2712          	jreq	L643
1805  04cf 9e            	ld	a,xh
1806  04d0 4d            	tnz	a
1807  04d1 270e          	jreq	L643
1808  04d3 ae018c        	ldw	x,#396
1809  04d6 89            	pushw	x
1810  04d7 5f            	clrw	x
1811  04d8 89            	pushw	x
1812  04d9 ae0000        	ldw	x,#L37
1813  04dc cd0000        	call	_assert_failed
1815  04df 5b04          	addw	sp,#4
1816  04e1               L643:
1817                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1819  04e1 7b03          	ld	a,(OFST+2,sp)
1820  04e3 271a          	jreq	L653
1821  04e5 a101          	cp	a,#1
1822  04e7 2716          	jreq	L653
1823  04e9 a102          	cp	a,#2
1824  04eb 2712          	jreq	L653
1825  04ed a103          	cp	a,#3
1826  04ef 270e          	jreq	L653
1827  04f1 ae018d        	ldw	x,#397
1828  04f4 89            	pushw	x
1829  04f5 5f            	clrw	x
1830  04f6 89            	pushw	x
1831  04f7 ae0000        	ldw	x,#L37
1832  04fa cd0000        	call	_assert_failed
1834  04fd 5b04          	addw	sp,#4
1835  04ff               L653:
1836                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1838  04ff 7b07          	ld	a,(OFST+6,sp)
1839  0501 a110          	cp	a,#16
1840  0503 2712          	jreq	L663
1841  0505 7b07          	ld	a,(OFST+6,sp)
1842  0507 270e          	jreq	L663
1843  0509 ae018e        	ldw	x,#398
1844  050c 89            	pushw	x
1845  050d 5f            	clrw	x
1846  050e 89            	pushw	x
1847  050f ae0000        	ldw	x,#L37
1848  0512 cd0000        	call	_assert_failed
1850  0515 5b04          	addw	sp,#4
1851  0517               L663:
1852                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1854  0517 7b08          	ld	a,(OFST+7,sp)
1855  0519 2712          	jreq	L673
1856  051b a120          	cp	a,#32
1857  051d 270e          	jreq	L673
1858  051f ae018f        	ldw	x,#399
1859  0522 89            	pushw	x
1860  0523 5f            	clrw	x
1861  0524 89            	pushw	x
1862  0525 ae0000        	ldw	x,#L37
1863  0528 cd0000        	call	_assert_failed
1865  052b 5b04          	addw	sp,#4
1866  052d               L673:
1867                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1869  052d 7b09          	ld	a,(OFST+8,sp)
1870  052f a140          	cp	a,#64
1871  0531 2712          	jreq	L604
1872  0533 7b09          	ld	a,(OFST+8,sp)
1873  0535 270e          	jreq	L604
1874  0537 ae0190        	ldw	x,#400
1875  053a 89            	pushw	x
1876  053b 5f            	clrw	x
1877  053c 89            	pushw	x
1878  053d ae0000        	ldw	x,#L37
1879  0540 cd0000        	call	_assert_failed
1881  0543 5b04          	addw	sp,#4
1882  0545               L604:
1883                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1885  0545 7b06          	ld	a,(OFST+5,sp)
1886  0547 c7526e        	ld	21102,a
1887                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1887                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1887                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1889  054a 7b07          	ld	a,(OFST+6,sp)
1890  054c 1a08          	or	a,(OFST+7,sp)
1891  054e 1a09          	or	a,(OFST+8,sp)
1892  0550 6b01          	ld	(OFST+0,sp),a
1893  0552 7b02          	ld	a,(OFST+1,sp)
1894  0554 1a03          	or	a,(OFST+2,sp)
1895  0556 1a01          	or	a,(OFST+0,sp)
1896  0558 c7526d        	ld	21101,a
1897                     ; 409 }
1900  055b 5b03          	addw	sp,#3
1901  055d 81            	ret	
2102                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2102                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2102                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2102                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2102                     ; 427                  uint8_t TIM1_ICFilter)
2102                     ; 428 {
2103                     	switch	.text
2104  055e               _TIM1_ICInit:
2106  055e 89            	pushw	x
2107       00000000      OFST:	set	0
2110                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2112  055f 9e            	ld	a,xh
2113  0560 4d            	tnz	a
2114  0561 271c          	jreq	L024
2115  0563 9e            	ld	a,xh
2116  0564 4a            	dec	a
2117  0565 2718          	jreq	L024
2118  0567 9e            	ld	a,xh
2119  0568 a102          	cp	a,#2
2120  056a 2713          	jreq	L024
2121  056c 9e            	ld	a,xh
2122  056d a103          	cp	a,#3
2123  056f 270e          	jreq	L024
2124  0571 ae01ae        	ldw	x,#430
2125  0574 89            	pushw	x
2126  0575 5f            	clrw	x
2127  0576 89            	pushw	x
2128  0577 ae0000        	ldw	x,#L37
2129  057a cd0000        	call	_assert_failed
2131  057d 5b04          	addw	sp,#4
2132  057f               L024:
2133                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2135  057f 7b02          	ld	a,(OFST+2,sp)
2136  0581 2711          	jreq	L034
2137  0583 4a            	dec	a
2138  0584 270e          	jreq	L034
2139  0586 ae01af        	ldw	x,#431
2140  0589 89            	pushw	x
2141  058a 5f            	clrw	x
2142  058b 89            	pushw	x
2143  058c ae0000        	ldw	x,#L37
2144  058f cd0000        	call	_assert_failed
2146  0592 5b04          	addw	sp,#4
2147  0594               L034:
2148                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2150  0594 7b05          	ld	a,(OFST+5,sp)
2151  0596 a101          	cp	a,#1
2152  0598 2716          	jreq	L044
2153  059a a102          	cp	a,#2
2154  059c 2712          	jreq	L044
2155  059e a103          	cp	a,#3
2156  05a0 270e          	jreq	L044
2157  05a2 ae01b0        	ldw	x,#432
2158  05a5 89            	pushw	x
2159  05a6 5f            	clrw	x
2160  05a7 89            	pushw	x
2161  05a8 ae0000        	ldw	x,#L37
2162  05ab cd0000        	call	_assert_failed
2164  05ae 5b04          	addw	sp,#4
2165  05b0               L044:
2166                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2168  05b0 7b06          	ld	a,(OFST+6,sp)
2169  05b2 271a          	jreq	L054
2170  05b4 a104          	cp	a,#4
2171  05b6 2716          	jreq	L054
2172  05b8 a108          	cp	a,#8
2173  05ba 2712          	jreq	L054
2174  05bc a10c          	cp	a,#12
2175  05be 270e          	jreq	L054
2176  05c0 ae01b1        	ldw	x,#433
2177  05c3 89            	pushw	x
2178  05c4 5f            	clrw	x
2179  05c5 89            	pushw	x
2180  05c6 ae0000        	ldw	x,#L37
2181  05c9 cd0000        	call	_assert_failed
2183  05cc 5b04          	addw	sp,#4
2184  05ce               L054:
2185                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2187  05ce 7b07          	ld	a,(OFST+7,sp)
2188  05d0 a110          	cp	a,#16
2189  05d2 250e          	jrult	L654
2190  05d4 ae01b2        	ldw	x,#434
2191  05d7 89            	pushw	x
2192  05d8 5f            	clrw	x
2193  05d9 89            	pushw	x
2194  05da ae0000        	ldw	x,#L37
2195  05dd cd0000        	call	_assert_failed
2197  05e0 5b04          	addw	sp,#4
2198  05e2               L654:
2199                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2201  05e2 7b01          	ld	a,(OFST+1,sp)
2202  05e4 2614          	jrne	L746
2203                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2203                     ; 440                (uint8_t)TIM1_ICSelection,
2203                     ; 441                (uint8_t)TIM1_ICFilter);
2205  05e6 7b07          	ld	a,(OFST+7,sp)
2206  05e8 88            	push	a
2207  05e9 7b06          	ld	a,(OFST+6,sp)
2208  05eb 97            	ld	xl,a
2209  05ec 7b03          	ld	a,(OFST+3,sp)
2210  05ee 95            	ld	xh,a
2211  05ef cd123c        	call	L3_TI1_Config
2213  05f2 84            	pop	a
2214                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2216  05f3 7b06          	ld	a,(OFST+6,sp)
2217  05f5 cd0ff8        	call	_TIM1_SetIC1Prescaler
2220  05f8 2042          	jra	L156
2221  05fa               L746:
2222                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2224  05fa a101          	cp	a,#1
2225  05fc 2614          	jrne	L356
2226                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2226                     ; 449                (uint8_t)TIM1_ICSelection,
2226                     ; 450                (uint8_t)TIM1_ICFilter);
2228  05fe 7b07          	ld	a,(OFST+7,sp)
2229  0600 88            	push	a
2230  0601 7b06          	ld	a,(OFST+6,sp)
2231  0603 97            	ld	xl,a
2232  0604 7b03          	ld	a,(OFST+3,sp)
2233  0606 95            	ld	xh,a
2234  0607 cd126c        	call	L5_TI2_Config
2236  060a 84            	pop	a
2237                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2239  060b 7b06          	ld	a,(OFST+6,sp)
2240  060d cd1022        	call	_TIM1_SetIC2Prescaler
2243  0610 202a          	jra	L156
2244  0612               L356:
2245                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2247  0612 a102          	cp	a,#2
2248  0614 2614          	jrne	L756
2249                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2249                     ; 458                (uint8_t)TIM1_ICSelection,
2249                     ; 459                (uint8_t)TIM1_ICFilter);
2251  0616 7b07          	ld	a,(OFST+7,sp)
2252  0618 88            	push	a
2253  0619 7b06          	ld	a,(OFST+6,sp)
2254  061b 97            	ld	xl,a
2255  061c 7b03          	ld	a,(OFST+3,sp)
2256  061e 95            	ld	xh,a
2257  061f cd129c        	call	L7_TI3_Config
2259  0622 84            	pop	a
2260                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2262  0623 7b06          	ld	a,(OFST+6,sp)
2263  0625 cd104c        	call	_TIM1_SetIC3Prescaler
2266  0628 2012          	jra	L156
2267  062a               L756:
2268                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2268                     ; 467                (uint8_t)TIM1_ICSelection,
2268                     ; 468                (uint8_t)TIM1_ICFilter);
2270  062a 7b07          	ld	a,(OFST+7,sp)
2271  062c 88            	push	a
2272  062d 7b06          	ld	a,(OFST+6,sp)
2273  062f 97            	ld	xl,a
2274  0630 7b03          	ld	a,(OFST+3,sp)
2275  0632 95            	ld	xh,a
2276  0633 cd12cc        	call	L11_TI4_Config
2278  0636 84            	pop	a
2279                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2281  0637 7b06          	ld	a,(OFST+6,sp)
2282  0639 cd1076        	call	_TIM1_SetIC4Prescaler
2284  063c               L156:
2285                     ; 472 }
2288  063c 85            	popw	x
2289  063d 81            	ret	
2380                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2380                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2380                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2380                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2380                     ; 492                      uint8_t TIM1_ICFilter)
2380                     ; 493 {
2381                     	switch	.text
2382  063e               _TIM1_PWMIConfig:
2384  063e 89            	pushw	x
2385  063f 89            	pushw	x
2386       00000002      OFST:	set	2
2389                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2391                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2393                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2395  0640 9e            	ld	a,xh
2396  0641 4d            	tnz	a
2397  0642 2712          	jreq	L015
2398  0644 9e            	ld	a,xh
2399  0645 4a            	dec	a
2400  0646 270e          	jreq	L015
2401  0648 ae01f2        	ldw	x,#498
2402  064b 89            	pushw	x
2403  064c 5f            	clrw	x
2404  064d 89            	pushw	x
2405  064e ae0000        	ldw	x,#L37
2406  0651 cd0000        	call	_assert_failed
2408  0654 5b04          	addw	sp,#4
2409  0656               L015:
2410                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2412  0656 7b04          	ld	a,(OFST+2,sp)
2413  0658 2711          	jreq	L025
2414  065a 4a            	dec	a
2415  065b 270e          	jreq	L025
2416  065d ae01f3        	ldw	x,#499
2417  0660 89            	pushw	x
2418  0661 5f            	clrw	x
2419  0662 89            	pushw	x
2420  0663 ae0000        	ldw	x,#L37
2421  0666 cd0000        	call	_assert_failed
2423  0669 5b04          	addw	sp,#4
2424  066b               L025:
2425                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2427  066b 7b07          	ld	a,(OFST+5,sp)
2428  066d a101          	cp	a,#1
2429  066f 2716          	jreq	L035
2430  0671 a102          	cp	a,#2
2431  0673 2712          	jreq	L035
2432  0675 a103          	cp	a,#3
2433  0677 270e          	jreq	L035
2434  0679 ae01f4        	ldw	x,#500
2435  067c 89            	pushw	x
2436  067d 5f            	clrw	x
2437  067e 89            	pushw	x
2438  067f ae0000        	ldw	x,#L37
2439  0682 cd0000        	call	_assert_failed
2441  0685 5b04          	addw	sp,#4
2442  0687               L035:
2443                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2445  0687 7b08          	ld	a,(OFST+6,sp)
2446  0689 271a          	jreq	L045
2447  068b a104          	cp	a,#4
2448  068d 2716          	jreq	L045
2449  068f a108          	cp	a,#8
2450  0691 2712          	jreq	L045
2451  0693 a10c          	cp	a,#12
2452  0695 270e          	jreq	L045
2453  0697 ae01f5        	ldw	x,#501
2454  069a 89            	pushw	x
2455  069b 5f            	clrw	x
2456  069c 89            	pushw	x
2457  069d ae0000        	ldw	x,#L37
2458  06a0 cd0000        	call	_assert_failed
2460  06a3 5b04          	addw	sp,#4
2461  06a5               L045:
2462                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2464  06a5 7b04          	ld	a,(OFST+2,sp)
2465  06a7 4a            	dec	a
2466  06a8 2702          	jreq	L327
2467                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2469  06aa a601          	ld	a,#1
2471  06ac               L327:
2472                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2474  06ac 6b01          	ld	(OFST-1,sp),a
2475                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2477  06ae 7b07          	ld	a,(OFST+5,sp)
2478  06b0 4a            	dec	a
2479  06b1 2604          	jrne	L727
2480                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2482  06b3 a602          	ld	a,#2
2484  06b5 2002          	jra	L137
2485  06b7               L727:
2486                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2488  06b7 a601          	ld	a,#1
2489  06b9               L137:
2490  06b9 6b02          	ld	(OFST+0,sp),a
2491                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2493  06bb 7b03          	ld	a,(OFST+1,sp)
2494  06bd 2626          	jrne	L337
2495                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2495                     ; 527                (uint8_t)TIM1_ICFilter);
2497  06bf 7b09          	ld	a,(OFST+7,sp)
2498  06c1 88            	push	a
2499  06c2 7b08          	ld	a,(OFST+6,sp)
2500  06c4 97            	ld	xl,a
2501  06c5 7b05          	ld	a,(OFST+3,sp)
2502  06c7 95            	ld	xh,a
2503  06c8 cd123c        	call	L3_TI1_Config
2505  06cb 84            	pop	a
2506                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2508  06cc 7b08          	ld	a,(OFST+6,sp)
2509  06ce cd0ff8        	call	_TIM1_SetIC1Prescaler
2511                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2513  06d1 7b09          	ld	a,(OFST+7,sp)
2514  06d3 88            	push	a
2515  06d4 7b03          	ld	a,(OFST+1,sp)
2516  06d6 97            	ld	xl,a
2517  06d7 7b02          	ld	a,(OFST+0,sp)
2518  06d9 95            	ld	xh,a
2519  06da cd126c        	call	L5_TI2_Config
2521  06dd 84            	pop	a
2522                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2524  06de 7b08          	ld	a,(OFST+6,sp)
2525  06e0 cd1022        	call	_TIM1_SetIC2Prescaler
2528  06e3 2024          	jra	L537
2529  06e5               L337:
2530                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2530                     ; 542                (uint8_t)TIM1_ICFilter);
2532  06e5 7b09          	ld	a,(OFST+7,sp)
2533  06e7 88            	push	a
2534  06e8 7b08          	ld	a,(OFST+6,sp)
2535  06ea 97            	ld	xl,a
2536  06eb 7b05          	ld	a,(OFST+3,sp)
2537  06ed 95            	ld	xh,a
2538  06ee cd126c        	call	L5_TI2_Config
2540  06f1 84            	pop	a
2541                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2543  06f2 7b08          	ld	a,(OFST+6,sp)
2544  06f4 cd1022        	call	_TIM1_SetIC2Prescaler
2546                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2548  06f7 7b09          	ld	a,(OFST+7,sp)
2549  06f9 88            	push	a
2550  06fa 7b03          	ld	a,(OFST+1,sp)
2551  06fc 97            	ld	xl,a
2552  06fd 7b02          	ld	a,(OFST+0,sp)
2553  06ff 95            	ld	xh,a
2554  0700 cd123c        	call	L3_TI1_Config
2556  0703 84            	pop	a
2557                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2559  0704 7b08          	ld	a,(OFST+6,sp)
2560  0706 cd0ff8        	call	_TIM1_SetIC1Prescaler
2562  0709               L537:
2563                     ; 553 }
2566  0709 5b04          	addw	sp,#4
2567  070b 81            	ret	
2623                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2623                     ; 562 {
2624                     	switch	.text
2625  070c               _TIM1_Cmd:
2627  070c 88            	push	a
2628       00000000      OFST:	set	0
2631                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2633  070d 4d            	tnz	a
2634  070e 2711          	jreq	L275
2635  0710 4a            	dec	a
2636  0711 270e          	jreq	L275
2637  0713 ae0234        	ldw	x,#564
2638  0716 89            	pushw	x
2639  0717 5f            	clrw	x
2640  0718 89            	pushw	x
2641  0719 ae0000        	ldw	x,#L37
2642  071c cd0000        	call	_assert_failed
2644  071f 5b04          	addw	sp,#4
2645  0721               L275:
2646                     ; 567   if (NewState != DISABLE)
2648  0721 7b01          	ld	a,(OFST+1,sp)
2649  0723 2706          	jreq	L567
2650                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2652  0725 72105250      	bset	21072,#0
2654  0729 2004          	jra	L767
2655  072b               L567:
2656                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2658  072b 72115250      	bres	21072,#0
2659  072f               L767:
2660                     ; 575 }
2663  072f 84            	pop	a
2664  0730 81            	ret	
2701                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2701                     ; 584 {
2702                     	switch	.text
2703  0731               _TIM1_CtrlPWMOutputs:
2705  0731 88            	push	a
2706       00000000      OFST:	set	0
2709                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2711  0732 4d            	tnz	a
2712  0733 2711          	jreq	L406
2713  0735 4a            	dec	a
2714  0736 270e          	jreq	L406
2715  0738 ae024a        	ldw	x,#586
2716  073b 89            	pushw	x
2717  073c 5f            	clrw	x
2718  073d 89            	pushw	x
2719  073e ae0000        	ldw	x,#L37
2720  0741 cd0000        	call	_assert_failed
2722  0744 5b04          	addw	sp,#4
2723  0746               L406:
2724                     ; 590   if (NewState != DISABLE)
2726  0746 7b01          	ld	a,(OFST+1,sp)
2727  0748 2706          	jreq	L7001
2728                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2730  074a 721e526d      	bset	21101,#7
2732  074e 2004          	jra	L1101
2733  0750               L7001:
2734                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2736  0750 721f526d      	bres	21101,#7
2737  0754               L1101:
2738                     ; 598 }
2741  0754 84            	pop	a
2742  0755 81            	ret	
2850                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2850                     ; 618 {
2851                     	switch	.text
2852  0756               _TIM1_ITConfig:
2854  0756 89            	pushw	x
2855       00000000      OFST:	set	0
2858                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2860  0757 9e            	ld	a,xh
2861  0758 4d            	tnz	a
2862  0759 260e          	jrne	L416
2863  075b ae026c        	ldw	x,#620
2864  075e 89            	pushw	x
2865  075f 5f            	clrw	x
2866  0760 89            	pushw	x
2867  0761 ae0000        	ldw	x,#L37
2868  0764 cd0000        	call	_assert_failed
2870  0767 5b04          	addw	sp,#4
2871  0769               L416:
2872                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2874  0769 7b02          	ld	a,(OFST+2,sp)
2875  076b 2711          	jreq	L426
2876  076d 4a            	dec	a
2877  076e 270e          	jreq	L426
2878  0770 ae026d        	ldw	x,#621
2879  0773 89            	pushw	x
2880  0774 5f            	clrw	x
2881  0775 89            	pushw	x
2882  0776 ae0000        	ldw	x,#L37
2883  0779 cd0000        	call	_assert_failed
2885  077c 5b04          	addw	sp,#4
2886  077e               L426:
2887                     ; 623   if (NewState != DISABLE)
2889  077e 7b02          	ld	a,(OFST+2,sp)
2890  0780 2707          	jreq	L1601
2891                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2893  0782 c65254        	ld	a,21076
2894  0785 1a01          	or	a,(OFST+1,sp)
2896  0787 2006          	jra	L3601
2897  0789               L1601:
2898                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2900  0789 7b01          	ld	a,(OFST+1,sp)
2901  078b 43            	cpl	a
2902  078c c45254        	and	a,21076
2903  078f               L3601:
2904  078f c75254        	ld	21076,a
2905                     ; 633 }
2908  0792 85            	popw	x
2909  0793 81            	ret	
2933                     ; 640 void TIM1_InternalClockConfig(void)
2933                     ; 641 {
2934                     	switch	.text
2935  0794               _TIM1_InternalClockConfig:
2939                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2941  0794 c65252        	ld	a,21074
2942  0797 a4f8          	and	a,#248
2943  0799 c75252        	ld	21074,a
2944                     ; 644 }
2947  079c 81            	ret	
3063                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3063                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3063                     ; 664                               uint8_t ExtTRGFilter)
3063                     ; 665 {
3064                     	switch	.text
3065  079d               _TIM1_ETRClockMode1Config:
3067  079d 89            	pushw	x
3068       00000000      OFST:	set	0
3071                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3073  079e 9e            	ld	a,xh
3074  079f 4d            	tnz	a
3075  07a0 271d          	jreq	L046
3076  07a2 9e            	ld	a,xh
3077  07a3 a110          	cp	a,#16
3078  07a5 2718          	jreq	L046
3079  07a7 9e            	ld	a,xh
3080  07a8 a120          	cp	a,#32
3081  07aa 2713          	jreq	L046
3082  07ac 9e            	ld	a,xh
3083  07ad a130          	cp	a,#48
3084  07af 270e          	jreq	L046
3085  07b1 ae029b        	ldw	x,#667
3086  07b4 89            	pushw	x
3087  07b5 5f            	clrw	x
3088  07b6 89            	pushw	x
3089  07b7 ae0000        	ldw	x,#L37
3090  07ba cd0000        	call	_assert_failed
3092  07bd 5b04          	addw	sp,#4
3093  07bf               L046:
3094                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3096  07bf 7b02          	ld	a,(OFST+2,sp)
3097  07c1 a180          	cp	a,#128
3098  07c3 2712          	jreq	L056
3099  07c5 7b02          	ld	a,(OFST+2,sp)
3100  07c7 270e          	jreq	L056
3101  07c9 ae029c        	ldw	x,#668
3102  07cc 89            	pushw	x
3103  07cd 5f            	clrw	x
3104  07ce 89            	pushw	x
3105  07cf ae0000        	ldw	x,#L37
3106  07d2 cd0000        	call	_assert_failed
3108  07d5 5b04          	addw	sp,#4
3109  07d7               L056:
3110                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3112  07d7 7b05          	ld	a,(OFST+5,sp)
3113  07d9 88            	push	a
3114  07da 7b03          	ld	a,(OFST+3,sp)
3115  07dc 97            	ld	xl,a
3116  07dd 7b02          	ld	a,(OFST+2,sp)
3117  07df 95            	ld	xh,a
3118  07e0 ad57          	call	_TIM1_ETRConfig
3120  07e2 84            	pop	a
3121                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3121                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3123  07e3 c65252        	ld	a,21074
3124  07e6 aa77          	or	a,#119
3125  07e8 c75252        	ld	21074,a
3126                     ; 676 }
3129  07eb 85            	popw	x
3130  07ec 81            	ret	
3187                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3187                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3187                     ; 696                               uint8_t ExtTRGFilter)
3187                     ; 697 {
3188                     	switch	.text
3189  07ed               _TIM1_ETRClockMode2Config:
3191  07ed 89            	pushw	x
3192       00000000      OFST:	set	0
3195                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3197  07ee 9e            	ld	a,xh
3198  07ef 4d            	tnz	a
3199  07f0 271d          	jreq	L466
3200  07f2 9e            	ld	a,xh
3201  07f3 a110          	cp	a,#16
3202  07f5 2718          	jreq	L466
3203  07f7 9e            	ld	a,xh
3204  07f8 a120          	cp	a,#32
3205  07fa 2713          	jreq	L466
3206  07fc 9e            	ld	a,xh
3207  07fd a130          	cp	a,#48
3208  07ff 270e          	jreq	L466
3209  0801 ae02bb        	ldw	x,#699
3210  0804 89            	pushw	x
3211  0805 5f            	clrw	x
3212  0806 89            	pushw	x
3213  0807 ae0000        	ldw	x,#L37
3214  080a cd0000        	call	_assert_failed
3216  080d 5b04          	addw	sp,#4
3217  080f               L466:
3218                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3220  080f 7b02          	ld	a,(OFST+2,sp)
3221  0811 a180          	cp	a,#128
3222  0813 2712          	jreq	L476
3223  0815 7b02          	ld	a,(OFST+2,sp)
3224  0817 270e          	jreq	L476
3225  0819 ae02bc        	ldw	x,#700
3226  081c 89            	pushw	x
3227  081d 5f            	clrw	x
3228  081e 89            	pushw	x
3229  081f ae0000        	ldw	x,#L37
3230  0822 cd0000        	call	_assert_failed
3232  0825 5b04          	addw	sp,#4
3233  0827               L476:
3234                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3236  0827 7b05          	ld	a,(OFST+5,sp)
3237  0829 88            	push	a
3238  082a 7b03          	ld	a,(OFST+3,sp)
3239  082c 97            	ld	xl,a
3240  082d 7b02          	ld	a,(OFST+2,sp)
3241  082f 95            	ld	xh,a
3242  0830 ad07          	call	_TIM1_ETRConfig
3244  0832 721c5253      	bset	21075,#6
3245  0836 84            	pop	a
3246                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3248                     ; 707 }
3251  0837 85            	popw	x
3252  0838 81            	ret	
3307                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3307                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3307                     ; 727                     uint8_t ExtTRGFilter)
3307                     ; 728 {
3308                     	switch	.text
3309  0839               _TIM1_ETRConfig:
3311  0839 89            	pushw	x
3312       00000000      OFST:	set	0
3315                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3317  083a 7b05          	ld	a,(OFST+5,sp)
3318  083c a110          	cp	a,#16
3319  083e 250e          	jrult	L607
3320  0840 ae02da        	ldw	x,#730
3321  0843 89            	pushw	x
3322  0844 5f            	clrw	x
3323  0845 89            	pushw	x
3324  0846 ae0000        	ldw	x,#L37
3325  0849 cd0000        	call	_assert_failed
3327  084c 5b04          	addw	sp,#4
3328  084e               L607:
3329                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3329                     ; 733                          (uint8_t)ExtTRGFilter );
3331  084e 7b01          	ld	a,(OFST+1,sp)
3332  0850 1a02          	or	a,(OFST+2,sp)
3333  0852 1a05          	or	a,(OFST+5,sp)
3334  0854 ca5253        	or	a,21075
3335  0857 c75253        	ld	21075,a
3336                     ; 734 }
3339  085a 85            	popw	x
3340  085b 81            	ret	
3428                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3428                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3428                     ; 753                                  uint8_t ICFilter)
3428                     ; 754 {
3429                     	switch	.text
3430  085c               _TIM1_TIxExternalClockConfig:
3432  085c 89            	pushw	x
3433       00000000      OFST:	set	0
3436                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3438  085d 9e            	ld	a,xh
3439  085e a140          	cp	a,#64
3440  0860 2718          	jreq	L027
3441  0862 9e            	ld	a,xh
3442  0863 a160          	cp	a,#96
3443  0865 2713          	jreq	L027
3444  0867 9e            	ld	a,xh
3445  0868 a150          	cp	a,#80
3446  086a 270e          	jreq	L027
3447  086c ae02f4        	ldw	x,#756
3448  086f 89            	pushw	x
3449  0870 5f            	clrw	x
3450  0871 89            	pushw	x
3451  0872 ae0000        	ldw	x,#L37
3452  0875 cd0000        	call	_assert_failed
3454  0878 5b04          	addw	sp,#4
3455  087a               L027:
3456                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3458  087a 7b02          	ld	a,(OFST+2,sp)
3459  087c 2711          	jreq	L037
3460  087e 4a            	dec	a
3461  087f 270e          	jreq	L037
3462  0881 ae02f5        	ldw	x,#757
3463  0884 89            	pushw	x
3464  0885 5f            	clrw	x
3465  0886 89            	pushw	x
3466  0887 ae0000        	ldw	x,#L37
3467  088a cd0000        	call	_assert_failed
3469  088d 5b04          	addw	sp,#4
3470  088f               L037:
3471                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3473  088f 7b05          	ld	a,(OFST+5,sp)
3474  0891 a110          	cp	a,#16
3475  0893 250e          	jrult	L637
3476  0895 ae02f6        	ldw	x,#758
3477  0898 89            	pushw	x
3478  0899 5f            	clrw	x
3479  089a 89            	pushw	x
3480  089b ae0000        	ldw	x,#L37
3481  089e cd0000        	call	_assert_failed
3483  08a1 5b04          	addw	sp,#4
3484  08a3               L637:
3485                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3487  08a3 7b01          	ld	a,(OFST+1,sp)
3488  08a5 a160          	cp	a,#96
3489  08a7 260e          	jrne	L3521
3490                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3492  08a9 7b05          	ld	a,(OFST+5,sp)
3493  08ab 88            	push	a
3494  08ac ae0001        	ldw	x,#1
3495  08af 7b03          	ld	a,(OFST+3,sp)
3496  08b1 95            	ld	xh,a
3497  08b2 cd126c        	call	L5_TI2_Config
3500  08b5 200c          	jra	L5521
3501  08b7               L3521:
3502                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3504  08b7 7b05          	ld	a,(OFST+5,sp)
3505  08b9 88            	push	a
3506  08ba ae0001        	ldw	x,#1
3507  08bd 7b03          	ld	a,(OFST+3,sp)
3508  08bf 95            	ld	xh,a
3509  08c0 cd123c        	call	L3_TI1_Config
3511  08c3               L5521:
3512  08c3 84            	pop	a
3513                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3515  08c4 7b01          	ld	a,(OFST+1,sp)
3516  08c6 ad0a          	call	_TIM1_SelectInputTrigger
3518                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3520  08c8 c65252        	ld	a,21074
3521  08cb aa07          	or	a,#7
3522  08cd c75252        	ld	21074,a
3523                     ; 775 }
3526  08d0 85            	popw	x
3527  08d1 81            	ret	
3613                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3613                     ; 788 {
3614                     	switch	.text
3615  08d2               _TIM1_SelectInputTrigger:
3617  08d2 88            	push	a
3618       00000000      OFST:	set	0
3621                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3623  08d3 a140          	cp	a,#64
3624  08d5 2721          	jreq	L657
3625  08d7 a150          	cp	a,#80
3626  08d9 271d          	jreq	L657
3627  08db a160          	cp	a,#96
3628  08dd 2719          	jreq	L657
3629  08df a170          	cp	a,#112
3630  08e1 2715          	jreq	L657
3631  08e3 a130          	cp	a,#48
3632  08e5 2711          	jreq	L657
3633  08e7 4d            	tnz	a
3634  08e8 270e          	jreq	L657
3635  08ea ae0316        	ldw	x,#790
3636  08ed 89            	pushw	x
3637  08ee 5f            	clrw	x
3638  08ef 89            	pushw	x
3639  08f0 ae0000        	ldw	x,#L37
3640  08f3 cd0000        	call	_assert_failed
3642  08f6 5b04          	addw	sp,#4
3643  08f8               L657:
3644                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3646  08f8 c65252        	ld	a,21074
3647  08fb a48f          	and	a,#143
3648  08fd 1a01          	or	a,(OFST+1,sp)
3649  08ff c75252        	ld	21074,a
3650                     ; 794 }
3653  0902 84            	pop	a
3654  0903 81            	ret	
3691                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3691                     ; 804 {
3692                     	switch	.text
3693  0904               _TIM1_UpdateDisableConfig:
3695  0904 88            	push	a
3696       00000000      OFST:	set	0
3699                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3701  0905 4d            	tnz	a
3702  0906 2711          	jreq	L077
3703  0908 4a            	dec	a
3704  0909 270e          	jreq	L077
3705  090b ae0326        	ldw	x,#806
3706  090e 89            	pushw	x
3707  090f 5f            	clrw	x
3708  0910 89            	pushw	x
3709  0911 ae0000        	ldw	x,#L37
3710  0914 cd0000        	call	_assert_failed
3712  0917 5b04          	addw	sp,#4
3713  0919               L077:
3714                     ; 809   if (NewState != DISABLE)
3716  0919 7b01          	ld	a,(OFST+1,sp)
3717  091b 2706          	jreq	L3331
3718                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3720  091d 72125250      	bset	21072,#1
3722  0921 2004          	jra	L5331
3723  0923               L3331:
3724                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3726  0923 72135250      	bres	21072,#1
3727  0927               L5331:
3728                     ; 817 }
3731  0927 84            	pop	a
3732  0928 81            	ret	
3791                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3791                     ; 828 {
3792                     	switch	.text
3793  0929               _TIM1_UpdateRequestConfig:
3795  0929 88            	push	a
3796       00000000      OFST:	set	0
3799                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3801  092a 4d            	tnz	a
3802  092b 2711          	jreq	L2001
3803  092d 4a            	dec	a
3804  092e 270e          	jreq	L2001
3805  0930 ae033e        	ldw	x,#830
3806  0933 89            	pushw	x
3807  0934 5f            	clrw	x
3808  0935 89            	pushw	x
3809  0936 ae0000        	ldw	x,#L37
3810  0939 cd0000        	call	_assert_failed
3812  093c 5b04          	addw	sp,#4
3813  093e               L2001:
3814                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3816  093e 7b01          	ld	a,(OFST+1,sp)
3817  0940 2706          	jreq	L5631
3818                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3820  0942 72145250      	bset	21072,#2
3822  0946 2004          	jra	L7631
3823  0948               L5631:
3824                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3826  0948 72155250      	bres	21072,#2
3827  094c               L7631:
3828                     ; 841 }
3831  094c 84            	pop	a
3832  094d 81            	ret	
3869                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3869                     ; 850 {
3870                     	switch	.text
3871  094e               _TIM1_SelectHallSensor:
3873  094e 88            	push	a
3874       00000000      OFST:	set	0
3877                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3879  094f 4d            	tnz	a
3880  0950 2711          	jreq	L4101
3881  0952 4a            	dec	a
3882  0953 270e          	jreq	L4101
3883  0955 ae0354        	ldw	x,#852
3884  0958 89            	pushw	x
3885  0959 5f            	clrw	x
3886  095a 89            	pushw	x
3887  095b ae0000        	ldw	x,#L37
3888  095e cd0000        	call	_assert_failed
3890  0961 5b04          	addw	sp,#4
3891  0963               L4101:
3892                     ; 855   if (NewState != DISABLE)
3894  0963 7b01          	ld	a,(OFST+1,sp)
3895  0965 2706          	jreq	L7041
3896                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3898  0967 721e5251      	bset	21073,#7
3900  096b 2004          	jra	L1141
3901  096d               L7041:
3902                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3904  096d 721f5251      	bres	21073,#7
3905  0971               L1141:
3906                     ; 863 }
3909  0971 84            	pop	a
3910  0972 81            	ret	
3968                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3968                     ; 874 {
3969                     	switch	.text
3970  0973               _TIM1_SelectOnePulseMode:
3972  0973 88            	push	a
3973       00000000      OFST:	set	0
3976                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3978  0974 a101          	cp	a,#1
3979  0976 2711          	jreq	L6201
3980  0978 4d            	tnz	a
3981  0979 270e          	jreq	L6201
3982  097b ae036c        	ldw	x,#876
3983  097e 89            	pushw	x
3984  097f 5f            	clrw	x
3985  0980 89            	pushw	x
3986  0981 ae0000        	ldw	x,#L37
3987  0984 cd0000        	call	_assert_failed
3989  0987 5b04          	addw	sp,#4
3990  0989               L6201:
3991                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3993  0989 7b01          	ld	a,(OFST+1,sp)
3994  098b 2706          	jreq	L1441
3995                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3997  098d 72165250      	bset	21072,#3
3999  0991 2004          	jra	L3441
4000  0993               L1441:
4001                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4003  0993 72175250      	bres	21072,#3
4004  0997               L3441:
4005                     ; 888 }
4008  0997 84            	pop	a
4009  0998 81            	ret	
4108                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4108                     ; 904 {
4109                     	switch	.text
4110  0999               _TIM1_SelectOutputTrigger:
4112  0999 88            	push	a
4113       00000000      OFST:	set	0
4116                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4118  099a 4d            	tnz	a
4119  099b 2726          	jreq	L0401
4120  099d a110          	cp	a,#16
4121  099f 2722          	jreq	L0401
4122  09a1 a120          	cp	a,#32
4123  09a3 271e          	jreq	L0401
4124  09a5 a130          	cp	a,#48
4125  09a7 271a          	jreq	L0401
4126  09a9 a140          	cp	a,#64
4127  09ab 2716          	jreq	L0401
4128  09ad a150          	cp	a,#80
4129  09af 2712          	jreq	L0401
4130  09b1 a160          	cp	a,#96
4131  09b3 270e          	jreq	L0401
4132  09b5 ae038a        	ldw	x,#906
4133  09b8 89            	pushw	x
4134  09b9 5f            	clrw	x
4135  09ba 89            	pushw	x
4136  09bb ae0000        	ldw	x,#L37
4137  09be cd0000        	call	_assert_failed
4139  09c1 5b04          	addw	sp,#4
4140  09c3               L0401:
4141                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4141                     ; 910                         (uint8_t) TIM1_TRGOSource);
4143  09c3 c65251        	ld	a,21073
4144  09c6 a48f          	and	a,#143
4145  09c8 1a01          	or	a,(OFST+1,sp)
4146  09ca c75251        	ld	21073,a
4147                     ; 911 }
4150  09cd 84            	pop	a
4151  09ce 81            	ret	
4226                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4226                     ; 924 {
4227                     	switch	.text
4228  09cf               _TIM1_SelectSlaveMode:
4230  09cf 88            	push	a
4231       00000000      OFST:	set	0
4234                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4236  09d0 a104          	cp	a,#4
4237  09d2 271a          	jreq	L2501
4238  09d4 a105          	cp	a,#5
4239  09d6 2716          	jreq	L2501
4240  09d8 a106          	cp	a,#6
4241  09da 2712          	jreq	L2501
4242  09dc a107          	cp	a,#7
4243  09de 270e          	jreq	L2501
4244  09e0 ae039e        	ldw	x,#926
4245  09e3 89            	pushw	x
4246  09e4 5f            	clrw	x
4247  09e5 89            	pushw	x
4248  09e6 ae0000        	ldw	x,#L37
4249  09e9 cd0000        	call	_assert_failed
4251  09ec 5b04          	addw	sp,#4
4252  09ee               L2501:
4253                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4253                     ; 930                          (uint8_t)TIM1_SlaveMode);
4255  09ee c65252        	ld	a,21074
4256  09f1 a4f8          	and	a,#248
4257  09f3 1a01          	or	a,(OFST+1,sp)
4258  09f5 c75252        	ld	21074,a
4259                     ; 931 }
4262  09f8 84            	pop	a
4263  09f9 81            	ret	
4300                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4300                     ; 940 {
4301                     	switch	.text
4302  09fa               _TIM1_SelectMasterSlaveMode:
4304  09fa 88            	push	a
4305       00000000      OFST:	set	0
4308                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4310  09fb 4d            	tnz	a
4311  09fc 2711          	jreq	L4601
4312  09fe 4a            	dec	a
4313  09ff 270e          	jreq	L4601
4314  0a01 ae03ae        	ldw	x,#942
4315  0a04 89            	pushw	x
4316  0a05 5f            	clrw	x
4317  0a06 89            	pushw	x
4318  0a07 ae0000        	ldw	x,#L37
4319  0a0a cd0000        	call	_assert_failed
4321  0a0d 5b04          	addw	sp,#4
4322  0a0f               L4601:
4323                     ; 945   if (NewState != DISABLE)
4325  0a0f 7b01          	ld	a,(OFST+1,sp)
4326  0a11 2706          	jreq	L5551
4327                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4329  0a13 721e5252      	bset	21074,#7
4331  0a17 2004          	jra	L7551
4332  0a19               L5551:
4333                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4335  0a19 721f5252      	bres	21074,#7
4336  0a1d               L7551:
4337                     ; 953 }
4340  0a1d 84            	pop	a
4341  0a1e 81            	ret	
4428                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4428                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4428                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4428                     ; 978 {
4429                     	switch	.text
4430  0a1f               _TIM1_EncoderInterfaceConfig:
4432  0a1f 89            	pushw	x
4433       00000000      OFST:	set	0
4436                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4438  0a20 9e            	ld	a,xh
4439  0a21 4a            	dec	a
4440  0a22 2718          	jreq	L6701
4441  0a24 9e            	ld	a,xh
4442  0a25 a102          	cp	a,#2
4443  0a27 2713          	jreq	L6701
4444  0a29 9e            	ld	a,xh
4445  0a2a a103          	cp	a,#3
4446  0a2c 270e          	jreq	L6701
4447  0a2e ae03d4        	ldw	x,#980
4448  0a31 89            	pushw	x
4449  0a32 5f            	clrw	x
4450  0a33 89            	pushw	x
4451  0a34 ae0000        	ldw	x,#L37
4452  0a37 cd0000        	call	_assert_failed
4454  0a3a 5b04          	addw	sp,#4
4455  0a3c               L6701:
4456                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4458  0a3c 7b02          	ld	a,(OFST+2,sp)
4459  0a3e 2711          	jreq	L6011
4460  0a40 4a            	dec	a
4461  0a41 270e          	jreq	L6011
4462  0a43 ae03d5        	ldw	x,#981
4463  0a46 89            	pushw	x
4464  0a47 5f            	clrw	x
4465  0a48 89            	pushw	x
4466  0a49 ae0000        	ldw	x,#L37
4467  0a4c cd0000        	call	_assert_failed
4469  0a4f 5b04          	addw	sp,#4
4470  0a51               L6011:
4471                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4473  0a51 7b05          	ld	a,(OFST+5,sp)
4474  0a53 2711          	jreq	L6111
4475  0a55 4a            	dec	a
4476  0a56 270e          	jreq	L6111
4477  0a58 ae03d6        	ldw	x,#982
4478  0a5b 89            	pushw	x
4479  0a5c 5f            	clrw	x
4480  0a5d 89            	pushw	x
4481  0a5e ae0000        	ldw	x,#L37
4482  0a61 cd0000        	call	_assert_failed
4484  0a64 5b04          	addw	sp,#4
4485  0a66               L6111:
4486                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4488  0a66 7b02          	ld	a,(OFST+2,sp)
4489  0a68 2706          	jreq	L1261
4490                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4492  0a6a 7212525c      	bset	21084,#1
4494  0a6e 2004          	jra	L3261
4495  0a70               L1261:
4496                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4498  0a70 7213525c      	bres	21084,#1
4499  0a74               L3261:
4500                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4502  0a74 7b05          	ld	a,(OFST+5,sp)
4503  0a76 2706          	jreq	L5261
4504                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4506  0a78 721a525c      	bset	21084,#5
4508  0a7c 2004          	jra	L7261
4509  0a7e               L5261:
4510                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4512  0a7e 721b525c      	bres	21084,#5
4513  0a82               L7261:
4514                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4514                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4516  0a82 c65252        	ld	a,21074
4517  0a85 a4f0          	and	a,#240
4518  0a87 1a01          	or	a,(OFST+1,sp)
4519  0a89 c75252        	ld	21074,a
4520                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4520                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4522  0a8c c65258        	ld	a,21080
4523  0a8f a4fc          	and	a,#252
4524  0a91 aa01          	or	a,#1
4525  0a93 c75258        	ld	21080,a
4526                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4526                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4528  0a96 c65259        	ld	a,21081
4529  0a99 a4fc          	and	a,#252
4530  0a9b aa01          	or	a,#1
4531  0a9d c75259        	ld	21081,a
4532                     ; 1011 }
4535  0aa0 85            	popw	x
4536  0aa1 81            	ret	
4602                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4602                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4602                     ; 1025 {
4603                     	switch	.text
4604  0aa2               _TIM1_PrescalerConfig:
4606  0aa2 89            	pushw	x
4607       00000000      OFST:	set	0
4610                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4612  0aa3 7b05          	ld	a,(OFST+5,sp)
4613  0aa5 2711          	jreq	L0311
4614  0aa7 4a            	dec	a
4615  0aa8 270e          	jreq	L0311
4616  0aaa ae0403        	ldw	x,#1027
4617  0aad 89            	pushw	x
4618  0aae 5f            	clrw	x
4619  0aaf 89            	pushw	x
4620  0ab0 ae0000        	ldw	x,#L37
4621  0ab3 cd0000        	call	_assert_failed
4623  0ab6 5b04          	addw	sp,#4
4624  0ab8               L0311:
4625                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4627  0ab8 7b01          	ld	a,(OFST+1,sp)
4628  0aba c75260        	ld	21088,a
4629                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4631  0abd 7b02          	ld	a,(OFST+2,sp)
4632  0abf c75261        	ld	21089,a
4633                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4635  0ac2 7b05          	ld	a,(OFST+5,sp)
4636  0ac4 c75257        	ld	21079,a
4637                     ; 1035 }
4640  0ac7 85            	popw	x
4641  0ac8 81            	ret	
4678                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4678                     ; 1049 {
4679                     	switch	.text
4680  0ac9               _TIM1_CounterModeConfig:
4682  0ac9 88            	push	a
4683       00000000      OFST:	set	0
4686                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4688  0aca 4d            	tnz	a
4689  0acb 271e          	jreq	L2411
4690  0acd a110          	cp	a,#16
4691  0acf 271a          	jreq	L2411
4692  0ad1 a120          	cp	a,#32
4693  0ad3 2716          	jreq	L2411
4694  0ad5 a140          	cp	a,#64
4695  0ad7 2712          	jreq	L2411
4696  0ad9 a160          	cp	a,#96
4697  0adb 270e          	jreq	L2411
4698  0add ae041b        	ldw	x,#1051
4699  0ae0 89            	pushw	x
4700  0ae1 5f            	clrw	x
4701  0ae2 89            	pushw	x
4702  0ae3 ae0000        	ldw	x,#L37
4703  0ae6 cd0000        	call	_assert_failed
4705  0ae9 5b04          	addw	sp,#4
4706  0aeb               L2411:
4707                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4707                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4709  0aeb c65250        	ld	a,21072
4710  0aee a48f          	and	a,#143
4711  0af0 1a01          	or	a,(OFST+1,sp)
4712  0af2 c75250        	ld	21072,a
4713                     ; 1057 }
4716  0af5 84            	pop	a
4717  0af6 81            	ret	
4776                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4776                     ; 1068 {
4777                     	switch	.text
4778  0af7               _TIM1_ForcedOC1Config:
4780  0af7 88            	push	a
4781       00000000      OFST:	set	0
4784                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4786  0af8 a150          	cp	a,#80
4787  0afa 2712          	jreq	L4511
4788  0afc a140          	cp	a,#64
4789  0afe 270e          	jreq	L4511
4790  0b00 ae042e        	ldw	x,#1070
4791  0b03 89            	pushw	x
4792  0b04 5f            	clrw	x
4793  0b05 89            	pushw	x
4794  0b06 ae0000        	ldw	x,#L37
4795  0b09 cd0000        	call	_assert_failed
4797  0b0c 5b04          	addw	sp,#4
4798  0b0e               L4511:
4799                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4799                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4801  0b0e c65258        	ld	a,21080
4802  0b11 a48f          	and	a,#143
4803  0b13 1a01          	or	a,(OFST+1,sp)
4804  0b15 c75258        	ld	21080,a
4805                     ; 1075 }
4808  0b18 84            	pop	a
4809  0b19 81            	ret	
4846                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4846                     ; 1086 {
4847                     	switch	.text
4848  0b1a               _TIM1_ForcedOC2Config:
4850  0b1a 88            	push	a
4851       00000000      OFST:	set	0
4854                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4856  0b1b a150          	cp	a,#80
4857  0b1d 2712          	jreq	L6611
4858  0b1f a140          	cp	a,#64
4859  0b21 270e          	jreq	L6611
4860  0b23 ae0440        	ldw	x,#1088
4861  0b26 89            	pushw	x
4862  0b27 5f            	clrw	x
4863  0b28 89            	pushw	x
4864  0b29 ae0000        	ldw	x,#L37
4865  0b2c cd0000        	call	_assert_failed
4867  0b2f 5b04          	addw	sp,#4
4868  0b31               L6611:
4869                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4869                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4871  0b31 c65259        	ld	a,21081
4872  0b34 a48f          	and	a,#143
4873  0b36 1a01          	or	a,(OFST+1,sp)
4874  0b38 c75259        	ld	21081,a
4875                     ; 1093 }
4878  0b3b 84            	pop	a
4879  0b3c 81            	ret	
4916                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4916                     ; 1105 {
4917                     	switch	.text
4918  0b3d               _TIM1_ForcedOC3Config:
4920  0b3d 88            	push	a
4921       00000000      OFST:	set	0
4924                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4926  0b3e a150          	cp	a,#80
4927  0b40 2712          	jreq	L0021
4928  0b42 a140          	cp	a,#64
4929  0b44 270e          	jreq	L0021
4930  0b46 ae0453        	ldw	x,#1107
4931  0b49 89            	pushw	x
4932  0b4a 5f            	clrw	x
4933  0b4b 89            	pushw	x
4934  0b4c ae0000        	ldw	x,#L37
4935  0b4f cd0000        	call	_assert_failed
4937  0b52 5b04          	addw	sp,#4
4938  0b54               L0021:
4939                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4939                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4941  0b54 c6525a        	ld	a,21082
4942  0b57 a48f          	and	a,#143
4943  0b59 1a01          	or	a,(OFST+1,sp)
4944  0b5b c7525a        	ld	21082,a
4945                     ; 1112 }
4948  0b5e 84            	pop	a
4949  0b5f 81            	ret	
4986                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4986                     ; 1124 {
4987                     	switch	.text
4988  0b60               _TIM1_ForcedOC4Config:
4990  0b60 88            	push	a
4991       00000000      OFST:	set	0
4994                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4996  0b61 a150          	cp	a,#80
4997  0b63 2712          	jreq	L2121
4998  0b65 a140          	cp	a,#64
4999  0b67 270e          	jreq	L2121
5000  0b69 ae0466        	ldw	x,#1126
5001  0b6c 89            	pushw	x
5002  0b6d 5f            	clrw	x
5003  0b6e 89            	pushw	x
5004  0b6f ae0000        	ldw	x,#L37
5005  0b72 cd0000        	call	_assert_failed
5007  0b75 5b04          	addw	sp,#4
5008  0b77               L2121:
5009                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5009                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5011  0b77 c6525b        	ld	a,21083
5012  0b7a a48f          	and	a,#143
5013  0b7c 1a01          	or	a,(OFST+1,sp)
5014  0b7e c7525b        	ld	21083,a
5015                     ; 1131 }
5018  0b81 84            	pop	a
5019  0b82 81            	ret	
5056                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5056                     ; 1140 {
5057                     	switch	.text
5058  0b83               _TIM1_ARRPreloadConfig:
5060  0b83 88            	push	a
5061       00000000      OFST:	set	0
5064                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5066  0b84 4d            	tnz	a
5067  0b85 2711          	jreq	L4221
5068  0b87 4a            	dec	a
5069  0b88 270e          	jreq	L4221
5070  0b8a ae0476        	ldw	x,#1142
5071  0b8d 89            	pushw	x
5072  0b8e 5f            	clrw	x
5073  0b8f 89            	pushw	x
5074  0b90 ae0000        	ldw	x,#L37
5075  0b93 cd0000        	call	_assert_failed
5077  0b96 5b04          	addw	sp,#4
5078  0b98               L4221:
5079                     ; 1145   if (NewState != DISABLE)
5081  0b98 7b01          	ld	a,(OFST+1,sp)
5082  0b9a 2706          	jreq	L5102
5083                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5085  0b9c 721e5250      	bset	21072,#7
5087  0ba0 2004          	jra	L7102
5088  0ba2               L5102:
5089                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5091  0ba2 721f5250      	bres	21072,#7
5092  0ba6               L7102:
5093                     ; 1153 }
5096  0ba6 84            	pop	a
5097  0ba7 81            	ret	
5133                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5133                     ; 1162 {
5134                     	switch	.text
5135  0ba8               _TIM1_SelectCOM:
5137  0ba8 88            	push	a
5138       00000000      OFST:	set	0
5141                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5143  0ba9 4d            	tnz	a
5144  0baa 2711          	jreq	L6321
5145  0bac 4a            	dec	a
5146  0bad 270e          	jreq	L6321
5147  0baf ae048c        	ldw	x,#1164
5148  0bb2 89            	pushw	x
5149  0bb3 5f            	clrw	x
5150  0bb4 89            	pushw	x
5151  0bb5 ae0000        	ldw	x,#L37
5152  0bb8 cd0000        	call	_assert_failed
5154  0bbb 5b04          	addw	sp,#4
5155  0bbd               L6321:
5156                     ; 1167   if (NewState != DISABLE)
5158  0bbd 7b01          	ld	a,(OFST+1,sp)
5159  0bbf 2706          	jreq	L7302
5160                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5162  0bc1 72145251      	bset	21073,#2
5164  0bc5 2004          	jra	L1402
5165  0bc7               L7302:
5166                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5168  0bc7 72155251      	bres	21073,#2
5169  0bcb               L1402:
5170                     ; 1175 }
5173  0bcb 84            	pop	a
5174  0bcc 81            	ret	
5211                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5211                     ; 1184 {
5212                     	switch	.text
5213  0bcd               _TIM1_CCPreloadControl:
5215  0bcd 88            	push	a
5216       00000000      OFST:	set	0
5219                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5221  0bce 4d            	tnz	a
5222  0bcf 2711          	jreq	L0521
5223  0bd1 4a            	dec	a
5224  0bd2 270e          	jreq	L0521
5225  0bd4 ae04a2        	ldw	x,#1186
5226  0bd7 89            	pushw	x
5227  0bd8 5f            	clrw	x
5228  0bd9 89            	pushw	x
5229  0bda ae0000        	ldw	x,#L37
5230  0bdd cd0000        	call	_assert_failed
5232  0be0 5b04          	addw	sp,#4
5233  0be2               L0521:
5234                     ; 1189   if (NewState != DISABLE)
5236  0be2 7b01          	ld	a,(OFST+1,sp)
5237  0be4 2706          	jreq	L1602
5238                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5240  0be6 72105251      	bset	21073,#0
5242  0bea 2004          	jra	L3602
5243  0bec               L1602:
5244                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5246  0bec 72115251      	bres	21073,#0
5247  0bf0               L3602:
5248                     ; 1197 }
5251  0bf0 84            	pop	a
5252  0bf1 81            	ret	
5289                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5289                     ; 1206 {
5290                     	switch	.text
5291  0bf2               _TIM1_OC1PreloadConfig:
5293  0bf2 88            	push	a
5294       00000000      OFST:	set	0
5297                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5299  0bf3 4d            	tnz	a
5300  0bf4 2711          	jreq	L2621
5301  0bf6 4a            	dec	a
5302  0bf7 270e          	jreq	L2621
5303  0bf9 ae04b8        	ldw	x,#1208
5304  0bfc 89            	pushw	x
5305  0bfd 5f            	clrw	x
5306  0bfe 89            	pushw	x
5307  0bff ae0000        	ldw	x,#L37
5308  0c02 cd0000        	call	_assert_failed
5310  0c05 5b04          	addw	sp,#4
5311  0c07               L2621:
5312                     ; 1211   if (NewState != DISABLE)
5314  0c07 7b01          	ld	a,(OFST+1,sp)
5315  0c09 2706          	jreq	L3012
5316                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5318  0c0b 72165258      	bset	21080,#3
5320  0c0f 2004          	jra	L5012
5321  0c11               L3012:
5322                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5324  0c11 72175258      	bres	21080,#3
5325  0c15               L5012:
5326                     ; 1219 }
5329  0c15 84            	pop	a
5330  0c16 81            	ret	
5367                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5367                     ; 1228 {
5368                     	switch	.text
5369  0c17               _TIM1_OC2PreloadConfig:
5371  0c17 88            	push	a
5372       00000000      OFST:	set	0
5375                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5377  0c18 4d            	tnz	a
5378  0c19 2711          	jreq	L4721
5379  0c1b 4a            	dec	a
5380  0c1c 270e          	jreq	L4721
5381  0c1e ae04ce        	ldw	x,#1230
5382  0c21 89            	pushw	x
5383  0c22 5f            	clrw	x
5384  0c23 89            	pushw	x
5385  0c24 ae0000        	ldw	x,#L37
5386  0c27 cd0000        	call	_assert_failed
5388  0c2a 5b04          	addw	sp,#4
5389  0c2c               L4721:
5390                     ; 1233   if (NewState != DISABLE)
5392  0c2c 7b01          	ld	a,(OFST+1,sp)
5393  0c2e 2706          	jreq	L5212
5394                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5396  0c30 72165259      	bset	21081,#3
5398  0c34 2004          	jra	L7212
5399  0c36               L5212:
5400                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5402  0c36 72175259      	bres	21081,#3
5403  0c3a               L7212:
5404                     ; 1241 }
5407  0c3a 84            	pop	a
5408  0c3b 81            	ret	
5445                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5445                     ; 1250 {
5446                     	switch	.text
5447  0c3c               _TIM1_OC3PreloadConfig:
5449  0c3c 88            	push	a
5450       00000000      OFST:	set	0
5453                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5455  0c3d 4d            	tnz	a
5456  0c3e 2711          	jreq	L6031
5457  0c40 4a            	dec	a
5458  0c41 270e          	jreq	L6031
5459  0c43 ae04e4        	ldw	x,#1252
5460  0c46 89            	pushw	x
5461  0c47 5f            	clrw	x
5462  0c48 89            	pushw	x
5463  0c49 ae0000        	ldw	x,#L37
5464  0c4c cd0000        	call	_assert_failed
5466  0c4f 5b04          	addw	sp,#4
5467  0c51               L6031:
5468                     ; 1255   if (NewState != DISABLE)
5470  0c51 7b01          	ld	a,(OFST+1,sp)
5471  0c53 2706          	jreq	L7412
5472                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5474  0c55 7216525a      	bset	21082,#3
5476  0c59 2004          	jra	L1512
5477  0c5b               L7412:
5478                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5480  0c5b 7217525a      	bres	21082,#3
5481  0c5f               L1512:
5482                     ; 1263 }
5485  0c5f 84            	pop	a
5486  0c60 81            	ret	
5523                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5523                     ; 1272 {
5524                     	switch	.text
5525  0c61               _TIM1_OC4PreloadConfig:
5527  0c61 88            	push	a
5528       00000000      OFST:	set	0
5531                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5533  0c62 4d            	tnz	a
5534  0c63 2711          	jreq	L0231
5535  0c65 4a            	dec	a
5536  0c66 270e          	jreq	L0231
5537  0c68 ae04fa        	ldw	x,#1274
5538  0c6b 89            	pushw	x
5539  0c6c 5f            	clrw	x
5540  0c6d 89            	pushw	x
5541  0c6e ae0000        	ldw	x,#L37
5542  0c71 cd0000        	call	_assert_failed
5544  0c74 5b04          	addw	sp,#4
5545  0c76               L0231:
5546                     ; 1277   if (NewState != DISABLE)
5548  0c76 7b01          	ld	a,(OFST+1,sp)
5549  0c78 2706          	jreq	L1712
5550                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5552  0c7a 7216525b      	bset	21083,#3
5554  0c7e 2004          	jra	L3712
5555  0c80               L1712:
5556                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5558  0c80 7217525b      	bres	21083,#3
5559  0c84               L3712:
5560                     ; 1285 }
5563  0c84 84            	pop	a
5564  0c85 81            	ret	
5600                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5600                     ; 1294 {
5601                     	switch	.text
5602  0c86               _TIM1_OC1FastConfig:
5604  0c86 88            	push	a
5605       00000000      OFST:	set	0
5608                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5610  0c87 4d            	tnz	a
5611  0c88 2711          	jreq	L2331
5612  0c8a 4a            	dec	a
5613  0c8b 270e          	jreq	L2331
5614  0c8d ae0510        	ldw	x,#1296
5615  0c90 89            	pushw	x
5616  0c91 5f            	clrw	x
5617  0c92 89            	pushw	x
5618  0c93 ae0000        	ldw	x,#L37
5619  0c96 cd0000        	call	_assert_failed
5621  0c99 5b04          	addw	sp,#4
5622  0c9b               L2331:
5623                     ; 1299   if (NewState != DISABLE)
5625  0c9b 7b01          	ld	a,(OFST+1,sp)
5626  0c9d 2706          	jreq	L3122
5627                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5629  0c9f 72145258      	bset	21080,#2
5631  0ca3 2004          	jra	L5122
5632  0ca5               L3122:
5633                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5635  0ca5 72155258      	bres	21080,#2
5636  0ca9               L5122:
5637                     ; 1307 }
5640  0ca9 84            	pop	a
5641  0caa 81            	ret	
5677                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5677                     ; 1316 {
5678                     	switch	.text
5679  0cab               _TIM1_OC2FastConfig:
5681  0cab 88            	push	a
5682       00000000      OFST:	set	0
5685                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5687  0cac 4d            	tnz	a
5688  0cad 2711          	jreq	L4431
5689  0caf 4a            	dec	a
5690  0cb0 270e          	jreq	L4431
5691  0cb2 ae0526        	ldw	x,#1318
5692  0cb5 89            	pushw	x
5693  0cb6 5f            	clrw	x
5694  0cb7 89            	pushw	x
5695  0cb8 ae0000        	ldw	x,#L37
5696  0cbb cd0000        	call	_assert_failed
5698  0cbe 5b04          	addw	sp,#4
5699  0cc0               L4431:
5700                     ; 1321   if (NewState != DISABLE)
5702  0cc0 7b01          	ld	a,(OFST+1,sp)
5703  0cc2 2706          	jreq	L5322
5704                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5706  0cc4 72145259      	bset	21081,#2
5708  0cc8 2004          	jra	L7322
5709  0cca               L5322:
5710                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5712  0cca 72155259      	bres	21081,#2
5713  0cce               L7322:
5714                     ; 1329 }
5717  0cce 84            	pop	a
5718  0ccf 81            	ret	
5754                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5754                     ; 1338 {
5755                     	switch	.text
5756  0cd0               _TIM1_OC3FastConfig:
5758  0cd0 88            	push	a
5759       00000000      OFST:	set	0
5762                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5764  0cd1 4d            	tnz	a
5765  0cd2 2711          	jreq	L6531
5766  0cd4 4a            	dec	a
5767  0cd5 270e          	jreq	L6531
5768  0cd7 ae053c        	ldw	x,#1340
5769  0cda 89            	pushw	x
5770  0cdb 5f            	clrw	x
5771  0cdc 89            	pushw	x
5772  0cdd ae0000        	ldw	x,#L37
5773  0ce0 cd0000        	call	_assert_failed
5775  0ce3 5b04          	addw	sp,#4
5776  0ce5               L6531:
5777                     ; 1343   if (NewState != DISABLE)
5779  0ce5 7b01          	ld	a,(OFST+1,sp)
5780  0ce7 2706          	jreq	L7522
5781                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5783  0ce9 7214525a      	bset	21082,#2
5785  0ced 2004          	jra	L1622
5786  0cef               L7522:
5787                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5789  0cef 7215525a      	bres	21082,#2
5790  0cf3               L1622:
5791                     ; 1351 }
5794  0cf3 84            	pop	a
5795  0cf4 81            	ret	
5831                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5831                     ; 1360 {
5832                     	switch	.text
5833  0cf5               _TIM1_OC4FastConfig:
5835  0cf5 88            	push	a
5836       00000000      OFST:	set	0
5839                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5841  0cf6 4d            	tnz	a
5842  0cf7 2711          	jreq	L0731
5843  0cf9 4a            	dec	a
5844  0cfa 270e          	jreq	L0731
5845  0cfc ae0552        	ldw	x,#1362
5846  0cff 89            	pushw	x
5847  0d00 5f            	clrw	x
5848  0d01 89            	pushw	x
5849  0d02 ae0000        	ldw	x,#L37
5850  0d05 cd0000        	call	_assert_failed
5852  0d08 5b04          	addw	sp,#4
5853  0d0a               L0731:
5854                     ; 1365   if (NewState != DISABLE)
5856  0d0a 7b01          	ld	a,(OFST+1,sp)
5857  0d0c 2706          	jreq	L1032
5858                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5860  0d0e 7214525b      	bset	21083,#2
5862  0d12 2004          	jra	L3032
5863  0d14               L1032:
5864                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5866  0d14 7215525b      	bres	21083,#2
5867  0d18               L3032:
5868                     ; 1373 }
5871  0d18 84            	pop	a
5872  0d19 81            	ret	
5978                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5978                     ; 1390 {
5979                     	switch	.text
5980  0d1a               _TIM1_GenerateEvent:
5982  0d1a 88            	push	a
5983       00000000      OFST:	set	0
5986                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5988  0d1b 4d            	tnz	a
5989  0d1c 260e          	jrne	L0041
5990  0d1e ae0570        	ldw	x,#1392
5991  0d21 89            	pushw	x
5992  0d22 5f            	clrw	x
5993  0d23 89            	pushw	x
5994  0d24 ae0000        	ldw	x,#L37
5995  0d27 cd0000        	call	_assert_failed
5997  0d2a 5b04          	addw	sp,#4
5998  0d2c               L0041:
5999                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6001  0d2c 7b01          	ld	a,(OFST+1,sp)
6002  0d2e c75257        	ld	21079,a
6003                     ; 1396 }
6006  0d31 84            	pop	a
6007  0d32 81            	ret	
6044                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6044                     ; 1407 {
6045                     	switch	.text
6046  0d33               _TIM1_OC1PolarityConfig:
6048  0d33 88            	push	a
6049       00000000      OFST:	set	0
6052                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6054  0d34 4d            	tnz	a
6055  0d35 2712          	jreq	L2141
6056  0d37 a122          	cp	a,#34
6057  0d39 270e          	jreq	L2141
6058  0d3b ae0581        	ldw	x,#1409
6059  0d3e 89            	pushw	x
6060  0d3f 5f            	clrw	x
6061  0d40 89            	pushw	x
6062  0d41 ae0000        	ldw	x,#L37
6063  0d44 cd0000        	call	_assert_failed
6065  0d47 5b04          	addw	sp,#4
6066  0d49               L2141:
6067                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6069  0d49 7b01          	ld	a,(OFST+1,sp)
6070  0d4b 2706          	jreq	L5632
6071                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6073  0d4d 7212525c      	bset	21084,#1
6075  0d51 2004          	jra	L7632
6076  0d53               L5632:
6077                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6079  0d53 7213525c      	bres	21084,#1
6080  0d57               L7632:
6081                     ; 1420 }
6084  0d57 84            	pop	a
6085  0d58 81            	ret	
6122                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6122                     ; 1431 {
6123                     	switch	.text
6124  0d59               _TIM1_OC1NPolarityConfig:
6126  0d59 88            	push	a
6127       00000000      OFST:	set	0
6130                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6132  0d5a 4d            	tnz	a
6133  0d5b 2712          	jreq	L4241
6134  0d5d a188          	cp	a,#136
6135  0d5f 270e          	jreq	L4241
6136  0d61 ae0599        	ldw	x,#1433
6137  0d64 89            	pushw	x
6138  0d65 5f            	clrw	x
6139  0d66 89            	pushw	x
6140  0d67 ae0000        	ldw	x,#L37
6141  0d6a cd0000        	call	_assert_failed
6143  0d6d 5b04          	addw	sp,#4
6144  0d6f               L4241:
6145                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6147  0d6f 7b01          	ld	a,(OFST+1,sp)
6148  0d71 2706          	jreq	L7042
6149                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6151  0d73 7216525c      	bset	21084,#3
6153  0d77 2004          	jra	L1142
6154  0d79               L7042:
6155                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6157  0d79 7217525c      	bres	21084,#3
6158  0d7d               L1142:
6159                     ; 1444 }
6162  0d7d 84            	pop	a
6163  0d7e 81            	ret	
6200                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6200                     ; 1455 {
6201                     	switch	.text
6202  0d7f               _TIM1_OC2PolarityConfig:
6204  0d7f 88            	push	a
6205       00000000      OFST:	set	0
6208                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6210  0d80 4d            	tnz	a
6211  0d81 2712          	jreq	L6341
6212  0d83 a122          	cp	a,#34
6213  0d85 270e          	jreq	L6341
6214  0d87 ae05b1        	ldw	x,#1457
6215  0d8a 89            	pushw	x
6216  0d8b 5f            	clrw	x
6217  0d8c 89            	pushw	x
6218  0d8d ae0000        	ldw	x,#L37
6219  0d90 cd0000        	call	_assert_failed
6221  0d93 5b04          	addw	sp,#4
6222  0d95               L6341:
6223                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6225  0d95 7b01          	ld	a,(OFST+1,sp)
6226  0d97 2706          	jreq	L1342
6227                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6229  0d99 721a525c      	bset	21084,#5
6231  0d9d 2004          	jra	L3342
6232  0d9f               L1342:
6233                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6235  0d9f 721b525c      	bres	21084,#5
6236  0da3               L3342:
6237                     ; 1468 }
6240  0da3 84            	pop	a
6241  0da4 81            	ret	
6278                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6278                     ; 1479 {
6279                     	switch	.text
6280  0da5               _TIM1_OC2NPolarityConfig:
6282  0da5 88            	push	a
6283       00000000      OFST:	set	0
6286                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6288  0da6 4d            	tnz	a
6289  0da7 2712          	jreq	L0541
6290  0da9 a188          	cp	a,#136
6291  0dab 270e          	jreq	L0541
6292  0dad ae05c9        	ldw	x,#1481
6293  0db0 89            	pushw	x
6294  0db1 5f            	clrw	x
6295  0db2 89            	pushw	x
6296  0db3 ae0000        	ldw	x,#L37
6297  0db6 cd0000        	call	_assert_failed
6299  0db9 5b04          	addw	sp,#4
6300  0dbb               L0541:
6301                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6303  0dbb 7b01          	ld	a,(OFST+1,sp)
6304  0dbd 2706          	jreq	L3542
6305                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6307  0dbf 721e525c      	bset	21084,#7
6309  0dc3 2004          	jra	L5542
6310  0dc5               L3542:
6311                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6313  0dc5 721f525c      	bres	21084,#7
6314  0dc9               L5542:
6315                     ; 1492 }
6318  0dc9 84            	pop	a
6319  0dca 81            	ret	
6356                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6356                     ; 1503 {
6357                     	switch	.text
6358  0dcb               _TIM1_OC3PolarityConfig:
6360  0dcb 88            	push	a
6361       00000000      OFST:	set	0
6364                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6366  0dcc 4d            	tnz	a
6367  0dcd 2712          	jreq	L2641
6368  0dcf a122          	cp	a,#34
6369  0dd1 270e          	jreq	L2641
6370  0dd3 ae05e1        	ldw	x,#1505
6371  0dd6 89            	pushw	x
6372  0dd7 5f            	clrw	x
6373  0dd8 89            	pushw	x
6374  0dd9 ae0000        	ldw	x,#L37
6375  0ddc cd0000        	call	_assert_failed
6377  0ddf 5b04          	addw	sp,#4
6378  0de1               L2641:
6379                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6381  0de1 7b01          	ld	a,(OFST+1,sp)
6382  0de3 2706          	jreq	L5742
6383                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6385  0de5 7212525d      	bset	21085,#1
6387  0de9 2004          	jra	L7742
6388  0deb               L5742:
6389                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6391  0deb 7213525d      	bres	21085,#1
6392  0def               L7742:
6393                     ; 1516 }
6396  0def 84            	pop	a
6397  0df0 81            	ret	
6434                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6434                     ; 1528 {
6435                     	switch	.text
6436  0df1               _TIM1_OC3NPolarityConfig:
6438  0df1 88            	push	a
6439       00000000      OFST:	set	0
6442                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6444  0df2 4d            	tnz	a
6445  0df3 2712          	jreq	L4741
6446  0df5 a188          	cp	a,#136
6447  0df7 270e          	jreq	L4741
6448  0df9 ae05fa        	ldw	x,#1530
6449  0dfc 89            	pushw	x
6450  0dfd 5f            	clrw	x
6451  0dfe 89            	pushw	x
6452  0dff ae0000        	ldw	x,#L37
6453  0e02 cd0000        	call	_assert_failed
6455  0e05 5b04          	addw	sp,#4
6456  0e07               L4741:
6457                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6459  0e07 7b01          	ld	a,(OFST+1,sp)
6460  0e09 2706          	jreq	L7152
6461                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6463  0e0b 7216525d      	bset	21085,#3
6465  0e0f 2004          	jra	L1252
6466  0e11               L7152:
6467                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6469  0e11 7217525d      	bres	21085,#3
6470  0e15               L1252:
6471                     ; 1541 }
6474  0e15 84            	pop	a
6475  0e16 81            	ret	
6512                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6512                     ; 1552 {
6513                     	switch	.text
6514  0e17               _TIM1_OC4PolarityConfig:
6516  0e17 88            	push	a
6517       00000000      OFST:	set	0
6520                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6522  0e18 4d            	tnz	a
6523  0e19 2712          	jreq	L6051
6524  0e1b a122          	cp	a,#34
6525  0e1d 270e          	jreq	L6051
6526  0e1f ae0612        	ldw	x,#1554
6527  0e22 89            	pushw	x
6528  0e23 5f            	clrw	x
6529  0e24 89            	pushw	x
6530  0e25 ae0000        	ldw	x,#L37
6531  0e28 cd0000        	call	_assert_failed
6533  0e2b 5b04          	addw	sp,#4
6534  0e2d               L6051:
6535                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6537  0e2d 7b01          	ld	a,(OFST+1,sp)
6538  0e2f 2706          	jreq	L1452
6539                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6541  0e31 721a525d      	bset	21085,#5
6543  0e35 2004          	jra	L3452
6544  0e37               L1452:
6545                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6547  0e37 721b525d      	bres	21085,#5
6548  0e3b               L3452:
6549                     ; 1565 }
6552  0e3b 84            	pop	a
6553  0e3c 81            	ret	
6599                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6599                     ; 1580 {
6600                     	switch	.text
6601  0e3d               _TIM1_CCxCmd:
6603  0e3d 89            	pushw	x
6604       00000000      OFST:	set	0
6607                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6609  0e3e 9e            	ld	a,xh
6610  0e3f 4d            	tnz	a
6611  0e40 271c          	jreq	L0251
6612  0e42 9e            	ld	a,xh
6613  0e43 4a            	dec	a
6614  0e44 2718          	jreq	L0251
6615  0e46 9e            	ld	a,xh
6616  0e47 a102          	cp	a,#2
6617  0e49 2713          	jreq	L0251
6618  0e4b 9e            	ld	a,xh
6619  0e4c a103          	cp	a,#3
6620  0e4e 270e          	jreq	L0251
6621  0e50 ae062e        	ldw	x,#1582
6622  0e53 89            	pushw	x
6623  0e54 5f            	clrw	x
6624  0e55 89            	pushw	x
6625  0e56 ae0000        	ldw	x,#L37
6626  0e59 cd0000        	call	_assert_failed
6628  0e5c 5b04          	addw	sp,#4
6629  0e5e               L0251:
6630                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6632  0e5e 7b02          	ld	a,(OFST+2,sp)
6633  0e60 2711          	jreq	L0351
6634  0e62 4a            	dec	a
6635  0e63 270e          	jreq	L0351
6636  0e65 ae062f        	ldw	x,#1583
6637  0e68 89            	pushw	x
6638  0e69 5f            	clrw	x
6639  0e6a 89            	pushw	x
6640  0e6b ae0000        	ldw	x,#L37
6641  0e6e cd0000        	call	_assert_failed
6643  0e71 5b04          	addw	sp,#4
6644  0e73               L0351:
6645                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6647  0e73 7b01          	ld	a,(OFST+1,sp)
6648  0e75 2610          	jrne	L7652
6649                     ; 1588     if (NewState != DISABLE)
6651  0e77 7b02          	ld	a,(OFST+2,sp)
6652  0e79 2706          	jreq	L1752
6653                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6655  0e7b 7210525c      	bset	21084,#0
6657  0e7f 203c          	jra	L5752
6658  0e81               L1752:
6659                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6661  0e81 7211525c      	bres	21084,#0
6662  0e85 2036          	jra	L5752
6663  0e87               L7652:
6664                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6666  0e87 a101          	cp	a,#1
6667  0e89 2610          	jrne	L7752
6668                     ; 1601     if (NewState != DISABLE)
6670  0e8b 7b02          	ld	a,(OFST+2,sp)
6671  0e8d 2706          	jreq	L1062
6672                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6674  0e8f 7218525c      	bset	21084,#4
6676  0e93 2028          	jra	L5752
6677  0e95               L1062:
6678                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6680  0e95 7219525c      	bres	21084,#4
6681  0e99 2022          	jra	L5752
6682  0e9b               L7752:
6683                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6685  0e9b a102          	cp	a,#2
6686  0e9d 2610          	jrne	L7062
6687                     ; 1613     if (NewState != DISABLE)
6689  0e9f 7b02          	ld	a,(OFST+2,sp)
6690  0ea1 2706          	jreq	L1162
6691                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6693  0ea3 7210525d      	bset	21085,#0
6695  0ea7 2014          	jra	L5752
6696  0ea9               L1162:
6697                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6699  0ea9 7211525d      	bres	21085,#0
6700  0ead 200e          	jra	L5752
6701  0eaf               L7062:
6702                     ; 1625     if (NewState != DISABLE)
6704  0eaf 7b02          	ld	a,(OFST+2,sp)
6705  0eb1 2706          	jreq	L7162
6706                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6708  0eb3 7218525d      	bset	21085,#4
6710  0eb7 2004          	jra	L5752
6711  0eb9               L7162:
6712                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6714  0eb9 7219525d      	bres	21085,#4
6715  0ebd               L5752:
6716                     ; 1634 }
6719  0ebd 85            	popw	x
6720  0ebe 81            	ret	
6766                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6766                     ; 1648 {
6767                     	switch	.text
6768  0ebf               _TIM1_CCxNCmd:
6770  0ebf 89            	pushw	x
6771       00000000      OFST:	set	0
6774                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6776  0ec0 9e            	ld	a,xh
6777  0ec1 4d            	tnz	a
6778  0ec2 2717          	jreq	L2451
6779  0ec4 9e            	ld	a,xh
6780  0ec5 4a            	dec	a
6781  0ec6 2713          	jreq	L2451
6782  0ec8 9e            	ld	a,xh
6783  0ec9 a102          	cp	a,#2
6784  0ecb 270e          	jreq	L2451
6785  0ecd ae0672        	ldw	x,#1650
6786  0ed0 89            	pushw	x
6787  0ed1 5f            	clrw	x
6788  0ed2 89            	pushw	x
6789  0ed3 ae0000        	ldw	x,#L37
6790  0ed6 cd0000        	call	_assert_failed
6792  0ed9 5b04          	addw	sp,#4
6793  0edb               L2451:
6794                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6796  0edb 7b02          	ld	a,(OFST+2,sp)
6797  0edd 2711          	jreq	L2551
6798  0edf 4a            	dec	a
6799  0ee0 270e          	jreq	L2551
6800  0ee2 ae0673        	ldw	x,#1651
6801  0ee5 89            	pushw	x
6802  0ee6 5f            	clrw	x
6803  0ee7 89            	pushw	x
6804  0ee8 ae0000        	ldw	x,#L37
6805  0eeb cd0000        	call	_assert_failed
6807  0eee 5b04          	addw	sp,#4
6808  0ef0               L2551:
6809                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6811  0ef0 7b01          	ld	a,(OFST+1,sp)
6812  0ef2 2610          	jrne	L5462
6813                     ; 1656     if (NewState != DISABLE)
6815  0ef4 7b02          	ld	a,(OFST+2,sp)
6816  0ef6 2706          	jreq	L7462
6817                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6819  0ef8 7214525c      	bset	21084,#2
6821  0efc 2027          	jra	L3562
6822  0efe               L7462:
6823                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6825  0efe 7215525c      	bres	21084,#2
6826  0f02 2021          	jra	L3562
6827  0f04               L5462:
6828                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6830  0f04 4a            	dec	a
6831  0f05 2610          	jrne	L5562
6832                     ; 1668     if (NewState != DISABLE)
6834  0f07 7b02          	ld	a,(OFST+2,sp)
6835  0f09 2706          	jreq	L7562
6836                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6838  0f0b 721c525c      	bset	21084,#6
6840  0f0f 2014          	jra	L3562
6841  0f11               L7562:
6842                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6844  0f11 721d525c      	bres	21084,#6
6845  0f15 200e          	jra	L3562
6846  0f17               L5562:
6847                     ; 1680     if (NewState != DISABLE)
6849  0f17 7b02          	ld	a,(OFST+2,sp)
6850  0f19 2706          	jreq	L5662
6851                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6853  0f1b 7214525d      	bset	21085,#2
6855  0f1f 2004          	jra	L3562
6856  0f21               L5662:
6857                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6859  0f21 7215525d      	bres	21085,#2
6860  0f25               L3562:
6861                     ; 1689 }
6864  0f25 85            	popw	x
6865  0f26 81            	ret	
6911                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6911                     ; 1713 {
6912                     	switch	.text
6913  0f27               _TIM1_SelectOCxM:
6915  0f27 89            	pushw	x
6916       00000000      OFST:	set	0
6919                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6921  0f28 9e            	ld	a,xh
6922  0f29 4d            	tnz	a
6923  0f2a 271c          	jreq	L4651
6924  0f2c 9e            	ld	a,xh
6925  0f2d 4a            	dec	a
6926  0f2e 2718          	jreq	L4651
6927  0f30 9e            	ld	a,xh
6928  0f31 a102          	cp	a,#2
6929  0f33 2713          	jreq	L4651
6930  0f35 9e            	ld	a,xh
6931  0f36 a103          	cp	a,#3
6932  0f38 270e          	jreq	L4651
6933  0f3a ae06b3        	ldw	x,#1715
6934  0f3d 89            	pushw	x
6935  0f3e 5f            	clrw	x
6936  0f3f 89            	pushw	x
6937  0f40 ae0000        	ldw	x,#L37
6938  0f43 cd0000        	call	_assert_failed
6940  0f46 5b04          	addw	sp,#4
6941  0f48               L4651:
6942                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6944  0f48 7b02          	ld	a,(OFST+2,sp)
6945  0f4a 272a          	jreq	L4751
6946  0f4c a110          	cp	a,#16
6947  0f4e 2726          	jreq	L4751
6948  0f50 a120          	cp	a,#32
6949  0f52 2722          	jreq	L4751
6950  0f54 a130          	cp	a,#48
6951  0f56 271e          	jreq	L4751
6952  0f58 a160          	cp	a,#96
6953  0f5a 271a          	jreq	L4751
6954  0f5c a170          	cp	a,#112
6955  0f5e 2716          	jreq	L4751
6956  0f60 a150          	cp	a,#80
6957  0f62 2712          	jreq	L4751
6958  0f64 a140          	cp	a,#64
6959  0f66 270e          	jreq	L4751
6960  0f68 ae06b4        	ldw	x,#1716
6961  0f6b 89            	pushw	x
6962  0f6c 5f            	clrw	x
6963  0f6d 89            	pushw	x
6964  0f6e ae0000        	ldw	x,#L37
6965  0f71 cd0000        	call	_assert_failed
6967  0f74 5b04          	addw	sp,#4
6968  0f76               L4751:
6969                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6971  0f76 7b01          	ld	a,(OFST+1,sp)
6972  0f78 2610          	jrne	L3172
6973                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6975  0f7a 7211525c      	bres	21084,#0
6976                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6976                     ; 1725                             | (uint8_t)TIM1_OCMode);
6978  0f7e c65258        	ld	a,21080
6979  0f81 a48f          	and	a,#143
6980  0f83 1a02          	or	a,(OFST+2,sp)
6981  0f85 c75258        	ld	21080,a
6983  0f88 2036          	jra	L5172
6984  0f8a               L3172:
6985                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6987  0f8a a101          	cp	a,#1
6988  0f8c 2610          	jrne	L7172
6989                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6991  0f8e 7219525c      	bres	21084,#4
6992                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6992                     ; 1734                             | (uint8_t)TIM1_OCMode);
6994  0f92 c65259        	ld	a,21081
6995  0f95 a48f          	and	a,#143
6996  0f97 1a02          	or	a,(OFST+2,sp)
6997  0f99 c75259        	ld	21081,a
6999  0f9c 2022          	jra	L5172
7000  0f9e               L7172:
7001                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7003  0f9e a102          	cp	a,#2
7004  0fa0 2610          	jrne	L3272
7005                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7007  0fa2 7211525d      	bres	21085,#0
7008                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7008                     ; 1743                             | (uint8_t)TIM1_OCMode);
7010  0fa6 c6525a        	ld	a,21082
7011  0fa9 a48f          	and	a,#143
7012  0fab 1a02          	or	a,(OFST+2,sp)
7013  0fad c7525a        	ld	21082,a
7015  0fb0 200e          	jra	L5172
7016  0fb2               L3272:
7017                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7019  0fb2 7219525d      	bres	21085,#4
7020                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7020                     ; 1752                             | (uint8_t)TIM1_OCMode);
7022  0fb6 c6525b        	ld	a,21083
7023  0fb9 a48f          	and	a,#143
7024  0fbb 1a02          	or	a,(OFST+2,sp)
7025  0fbd c7525b        	ld	21083,a
7026  0fc0               L5172:
7027                     ; 1754 }
7030  0fc0 85            	popw	x
7031  0fc1 81            	ret	
7063                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7063                     ; 1763 {
7064                     	switch	.text
7065  0fc2               _TIM1_SetCounter:
7069                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7071  0fc2 9e            	ld	a,xh
7072  0fc3 c7525e        	ld	21086,a
7073                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7075  0fc6 9f            	ld	a,xl
7076  0fc7 c7525f        	ld	21087,a
7077                     ; 1767 }
7080  0fca 81            	ret	
7112                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7112                     ; 1776 {
7113                     	switch	.text
7114  0fcb               _TIM1_SetAutoreload:
7118                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7120  0fcb 9e            	ld	a,xh
7121  0fcc c75262        	ld	21090,a
7122                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7124  0fcf 9f            	ld	a,xl
7125  0fd0 c75263        	ld	21091,a
7126                     ; 1780  }
7129  0fd3 81            	ret	
7161                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7161                     ; 1789 {
7162                     	switch	.text
7163  0fd4               _TIM1_SetCompare1:
7167                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7169  0fd4 9e            	ld	a,xh
7170  0fd5 c75265        	ld	21093,a
7171                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7173  0fd8 9f            	ld	a,xl
7174  0fd9 c75266        	ld	21094,a
7175                     ; 1793 }
7178  0fdc 81            	ret	
7210                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7210                     ; 1802 {
7211                     	switch	.text
7212  0fdd               _TIM1_SetCompare2:
7216                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7218  0fdd 9e            	ld	a,xh
7219  0fde c75267        	ld	21095,a
7220                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7222  0fe1 9f            	ld	a,xl
7223  0fe2 c75268        	ld	21096,a
7224                     ; 1806 }
7227  0fe5 81            	ret	
7259                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7259                     ; 1815 {
7260                     	switch	.text
7261  0fe6               _TIM1_SetCompare3:
7265                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7267  0fe6 9e            	ld	a,xh
7268  0fe7 c75269        	ld	21097,a
7269                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7271  0fea 9f            	ld	a,xl
7272  0feb c7526a        	ld	21098,a
7273                     ; 1819 }
7276  0fee 81            	ret	
7308                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7308                     ; 1828 {
7309                     	switch	.text
7310  0fef               _TIM1_SetCompare4:
7314                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7316  0fef 9e            	ld	a,xh
7317  0ff0 c7526b        	ld	21099,a
7318                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7320  0ff3 9f            	ld	a,xl
7321  0ff4 c7526c        	ld	21100,a
7322                     ; 1832 }
7325  0ff7 81            	ret	
7362                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7362                     ; 1845 {
7363                     	switch	.text
7364  0ff8               _TIM1_SetIC1Prescaler:
7366  0ff8 88            	push	a
7367       00000000      OFST:	set	0
7370                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7372  0ff9 4d            	tnz	a
7373  0ffa 271a          	jreq	L2261
7374  0ffc a104          	cp	a,#4
7375  0ffe 2716          	jreq	L2261
7376  1000 a108          	cp	a,#8
7377  1002 2712          	jreq	L2261
7378  1004 a10c          	cp	a,#12
7379  1006 270e          	jreq	L2261
7380  1008 ae0737        	ldw	x,#1847
7381  100b 89            	pushw	x
7382  100c 5f            	clrw	x
7383  100d 89            	pushw	x
7384  100e ae0000        	ldw	x,#L37
7385  1011 cd0000        	call	_assert_failed
7387  1014 5b04          	addw	sp,#4
7388  1016               L2261:
7389                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7389                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7391  1016 c65258        	ld	a,21080
7392  1019 a4f3          	and	a,#243
7393  101b 1a01          	or	a,(OFST+1,sp)
7394  101d c75258        	ld	21080,a
7395                     ; 1852 }
7398  1020 84            	pop	a
7399  1021 81            	ret	
7436                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7436                     ; 1865 {
7437                     	switch	.text
7438  1022               _TIM1_SetIC2Prescaler:
7440  1022 88            	push	a
7441       00000000      OFST:	set	0
7444                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7446  1023 4d            	tnz	a
7447  1024 271a          	jreq	L4361
7448  1026 a104          	cp	a,#4
7449  1028 2716          	jreq	L4361
7450  102a a108          	cp	a,#8
7451  102c 2712          	jreq	L4361
7452  102e a10c          	cp	a,#12
7453  1030 270e          	jreq	L4361
7454  1032 ae074c        	ldw	x,#1868
7455  1035 89            	pushw	x
7456  1036 5f            	clrw	x
7457  1037 89            	pushw	x
7458  1038 ae0000        	ldw	x,#L37
7459  103b cd0000        	call	_assert_failed
7461  103e 5b04          	addw	sp,#4
7462  1040               L4361:
7463                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7463                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7465  1040 c65259        	ld	a,21081
7466  1043 a4f3          	and	a,#243
7467  1045 1a01          	or	a,(OFST+1,sp)
7468  1047 c75259        	ld	21081,a
7469                     ; 1873 }
7472  104a 84            	pop	a
7473  104b 81            	ret	
7510                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7510                     ; 1886 {
7511                     	switch	.text
7512  104c               _TIM1_SetIC3Prescaler:
7514  104c 88            	push	a
7515       00000000      OFST:	set	0
7518                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7520  104d 4d            	tnz	a
7521  104e 271a          	jreq	L6461
7522  1050 a104          	cp	a,#4
7523  1052 2716          	jreq	L6461
7524  1054 a108          	cp	a,#8
7525  1056 2712          	jreq	L6461
7526  1058 a10c          	cp	a,#12
7527  105a 270e          	jreq	L6461
7528  105c ae0761        	ldw	x,#1889
7529  105f 89            	pushw	x
7530  1060 5f            	clrw	x
7531  1061 89            	pushw	x
7532  1062 ae0000        	ldw	x,#L37
7533  1065 cd0000        	call	_assert_failed
7535  1068 5b04          	addw	sp,#4
7536  106a               L6461:
7537                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7537                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7539  106a c6525a        	ld	a,21082
7540  106d a4f3          	and	a,#243
7541  106f 1a01          	or	a,(OFST+1,sp)
7542  1071 c7525a        	ld	21082,a
7543                     ; 1894 }
7546  1074 84            	pop	a
7547  1075 81            	ret	
7584                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7584                     ; 1907 {
7585                     	switch	.text
7586  1076               _TIM1_SetIC4Prescaler:
7588  1076 88            	push	a
7589       00000000      OFST:	set	0
7592                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7594  1077 4d            	tnz	a
7595  1078 271a          	jreq	L0661
7596  107a a104          	cp	a,#4
7597  107c 2716          	jreq	L0661
7598  107e a108          	cp	a,#8
7599  1080 2712          	jreq	L0661
7600  1082 a10c          	cp	a,#12
7601  1084 270e          	jreq	L0661
7602  1086 ae0776        	ldw	x,#1910
7603  1089 89            	pushw	x
7604  108a 5f            	clrw	x
7605  108b 89            	pushw	x
7606  108c ae0000        	ldw	x,#L37
7607  108f cd0000        	call	_assert_failed
7609  1092 5b04          	addw	sp,#4
7610  1094               L0661:
7611                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7611                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7613  1094 c6525b        	ld	a,21083
7614  1097 a4f3          	and	a,#243
7615  1099 1a01          	or	a,(OFST+1,sp)
7616  109b c7525b        	ld	21083,a
7617                     ; 1915 }
7620  109e 84            	pop	a
7621  109f 81            	ret	
7667                     ; 1922 uint16_t TIM1_GetCapture1(void)
7667                     ; 1923 {
7668                     	switch	.text
7669  10a0               _TIM1_GetCapture1:
7671  10a0 5204          	subw	sp,#4
7672       00000004      OFST:	set	4
7675                     ; 1926   uint16_t tmpccr1 = 0;
7677                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7681                     ; 1929   tmpccr1h = TIM1->CCR1H;
7683  10a2 c65265        	ld	a,21093
7684  10a5 6b02          	ld	(OFST-2,sp),a
7685                     ; 1930   tmpccr1l = TIM1->CCR1L;
7687  10a7 c65266        	ld	a,21094
7688  10aa 6b01          	ld	(OFST-3,sp),a
7689                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7691  10ac 5f            	clrw	x
7692  10ad 97            	ld	xl,a
7693  10ae 1f03          	ldw	(OFST-1,sp),x
7694                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7696  10b0 5f            	clrw	x
7697  10b1 7b02          	ld	a,(OFST-2,sp)
7698  10b3 97            	ld	xl,a
7699  10b4 7b04          	ld	a,(OFST+0,sp)
7700  10b6 01            	rrwa	x,a
7701  10b7 1a03          	or	a,(OFST-1,sp)
7702  10b9 01            	rrwa	x,a
7703                     ; 1935   return (uint16_t)tmpccr1;
7707  10ba 5b04          	addw	sp,#4
7708  10bc 81            	ret	
7754                     ; 1943 uint16_t TIM1_GetCapture2(void)
7754                     ; 1944 {
7755                     	switch	.text
7756  10bd               _TIM1_GetCapture2:
7758  10bd 5204          	subw	sp,#4
7759       00000004      OFST:	set	4
7762                     ; 1947   uint16_t tmpccr2 = 0;
7764                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7768                     ; 1950   tmpccr2h = TIM1->CCR2H;
7770  10bf c65267        	ld	a,21095
7771  10c2 6b02          	ld	(OFST-2,sp),a
7772                     ; 1951   tmpccr2l = TIM1->CCR2L;
7774  10c4 c65268        	ld	a,21096
7775  10c7 6b01          	ld	(OFST-3,sp),a
7776                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7778  10c9 5f            	clrw	x
7779  10ca 97            	ld	xl,a
7780  10cb 1f03          	ldw	(OFST-1,sp),x
7781                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7783  10cd 5f            	clrw	x
7784  10ce 7b02          	ld	a,(OFST-2,sp)
7785  10d0 97            	ld	xl,a
7786  10d1 7b04          	ld	a,(OFST+0,sp)
7787  10d3 01            	rrwa	x,a
7788  10d4 1a03          	or	a,(OFST-1,sp)
7789  10d6 01            	rrwa	x,a
7790                     ; 1956   return (uint16_t)tmpccr2;
7794  10d7 5b04          	addw	sp,#4
7795  10d9 81            	ret	
7841                     ; 1964 uint16_t TIM1_GetCapture3(void)
7841                     ; 1965 {
7842                     	switch	.text
7843  10da               _TIM1_GetCapture3:
7845  10da 5204          	subw	sp,#4
7846       00000004      OFST:	set	4
7849                     ; 1967   uint16_t tmpccr3 = 0;
7851                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7855                     ; 1970   tmpccr3h = TIM1->CCR3H;
7857  10dc c65269        	ld	a,21097
7858  10df 6b02          	ld	(OFST-2,sp),a
7859                     ; 1971   tmpccr3l = TIM1->CCR3L;
7861  10e1 c6526a        	ld	a,21098
7862  10e4 6b01          	ld	(OFST-3,sp),a
7863                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7865  10e6 5f            	clrw	x
7866  10e7 97            	ld	xl,a
7867  10e8 1f03          	ldw	(OFST-1,sp),x
7868                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7870  10ea 5f            	clrw	x
7871  10eb 7b02          	ld	a,(OFST-2,sp)
7872  10ed 97            	ld	xl,a
7873  10ee 7b04          	ld	a,(OFST+0,sp)
7874  10f0 01            	rrwa	x,a
7875  10f1 1a03          	or	a,(OFST-1,sp)
7876  10f3 01            	rrwa	x,a
7877                     ; 1976   return (uint16_t)tmpccr3;
7881  10f4 5b04          	addw	sp,#4
7882  10f6 81            	ret	
7928                     ; 1984 uint16_t TIM1_GetCapture4(void)
7928                     ; 1985 {
7929                     	switch	.text
7930  10f7               _TIM1_GetCapture4:
7932  10f7 5204          	subw	sp,#4
7933       00000004      OFST:	set	4
7936                     ; 1987   uint16_t tmpccr4 = 0;
7938                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7942                     ; 1990   tmpccr4h = TIM1->CCR4H;
7944  10f9 c6526b        	ld	a,21099
7945  10fc 6b02          	ld	(OFST-2,sp),a
7946                     ; 1991   tmpccr4l = TIM1->CCR4L;
7948  10fe c6526c        	ld	a,21100
7949  1101 6b01          	ld	(OFST-3,sp),a
7950                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7952  1103 5f            	clrw	x
7953  1104 97            	ld	xl,a
7954  1105 1f03          	ldw	(OFST-1,sp),x
7955                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7957  1107 5f            	clrw	x
7958  1108 7b02          	ld	a,(OFST-2,sp)
7959  110a 97            	ld	xl,a
7960  110b 7b04          	ld	a,(OFST+0,sp)
7961  110d 01            	rrwa	x,a
7962  110e 1a03          	or	a,(OFST-1,sp)
7963  1110 01            	rrwa	x,a
7964                     ; 1996   return (uint16_t)tmpccr4;
7968  1111 5b04          	addw	sp,#4
7969  1113 81            	ret	
8001                     ; 2004 uint16_t TIM1_GetCounter(void)
8001                     ; 2005 {
8002                     	switch	.text
8003  1114               _TIM1_GetCounter:
8005  1114 89            	pushw	x
8006       00000002      OFST:	set	2
8009                     ; 2006   uint16_t tmpcntr = 0;
8011                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8013  1115 c6525e        	ld	a,21086
8014  1118 97            	ld	xl,a
8015  1119 4f            	clr	a
8016  111a 02            	rlwa	x,a
8017  111b 1f01          	ldw	(OFST-1,sp),x
8018                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8020  111d 5f            	clrw	x
8021  111e c6525f        	ld	a,21087
8022  1121 97            	ld	xl,a
8023  1122 01            	rrwa	x,a
8024  1123 1a02          	or	a,(OFST+0,sp)
8025  1125 01            	rrwa	x,a
8026  1126 1a01          	or	a,(OFST-1,sp)
8027  1128 01            	rrwa	x,a
8030  1129 5b02          	addw	sp,#2
8031  112b 81            	ret	
8063                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8063                     ; 2020 {
8064                     	switch	.text
8065  112c               _TIM1_GetPrescaler:
8067  112c 89            	pushw	x
8068       00000002      OFST:	set	2
8071                     ; 2021   uint16_t temp = 0;
8073                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8075  112d c65260        	ld	a,21088
8076  1130 97            	ld	xl,a
8077  1131 4f            	clr	a
8078  1132 02            	rlwa	x,a
8079  1133 1f01          	ldw	(OFST-1,sp),x
8080                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8082  1135 5f            	clrw	x
8083  1136 c65261        	ld	a,21089
8084  1139 97            	ld	xl,a
8085  113a 01            	rrwa	x,a
8086  113b 1a02          	or	a,(OFST+0,sp)
8087  113d 01            	rrwa	x,a
8088  113e 1a01          	or	a,(OFST-1,sp)
8089  1140 01            	rrwa	x,a
8092  1141 5b02          	addw	sp,#2
8093  1143 81            	ret	
8264                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8264                     ; 2048 {
8265                     	switch	.text
8266  1144               _TIM1_GetFlagStatus:
8268  1144 89            	pushw	x
8269  1145 89            	pushw	x
8270       00000002      OFST:	set	2
8273                     ; 2049   FlagStatus bitstatus = RESET;
8275                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8279                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8281  1146 a30001        	cpw	x,#1
8282  1149 2745          	jreq	L6071
8283  114b a30002        	cpw	x,#2
8284  114e 2740          	jreq	L6071
8285  1150 a30004        	cpw	x,#4
8286  1153 273b          	jreq	L6071
8287  1155 a30008        	cpw	x,#8
8288  1158 2736          	jreq	L6071
8289  115a a30010        	cpw	x,#16
8290  115d 2731          	jreq	L6071
8291  115f a30020        	cpw	x,#32
8292  1162 272c          	jreq	L6071
8293  1164 a30040        	cpw	x,#64
8294  1167 2727          	jreq	L6071
8295  1169 a30080        	cpw	x,#128
8296  116c 2722          	jreq	L6071
8297  116e a30200        	cpw	x,#512
8298  1171 271d          	jreq	L6071
8299  1173 a30400        	cpw	x,#1024
8300  1176 2718          	jreq	L6071
8301  1178 a30800        	cpw	x,#2048
8302  117b 2713          	jreq	L6071
8303  117d a31000        	cpw	x,#4096
8304  1180 270e          	jreq	L6071
8305  1182 ae0805        	ldw	x,#2053
8306  1185 89            	pushw	x
8307  1186 5f            	clrw	x
8308  1187 89            	pushw	x
8309  1188 ae0000        	ldw	x,#L37
8310  118b cd0000        	call	_assert_failed
8312  118e 5b04          	addw	sp,#4
8313  1190               L6071:
8314                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8316  1190 c65255        	ld	a,21077
8317  1193 1404          	and	a,(OFST+2,sp)
8318  1195 6b01          	ld	(OFST-1,sp),a
8319                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8321  1197 7b03          	ld	a,(OFST+1,sp)
8322  1199 6b02          	ld	(OFST+0,sp),a
8323                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8325  119b c45256        	and	a,21078
8326  119e 1a01          	or	a,(OFST-1,sp)
8327  11a0 2702          	jreq	L1533
8328                     ; 2060     bitstatus = SET;
8330  11a2 a601          	ld	a,#1
8332  11a4               L1533:
8333                     ; 2064     bitstatus = RESET;
8335                     ; 2066   return (FlagStatus)(bitstatus);
8339  11a4 5b04          	addw	sp,#4
8340  11a6 81            	ret	
8376                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8376                     ; 2088 {
8377                     	switch	.text
8378  11a7               _TIM1_ClearFlag:
8380  11a7 89            	pushw	x
8381       00000000      OFST:	set	0
8384                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8386  11a8 01            	rrwa	x,a
8387  11a9 9f            	ld	a,xl
8388  11aa a4e1          	and	a,#225
8389  11ac 97            	ld	xl,a
8390  11ad 4f            	clr	a
8391  11ae 02            	rlwa	x,a
8392  11af 5d            	tnzw	x
8393  11b0 2604          	jrne	L4171
8394  11b2 1e01          	ldw	x,(OFST+1,sp)
8395  11b4 260e          	jrne	L6171
8396  11b6               L4171:
8397  11b6 ae082a        	ldw	x,#2090
8398  11b9 89            	pushw	x
8399  11ba 5f            	clrw	x
8400  11bb 89            	pushw	x
8401  11bc ae0000        	ldw	x,#L37
8402  11bf cd0000        	call	_assert_failed
8404  11c2 5b04          	addw	sp,#4
8405  11c4               L6171:
8406                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8408  11c4 7b02          	ld	a,(OFST+2,sp)
8409  11c6 43            	cpl	a
8410  11c7 c75255        	ld	21077,a
8411                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8411                     ; 2095                         (uint8_t)0x1E);
8413  11ca 7b01          	ld	a,(OFST+1,sp)
8414  11cc 43            	cpl	a
8415  11cd a41e          	and	a,#30
8416  11cf c75256        	ld	21078,a
8417                     ; 2096 }
8420  11d2 85            	popw	x
8421  11d3 81            	ret	
8482                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8482                     ; 2113 {
8483                     	switch	.text
8484  11d4               _TIM1_GetITStatus:
8486  11d4 88            	push	a
8487  11d5 89            	pushw	x
8488       00000002      OFST:	set	2
8491                     ; 2114   ITStatus bitstatus = RESET;
8493                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8497                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8499  11d6 a101          	cp	a,#1
8500  11d8 272a          	jreq	L0371
8501  11da a102          	cp	a,#2
8502  11dc 2726          	jreq	L0371
8503  11de a104          	cp	a,#4
8504  11e0 2722          	jreq	L0371
8505  11e2 a108          	cp	a,#8
8506  11e4 271e          	jreq	L0371
8507  11e6 a110          	cp	a,#16
8508  11e8 271a          	jreq	L0371
8509  11ea a120          	cp	a,#32
8510  11ec 2716          	jreq	L0371
8511  11ee a140          	cp	a,#64
8512  11f0 2712          	jreq	L0371
8513  11f2 a180          	cp	a,#128
8514  11f4 270e          	jreq	L0371
8515  11f6 ae0846        	ldw	x,#2118
8516  11f9 89            	pushw	x
8517  11fa 5f            	clrw	x
8518  11fb 89            	pushw	x
8519  11fc ae0000        	ldw	x,#L37
8520  11ff cd0000        	call	_assert_failed
8522  1202 5b04          	addw	sp,#4
8523  1204               L0371:
8524                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8526  1204 c65255        	ld	a,21077
8527  1207 1403          	and	a,(OFST+1,sp)
8528  1209 6b01          	ld	(OFST-1,sp),a
8529                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8531  120b c65254        	ld	a,21076
8532  120e 1403          	and	a,(OFST+1,sp)
8533  1210 6b02          	ld	(OFST+0,sp),a
8534                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8536  1212 7b01          	ld	a,(OFST-1,sp)
8537  1214 2708          	jreq	L1243
8539  1216 7b02          	ld	a,(OFST+0,sp)
8540  1218 2704          	jreq	L1243
8541                     ; 2126     bitstatus = SET;
8543  121a a601          	ld	a,#1
8545  121c 2001          	jra	L3243
8546  121e               L1243:
8547                     ; 2130     bitstatus = RESET;
8549  121e 4f            	clr	a
8550  121f               L3243:
8551                     ; 2132   return (ITStatus)(bitstatus);
8555  121f 5b03          	addw	sp,#3
8556  1221 81            	ret	
8593                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8593                     ; 2150 {
8594                     	switch	.text
8595  1222               _TIM1_ClearITPendingBit:
8597  1222 88            	push	a
8598       00000000      OFST:	set	0
8601                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8603  1223 4d            	tnz	a
8604  1224 260e          	jrne	L0471
8605  1226 ae0868        	ldw	x,#2152
8606  1229 89            	pushw	x
8607  122a 5f            	clrw	x
8608  122b 89            	pushw	x
8609  122c ae0000        	ldw	x,#L37
8610  122f cd0000        	call	_assert_failed
8612  1232 5b04          	addw	sp,#4
8613  1234               L0471:
8614                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8616  1234 7b01          	ld	a,(OFST+1,sp)
8617  1236 43            	cpl	a
8618  1237 c75255        	ld	21077,a
8619                     ; 2156 }
8622  123a 84            	pop	a
8623  123b 81            	ret	
8669                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8669                     ; 2175                        uint8_t TIM1_ICSelection,
8669                     ; 2176                        uint8_t TIM1_ICFilter)
8669                     ; 2177 {
8670                     	switch	.text
8671  123c               L3_TI1_Config:
8673  123c 89            	pushw	x
8674       00000001      OFST:	set	1
8677                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8679  123d 7211525c      	bres	21084,#0
8680  1241 88            	push	a
8681                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8681                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8683  1242 7b06          	ld	a,(OFST+5,sp)
8684  1244 97            	ld	xl,a
8685  1245 a610          	ld	a,#16
8686  1247 42            	mul	x,a
8687  1248 9f            	ld	a,xl
8688  1249 1a03          	or	a,(OFST+2,sp)
8689  124b 6b01          	ld	(OFST+0,sp),a
8690  124d c65258        	ld	a,21080
8691  1250 a40c          	and	a,#12
8692  1252 1a01          	or	a,(OFST+0,sp)
8693  1254 c75258        	ld	21080,a
8694                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8696  1257 7b02          	ld	a,(OFST+1,sp)
8697  1259 2706          	jreq	L3643
8698                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8700  125b 7212525c      	bset	21084,#1
8702  125f 2004          	jra	L5643
8703  1261               L3643:
8704                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8706  1261 7213525c      	bres	21084,#1
8707  1265               L5643:
8708                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8710  1265 7210525c      	bset	21084,#0
8711                     ; 2197 }
8714  1269 5b03          	addw	sp,#3
8715  126b 81            	ret	
8761                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8761                     ; 2216                        uint8_t TIM1_ICSelection,
8761                     ; 2217                        uint8_t TIM1_ICFilter)
8761                     ; 2218 {
8762                     	switch	.text
8763  126c               L5_TI2_Config:
8765  126c 89            	pushw	x
8766       00000001      OFST:	set	1
8769                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8771  126d 7219525c      	bres	21084,#4
8772  1271 88            	push	a
8773                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8773                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8775  1272 7b06          	ld	a,(OFST+5,sp)
8776  1274 97            	ld	xl,a
8777  1275 a610          	ld	a,#16
8778  1277 42            	mul	x,a
8779  1278 9f            	ld	a,xl
8780  1279 1a03          	or	a,(OFST+2,sp)
8781  127b 6b01          	ld	(OFST+0,sp),a
8782  127d c65259        	ld	a,21081
8783  1280 a40c          	and	a,#12
8784  1282 1a01          	or	a,(OFST+0,sp)
8785  1284 c75259        	ld	21081,a
8786                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8788  1287 7b02          	ld	a,(OFST+1,sp)
8789  1289 2706          	jreq	L7053
8790                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8792  128b 721a525c      	bset	21084,#5
8794  128f 2004          	jra	L1153
8795  1291               L7053:
8796                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8798  1291 721b525c      	bres	21084,#5
8799  1295               L1153:
8800                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8802  1295 7218525c      	bset	21084,#4
8803                     ; 2236 }
8806  1299 5b03          	addw	sp,#3
8807  129b 81            	ret	
8853                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8853                     ; 2255                        uint8_t TIM1_ICSelection,
8853                     ; 2256                        uint8_t TIM1_ICFilter)
8853                     ; 2257 {
8854                     	switch	.text
8855  129c               L7_TI3_Config:
8857  129c 89            	pushw	x
8858       00000001      OFST:	set	1
8861                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8863  129d 7211525d      	bres	21085,#0
8864  12a1 88            	push	a
8865                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8865                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8867  12a2 7b06          	ld	a,(OFST+5,sp)
8868  12a4 97            	ld	xl,a
8869  12a5 a610          	ld	a,#16
8870  12a7 42            	mul	x,a
8871  12a8 9f            	ld	a,xl
8872  12a9 1a03          	or	a,(OFST+2,sp)
8873  12ab 6b01          	ld	(OFST+0,sp),a
8874  12ad c6525a        	ld	a,21082
8875  12b0 a40c          	and	a,#12
8876  12b2 1a01          	or	a,(OFST+0,sp)
8877  12b4 c7525a        	ld	21082,a
8878                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8880  12b7 7b02          	ld	a,(OFST+1,sp)
8881  12b9 2706          	jreq	L3353
8882                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8884  12bb 7212525d      	bset	21085,#1
8886  12bf 2004          	jra	L5353
8887  12c1               L3353:
8888                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8890  12c1 7213525d      	bres	21085,#1
8891  12c5               L5353:
8892                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8894  12c5 7210525d      	bset	21085,#0
8895                     ; 2276 }
8898  12c9 5b03          	addw	sp,#3
8899  12cb 81            	ret	
8945                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8945                     ; 2295                        uint8_t TIM1_ICSelection,
8945                     ; 2296                        uint8_t TIM1_ICFilter)
8945                     ; 2297 {
8946                     	switch	.text
8947  12cc               L11_TI4_Config:
8949  12cc 89            	pushw	x
8950       00000001      OFST:	set	1
8953                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8955  12cd 7219525d      	bres	21085,#4
8956  12d1 88            	push	a
8957                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8957                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8959  12d2 7b06          	ld	a,(OFST+5,sp)
8960  12d4 97            	ld	xl,a
8961  12d5 a610          	ld	a,#16
8962  12d7 42            	mul	x,a
8963  12d8 9f            	ld	a,xl
8964  12d9 1a03          	or	a,(OFST+2,sp)
8965  12db 6b01          	ld	(OFST+0,sp),a
8966  12dd c6525b        	ld	a,21083
8967  12e0 a40c          	and	a,#12
8968  12e2 1a01          	or	a,(OFST+0,sp)
8969  12e4 c7525b        	ld	21083,a
8970                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8972  12e7 7b02          	ld	a,(OFST+1,sp)
8973  12e9 2706          	jreq	L7553
8974                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8976  12eb 721a525d      	bset	21085,#5
8978  12ef 2004          	jra	L1653
8979  12f1               L7553:
8980                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8982  12f1 721b525d      	bres	21085,#5
8983  12f5               L1653:
8984                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8986  12f5 7218525d      	bset	21085,#4
8987                     ; 2317 }
8990  12f9 5b03          	addw	sp,#3
8991  12fb 81            	ret	
9004                     	xdef	_TIM1_ClearITPendingBit
9005                     	xdef	_TIM1_GetITStatus
9006                     	xdef	_TIM1_ClearFlag
9007                     	xdef	_TIM1_GetFlagStatus
9008                     	xdef	_TIM1_GetPrescaler
9009                     	xdef	_TIM1_GetCounter
9010                     	xdef	_TIM1_GetCapture4
9011                     	xdef	_TIM1_GetCapture3
9012                     	xdef	_TIM1_GetCapture2
9013                     	xdef	_TIM1_GetCapture1
9014                     	xdef	_TIM1_SetIC4Prescaler
9015                     	xdef	_TIM1_SetIC3Prescaler
9016                     	xdef	_TIM1_SetIC2Prescaler
9017                     	xdef	_TIM1_SetIC1Prescaler
9018                     	xdef	_TIM1_SetCompare4
9019                     	xdef	_TIM1_SetCompare3
9020                     	xdef	_TIM1_SetCompare2
9021                     	xdef	_TIM1_SetCompare1
9022                     	xdef	_TIM1_SetAutoreload
9023                     	xdef	_TIM1_SetCounter
9024                     	xdef	_TIM1_SelectOCxM
9025                     	xdef	_TIM1_CCxNCmd
9026                     	xdef	_TIM1_CCxCmd
9027                     	xdef	_TIM1_OC4PolarityConfig
9028                     	xdef	_TIM1_OC3NPolarityConfig
9029                     	xdef	_TIM1_OC3PolarityConfig
9030                     	xdef	_TIM1_OC2NPolarityConfig
9031                     	xdef	_TIM1_OC2PolarityConfig
9032                     	xdef	_TIM1_OC1NPolarityConfig
9033                     	xdef	_TIM1_OC1PolarityConfig
9034                     	xdef	_TIM1_GenerateEvent
9035                     	xdef	_TIM1_OC4FastConfig
9036                     	xdef	_TIM1_OC3FastConfig
9037                     	xdef	_TIM1_OC2FastConfig
9038                     	xdef	_TIM1_OC1FastConfig
9039                     	xdef	_TIM1_OC4PreloadConfig
9040                     	xdef	_TIM1_OC3PreloadConfig
9041                     	xdef	_TIM1_OC2PreloadConfig
9042                     	xdef	_TIM1_OC1PreloadConfig
9043                     	xdef	_TIM1_CCPreloadControl
9044                     	xdef	_TIM1_SelectCOM
9045                     	xdef	_TIM1_ARRPreloadConfig
9046                     	xdef	_TIM1_ForcedOC4Config
9047                     	xdef	_TIM1_ForcedOC3Config
9048                     	xdef	_TIM1_ForcedOC2Config
9049                     	xdef	_TIM1_ForcedOC1Config
9050                     	xdef	_TIM1_CounterModeConfig
9051                     	xdef	_TIM1_PrescalerConfig
9052                     	xdef	_TIM1_EncoderInterfaceConfig
9053                     	xdef	_TIM1_SelectMasterSlaveMode
9054                     	xdef	_TIM1_SelectSlaveMode
9055                     	xdef	_TIM1_SelectOutputTrigger
9056                     	xdef	_TIM1_SelectOnePulseMode
9057                     	xdef	_TIM1_SelectHallSensor
9058                     	xdef	_TIM1_UpdateRequestConfig
9059                     	xdef	_TIM1_UpdateDisableConfig
9060                     	xdef	_TIM1_SelectInputTrigger
9061                     	xdef	_TIM1_TIxExternalClockConfig
9062                     	xdef	_TIM1_ETRConfig
9063                     	xdef	_TIM1_ETRClockMode2Config
9064                     	xdef	_TIM1_ETRClockMode1Config
9065                     	xdef	_TIM1_InternalClockConfig
9066                     	xdef	_TIM1_ITConfig
9067                     	xdef	_TIM1_CtrlPWMOutputs
9068                     	xdef	_TIM1_Cmd
9069                     	xdef	_TIM1_PWMIConfig
9070                     	xdef	_TIM1_ICInit
9071                     	xdef	_TIM1_BDTRConfig
9072                     	xdef	_TIM1_OC4Init
9073                     	xdef	_TIM1_OC3Init
9074                     	xdef	_TIM1_OC2Init
9075                     	xdef	_TIM1_OC1Init
9076                     	xdef	_TIM1_TimeBaseInit
9077                     	xdef	_TIM1_DeInit
9078                     	xref	_assert_failed
9079                     .const:	section	.text
9080  0000               L37:
9081  0000 6c6962726172  	dc.b	"library\stm8s_tim1"
9082  0012 2e6300        	dc.b	".c",0
9102                     	end
