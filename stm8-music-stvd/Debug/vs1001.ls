   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  46                     ; 28 void vsc_spi_init(void)
  46                     ; 29 {
  48                     	switch	.text
  49  0000               _vsc_spi_init:
  53                     ; 31 }
  56  0000 81            	ret	
 102                     ; 33 void vsc_sendbyte(unsigned char data)
 102                     ; 34 {
 103                     	switch	.text
 104  0001               _vsc_sendbyte:
 106  0001 89            	pushw	x
 107       00000002      OFST:	set	2
 110                     ; 35     unsigned char i,temp=data;
 112  0002 6b01          	ld	(OFST-1,sp),a
 113                     ; 36     VSC_SCK_H();
 115  0004 721a500a      	bset	20490,#5
 116                     ; 38     for(i=0;i<8;i++)
 121  0008 0f02          	clr	(OFST+0,sp)
 122  000a               L14:
 123                     ; 40       VSC_SCK_L();;
 125  000a 721b500a      	bres	20490,#5
 126                     ; 41       if(temp&0x80)
 129  000e 7b01          	ld	a,(OFST-1,sp)
 130  0010 2a06          	jrpl	L74
 131                     ; 43           VSC_MOSI_H(); 
 133  0012 721c500a      	bset	20490,#6
 135  0016 2004          	jra	L15
 136  0018               L74:
 137                     ; 47           VSC_MOSI_L();
 139  0018 721d500a      	bres	20490,#6
 140  001c               L15:
 141                     ; 50       VSC_SCK_H(); 
 143  001c 721a500a      	bset	20490,#5
 144                     ; 51       temp<<=1;
 146  0020 0801          	sll	(OFST-1,sp)
 147                     ; 38     for(i=0;i<8;i++)
 149  0022 0c02          	inc	(OFST+0,sp)
 152  0024 7b02          	ld	a,(OFST+0,sp)
 153  0026 a108          	cp	a,#8
 154  0028 25e0          	jrult	L14
 155                     ; 53 }
 158  002a 85            	popw	x
 159  002b 81            	ret	
 206                     ; 54 void vsc_sendbyte_slow(unsigned char data){
 207                     	switch	.text
 208  002c               _vsc_sendbyte_slow:
 210  002c 89            	pushw	x
 211       00000002      OFST:	set	2
 214                     ; 55     unsigned char i,temp=data;
 216  002d 6b01          	ld	(OFST-1,sp),a
 217                     ; 56     VSC_SCK_H();
 219  002f 721a500a      	bset	20490,#5
 220                     ; 57     delay_us();
 222  0033 cd0000        	call	_delay_us
 224                     ; 58     for(i=0;i<8;i++)
 226  0036 0f02          	clr	(OFST+0,sp)
 227  0038               L37:
 228                     ; 60       VSC_SCK_L();;
 230  0038 721b500a      	bres	20490,#5
 231                     ; 61       if(temp&0x80)
 234  003c 7b01          	ld	a,(OFST-1,sp)
 235  003e 2a06          	jrpl	L101
 236                     ; 63           VSC_MOSI_H(); 
 238  0040 721c500a      	bset	20490,#6
 240  0044 2004          	jra	L301
 241  0046               L101:
 242                     ; 67           VSC_MOSI_L();
 244  0046 721d500a      	bres	20490,#6
 245  004a               L301:
 246                     ; 69 			delay_us();delay_us();
 248  004a cd0000        	call	_delay_us
 252  004d cd0000        	call	_delay_us
 254                     ; 70       VSC_SCK_H(); delay_us();delay_us();
 256  0050 721a500a      	bset	20490,#5
 259  0054 cd0000        	call	_delay_us
 263  0057 cd0000        	call	_delay_us
 265                     ; 71       temp<<=1;
 267  005a 0801          	sll	(OFST-1,sp)
 268                     ; 58     for(i=0;i<8;i++)
 270  005c 0c02          	inc	(OFST+0,sp)
 273  005e 7b02          	ld	a,(OFST+0,sp)
 274  0060 a108          	cp	a,#8
 275  0062 25d4          	jrult	L37
 276                     ; 73 }
 279  0064 85            	popw	x
 280  0065 81            	ret	
 319                     ; 75 unsigned char vsc_readbyte(void)
 319                     ; 76 {
 320                     	switch	.text
 321  0066               _vsc_readbyte:
 323  0066 89            	pushw	x
 324       00000002      OFST:	set	2
 327                     ; 77 	unsigned char r=0,i;
 329  0067 0f01          	clr	(OFST-1,sp)
 330                     ; 79 	VSC_SCK_H(); 
 332  0069 721a500a      	bset	20490,#5
 333                     ; 81 	for(i=0;i<8;i++)
 338  006d 0f02          	clr	(OFST+0,sp)
 339  006f               L321:
 340                     ; 83 	VSC_SCK_L();
 342  006f 721b500a      	bres	20490,#5
 343                     ; 84 	r <<= 1; 
 345  0073 0801          	sll	(OFST-1,sp)
 346                     ; 85 	if(VSC_MISO_RE())
 348  0075 720f500b02    	btjf	20491,#7,L131
 349                     ; 86 		r++;
 351  007a 0c01          	inc	(OFST-1,sp)
 352  007c               L131:
 353                     ; 87 	VSC_SCK_H();
 355  007c 721a500a      	bset	20490,#5
 356                     ; 81 	for(i=0;i<8;i++)
 358  0080 0c02          	inc	(OFST+0,sp)
 361  0082 7b02          	ld	a,(OFST+0,sp)
 362  0084 a108          	cp	a,#8
 363  0086 25e7          	jrult	L321
 364                     ; 89 	return r;
 366  0088 7b01          	ld	a,(OFST-1,sp)
 369  008a 85            	popw	x
 370  008b 81            	ret	
 435                     ; 19 void vsd_sendbyte(unsigned char data)
 435                     ; 20 {
 436                     	switch	.text
 437  008c               _vsd_sendbyte:
 439  008c 89            	pushw	x
 440       00000002      OFST:	set	2
 443                     ; 21     unsigned char i,temp=data;
 445  008d 6b01          	ld	(OFST-1,sp),a
 446                     ; 22     for(i=0;i<8;i++)
 448  008f 0f02          	clr	(OFST+0,sp)
 449  0091               L161:
 450                     ; 25       VSD_SCK_L();
 452  0091 721b5014      	bres	20500,#5
 453                     ; 27       if(temp&0x80){
 455  0095 7b01          	ld	a,(OFST-1,sp)
 456  0097 2a06          	jrpl	L761
 457                     ; 28           VSD_MOSI_H(); 
 459  0099 7212500a      	bset	20490,#1
 461  009d 2004          	jra	L171
 462  009f               L761:
 463                     ; 30           VSD_MOSI_L();
 465  009f 7213500a      	bres	20490,#1
 466  00a3               L171:
 467                     ; 32 			nop();
 471                     ; 33 			VSD_SCK_H(); 
 474  00a3 721a5014      	bset	20500,#5
 475  00a7 9d            	nop	
 476                     ; 34 			VS_BSYNC_L();
 478  00a8 72115005      	bres	20485,#0
 479                     ; 35 			nop();
 483                     ; 36       temp<<=1;
 486  00ac 0801          	sll	(OFST-1,sp)
 487                     ; 22     for(i=0;i<8;i++)
 489  00ae 0c02          	inc	(OFST+0,sp)
 490  00b0 9d            	nop	
 493  00b1 7b02          	ld	a,(OFST+0,sp)
 494  00b3 a108          	cp	a,#8
 495  00b5 25da          	jrult	L161
 496                     ; 38 		VSD_SCK_L();
 498  00b7 721b5014      	bres	20500,#5
 499                     ; 39 }
 502  00bb 85            	popw	x
 503  00bc 81            	ret	
 554                     ; 59 unsigned char write_byte_spi(unsigned char data)
 554                     ; 60 {
 555                     	switch	.text
 556  00bd               _write_byte_spi:
 560                     ; 61 	vsc_sendbyte(data);
 562  00bd cd0001        	call	_vsc_sendbyte
 564                     ; 64 	return vsc_readbyte();
 569  00c0 20a4          	jp	_vsc_readbyte
 627                     ; 71 void vs1001_read(unsigned char address, unsigned short count, unsigned short *pData)
 627                     ; 72 {
 628                     	switch	.text
 629  00c2               _vs1001_read:
 631  00c2 88            	push	a
 632       00000001      OFST:	set	1
 635                     ; 74 	VSC_CS_L(); 	// xCS lo
 637  00c3 7219500a      	bres	20490,#4
 638  00c7 88            	push	a
 639                     ; 75 	VS_BSYNC_L(); 	// byte sync lo
 641  00c8 72115005      	bres	20485,#0
 642                     ; 77 	vsc_sendbyte(VS1001_READ);
 644  00cc a603          	ld	a,#3
 645  00ce cd0001        	call	_vsc_sendbyte
 647                     ; 78 	vsc_sendbyte(address);
 649  00d1 7b02          	ld	a,(OFST+1,sp)
 650  00d3 cd0001        	call	_vsc_sendbyte
 653  00d6 201f          	jra	L342
 654  00d8               L142:
 655                     ; 82 		*pData = (vsc_readbyte())<<8; 
 657  00d8 ad8c          	call	_vsc_readbyte
 659  00da 97            	ld	xl,a
 660  00db 4f            	clr	a
 661  00dc 1607          	ldw	y,(OFST+6,sp)
 662  00de 02            	rlwa	x,a
 663  00df 90ff          	ldw	(y),x
 664                     ; 84 		*pData++ |= vsc_readbyte();
 666  00e1 ad83          	call	_vsc_readbyte
 668  00e3 5f            	clrw	x
 669  00e4 97            	ld	xl,a
 670  00e5 1607          	ldw	y,(OFST+6,sp)
 671  00e7 01            	rrwa	x,a
 672  00e8 90ea01        	or	a,(1,y)
 673  00eb 01            	rrwa	x,a
 674  00ec 90fa          	or	a,(y)
 675  00ee 01            	rrwa	x,a
 676  00ef 90ff          	ldw	(y),x
 677  00f1 72a90002      	addw	y,#2
 678  00f5 1707          	ldw	(OFST+6,sp),y
 679  00f7               L342:
 680                     ; 80 	while (count--)
 682  00f7 1e05          	ldw	x,(OFST+4,sp)
 683  00f9 5a            	decw	x
 684  00fa 1f05          	ldw	(OFST+4,sp),x
 685  00fc 5c            	incw	x
 686  00fd 26d9          	jrne	L142
 687                     ; 87 	VSC_CS_H();	// xCS hi
 689  00ff 7218500a      	bset	20490,#4
 690                     ; 91 	for (i=0;i<8;i++)
 692  0103 0f01          	clr	(OFST+0,sp)
 693  0105               L742:
 697  0105 0c01          	inc	(OFST+0,sp)
 700  0107 7b01          	ld	a,(OFST+0,sp)
 701  0109 a108          	cp	a,#8
 702  010b 25f8          	jrult	L742
 703                     ; 94 }
 706  010d 85            	popw	x
 707  010e 81            	ret	
 764                     ; 101 void vs1001_write(unsigned char address, unsigned short count, unsigned short *pData)
 764                     ; 102 {
 765                     	switch	.text
 766  010f               _vs1001_write:
 768  010f 88            	push	a
 769       00000001      OFST:	set	1
 772                     ; 104 	VSC_CS_L(); 	// xCS lo
 774  0110 7219500a      	bres	20490,#4
 775  0114 88            	push	a
 776                     ; 105 	VS_BSYNC_L(); 	// byte sync lo
 778  0115 72115005      	bres	20485,#0
 779                     ; 107 	vsc_sendbyte(VS1001_WRITE);
 781  0119 a602          	ld	a,#2
 782  011b cd0001        	call	_vsc_sendbyte
 784                     ; 108 	vsc_sendbyte(address);
 786  011e 7b02          	ld	a,(OFST+1,sp)
 787  0120 cd0001        	call	_vsc_sendbyte
 790  0123 201a          	jra	L303
 791  0125               L103:
 792                     ; 112 		vsc_sendbyte((unsigned char)(((*pData&0xFF00) >> 8)&0xFF));
 794  0125 1e07          	ldw	x,(OFST+6,sp)
 795  0127 fe            	ldw	x,(x)
 796  0128 01            	rrwa	x,a
 797  0129 4f            	clr	a
 798  012a 02            	rlwa	x,a
 799  012b 4f            	clr	a
 800  012c 01            	rrwa	x,a
 801  012d 9f            	ld	a,xl
 802  012e cd0001        	call	_vsc_sendbyte
 804                     ; 113 		vsc_sendbyte((unsigned char)((*pData)&0xFF));
 806  0131 1e07          	ldw	x,(OFST+6,sp)
 807  0133 e601          	ld	a,(1,x)
 808  0135 cd0001        	call	_vsc_sendbyte
 810                     ; 114 		pData++;
 812  0138 1e07          	ldw	x,(OFST+6,sp)
 813  013a 1c0002        	addw	x,#2
 814  013d 1f07          	ldw	(OFST+6,sp),x
 815  013f               L303:
 816                     ; 110 	while (count--)
 818  013f 1e05          	ldw	x,(OFST+4,sp)
 819  0141 5a            	decw	x
 820  0142 1f05          	ldw	(OFST+4,sp),x
 821  0144 5c            	incw	x
 822  0145 26de          	jrne	L103
 823                     ; 117 	VSC_CS_H();	// xCS hi
 825  0147 7218500a      	bset	20490,#4
 826                     ; 121 	for (i=0;i<8;i++)
 828  014b 0f01          	clr	(OFST+0,sp)
 829  014d               L703:
 833  014d 0c01          	inc	(OFST+0,sp)
 836  014f 7b01          	ld	a,(OFST+0,sp)
 837  0151 a108          	cp	a,#8
 838  0153 25f8          	jrult	L703
 839                     ; 123 }
 842  0155 85            	popw	x
 843  0156 81            	ret	
 877                     ; 143 void vs1001_send_data(unsigned char b)
 877                     ; 144 {
 878                     	switch	.text
 879  0157               _vs1001_send_data:
 881  0157 88            	push	a
 882       00000000      OFST:	set	0
 885                     ; 146 	VSC_CS_H();
 887  0158 7218500a      	bset	20490,#4
 889  015c               L333:
 890                     ; 147 	while(VS_DREQ_RE()==0);
 892  015c 7205500bfb    	btjf	20491,#2,L333
 893                     ; 148 	VS_BSYNC_H();	// byte sync hi
 895  0161 72105005      	bset	20485,#0
 896                     ; 149 	delay_us();
 898  0165 cd0000        	call	_delay_us
 900                     ; 150 	vsd_sendbyte(b);
 902  0168 7b01          	ld	a,(OFST+1,sp)
 903  016a cd008c        	call	_vsd_sendbyte
 905                     ; 151 	VS_BSYNC_L();	// byte sync lo
 907  016d 72115005      	bres	20485,#0
 908                     ; 155 }
 911  0171 84            	pop	a
 912  0172 81            	ret	
 947                     ; 161 void vs1001_send_32(unsigned char *p)
 947                     ; 162 {
 948                     	switch	.text
 949  0173               _vs1001_send_32:
 953                     ; 167 }
 956  0173 81            	ret	
 959                     .const:	section	.text
 960  0000               L553_cmd:
 961  0000 53            	dc.b	83
 962  0001 ef            	dc.b	239
 963  0002 6e            	dc.b	110
 964  0003 41            	dc.b	65
 965  0004 00            	dc.b	0
 966  0005 00            	dc.b	0
 967  0006 00            	dc.b	0
 968  0007 00            	dc.b	0
1009                     ; 170 void vs1001_sine_test(void){
1010                     	switch	.text
1011  0174               _vs1001_sine_test:
1013  0174 520c          	subw	sp,#12
1014       0000000c      OFST:	set	12
1017                     ; 171 	int i=0;
1019                     ; 172 	unsigned char cmd[8]={0x53,0xef,0x6e,65,0,0,0,0};	
1021  0176 96            	ldw	x,sp
1022  0177 1c0003        	addw	x,#OFST-9
1023  017a 90ae0000      	ldw	y,#L553_cmd
1024  017e a608          	ld	a,#8
1025  0180 cd0000        	call	c_xymvx
1027                     ; 177 	for(i=0;i<8;i++){
1029  0183 5f            	clrw	x
1030  0184 1f0b          	ldw	(OFST-1,sp),x
1031  0186               L773:
1032                     ; 178 		vs1001_send_data(cmd[i]);
1034  0186 96            	ldw	x,sp
1035  0187 1c0003        	addw	x,#OFST-9
1036  018a 1f01          	ldw	(OFST-11,sp),x
1037  018c 1e0b          	ldw	x,(OFST-1,sp)
1038  018e 72fb01        	addw	x,(OFST-11,sp)
1039  0191 f6            	ld	a,(x)
1040  0192 adc3          	call	_vs1001_send_data
1042                     ; 177 	for(i=0;i<8;i++){
1044  0194 1e0b          	ldw	x,(OFST-1,sp)
1045  0196 5c            	incw	x
1046  0197 1f0b          	ldw	(OFST-1,sp),x
1049  0199 a30008        	cpw	x,#8
1050  019c 2fe8          	jrslt	L773
1051                     ; 181 	for (i=0;i<8;i++)
1053  019e 5f            	clrw	x
1054  019f               L504:
1058  019f 5c            	incw	x
1061  01a0 a30008        	cpw	x,#8
1062  01a3 2ffa          	jrslt	L504
1063                     ; 183 }
1066  01a5 5b0c          	addw	sp,#12
1067  01a7 81            	ret	
1070                     	switch	.const
1071  0008               L314_cmd:
1072  0008 45            	dc.b	69
1073  0009 78            	dc.b	120
1074  000a 69            	dc.b	105
1075  000b 74            	dc.b	116
1076  000c 00            	dc.b	0
1077  000d 00            	dc.b	0
1078  000e 00            	dc.b	0
1079  000f 00            	dc.b	0
1121                     ; 184 void vs1001_quit_sine_test(void){
1122                     	switch	.text
1123  01a8               _vs1001_quit_sine_test:
1125  01a8 520c          	subw	sp,#12
1126       0000000c      OFST:	set	12
1129                     ; 185 	int i=0;
1131                     ; 186 	unsigned char cmd[8]={0x45 ,0x78, 0x69 ,0x74, 0, 0, 0, 0};	
1133  01aa 96            	ldw	x,sp
1134  01ab 1c0003        	addw	x,#OFST-9
1135  01ae 90ae0008      	ldw	y,#L314_cmd
1136  01b2 a608          	ld	a,#8
1137  01b4 cd0000        	call	c_xymvx
1139                     ; 191 	for(i=0;i<8;i++){
1141  01b7 5f            	clrw	x
1142  01b8 1f0b          	ldw	(OFST-1,sp),x
1143  01ba               L534:
1144                     ; 192 		vs1001_send_data(cmd[i]);
1146  01ba 96            	ldw	x,sp
1147  01bb 1c0003        	addw	x,#OFST-9
1148  01be 1f01          	ldw	(OFST-11,sp),x
1149  01c0 1e0b          	ldw	x,(OFST-1,sp)
1150  01c2 72fb01        	addw	x,(OFST-11,sp)
1151  01c5 f6            	ld	a,(x)
1152  01c6 ad8f          	call	_vs1001_send_data
1154                     ; 191 	for(i=0;i<8;i++){
1156  01c8 1e0b          	ldw	x,(OFST-1,sp)
1157  01ca 5c            	incw	x
1158  01cb 1f0b          	ldw	(OFST-1,sp),x
1161  01cd a30008        	cpw	x,#8
1162  01d0 2fe8          	jrslt	L534
1163                     ; 195 	for (i=0;i<8;i++)
1165  01d2 5f            	clrw	x
1166  01d3               L344:
1170  01d3 5c            	incw	x
1173  01d4 a30008        	cpw	x,#8
1174  01d7 2ffa          	jrslt	L344
1175                     ; 197 }
1178  01d9 5b0c          	addw	sp,#12
1179  01db 81            	ret	
1202                     ; 208 void vs1001_init_io(void)
1202                     ; 209 {
1203                     	switch	.text
1204  01dc               _vs1001_init_io:
1208                     ; 210 	VS_BSYNC_L();
1210  01dc 72115005      	bres	20485,#0
1211                     ; 212 	VSC_CS_H();
1213  01e0 7218500a      	bset	20490,#4
1214                     ; 214 	VS_RESET_H();
1216  01e4 7216500a      	bset	20490,#3
1217                     ; 215 }
1220  01e8 81            	ret	
1246                     ; 219 void vs1001_init_chip(void)
1246                     ; 220 {
1247                     	switch	.text
1248  01e9               _vs1001_init_chip:
1252                     ; 224 	delay_ms(5);
1254  01e9 ae0005        	ldw	x,#5
1255  01ec cd0000        	call	_delay_ms
1257                     ; 225 	vs1001_reset(HARD_RESET);
1259  01ef a601          	ld	a,#1
1260  01f1 ad0e          	call	_vs1001_reset
1262                     ; 227 	delay_ms(5);
1264  01f3 ae0005        	ldw	x,#5
1265  01f6 cd0000        	call	_delay_ms
1267                     ; 228 	vs1001_nulls(32);
1269  01f9 ae0020        	ldw	x,#32
1270  01fc ad69          	call	_vs1001_nulls
1272                     ; 229 	vs1001_reset(SOFT_RESET);
1274  01fe 4f            	clr	a
1276                     ; 231 }
1279  01ff 2000          	jp	_vs1001_reset
1337                     ; 236 void vs1001_reset(reset_e r)
1337                     ; 237 {
1338                     	switch	.text
1339  0201               _vs1001_reset:
1341  0201 88            	push	a
1342       00000000      OFST:	set	0
1345                     ; 241 	if (r == SOFT_RESET)
1347  0202 4d            	tnz	a
1348  0203 2647          	jrne	L715
1349                     ; 245 		VSC_CS_L(); 	// xCS lo
1351  0205 7219500a      	bres	20490,#4
1352                     ; 246 		VS_BSYNC_L(); 	// byte sync lo		
1354  0209 72115005      	bres	20485,#0
1356  020d               L325:
1357                     ; 247 		while(!VS_DREQ_RE());
1359  020d 7204500b05    	btjt	20491,#2,L221
1360  0212 ae0001        	ldw	x,#1
1361  0215 2001          	jra	L421
1362  0217               L221:
1363  0217 5f            	clrw	x
1364  0218               L421:
1365  0218 57            	sraw	x
1366  0219 26f2          	jrne	L325
1367                     ; 248 		vsc_sendbyte(VS1001_WRITE);
1369  021b a602          	ld	a,#2
1370  021d cd0001        	call	_vsc_sendbyte
1372                     ; 249 		vsc_sendbyte(SCI_MODE);
1374  0220 4f            	clr	a
1375  0221 cd0001        	call	_vsc_sendbyte
1377                     ; 250 		vsc_sendbyte((unsigned char)(0));
1379  0224 4f            	clr	a
1380  0225 cd0001        	call	_vsc_sendbyte
1382                     ; 251 		vsc_sendbyte((unsigned char)(0x04));
1384  0228 a604          	ld	a,#4
1385  022a cd0001        	call	_vsc_sendbyte
1387                     ; 252 		VSC_CS_H();	// xCS hi
1389  022d 7218500a      	bset	20490,#4
1390                     ; 258 		delay_ms(2);
1392  0231 ae0002        	ldw	x,#2
1393  0234 cd0000        	call	_delay_ms
1396  0237               L135:
1397                     ; 259 		while(!VS_DREQ_RE()); //wait for DREQ
1399  0237 7204500b05    	btjt	20491,#2,L041
1400  023c ae0001        	ldw	x,#1
1401  023f 2001          	jra	L241
1402  0241               L041:
1403  0241 5f            	clrw	x
1404  0242               L241:
1405  0242 57            	sraw	x
1406  0243 26f2          	jrne	L135
1407                     ; 271 		vs1001_nulls(32);
1409  0245 ae0020        	ldw	x,#32
1410  0248 ad1d          	call	_vs1001_nulls
1413  024a 2019          	jra	L535
1414  024c               L715:
1415                     ; 275 	else if (r == HARD_RESET)
1417  024c 7b01          	ld	a,(OFST+1,sp)
1418  024e 4a            	dec	a
1419  024f 2614          	jrne	L535
1420                     ; 277 		VS_RESET_L() ;	// RESET- lo
1422  0251 7217500a      	bres	20490,#3
1423                     ; 278 		delay_ms(5);	// 1 mS	    
1425  0255 ae0005        	ldw	x,#5
1426  0258 cd0000        	call	_delay_ms
1428                     ; 279 		VS_RESET_H() ;	// RESET- hi
1430  025b 7216500a      	bset	20490,#3
1431                     ; 280 		delay_ms(20);	// 5 mS	    
1433  025f ae0014        	ldw	x,#20
1434  0262 cd0000        	call	_delay_ms
1436  0265               L535:
1437                     ; 282 }
1440  0265 84            	pop	a
1441  0266 81            	ret	
1474                     ; 287 void vs1001_nulls(unsigned int nNulls)
1474                     ; 288 {
1475                     	switch	.text
1476  0267               _vs1001_nulls:
1478  0267 89            	pushw	x
1479       00000000      OFST:	set	0
1482  0268 2004          	jra	L755
1483  026a               L555:
1484                     ; 290 		vs1001_send_data(0);
1486  026a 4f            	clr	a
1487  026b cd0157        	call	_vs1001_send_data
1489  026e               L755:
1490                     ; 289 	while (nNulls--)
1492  026e 1e01          	ldw	x,(OFST+1,sp)
1493  0270 5a            	decw	x
1494  0271 1f01          	ldw	(OFST+1,sp),x
1495  0273 5c            	incw	x
1496  0274 26f4          	jrne	L555
1497                     ; 291 }
1500  0276 85            	popw	x
1501  0277 81            	ret	
1551                     ; 296 void vs_1001_setvolume(unsigned char left, unsigned char right)
1551                     ; 297 {
1552                     	switch	.text
1553  0278               _vs_1001_setvolume:
1555  0278 89            	pushw	x
1556  0279 5206          	subw	sp,#6
1557       00000006      OFST:	set	6
1560                     ; 300 	buf[0] = (((unsigned short)left) << 8) + ((unsigned short)right);
1562  027b 9f            	ld	a,xl
1563  027c 5f            	clrw	x
1564  027d 97            	ld	xl,a
1565  027e 1f01          	ldw	(OFST-5,sp),x
1566  0280 7b07          	ld	a,(OFST+1,sp)
1567  0282 97            	ld	xl,a
1568  0283 4f            	clr	a
1569  0284 02            	rlwa	x,a
1570  0285 72fb01        	addw	x,(OFST-5,sp)
1571  0288 1f03          	ldw	(OFST-3,sp),x
1572                     ; 302 	vs1001_write(SCI_VOL, 1, buf);
1574  028a 96            	ldw	x,sp
1575  028b 1c0003        	addw	x,#OFST-3
1576  028e 89            	pushw	x
1577  028f ae0001        	ldw	x,#1
1578  0292 89            	pushw	x
1579  0293 a60b          	ld	a,#11
1580  0295 cd010f        	call	_vs1001_write
1582  0298 5b0c          	addw	sp,#12
1583                     ; 303 }
1586  029a 81            	ret	
1599                     	xdef	_write_byte_spi
1600                     	xref	_delay_ms
1601                     	xdef	_vsd_sendbyte
1602                     	xdef	_vsc_readbyte
1603                     	xdef	_vsc_sendbyte_slow
1604                     	xdef	_vsc_sendbyte
1605                     	xdef	_vsc_spi_init
1606                     	xref	_delay_us
1607                     	xdef	_vs1001_send_32
1608                     	xdef	_vs1001_send_data
1609                     	xdef	_vs_1001_setvolume
1610                     	xdef	_vs1001_write
1611                     	xdef	_vs1001_quit_sine_test
1612                     	xdef	_vs1001_sine_test
1613                     	xdef	_vs1001_read
1614                     	xdef	_vs1001_nulls
1615                     	xdef	_vs1001_reset
1616                     	xdef	_vs1001_init_chip
1617                     	xdef	_vs1001_init_io
1618                     	xref.b	c_x
1637                     	xref	c_xymvx
1638                     	end
