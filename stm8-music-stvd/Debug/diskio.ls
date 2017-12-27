   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  18                     .const:	section	.text
  19  0000               _DUS_C:
  20  0000 02            	dc.b	2
  59                     ; 14 volatile void delay_us()  
  59                     ; 15 {   
  61                     	switch	.text
  62  0000               _delay_us:
  64       00000002      OFST:	set	2
  67                     ; 16 	int i=0;
  69                     ; 17 	for(i=0;i<DUS_C;i++);
  71  0000 5f            	clrw	x
  72  0001               L52:
  76  0001 5c            	incw	x
  79  0002 a30002        	cpw	x,#2
  80  0005 2ffa          	jrslt	L52
  81                     ; 19 } 
  84  0007 81            	ret	
 107                     ; 36 void __nop(){
 108                     	switch	.text
 109  0008               ___nop:
 113                     ; 37 }
 116  0008 81            	ret	
 139                     ; 38 void sdc_spi_init(void)
 139                     ; 39 {
 140                     	switch	.text
 141  0009               _sdc_spi_init:
 145                     ; 40  	SDC_MOSI_H();
 147  0009 721c500f      	bset	20495,#6
 148                     ; 41 	SDC_SCK_H(); 
 150  000d 7214500f      	bset	20495,#2
 151                     ; 42 }
 154  0011 81            	ret	
 187                     ; 43 void sdc_sendbyte(unsigned char data)
 187                     ; 44 {
 188                     	switch	.text
 189  0012               _sdc_sendbyte:
 193                     ; 68 		SDC_SCK_H();
 195  0012 7214500f      	bset	20495,#2
 196                     ; 69 		temp=data;
 198  0016 c70000        	ld	_temp,a
 199                     ; 71 							ld a,#8        //set k=8
 202  0019 a608          	ld	a,#8//setk=8
 204                     ; 73 					__beginsend1:
 207  001b               __beginsend1:
 209                     ; 74 							push a
 212  001b 88            	push	a
 214                     ; 75 							ld a,_temp     //if(temp&0x80)
 217  001c c60000        	ld	a,_temp//if(temp&0x80)
 219                     ; 76 							and a,#$80		 //goto set SI_H
 222  001f a480          	and	a,#$80//gotosetSI_H
 224                     ; 77 							jrne __high1 
 227  0021 2607          	jrne	__high1
 229                     ; 78 									ld a,$0x500F
 232  0023 c6500f        	ld	a,$0x500F
 234                     ; 79 									and a,#191
 237  0026 a4bf          	and	a,#191
 239                     ; 80 									ld $0x500F,a
 243                     ; 81 									jra __jump_out1
 246  0028 2005          	jra	__jump_out1
 248                     ; 82 							__high1:
 251  002a               __high1:
 253                     ; 83 									ld a,$0x500F
 256  002a c6500f        	ld	a,$0x500F
 258                     ; 84 									or a,#64
 261  002d aa40          	or	a,#64
 263                     ; 85 									ld $0x500F,a
 267                     ; 86 							__jump_out1:
 270  002f               __jump_out1:
 271  002f c7500f        	ld	$0x500F,a
 273                     ; 88 							ld a,$0x500F     //set SCK_L
 276  0032 c6500f        	ld	a,$0x500F//setSCK_L
 278                     ; 89 							and a,#251
 281  0035 a4fb          	and	a,#251
 283                     ; 90 							ld $0x500F,a
 286  0037 c7500f        	ld	$0x500F,a
 288                     ; 91 							ld a,$0x500F    //set SCK_H
 291  003a c6500f        	ld	a,$0x500F//setSCK_H
 293                     ; 92 							or a,#4
 296  003d aa04          	or	a,#4
 298                     ; 93 							ld $0x500F,a
 301  003f c7500f        	ld	$0x500F,a
 303                     ; 94 							sll _temp     //temp<<1
 307                     ; 95 							pop a
 310  0042 84            	pop	a
 311  0043 72580000      	sll	_temp//temp<<1
 313                     ; 96 							dec a
 316  0047 4a            	dec	a
 318                     ; 97 							jrne __beginsend1
 321  0048 26d1          	jrne	__beginsend1
 323                     ; 101 }
 326  004a 81            	ret	
 365                     ; 102 unsigned char sdc_readbyte_slow(void){
 366                     	switch	.text
 367  004b               _sdc_readbyte_slow:
 369  004b 89            	pushw	x
 370       00000002      OFST:	set	2
 373                     ; 103 	unsigned char r=0,i;
 375  004c 0f01          	clr	(OFST-1,sp)
 376                     ; 104 	for(i=0;i<8;i++)
 378  004e 0f02          	clr	(OFST+0,sp)
 379  0050               L501:
 380                     ; 106 	SDC_SCK_L();
 382  0050 7215500f      	bres	20495,#2
 383                     ; 108 	r <<= 1; 
 385  0054 0801          	sll	(OFST-1,sp)
 386                     ; 110 	if(SDC_MISO_RE())
 388  0056 720b501002    	btjf	20496,#5,L311
 389                     ; 111 		r++;
 391  005b 0c01          	inc	(OFST-1,sp)
 392  005d               L311:
 393                     ; 112 	SDC_SCK_H();
 395  005d 7214500f      	bset	20495,#2
 396                     ; 104 	for(i=0;i<8;i++)
 398  0061 0c02          	inc	(OFST+0,sp)
 401  0063 7b02          	ld	a,(OFST+0,sp)
 402  0065 a108          	cp	a,#8
 403  0067 25e7          	jrult	L501
 404                     ; 115 	return r;
 406  0069 7b01          	ld	a,(OFST-1,sp)
 409  006b 85            	popw	x
 410  006c 81            	ret	
 434                     ; 117 unsigned char sdc_readbyte_fast(void){
 435                     	switch	.text
 436  006d               _sdc_readbyte_fast:
 440                     ; 120 		ld a,#0
 443  006d a600          	ld	a,#0
 445                     ; 121 		ld _temp,a
 448  006f c70000        	ld	_temp,a
 450                     ; 122 		ld a,#8
 453  0072 a608          	ld	a,#8
 455                     ; 123 		__beginrecv:
 458  0074               __beginrecv:
 460                     ; 124 			push a
 463  0074 88            	push	a
 465                     ; 125 			ld a,$0x500F     //set SCK_L
 468  0075 c6500f        	ld	a,$0x500F//setSCK_L
 470                     ; 126 			and a,#251
 473  0078 a4fb          	and	a,#251
 475                     ; 127 			ld $0x500F,a
 478  007a c7500f        	ld	$0x500F,a
 480                     ; 129 			ld a,_temp			//_temp<<1
 483  007d c60000        	ld	a,_temp//_temp<<1
 485                     ; 130 			sll a
 488  0080 48            	sll	a
 490                     ; 131 			ld _temp,a
 493  0081 c70000        	ld	_temp,a
 495                     ; 133 			ld a,$0x5010	//if(GPIOD_PIN5==1)goto recvHigh
 498  0084 c65010        	ld	a,$0x5010//if(GPIOD_PIN5==1)gotorecvHigh
 500                     ; 134 			and a,#32		//GPIOD PIN5
 503  0087 a420          	and	a,#32//GPIODPIN5
 505                     ; 135 			jrne __recvHigh
 508  0089 2603          	jrne	__recvHigh
 510                     ; 136 			nop
 513  008b 9d            	nop	
 515                     ; 137 			jra __offjump
 518  008c 2008          	jra	__offjump
 520                     ; 138 		__recvHigh:
 523  008e               __recvHigh:
 525                     ; 139 			ld a,_temp			//_temp++
 528  008e c60000        	ld	a,_temp//_temp++
 530                     ; 140 			add a,#1
 533  0091 ab01          	add	a,#1
 535                     ; 141 			ld _temp,a
 538  0093 c70000        	ld	_temp,a
 540                     ; 142 		__offjump:
 543  0096               __offjump:
 545                     ; 143 			ld a,$0x500F    //set SCK_H
 548  0096 c6500f        	ld	a,$0x500F//setSCK_H
 550                     ; 144 			or a,#4
 553  0099 aa04          	or	a,#4
 555                     ; 145 			ld $0x500F,a		
 558  009b c7500f        	ld	$0x500F,a
 560                     ; 146 			pop a
 563  009e 84            	pop	a
 565                     ; 147 			dec a
 568  009f 4a            	dec	a
 570                     ; 148 			jrne __beginrecv
 573  00a0 26d2          	jrne	__beginrecv
 575                     ; 151 	return temp;
 577  00a2 c60000        	ld	a,_temp
 580  00a5 81            	ret	
 613                     ; 153 unsigned char sdc_readbyte(void)
 613                     ; 154 {
 614                     	switch	.text
 615  00a6               _sdc_readbyte:
 617  00a6 88            	push	a
 618       00000001      OFST:	set	1
 621                     ; 156 	unsigned char r=0;
 623  00a7 0f01          	clr	(OFST+0,sp)
 624                     ; 157 	temp=0;
 626  00a9 725f0000      	clr	_temp
 627                     ; 158 	SDC_SCK_L();if(SDC_MISO_RE())r+=128;SDC_SCK_H();
 629  00ad 7215500f      	bres	20495,#2
 632  00b1 720b501006    	btjf	20496,#5,L141
 635  00b6 7b01          	ld	a,(OFST+0,sp)
 636  00b8 ab80          	add	a,#128
 637  00ba 6b01          	ld	(OFST+0,sp),a
 638  00bc               L141:
 641  00bc 7214500f      	bset	20495,#2
 642                     ; 159 	SDC_SCK_L();if(SDC_MISO_RE())r+=64;	SDC_SCK_H();
 644  00c0 7215500f      	bres	20495,#2
 647  00c4 720b501006    	btjf	20496,#5,L341
 650  00c9 7b01          	ld	a,(OFST+0,sp)
 651  00cb ab40          	add	a,#64
 652  00cd 6b01          	ld	(OFST+0,sp),a
 653  00cf               L341:
 656  00cf 7214500f      	bset	20495,#2
 657                     ; 160 	SDC_SCK_L();if(SDC_MISO_RE())r+=32;	SDC_SCK_H();
 659  00d3 7215500f      	bres	20495,#2
 662  00d7 720b501006    	btjf	20496,#5,L541
 665  00dc 7b01          	ld	a,(OFST+0,sp)
 666  00de ab20          	add	a,#32
 667  00e0 6b01          	ld	(OFST+0,sp),a
 668  00e2               L541:
 671  00e2 7214500f      	bset	20495,#2
 672                     ; 161 	SDC_SCK_L();if(SDC_MISO_RE())r+=16;	SDC_SCK_H();
 674  00e6 7215500f      	bres	20495,#2
 677  00ea 720b501006    	btjf	20496,#5,L741
 680  00ef 7b01          	ld	a,(OFST+0,sp)
 681  00f1 ab10          	add	a,#16
 682  00f3 6b01          	ld	(OFST+0,sp),a
 683  00f5               L741:
 686  00f5 7214500f      	bset	20495,#2
 687                     ; 162 	SDC_SCK_L();if(SDC_MISO_RE())r+=8;	SDC_SCK_H();
 689  00f9 7215500f      	bres	20495,#2
 692  00fd 720b501006    	btjf	20496,#5,L151
 695  0102 7b01          	ld	a,(OFST+0,sp)
 696  0104 ab08          	add	a,#8
 697  0106 6b01          	ld	(OFST+0,sp),a
 698  0108               L151:
 701  0108 7214500f      	bset	20495,#2
 702                     ; 163 	SDC_SCK_L();if(SDC_MISO_RE())r+=4;	SDC_SCK_H();
 704  010c 7215500f      	bres	20495,#2
 707  0110 720b501006    	btjf	20496,#5,L351
 710  0115 7b01          	ld	a,(OFST+0,sp)
 711  0117 ab04          	add	a,#4
 712  0119 6b01          	ld	(OFST+0,sp),a
 713  011b               L351:
 716  011b 7214500f      	bset	20495,#2
 717                     ; 164 	SDC_SCK_L();if(SDC_MISO_RE())r+=2;	SDC_SCK_H();
 719  011f 7215500f      	bres	20495,#2
 722  0123 720b501004    	btjf	20496,#5,L551
 725  0128 0c01          	inc	(OFST+0,sp)
 726  012a 0c01          	inc	(OFST+0,sp)
 727  012c               L551:
 730  012c 7214500f      	bset	20495,#2
 731                     ; 165 	SDC_SCK_L();if(SDC_MISO_RE())r+=1;	SDC_SCK_H();
 733  0130 7215500f      	bres	20495,#2
 736  0134 720b501002    	btjf	20496,#5,L751
 739  0139 0c01          	inc	(OFST+0,sp)
 740  013b               L751:
 743  013b 7214500f      	bset	20495,#2
 744                     ; 166 	return r;
 746  013f 7b01          	ld	a,(OFST+0,sp)
 749  0141 5b01          	addw	sp,#1
 750  0143 81            	ret	
 774                     	switch	.const
 775  0001               _len:
 776  0001 0200          	dc.w	512
 821                     ; 21 void DELAY_MS (unsigned int a){  
 822                     	switch	.text
 823  0144               _DELAY_MS:
 825  0144 89            	pushw	x
 826  0145 89            	pushw	x
 827       00000002      OFST:	set	2
 830  0146 2009          	jra	L512
 831  0148               L312:
 832                     ; 24         for(i = 0; i < 600; i++);  
 834  0148 5f            	clrw	x
 835  0149               L122:
 839  0149 5c            	incw	x
 842  014a a30258        	cpw	x,#600
 843  014d 25fa          	jrult	L122
 844  014f 1f01          	ldw	(OFST-1,sp),x
 845  0151               L512:
 846                     ; 23     while( --a != 0){  
 848  0151 1e03          	ldw	x,(OFST+1,sp)
 849  0153 5a            	decw	x
 850  0154 1f03          	ldw	(OFST+1,sp),x
 851  0156 26f0          	jrne	L312
 852                     ; 26 }  
 855  0158 5b04          	addw	sp,#4
 856  015a 81            	ret	
 896                     ; 64 unsigned char SD_Response(){  
 897                     	switch	.text
 898  015b               _SD_Response:
 900  015b 89            	pushw	x
 901       00000002      OFST:	set	2
 904                     ; 66     for(i = 0; i<10; i++){  
 906  015c 0f01          	clr	(OFST-1,sp)
 907  015e               L542:
 908                     ; 67         Response = SD_SPI_R();  
 910  015e cd00a6        	call	_sdc_readbyte
 912  0161 6b02          	ld	(OFST+0,sp),a
 913                     ; 68         if(Response == 0x00)  
 915  0163 270e          	jreq	L152
 916                     ; 69             break;  
 918                     ; 70         if(Response == 0x01)  
 920  0165 a101          	cp	a,#1
 921  0167 270a          	jreq	L152
 922                     ; 71             break;  
 924                     ; 66     for(i = 0; i<10; i++){  
 926  0169 0c01          	inc	(OFST-1,sp)
 929  016b 7b01          	ld	a,(OFST-1,sp)
 930  016d a10a          	cp	a,#10
 931  016f 25ed          	jrult	L542
 932  0171 7b02          	ld	a,(OFST+0,sp)
 933  0173               L152:
 934                     ; 73     return Response;  
 939  0173 85            	popw	x
 940  0174 81            	ret	
 997                     ; 78 void SD_Cmd(unsigned char Cmd, unsigned long Argument, unsigned char CRC){  
 998                     	switch	.text
 999  0175               _SD_Cmd:
1001  0175 88            	push	a
1002  0176 5204          	subw	sp,#4
1003       00000004      OFST:	set	4
1006                     ; 80     arg[0] = (unsigned char)Argument;  
1008  0178 7b0b          	ld	a,(OFST+7,sp)
1009  017a 6b01          	ld	(OFST-3,sp),a
1010                     ; 81     arg[1] = (unsigned char)(Argument >> 8);  
1012  017c 7b0a          	ld	a,(OFST+6,sp)
1013  017e 6b02          	ld	(OFST-2,sp),a
1014                     ; 82     arg[2] = (unsigned char)(Argument >> 16);  
1016  0180 7b09          	ld	a,(OFST+5,sp)
1017  0182 6b03          	ld	(OFST-1,sp),a
1018                     ; 83     arg[3] = (unsigned char)(Argument >> 24);  
1020  0184 7b08          	ld	a,(OFST+4,sp)
1021  0186 6b04          	ld	(OFST+0,sp),a
1022                     ; 85     SD_SPI_W(Cmd | 0x40);  
1024  0188 7b05          	ld	a,(OFST+1,sp)
1025  018a aa40          	or	a,#64
1026  018c cd0012        	call	_sdc_sendbyte
1028                     ; 86     SD_SPI_W(arg[3]);  
1030  018f 7b04          	ld	a,(OFST+0,sp)
1031  0191 cd0012        	call	_sdc_sendbyte
1033                     ; 87     SD_SPI_W(arg[2]);  
1035  0194 7b03          	ld	a,(OFST-1,sp)
1036  0196 cd0012        	call	_sdc_sendbyte
1038                     ; 88     SD_SPI_W(arg[1]);  
1040  0199 7b02          	ld	a,(OFST-2,sp)
1041  019b cd0012        	call	_sdc_sendbyte
1043                     ; 89     SD_SPI_W(arg[0]);  
1045  019e 7b01          	ld	a,(OFST-3,sp)
1046  01a0 cd0012        	call	_sdc_sendbyte
1048                     ; 90     SD_SPI_W(CRC);  
1050  01a3 7b0c          	ld	a,(OFST+8,sp)
1051  01a5 cd0012        	call	_sdc_sendbyte
1053                     ; 91 }  
1056  01a8 5b05          	addw	sp,#5
1057  01aa 81            	ret	
1108                     ; 96 unsigned char SD_Init(){  
1109                     	switch	.text
1110  01ab               _SD_Init:
1112  01ab 5204          	subw	sp,#4
1113       00000004      OFST:	set	4
1116                     ; 97     unsigned int delay = 0;  
1118  01ad 5f            	clrw	x
1119  01ae 1f01          	ldw	(OFST-3,sp),x
1120                     ; 99     unsigned char Response = 0xff;  
1122  01b0 a6ff          	ld	a,#255
1123  01b2 6b03          	ld	(OFST-1,sp),a
1124                     ; 100     sdc_spi_init();
1126  01b4 cd0009        	call	_sdc_spi_init
1128                     ; 101     SDC_CS_H();  
1130  01b7 721e500f      	bset	20495,#7
1131  01bb cd0000        	call	_delay_us
1133                     ; 102     for(i = 0; i<30; i++){  
1135  01be 0f04          	clr	(OFST+0,sp)
1136  01c0               L323:
1137                     ; 103         SD_SPI_W(0xff);//上电后给74个以上的时间脉冲  
1139  01c0 a6ff          	ld	a,#255
1140  01c2 cd0012        	call	_sdc_sendbyte
1142                     ; 102     for(i = 0; i<30; i++){  
1144  01c5 0c04          	inc	(OFST+0,sp)
1147  01c7 7b04          	ld	a,(OFST+0,sp)
1148  01c9 a11e          	cp	a,#30
1149  01cb 25f3          	jrult	L323
1150                     ; 106     SDC_CS_L();  
1153  01cd 721f500f      	bres	20495,#7
1154  01d1 cd0000        	call	_delay_us
1156                     ; 107     SD_Cmd(0x00, 0, 0x95);//命令CMD0,复位SD卡  
1158  01d4 4b95          	push	#149
1159  01d6 5f            	clrw	x
1160  01d7 89            	pushw	x
1161  01d8 89            	pushw	x
1162  01d9 4f            	clr	a
1163  01da ad99          	call	_SD_Cmd
1165  01dc 5b05          	addw	sp,#5
1166                     ; 110     i = 0;  
1168  01de 0f04          	clr	(OFST+0,sp)
1170  01e0 2008          	jra	L533
1171  01e2               L133:
1172                     ; 112         i++;  
1174  01e2 0c04          	inc	(OFST+0,sp)
1175                     ; 113         if(i > 100){  
1177  01e4 7b04          	ld	a,(OFST+0,sp)
1178  01e6 a165          	cp	a,#101
1179                     ; 114             return 0;//失败返回0  
1181  01e8 2434          	jruge	LC001
1182  01ea               L533:
1183                     ; 111     while(SD_Response() != 0x01){//等待SD卡回应信号  
1185  01ea cd015b        	call	_SD_Response
1187  01ed 4a            	dec	a
1188  01ee 26f2          	jrne	L133
1189                     ; 118     SDC_CS_H();  
1192  01f0 721e500f      	bset	20495,#7
1193  01f4 cd0000        	call	_delay_us
1195                     ; 119     SD_SPI_W(0xff);//关片选后写8个空脉冲，SD卡复位完毕  
1197  01f7 a6ff          	ld	a,#255
1198  01f9 cd0012        	call	_sdc_sendbyte
1200                     ; 121     i = 0;  
1202  01fc 0f04          	clr	(OFST+0,sp)
1203                     ; 122     SDC_CS_L();  
1205  01fe 721f500f      	bres	20495,#7
1206  0202 cd0000        	call	_delay_us
1209  0205 201b          	jra	L543
1210  0207               L343:
1211                     ; 124         SD_Cmd(0x01, 0, 0xff);//CMD1,将SD卡设置为SPI模式，无需CRC校验，填入0xff  
1213  0207 4bff          	push	#255
1214  0209 5f            	clrw	x
1215  020a 89            	pushw	x
1216  020b 89            	pushw	x
1217  020c a601          	ld	a,#1
1218  020e cd0175        	call	_SD_Cmd
1220  0211 5b05          	addw	sp,#5
1221                     ; 125         Response = SD_Response();  
1223  0213 cd015b        	call	_SD_Response
1225  0216 6b03          	ld	(OFST-1,sp),a
1226                     ; 126         if(i > 100){  
1228  0218 7b04          	ld	a,(OFST+0,sp)
1229  021a a165          	cp	a,#101
1230  021c 2504          	jrult	L543
1231                     ; 127             return 0;//尝试100次,失败返回0  
1233  021e               LC001:
1235  021e 4f            	clr	a
1237  021f               L201:
1239  021f 5b04          	addw	sp,#4
1240  0221 81            	ret	
1241  0222               L543:
1242                     ; 123     while(Response != 0x00){//循环等待成功回应，若成功，回应信号为0x00  
1244  0222 7b03          	ld	a,(OFST-1,sp)
1245  0224 26e1          	jrne	L343
1246                     ; 130     SDC_CS_H();  
1249  0226 721e500f      	bset	20495,#7
1250  022a cd0000        	call	_delay_us
1252                     ; 132     SD_SPI_W(0xff);//给8个空脉冲  
1254  022d a6ff          	ld	a,#255
1255  022f cd0012        	call	_sdc_sendbyte
1257                     ; 133     return 1;  
1259  0232 a601          	ld	a,#1
1261  0234 20e9          	jra	L201
1324                     ; 138 unsigned char SD_Block_W(unsigned char* block, unsigned long address){  
1325                     	switch	.text
1326  0236               _SD_Block_W:
1328  0236 89            	pushw	x
1329  0237 5203          	subw	sp,#3
1330       00000003      OFST:	set	3
1333                     ; 141     SDC_CS_L();  
1335  0239 721f500f      	bres	20495,#7
1336  023d cd0000        	call	_delay_us
1338                     ; 142     SD_Cmd(0x18, address, 0xff);//CMD18,块写入命令  
1340  0240 4bff          	push	#255
1341  0242 1e0b          	ldw	x,(OFST+8,sp)
1342  0244 89            	pushw	x
1343  0245 1e0b          	ldw	x,(OFST+8,sp)
1344  0247 89            	pushw	x
1345  0248 a618          	ld	a,#24
1346  024a cd0175        	call	_SD_Cmd
1348  024d 5b05          	addw	sp,#5
1350  024f               L104:
1351                     ; 143     while(SD_Response() != 0x00);//循环等待命令回应0x00  
1353  024f cd015b        	call	_SD_Response
1355  0252 4d            	tnz	a
1356  0253 26fa          	jrne	L104
1357                     ; 144     for(i = 0; i<10; i++){  
1359  0255 5f            	clrw	x
1360  0256 1f02          	ldw	(OFST-1,sp),x
1361  0258               L504:
1362                     ; 145         SD_SPI_W(0xff);//写入一定量空脉冲  
1364  0258 a6ff          	ld	a,#255
1365  025a cd0012        	call	_sdc_sendbyte
1367                     ; 144     for(i = 0; i<10; i++){  
1369  025d 1e02          	ldw	x,(OFST-1,sp)
1370  025f 5c            	incw	x
1371  0260 1f02          	ldw	(OFST-1,sp),x
1374  0262 a3000a        	cpw	x,#10
1375  0265 25f1          	jrult	L504
1376                     ; 148     SD_SPI_W(0xfe);//0xfe为块头部，后面跟512b字节，+2bCRC(0xff,0xff)  
1379  0267 a6fe          	ld	a,#254
1380  0269 cd0012        	call	_sdc_sendbyte
1382                     ; 150     for(i=0; i<len; i++){  
1384  026c 5f            	clrw	x
1385  026d 1f02          	ldw	(OFST-1,sp),x
1386  026f               L314:
1387                     ; 151         SD_SPI_W(block[i]);//写入512b字节  
1389  026f 1e04          	ldw	x,(OFST+1,sp)
1390  0271 72fb02        	addw	x,(OFST-1,sp)
1391  0274 f6            	ld	a,(x)
1392  0275 cd0012        	call	_sdc_sendbyte
1394                     ; 150     for(i=0; i<len; i++){  
1396  0278 1e02          	ldw	x,(OFST-1,sp)
1397  027a 5c            	incw	x
1398  027b 1f02          	ldw	(OFST-1,sp),x
1401  027d a30200        	cpw	x,#512
1402  0280 25ed          	jrult	L314
1403                     ; 154     SD_SPI_W(0xff);  
1406  0282 a6ff          	ld	a,#255
1407  0284 cd0012        	call	_sdc_sendbyte
1409                     ; 155     SD_SPI_W(0xff);  
1411  0287 a6ff          	ld	a,#255
1412  0289 cd0012        	call	_sdc_sendbyte
1414                     ; 157     Response_sdc_spi_sendbyte = SD_SPI_R()&0x0f;//写入CRC码后SD卡会回应一个xxx0,1001  
1416  028c cd00a6        	call	_sdc_readbyte
1418  028f a40f          	and	a,#15
1419  0291 6b01          	ld	(OFST-2,sp),a
1421  0293               L524:
1422                     ; 158     while(SD_SPI_R() == 0);//等待SD卡回应  
1424  0293 cd00a6        	call	_sdc_readbyte
1426  0296 4d            	tnz	a
1427  0297 27fa          	jreq	L524
1428                     ; 160     SDC_CS_H();  
1430  0299 721e500f      	bset	20495,#7
1431  029d cd0000        	call	_delay_us
1433                     ; 161     SD_SPI_W(0xff);//写入8个空脉冲  
1435  02a0 a6ff          	ld	a,#255
1436  02a2 cd0012        	call	_sdc_sendbyte
1438                     ; 163     if(Response_sdc_spi_sendbyte == 0x05){  
1440  02a5 7b01          	ld	a,(OFST-2,sp)
1441  02a7 a105          	cp	a,#5
1442  02a9 2604          	jrne	L134
1443                     ; 164         return 1;  
1445  02ab a601          	ld	a,#1
1447  02ad 2001          	jra	L631
1448  02af               L134:
1449                     ; 166         return 0;  
1451  02af 4f            	clr	a
1453  02b0               L631:
1455  02b0 5b05          	addw	sp,#5
1456  02b2 81            	ret	
1510                     ; 171 void SD_Block_R(unsigned char* block, unsigned long address){  
1511                     	switch	.text
1512  02b3               _SD_Block_R:
1514  02b3 89            	pushw	x
1515  02b4 89            	pushw	x
1516       00000002      OFST:	set	2
1519                     ; 174     SDC_CS_L();  
1521  02b5 721f500f      	bres	20495,#7
1522  02b9 cd0000        	call	_delay_us
1524                     ; 175     SD_Cmd(0x51, address, 0xff);//CMD11,数据块读写命令，  
1526  02bc 4bff          	push	#255
1527  02be 1e0a          	ldw	x,(OFST+8,sp)
1528  02c0 89            	pushw	x
1529  02c1 1e0a          	ldw	x,(OFST+8,sp)
1530  02c3 89            	pushw	x
1531  02c4 a651          	ld	a,#81
1532  02c6 cd0175        	call	_SD_Cmd
1534  02c9 5b05          	addw	sp,#5
1536  02cb               L164:
1537                     ; 177     while(SD_Response()!=0x00);//循环等待命令回应0x00  
1539  02cb cd015b        	call	_SD_Response
1541  02ce 4d            	tnz	a
1542  02cf 26fa          	jrne	L164
1544  02d1               L764:
1545                     ; 179     while(SD_SPI_R() != 0xfe); //0xfe为块读出的头， 后面紧跟512字节的数据块+2字节的CRC  
1547  02d1 cd00a6        	call	_sdc_readbyte
1549  02d4 a1fe          	cp	a,#254
1550  02d6 26f9          	jrne	L764
1551                     ; 181     for(i=0; i<len ; i++){  
1553  02d8 5f            	clrw	x
1554  02d9 1f01          	ldw	(OFST-1,sp),x
1555  02db               L374:
1556                     ; 182         block[i] = SD_SPI_R();//读数据  
1558  02db cd00a6        	call	_sdc_readbyte
1560  02de 1e03          	ldw	x,(OFST+1,sp)
1561  02e0 72fb01        	addw	x,(OFST-1,sp)
1562  02e3 f7            	ld	(x),a
1563                     ; 181     for(i=0; i<len ; i++){  
1565  02e4 1e01          	ldw	x,(OFST-1,sp)
1566  02e6 5c            	incw	x
1567  02e7 1f01          	ldw	(OFST-1,sp),x
1570  02e9 a30200        	cpw	x,#512
1571  02ec 25ed          	jrult	L374
1572                     ; 185     SD_SPI_R();  
1575  02ee cd00a6        	call	_sdc_readbyte
1577                     ; 186     SD_SPI_R();//两个字节的CRC。舍弃  
1579  02f1 cd00a6        	call	_sdc_readbyte
1581                     ; 188     SDC_CS_H();  
1583  02f4 721e500f      	bset	20495,#7
1584  02f8 cd0000        	call	_delay_us
1586                     ; 189     SD_SPI_R();//8个空脉冲  
1588  02fb cd00a6        	call	_sdc_readbyte
1590                     ; 190 } 
1593  02fe 5b04          	addw	sp,#4
1594  0300 81            	ret	
1647                     ; 192 char sd_sdc_spi_sendbyte_command_slow(char *a)
1647                     ; 193 {
1648                     	switch	.text
1649  0301               _sd_sdc_spi_sendbyte_command_slow:
1651  0301 89            	pushw	x
1652  0302 89            	pushw	x
1653       00000002      OFST:	set	2
1656                     ; 195 	char i,count,state=0xff;
1658  0303 a6ff          	ld	a,#255
1659  0305 6b02          	ld	(OFST+0,sp),a
1660                     ; 196 	SDC_CS_H();
1662  0307 721e500f      	bset	20495,#7
1663  030b cd0000        	call	_delay_us
1665                     ; 197 	sdc_sendbyte(0xff);
1667  030e a6ff          	ld	a,#255
1668  0310 cd0012        	call	_sdc_sendbyte
1670                     ; 198   SDC_CS_L();//Ñ¡ÖÐCSÆ¬Ñ¡ 
1672  0313 721f500f      	bres	20495,#7
1673  0317 cd0000        	call	_delay_us
1675                     ; 204 	sdc_sendbyte(a[0]);sdc_sendbyte(a[1]);sdc_sendbyte(a[2]);
1677  031a 1e03          	ldw	x,(OFST+1,sp)
1678  031c f6            	ld	a,(x)
1679  031d cd0012        	call	_sdc_sendbyte
1683  0320 1e03          	ldw	x,(OFST+1,sp)
1684  0322 e601          	ld	a,(1,x)
1685  0324 cd0012        	call	_sdc_sendbyte
1689  0327 1e03          	ldw	x,(OFST+1,sp)
1690  0329 e602          	ld	a,(2,x)
1691  032b cd0012        	call	_sdc_sendbyte
1693                     ; 205 	sdc_sendbyte(a[3]);sdc_sendbyte(a[4]);sdc_sendbyte(a[5]);
1695  032e 1e03          	ldw	x,(OFST+1,sp)
1696  0330 e603          	ld	a,(3,x)
1697  0332 cd0012        	call	_sdc_sendbyte
1701  0335 1e03          	ldw	x,(OFST+1,sp)
1702  0337 e604          	ld	a,(4,x)
1703  0339 cd0012        	call	_sdc_sendbyte
1707  033c 1e03          	ldw	x,(OFST+1,sp)
1708  033e e605          	ld	a,(5,x)
1709  0340 cd0012        	call	_sdc_sendbyte
1711                     ; 206 	count=0;
1713  0343 0f01          	clr	(OFST-1,sp)
1715  0345 2016          	jra	L725
1716  0347               L325:
1717                     ; 209 		state=sdc_readbyte_slow();
1719  0347 cd004b        	call	_sdc_readbyte_slow
1721  034a 6b02          	ld	(OFST+0,sp),a
1722                     ; 210 		if(count++>100) 
1724  034c 7b01          	ld	a,(OFST-1,sp)
1725  034e 0c01          	inc	(OFST-1,sp)
1726  0350 a165          	cp	a,#101
1727  0352 2509          	jrult	L725
1728                     ; 212           SDC_CS_H();
1730  0354 721e500f      	bset	20495,#7
1731  0358 cd0000        	call	_delay_us
1733                     ; 213           return state;
1735  035b 2011          	jra	L022
1736  035d               L725:
1737                     ; 207 	while(state==0xff)
1739  035d 7b02          	ld	a,(OFST+0,sp)
1740  035f 4c            	inc	a
1741  0360 27e5          	jreq	L325
1742                     ; 216   SDC_CS_H();
1744  0362 721e500f      	bset	20495,#7
1745  0366 cd0000        	call	_delay_us
1747                     ; 217 	sdc_sendbyte(0xff); 
1749  0369 a6ff          	ld	a,#255
1750  036b cd0012        	call	_sdc_sendbyte
1752                     ; 218 	return state;
1755  036e               L022:
1757  036e 7b02          	ld	a,(OFST+0,sp)
1759  0370 5b04          	addw	sp,#4
1760  0372 81            	ret	
1813                     ; 220 char sd_sdc_spi_sendbyte_command(char  *a)
1813                     ; 221 {
1814                     	switch	.text
1815  0373               _sd_sdc_spi_sendbyte_command:
1817  0373 89            	pushw	x
1818  0374 89            	pushw	x
1819       00000002      OFST:	set	2
1822                     ; 222 	char i,count,state=0xff;
1824  0375 a6ff          	ld	a,#255
1825  0377 6b02          	ld	(OFST+0,sp),a
1826                     ; 223 	SDC_CS_H();
1828  0379 721e500f      	bset	20495,#7
1829  037d cd0000        	call	_delay_us
1831                     ; 224 	sdc_sendbyte(0xff);
1833  0380 a6ff          	ld	a,#255
1834  0382 cd0012        	call	_sdc_sendbyte
1836                     ; 225   SDC_CS_L();//Ñ¡ÖÐCSÆ¬Ñ¡ 
1838  0385 721f500f      	bres	20495,#7
1839  0389 cd0000        	call	_delay_us
1841                     ; 231 	sdc_sendbyte(a[0]);sdc_sendbyte(a[1]);sdc_sendbyte(a[2]);
1843  038c 1e03          	ldw	x,(OFST+1,sp)
1844  038e f6            	ld	a,(x)
1845  038f cd0012        	call	_sdc_sendbyte
1849  0392 1e03          	ldw	x,(OFST+1,sp)
1850  0394 e601          	ld	a,(1,x)
1851  0396 cd0012        	call	_sdc_sendbyte
1855  0399 1e03          	ldw	x,(OFST+1,sp)
1856  039b e602          	ld	a,(2,x)
1857  039d cd0012        	call	_sdc_sendbyte
1859                     ; 232 	sdc_sendbyte(a[3]);sdc_sendbyte(a[4]);sdc_sendbyte(a[5]);
1861  03a0 1e03          	ldw	x,(OFST+1,sp)
1862  03a2 e603          	ld	a,(3,x)
1863  03a4 cd0012        	call	_sdc_sendbyte
1867  03a7 1e03          	ldw	x,(OFST+1,sp)
1868  03a9 e604          	ld	a,(4,x)
1869  03ab cd0012        	call	_sdc_sendbyte
1873  03ae 1e03          	ldw	x,(OFST+1,sp)
1874  03b0 e605          	ld	a,(5,x)
1875  03b2 cd0012        	call	_sdc_sendbyte
1877                     ; 233 	count=0;
1879  03b5 0f01          	clr	(OFST-1,sp)
1881  03b7 2016          	jra	L365
1882  03b9               L755:
1883                     ; 236 		state=sdc_readbyte();
1885  03b9 cd00a6        	call	_sdc_readbyte
1887  03bc 6b02          	ld	(OFST+0,sp),a
1888                     ; 237 		if(count++>100) 
1890  03be 7b01          	ld	a,(OFST-1,sp)
1891  03c0 0c01          	inc	(OFST-1,sp)
1892  03c2 a165          	cp	a,#101
1893  03c4 2509          	jrult	L365
1894                     ; 239           SDC_CS_H();
1896  03c6 721e500f      	bset	20495,#7
1897  03ca cd0000        	call	_delay_us
1899                     ; 240           return state;
1901  03cd 2011          	jra	L652
1902  03cf               L365:
1903                     ; 234 	while(state==0xff)
1905  03cf 7b02          	ld	a,(OFST+0,sp)
1906  03d1 4c            	inc	a
1907  03d2 27e5          	jreq	L755
1908                     ; 243   SDC_CS_H();
1910  03d4 721e500f      	bset	20495,#7
1911  03d8 cd0000        	call	_delay_us
1913                     ; 244 	sdc_sendbyte(0xff); 
1915  03db a6ff          	ld	a,#255
1916  03dd cd0012        	call	_sdc_sendbyte
1918                     ; 245 	return state;
1921  03e0               L652:
1923  03e0 7b02          	ld	a,(OFST+0,sp)
1925  03e2 5b04          	addw	sp,#4
1926  03e4 81            	ret	
1929                     	switch	.const
1930  0003               L175_cmd:
1931  0003 40            	dc.b	64
1932  0004 00            	dc.b	0
1933  0005 00            	dc.b	0
1934  0006 00            	dc.b	0
1935  0007 00            	dc.b	0
1936  0008 95            	dc.b	149
1986                     ; 248 UINT8 disk_initialize_io(void)
1986                     ; 249 {
1987                     	switch	.text
1988  03e5               _disk_initialize_io:
1990  03e5 5208          	subw	sp,#8
1991       00000008      OFST:	set	8
1994                     ; 250 	int i=0,count;
1996  03e7 5f            	clrw	x
1997  03e8 1f07          	ldw	(OFST-1,sp),x
1998                     ; 251         char cmd[]={0x40,0x00,0x00,0x00,0x00,0x95};//CMD0
2000  03ea 96            	ldw	x,sp
2001  03eb 5c            	incw	x
2002  03ec 90ae0003      	ldw	y,#L175_cmd
2003  03f0 a606          	ld	a,#6
2004  03f2 cd0000        	call	c_xymvx
2006                     ; 252 	sdc_spi_init();       
2008  03f5 cd0009        	call	_sdc_spi_init
2011  03f8 1e07          	ldw	x,(OFST-1,sp)
2012  03fa 2008          	jra	L126
2013  03fc               L516:
2014                     ; 255           sdc_readbyte();
2016  03fc cd00a6        	call	_sdc_readbyte
2018                     ; 254         for(;i<10;i++)
2020  03ff 1e07          	ldw	x,(OFST-1,sp)
2021  0401 5c            	incw	x
2022  0402 1f07          	ldw	(OFST-1,sp),x
2023  0404               L126:
2026  0404 a3000a        	cpw	x,#10
2027  0407 2ff3          	jrslt	L516
2028                     ; 256         count=0;
2030  0409 5f            	clrw	x
2031  040a 1f07          	ldw	(OFST-1,sp),x
2033  040c 200b          	jra	L136
2034  040e               L526:
2035                     ; 259             if(count++>200)
2037  040e 1e07          	ldw	x,(OFST-1,sp)
2038  0410 5c            	incw	x
2039  0411 1f07          	ldw	(OFST-1,sp),x
2040  0413 5a            	decw	x
2041  0414 a300c9        	cpw	x,#201
2042                     ; 260                 return 1;
2044  0417 2e20          	jrsge	LC002
2045  0419               L136:
2046                     ; 257 	while(sd_sdc_spi_sendbyte_command(cmd)!=0x01)
2048  0419 96            	ldw	x,sp
2049  041a 5c            	incw	x
2050  041b cd0373        	call	_sd_sdc_spi_sendbyte_command
2052  041e 4a            	dec	a
2053  041f 26ed          	jrne	L526
2054                     ; 263 	cmd[0]=0X41;//CMD1
2056  0421 a641          	ld	a,#65
2057  0423 6b01          	ld	(OFST-7,sp),a
2058                     ; 264 	cmd[5]=0XFF;
2060  0425 a6ff          	ld	a,#255
2061  0427 6b06          	ld	(OFST-2,sp),a
2062                     ; 266         count=0;
2064  0429 5f            	clrw	x
2065  042a 1f07          	ldw	(OFST-1,sp),x
2067  042c 2010          	jra	L346
2068  042e               L736:
2069                     ; 269             if(count++>200)
2071  042e 1e07          	ldw	x,(OFST-1,sp)
2072  0430 5c            	incw	x
2073  0431 1f07          	ldw	(OFST-1,sp),x
2074  0433 5a            	decw	x
2075  0434 a300c9        	cpw	x,#201
2076  0437 2f05          	jrslt	L346
2077                     ; 270                 return 1;          
2079  0439               LC002:
2081  0439 a601          	ld	a,#1
2083  043b               L272:
2085  043b 5b08          	addw	sp,#8
2086  043d 81            	ret	
2087  043e               L346:
2088                     ; 267 	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00)//SD¿š³õÊŒ»¯ 
2090  043e 96            	ldw	x,sp
2091  043f 5c            	incw	x
2092  0440 cd0373        	call	_sd_sdc_spi_sendbyte_command
2094  0443 4d            	tnz	a
2095  0444 26e8          	jrne	L736
2096                     ; 273         return 0;
2099  0446 20f3          	jra	L272
2102                     	switch	.const
2103  0009               L156_cmd:
2104  0009 00            	dc.b	0
2105  000a 0000000000    	ds.b	5
2193                     ; 276 UINT8 disk_readio(UINT8 *buff,UINT32 sector,UINT32 offset,UINT32 count)
2193                     ; 277 {
2194                     	switch	.text
2195  0448               _disk_readio:
2197  0448 89            	pushw	x
2198  0449 520e          	subw	sp,#14
2199       0000000e      OFST:	set	14
2202                     ; 280     char cmd[6]={0};
2204  044b 96            	ldw	x,sp
2205  044c 1c0007        	addw	x,#OFST-7
2206  044f 90ae0009      	ldw	y,#L156_cmd
2207  0453 a606          	ld	a,#6
2208  0455 cd0000        	call	c_xymvx
2210                     ; 281     UINT8 res= 1;
2212  0458 a601          	ld	a,#1
2213  045a 6b06          	ld	(OFST-8,sp),a
2214                     ; 283 	sector = sector << 9;
2216  045c 96            	ldw	x,sp
2217  045d 1c0013        	addw	x,#OFST+5
2218  0460 a609          	ld	a,#9
2219  0462 cd0000        	call	c_lglsh
2221                     ; 284 	cmd[0]=0X51;
2223  0465 a651          	ld	a,#81
2224  0467 6b07          	ld	(OFST-7,sp),a
2225                     ; 285 	cmd[1] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0xFF000000) >>24);
2227  0469 96            	ldw	x,sp
2228  046a 1c0013        	addw	x,#OFST+5
2229  046d cd0000        	call	c_ltor
2231  0470 3f03          	clr	c_lreg+3
2232  0472 3f02          	clr	c_lreg+2
2233  0474 3f01          	clr	c_lreg+1
2234  0476 a618          	ld	a,#24
2235  0478 cd0000        	call	c_lursh
2237  047b b603          	ld	a,c_lreg+3
2238  047d 6b08          	ld	(OFST-6,sp),a
2239                     ; 286 	cmd[2] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x00FF0000) >>16);
2241  047f 96            	ldw	x,sp
2242  0480 1c0013        	addw	x,#OFST+5
2243  0483 cd0000        	call	c_ltor
2245  0486 3f03          	clr	c_lreg+3
2246  0488 3f02          	clr	c_lreg+2
2247  048a 3f00          	clr	c_lreg
2248  048c a610          	ld	a,#16
2249  048e cd0000        	call	c_lursh
2251  0491 b603          	ld	a,c_lreg+3
2252  0493 6b09          	ld	(OFST-5,sp),a
2253                     ; 287 	cmd[3] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x0000FF00) >>8);
2255  0495 96            	ldw	x,sp
2256  0496 1c0013        	addw	x,#OFST+5
2257  0499 cd0000        	call	c_ltor
2259  049c 3f03          	clr	c_lreg+3
2260  049e 3f01          	clr	c_lreg+1
2261  04a0 3f00          	clr	c_lreg
2262  04a2 a608          	ld	a,#8
2263  04a4 cd0000        	call	c_lursh
2265  04a7 b603          	ld	a,c_lreg+3
2266  04a9 6b0a          	ld	(OFST-4,sp),a
2267                     ; 288 	cmd[4] =(UINT8)(((UINT32)((UINT32)sector) & (UINT32)0x000000FF) >>0);
2269  04ab 7b16          	ld	a,(OFST+8,sp)
2270  04ad 6b0b          	ld	(OFST-3,sp),a
2271                     ; 289 	cmd[5]=0xff;
2273  04af a6ff          	ld	a,#255
2274  04b1 6b0c          	ld	(OFST-2,sp),a
2275                     ; 291         time=0;
2277  04b3 0f05          	clr	(OFST-9,sp)
2279  04b5 2008          	jra	L517
2280  04b7               L117:
2281                     ; 294            if(time++>100)
2283  04b7 7b05          	ld	a,(OFST-9,sp)
2284  04b9 0c05          	inc	(OFST-9,sp)
2285  04bb a165          	cp	a,#101
2286                     ; 296               return res;
2288  04bd 2424          	jruge	LC003
2289  04bf               L517:
2290                     ; 292 	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00)
2292  04bf 96            	ldw	x,sp
2293  04c0 1c0007        	addw	x,#OFST-7
2294  04c3 cd0373        	call	_sd_sdc_spi_sendbyte_command
2296  04c6 4d            	tnz	a
2297  04c7 26ee          	jrne	L117
2298                     ; 299         time=0; 
2300  04c9 6b05          	ld	(OFST-9,sp),a
2301                     ; 302         SDC_CS_L();
2303  04cb 721f500f      	bres	20495,#7
2304  04cf cd0000        	call	_delay_us
2307  04d2 2014          	jra	L527
2308  04d4               L327:
2309                     ; 306             if(time++>100)
2311  04d4 7b05          	ld	a,(OFST-9,sp)
2312  04d6 0c05          	inc	(OFST-9,sp)
2313  04d8 a165          	cp	a,#101
2314  04da 250c          	jrult	L527
2315                     ; 308               SDC_CS_H();
2317  04dc 721e500f      	bset	20495,#7
2318  04e0 cd0000        	call	_delay_us
2320                     ; 309               return res;
2322  04e3               LC003:
2324  04e3 7b06          	ld	a,(OFST-8,sp)
2326  04e5               L613:
2328  04e5 5b10          	addw	sp,#16
2329  04e7 81            	ret	
2330  04e8               L527:
2331                     ; 304 	while((sdc_readbyte())!=0xfe)
2333  04e8 cd00a6        	call	_sdc_readbyte
2335  04eb a1fe          	cp	a,#254
2336  04ed 26e5          	jrne	L327
2337                     ; 313          for(i=0;i<offset;i++)
2339  04ef 5f            	clrw	x
2341  04f0 2006          	jra	L737
2342  04f2               L337:
2343                     ; 314               sdc_readbyte();
2345  04f2 cd00a6        	call	_sdc_readbyte
2347                     ; 313          for(i=0;i<offset;i++)
2349  04f5 1e0d          	ldw	x,(OFST-1,sp)
2350  04f7 5c            	incw	x
2351  04f8               L737:
2352  04f8 1f0d          	ldw	(OFST-1,sp),x
2355  04fa cd0000        	call	c_itolx
2357  04fd 96            	ldw	x,sp
2358  04fe 1c0017        	addw	x,#OFST+9
2359  0501 cd0000        	call	c_lcmp
2361  0504 25ec          	jrult	L337
2362  0506               L347:
2363                     ; 316 		*buff++ = sdc_readbyte();
2365  0506 cd00a6        	call	_sdc_readbyte
2367  0509 1e0f          	ldw	x,(OFST+1,sp)
2368  050b f7            	ld	(x),a
2369  050c 5c            	incw	x
2370  050d 1f0f          	ldw	(OFST+1,sp),x
2371                     ; 317             }while (--count);
2373  050f 96            	ldw	x,sp
2374  0510 1c001b        	addw	x,#OFST+13
2375  0513 a601          	ld	a,#1
2376  0515 cd0000        	call	c_lgsbc
2378  0518 96            	ldw	x,sp
2379  0519 1c001b        	addw	x,#OFST+13
2380  051c cd0000        	call	c_lzmp
2382  051f 26e5          	jrne	L347
2383                     ; 318         for(i=0;i<514 - offset - count;i++)
2385  0521 5f            	clrw	x
2387  0522 2006          	jra	L557
2388  0524               L157:
2389                     ; 319                 sdc_readbyte();
2391  0524 cd00a6        	call	_sdc_readbyte
2393                     ; 318         for(i=0;i<514 - offset - count;i++)
2395  0527 1e0d          	ldw	x,(OFST-1,sp)
2396  0529 5c            	incw	x
2397  052a               L557:
2398  052a 1f0d          	ldw	(OFST-1,sp),x
2401  052c cd0000        	call	c_itolx
2403  052f 96            	ldw	x,sp
2404  0530 5c            	incw	x
2405  0531 cd0000        	call	c_rtol
2407  0534 ae0202        	ldw	x,#514
2408  0537 bf02          	ldw	c_lreg+2,x
2409  0539 5f            	clrw	x
2410  053a bf00          	ldw	c_lreg,x
2411  053c 96            	ldw	x,sp
2412  053d 1c0017        	addw	x,#OFST+9
2413  0540 cd0000        	call	c_lsub
2415  0543 96            	ldw	x,sp
2416  0544 1c001b        	addw	x,#OFST+13
2417  0547 cd0000        	call	c_lsub
2419  054a 96            	ldw	x,sp
2420  054b 5c            	incw	x
2421  054c cd0000        	call	c_lcmp
2423  054f 22d3          	jrugt	L157
2424                     ; 320          SDC_CS_H();
2426  0551 721e500f      	bset	20495,#7
2427  0555 cd0000        	call	_delay_us
2429                     ; 321         res = 0;
2431                     ; 322         return res;
2433  0558 4f            	clr	a
2435  0559 208a          	jra	L613
2478                     ; 325 UINT8 disk_sdc_spi_sendbytep (
2478                     ; 326 	const UINT8 *buff,	/* Pointer to the bytes to be written (NULL:Initiate/Finalize sector sdc_spi_sendbyte) */
2478                     ; 327 	UINT32 sc			/* Number of bytes to send, Sector number (LBA) or zero */
2478                     ; 328 )
2478                     ; 329 {
2479                     	switch	.text
2480  055b               _disk_sdc_spi_sendbytep:
2482  055b 88            	push	a
2483       00000001      OFST:	set	1
2486                     ; 330   UINT8 res=0;  
2488                     ; 331   return res;
2490  055c 4f            	clr	a
2493  055d 5b01          	addw	sp,#1
2494  055f 81            	ret	
2616                     ; 333 void readsd(UINT8 *buf,unsigned long addstart)//读SD卡物理扇区
2616                     ; 334 {  unsigned long sdbuff1,sdbuff2,sdbuff3,sdbuff4;   
2617                     	switch	.text
2618  0560               _readsd:
2620  0560 89            	pushw	x
2621  0561 5214          	subw	sp,#20
2622       00000014      OFST:	set	20
2625                     ; 338    sdbuff1=addstart;
2627  0563 1e1b          	ldw	x,(OFST+7,sp)
2628  0565 1f03          	ldw	(OFST-17,sp),x
2629  0567 1e19          	ldw	x,(OFST+5,sp)
2630  0569 1f01          	ldw	(OFST-19,sp),x
2631                     ; 339    sdbuff2=addstart;
2633  056b 1e1b          	ldw	x,(OFST+7,sp)
2634  056d 1f07          	ldw	(OFST-13,sp),x
2635  056f 1e19          	ldw	x,(OFST+5,sp)
2636  0571 1f05          	ldw	(OFST-15,sp),x
2637                     ; 340    sdbuff3=addstart;
2639  0573 1e1b          	ldw	x,(OFST+7,sp)
2640  0575 1f12          	ldw	(OFST-2,sp),x
2641  0577 1e19          	ldw	x,(OFST+5,sp)
2642  0579 1f10          	ldw	(OFST-4,sp),x
2643                     ; 341    sdbuff4=addstart;
2645  057b 1e1b          	ldw	x,(OFST+7,sp)
2646  057d 1f0e          	ldw	(OFST-6,sp),x
2647  057f 1e19          	ldw	x,(OFST+5,sp)
2648  0581 1f0c          	ldw	(OFST-8,sp),x
2649                     ; 342       zh1=(sdbuff1>>24)&0x000000ff;
2651  0583 7b01          	ld	a,(OFST-19,sp)
2652  0585 6b09          	ld	(OFST-11,sp),a
2653                     ; 343        zh2=(sdbuff2>>16)&0x000000ff;
2655  0587 7b06          	ld	a,(OFST-14,sp)
2656  0589 6b0a          	ld	(OFST-10,sp),a
2657                     ; 344          zh3=(sdbuff3>>8)&0x000000ff;
2659  058b 7b12          	ld	a,(OFST-2,sp)
2660  058d 6b0b          	ld	(OFST-9,sp),a
2661                     ; 345          zh4=sdbuff4&0x000000ff;
2663  058f 7b0f          	ld	a,(OFST-5,sp)
2664  0591 6b14          	ld	(OFST+0,sp),a
2665                     ; 347    SDC_CS_H();
2667  0593 721e500f      	bset	20495,#7
2668  0597 cd0000        	call	_delay_us
2670                     ; 348    sdc_sendbyte(0xff);//据说是提高兼容性
2672  059a a6ff          	ld	a,#255
2673  059c cd0012        	call	_sdc_sendbyte
2675                     ; 349     SDC_CS_L();
2677  059f 721f500f      	bres	20495,#7
2678  05a3 cd0000        	call	_delay_us
2680                     ; 350     sdc_sendbyte( 0x51);
2682  05a6 a651          	ld	a,#81
2683  05a8 cd0012        	call	_sdc_sendbyte
2685                     ; 351     sdc_sendbyte( zh1);
2687  05ab 7b09          	ld	a,(OFST-11,sp)
2688  05ad cd0012        	call	_sdc_sendbyte
2690                     ; 352     sdc_sendbyte( zh2);
2692  05b0 7b0a          	ld	a,(OFST-10,sp)
2693  05b2 cd0012        	call	_sdc_sendbyte
2695                     ; 353     sdc_sendbyte(zh3);
2697  05b5 7b0b          	ld	a,(OFST-9,sp)
2698  05b7 cd0012        	call	_sdc_sendbyte
2700                     ; 354     sdc_sendbyte(zh4);
2702  05ba 7b14          	ld	a,(OFST+0,sp)
2703  05bc cd0012        	call	_sdc_sendbyte
2705                     ; 355     sdc_sendbyte(0xff);
2707  05bf a6ff          	ld	a,#255
2708  05c1 cd0012        	call	_sdc_sendbyte
2710  05c4               L7401:
2711                     ; 359     fhz=sdc_readbyte();
2713  05c4 cd00a6        	call	_sdc_readbyte
2715  05c7 6b14          	ld	(OFST+0,sp),a
2716                     ; 360     if(fhz==0x00)break;
2718  05c9 26f9          	jrne	L7401
2720  05cb               L5501:
2721                     ; 365     fhz=sdc_readbyte();
2723  05cb cd00a6        	call	_sdc_readbyte
2725  05ce 6b14          	ld	(OFST+0,sp),a
2726                     ; 366     if(fhz==0xfe)break;
2728  05d0 a1fe          	cp	a,#254
2729  05d2 26f7          	jrne	L5501
2731                     ; 369   n=0;
2733  05d4 5f            	clrw	x
2734  05d5 1f12          	ldw	(OFST-2,sp),x
2735  05d7 1f10          	ldw	(OFST-4,sp),x
2736                     ; 370 	for(j=512;j;j--)
2738  05d9 ae0200        	ldw	x,#512
2739  05dc 1f0e          	ldw	(OFST-6,sp),x
2740  05de 5f            	clrw	x
2741  05df 1f0c          	ldw	(OFST-8,sp),x
2742  05e1               L3601:
2743                     ; 372    buf[n]=sdc_readbyte();
2745  05e1 cd00a6        	call	_sdc_readbyte
2747  05e4 1e15          	ldw	x,(OFST+1,sp)
2748  05e6 72fb12        	addw	x,(OFST-2,sp)
2749  05e9 f7            	ld	(x),a
2750                     ; 373     n++;
2752  05ea 96            	ldw	x,sp
2753  05eb 1c0010        	addw	x,#OFST-4
2754  05ee a601          	ld	a,#1
2755  05f0 cd0000        	call	c_lgadc
2757                     ; 370 	for(j=512;j;j--)
2759  05f3 96            	ldw	x,sp
2760  05f4 1c000c        	addw	x,#OFST-8
2761  05f7 a601          	ld	a,#1
2762  05f9 cd0000        	call	c_lgsbc
2766  05fc 96            	ldw	x,sp
2767  05fd 1c000c        	addw	x,#OFST-8
2768  0600 cd0000        	call	c_lzmp
2770  0603 26dc          	jrne	L3601
2771                     ; 376 fhz=sdc_readbyte();
2773  0605 cd00a6        	call	_sdc_readbyte
2775                     ; 377 fhz=sdc_readbyte();
2777  0608 cd00a6        	call	_sdc_readbyte
2779                     ; 378 SDC_CS_H();
2781  060b 721e500f      	bset	20495,#7
2782  060f cd0000        	call	_delay_us
2784                     ; 379 sdc_sendbyte(0xff);
2786  0612 a6ff          	ld	a,#255
2787  0614 cd0012        	call	_sdc_sendbyte
2789                     ; 380 }
2792  0617 5b16          	addw	sp,#22
2793  0619 81            	ret	
2817                     	switch	.const
2818  000f               L7701_cmd:
2819  000f 40            	dc.b	64
2820  0010 00            	dc.b	0
2821  0011 00            	dc.b	0
2822  0012 00            	dc.b	0
2823  0013 00            	dc.b	0
2824  0014 95            	dc.b	149
2882                     ; 12 DSTATUS disk_initialize (void)
2882                     ; 13 {
2883                     	switch	.text
2884  061a               _disk_initialize:
2886  061a 5208          	subw	sp,#8
2887       00000008      OFST:	set	8
2890                     ; 14 	int i=0,count;
2892  061c 5f            	clrw	x
2893  061d 1f07          	ldw	(OFST-1,sp),x
2894                     ; 15   char cmd[]={0x40,0x00,0x00,0x00,0x00,0x95};//CMD0
2896  061f 96            	ldw	x,sp
2897  0620 5c            	incw	x
2898  0621 90ae000f      	ldw	y,#L7701_cmd
2899  0625 a606          	ld	a,#6
2900  0627 cd0000        	call	c_xymvx
2902                     ; 16 	sdc_spi_init();       
2904  062a cd0009        	call	_sdc_spi_init
2907  062d 1e07          	ldw	x,(OFST-1,sp)
2908  062f 2008          	jra	L5311
2909  0631               L1311:
2910                     ; 19           sdc_readbyte();
2912  0631 cd00a6        	call	_sdc_readbyte
2914                     ; 18         for(;i<10;i++)
2916  0634 1e07          	ldw	x,(OFST-1,sp)
2917  0636 5c            	incw	x
2918  0637 1f07          	ldw	(OFST-1,sp),x
2919  0639               L5311:
2922  0639 a3000a        	cpw	x,#10
2923  063c 2ff3          	jrslt	L1311
2924                     ; 20         count=0;
2926  063e 5f            	clrw	x
2927  063f 1f07          	ldw	(OFST-1,sp),x
2929  0641 200b          	jra	L5411
2930  0643               L1411:
2931                     ; 23             if(count++>200)
2933  0643 1e07          	ldw	x,(OFST-1,sp)
2934  0645 5c            	incw	x
2935  0646 1f07          	ldw	(OFST-1,sp),x
2936  0648 5a            	decw	x
2937  0649 a300c9        	cpw	x,#201
2938                     ; 24                 return STA_NOINIT;
2940  064c 2e20          	jrsge	LC004
2941  064e               L5411:
2942                     ; 21 	while(sd_sdc_spi_sendbyte_command(cmd)!=0x01)
2944  064e 96            	ldw	x,sp
2945  064f 5c            	incw	x
2946  0650 cd0373        	call	_sd_sdc_spi_sendbyte_command
2948  0653 4a            	dec	a
2949  0654 26ed          	jrne	L1411
2950                     ; 27 	cmd[0]=0X41;//CMD1
2952  0656 a641          	ld	a,#65
2953  0658 6b01          	ld	(OFST-7,sp),a
2954                     ; 28 	cmd[5]=0XFF;
2956  065a a6ff          	ld	a,#255
2957  065c 6b06          	ld	(OFST-2,sp),a
2958                     ; 30         count=0;
2960  065e 5f            	clrw	x
2961  065f 1f07          	ldw	(OFST-1,sp),x
2963  0661 2010          	jra	L7511
2964  0663               L3511:
2965                     ; 33             if(count++>200)
2967  0663 1e07          	ldw	x,(OFST-1,sp)
2968  0665 5c            	incw	x
2969  0666 1f07          	ldw	(OFST-1,sp),x
2970  0668 5a            	decw	x
2971  0669 a300c9        	cpw	x,#201
2972  066c 2f05          	jrslt	L7511
2973                     ; 34                 return STA_NOINIT;       
2975  066e               LC004:
2977  066e a601          	ld	a,#1
2979  0670               L673:
2981  0670 5b08          	addw	sp,#8
2982  0672 81            	ret	
2983  0673               L7511:
2984                     ; 31 	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00)//SD¿š³õÊŒ»¯ 
2986  0673 96            	ldw	x,sp
2987  0674 5c            	incw	x
2988  0675 cd0373        	call	_sd_sdc_spi_sendbyte_command
2990  0678 4d            	tnz	a
2991  0679 26e8          	jrne	L3511
2992                     ; 37         return 0;
2995  067b 20f3          	jra	L673
2998                     	switch	.const
2999  0015               L5611_cmd:
3000  0015 00            	dc.b	0
3001  0016 0000000000    	ds.b	5
3124                     ; 46 DRESULT disk_readp (
3124                     ; 47 	BYTE* buff,		/* Pointer to the destination object */
3124                     ; 48 	DWORD sector,	/* Sector number (LBA) */
3124                     ; 49 	UINT offset,	/* Offset in the sector */
3124                     ; 50 	UINT count		/* Byte count (bit15:destination) */
3124                     ; 51 )
3124                     ; 52 {
3125                     	switch	.text
3126  067d               _disk_readp:
3128  067d 89            	pushw	x
3129  067e 520a          	subw	sp,#10
3130       0000000a      OFST:	set	10
3133                     ; 55 	char cmd[6]={0};
3135  0680 96            	ldw	x,sp
3136  0681 5c            	incw	x
3137  0682 90ae0015      	ldw	y,#L5611_cmd
3138  0686 a606          	ld	a,#6
3139  0688 cd0000        	call	c_xymvx
3141                     ; 56 	UINT8 res= RES_ERROR;
3143  068b a601          	ld	a,#1
3144  068d 6b08          	ld	(OFST-2,sp),a
3145                     ; 58 	sector = sector << 9;
3147  068f 96            	ldw	x,sp
3148  0690 1c000f        	addw	x,#OFST+5
3149  0693 a609          	ld	a,#9
3150  0695 cd0000        	call	c_lglsh
3152                     ; 59 	cmd[0]=0X51;
3154  0698 a651          	ld	a,#81
3155  069a 6b01          	ld	(OFST-9,sp),a
3156                     ; 60 	*((UINT32*)(cmd+1))=sector;
3158  069c 1e11          	ldw	x,(OFST+7,sp)
3159  069e 1f04          	ldw	(OFST-6,sp),x
3160  06a0 1e0f          	ldw	x,(OFST+5,sp)
3161  06a2 1f02          	ldw	(OFST-8,sp),x
3162                     ; 65 	cmd[5]=0xff;
3164  06a4 a6ff          	ld	a,#255
3165  06a6 6b06          	ld	(OFST-4,sp),a
3166                     ; 66   time=0;
3168  06a8 0f07          	clr	(OFST-3,sp)
3170  06aa 2008          	jra	L5421
3171  06ac               L1421:
3172                     ; 68 		 if(time++>100)
3174  06ac 7b07          	ld	a,(OFST-3,sp)
3175  06ae 0c07          	inc	(OFST-3,sp)
3176  06b0 a165          	cp	a,#101
3177                     ; 70 				return res; 
3179  06b2 2422          	jruge	LC005
3180  06b4               L5421:
3181                     ; 67 	while(sd_sdc_spi_sendbyte_command(cmd)!=0x00){
3183  06b4 96            	ldw	x,sp
3184  06b5 5c            	incw	x
3185  06b6 cd0373        	call	_sd_sdc_spi_sendbyte_command
3187  06b9 4d            	tnz	a
3188  06ba 26f0          	jrne	L1421
3189                     ; 73 	time=0; 
3191  06bc 6b07          	ld	(OFST-3,sp),a
3192                     ; 74 	SDC_CS_L();
3194  06be 721f500f      	bres	20495,#7
3195  06c2 cd0000        	call	_delay_us
3198  06c5 2014          	jra	L5521
3199  06c7               L3521:
3200                     ; 77 			if(time++>100)
3202  06c7 7b07          	ld	a,(OFST-3,sp)
3203  06c9 0c07          	inc	(OFST-3,sp)
3204  06cb a165          	cp	a,#101
3205  06cd 250c          	jrult	L5521
3206                     ; 79 				SDC_CS_H();
3208  06cf 721e500f      	bset	20495,#7
3209  06d3 cd0000        	call	_delay_us
3211                     ; 80 				return res;
3213  06d6               LC005:
3215  06d6 7b08          	ld	a,(OFST-2,sp)
3217  06d8               L224:
3219  06d8 5b0c          	addw	sp,#12
3220  06da 81            	ret	
3221  06db               L5521:
3222                     ; 75 	while((sdc_readbyte())!=0xfe)
3224  06db cd00a6        	call	_sdc_readbyte
3226  06de a1fe          	cp	a,#254
3227  06e0 26e5          	jrne	L3521
3228                     ; 83   for(i=0;i<offset;i++)
3230  06e2 5f            	clrw	x
3232  06e3 2006          	jra	L7621
3233  06e5               L3621:
3234                     ; 84 		sdc_readbyte();
3236  06e5 cd00a6        	call	_sdc_readbyte
3238                     ; 83   for(i=0;i<offset;i++)
3240  06e8 1e09          	ldw	x,(OFST-1,sp)
3241  06ea 5c            	incw	x
3242  06eb               L7621:
3243  06eb 1f09          	ldw	(OFST-1,sp),x
3246  06ed 1313          	cpw	x,(OFST+9,sp)
3247  06ef 25f4          	jrult	L3621
3248  06f1               L3721:
3249                     ; 86 				*buff++ = sdc_readbyte();
3251  06f1 cd00a6        	call	_sdc_readbyte
3253  06f4 1e0b          	ldw	x,(OFST+1,sp)
3254  06f6 f7            	ld	(x),a
3255  06f7 5c            	incw	x
3256  06f8 1f0b          	ldw	(OFST+1,sp),x
3257                     ; 87 		}while (--count);
3259  06fa 1e15          	ldw	x,(OFST+11,sp)
3260  06fc 5a            	decw	x
3261  06fd 1f15          	ldw	(OFST+11,sp),x
3262  06ff 26f0          	jrne	L3721
3263                     ; 88 		for(i=0;i<512 - offset - count;i++)
3265  0701 5f            	clrw	x
3267  0702 2006          	jra	L5031
3268  0704               L1031:
3269                     ; 89 						sdc_readbyte();
3271  0704 cd00a6        	call	_sdc_readbyte
3273                     ; 88 		for(i=0;i<512 - offset - count;i++)
3275  0707 1e09          	ldw	x,(OFST-1,sp)
3276  0709 5c            	incw	x
3277  070a               L5031:
3278  070a 1f09          	ldw	(OFST-1,sp),x
3281  070c ae0200        	ldw	x,#512
3282  070f 72f013        	subw	x,(OFST+9,sp)
3283  0712 72f015        	subw	x,(OFST+11,sp)
3284  0715 1309          	cpw	x,(OFST-1,sp)
3285  0717 22eb          	jrugt	L1031
3286                     ; 90 		SDC_CS_H();
3288  0719 721e500f      	bset	20495,#7
3289  071d cd0000        	call	_delay_us
3291                     ; 91 		res = RES_OK;
3293                     ; 92 		return res;
3295  0720 4f            	clr	a
3297  0721 20b5          	jra	L224
3340                     ; 103 DRESULT disk_writep (
3340                     ; 104 	BYTE* buff,		/* Pointer to the data to be written, NULL:Initiate/Finalize write operation */
3340                     ; 105 	DWORD sc		/* Sector number (LBA) or Number of bytes to send */
3340                     ; 106 )
3340                     ; 107 {
3341                     	switch	.text
3342  0723               _disk_writep:
3344  0723 89            	pushw	x
3345       00000000      OFST:	set	0
3348                     ; 111 	if (!buff) {
3350  0724 5d            	tnzw	x
3351  0725 2607          	jrne	L7331
3352                     ; 112 		if (sc) {
3354  0727 96            	ldw	x,sp
3355  0728 1c0005        	addw	x,#OFST+5
3356  072b cd0000        	call	c_lzmp
3359  072e               L7331:
3360                     ; 127 	return 1;
3362  072e a601          	ld	a,#1
3365  0730 85            	popw	x
3366  0731 81            	ret	
3379                     	xdef	_readsd
3380                     	xdef	_disk_sdc_spi_sendbytep
3381                     	xdef	_disk_readio
3382                     	xdef	_disk_initialize_io
3383                     	xdef	_sd_sdc_spi_sendbyte_command
3384                     	xdef	_sd_sdc_spi_sendbyte_command_slow
3385                     	xdef	_SD_Block_R
3386                     	xdef	_SD_Block_W
3387                     	xdef	_SD_Init
3388                     	xdef	_SD_Cmd
3389                     	xdef	_SD_Response
3390                     	xdef	_DELAY_MS
3391                     	xdef	_len
3392                     	xdef	_sdc_readbyte
3393                     	xdef	_sdc_readbyte_fast
3394                     	xdef	_sdc_readbyte_slow
3395                     	xdef	_sdc_sendbyte
3396                     	xdef	_sdc_spi_init
3397                     	xdef	___nop
3398                     	xref	_temp
3399                     	xdef	_delay_us
3400                     	xdef	_DUS_C
3401                     	xdef	_disk_writep
3402                     	xdef	_disk_readp
3403                     	xdef	_disk_initialize
3404                     	xref.b	c_lreg
3405                     	xref.b	c_x
3424                     	xref	c_lgadc
3425                     	xref	c_rtol
3426                     	xref	c_lsub
3427                     	xref	c_lzmp
3428                     	xref	c_lgsbc
3429                     	xref	c_lcmp
3430                     	xref	c_itolx
3431                     	xref	c_lursh
3432                     	xref	c_ltor
3433                     	xref	c_lglsh
3434                     	xref	c_xymvx
3435                     	end
