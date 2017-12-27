   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  18                     .const:	section	.text
  19  0000               _HSIDivFactor:
  20  0000 01            	dc.b	1
  21  0001 02            	dc.b	2
  22  0002 04            	dc.b	4
  23  0003 08            	dc.b	8
  24  0004               _CLKPrescTable:
  25  0004 01            	dc.b	1
  26  0005 02            	dc.b	2
  27  0006 04            	dc.b	4
  28  0007 08            	dc.b	8
  29  0008 0a            	dc.b	10
  30  0009 10            	dc.b	16
  31  000a 14            	dc.b	20
  32  000b 28            	dc.b	40
  61                     ; 72 void CLK_DeInit(void)
  61                     ; 73 {
  63                     	switch	.text
  64  0000               _CLK_DeInit:
  68                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  70  0000 350150c0      	mov	20672,#1
  71                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  73  0004 725f50c1      	clr	20673
  74                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  76  0008 35e150c4      	mov	20676,#225
  77                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  79  000c 725f50c5      	clr	20677
  80                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  82  0010 351850c6      	mov	20678,#24
  83                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  85  0014 35ff50c7      	mov	20679,#255
  86                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  88  0018 35ff50ca      	mov	20682,#255
  89                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  91  001c 725f50c8      	clr	20680
  92                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  94  0020 725f50c9      	clr	20681
  96  0024               L52:
  97                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  99  0024 720050c9fb    	btjt	20681,#0,L52
 100                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 102  0029 725f50c9      	clr	20681
 103                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 105  002d 725f50cc      	clr	20684
 106                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 108  0031 725f50cd      	clr	20685
 109                     ; 88 }
 112  0035 81            	ret	
 169                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 169                     ; 100 {
 170                     	switch	.text
 171  0036               _CLK_FastHaltWakeUpCmd:
 173  0036 88            	push	a
 174       00000000      OFST:	set	0
 177                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 179  0037 4d            	tnz	a
 180  0038 2711          	jreq	L41
 181  003a 4a            	dec	a
 182  003b 270e          	jreq	L41
 183  003d ae0066        	ldw	x,#102
 184  0040 89            	pushw	x
 185  0041 5f            	clrw	x
 186  0042 89            	pushw	x
 187  0043 ae000c        	ldw	x,#L75
 188  0046 cd0000        	call	_assert_failed
 190  0049 5b04          	addw	sp,#4
 191  004b               L41:
 192                     ; 104   if (NewState != DISABLE)
 194  004b 7b01          	ld	a,(OFST+1,sp)
 195  004d 2706          	jreq	L16
 196                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 198  004f 721450c0      	bset	20672,#2
 200  0053 2004          	jra	L36
 201  0055               L16:
 202                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 204  0055 721550c0      	bres	20672,#2
 205  0059               L36:
 206                     ; 114 }
 209  0059 84            	pop	a
 210  005a 81            	ret	
 246                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 246                     ; 122 {
 247                     	switch	.text
 248  005b               _CLK_HSECmd:
 250  005b 88            	push	a
 251       00000000      OFST:	set	0
 254                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 256  005c 4d            	tnz	a
 257  005d 2711          	jreq	L62
 258  005f 4a            	dec	a
 259  0060 270e          	jreq	L62
 260  0062 ae007c        	ldw	x,#124
 261  0065 89            	pushw	x
 262  0066 5f            	clrw	x
 263  0067 89            	pushw	x
 264  0068 ae000c        	ldw	x,#L75
 265  006b cd0000        	call	_assert_failed
 267  006e 5b04          	addw	sp,#4
 268  0070               L62:
 269                     ; 126   if (NewState != DISABLE)
 271  0070 7b01          	ld	a,(OFST+1,sp)
 272  0072 2706          	jreq	L301
 273                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 275  0074 721050c1      	bset	20673,#0
 277  0078 2004          	jra	L501
 278  007a               L301:
 279                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 281  007a 721150c1      	bres	20673,#0
 282  007e               L501:
 283                     ; 136 }
 286  007e 84            	pop	a
 287  007f 81            	ret	
 323                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 323                     ; 144 {
 324                     	switch	.text
 325  0080               _CLK_HSICmd:
 327  0080 88            	push	a
 328       00000000      OFST:	set	0
 331                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 333  0081 4d            	tnz	a
 334  0082 2711          	jreq	L04
 335  0084 4a            	dec	a
 336  0085 270e          	jreq	L04
 337  0087 ae0092        	ldw	x,#146
 338  008a 89            	pushw	x
 339  008b 5f            	clrw	x
 340  008c 89            	pushw	x
 341  008d ae000c        	ldw	x,#L75
 342  0090 cd0000        	call	_assert_failed
 344  0093 5b04          	addw	sp,#4
 345  0095               L04:
 346                     ; 148   if (NewState != DISABLE)
 348  0095 7b01          	ld	a,(OFST+1,sp)
 349  0097 2706          	jreq	L521
 350                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 352  0099 721050c0      	bset	20672,#0
 354  009d 2004          	jra	L721
 355  009f               L521:
 356                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 358  009f 721150c0      	bres	20672,#0
 359  00a3               L721:
 360                     ; 158 }
 363  00a3 84            	pop	a
 364  00a4 81            	ret	
 400                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 400                     ; 167 {
 401                     	switch	.text
 402  00a5               _CLK_LSICmd:
 404  00a5 88            	push	a
 405       00000000      OFST:	set	0
 408                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 410  00a6 4d            	tnz	a
 411  00a7 2711          	jreq	L25
 412  00a9 4a            	dec	a
 413  00aa 270e          	jreq	L25
 414  00ac ae00a9        	ldw	x,#169
 415  00af 89            	pushw	x
 416  00b0 5f            	clrw	x
 417  00b1 89            	pushw	x
 418  00b2 ae000c        	ldw	x,#L75
 419  00b5 cd0000        	call	_assert_failed
 421  00b8 5b04          	addw	sp,#4
 422  00ba               L25:
 423                     ; 171   if (NewState != DISABLE)
 425  00ba 7b01          	ld	a,(OFST+1,sp)
 426  00bc 2706          	jreq	L741
 427                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 429  00be 721650c0      	bset	20672,#3
 431  00c2 2004          	jra	L151
 432  00c4               L741:
 433                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 435  00c4 721750c0      	bres	20672,#3
 436  00c8               L151:
 437                     ; 181 }
 440  00c8 84            	pop	a
 441  00c9 81            	ret	
 477                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 477                     ; 190 {
 478                     	switch	.text
 479  00ca               _CLK_CCOCmd:
 481  00ca 88            	push	a
 482       00000000      OFST:	set	0
 485                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 487  00cb 4d            	tnz	a
 488  00cc 2711          	jreq	L46
 489  00ce 4a            	dec	a
 490  00cf 270e          	jreq	L46
 491  00d1 ae00c0        	ldw	x,#192
 492  00d4 89            	pushw	x
 493  00d5 5f            	clrw	x
 494  00d6 89            	pushw	x
 495  00d7 ae000c        	ldw	x,#L75
 496  00da cd0000        	call	_assert_failed
 498  00dd 5b04          	addw	sp,#4
 499  00df               L46:
 500                     ; 194   if (NewState != DISABLE)
 502  00df 7b01          	ld	a,(OFST+1,sp)
 503  00e1 2706          	jreq	L171
 504                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 506  00e3 721050c9      	bset	20681,#0
 508  00e7 2004          	jra	L371
 509  00e9               L171:
 510                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 512  00e9 721150c9      	bres	20681,#0
 513  00ed               L371:
 514                     ; 204 }
 517  00ed 84            	pop	a
 518  00ee 81            	ret	
 554                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 554                     ; 214 {
 555                     	switch	.text
 556  00ef               _CLK_ClockSwitchCmd:
 558  00ef 88            	push	a
 559       00000000      OFST:	set	0
 562                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 564  00f0 4d            	tnz	a
 565  00f1 2711          	jreq	L67
 566  00f3 4a            	dec	a
 567  00f4 270e          	jreq	L67
 568  00f6 ae00d8        	ldw	x,#216
 569  00f9 89            	pushw	x
 570  00fa 5f            	clrw	x
 571  00fb 89            	pushw	x
 572  00fc ae000c        	ldw	x,#L75
 573  00ff cd0000        	call	_assert_failed
 575  0102 5b04          	addw	sp,#4
 576  0104               L67:
 577                     ; 218   if (NewState != DISABLE )
 579  0104 7b01          	ld	a,(OFST+1,sp)
 580  0106 2706          	jreq	L312
 581                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 583  0108 721250c5      	bset	20677,#1
 585  010c 2004          	jra	L512
 586  010e               L312:
 587                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 589  010e 721350c5      	bres	20677,#1
 590  0112               L512:
 591                     ; 228 }
 594  0112 84            	pop	a
 595  0113 81            	ret	
 632                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 632                     ; 239 {
 633                     	switch	.text
 634  0114               _CLK_SlowActiveHaltWakeUpCmd:
 636  0114 88            	push	a
 637       00000000      OFST:	set	0
 640                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 642  0115 4d            	tnz	a
 643  0116 2711          	jreq	L011
 644  0118 4a            	dec	a
 645  0119 270e          	jreq	L011
 646  011b ae00f1        	ldw	x,#241
 647  011e 89            	pushw	x
 648  011f 5f            	clrw	x
 649  0120 89            	pushw	x
 650  0121 ae000c        	ldw	x,#L75
 651  0124 cd0000        	call	_assert_failed
 653  0127 5b04          	addw	sp,#4
 654  0129               L011:
 655                     ; 243   if (NewState != DISABLE)
 657  0129 7b01          	ld	a,(OFST+1,sp)
 658  012b 2706          	jreq	L532
 659                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 661  012d 721a50c0      	bset	20672,#5
 663  0131 2004          	jra	L732
 664  0133               L532:
 665                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 667  0133 721b50c0      	bres	20672,#5
 668  0137               L732:
 669                     ; 253 }
 672  0137 84            	pop	a
 673  0138 81            	ret	
 833                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 833                     ; 264 {
 834                     	switch	.text
 835  0139               _CLK_PeripheralClockConfig:
 837  0139 89            	pushw	x
 838       00000000      OFST:	set	0
 841                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 843  013a 9f            	ld	a,xl
 844  013b 4d            	tnz	a
 845  013c 2712          	jreq	L221
 846  013e 9f            	ld	a,xl
 847  013f 4a            	dec	a
 848  0140 270e          	jreq	L221
 849  0142 ae010a        	ldw	x,#266
 850  0145 89            	pushw	x
 851  0146 5f            	clrw	x
 852  0147 89            	pushw	x
 853  0148 ae000c        	ldw	x,#L75
 854  014b cd0000        	call	_assert_failed
 856  014e 5b04          	addw	sp,#4
 857  0150               L221:
 858                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 860  0150 7b01          	ld	a,(OFST+1,sp)
 861  0152 2738          	jreq	L231
 862  0154 a101          	cp	a,#1
 863  0156 2734          	jreq	L231
 864  0158 a103          	cp	a,#3
 865  015a 2730          	jreq	L231
 866  015c a104          	cp	a,#4
 867  015e 272c          	jreq	L231
 868  0160 a105          	cp	a,#5
 869  0162 2728          	jreq	L231
 870  0164 a104          	cp	a,#4
 871  0166 2724          	jreq	L231
 872  0168 a106          	cp	a,#6
 873  016a 2720          	jreq	L231
 874  016c a107          	cp	a,#7
 875  016e 271c          	jreq	L231
 876  0170 a117          	cp	a,#23
 877  0172 2718          	jreq	L231
 878  0174 a113          	cp	a,#19
 879  0176 2714          	jreq	L231
 880  0178 a112          	cp	a,#18
 881  017a 2710          	jreq	L231
 882  017c ae010b        	ldw	x,#267
 883  017f 89            	pushw	x
 884  0180 5f            	clrw	x
 885  0181 89            	pushw	x
 886  0182 ae000c        	ldw	x,#L75
 887  0185 cd0000        	call	_assert_failed
 889  0188 5b04          	addw	sp,#4
 890  018a 7b01          	ld	a,(OFST+1,sp)
 891  018c               L231:
 892                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 894  018c a510          	bcp	a,#16
 895  018e 262c          	jrne	L323
 896                     ; 271     if (NewState != DISABLE)
 898  0190 0d02          	tnz	(OFST+2,sp)
 899  0192 2712          	jreq	L523
 900                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 902  0194 a40f          	and	a,#15
 903  0196 5f            	clrw	x
 904  0197 97            	ld	xl,a
 905  0198 a601          	ld	a,#1
 906  019a 5d            	tnzw	x
 907  019b 2704          	jreq	L631
 908  019d               L041:
 909  019d 48            	sll	a
 910  019e 5a            	decw	x
 911  019f 26fc          	jrne	L041
 912  01a1               L631:
 913  01a1 ca50c7        	or	a,20679
 915  01a4 2011          	jp	LC002
 916  01a6               L523:
 917                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 919  01a6 a40f          	and	a,#15
 920  01a8 5f            	clrw	x
 921  01a9 97            	ld	xl,a
 922  01aa a601          	ld	a,#1
 923  01ac 5d            	tnzw	x
 924  01ad 2704          	jreq	L241
 925  01af               L441:
 926  01af 48            	sll	a
 927  01b0 5a            	decw	x
 928  01b1 26fc          	jrne	L441
 929  01b3               L241:
 930  01b3 43            	cpl	a
 931  01b4 c450c7        	and	a,20679
 932  01b7               LC002:
 933  01b7 c750c7        	ld	20679,a
 934  01ba 202a          	jra	L133
 935  01bc               L323:
 936                     ; 284     if (NewState != DISABLE)
 938  01bc 0d02          	tnz	(OFST+2,sp)
 939  01be 2712          	jreq	L333
 940                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 942  01c0 a40f          	and	a,#15
 943  01c2 5f            	clrw	x
 944  01c3 97            	ld	xl,a
 945  01c4 a601          	ld	a,#1
 946  01c6 5d            	tnzw	x
 947  01c7 2704          	jreq	L641
 948  01c9               L051:
 949  01c9 48            	sll	a
 950  01ca 5a            	decw	x
 951  01cb 26fc          	jrne	L051
 952  01cd               L641:
 953  01cd ca50ca        	or	a,20682
 955  01d0 2011          	jp	LC001
 956  01d2               L333:
 957                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 959  01d2 a40f          	and	a,#15
 960  01d4 5f            	clrw	x
 961  01d5 97            	ld	xl,a
 962  01d6 a601          	ld	a,#1
 963  01d8 5d            	tnzw	x
 964  01d9 2704          	jreq	L251
 965  01db               L451:
 966  01db 48            	sll	a
 967  01dc 5a            	decw	x
 968  01dd 26fc          	jrne	L451
 969  01df               L251:
 970  01df 43            	cpl	a
 971  01e0 c450ca        	and	a,20682
 972  01e3               LC001:
 973  01e3 c750ca        	ld	20682,a
 974  01e6               L133:
 975                     ; 295 }
 978  01e6 85            	popw	x
 979  01e7 81            	ret	
1166                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1166                     ; 310 {
1167                     	switch	.text
1168  01e8               _CLK_ClockSwitchConfig:
1170  01e8 89            	pushw	x
1171  01e9 5204          	subw	sp,#4
1172       00000004      OFST:	set	4
1175                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1177  01eb aeffff        	ldw	x,#65535
1178  01ee 1f03          	ldw	(OFST-1,sp),x
1179                     ; 313   ErrorStatus Swif = ERROR;
1181                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1183  01f0 7b06          	ld	a,(OFST+2,sp)
1184  01f2 a1e1          	cp	a,#225
1185  01f4 2716          	jreq	L461
1186  01f6 a1d2          	cp	a,#210
1187  01f8 2712          	jreq	L461
1188  01fa a1b4          	cp	a,#180
1189  01fc 270e          	jreq	L461
1190  01fe ae013c        	ldw	x,#316
1191  0201 89            	pushw	x
1192  0202 5f            	clrw	x
1193  0203 89            	pushw	x
1194  0204 ae000c        	ldw	x,#L75
1195  0207 cd0000        	call	_assert_failed
1197  020a 5b04          	addw	sp,#4
1198  020c               L461:
1199                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1201  020c 7b05          	ld	a,(OFST+1,sp)
1202  020e 2711          	jreq	L471
1203  0210 4a            	dec	a
1204  0211 270e          	jreq	L471
1205  0213 ae013d        	ldw	x,#317
1206  0216 89            	pushw	x
1207  0217 5f            	clrw	x
1208  0218 89            	pushw	x
1209  0219 ae000c        	ldw	x,#L75
1210  021c cd0000        	call	_assert_failed
1212  021f 5b04          	addw	sp,#4
1213  0221               L471:
1214                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1216  0221 7b09          	ld	a,(OFST+5,sp)
1217  0223 2711          	jreq	L402
1218  0225 4a            	dec	a
1219  0226 270e          	jreq	L402
1220  0228 ae013e        	ldw	x,#318
1221  022b 89            	pushw	x
1222  022c 5f            	clrw	x
1223  022d 89            	pushw	x
1224  022e ae000c        	ldw	x,#L75
1225  0231 cd0000        	call	_assert_failed
1227  0234 5b04          	addw	sp,#4
1228  0236               L402:
1229                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1231  0236 7b0a          	ld	a,(OFST+6,sp)
1232  0238 2711          	jreq	L412
1233  023a 4a            	dec	a
1234  023b 270e          	jreq	L412
1235  023d ae013f        	ldw	x,#319
1236  0240 89            	pushw	x
1237  0241 5f            	clrw	x
1238  0242 89            	pushw	x
1239  0243 ae000c        	ldw	x,#L75
1240  0246 cd0000        	call	_assert_failed
1242  0249 5b04          	addw	sp,#4
1243  024b               L412:
1244                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1246  024b c650c3        	ld	a,20675
1247  024e 6b01          	ld	(OFST-3,sp),a
1248                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1250  0250 7b05          	ld	a,(OFST+1,sp)
1251  0252 4a            	dec	a
1252  0253 263d          	jrne	L544
1253                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1255  0255 721250c5      	bset	20677,#1
1256                     ; 331     if (ITState != DISABLE)
1258  0259 7b09          	ld	a,(OFST+5,sp)
1259  025b 2706          	jreq	L744
1260                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1262  025d 721450c5      	bset	20677,#2
1264  0261 2004          	jra	L154
1265  0263               L744:
1266                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1268  0263 721550c5      	bres	20677,#2
1269  0267               L154:
1270                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1272  0267 7b06          	ld	a,(OFST+2,sp)
1273  0269 c750c4        	ld	20676,a
1275  026c 2003          	jra	L754
1276  026e               L354:
1277                     ; 346       DownCounter--;
1279  026e 5a            	decw	x
1280  026f 1f03          	ldw	(OFST-1,sp),x
1281  0271               L754:
1282                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1284  0271 720150c504    	btjf	20677,#0,L364
1286  0276 1e03          	ldw	x,(OFST-1,sp)
1287  0278 26f4          	jrne	L354
1288  027a               L364:
1289                     ; 349     if(DownCounter != 0)
1291  027a 1e03          	ldw	x,(OFST-1,sp)
1292                     ; 351       Swif = SUCCESS;
1294  027c 263d          	jrne	LC004
1295  027e               L564:
1296                     ; 355       Swif = ERROR;
1299  027e 0f02          	clr	(OFST-2,sp)
1300  0280               L174:
1301                     ; 390   if(Swif != ERROR)
1303  0280 275d          	jreq	L515
1304                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1306  0282 7b0a          	ld	a,(OFST+6,sp)
1307  0284 263b          	jrne	L715
1309  0286 7b01          	ld	a,(OFST-3,sp)
1310  0288 a1e1          	cp	a,#225
1311  028a 2635          	jrne	L715
1312                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1314  028c 721150c0      	bres	20672,#0
1316  0290 204d          	jra	L515
1317  0292               L544:
1318                     ; 361     if (ITState != DISABLE)
1320  0292 7b09          	ld	a,(OFST+5,sp)
1321  0294 2706          	jreq	L374
1322                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1324  0296 721450c5      	bset	20677,#2
1326  029a 2004          	jra	L574
1327  029c               L374:
1328                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1330  029c 721550c5      	bres	20677,#2
1331  02a0               L574:
1332                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1334  02a0 7b06          	ld	a,(OFST+2,sp)
1335  02a2 c750c4        	ld	20676,a
1337  02a5 2003          	jra	L305
1338  02a7               L774:
1339                     ; 376       DownCounter--;
1341  02a7 5a            	decw	x
1342  02a8 1f03          	ldw	(OFST-1,sp),x
1343  02aa               L305:
1344                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1346  02aa 720750c504    	btjf	20677,#3,L705
1348  02af 1e03          	ldw	x,(OFST-1,sp)
1349  02b1 26f4          	jrne	L774
1350  02b3               L705:
1351                     ; 379     if(DownCounter != 0)
1353  02b3 1e03          	ldw	x,(OFST-1,sp)
1354  02b5 27c7          	jreq	L564
1355                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1357  02b7 721250c5      	bset	20677,#1
1358                     ; 383       Swif = SUCCESS;
1360  02bb               LC004:
1362  02bb a601          	ld	a,#1
1363  02bd 6b02          	ld	(OFST-2,sp),a
1365  02bf 20bf          	jra	L174
1366                     ; 387       Swif = ERROR;
1367  02c1               L715:
1368                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1370  02c1 7b0a          	ld	a,(OFST+6,sp)
1371  02c3 260c          	jrne	L325
1373  02c5 7b01          	ld	a,(OFST-3,sp)
1374  02c7 a1d2          	cp	a,#210
1375  02c9 2606          	jrne	L325
1376                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1378  02cb 721750c0      	bres	20672,#3
1380  02cf 200e          	jra	L515
1381  02d1               L325:
1382                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1384  02d1 7b0a          	ld	a,(OFST+6,sp)
1385  02d3 260a          	jrne	L515
1387  02d5 7b01          	ld	a,(OFST-3,sp)
1388  02d7 a1b4          	cp	a,#180
1389  02d9 2604          	jrne	L515
1390                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1392  02db 721150c1      	bres	20673,#0
1393  02df               L515:
1394                     ; 406   return(Swif);
1396  02df 7b02          	ld	a,(OFST-2,sp)
1399  02e1 5b06          	addw	sp,#6
1400  02e3 81            	ret	
1539                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1539                     ; 416 {
1540                     	switch	.text
1541  02e4               _CLK_HSIPrescalerConfig:
1543  02e4 88            	push	a
1544       00000000      OFST:	set	0
1547                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1549  02e5 4d            	tnz	a
1550  02e6 271a          	jreq	L622
1551  02e8 a108          	cp	a,#8
1552  02ea 2716          	jreq	L622
1553  02ec a110          	cp	a,#16
1554  02ee 2712          	jreq	L622
1555  02f0 a118          	cp	a,#24
1556  02f2 270e          	jreq	L622
1557  02f4 ae01a2        	ldw	x,#418
1558  02f7 89            	pushw	x
1559  02f8 5f            	clrw	x
1560  02f9 89            	pushw	x
1561  02fa ae000c        	ldw	x,#L75
1562  02fd cd0000        	call	_assert_failed
1564  0300 5b04          	addw	sp,#4
1565  0302               L622:
1566                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1568  0302 c650c6        	ld	a,20678
1569  0305 a4e7          	and	a,#231
1570  0307 c750c6        	ld	20678,a
1571                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1573  030a c650c6        	ld	a,20678
1574  030d 1a01          	or	a,(OFST+1,sp)
1575  030f c750c6        	ld	20678,a
1576                     ; 425 }
1579  0312 84            	pop	a
1580  0313 81            	ret	
1716                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1716                     ; 437 {
1717                     	switch	.text
1718  0314               _CLK_CCOConfig:
1720  0314 88            	push	a
1721       00000000      OFST:	set	0
1724                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1726  0315 4d            	tnz	a
1727  0316 273e          	jreq	L042
1728  0318 a104          	cp	a,#4
1729  031a 273a          	jreq	L042
1730  031c a102          	cp	a,#2
1731  031e 2736          	jreq	L042
1732  0320 a108          	cp	a,#8
1733  0322 2732          	jreq	L042
1734  0324 a10a          	cp	a,#10
1735  0326 272e          	jreq	L042
1736  0328 a10c          	cp	a,#12
1737  032a 272a          	jreq	L042
1738  032c a10e          	cp	a,#14
1739  032e 2726          	jreq	L042
1740  0330 a110          	cp	a,#16
1741  0332 2722          	jreq	L042
1742  0334 a112          	cp	a,#18
1743  0336 271e          	jreq	L042
1744  0338 a114          	cp	a,#20
1745  033a 271a          	jreq	L042
1746  033c a116          	cp	a,#22
1747  033e 2716          	jreq	L042
1748  0340 a118          	cp	a,#24
1749  0342 2712          	jreq	L042
1750  0344 a11a          	cp	a,#26
1751  0346 270e          	jreq	L042
1752  0348 ae01b7        	ldw	x,#439
1753  034b 89            	pushw	x
1754  034c 5f            	clrw	x
1755  034d 89            	pushw	x
1756  034e ae000c        	ldw	x,#L75
1757  0351 cd0000        	call	_assert_failed
1759  0354 5b04          	addw	sp,#4
1760  0356               L042:
1761                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1763  0356 c650c9        	ld	a,20681
1764  0359 a4e1          	and	a,#225
1765  035b c750c9        	ld	20681,a
1766                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1768  035e c650c9        	ld	a,20681
1769  0361 1a01          	or	a,(OFST+1,sp)
1770  0363 c750c9        	ld	20681,a
1771                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1773                     ; 449 }
1776  0366 84            	pop	a
1777  0367 721050c9      	bset	20681,#0
1778  036b 81            	ret	
1844                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1844                     ; 460 {
1845                     	switch	.text
1846  036c               _CLK_ITConfig:
1848  036c 89            	pushw	x
1849       00000000      OFST:	set	0
1852                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1854  036d 9f            	ld	a,xl
1855  036e 4d            	tnz	a
1856  036f 2712          	jreq	L252
1857  0371 9f            	ld	a,xl
1858  0372 4a            	dec	a
1859  0373 270e          	jreq	L252
1860  0375 ae01ce        	ldw	x,#462
1861  0378 89            	pushw	x
1862  0379 5f            	clrw	x
1863  037a 89            	pushw	x
1864  037b ae000c        	ldw	x,#L75
1865  037e cd0000        	call	_assert_failed
1867  0381 5b04          	addw	sp,#4
1868  0383               L252:
1869                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1871  0383 7b01          	ld	a,(OFST+1,sp)
1872  0385 a10c          	cp	a,#12
1873  0387 2712          	jreq	L262
1874  0389 a11c          	cp	a,#28
1875  038b 270e          	jreq	L262
1876  038d ae01cf        	ldw	x,#463
1877  0390 89            	pushw	x
1878  0391 5f            	clrw	x
1879  0392 89            	pushw	x
1880  0393 ae000c        	ldw	x,#L75
1881  0396 cd0000        	call	_assert_failed
1883  0399 5b04          	addw	sp,#4
1884  039b               L262:
1885                     ; 465   if (NewState != DISABLE)
1887  039b 7b02          	ld	a,(OFST+2,sp)
1888  039d 2716          	jreq	L527
1889                     ; 467     switch (CLK_IT)
1891  039f 7b01          	ld	a,(OFST+1,sp)
1893                     ; 475     default:
1893                     ; 476       break;
1894  03a1 a00c          	sub	a,#12
1895  03a3 270a          	jreq	L166
1896  03a5 a010          	sub	a,#16
1897  03a7 2620          	jrne	L337
1898                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1898                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1900  03a9 721450c5      	bset	20677,#2
1901                     ; 471       break;
1903  03ad 201a          	jra	L337
1904  03af               L166:
1905                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1905                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1907  03af 721450c8      	bset	20680,#2
1908                     ; 474       break;
1910  03b3 2014          	jra	L337
1911                     ; 475     default:
1911                     ; 476       break;
1914  03b5               L527:
1915                     ; 481     switch (CLK_IT)
1917  03b5 7b01          	ld	a,(OFST+1,sp)
1919                     ; 489     default:
1919                     ; 490       break;
1920  03b7 a00c          	sub	a,#12
1921  03b9 270a          	jreq	L766
1922  03bb a010          	sub	a,#16
1923  03bd 260a          	jrne	L337
1924                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1924                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1926  03bf 721550c5      	bres	20677,#2
1927                     ; 485       break;
1929  03c3 2004          	jra	L337
1930  03c5               L766:
1931                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1931                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1933  03c5 721550c8      	bres	20680,#2
1934                     ; 488       break;
1935  03c9               L337:
1936                     ; 493 }
1939  03c9 85            	popw	x
1940  03ca 81            	ret	
1941                     ; 489     default:
1941                     ; 490       break;
1978                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1978                     ; 501 {
1979                     	switch	.text
1980  03cb               _CLK_SYSCLKConfig:
1982  03cb 88            	push	a
1983       00000000      OFST:	set	0
1986                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1988  03cc 4d            	tnz	a
1989  03cd 273a          	jreq	L472
1990  03cf a108          	cp	a,#8
1991  03d1 2736          	jreq	L472
1992  03d3 a110          	cp	a,#16
1993  03d5 2732          	jreq	L472
1994  03d7 a118          	cp	a,#24
1995  03d9 272e          	jreq	L472
1996  03db a180          	cp	a,#128
1997  03dd 272a          	jreq	L472
1998  03df a181          	cp	a,#129
1999  03e1 2726          	jreq	L472
2000  03e3 a182          	cp	a,#130
2001  03e5 2722          	jreq	L472
2002  03e7 a183          	cp	a,#131
2003  03e9 271e          	jreq	L472
2004  03eb a184          	cp	a,#132
2005  03ed 271a          	jreq	L472
2006  03ef a185          	cp	a,#133
2007  03f1 2716          	jreq	L472
2008  03f3 a186          	cp	a,#134
2009  03f5 2712          	jreq	L472
2010  03f7 a187          	cp	a,#135
2011  03f9 270e          	jreq	L472
2012  03fb ae01f7        	ldw	x,#503
2013  03fe 89            	pushw	x
2014  03ff 5f            	clrw	x
2015  0400 89            	pushw	x
2016  0401 ae000c        	ldw	x,#L75
2017  0404 cd0000        	call	_assert_failed
2019  0407 5b04          	addw	sp,#4
2020  0409               L472:
2021                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2023  0409 7b01          	ld	a,(OFST+1,sp)
2024  040b 2b0e          	jrmi	L757
2025                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2027  040d c650c6        	ld	a,20678
2028  0410 a4e7          	and	a,#231
2029  0412 c750c6        	ld	20678,a
2030                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2032  0415 7b01          	ld	a,(OFST+1,sp)
2033  0417 a418          	and	a,#24
2035  0419 200c          	jra	L167
2036  041b               L757:
2037                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2039  041b c650c6        	ld	a,20678
2040  041e a4f8          	and	a,#248
2041  0420 c750c6        	ld	20678,a
2042                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2044  0423 7b01          	ld	a,(OFST+1,sp)
2045  0425 a407          	and	a,#7
2046  0427               L167:
2047  0427 ca50c6        	or	a,20678
2048  042a c750c6        	ld	20678,a
2049                     ; 515 }
2052  042d 84            	pop	a
2053  042e 81            	ret	
2110                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2110                     ; 524 {
2111                     	switch	.text
2112  042f               _CLK_SWIMConfig:
2114  042f 88            	push	a
2115       00000000      OFST:	set	0
2118                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2120  0430 4d            	tnz	a
2121  0431 2711          	jreq	L603
2122  0433 4a            	dec	a
2123  0434 270e          	jreq	L603
2124  0436 ae020e        	ldw	x,#526
2125  0439 89            	pushw	x
2126  043a 5f            	clrw	x
2127  043b 89            	pushw	x
2128  043c ae000c        	ldw	x,#L75
2129  043f cd0000        	call	_assert_failed
2131  0442 5b04          	addw	sp,#4
2132  0444               L603:
2133                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2135  0444 7b01          	ld	a,(OFST+1,sp)
2136  0446 2706          	jreq	L1101
2137                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2139  0448 721050cd      	bset	20685,#0
2141  044c 2004          	jra	L3101
2142  044e               L1101:
2143                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2145  044e 721150cd      	bres	20685,#0
2146  0452               L3101:
2147                     ; 538 }
2150  0452 84            	pop	a
2151  0453 81            	ret	
2175                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2175                     ; 548 {
2176                     	switch	.text
2177  0454               _CLK_ClockSecuritySystemEnable:
2181                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2183  0454 721050c8      	bset	20680,#0
2184                     ; 551 }
2187  0458 81            	ret	
2212                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2212                     ; 560 {
2213                     	switch	.text
2214  0459               _CLK_GetSYSCLKSource:
2218                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2220  0459 c650c3        	ld	a,20675
2223  045c 81            	ret	
2280                     ; 569 uint32_t CLK_GetClockFreq(void)
2280                     ; 570 {
2281                     	switch	.text
2282  045d               _CLK_GetClockFreq:
2284  045d 5209          	subw	sp,#9
2285       00000009      OFST:	set	9
2288                     ; 571   uint32_t clockfrequency = 0;
2290                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2292                     ; 573   uint8_t tmp = 0, presc = 0;
2296                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2298  045f c650c3        	ld	a,20675
2299  0462 6b09          	ld	(OFST+0,sp),a
2300                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2302  0464 a1e1          	cp	a,#225
2303  0466 2634          	jrne	L1601
2304                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2306  0468 c650c6        	ld	a,20678
2307  046b a418          	and	a,#24
2308  046d 44            	srl	a
2309  046e 44            	srl	a
2310  046f 44            	srl	a
2311                     ; 581     tmp = (uint8_t)(tmp >> 3);
2313                     ; 582     presc = HSIDivFactor[tmp];
2315  0470 5f            	clrw	x
2316  0471 97            	ld	xl,a
2317  0472 d60000        	ld	a,(_HSIDivFactor,x)
2318  0475 6b09          	ld	(OFST+0,sp),a
2319                     ; 583     clockfrequency = HSI_VALUE / presc;
2321  0477 b703          	ld	c_lreg+3,a
2322  0479 3f02          	clr	c_lreg+2
2323  047b 3f01          	clr	c_lreg+1
2324  047d 3f00          	clr	c_lreg
2325  047f 96            	ldw	x,sp
2326  0480 5c            	incw	x
2327  0481 cd0000        	call	c_rtol
2329  0484 ae2400        	ldw	x,#9216
2330  0487 bf02          	ldw	c_lreg+2,x
2331  0489 ae00f4        	ldw	x,#244
2332  048c bf00          	ldw	c_lreg,x
2333  048e 96            	ldw	x,sp
2334  048f 5c            	incw	x
2335  0490 cd0000        	call	c_ludv
2337  0493 96            	ldw	x,sp
2338  0494 1c0005        	addw	x,#OFST-4
2339  0497 cd0000        	call	c_rtol
2342  049a 2018          	jra	L3601
2343  049c               L1601:
2344                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2346  049c a1d2          	cp	a,#210
2347  049e 260a          	jrne	L5601
2348                     ; 587     clockfrequency = LSI_VALUE;
2350  04a0 aef400        	ldw	x,#62464
2351  04a3 1f07          	ldw	(OFST-2,sp),x
2352  04a5 ae0001        	ldw	x,#1
2354  04a8 2008          	jp	LC005
2355  04aa               L5601:
2356                     ; 591     clockfrequency = HSE_VALUE;
2358  04aa ae2400        	ldw	x,#9216
2359  04ad 1f07          	ldw	(OFST-2,sp),x
2360  04af ae00f4        	ldw	x,#244
2361  04b2               LC005:
2362  04b2 1f05          	ldw	(OFST-4,sp),x
2363  04b4               L3601:
2364                     ; 594   return((uint32_t)clockfrequency);
2366  04b4 96            	ldw	x,sp
2367  04b5 1c0005        	addw	x,#OFST-4
2368  04b8 cd0000        	call	c_ltor
2372  04bb 5b09          	addw	sp,#9
2373  04bd 81            	ret	
2473                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2473                     ; 605 {
2474                     	switch	.text
2475  04be               _CLK_AdjustHSICalibrationValue:
2477  04be 88            	push	a
2478       00000000      OFST:	set	0
2481                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2483  04bf 4d            	tnz	a
2484  04c0 272a          	jreq	L623
2485  04c2 a101          	cp	a,#1
2486  04c4 2726          	jreq	L623
2487  04c6 a102          	cp	a,#2
2488  04c8 2722          	jreq	L623
2489  04ca a103          	cp	a,#3
2490  04cc 271e          	jreq	L623
2491  04ce a104          	cp	a,#4
2492  04d0 271a          	jreq	L623
2493  04d2 a105          	cp	a,#5
2494  04d4 2716          	jreq	L623
2495  04d6 a106          	cp	a,#6
2496  04d8 2712          	jreq	L623
2497  04da a107          	cp	a,#7
2498  04dc 270e          	jreq	L623
2499  04de ae025f        	ldw	x,#607
2500  04e1 89            	pushw	x
2501  04e2 5f            	clrw	x
2502  04e3 89            	pushw	x
2503  04e4 ae000c        	ldw	x,#L75
2504  04e7 cd0000        	call	_assert_failed
2506  04ea 5b04          	addw	sp,#4
2507  04ec               L623:
2508                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2510  04ec c650cc        	ld	a,20684
2511  04ef a4f8          	and	a,#248
2512  04f1 1a01          	or	a,(OFST+1,sp)
2513  04f3 c750cc        	ld	20684,a
2514                     ; 611 }
2517  04f6 84            	pop	a
2518  04f7 81            	ret	
2542                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2542                     ; 623 {
2543                     	switch	.text
2544  04f8               _CLK_SYSCLKEmergencyClear:
2548                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2550  04f8 721150c5      	bres	20677,#0
2551                     ; 625 }
2554  04fc 81            	ret	
2704                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2704                     ; 635 {
2705                     	switch	.text
2706  04fd               _CLK_GetFlagStatus:
2708  04fd 89            	pushw	x
2709  04fe 5203          	subw	sp,#3
2710       00000003      OFST:	set	3
2713                     ; 636   uint16_t statusreg = 0;
2715                     ; 637   uint8_t tmpreg = 0;
2717                     ; 638   FlagStatus bitstatus = RESET;
2719                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2721  0500 a30110        	cpw	x,#272
2722  0503 2736          	jreq	L243
2723  0505 a30102        	cpw	x,#258
2724  0508 2731          	jreq	L243
2725  050a a30202        	cpw	x,#514
2726  050d 272c          	jreq	L243
2727  050f a30308        	cpw	x,#776
2728  0512 2727          	jreq	L243
2729  0514 a30301        	cpw	x,#769
2730  0517 2722          	jreq	L243
2731  0519 a30408        	cpw	x,#1032
2732  051c 271d          	jreq	L243
2733  051e a30402        	cpw	x,#1026
2734  0521 2718          	jreq	L243
2735  0523 a30504        	cpw	x,#1284
2736  0526 2713          	jreq	L243
2737  0528 a30502        	cpw	x,#1282
2738  052b 270e          	jreq	L243
2739  052d ae0281        	ldw	x,#641
2740  0530 89            	pushw	x
2741  0531 5f            	clrw	x
2742  0532 89            	pushw	x
2743  0533 ae000c        	ldw	x,#L75
2744  0536 cd0000        	call	_assert_failed
2746  0539 5b04          	addw	sp,#4
2747  053b               L243:
2748                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2750  053b 7b04          	ld	a,(OFST+1,sp)
2751  053d 97            	ld	xl,a
2752  053e 4f            	clr	a
2753  053f 02            	rlwa	x,a
2754  0540 1f01          	ldw	(OFST-2,sp),x
2755                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2757  0542 a30100        	cpw	x,#256
2758  0545 2605          	jrne	L7221
2759                     ; 649     tmpreg = CLK->ICKR;
2761  0547 c650c0        	ld	a,20672
2763  054a 2021          	jra	L1321
2764  054c               L7221:
2765                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2767  054c a30200        	cpw	x,#512
2768  054f 2605          	jrne	L3321
2769                     ; 653     tmpreg = CLK->ECKR;
2771  0551 c650c1        	ld	a,20673
2773  0554 2017          	jra	L1321
2774  0556               L3321:
2775                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2777  0556 a30300        	cpw	x,#768
2778  0559 2605          	jrne	L7321
2779                     ; 657     tmpreg = CLK->SWCR;
2781  055b c650c5        	ld	a,20677
2783  055e 200d          	jra	L1321
2784  0560               L7321:
2785                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2787  0560 a30400        	cpw	x,#1024
2788  0563 2605          	jrne	L3421
2789                     ; 661     tmpreg = CLK->CSSR;
2791  0565 c650c8        	ld	a,20680
2793  0568 2003          	jra	L1321
2794  056a               L3421:
2795                     ; 665     tmpreg = CLK->CCOR;
2797  056a c650c9        	ld	a,20681
2798  056d               L1321:
2799  056d 6b03          	ld	(OFST+0,sp),a
2800                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2802  056f 7b05          	ld	a,(OFST+2,sp)
2803  0571 1503          	bcp	a,(OFST+0,sp)
2804  0573 2704          	jreq	L7421
2805                     ; 670     bitstatus = SET;
2807  0575 a601          	ld	a,#1
2809  0577 2001          	jra	L1521
2810  0579               L7421:
2811                     ; 674     bitstatus = RESET;
2813  0579 4f            	clr	a
2814  057a               L1521:
2815                     ; 678   return((FlagStatus)bitstatus);
2819  057a 5b05          	addw	sp,#5
2820  057c 81            	ret	
2867                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2867                     ; 688 {
2868                     	switch	.text
2869  057d               _CLK_GetITStatus:
2871  057d 88            	push	a
2872  057e 88            	push	a
2873       00000001      OFST:	set	1
2876                     ; 689   ITStatus bitstatus = RESET;
2878                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2880  057f a10c          	cp	a,#12
2881  0581 2712          	jreq	L453
2882  0583 a11c          	cp	a,#28
2883  0585 270e          	jreq	L453
2884  0587 ae02b4        	ldw	x,#692
2885  058a 89            	pushw	x
2886  058b 5f            	clrw	x
2887  058c 89            	pushw	x
2888  058d ae000c        	ldw	x,#L75
2889  0590 cd0000        	call	_assert_failed
2891  0593 5b04          	addw	sp,#4
2892  0595               L453:
2893                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2895  0595 7b02          	ld	a,(OFST+1,sp)
2896  0597 a11c          	cp	a,#28
2897  0599 260b          	jrne	L5721
2898                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2900  059b c650c5        	ld	a,20677
2901  059e 1402          	and	a,(OFST+1,sp)
2902  05a0 a10c          	cp	a,#12
2903  05a2 260f          	jrne	L5031
2904                     ; 699       bitstatus = SET;
2906  05a4 2009          	jp	LC007
2907                     ; 703       bitstatus = RESET;
2908  05a6               L5721:
2909                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2911  05a6 c650c8        	ld	a,20680
2912  05a9 1402          	and	a,(OFST+1,sp)
2913  05ab a10c          	cp	a,#12
2914  05ad 2604          	jrne	L5031
2915                     ; 711       bitstatus = SET;
2917  05af               LC007:
2919  05af a601          	ld	a,#1
2921  05b1 2001          	jra	L3031
2922  05b3               L5031:
2923                     ; 715       bitstatus = RESET;
2926  05b3 4f            	clr	a
2927  05b4               L3031:
2928                     ; 720   return bitstatus;
2932  05b4 85            	popw	x
2933  05b5 81            	ret	
2970                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2970                     ; 730 {
2971                     	switch	.text
2972  05b6               _CLK_ClearITPendingBit:
2974  05b6 88            	push	a
2975       00000000      OFST:	set	0
2978                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2980  05b7 a10c          	cp	a,#12
2981  05b9 2712          	jreq	L663
2982  05bb a11c          	cp	a,#28
2983  05bd 270e          	jreq	L663
2984  05bf ae02dc        	ldw	x,#732
2985  05c2 89            	pushw	x
2986  05c3 5f            	clrw	x
2987  05c4 89            	pushw	x
2988  05c5 ae000c        	ldw	x,#L75
2989  05c8 cd0000        	call	_assert_failed
2991  05cb 5b04          	addw	sp,#4
2992  05cd               L663:
2993                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2995  05cd 7b01          	ld	a,(OFST+1,sp)
2996  05cf a10c          	cp	a,#12
2997  05d1 2606          	jrne	L7231
2998                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3000  05d3 721750c8      	bres	20680,#3
3002  05d7 2004          	jra	L1331
3003  05d9               L7231:
3004                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3006  05d9 721750c5      	bres	20677,#3
3007  05dd               L1331:
3008                     ; 745 }
3011  05dd 84            	pop	a
3012  05de 81            	ret	
3047                     	xdef	_CLKPrescTable
3048                     	xdef	_HSIDivFactor
3049                     	xdef	_CLK_ClearITPendingBit
3050                     	xdef	_CLK_GetITStatus
3051                     	xdef	_CLK_GetFlagStatus
3052                     	xdef	_CLK_GetSYSCLKSource
3053                     	xdef	_CLK_GetClockFreq
3054                     	xdef	_CLK_AdjustHSICalibrationValue
3055                     	xdef	_CLK_SYSCLKEmergencyClear
3056                     	xdef	_CLK_ClockSecuritySystemEnable
3057                     	xdef	_CLK_SWIMConfig
3058                     	xdef	_CLK_SYSCLKConfig
3059                     	xdef	_CLK_ITConfig
3060                     	xdef	_CLK_CCOConfig
3061                     	xdef	_CLK_HSIPrescalerConfig
3062                     	xdef	_CLK_ClockSwitchConfig
3063                     	xdef	_CLK_PeripheralClockConfig
3064                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3065                     	xdef	_CLK_FastHaltWakeUpCmd
3066                     	xdef	_CLK_ClockSwitchCmd
3067                     	xdef	_CLK_CCOCmd
3068                     	xdef	_CLK_LSICmd
3069                     	xdef	_CLK_HSICmd
3070                     	xdef	_CLK_HSECmd
3071                     	xdef	_CLK_DeInit
3072                     	xref	_assert_failed
3073                     	switch	.const
3074  000c               L75:
3075  000c 6c6962726172  	dc.b	"library\stm8s_clk."
3076  001e 6300          	dc.b	"c",0
3077                     	xref.b	c_lreg
3078                     	xref.b	c_x
3098                     	xref	c_ltor
3099                     	xref	c_ludv
3100                     	xref	c_rtol
3101                     	end
