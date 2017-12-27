   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  82                     ; 328 void mem_set (void* dst, int val, int cnt) {
  84                     	switch	.text
  85  0000               L5_mem_set:
  87  0000 89            	pushw	x
  88  0001 89            	pushw	x
  89       00000002      OFST:	set	2
  92                     ; 329 	char *d = (char*)dst;
  94  0002 2006          	jra	L74
  95  0004               L34:
  96                     ; 330 	while (cnt--) *d++ = (char)val;
  98  0004 1e01          	ldw	x,(OFST-1,sp)
  99  0006 7b08          	ld	a,(OFST+6,sp)
 100  0008 f7            	ld	(x),a
 101  0009 5c            	incw	x
 102  000a               L74:
 104  000a 1f01          	ldw	(OFST-1,sp),x
 107  000c 1e09          	ldw	x,(OFST+7,sp)
 108  000e 5a            	decw	x
 109  000f 1f09          	ldw	(OFST+7,sp),x
 110  0011 5c            	incw	x
 111  0012 26f0          	jrne	L34
 112                     ; 331 }
 115  0014 5b04          	addw	sp,#4
 116  0016 81            	ret	
 195                     ; 335 int mem_cmp (const void* dst, const void* src, int cnt) {
 196                     	switch	.text
 197  0017               L35_mem_cmp:
 199  0017 89            	pushw	x
 200  0018 5206          	subw	sp,#6
 201       00000006      OFST:	set	6
 204                     ; 336 	const char *d = (const char *)dst, *s = (const char *)src;
 206  001a 1f01          	ldw	(OFST-5,sp),x
 209  001c 1e0b          	ldw	x,(OFST+5,sp)
 210  001e 1f03          	ldw	(OFST-3,sp),x
 211                     ; 337 	int r = 0;
 214  0020               L511:
 215                     ; 338 	while (cnt-- && (r = *d++ - *s++) == 0) ;
 217  0020 1e0d          	ldw	x,(OFST+7,sp)
 218  0022 5a            	decw	x
 219  0023 1f0d          	ldw	(OFST+7,sp),x
 220  0025 5c            	incw	x
 221  0026 2719          	jreq	L121
 223  0028 1e01          	ldw	x,(OFST-5,sp)
 224  002a f6            	ld	a,(x)
 225  002b 5c            	incw	x
 226  002c 1f01          	ldw	(OFST-5,sp),x
 227  002e 5f            	clrw	x
 228  002f 1603          	ldw	y,(OFST-3,sp)
 229  0031 905c          	incw	y
 230  0033 1703          	ldw	(OFST-3,sp),y
 231  0035 905a          	decw	y
 232  0037 90f0          	sub	a,(y)
 233  0039 2401          	jrnc	L01
 234  003b 5a            	decw	x
 235  003c               L01:
 236  003c 02            	rlwa	x,a
 237  003d 1f05          	ldw	(OFST-1,sp),x
 238  003f 27df          	jreq	L511
 239  0041               L121:
 240                     ; 339 	return r;
 242  0041 1e05          	ldw	x,(OFST-1,sp)
 245  0043 5b08          	addw	sp,#8
 246  0045 81            	ret	
 407                     .const:	section	.text
 408  0000               L41:
 409  0000 00000002      	dc.l	2
 410                     ; 349 CLUST get_fat (	/* 1:IO error, Else:Cluster status */
 410                     ; 350 	CLUST clst	/* Cluster# to get the link information */
 410                     ; 351 )
 410                     ; 352 {
 411                     	switch	.text
 412  0046               L321_get_fat:
 414  0046 5212          	subw	sp,#18
 415       00000012      OFST:	set	18
 418                     ; 354 	volatile FATFS *fs = FatFs;
 420  0048 ce0000        	ldw	x,L3_FatFs
 421  004b 1f0d          	ldw	(OFST-5,sp),x
 422                     ; 356 	if (clst < 2 || clst >= fs->n_fatent)	/* Range check */
 424  004d 96            	ldw	x,sp
 425  004e 1c0015        	addw	x,#OFST+3
 426  0051 cd0000        	call	c_ltor
 428  0054 ae0000        	ldw	x,#L41
 429  0057 cd0000        	call	c_lcmp
 431  005a 2403cc0109    	jrult	L322
 433  005f 1e0d          	ldw	x,(OFST-5,sp)
 434  0061 1c0006        	addw	x,#6
 435  0064 cd0000        	call	c_ltor
 437  0067 96            	ldw	x,sp
 438  0068 1c0015        	addw	x,#OFST+3
 439  006b cd0000        	call	c_lcmp
 441                     ; 357 		return 1;
 443  006e 23ec          	jrule	L322
 444                     ; 359 	switch (fs->fs_type) {
 446  0070 1e0d          	ldw	x,(OFST-5,sp)
 447  0072 f6            	ld	a,(x)
 448  0073 a103          	cp	a,#3
 449  0075 26e5          	jrne	L322
 452                     ; 382 	case FS_FAT32 :
 452                     ; 383 		if (disk_readp(buf, fs->fatbase + clst / 128, ((UINT)clst % 128) * 4, 4)) break;
 454  0077 ae0004        	ldw	x,#4
 455  007a 89            	pushw	x
 456  007b 7b1a          	ld	a,(OFST+8,sp)
 457  007d a47f          	and	a,#127
 458  007f 97            	ld	xl,a
 459  0080 a604          	ld	a,#4
 460  0082 42            	mul	x,a
 461  0083 89            	pushw	x
 462  0084 96            	ldw	x,sp
 463  0085 1c0019        	addw	x,#OFST+7
 464  0088 cd0000        	call	c_ltor
 466  008b a607          	ld	a,#7
 467  008d cd0000        	call	c_lursh
 469  0090 1e11          	ldw	x,(OFST-1,sp)
 470  0092 1c000a        	addw	x,#10
 471  0095 cd0000        	call	c_ladd
 473  0098 be02          	ldw	x,c_lreg+2
 474  009a 89            	pushw	x
 475  009b be00          	ldw	x,c_lreg
 476  009d 89            	pushw	x
 477  009e 96            	ldw	x,sp
 478  009f 1c0017        	addw	x,#OFST+5
 479  00a2 cd0000        	call	_disk_readp
 481  00a5 5b08          	addw	sp,#8
 482  00a7 4d            	tnz	a
 483  00a8 265f          	jrne	L322
 486                     ; 384 		return LD_DWORD(buf) & (DWORD)0x0FFFFFFF;
 488  00aa 7b0f          	ld	a,(OFST-3,sp)
 489  00ac b703          	ld	c_lreg+3,a
 490  00ae 3f02          	clr	c_lreg+2
 491  00b0 3f01          	clr	c_lreg+1
 492  00b2 3f00          	clr	c_lreg
 493  00b4 96            	ldw	x,sp
 494  00b5 1c0009        	addw	x,#OFST-9
 495  00b8 cd0000        	call	c_rtol
 497  00bb 7b10          	ld	a,(OFST-2,sp)
 498  00bd 97            	ld	xl,a
 499  00be 4f            	clr	a
 500  00bf 02            	rlwa	x,a
 501  00c0 cd0000        	call	c_uitolx
 503  00c3 96            	ldw	x,sp
 504  00c4 1c0005        	addw	x,#OFST-13
 505  00c7 cd0000        	call	c_rtol
 507  00ca 7b11          	ld	a,(OFST-1,sp)
 508  00cc b703          	ld	c_lreg+3,a
 509  00ce 3f02          	clr	c_lreg+2
 510  00d0 3f01          	clr	c_lreg+1
 511  00d2 3f00          	clr	c_lreg
 512  00d4 a610          	ld	a,#16
 513  00d6 cd0000        	call	c_llsh
 515  00d9 96            	ldw	x,sp
 516  00da 5c            	incw	x
 517  00db cd0000        	call	c_rtol
 519  00de 7b12          	ld	a,(OFST+0,sp)
 520  00e0 b703          	ld	c_lreg+3,a
 521  00e2 3f02          	clr	c_lreg+2
 522  00e4 3f01          	clr	c_lreg+1
 523  00e6 3f00          	clr	c_lreg
 524  00e8 a618          	ld	a,#24
 525  00ea cd0000        	call	c_llsh
 527  00ed 96            	ldw	x,sp
 528  00ee 5c            	incw	x
 529  00ef cd0000        	call	c_lor
 531  00f2 96            	ldw	x,sp
 532  00f3 1c0005        	addw	x,#OFST-13
 533  00f6 cd0000        	call	c_lor
 535  00f9 96            	ldw	x,sp
 536  00fa 1c0009        	addw	x,#OFST-9
 537  00fd cd0000        	call	c_lor
 539  0100 b600          	ld	a,c_lreg
 540  0102 a40f          	and	a,#15
 541  0104 b700          	ld	c_lreg,a
 543  0106               L02:
 545  0106 5b12          	addw	sp,#18
 546  0108 81            	ret	
 547  0109               L322:
 548                     ; 388 	return 1;	/* An error occured at the disk I/O layer */
 551  0109 ae0001        	ldw	x,#1
 552  010c bf02          	ldw	c_lreg+2,x
 553  010e 5f            	clrw	x
 554  010f bf00          	ldw	c_lreg,x
 556  0111 20f3          	jra	L02
 601                     ; 399 DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
 601                     ; 400 	CLUST clst		/* Cluster# to be converted */
 601                     ; 401 )
 601                     ; 402 {
 602                     	switch	.text
 603  0113               L722_clust2sect:
 605  0113 89            	pushw	x
 606       00000002      OFST:	set	2
 609                     ; 403 	volatile FATFS *fs = FatFs;
 611  0114 ce0000        	ldw	x,L3_FatFs
 612  0117 1f01          	ldw	(OFST-1,sp),x
 613                     ; 406 	clst -= 2;
 615  0119 96            	ldw	x,sp
 616  011a 1c0005        	addw	x,#OFST+3
 617  011d a602          	ld	a,#2
 618  011f cd0000        	call	c_lgsbc
 620                     ; 407 	if (clst >= ((DWORD)fs->n_fatent - 2)) return 0;		/* Invalid cluster# */
 622  0122 1e01          	ldw	x,(OFST-1,sp)
 623  0124 1c0006        	addw	x,#6
 624  0127 cd0000        	call	c_ltor
 626  012a a602          	ld	a,#2
 627  012c cd0000        	call	c_lsbc
 629  012f 96            	ldw	x,sp
 630  0130 1c0005        	addw	x,#OFST+3
 631  0133 cd0000        	call	c_lcmp
 633  0136 2207          	jrugt	L352
 636  0138 5f            	clrw	x
 637  0139 bf02          	ldw	c_lreg+2,x
 638  013b bf00          	ldw	c_lreg,x
 640  013d 201b          	jra	L42
 641  013f               L352:
 642                     ; 408 	return (DWORD)clst * (DWORD)fs->csize + (DWORD)fs->database;
 644  013f 1e01          	ldw	x,(OFST-1,sp)
 645  0141 e602          	ld	a,(2,x)
 646  0143 b703          	ld	c_lreg+3,a
 647  0145 3f02          	clr	c_lreg+2
 648  0147 3f01          	clr	c_lreg+1
 649  0149 3f00          	clr	c_lreg
 650  014b 96            	ldw	x,sp
 651  014c 1c0005        	addw	x,#OFST+3
 652  014f cd0000        	call	c_lmul
 654  0152 1e01          	ldw	x,(OFST-1,sp)
 655  0154 1c0012        	addw	x,#18
 656  0157 cd0000        	call	c_ladd
 659  015a               L42:
 661  015a 5b02          	addw	sp,#2
 662  015c 81            	ret	
 719                     ; 413 CLUST get_clust (
 719                     ; 414 	volatile BYTE* dir		/* Pointer to directory entry */
 719                     ; 415 )
 719                     ; 416 {
 720                     	switch	.text
 721  015d               L552_get_clust:
 723  015d 89            	pushw	x
 724  015e 5208          	subw	sp,#8
 725       00000008      OFST:	set	8
 728                     ; 417 	volatile FATFS *fs = FatFs;
 730  0160 ce0000        	ldw	x,L3_FatFs
 731  0163 1f03          	ldw	(OFST-5,sp),x
 732                     ; 418 	volatile CLUST clst = 0;
 734  0165 5f            	clrw	x
 735  0166 1f07          	ldw	(OFST-1,sp),x
 736  0168 1f05          	ldw	(OFST-3,sp),x
 737                     ; 421 	if ((_FS_FAT32 && fs->fs_type == FS_FAT32)||_FS_32ONLY ) {
 739  016a 1e03          	ldw	x,(OFST-5,sp)
 740  016c f6            	ld	a,(x)
 741                     ; 422 		clst = LD_WORD(dir+DIR_FstClusHI);
 743  016d 1e09          	ldw	x,(OFST+1,sp)
 744  016f e614          	ld	a,(20,x)
 745  0171 5f            	clrw	x
 746  0172 97            	ld	xl,a
 747  0173 1f01          	ldw	(OFST-7,sp),x
 748  0175 1e09          	ldw	x,(OFST+1,sp)
 749  0177 e615          	ld	a,(21,x)
 750  0179 5f            	clrw	x
 751  017a 97            	ld	xl,a
 752  017b 7b02          	ld	a,(OFST-6,sp)
 753  017d 41            	exg	a,xl
 754  017e 1a01          	or	a,(OFST-7,sp)
 755  0180 41            	exg	a,xl
 756  0181 cd0000        	call	c_uitol
 758  0184 96            	ldw	x,sp
 759  0185 1c0005        	addw	x,#OFST-3
 760  0188 cd0000        	call	c_rtol
 762                     ; 423 		clst <<= 16;
 764  018b 96            	ldw	x,sp
 765  018c 1c0005        	addw	x,#OFST-3
 766  018f a610          	ld	a,#16
 767  0191 cd0000        	call	c_lglsh
 769                     ; 425 	clst |= LD_WORD(dir+DIR_FstClusLO);
 771  0194 1e09          	ldw	x,(OFST+1,sp)
 772  0196 e61a          	ld	a,(26,x)
 773  0198 5f            	clrw	x
 774  0199 97            	ld	xl,a
 775  019a 1f01          	ldw	(OFST-7,sp),x
 776  019c 1e09          	ldw	x,(OFST+1,sp)
 777  019e e61b          	ld	a,(27,x)
 778  01a0 5f            	clrw	x
 779  01a1 97            	ld	xl,a
 780  01a2 7b02          	ld	a,(OFST-6,sp)
 781  01a4 41            	exg	a,xl
 782  01a5 1a01          	or	a,(OFST-7,sp)
 783  01a7 41            	exg	a,xl
 784  01a8 cd0000        	call	c_uitol
 786  01ab 96            	ldw	x,sp
 787  01ac 1c0005        	addw	x,#OFST-3
 788  01af cd0000        	call	c_lgor
 790                     ; 427 	return clst;
 792  01b2 96            	ldw	x,sp
 793  01b3 1c0005        	addw	x,#OFST-3
 794  01b6 cd0000        	call	c_ltor
 798  01b9 5b0a          	addw	sp,#10
 799  01bb 81            	ret	
 960                     	switch	.const
 961  0004               L23:
 962  0004 00000001      	dc.l	1
 963                     ; 436 FRESULT dir_rewind (
 963                     ; 437 	volatile DIR *dj			/* Pointer to directory object */
 963                     ; 438 )
 963                     ; 439 {
 964                     	switch	.text
 965  01bc               L313_dir_rewind:
 967  01bc 89            	pushw	x
 968  01bd 5206          	subw	sp,#6
 969       00000006      OFST:	set	6
 972                     ; 441 	FATFS  volatile *fs = FatFs;
 974  01bf ce0000        	ldw	x,L3_FatFs
 975  01c2 1f01          	ldw	(OFST-5,sp),x
 976                     ; 444 	dj->index = 0;
 978  01c4 1e07          	ldw	x,(OFST+1,sp)
 979  01c6 905f          	clrw	y
 980  01c8 ff            	ldw	(x),y
 981                     ; 445 	clst = dj->sclust;
 983  01c9 9093          	ldw	y,x
 984  01cb ee06          	ldw	x,(6,x)
 985  01cd 1f05          	ldw	(OFST-1,sp),x
 986  01cf 93            	ldw	x,y
 987  01d0 ee04          	ldw	x,(4,x)
 988  01d2 1f03          	ldw	(OFST-3,sp),x
 989                     ; 446 	if (clst == 1 || clst >= fs->n_fatent)	/* Check start cluster range */
 991  01d4 96            	ldw	x,sp
 992  01d5 1c0003        	addw	x,#OFST-3
 993  01d8 cd0000        	call	c_ltor
 995  01db ae0004        	ldw	x,#L23
 996  01de cd0000        	call	c_lcmp
 998  01e1 2711          	jreq	L314
1000  01e3 1e01          	ldw	x,(OFST-5,sp)
1001  01e5 1c0006        	addw	x,#6
1002  01e8 cd0000        	call	c_ltor
1004  01eb 96            	ldw	x,sp
1005  01ec 1c0003        	addw	x,#OFST-3
1006  01ef cd0000        	call	c_lcmp
1008  01f2 2204          	jrugt	L114
1009  01f4               L314:
1010                     ; 447 		return FR_DISK_ERR;
1012  01f4 a601          	ld	a,#1
1014  01f6 2050          	jra	L24
1015  01f8               L114:
1016                     ; 448 	if (!clst && (fs->fs_type == FS_FAT32||_FS_32ONLY  )&&_FS_FAT32  )	/* Replace cluster# 0 with root cluster# if in FAT32 */
1018  01f8 96            	ldw	x,sp
1019  01f9 1c0003        	addw	x,#OFST-3
1020  01fc cd0000        	call	c_lzmp
1022  01ff 260e          	jrne	L514
1024  0201 1e01          	ldw	x,(OFST-5,sp)
1025                     ; 449 		clst = (CLUST)fs->dirbase;
1027  0203 9093          	ldw	y,x
1028  0205 f6            	ld	a,(x)
1029  0206 ee10          	ldw	x,(16,x)
1030  0208 1f05          	ldw	(OFST-1,sp),x
1031  020a 93            	ldw	x,y
1032  020b ee0e          	ldw	x,(14,x)
1033  020d 1f03          	ldw	(OFST-3,sp),x
1034  020f               L514:
1035                     ; 450 	dj->clust = clst;						/* Current cluster */
1037  020f 1e07          	ldw	x,(OFST+1,sp)
1038  0211 7b06          	ld	a,(OFST+0,sp)
1039  0213 e70b          	ld	(11,x),a
1040  0215 7b05          	ld	a,(OFST-1,sp)
1041  0217 e70a          	ld	(10,x),a
1042  0219 7b04          	ld	a,(OFST-2,sp)
1043  021b e709          	ld	(9,x),a
1044  021d 7b03          	ld	a,(OFST-3,sp)
1045  021f e708          	ld	(8,x),a
1046                     ; 452 	dj->sect = (clst!=0) ? clust2sect(clst):fs->dirbase;	/* Current sector */
1048  0221 96            	ldw	x,sp
1049  0222 1c0003        	addw	x,#OFST-3
1050  0225 cd0000        	call	c_lzmp
1052  0228 270d          	jreq	L43
1053  022a 1e05          	ldw	x,(OFST-1,sp)
1054  022c 89            	pushw	x
1055  022d 1e05          	ldw	x,(OFST-1,sp)
1056  022f 89            	pushw	x
1057  0230 cd0113        	call	L722_clust2sect
1059  0233 5b04          	addw	sp,#4
1060  0235 2008          	jra	L04
1061  0237               L43:
1062  0237 1e01          	ldw	x,(OFST-5,sp)
1063  0239 1c000e        	addw	x,#14
1064  023c cd0000        	call	c_ltor
1066  023f               L04:
1067  023f 1e07          	ldw	x,(OFST+1,sp)
1068  0241 1c000c        	addw	x,#12
1069  0244 cd0000        	call	c_rtol
1071                     ; 454 	return FR_OK;	/* Seek succeeded */
1073  0247 4f            	clr	a
1075  0248               L24:
1077  0248 5b08          	addw	sp,#8
1078  024a 81            	ret	
1145                     ; 465 FRESULT dir_next (	/* FR_OK:Succeeded, FR_NO_FILE:End of table */
1145                     ; 466 	DIR *dj			/* Pointer to directory object */
1145                     ; 467 )
1145                     ; 468 {
1146                     	switch	.text
1147  024b               L124_dir_next:
1149  024b 89            	pushw	x
1150  024c 520a          	subw	sp,#10
1151       0000000a      OFST:	set	10
1154                     ; 471 	FATFS *fs = FatFs;
1156  024e ce0000        	ldw	x,L3_FatFs
1157  0251 1f03          	ldw	(OFST-7,sp),x
1158                     ; 474 	i = dj->index + 1;
1160  0253 1e0b          	ldw	x,(OFST+1,sp)
1161  0255 fe            	ldw	x,(x)
1162  0256 5c            	incw	x
1163  0257 1f09          	ldw	(OFST-1,sp),x
1164                     ; 475 	if (!i || !dj->sect)	/* Report EOT when index has reached 65535 */
1166  0259 2732          	jreq	LC002
1168  025b 1e0b          	ldw	x,(OFST+1,sp)
1169  025d 1c000c        	addw	x,#12
1170  0260 cd0000        	call	c_lzmp
1172                     ; 476 		return FR_NO_FILE;
1174  0263 2728          	jreq	LC002
1175                     ; 478 	if (!(i % 16)) {		/* Sector changed? */
1177  0265 7b0a          	ld	a,(OFST+0,sp)
1178  0267 a50f          	bcp	a,#15
1179  0269 2703cc030b    	jrne	L164
1180                     ; 479 		dj->sect++;			/* Next sector */
1182  026e 1e0b          	ldw	x,(OFST+1,sp)
1183  0270 1c000c        	addw	x,#12
1184  0273 a601          	ld	a,#1
1185  0275 cd0000        	call	c_lgadc
1187                     ; 481 		if (dj->clust == 0) {	/* Static table */
1189  0278 1e0b          	ldw	x,(OFST+1,sp)
1190  027a 1c0008        	addw	x,#8
1191  027d cd0000        	call	c_lzmp
1193  0280 2610          	jrne	L364
1194                     ; 482 			if (i >= fs->n_rootdir)	/* Report EOT when end of table */
1196  0282 1e03          	ldw	x,(OFST-7,sp)
1197  0284 9093          	ldw	y,x
1198  0286 ee04          	ldw	x,(4,x)
1199  0288 1309          	cpw	x,(OFST-1,sp)
1200  028a 93            	ldw	x,y
1201  028b 227e          	jrugt	L164
1202                     ; 483 				return FR_NO_FILE;
1204  028d               LC002:
1207  028d a603          	ld	a,#3
1209  028f               L25:
1211  028f 5b0c          	addw	sp,#12
1212  0291 81            	ret	
1213  0292               L364:
1214                     ; 486 			if (((i / 16) & (fs->csize - 1)) == 0) {	/* Cluster changed? */
1216  0292 1e03          	ldw	x,(OFST-7,sp)
1217  0294 e602          	ld	a,(2,x)
1218  0296 5f            	clrw	x
1219  0297 97            	ld	xl,a
1220  0298 5a            	decw	x
1221  0299 1f01          	ldw	(OFST-9,sp),x
1222  029b 1e09          	ldw	x,(OFST-1,sp)
1223  029d 54            	srlw	x
1224  029e 54            	srlw	x
1225  029f 54            	srlw	x
1226  02a0 54            	srlw	x
1227  02a1 01            	rrwa	x,a
1228  02a2 1402          	and	a,(OFST-8,sp)
1229  02a4 01            	rrwa	x,a
1230  02a5 1401          	and	a,(OFST-9,sp)
1231  02a7 01            	rrwa	x,a
1232  02a8 5d            	tnzw	x
1233  02a9 2660          	jrne	L164
1234                     ; 487 				clst = get_fat(dj->clust);		/* Get next cluster */
1236  02ab 1e0b          	ldw	x,(OFST+1,sp)
1237  02ad 9093          	ldw	y,x
1238  02af ee0a          	ldw	x,(10,x)
1239  02b1 89            	pushw	x
1240  02b2 93            	ldw	x,y
1241  02b3 ee08          	ldw	x,(8,x)
1242  02b5 89            	pushw	x
1243  02b6 cd0046        	call	L321_get_fat
1245  02b9 5b04          	addw	sp,#4
1246  02bb 96            	ldw	x,sp
1247  02bc 1c0005        	addw	x,#OFST-5
1248  02bf cd0000        	call	c_rtol
1250                     ; 488 				if (clst <= 1) return FR_DISK_ERR;
1252  02c2 96            	ldw	x,sp
1253  02c3 1c0005        	addw	x,#OFST-5
1254  02c6 cd0000        	call	c_ltor
1256  02c9 ae0000        	ldw	x,#L41
1257  02cc cd0000        	call	c_lcmp
1259  02cf 2404          	jruge	L374
1262  02d1 a601          	ld	a,#1
1264  02d3 20ba          	jra	L25
1265  02d5               L374:
1266                     ; 489 				if (clst >= fs->n_fatent)		/* When it reached end of dynamic table */
1268  02d5 1e03          	ldw	x,(OFST-7,sp)
1269  02d7 1c0006        	addw	x,#6
1270  02da cd0000        	call	c_ltor
1272  02dd 96            	ldw	x,sp
1273  02de 1c0005        	addw	x,#OFST-5
1274  02e1 cd0000        	call	c_lcmp
1276                     ; 490 					return FR_NO_FILE;			/* Report EOT */
1278  02e4 23a7          	jrule	LC002
1279                     ; 491 				dj->clust = clst;				/* Initialize data for new cluster */
1281  02e6 1e0b          	ldw	x,(OFST+1,sp)
1282  02e8 7b08          	ld	a,(OFST-2,sp)
1283  02ea e70b          	ld	(11,x),a
1284  02ec 7b07          	ld	a,(OFST-3,sp)
1285  02ee e70a          	ld	(10,x),a
1286  02f0 7b06          	ld	a,(OFST-4,sp)
1287  02f2 e709          	ld	(9,x),a
1288  02f4 7b05          	ld	a,(OFST-5,sp)
1289  02f6 e708          	ld	(8,x),a
1290                     ; 492 				dj->sect = clust2sect(clst);
1292  02f8 1e07          	ldw	x,(OFST-3,sp)
1293  02fa 89            	pushw	x
1294  02fb 1e07          	ldw	x,(OFST-3,sp)
1295  02fd 89            	pushw	x
1296  02fe cd0113        	call	L722_clust2sect
1298  0301 5b04          	addw	sp,#4
1299  0303 1e0b          	ldw	x,(OFST+1,sp)
1300  0305 1c000c        	addw	x,#12
1301  0308 cd0000        	call	c_rtol
1303  030b               L164:
1304                     ; 497 	dj->index = i;
1306  030b 1e0b          	ldw	x,(OFST+1,sp)
1307  030d 1609          	ldw	y,(OFST-1,sp)
1308  030f ff            	ldw	(x),y
1309                     ; 499 	return FR_OK;
1311  0310 4f            	clr	a
1313  0311 cc028f        	jra	L25
1382                     ; 510 FRESULT dir_find (
1382                     ; 511 	DIR *dj,		/* Pointer to the directory object linked to the file name */
1382                     ; 512 	volatile BYTE *dir		/* 32-byte working buffer */
1382                     ; 513 )
1382                     ; 514 {
1383                     	switch	.text
1384  0314               L774_dir_find:
1386  0314 89            	pushw	x
1387  0315 89            	pushw	x
1388       00000002      OFST:	set	2
1391                     ; 519 	res = dir_rewind(dj);			/* Rewind directory object */
1393  0316 cd01bc        	call	L313_dir_rewind
1395  0319 6b02          	ld	(OFST+0,sp),a
1396                     ; 520 	if (res != FR_OK) return res;
1401  031b 265b          	jrne	L27
1402  031d               L535:
1403                     ; 523 		res = disk_readp(dir, dj->sect, (dj->index % 16) * 32, 32)	/* Read an entry */
1403                     ; 524 			? FR_DISK_ERR : FR_OK;
1405  031d ae0020        	ldw	x,#32
1406  0320 89            	pushw	x
1407  0321 1e05          	ldw	x,(OFST+3,sp)
1408  0323 e601          	ld	a,(1,x)
1409  0325 a40f          	and	a,#15
1410  0327 97            	ld	xl,a
1411  0328 a620          	ld	a,#32
1412  032a 42            	mul	x,a
1413  032b 89            	pushw	x
1414  032c 1e07          	ldw	x,(OFST+5,sp)
1415  032e 9093          	ldw	y,x
1416  0330 ee0e          	ldw	x,(14,x)
1417  0332 89            	pushw	x
1418  0333 93            	ldw	x,y
1419  0334 ee0c          	ldw	x,(12,x)
1420  0336 89            	pushw	x
1421  0337 1e0f          	ldw	x,(OFST+13,sp)
1422  0339 cd0000        	call	_disk_readp
1424  033c 5b08          	addw	sp,#8
1425  033e 4d            	tnz	a
1426  033f 2702          	jreq	L06
1427  0341 a601          	ld	a,#1
1428  0343               L06:
1429  0343 6b02          	ld	(OFST+0,sp),a
1430                     ; 525 		if (res != FR_OK) break;
1432  0345 262f          	jrne	L145
1435                     ; 526 		c = dir[DIR_Name];	/* First character */
1437  0347 1e07          	ldw	x,(OFST+5,sp)
1438  0349 f6            	ld	a,(x)
1439  034a 6b01          	ld	(OFST-1,sp),a
1440                     ; 527 		if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
1442  034c 2606          	jrne	L545
1445  034e a603          	ld	a,#3
1446  0350 6b02          	ld	(OFST+0,sp),a
1449  0352 2022          	jra	L145
1450  0354               L545:
1451                     ; 528 		if (!(dir[DIR_Attr] & AM_VOL) && !mem_cmp(dir, dj->fn, 11)) /* Is it a valid entry? */
1453  0354 e60b          	ld	a,(11,x)
1454  0356 a508          	bcp	a,#8
1455  0358 2613          	jrne	L745
1457  035a ae000b        	ldw	x,#11
1458  035d 89            	pushw	x
1459  035e 1e05          	ldw	x,(OFST+3,sp)
1460  0360 ee02          	ldw	x,(2,x)
1461  0362 89            	pushw	x
1462  0363 1e0b          	ldw	x,(OFST+9,sp)
1463  0365 cd0017        	call	L35_mem_cmp
1465  0368 5b04          	addw	sp,#4
1466  036a 5d            	tnzw	x
1467  036b 2709          	jreq	L145
1468                     ; 529 			break;
1470  036d               L745:
1471                     ; 530 		res = dir_next(dj);					/* Next entry */
1473  036d 1e03          	ldw	x,(OFST+1,sp)
1474  036f cd024b        	call	L124_dir_next
1476  0372 6b02          	ld	(OFST+0,sp),a
1477                     ; 531 	} while (res == FR_OK);
1479  0374 27a7          	jreq	L535
1480  0376               L145:
1481                     ; 533 	return res;
1483  0376 7b02          	ld	a,(OFST+0,sp)
1485  0378               L27:
1487  0378 5b04          	addw	sp,#4
1488  037a 81            	ret	
1491                     	switch	.const
1492  0008               L355_cvt:
1493  0008 80            	dc.b	128
1494  0009 9a            	dc.b	154
1495  000a 90            	dc.b	144
1496  000b 41            	dc.b	65
1497  000c 8e            	dc.b	142
1498  000d 41            	dc.b	65
1499  000e 8f            	dc.b	143
1500  000f 80            	dc.b	128
1501  0010 45            	dc.b	69
1502  0011 45            	dc.b	69
1503  0012 45            	dc.b	69
1504  0013 49            	dc.b	73
1505  0014 49            	dc.b	73
1506  0015 49            	dc.b	73
1507  0016 8e            	dc.b	142
1508  0017 8f            	dc.b	143
1509  0018 90            	dc.b	144
1510  0019 92            	dc.b	146
1511  001a 92            	dc.b	146
1512  001b 4f            	dc.b	79
1513  001c 99            	dc.b	153
1514  001d 4f            	dc.b	79
1515  001e 55            	dc.b	85
1516  001f 55            	dc.b	85
1517  0020 59            	dc.b	89
1518  0021 99            	dc.b	153
1519  0022 9a            	dc.b	154
1520  0023 9b            	dc.b	155
1521  0024 9c            	dc.b	156
1522  0025 9d            	dc.b	157
1523  0026 9e            	dc.b	158
1524  0027 9f            	dc.b	159
1525  0028 41            	dc.b	65
1526  0029 49            	dc.b	73
1527  002a 4f            	dc.b	79
1528  002b 55            	dc.b	85
1529  002c a5            	dc.b	165
1530  002d a5            	dc.b	165
1531  002e a6            	dc.b	166
1532  002f a7            	dc.b	167
1533  0030 a8            	dc.b	168
1534  0031 a9            	dc.b	169
1535  0032 aa            	dc.b	170
1536  0033 ab            	dc.b	171
1537  0034 ac            	dc.b	172
1538  0035 21            	dc.b	33
1539  0036 ae            	dc.b	174
1540  0037 af            	dc.b	175
1541  0038 b0            	dc.b	176
1542  0039 b1            	dc.b	177
1543  003a b2            	dc.b	178
1544  003b b3            	dc.b	179
1545  003c b4            	dc.b	180
1546  003d b5            	dc.b	181
1547  003e b6            	dc.b	182
1548  003f b7            	dc.b	183
1549  0040 b8            	dc.b	184
1550  0041 b9            	dc.b	185
1551  0042 ba            	dc.b	186
1552  0043 bb            	dc.b	187
1553  0044 bc            	dc.b	188
1554  0045 bd            	dc.b	189
1555  0046 be            	dc.b	190
1556  0047 bf            	dc.b	191
1557  0048 c0            	dc.b	192
1558  0049 c1            	dc.b	193
1559  004a c2            	dc.b	194
1560  004b c3            	dc.b	195
1561  004c c4            	dc.b	196
1562  004d c5            	dc.b	197
1563  004e c6            	dc.b	198
1564  004f c7            	dc.b	199
1565  0050 c8            	dc.b	200
1566  0051 c9            	dc.b	201
1567  0052 ca            	dc.b	202
1568  0053 cb            	dc.b	203
1569  0054 cc            	dc.b	204
1570  0055 cd            	dc.b	205
1571  0056 ce            	dc.b	206
1572  0057 cf            	dc.b	207
1573  0058 d0            	dc.b	208
1574  0059 d1            	dc.b	209
1575  005a d2            	dc.b	210
1576  005b d3            	dc.b	211
1577  005c d4            	dc.b	212
1578  005d d5            	dc.b	213
1579  005e d6            	dc.b	214
1580  005f d7            	dc.b	215
1581  0060 d8            	dc.b	216
1582  0061 d9            	dc.b	217
1583  0062 da            	dc.b	218
1584  0063 db            	dc.b	219
1585  0064 dc            	dc.b	220
1586  0065 dd            	dc.b	221
1587  0066 de            	dc.b	222
1588  0067 df            	dc.b	223
1589  0068 e0            	dc.b	224
1590  0069 e1            	dc.b	225
1591  006a e2            	dc.b	226
1592  006b e3            	dc.b	227
1593  006c e4            	dc.b	228
1594  006d e5            	dc.b	229
1595  006e e6            	dc.b	230
1596  006f e7            	dc.b	231
1597  0070 e8            	dc.b	232
1598  0071 e9            	dc.b	233
1599  0072 ea            	dc.b	234
1600  0073 eb            	dc.b	235
1601  0074 ec            	dc.b	236
1602  0075 ed            	dc.b	237
1603  0076 ee            	dc.b	238
1604  0077 ef            	dc.b	239
1605  0078 f0            	dc.b	240
1606  0079 f1            	dc.b	241
1607  007a f2            	dc.b	242
1608  007b f3            	dc.b	243
1609  007c f4            	dc.b	244
1610  007d f5            	dc.b	245
1611  007e f6            	dc.b	246
1612  007f f7            	dc.b	247
1613  0080 f8            	dc.b	248
1614  0081 f9            	dc.b	249
1615  0082 fa            	dc.b	250
1616  0083 fb            	dc.b	251
1617  0084 fc            	dc.b	252
1618  0085 fd            	dc.b	253
1619  0086 fe            	dc.b	254
1620  0087 ff            	dc.b	255
1741                     ; 581 FRESULT create_name (
1741                     ; 582 	DIR *dj,			/* Pointer to the directory object */
1741                     ; 583 	const char **path	/* Pointer to pointer to the segment in the path string */
1741                     ; 584 )
1741                     ; 585 {
1742                     	switch	.text
1743  037b               L155_create_name:
1745  037b 89            	pushw	x
1746  037c 5209          	subw	sp,#9
1747       00000009      OFST:	set	9
1750                     ; 595 	sfn = dj->fn;
1752  037e ee02          	ldw	x,(2,x)
1753  0380 1f05          	ldw	(OFST-4,sp),x
1754                     ; 596 	mem_set(sfn, ' ', 11);
1756  0382 ae000b        	ldw	x,#11
1757  0385 89            	pushw	x
1758  0386 ae0020        	ldw	x,#32
1759  0389 89            	pushw	x
1760  038a 1e09          	ldw	x,(OFST+0,sp)
1761  038c cd0000        	call	L5_mem_set
1763  038f 5b04          	addw	sp,#4
1764                     ; 597 	si = i = 0; ni = 8;
1766  0391 0f08          	clr	(OFST-1,sp)
1767  0393 0f02          	clr	(OFST-7,sp)
1770  0395 a608          	ld	a,#8
1771  0397 6b07          	ld	(OFST-2,sp),a
1772                     ; 598 	p = *path;
1774  0399 1e0e          	ldw	x,(OFST+5,sp)
1775  039b fe            	ldw	x,(x)
1776  039c 1f03          	ldw	(OFST-6,sp),x
1777  039e               L736:
1778                     ; 600 		c = p[si++];
1780  039e 7b02          	ld	a,(OFST-7,sp)
1781  03a0 0c02          	inc	(OFST-7,sp)
1782  03a2 5f            	clrw	x
1783  03a3 97            	ld	xl,a
1784  03a4 72fb03        	addw	x,(OFST-6,sp)
1785  03a7 f6            	ld	a,(x)
1786  03a8 6b09          	ld	(OFST+0,sp),a
1787                     ; 601 		if (c <= ' ' || c == '/') break;	/* Break on end of segment */
1789  03aa 7b09          	ld	a,(OFST+0,sp)
1790  03ac a121          	cp	a,#33
1791  03ae 2565          	jrult	L146
1793  03b0 7b09          	ld	a,(OFST+0,sp)
1794  03b2 a12f          	cp	a,#47
1795  03b4 275f          	jreq	L146
1796                     ; 602 		if (c == '.' || i >= ni) {
1798  03b6 7b09          	ld	a,(OFST+0,sp)
1799  03b8 a12e          	cp	a,#46
1800  03ba 2706          	jreq	L156
1802  03bc 7b08          	ld	a,(OFST-1,sp)
1803  03be 1107          	cp	a,(OFST-2,sp)
1804  03c0 2516          	jrult	L746
1805  03c2               L156:
1806                     ; 603 			if (ni != 8 || c != '.') break;
1808  03c2 7b07          	ld	a,(OFST-2,sp)
1809  03c4 a108          	cp	a,#8
1810  03c6 264d          	jrne	L146
1812  03c8 7b09          	ld	a,(OFST+0,sp)
1813  03ca a12e          	cp	a,#46
1814  03cc 2647          	jrne	L146
1815                     ; 604 			i = 8; ni = 11;
1817  03ce a608          	ld	a,#8
1818  03d0 6b08          	ld	(OFST-1,sp),a
1821  03d2 a60b          	ld	a,#11
1822  03d4 6b07          	ld	(OFST-2,sp),a
1823                     ; 605 			continue;
1825  03d6 20c6          	jra	L736
1826  03d8               L746:
1827                     ; 609 		if (c >= 0x80)					/* To upper extended char (SBCS) */
1829  03d8 7b09          	ld	a,(OFST+0,sp)
1830  03da a180          	cp	a,#128
1831  03dc 250c          	jrult	L756
1832                     ; 610 			c = cvt[c - 0x80];
1834  03de 7b09          	ld	a,(OFST+0,sp)
1835  03e0 5f            	clrw	x
1836  03e1 97            	ld	xl,a
1837  03e2 1d0080        	subw	x,#128
1838  03e5 d60008        	ld	a,(L355_cvt,x)
1839  03e8 6b09          	ld	(OFST+0,sp),a
1840  03ea               L756:
1841                     ; 612 		if (i < ni - 1 && IsDBCS1(c)) {	/* DBC 1st byte? */
1843  03ea 7b07          	ld	a,(OFST-2,sp)
1844  03ec 7b08          	ld	a,(OFST-1,sp)
1845  03ee 905f          	clrw	y
1846  03f0 9097          	ld	yl,a
1847  03f2 90bf00        	ldw	c_y,y
1849                     ; 619 			if (_USE_LCC && IsLower(c)) c -= 0x20;	/* toupper */
1854  03f5 7b09          	ld	a,(OFST+0,sp)
1855  03f7 a161          	cp	a,#97
1856  03f9 250c          	jrult	L566
1858  03fb 7b09          	ld	a,(OFST+0,sp)
1859  03fd a17b          	cp	a,#123
1860  03ff 2406          	jruge	L566
1863  0401 7b09          	ld	a,(OFST+0,sp)
1864  0403 a020          	sub	a,#32
1865  0405 6b09          	ld	(OFST+0,sp),a
1866  0407               L566:
1867                     ; 620 			sfn[i++] = c;
1869  0407 7b08          	ld	a,(OFST-1,sp)
1870  0409 0c08          	inc	(OFST-1,sp)
1871  040b 5f            	clrw	x
1872  040c 97            	ld	xl,a
1873  040d 72fb05        	addw	x,(OFST-4,sp)
1874  0410 7b09          	ld	a,(OFST+0,sp)
1875  0412 f7            	ld	(x),a
1876  0413 2089          	jra	L736
1877  0415               L146:
1878                     ; 623 	*path = &p[si];						/* Rerurn pointer to the next segment */
1880  0415 7b03          	ld	a,(OFST-6,sp)
1881  0417 97            	ld	xl,a
1882  0418 7b04          	ld	a,(OFST-5,sp)
1883  041a 1b02          	add	a,(OFST-7,sp)
1884  041c 2401          	jrnc	L001
1885  041e 5c            	incw	x
1886  041f               L001:
1887  041f 160e          	ldw	y,(OFST+5,sp)
1888  0421 02            	rlwa	x,a
1889  0422 90ff          	ldw	(y),x
1890                     ; 625 	sfn[11] = (c <= ' ') ? 1 : 0;		/* Set last segment flag if end of path */
1892  0424 7b09          	ld	a,(OFST+0,sp)
1893  0426 a121          	cp	a,#33
1894  0428 2404          	jruge	L201
1895  042a a601          	ld	a,#1
1896  042c 2001          	jra	L401
1897  042e               L201:
1898  042e 4f            	clr	a
1899  042f               L401:
1900  042f 1e05          	ldw	x,(OFST-4,sp)
1901  0431 e70b          	ld	(11,x),a
1902                     ; 627 	return FR_OK;
1904  0433 4f            	clr	a
1907  0434 5b0b          	addw	sp,#11
1908  0436 81            	ret	
1980                     ; 680 FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
1980                     ; 681 	DIR *dj,			/* Directory object to return last directory and found object */
1980                     ; 682 	BYTE *dir,			/* 32-byte working buffer */
1980                     ; 683 	const char *path	/* Full-path string to find a file or directory */
1980                     ; 684 )
1980                     ; 685 {
1981                     	switch	.text
1982  0437               L766_follow_path:
1984  0437 89            	pushw	x
1985  0438 88            	push	a
1986       00000001      OFST:	set	1
1989  0439 1e08          	ldw	x,(OFST+7,sp)
1990  043b 2001          	jra	L727
1991  043d               L527:
1992                     ; 689 	while (*path == ' ') path++;		/* Strip leading spaces */
1994  043d 5c            	incw	x
1995  043e               L727:
1998  043e f6            	ld	a,(x)
1999  043f a120          	cp	a,#32
2000  0441 27fa          	jreq	L527
2001                     ; 690 	if (*path == '/') path++;			/* Strip heading separator if exist */
2003  0443 a12f          	cp	a,#47
2004  0445 2601          	jrne	L337
2007  0447 5c            	incw	x
2008  0448               L337:
2009  0448 1f08          	ldw	(OFST+7,sp),x
2010                     ; 691 	dj->sclust = 0;						/* Set start directory (always root dir) */
2012  044a 1e02          	ldw	x,(OFST+1,sp)
2013  044c 4f            	clr	a
2014  044d e707          	ld	(7,x),a
2015  044f e706          	ld	(6,x),a
2016  0451 e705          	ld	(5,x),a
2017  0453 e704          	ld	(4,x),a
2018                     ; 693 	if ((BYTE)*path < ' ') {			/* Null path means the root directory */
2020  0455 1e08          	ldw	x,(OFST+7,sp)
2021  0457 f6            	ld	a,(x)
2022  0458 a120          	cp	a,#32
2023  045a 240c          	jruge	L147
2024                     ; 694 		res = dir_rewind(dj);
2026  045c 1e02          	ldw	x,(OFST+1,sp)
2027  045e cd01bc        	call	L313_dir_rewind
2029  0461 6b01          	ld	(OFST+0,sp),a
2030                     ; 695 		dir[0] = 0;
2032  0463 1e06          	ldw	x,(OFST+5,sp)
2033  0465 7f            	clr	(x)
2035  0466 202e          	jra	L737
2036  0468               L147:
2037                     ; 699 			res = create_name(dj, &path);	/* Get a segment */
2039  0468 96            	ldw	x,sp
2040  0469 1c0008        	addw	x,#OFST+7
2041  046c 89            	pushw	x
2042  046d 1e04          	ldw	x,(OFST+3,sp)
2043  046f cd037b        	call	L155_create_name
2045  0472 85            	popw	x
2046  0473 6b01          	ld	(OFST+0,sp),a
2047                     ; 700 			if (res != FR_OK) break;
2049  0475 261f          	jrne	L737
2052                     ; 701 			res = dir_find(dj, dir);		/* Find it */
2054  0477 1e06          	ldw	x,(OFST+5,sp)
2055  0479 89            	pushw	x
2056  047a 1e04          	ldw	x,(OFST+3,sp)
2057  047c cd0314        	call	L774_dir_find
2059  047f 85            	popw	x
2060  0480 6b01          	ld	(OFST+0,sp),a
2061                     ; 702 			if (res != FR_OK) break;		/* Could not find the object */
2063  0482 2612          	jrne	L737
2066                     ; 703 			if (dj->fn[11]) break;			/* Last segment match. Function completed. */
2068  0484 1e02          	ldw	x,(OFST+1,sp)
2069  0486 ee02          	ldw	x,(2,x)
2070  0488 6d0b          	tnz	(11,x)
2071  048a 260a          	jrne	L737
2074                     ; 704 			if (!(dir[DIR_Attr] & AM_DIR)) { /* Cannot follow path because it is a file */
2076  048c 1e06          	ldw	x,(OFST+5,sp)
2077  048e e60b          	ld	a,(11,x)
2078  0490 a510          	bcp	a,#16
2079  0492 2605          	jrne	L357
2080                     ; 705 				res = FR_NO_FILE; break;
2082  0494 a603          	ld	a,#3
2084  0496               L737:
2085                     ; 711 	return res;
2089  0496 5b03          	addw	sp,#3
2090  0498 81            	ret	
2091  0499               L357:
2092                     ; 707 			dj->sclust = get_clust(dir);	/* Follow next */
2094  0499 cd015d        	call	L552_get_clust
2096  049c 1e02          	ldw	x,(OFST+1,sp)
2097  049e 1c0004        	addw	x,#4
2098  04a1 cd0000        	call	c_rtol
2101  04a4 20c2          	jra	L147
2144                     ; 722 BYTE check_fs (	/* 0:The FAT boot record, 1:Valid boot record but not an FAT, 2:Not a boot record, 3:Error */
2144                     ; 723 	BYTE *buf,	/* Working buffer */
2144                     ; 724 	DWORD sect	/* Sector# (lba) to check if it is an FAT boot record or not */
2144                     ; 725 )
2144                     ; 726 {
2145                     	switch	.text
2146  04a6               L557_check_fs:
2148  04a6 89            	pushw	x
2149  04a7 89            	pushw	x
2150       00000002      OFST:	set	2
2153                     ; 727 	if (disk_readp(buf, sect, 510, 2))		/* Read the boot record */
2155  04a8 ae0002        	ldw	x,#2
2156  04ab 89            	pushw	x
2157  04ac ae01fe        	ldw	x,#510
2158  04af 89            	pushw	x
2159  04b0 1e0d          	ldw	x,(OFST+11,sp)
2160  04b2 89            	pushw	x
2161  04b3 1e0d          	ldw	x,(OFST+11,sp)
2162  04b5 89            	pushw	x
2163  04b6 1e0b          	ldw	x,(OFST+9,sp)
2164  04b8 cd0000        	call	_disk_readp
2166  04bb 5b08          	addw	sp,#8
2167  04bd 4d            	tnz	a
2168  04be 2704          	jreq	L777
2169                     ; 728 		return 3;
2171  04c0 a603          	ld	a,#3
2173  04c2 201a          	jra	L031
2174  04c4               L777:
2175                     ; 729 	if (LD_WORD(buf) != 0xAA55)				/* Check record signature */
2177  04c4 1e03          	ldw	x,(OFST+1,sp)
2178  04c6 f6            	ld	a,(x)
2179  04c7 5f            	clrw	x
2180  04c8 97            	ld	xl,a
2181  04c9 1f01          	ldw	(OFST-1,sp),x
2182  04cb 1e03          	ldw	x,(OFST+1,sp)
2183  04cd e601          	ld	a,(1,x)
2184  04cf 5f            	clrw	x
2185  04d0 97            	ld	xl,a
2186  04d1 7b02          	ld	a,(OFST+0,sp)
2187  04d3 01            	rrwa	x,a
2188  04d4 1a01          	or	a,(OFST-1,sp)
2189  04d6 01            	rrwa	x,a
2190  04d7 a3aa55        	cpw	x,#43605
2191  04da 2705          	jreq	L1001
2192                     ; 730 		return 2;
2194  04dc a602          	ld	a,#2
2196  04de               L031:
2198  04de 5b04          	addw	sp,#4
2199  04e0 81            	ret	
2200  04e1               L1001:
2201                     ; 732 	if (!disk_readp(buf, sect, BS_FilSysType, 2)&& LD_WORD(buf) == 0x4146&& !_FS_32ONLY   )	/* Check FAT12/16 */
2203  04e1 ae0002        	ldw	x,#2
2204  04e4 89            	pushw	x
2205  04e5 ae0036        	ldw	x,#54
2206  04e8 89            	pushw	x
2207  04e9 1e0d          	ldw	x,(OFST+11,sp)
2208  04eb 89            	pushw	x
2209  04ec 1e0d          	ldw	x,(OFST+11,sp)
2210  04ee 89            	pushw	x
2211  04ef 1e0b          	ldw	x,(OFST+9,sp)
2212  04f1 cd0000        	call	_disk_readp
2214  04f4 5b08          	addw	sp,#8
2215  04f6 4d            	tnz	a
2217                     ; 734 	if (!disk_readp(buf, sect, BS_FilSysType32, 2)&& LD_WORD(buf)== 0x4146&& _FS_FAT32   )	/* Check FAT32 */
2220  04f7 ae0002        	ldw	x,#2
2221  04fa 89            	pushw	x
2222  04fb ae0052        	ldw	x,#82
2223  04fe 89            	pushw	x
2224  04ff 1e0d          	ldw	x,(OFST+11,sp)
2225  0501 89            	pushw	x
2226  0502 1e0d          	ldw	x,(OFST+11,sp)
2227  0504 89            	pushw	x
2228  0505 1e0b          	ldw	x,(OFST+9,sp)
2229  0507 cd0000        	call	_disk_readp
2231  050a 5b08          	addw	sp,#8
2232  050c 4d            	tnz	a
2233  050d 261b          	jrne	L5001
2235  050f 1e03          	ldw	x,(OFST+1,sp)
2236  0511 f6            	ld	a,(x)
2237  0512 5f            	clrw	x
2238  0513 97            	ld	xl,a
2239  0514 1f01          	ldw	(OFST-1,sp),x
2240  0516 1e03          	ldw	x,(OFST+1,sp)
2241  0518 e601          	ld	a,(1,x)
2242  051a 5f            	clrw	x
2243  051b 97            	ld	xl,a
2244  051c 7b02          	ld	a,(OFST+0,sp)
2245  051e 01            	rrwa	x,a
2246  051f 1a01          	or	a,(OFST-1,sp)
2247  0521 01            	rrwa	x,a
2248  0522 a34146        	cpw	x,#16710
2249  0525 2603          	jrne	L5001
2250                     ; 735 		return 0;
2252  0527 4f            	clr	a
2254  0528 20b4          	jra	L031
2255  052a               L5001:
2256                     ; 736 	return 1;
2258  052a a601          	ld	a,#1
2260  052c 20b0          	jra	L031
2357                     	switch	.const
2358  0088               L641:
2359  0088 0000fff7      	dc.l	65527
2360                     ; 754 FRESULT pf_mount (
2360                     ; 755 	FATFS *fs		/* Pointer to new file system object */
2360                     ; 756 )
2360                     ; 757 {
2361                     	switch	.text
2362  052e               _pf_mount:
2364  052e 89            	pushw	x
2365  052f 5243          	subw	sp,#67
2366       00000043      OFST:	set	67
2369                     ; 762 	FatFs = 0; 
2371  0531 5f            	clrw	x
2372  0532 cf0000        	ldw	L3_FatFs,x
2373                     ; 764 	if (disk_initialize() & STA_NOINIT)	/* Check if the drive is ready or not */
2375  0535 cd0000        	call	_disk_initialize
2377  0538 a501          	bcp	a,#1
2378  053a 2705          	jreq	L7501
2379                     ; 765 		return FR_NOT_READY;
2381  053c a602          	ld	a,#2
2383  053e cc05fb        	jra	L051
2384  0541               L7501:
2385                     ; 768 	bsect = 0;
2387  0541 5f            	clrw	x
2388  0542 1f19          	ldw	(OFST-42,sp),x
2389  0544 1f17          	ldw	(OFST-44,sp),x
2390                     ; 769 	fmt = check_fs(buf, bsect);			/* Check sector 0 as an SFD format */
2392  0546 1e19          	ldw	x,(OFST-42,sp)
2393  0548 89            	pushw	x
2394  0549 1e19          	ldw	x,(OFST-42,sp)
2395  054b 89            	pushw	x
2396  054c 96            	ldw	x,sp
2397  054d 1c0024        	addw	x,#OFST-31
2398  0550 cd04a6        	call	L557_check_fs
2400  0553 5b04          	addw	sp,#4
2401  0555 6b1f          	ld	(OFST-36,sp),a
2402                     ; 770 	if (fmt == 1) {						/* Not an FAT boot record, it may be FDISK format */
2404  0557 7b1f          	ld	a,(OFST-36,sp)
2405  0559 4a            	dec	a
2406  055a 2703cc05f3    	jrne	L1601
2407                     ; 772 		if (disk_readp(buf, bsect, MBR_Table, 16)) {	/* 1st partition entry */
2409  055f ae0010        	ldw	x,#16
2410  0562 89            	pushw	x
2411  0563 ae01be        	ldw	x,#446
2412  0566 89            	pushw	x
2413  0567 1e1d          	ldw	x,(OFST-38,sp)
2414  0569 89            	pushw	x
2415  056a 1e1d          	ldw	x,(OFST-38,sp)
2416  056c 89            	pushw	x
2417  056d 96            	ldw	x,sp
2418  056e 1c0028        	addw	x,#OFST-27
2419  0571 cd0000        	call	_disk_readp
2421  0574 5b08          	addw	sp,#8
2422  0576 4d            	tnz	a
2423  0577 2704          	jreq	L3601
2424                     ; 773 			fmt = 3;
2426  0579 a603          	ld	a,#3
2428  057b 2074          	jp	LC003
2429  057d               L3601:
2430                     ; 775 			if (buf[4]) {					/* Is the partition existing? */
2432  057d 0d24          	tnz	(OFST-31,sp)
2433  057f 2772          	jreq	L1601
2434                     ; 776 				bsect = LD_DWORD(&buf[8]);	/* Partition offset in LBA */
2436  0581 7b28          	ld	a,(OFST-27,sp)
2437  0583 b703          	ld	c_lreg+3,a
2438  0585 3f02          	clr	c_lreg+2
2439  0587 3f01          	clr	c_lreg+1
2440  0589 3f00          	clr	c_lreg
2441  058b 96            	ldw	x,sp
2442  058c 1c000b        	addw	x,#OFST-56
2443  058f cd0000        	call	c_rtol
2445  0592 7b29          	ld	a,(OFST-26,sp)
2446  0594 97            	ld	xl,a
2447  0595 4f            	clr	a
2448  0596 02            	rlwa	x,a
2449  0597 cd0000        	call	c_uitolx
2451  059a 96            	ldw	x,sp
2452  059b 1c0007        	addw	x,#OFST-60
2453  059e cd0000        	call	c_rtol
2455  05a1 7b2a          	ld	a,(OFST-25,sp)
2456  05a3 b703          	ld	c_lreg+3,a
2457  05a5 3f02          	clr	c_lreg+2
2458  05a7 3f01          	clr	c_lreg+1
2459  05a9 3f00          	clr	c_lreg
2460  05ab a610          	ld	a,#16
2461  05ad cd0000        	call	c_llsh
2463  05b0 96            	ldw	x,sp
2464  05b1 1c0003        	addw	x,#OFST-64
2465  05b4 cd0000        	call	c_rtol
2467  05b7 7b2b          	ld	a,(OFST-24,sp)
2468  05b9 b703          	ld	c_lreg+3,a
2469  05bb 3f02          	clr	c_lreg+2
2470  05bd 3f01          	clr	c_lreg+1
2471  05bf 3f00          	clr	c_lreg
2472  05c1 a618          	ld	a,#24
2473  05c3 cd0000        	call	c_llsh
2475  05c6 96            	ldw	x,sp
2476  05c7 1c0003        	addw	x,#OFST-64
2477  05ca cd0000        	call	c_lor
2479  05cd 96            	ldw	x,sp
2480  05ce 1c0007        	addw	x,#OFST-60
2481  05d1 cd0000        	call	c_lor
2483  05d4 96            	ldw	x,sp
2484  05d5 1c000b        	addw	x,#OFST-56
2485  05d8 cd0000        	call	c_lor
2487  05db 96            	ldw	x,sp
2488  05dc 1c0017        	addw	x,#OFST-44
2489  05df cd0000        	call	c_rtol
2491                     ; 777 				fmt = check_fs(buf, bsect);	/* Check the partition */
2493  05e2 1e19          	ldw	x,(OFST-42,sp)
2494  05e4 89            	pushw	x
2495  05e5 1e19          	ldw	x,(OFST-42,sp)
2496  05e7 89            	pushw	x
2497  05e8 96            	ldw	x,sp
2498  05e9 1c0024        	addw	x,#OFST-31
2499  05ec cd04a6        	call	L557_check_fs
2501  05ef 5b04          	addw	sp,#4
2502  05f1               LC003:
2503  05f1 6b1f          	ld	(OFST-36,sp),a
2504  05f3               L1601:
2505                     ; 781 	if (fmt == 3) return FR_DISK_ERR;
2507  05f3 7b1f          	ld	a,(OFST-36,sp)
2508  05f5 a103          	cp	a,#3
2509  05f7 2605          	jrne	L1701
2512  05f9               LC004:
2514  05f9 a601          	ld	a,#1
2516  05fb               L051:
2518  05fb 5b45          	addw	sp,#69
2519  05fd 81            	ret	
2520  05fe               L1701:
2521                     ; 782 	if (fmt) return FR_NO_FILESYSTEM;	/* No valid FAT patition is found */
2523  05fe 0d1f          	tnz	(OFST-36,sp)
2526  0600 2703cc080a    	jrne	LC005
2527                     ; 785 	if (disk_readp(buf, bsect, 13, sizeof (buf))) return FR_DISK_ERR;
2529  0605 ae0024        	ldw	x,#36
2530  0608 89            	pushw	x
2531  0609 ae000d        	ldw	x,#13
2532  060c 89            	pushw	x
2533  060d 1e1d          	ldw	x,(OFST-38,sp)
2534  060f 89            	pushw	x
2535  0610 1e1d          	ldw	x,(OFST-38,sp)
2536  0612 89            	pushw	x
2537  0613 96            	ldw	x,sp
2538  0614 1c0028        	addw	x,#OFST-27
2539  0617 cd0000        	call	_disk_readp
2541  061a 5b08          	addw	sp,#8
2542  061c 4d            	tnz	a
2545  061d 26da          	jrne	LC004
2546                     ; 787 	fsize = LD_WORD(buf+BPB_FATSz16-13);				/* Number of sectors per FAT */
2548  061f 7b29          	ld	a,(OFST-26,sp)
2549  0621 5f            	clrw	x
2550  0622 97            	ld	xl,a
2551  0623 1f0d          	ldw	(OFST-54,sp),x
2552  0625 5f            	clrw	x
2553  0626 7b2a          	ld	a,(OFST-25,sp)
2554  0628 97            	ld	xl,a
2555  0629 7b0e          	ld	a,(OFST-53,sp)
2556  062b 41            	exg	a,xl
2557  062c 1a0d          	or	a,(OFST-54,sp)
2558  062e 41            	exg	a,xl
2559  062f cd0000        	call	c_uitol
2561  0632 96            	ldw	x,sp
2562  0633 1c001b        	addw	x,#OFST-40
2563  0636 cd0000        	call	c_rtol
2565                     ; 788 	if (!fsize) fsize = LD_DWORD(buf+BPB_FATSz32-13);
2567  0639 96            	ldw	x,sp
2568  063a 1c001b        	addw	x,#OFST-40
2569  063d cd0000        	call	c_lzmp
2571  0640 2661          	jrne	L7701
2574  0642 7b37          	ld	a,(OFST-12,sp)
2575  0644 b703          	ld	c_lreg+3,a
2576  0646 3f02          	clr	c_lreg+2
2577  0648 3f01          	clr	c_lreg+1
2578  064a 3f00          	clr	c_lreg
2579  064c 96            	ldw	x,sp
2580  064d 1c000b        	addw	x,#OFST-56
2581  0650 cd0000        	call	c_rtol
2583  0653 7b38          	ld	a,(OFST-11,sp)
2584  0655 97            	ld	xl,a
2585  0656 4f            	clr	a
2586  0657 02            	rlwa	x,a
2587  0658 cd0000        	call	c_uitolx
2589  065b 96            	ldw	x,sp
2590  065c 1c0007        	addw	x,#OFST-60
2591  065f cd0000        	call	c_rtol
2593  0662 7b39          	ld	a,(OFST-10,sp)
2594  0664 b703          	ld	c_lreg+3,a
2595  0666 3f02          	clr	c_lreg+2
2596  0668 3f01          	clr	c_lreg+1
2597  066a 3f00          	clr	c_lreg
2598  066c a610          	ld	a,#16
2599  066e cd0000        	call	c_llsh
2601  0671 96            	ldw	x,sp
2602  0672 1c0003        	addw	x,#OFST-64
2603  0675 cd0000        	call	c_rtol
2605  0678 7b3a          	ld	a,(OFST-9,sp)
2606  067a b703          	ld	c_lreg+3,a
2607  067c 3f02          	clr	c_lreg+2
2608  067e 3f01          	clr	c_lreg+1
2609  0680 3f00          	clr	c_lreg
2610  0682 a618          	ld	a,#24
2611  0684 cd0000        	call	c_llsh
2613  0687 96            	ldw	x,sp
2614  0688 1c0003        	addw	x,#OFST-64
2615  068b cd0000        	call	c_lor
2617  068e 96            	ldw	x,sp
2618  068f 1c0007        	addw	x,#OFST-60
2619  0692 cd0000        	call	c_lor
2621  0695 96            	ldw	x,sp
2622  0696 1c000b        	addw	x,#OFST-56
2623  0699 cd0000        	call	c_lor
2625  069c 96            	ldw	x,sp
2626  069d 1c001b        	addw	x,#OFST-40
2627  06a0 cd0000        	call	c_rtol
2629  06a3               L7701:
2630                     ; 790 	fsize *= buf[BPB_NumFATs-13];						/* Number of sectors in FAT area */
2632  06a3 7b23          	ld	a,(OFST-32,sp)
2633  06a5 b703          	ld	c_lreg+3,a
2634  06a7 3f02          	clr	c_lreg+2
2635  06a9 3f01          	clr	c_lreg+1
2636  06ab 3f00          	clr	c_lreg
2637  06ad 96            	ldw	x,sp
2638  06ae 1c001b        	addw	x,#OFST-40
2639  06b1 cd0000        	call	c_lgmul
2641                     ; 791 	fs->fatbase = bsect + LD_WORD(buf+BPB_RsvdSecCnt-13); /* FAT start sector (lba) */
2643  06b4 7b21          	ld	a,(OFST-34,sp)
2644  06b6 5f            	clrw	x
2645  06b7 97            	ld	xl,a
2646  06b8 1f0d          	ldw	(OFST-54,sp),x
2647  06ba 5f            	clrw	x
2648  06bb 7b22          	ld	a,(OFST-33,sp)
2649  06bd 97            	ld	xl,a
2650  06be 7b0e          	ld	a,(OFST-53,sp)
2651  06c0 41            	exg	a,xl
2652  06c1 1a0d          	or	a,(OFST-54,sp)
2653  06c3 41            	exg	a,xl
2654  06c4 cd0000        	call	c_uitol
2656  06c7 96            	ldw	x,sp
2657  06c8 1c0017        	addw	x,#OFST-44
2658  06cb cd0000        	call	c_ladd
2660  06ce 1e44          	ldw	x,(OFST+1,sp)
2661  06d0 1c000a        	addw	x,#10
2662  06d3 cd0000        	call	c_rtol
2664                     ; 792 	fs->csize = buf[BPB_SecPerClus-13];					/* Number of sectors per cluster */
2666  06d6 1e44          	ldw	x,(OFST+1,sp)
2667  06d8 7b20          	ld	a,(OFST-35,sp)
2668  06da e702          	ld	(2,x),a
2669                     ; 793 	fs->n_rootdir = LD_WORD(buf+BPB_RootEntCnt-13);		/* Nmuber of root directory entries */
2671  06dc 5f            	clrw	x
2672  06dd 7b24          	ld	a,(OFST-31,sp)
2673  06df 97            	ld	xl,a
2674  06e0 1f0d          	ldw	(OFST-54,sp),x
2675  06e2 5f            	clrw	x
2676  06e3 7b25          	ld	a,(OFST-30,sp)
2677  06e5 97            	ld	xl,a
2678  06e6 7b0e          	ld	a,(OFST-53,sp)
2679  06e8 01            	rrwa	x,a
2680  06e9 1a0d          	or	a,(OFST-54,sp)
2681  06eb 1644          	ldw	y,(OFST+1,sp)
2682  06ed 01            	rrwa	x,a
2683  06ee 90ef04        	ldw	(4,y),x
2684                     ; 794 	tsect = LD_WORD(buf+BPB_TotSec16-13);				/* Number of sectors on the file system */
2686  06f1 5f            	clrw	x
2687  06f2 7b26          	ld	a,(OFST-29,sp)
2688  06f4 97            	ld	xl,a
2689  06f5 1f0d          	ldw	(OFST-54,sp),x
2690  06f7 5f            	clrw	x
2691  06f8 7b27          	ld	a,(OFST-28,sp)
2692  06fa 97            	ld	xl,a
2693  06fb 7b0e          	ld	a,(OFST-53,sp)
2694  06fd 41            	exg	a,xl
2695  06fe 1a0d          	or	a,(OFST-54,sp)
2696  0700 41            	exg	a,xl
2697  0701 cd0000        	call	c_uitol
2699  0704 96            	ldw	x,sp
2700  0705 1c000f        	addw	x,#OFST-52
2701  0708 cd0000        	call	c_rtol
2703                     ; 795 	if (!tsect) tsect = LD_DWORD(buf+BPB_TotSec32-13);
2705  070b 96            	ldw	x,sp
2706  070c 1c000f        	addw	x,#OFST-52
2707  070f cd0000        	call	c_lzmp
2709  0712 2661          	jrne	L1011
2712  0714 7b33          	ld	a,(OFST-16,sp)
2713  0716 b703          	ld	c_lreg+3,a
2714  0718 3f02          	clr	c_lreg+2
2715  071a 3f01          	clr	c_lreg+1
2716  071c 3f00          	clr	c_lreg
2717  071e 96            	ldw	x,sp
2718  071f 1c000b        	addw	x,#OFST-56
2719  0722 cd0000        	call	c_rtol
2721  0725 7b34          	ld	a,(OFST-15,sp)
2722  0727 97            	ld	xl,a
2723  0728 4f            	clr	a
2724  0729 02            	rlwa	x,a
2725  072a cd0000        	call	c_uitolx
2727  072d 96            	ldw	x,sp
2728  072e 1c0007        	addw	x,#OFST-60
2729  0731 cd0000        	call	c_rtol
2731  0734 7b35          	ld	a,(OFST-14,sp)
2732  0736 b703          	ld	c_lreg+3,a
2733  0738 3f02          	clr	c_lreg+2
2734  073a 3f01          	clr	c_lreg+1
2735  073c 3f00          	clr	c_lreg
2736  073e a610          	ld	a,#16
2737  0740 cd0000        	call	c_llsh
2739  0743 96            	ldw	x,sp
2740  0744 1c0003        	addw	x,#OFST-64
2741  0747 cd0000        	call	c_rtol
2743  074a 7b36          	ld	a,(OFST-13,sp)
2744  074c b703          	ld	c_lreg+3,a
2745  074e 3f02          	clr	c_lreg+2
2746  0750 3f01          	clr	c_lreg+1
2747  0752 3f00          	clr	c_lreg
2748  0754 a618          	ld	a,#24
2749  0756 cd0000        	call	c_llsh
2751  0759 96            	ldw	x,sp
2752  075a 1c0003        	addw	x,#OFST-64
2753  075d cd0000        	call	c_lor
2755  0760 96            	ldw	x,sp
2756  0761 1c0007        	addw	x,#OFST-60
2757  0764 cd0000        	call	c_lor
2759  0767 96            	ldw	x,sp
2760  0768 1c000b        	addw	x,#OFST-56
2761  076b cd0000        	call	c_lor
2763  076e 96            	ldw	x,sp
2764  076f 1c000f        	addw	x,#OFST-52
2765  0772 cd0000        	call	c_rtol
2767  0775               L1011:
2768                     ; 796 	mclst = (tsect						/* Last cluster# + 1 */
2768                     ; 797 		- LD_WORD(buf+BPB_RsvdSecCnt-13) - fsize - fs->n_rootdir / 16
2768                     ; 798 		) / fs->csize + 2;
2770  0775 1e44          	ldw	x,(OFST+1,sp)
2771  0777 e602          	ld	a,(2,x)
2772  0779 b703          	ld	c_lreg+3,a
2773  077b 3f02          	clr	c_lreg+2
2774  077d 3f01          	clr	c_lreg+1
2775  077f 3f00          	clr	c_lreg
2776  0781 96            	ldw	x,sp
2777  0782 1c000b        	addw	x,#OFST-56
2778  0785 cd0000        	call	c_rtol
2780  0788 1e44          	ldw	x,(OFST+1,sp)
2781  078a ee04          	ldw	x,(4,x)
2782  078c 54            	srlw	x
2783  078d 54            	srlw	x
2784  078e 54            	srlw	x
2785  078f 54            	srlw	x
2786  0790 cd0000        	call	c_uitolx
2788  0793 96            	ldw	x,sp
2789  0794 1c0007        	addw	x,#OFST-60
2790  0797 cd0000        	call	c_rtol
2792  079a 7b21          	ld	a,(OFST-34,sp)
2793  079c 5f            	clrw	x
2794  079d 97            	ld	xl,a
2795  079e 1f05          	ldw	(OFST-62,sp),x
2796  07a0 5f            	clrw	x
2797  07a1 7b22          	ld	a,(OFST-33,sp)
2798  07a3 97            	ld	xl,a
2799  07a4 7b06          	ld	a,(OFST-61,sp)
2800  07a6 01            	rrwa	x,a
2801  07a7 1a05          	or	a,(OFST-62,sp)
2802  07a9 01            	rrwa	x,a
2803  07aa cd0000        	call	c_uitolx
2805  07ad 96            	ldw	x,sp
2806  07ae 5c            	incw	x
2807  07af cd0000        	call	c_rtol
2809  07b2 96            	ldw	x,sp
2810  07b3 1c000f        	addw	x,#OFST-52
2811  07b6 cd0000        	call	c_ltor
2813  07b9 96            	ldw	x,sp
2814  07ba 5c            	incw	x
2815  07bb cd0000        	call	c_lsub
2817  07be 96            	ldw	x,sp
2818  07bf 1c001b        	addw	x,#OFST-40
2819  07c2 cd0000        	call	c_lsub
2821  07c5 96            	ldw	x,sp
2822  07c6 1c0007        	addw	x,#OFST-60
2823  07c9 cd0000        	call	c_lsub
2825  07cc 96            	ldw	x,sp
2826  07cd 1c000b        	addw	x,#OFST-56
2827  07d0 cd0000        	call	c_ludv
2829  07d3 a602          	ld	a,#2
2830  07d5 cd0000        	call	c_ladc
2832  07d8 96            	ldw	x,sp
2833  07d9 1c0013        	addw	x,#OFST-48
2834  07dc cd0000        	call	c_rtol
2836                     ; 799 	fs->n_fatent = (CLUST)mclst;
2838  07df 1e44          	ldw	x,(OFST+1,sp)
2839  07e1 7b16          	ld	a,(OFST-45,sp)
2840  07e3 e709          	ld	(9,x),a
2841  07e5 7b15          	ld	a,(OFST-46,sp)
2842  07e7 e708          	ld	(8,x),a
2843  07e9 7b14          	ld	a,(OFST-47,sp)
2844  07eb e707          	ld	(7,x),a
2845  07ed 7b13          	ld	a,(OFST-48,sp)
2846  07ef e706          	ld	(6,x),a
2847                     ; 801 	fmt = 0;							/* Determine the FAT sub type */
2849  07f1 0f1f          	clr	(OFST-36,sp)
2850                     ; 806 	if (_FS_FAT32 && mclst >= 0xFFF7)
2852  07f3 96            	ldw	x,sp
2853  07f4 1c0013        	addw	x,#OFST-48
2854  07f7 cd0000        	call	c_ltor
2856  07fa ae0088        	ldw	x,#L641
2857  07fd cd0000        	call	c_lcmp
2859  0800 2504          	jrult	L3011
2860                     ; 807 		fmt = FS_FAT32;
2862  0802 a603          	ld	a,#3
2863  0804 6b1f          	ld	(OFST-36,sp),a
2864  0806               L3011:
2865                     ; 808 	if (!fmt) return FR_NO_FILESYSTEM;
2867  0806 0d1f          	tnz	(OFST-36,sp)
2868  0808 2605          	jrne	L5011
2871  080a               LC005:
2873  080a a606          	ld	a,#6
2875  080c cc05fb        	jra	L051
2876  080f               L5011:
2877                     ; 809 	fs->fs_type = fmt;
2879  080f 1e44          	ldw	x,(OFST+1,sp)
2880  0811 7b1f          	ld	a,(OFST-36,sp)
2881  0813 f7            	ld	(x),a
2882                     ; 812 		fs->dirbase = LD_DWORD(buf+(BPB_RootClus-13));	/* Root directory start cluster */
2884  0814 7b3f          	ld	a,(OFST-4,sp)
2885  0816 b703          	ld	c_lreg+3,a
2886  0818 3f02          	clr	c_lreg+2
2887  081a 3f01          	clr	c_lreg+1
2888  081c 3f00          	clr	c_lreg
2889  081e 96            	ldw	x,sp
2890  081f 1c000b        	addw	x,#OFST-56
2891  0822 cd0000        	call	c_rtol
2893  0825 7b40          	ld	a,(OFST-3,sp)
2894  0827 97            	ld	xl,a
2895  0828 4f            	clr	a
2896  0829 02            	rlwa	x,a
2897  082a cd0000        	call	c_uitolx
2899  082d 96            	ldw	x,sp
2900  082e 1c0007        	addw	x,#OFST-60
2901  0831 cd0000        	call	c_rtol
2903  0834 7b41          	ld	a,(OFST-2,sp)
2904  0836 b703          	ld	c_lreg+3,a
2905  0838 3f02          	clr	c_lreg+2
2906  083a 3f01          	clr	c_lreg+1
2907  083c 3f00          	clr	c_lreg
2908  083e a610          	ld	a,#16
2909  0840 cd0000        	call	c_llsh
2911  0843 96            	ldw	x,sp
2912  0844 1c0003        	addw	x,#OFST-64
2913  0847 cd0000        	call	c_rtol
2915  084a 7b42          	ld	a,(OFST-1,sp)
2916  084c b703          	ld	c_lreg+3,a
2917  084e 3f02          	clr	c_lreg+2
2918  0850 3f01          	clr	c_lreg+1
2919  0852 3f00          	clr	c_lreg
2920  0854 a618          	ld	a,#24
2921  0856 cd0000        	call	c_llsh
2923  0859 96            	ldw	x,sp
2924  085a 1c0003        	addw	x,#OFST-64
2925  085d cd0000        	call	c_lor
2927  0860 96            	ldw	x,sp
2928  0861 1c0007        	addw	x,#OFST-60
2929  0864 cd0000        	call	c_lor
2931  0867 96            	ldw	x,sp
2932  0868 1c000b        	addw	x,#OFST-56
2933  086b cd0000        	call	c_lor
2935  086e 1e44          	ldw	x,(OFST+1,sp)
2936  0870 1c000e        	addw	x,#14
2937  0873 cd0000        	call	c_rtol
2939                     ; 815 	fs->database = fs->fatbase + fsize + fs->n_rootdir / 16;	/* Data start sector (lba) */
2941  0876 1e44          	ldw	x,(OFST+1,sp)
2942  0878 ee04          	ldw	x,(4,x)
2943  087a 54            	srlw	x
2944  087b 54            	srlw	x
2945  087c 54            	srlw	x
2946  087d 54            	srlw	x
2947  087e cd0000        	call	c_uitolx
2949  0881 96            	ldw	x,sp
2950  0882 1c000b        	addw	x,#OFST-56
2951  0885 cd0000        	call	c_rtol
2953  0888 1e44          	ldw	x,(OFST+1,sp)
2954  088a 1c000a        	addw	x,#10
2955  088d cd0000        	call	c_ltor
2957  0890 96            	ldw	x,sp
2958  0891 1c001b        	addw	x,#OFST-40
2959  0894 cd0000        	call	c_ladd
2961  0897 96            	ldw	x,sp
2962  0898 1c000b        	addw	x,#OFST-56
2963  089b cd0000        	call	c_ladd
2965  089e 1e44          	ldw	x,(OFST+1,sp)
2966  08a0 1c0012        	addw	x,#18
2967  08a3 cd0000        	call	c_rtol
2969                     ; 817 	fs->flag = 0;
2971  08a6 1e44          	ldw	x,(OFST+1,sp)
2972                     ; 818 	FatFs = fs;
2974  08a8 cf0000        	ldw	L3_FatFs,x
2975  08ab 6f01          	clr	(1,x)
2976                     ; 820 	return FR_OK;
2978  08ad 4f            	clr	a
2980  08ae cc05fb        	jra	L051
3071                     ; 830 FRESULT pf_open (
3071                     ; 831 	const char *path	/* Pointer to the file name */
3071                     ; 832 )
3071                     ; 833 {
3072                     	switch	.text
3073  08b1               _pf_open:
3075  08b1 89            	pushw	x
3076  08b2 524b          	subw	sp,#75
3077       0000004b      OFST:	set	75
3080                     ; 837 	FATFS *fs = FatFs;
3082  08b4 ce0000        	ldw	x,L3_FatFs
3083  08b7 1f2a          	ldw	(OFST-33,sp),x
3084                     ; 840 	if (!fs) return FR_NOT_ENABLED;		/* Check file system */
3086  08b9 2604          	jrne	L3511
3089  08bb a605          	ld	a,#5
3091  08bd 201c          	jra	L061
3092  08bf               L3511:
3093                     ; 842 	fs->flag = 0;
3095  08bf 6f01          	clr	(1,x)
3096                     ; 843 	dj.fn = sp;
3098  08c1 96            	ldw	x,sp
3099  08c2 1c000d        	addw	x,#OFST-62
3100  08c5 1f1b          	ldw	(OFST-48,sp),x
3101                     ; 844 	res = follow_path(&dj, dir, path);	/* Follow the file path */
3103  08c7 1e4c          	ldw	x,(OFST+1,sp)
3104  08c9 89            	pushw	x
3105  08ca 96            	ldw	x,sp
3106  08cb 1c002e        	addw	x,#OFST-29
3107  08ce 89            	pushw	x
3108  08cf 1d0013        	subw	x,#19
3109  08d2 cd0437        	call	L766_follow_path
3111  08d5 5b04          	addw	sp,#4
3112  08d7 6b29          	ld	(OFST-34,sp),a
3113                     ; 845 	if (res != FR_OK) return res;		/* Follow failed */
3115  08d9 2703          	jreq	L5511
3119  08db               L061:
3121  08db 5b4d          	addw	sp,#77
3122  08dd 81            	ret	
3123  08de               L5511:
3124                     ; 846 	if (!dir[0] || (dir[DIR_Attr] & AM_DIR))	/* It is a directory */
3126  08de 7b2c          	ld	a,(OFST-31,sp)
3127  08e0 2706          	jreq	L1611
3129  08e2 7b37          	ld	a,(OFST-20,sp)
3130  08e4 a510          	bcp	a,#16
3131  08e6 2704          	jreq	L7511
3132  08e8               L1611:
3133                     ; 847 		return FR_NO_FILE;
3135  08e8 a603          	ld	a,#3
3137  08ea 20ef          	jra	L061
3138  08ec               L7511:
3139                     ; 849 	fs->org_clust = get_clust(dir);		/* File start cluster */
3141  08ec 96            	ldw	x,sp
3142  08ed 1c002c        	addw	x,#OFST-31
3143  08f0 cd015d        	call	L552_get_clust
3145  08f3 1e2a          	ldw	x,(OFST-33,sp)
3146  08f5 1c001e        	addw	x,#30
3147  08f8 cd0000        	call	c_rtol
3149                     ; 850 	fs->fsize = LD_DWORD(dir+DIR_FileSize);	/* File size */
3151  08fb 7b48          	ld	a,(OFST-3,sp)
3152  08fd b703          	ld	c_lreg+3,a
3153  08ff 3f02          	clr	c_lreg+2
3154  0901 3f01          	clr	c_lreg+1
3155  0903 3f00          	clr	c_lreg
3156  0905 96            	ldw	x,sp
3157  0906 1c0009        	addw	x,#OFST-66
3158  0909 cd0000        	call	c_rtol
3160  090c 7b49          	ld	a,(OFST-2,sp)
3161  090e 97            	ld	xl,a
3162  090f 4f            	clr	a
3163  0910 02            	rlwa	x,a
3164  0911 cd0000        	call	c_uitolx
3166  0914 96            	ldw	x,sp
3167  0915 1c0005        	addw	x,#OFST-70
3168  0918 cd0000        	call	c_rtol
3170  091b 7b4a          	ld	a,(OFST-1,sp)
3171  091d b703          	ld	c_lreg+3,a
3172  091f 3f02          	clr	c_lreg+2
3173  0921 3f01          	clr	c_lreg+1
3174  0923 3f00          	clr	c_lreg
3175  0925 a610          	ld	a,#16
3176  0927 cd0000        	call	c_llsh
3178  092a 96            	ldw	x,sp
3179  092b 5c            	incw	x
3180  092c cd0000        	call	c_rtol
3182  092f 7b4b          	ld	a,(OFST+0,sp)
3183  0931 b703          	ld	c_lreg+3,a
3184  0933 3f02          	clr	c_lreg+2
3185  0935 3f01          	clr	c_lreg+1
3186  0937 3f00          	clr	c_lreg
3187  0939 a618          	ld	a,#24
3188  093b cd0000        	call	c_llsh
3190  093e 96            	ldw	x,sp
3191  093f 5c            	incw	x
3192  0940 cd0000        	call	c_lor
3194  0943 96            	ldw	x,sp
3195  0944 1c0005        	addw	x,#OFST-70
3196  0947 cd0000        	call	c_lor
3198  094a 96            	ldw	x,sp
3199  094b 1c0009        	addw	x,#OFST-66
3200  094e cd0000        	call	c_lor
3202  0951 1e2a          	ldw	x,(OFST-33,sp)
3203  0953 1c001a        	addw	x,#26
3204  0956 cd0000        	call	c_rtol
3206                     ; 851 	fs->fptr = 0;						/* File pointer */
3208  0959 1e2a          	ldw	x,(OFST-33,sp)
3209  095b 4f            	clr	a
3210  095c e719          	ld	(25,x),a
3211  095e e718          	ld	(24,x),a
3212  0960 e717          	ld	(23,x),a
3213  0962 e716          	ld	(22,x),a
3214                     ; 852 	fs->flag = FA_OPENED;
3216  0964 4c            	inc	a
3217  0965 e701          	ld	(1,x),a
3218                     ; 854 	return FR_OK;
3220  0967 4f            	clr	a
3222  0968 cc08db        	jra	L061
3380                     ; 865 FRESULT pf_read (
3380                     ; 866 	void* buff,		/* Pointer to the read buffer (NULL:Forward data to the stream)*/
3380                     ; 867 	UINT btr,		/* Number of bytes to read */
3380                     ; 868 	UINT* br		/* Pointer to number of bytes read */
3380                     ; 869 )
3380                     ; 870 {
3381                     	switch	.text
3382  096b               _pf_read:
3384  096b 89            	pushw	x
3385  096c 520d          	subw	sp,#13
3386       0000000d      OFST:	set	13
3389                     ; 875 	BYTE cs, *rbuff = buff;
3391  096e 1f03          	ldw	(OFST-10,sp),x
3392                     ; 876 	FATFS *fs = FatFs;
3394  0970 ce0000        	ldw	x,L3_FatFs
3395  0973 1f0c          	ldw	(OFST-1,sp),x
3396                     ; 879 	*br = 0;
3398  0975 1e14          	ldw	x,(OFST+7,sp)
3399  0977 905f          	clrw	y
3400  0979 ff            	ldw	(x),y
3401                     ; 880 	if (!fs) return FR_NOT_ENABLED;		/* Check file system */
3403  097a 1e0c          	ldw	x,(OFST-1,sp)
3404  097c 2604          	jrne	L3521
3407  097e a605          	ld	a,#5
3409  0980 2008          	jra	L671
3410  0982               L3521:
3411                     ; 881 	if (!(fs->flag & FA_OPENED))		/* Check if opened */
3413  0982 e601          	ld	a,(1,x)
3414  0984 a501          	bcp	a,#1
3415  0986 2605          	jrne	L5521
3416                     ; 882 		return FR_NOT_OPENED;
3418  0988 a604          	ld	a,#4
3420  098a               L671:
3422  098a 5b0f          	addw	sp,#15
3423  098c 81            	ret	
3424  098d               L5521:
3425                     ; 884 	remain = fs->fsize - fs->fptr;
3427  098d 1c001a        	addw	x,#26
3428  0990 cd0000        	call	c_ltor
3430  0993 1e0c          	ldw	x,(OFST-1,sp)
3431  0995 1c0016        	addw	x,#22
3432  0998 cd0000        	call	c_lsub
3434  099b 96            	ldw	x,sp
3435  099c 1c0006        	addw	x,#OFST-7
3436  099f cd0000        	call	c_rtol
3438                     ; 885 	if (btr > remain) btr = (UINT)remain;			/* Truncate btr by remaining bytes */
3440  09a2 1e12          	ldw	x,(OFST+5,sp)
3441  09a4 cd0000        	call	c_uitolx
3443  09a7 96            	ldw	x,sp
3444  09a8 1c0006        	addw	x,#OFST-7
3445  09ab cd0000        	call	c_lcmp
3447  09ae 2203cc0ae1    	jrule	L3621
3450  09b3 1e08          	ldw	x,(OFST-5,sp)
3451  09b5 1f12          	ldw	(OFST+5,sp),x
3452  09b7 cc0ae1        	jra	L3621
3453  09ba               L1621:
3454                     ; 888 		if (((UINT)fs->fptr & (UINT)511) == 0) {				/* On the sector boundary? */
3456  09ba 1e0c          	ldw	x,(OFST-1,sp)
3457  09bc ee18          	ldw	x,(24,x)
3458  09be 02            	rlwa	x,a
3459  09bf a401          	and	a,#1
3460  09c1 01            	rrwa	x,a
3461  09c2 5d            	tnzw	x
3462  09c3 2703cc0a74    	jrne	L7621
3463                     ; 889 			cs = (BYTE)(((UINT)((UINT)fs->fptr>>((UINT)9)) & (UINT)(fs->csize - 1))&0xFF);	/* Sector offset in the cluster */
3465  09c8 1e0c          	ldw	x,(OFST-1,sp)
3466  09ca e602          	ld	a,(2,x)
3467  09cc 4a            	dec	a
3468  09cd 5f            	clrw	x
3469  09ce 97            	ld	xl,a
3470  09cf 1f01          	ldw	(OFST-12,sp),x
3471  09d1 1e0c          	ldw	x,(OFST-1,sp)
3472  09d3 4f            	clr	a
3473  09d4 ee18          	ldw	x,(24,x)
3474  09d6 01            	rrwa	x,a
3475  09d7 54            	srlw	x
3476  09d8 01            	rrwa	x,a
3477  09d9 1402          	and	a,(OFST-11,sp)
3478  09db 6b05          	ld	(OFST-8,sp),a
3479                     ; 890 			if (!cs) {								/* On the cluster boundary? */
3481  09dd 2658          	jrne	L1721
3482                     ; 891 				if (fs->fptr == 0)					/* On the top of the file? */
3484  09df 1e0c          	ldw	x,(OFST-1,sp)
3485  09e1 1c0016        	addw	x,#22
3486  09e4 cd0000        	call	c_lzmp
3488  09e7 260f          	jrne	L3721
3489                     ; 892 					clst = fs->org_clust;
3491  09e9 1e0c          	ldw	x,(OFST-1,sp)
3492  09eb 9093          	ldw	y,x
3493  09ed ee20          	ldw	x,(32,x)
3494  09ef 1f08          	ldw	(OFST-5,sp),x
3495  09f1 93            	ldw	x,y
3496  09f2 ee1e          	ldw	x,(30,x)
3497  09f4 1f06          	ldw	(OFST-7,sp),x
3499  09f6 2017          	jra	L5721
3500  09f8               L3721:
3501                     ; 894 					clst = get_fat(fs->curr_clust);
3503  09f8 1e0c          	ldw	x,(OFST-1,sp)
3504  09fa 9093          	ldw	y,x
3505  09fc ee24          	ldw	x,(36,x)
3506  09fe 89            	pushw	x
3507  09ff 93            	ldw	x,y
3508  0a00 ee22          	ldw	x,(34,x)
3509  0a02 89            	pushw	x
3510  0a03 cd0046        	call	L321_get_fat
3512  0a06 5b04          	addw	sp,#4
3513  0a08 96            	ldw	x,sp
3514  0a09 1c0006        	addw	x,#OFST-7
3515  0a0c cd0000        	call	c_rtol
3517  0a0f               L5721:
3518                     ; 895 				if (clst <= 1) ABORT(FR_DISK_ERR);
3520  0a0f 96            	ldw	x,sp
3521  0a10 1c0006        	addw	x,#OFST-7
3522  0a13 cd0000        	call	c_ltor
3524  0a16 ae0000        	ldw	x,#L41
3525  0a19 cd0000        	call	c_lcmp
3527  0a1c 1e0c          	ldw	x,(OFST-1,sp)
3528  0a1e 2407          	jruge	L7721
3531  0a20 6f01          	clr	(1,x)
3534  0a22 a601          	ld	a,#1
3536  0a24 cc098a        	jra	L671
3537  0a27               L7721:
3538                     ; 896 				fs->curr_clust = clst;				/* Update current cluster */
3541  0a27 7b09          	ld	a,(OFST-4,sp)
3542  0a29 e725          	ld	(37,x),a
3543  0a2b 7b08          	ld	a,(OFST-5,sp)
3544  0a2d e724          	ld	(36,x),a
3545  0a2f 7b07          	ld	a,(OFST-6,sp)
3546  0a31 e723          	ld	(35,x),a
3547  0a33 7b06          	ld	a,(OFST-7,sp)
3548  0a35 e722          	ld	(34,x),a
3549  0a37               L1721:
3550                     ; 898 			sect = clust2sect(fs->curr_clust);		/* Get current sector */
3552  0a37 1e0c          	ldw	x,(OFST-1,sp)
3553  0a39 9093          	ldw	y,x
3554  0a3b ee24          	ldw	x,(36,x)
3555  0a3d 89            	pushw	x
3556  0a3e 93            	ldw	x,y
3557  0a3f ee22          	ldw	x,(34,x)
3558  0a41 89            	pushw	x
3559  0a42 cd0113        	call	L722_clust2sect
3561  0a45 5b04          	addw	sp,#4
3562  0a47 96            	ldw	x,sp
3563  0a48 1c0006        	addw	x,#OFST-7
3564  0a4b cd0000        	call	c_rtol
3566                     ; 899 			if (!sect) ABORT(FR_DISK_ERR);
3568  0a4e 96            	ldw	x,sp
3569  0a4f 1c0006        	addw	x,#OFST-7
3570  0a52 cd0000        	call	c_lzmp
3572  0a55 2609          	jrne	L1031
3575  0a57 1e0c          	ldw	x,(OFST-1,sp)
3578  0a59 a601          	ld	a,#1
3579  0a5b 6f01          	clr	(1,x)
3581  0a5d cc098a        	jra	L671
3582  0a60               L1031:
3583                     ; 900 			fs->dsect = sect + cs;
3586  0a60 96            	ldw	x,sp
3587  0a61 1c0006        	addw	x,#OFST-7
3588  0a64 cd0000        	call	c_ltor
3590  0a67 7b05          	ld	a,(OFST-8,sp)
3591  0a69 cd0000        	call	c_ladc
3593  0a6c 1e0c          	ldw	x,(OFST-1,sp)
3594  0a6e 1c0026        	addw	x,#38
3595  0a71 cd0000        	call	c_rtol
3597  0a74               L7621:
3598                     ; 902 		rcnt = (UINT)((UINT)512 - (UINT)((UINT)fs->fptr & (UINT)511));			/* Get partial sector data from sector buffer */
3600  0a74 1e0c          	ldw	x,(OFST-1,sp)
3601  0a76 ee18          	ldw	x,(24,x)
3602  0a78 02            	rlwa	x,a
3603  0a79 a401          	and	a,#1
3604  0a7b 01            	rrwa	x,a
3605  0a7c 1f01          	ldw	(OFST-12,sp),x
3606  0a7e ae0200        	ldw	x,#512
3607  0a81 72f001        	subw	x,(OFST-12,sp)
3608                     ; 903 		if (rcnt > btr) rcnt = btr;
3610  0a84 1312          	cpw	x,(OFST+5,sp)
3611  0a86 2302          	jrule	L3031
3614  0a88 1e12          	ldw	x,(OFST+5,sp)
3615  0a8a               L3031:
3616  0a8a 1f0a          	ldw	(OFST-3,sp),x
3617                     ; 904 		dr = disk_readp(buff ==0? 0 : rbuff, fs->dsect, (UINT)((UINT)fs->fptr & (UINT)511), rcnt);
3619  0a8c 89            	pushw	x
3620  0a8d 1e0e          	ldw	x,(OFST+1,sp)
3621  0a8f ee18          	ldw	x,(24,x)
3622  0a91 02            	rlwa	x,a
3623  0a92 a401          	and	a,#1
3624  0a94 01            	rrwa	x,a
3625  0a95 89            	pushw	x
3626  0a96 1e10          	ldw	x,(OFST+3,sp)
3627  0a98 9093          	ldw	y,x
3628  0a9a ee28          	ldw	x,(40,x)
3629  0a9c 89            	pushw	x
3630  0a9d 93            	ldw	x,y
3631  0a9e ee26          	ldw	x,(38,x)
3632  0aa0 89            	pushw	x
3633  0aa1 1e16          	ldw	x,(OFST+9,sp)
3634  0aa3 2603          	jrne	L271
3635  0aa5 5f            	clrw	x
3636  0aa6 2002          	jra	L471
3637  0aa8               L271:
3638  0aa8 1e0b          	ldw	x,(OFST-2,sp)
3639  0aaa               L471:
3640  0aaa cd0000        	call	_disk_readp
3642  0aad 5b08          	addw	sp,#8
3643  0aaf 6b05          	ld	(OFST-8,sp),a
3644                     ; 905 		if (dr) ABORT(FR_DISK_ERR);
3646  0ab1 2709          	jreq	L5031
3649  0ab3 1e0c          	ldw	x,(OFST-1,sp)
3652  0ab5 a601          	ld	a,#1
3653  0ab7 6f01          	clr	(1,x)
3655  0ab9 cc098a        	jra	L671
3656  0abc               L5031:
3657                     ; 906 		fs->fptr += rcnt; rbuff += rcnt;			/* Update pointers and counters */
3660  0abc 1e0c          	ldw	x,(OFST-1,sp)
3661  0abe 160a          	ldw	y,(OFST-3,sp)
3662  0ac0 cd0000        	call	c_uitoly
3664  0ac3 1c0016        	addw	x,#22
3665  0ac6 cd0000        	call	c_lgadd
3669  0ac9 1e03          	ldw	x,(OFST-10,sp)
3670  0acb 72fb0a        	addw	x,(OFST-3,sp)
3671  0ace 1f03          	ldw	(OFST-10,sp),x
3672                     ; 907 		btr -= rcnt; *br += rcnt;
3674  0ad0 1e12          	ldw	x,(OFST+5,sp)
3675  0ad2 72f00a        	subw	x,(OFST-3,sp)
3676  0ad5 1f12          	ldw	(OFST+5,sp),x
3679  0ad7 1e14          	ldw	x,(OFST+7,sp)
3680  0ad9 9093          	ldw	y,x
3681  0adb fe            	ldw	x,(x)
3682  0adc 72fb0a        	addw	x,(OFST-3,sp)
3683  0adf 90ff          	ldw	(y),x
3684  0ae1               L3621:
3685                     ; 887 	while (btr)	{									/* Repeat until all data transferred */
3687  0ae1 1e12          	ldw	x,(OFST+5,sp)
3688  0ae3 2703cc09ba    	jrne	L1621
3689                     ; 910 	return FR_OK;
3691  0ae8 4f            	clr	a
3693  0ae9 cc098a        	jra	L671
3769                     ; 990 FRESULT pf_lseek (
3769                     ; 991 	DWORD ofs		/* File pointer from top of file */
3769                     ; 992 )
3769                     ; 993 {
3770                     	switch	.text
3771  0aec               _pf_lseek:
3773  0aec 520e          	subw	sp,#14
3774       0000000e      OFST:	set	14
3777                     ; 996 	FATFS *fs = FatFs;
3779  0aee ce0000        	ldw	x,L3_FatFs
3780  0af1 1f0d          	ldw	(OFST-1,sp),x
3781                     ; 999 	if (!fs) return FR_NOT_ENABLED;		/* Check file system */
3783  0af3 2604          	jrne	L1431
3786  0af5 a605          	ld	a,#5
3788  0af7 2008          	jra	L602
3789  0af9               L1431:
3790                     ; 1000 	if (!(fs->flag & FA_OPENED))		/* Check if opened */
3792  0af9 e601          	ld	a,(1,x)
3793  0afb a501          	bcp	a,#1
3794  0afd 2605          	jrne	L3431
3795                     ; 1001 			return FR_NOT_OPENED;
3797  0aff a604          	ld	a,#4
3799  0b01               L602:
3801  0b01 5b0e          	addw	sp,#14
3802  0b03 81            	ret	
3803  0b04               L3431:
3804                     ; 1003 	if (ofs > fs->fsize) ofs = fs->fsize;	/* Clip offset with the file size */
3806  0b04 1c001a        	addw	x,#26
3807  0b07 cd0000        	call	c_ltor
3809  0b0a 96            	ldw	x,sp
3810  0b0b 1c0011        	addw	x,#OFST+3
3811  0b0e cd0000        	call	c_lcmp
3813  0b11 240d          	jruge	L5431
3816  0b13 1e0d          	ldw	x,(OFST-1,sp)
3817  0b15 9093          	ldw	y,x
3818  0b17 ee1c          	ldw	x,(28,x)
3819  0b19 1f13          	ldw	(OFST+5,sp),x
3820  0b1b 93            	ldw	x,y
3821  0b1c ee1a          	ldw	x,(26,x)
3822  0b1e 1f11          	ldw	(OFST+3,sp),x
3823  0b20               L5431:
3824                     ; 1004 	ifptr = fs->fptr;
3826  0b20 1e0d          	ldw	x,(OFST-1,sp)
3827  0b22 9093          	ldw	y,x
3828  0b24 ee18          	ldw	x,(24,x)
3829  0b26 1f0b          	ldw	(OFST-3,sp),x
3830  0b28 93            	ldw	x,y
3831  0b29 ee16          	ldw	x,(22,x)
3832  0b2b 1f09          	ldw	(OFST-5,sp),x
3833                     ; 1005 	fs->fptr = 0;
3835  0b2d 1e0d          	ldw	x,(OFST-1,sp)
3836  0b2f 4f            	clr	a
3837  0b30 e719          	ld	(25,x),a
3838  0b32 e718          	ld	(24,x),a
3839  0b34 e717          	ld	(23,x),a
3840  0b36 e716          	ld	(22,x),a
3841                     ; 1006 	if (ofs > 0) {
3843  0b38 96            	ldw	x,sp
3844  0b39 1c0011        	addw	x,#OFST+3
3845  0b3c cd0000        	call	c_lzmp
3847  0b3f 2603cc0cf8    	jreq	L7431
3848                     ; 1007 		bcs = (DWORD)fs->csize * 512;	/* Cluster size (byte) */
3850  0b44 1e0d          	ldw	x,(OFST-1,sp)
3851  0b46 e602          	ld	a,(2,x)
3852  0b48 5f            	clrw	x
3853  0b49 97            	ld	xl,a
3854  0b4a 90ae0200      	ldw	y,#512
3855  0b4e cd0000        	call	c_umul
3857  0b51 96            	ldw	x,sp
3858  0b52 1c0005        	addw	x,#OFST-9
3859  0b55 cd0000        	call	c_rtol
3861                     ; 1008 		if (ifptr > 0 &&
3861                     ; 1009 			(ofs - 1) / bcs >= (ifptr - 1) / bcs) {	/* When seek to same or following cluster, */
3863  0b58 96            	ldw	x,sp
3864  0b59 1c0009        	addw	x,#OFST-5
3865  0b5c cd0000        	call	c_lzmp
3867  0b5f 2603cc0be7    	jreq	L1531
3869  0b64 96            	ldw	x,sp
3870  0b65 1c0009        	addw	x,#OFST-5
3871  0b68 cd0000        	call	c_ltor
3873  0b6b a601          	ld	a,#1
3874  0b6d cd0000        	call	c_lsbc
3876  0b70 96            	ldw	x,sp
3877  0b71 1c0005        	addw	x,#OFST-9
3878  0b74 cd0000        	call	c_ludv
3880  0b77 96            	ldw	x,sp
3881  0b78 5c            	incw	x
3882  0b79 cd0000        	call	c_rtol
3884  0b7c 96            	ldw	x,sp
3885  0b7d 1c0011        	addw	x,#OFST+3
3886  0b80 cd0000        	call	c_ltor
3888  0b83 a601          	ld	a,#1
3889  0b85 cd0000        	call	c_lsbc
3891  0b88 96            	ldw	x,sp
3892  0b89 1c0005        	addw	x,#OFST-9
3893  0b8c cd0000        	call	c_ludv
3895  0b8f 96            	ldw	x,sp
3896  0b90 5c            	incw	x
3897  0b91 cd0000        	call	c_lcmp
3899  0b94 2551          	jrult	L1531
3900                     ; 1010 			fs->fptr = (ifptr - 1) & ~(bcs - 1);	/* start from the current cluster */
3902  0b96 96            	ldw	x,sp
3903  0b97 1c0005        	addw	x,#OFST-9
3904  0b9a cd0000        	call	c_ltor
3906  0b9d a601          	ld	a,#1
3907  0b9f cd0000        	call	c_lsbc
3909  0ba2 3303          	cpl	c_lreg+3
3910  0ba4 3302          	cpl	c_lreg+2
3911  0ba6 3301          	cpl	c_lreg+1
3912  0ba8 96            	ldw	x,sp
3913  0ba9 3300          	cpl	c_lreg
3914  0bab 5c            	incw	x
3915  0bac cd0000        	call	c_rtol
3917  0baf 96            	ldw	x,sp
3918  0bb0 1c0009        	addw	x,#OFST-5
3919  0bb3 cd0000        	call	c_ltor
3921  0bb6 a601          	ld	a,#1
3922  0bb8 cd0000        	call	c_lsbc
3924  0bbb 96            	ldw	x,sp
3925  0bbc 5c            	incw	x
3926  0bbd cd0000        	call	c_land
3928  0bc0 1e0d          	ldw	x,(OFST-1,sp)
3929  0bc2 1c0016        	addw	x,#22
3930  0bc5 cd0000        	call	c_rtol
3932                     ; 1011 			ofs -= fs->fptr;
3934  0bc8 1e0d          	ldw	x,(OFST-1,sp)
3935  0bca 1c0016        	addw	x,#22
3936  0bcd cd0000        	call	c_ltor
3938  0bd0 96            	ldw	x,sp
3939  0bd1 1c0011        	addw	x,#OFST+3
3940  0bd4 cd0000        	call	c_lgsub
3942                     ; 1012 			clst = fs->curr_clust;
3944  0bd7 1e0d          	ldw	x,(OFST-1,sp)
3945  0bd9 9093          	ldw	y,x
3946  0bdb ee24          	ldw	x,(36,x)
3947  0bdd 1f0b          	ldw	(OFST-3,sp),x
3948  0bdf 93            	ldw	x,y
3949  0be0 ee22          	ldw	x,(34,x)
3950  0be2 1f09          	ldw	(OFST-5,sp),x
3952  0be4 cc0c79        	jra	L7531
3953  0be7               L1531:
3954                     ; 1014 			clst = fs->org_clust;			/* start from the first cluster */
3956  0be7 1e0d          	ldw	x,(OFST-1,sp)
3957  0be9 9093          	ldw	y,x
3958  0beb ee20          	ldw	x,(32,x)
3959  0bed 1f0b          	ldw	(OFST-3,sp),x
3960  0bef 93            	ldw	x,y
3961  0bf0 ee1e          	ldw	x,(30,x)
3962  0bf2 1f09          	ldw	(OFST-5,sp),x
3963                     ; 1015 			fs->curr_clust = clst;
3965  0bf4 1e0d          	ldw	x,(OFST-1,sp)
3966  0bf6 7b0c          	ld	a,(OFST-2,sp)
3967  0bf8 e725          	ld	(37,x),a
3968  0bfa 7b0b          	ld	a,(OFST-3,sp)
3969  0bfc e724          	ld	(36,x),a
3970  0bfe 7b0a          	ld	a,(OFST-4,sp)
3971  0c00 e723          	ld	(35,x),a
3972  0c02 7b09          	ld	a,(OFST-5,sp)
3973  0c04 e722          	ld	(34,x),a
3974  0c06 2071          	jra	L7531
3975  0c08               L5531:
3976                     ; 1018 			clst = get_fat(clst);		/* Follow cluster chain */
3978  0c08 1e0b          	ldw	x,(OFST-3,sp)
3979  0c0a 89            	pushw	x
3980  0c0b 1e0b          	ldw	x,(OFST-3,sp)
3981  0c0d 89            	pushw	x
3982  0c0e cd0046        	call	L321_get_fat
3984  0c11 5b04          	addw	sp,#4
3985  0c13 96            	ldw	x,sp
3986  0c14 1c0009        	addw	x,#OFST-5
3987  0c17 cd0000        	call	c_rtol
3989                     ; 1019 			if (clst <= 1 || clst >= fs->n_fatent) ABORT(FR_DISK_ERR);
3991  0c1a 96            	ldw	x,sp
3992  0c1b 1c0009        	addw	x,#OFST-5
3993  0c1e cd0000        	call	c_ltor
3995  0c21 ae0000        	ldw	x,#L41
3996  0c24 cd0000        	call	c_lcmp
3998  0c27 2511          	jrult	L5631
4000  0c29 1e0d          	ldw	x,(OFST-1,sp)
4001  0c2b 1c0006        	addw	x,#6
4002  0c2e cd0000        	call	c_ltor
4004  0c31 96            	ldw	x,sp
4005  0c32 1c0009        	addw	x,#OFST-5
4006  0c35 cd0000        	call	c_lcmp
4008  0c38 2209          	jrugt	L3631
4009  0c3a               L5631:
4012  0c3a 1e0d          	ldw	x,(OFST-1,sp)
4015  0c3c a601          	ld	a,#1
4016  0c3e 6f01          	clr	(1,x)
4018  0c40 cc0b01        	jra	L602
4019  0c43               L3631:
4020                     ; 1020 			fs->curr_clust = clst;
4023  0c43 1e0d          	ldw	x,(OFST-1,sp)
4024  0c45 7b0c          	ld	a,(OFST-2,sp)
4025  0c47 e725          	ld	(37,x),a
4026  0c49 7b0b          	ld	a,(OFST-3,sp)
4027  0c4b e724          	ld	(36,x),a
4028  0c4d 7b0a          	ld	a,(OFST-4,sp)
4029  0c4f e723          	ld	(35,x),a
4030  0c51 7b09          	ld	a,(OFST-5,sp)
4031  0c53 e722          	ld	(34,x),a
4032                     ; 1021 			fs->fptr += bcs;
4034  0c55 7b08          	ld	a,(OFST-6,sp)
4035  0c57 b703          	ld	c_lreg+3,a
4036  0c59 7b07          	ld	a,(OFST-7,sp)
4037  0c5b b702          	ld	c_lreg+2,a
4038  0c5d 7b06          	ld	a,(OFST-8,sp)
4039  0c5f b701          	ld	c_lreg+1,a
4040  0c61 7b05          	ld	a,(OFST-9,sp)
4041  0c63 b700          	ld	c_lreg,a
4042  0c65 1c0016        	addw	x,#22
4043  0c68 cd0000        	call	c_lgadd
4045                     ; 1022 			ofs -= bcs;
4047  0c6b 96            	ldw	x,sp
4048  0c6c 1c0005        	addw	x,#OFST-9
4049  0c6f cd0000        	call	c_ltor
4051  0c72 96            	ldw	x,sp
4052  0c73 1c0011        	addw	x,#OFST+3
4053  0c76 cd0000        	call	c_lgsub
4055  0c79               L7531:
4056                     ; 1017 		while (ofs > bcs) {				/* Cluster following loop */
4058  0c79 96            	ldw	x,sp
4059  0c7a 1c0011        	addw	x,#OFST+3
4060  0c7d cd0000        	call	c_ltor
4062  0c80 96            	ldw	x,sp
4063  0c81 1c0005        	addw	x,#OFST-9
4064  0c84 cd0000        	call	c_lcmp
4066  0c87 2303cc0c08    	jrugt	L5531
4067                     ; 1024 		fs->fptr += ofs;
4069  0c8c 1e0d          	ldw	x,(OFST-1,sp)
4070  0c8e 7b14          	ld	a,(OFST+6,sp)
4071  0c90 b703          	ld	c_lreg+3,a
4072  0c92 7b13          	ld	a,(OFST+5,sp)
4073  0c94 b702          	ld	c_lreg+2,a
4074  0c96 7b12          	ld	a,(OFST+4,sp)
4075  0c98 b701          	ld	c_lreg+1,a
4076  0c9a 7b11          	ld	a,(OFST+3,sp)
4077  0c9c b700          	ld	c_lreg,a
4078  0c9e 1c0016        	addw	x,#22
4079  0ca1 cd0000        	call	c_lgadd
4081                     ; 1025 		sect = clust2sect(clst);		/* Current sector */
4083  0ca4 1e0b          	ldw	x,(OFST-3,sp)
4084  0ca6 89            	pushw	x
4085  0ca7 1e0b          	ldw	x,(OFST-3,sp)
4086  0ca9 89            	pushw	x
4087  0caa cd0113        	call	L722_clust2sect
4089  0cad 5b04          	addw	sp,#4
4090  0caf 96            	ldw	x,sp
4091  0cb0 1c0005        	addw	x,#OFST-9
4092  0cb3 cd0000        	call	c_rtol
4094                     ; 1026 		if (!sect) ABORT(FR_DISK_ERR);
4096  0cb6 96            	ldw	x,sp
4097  0cb7 1c0005        	addw	x,#OFST-9
4098  0cba cd0000        	call	c_lzmp
4100  0cbd 2609          	jrne	L7631
4103  0cbf 1e0d          	ldw	x,(OFST-1,sp)
4106  0cc1 a601          	ld	a,#1
4107  0cc3 6f01          	clr	(1,x)
4109  0cc5 cc0b01        	jra	L602
4110  0cc8               L7631:
4111                     ; 1027 		fs->dsect = sect + (fs->fptr / 512 & (fs->csize - 1));
4114  0cc8 1e0d          	ldw	x,(OFST-1,sp)
4115  0cca e602          	ld	a,(2,x)
4116  0ccc 5f            	clrw	x
4117  0ccd 97            	ld	xl,a
4118  0cce 5a            	decw	x
4119  0ccf cd0000        	call	c_itolx
4121  0cd2 96            	ldw	x,sp
4122  0cd3 5c            	incw	x
4123  0cd4 cd0000        	call	c_rtol
4125  0cd7 1e0d          	ldw	x,(OFST-1,sp)
4126  0cd9 1c0016        	addw	x,#22
4127  0cdc cd0000        	call	c_ltor
4129  0cdf a609          	ld	a,#9
4130  0ce1 cd0000        	call	c_lursh
4132  0ce4 96            	ldw	x,sp
4133  0ce5 5c            	incw	x
4134  0ce6 cd0000        	call	c_land
4136  0ce9 96            	ldw	x,sp
4137  0cea 1c0005        	addw	x,#OFST-9
4138  0ced cd0000        	call	c_ladd
4140  0cf0 1e0d          	ldw	x,(OFST-1,sp)
4141  0cf2 1c0026        	addw	x,#38
4142  0cf5 cd0000        	call	c_rtol
4144  0cf8               L7431:
4145                     ; 1030 	return FR_OK;
4147  0cf8 4f            	clr	a
4149  0cf9 cc0b01        	jra	L602
4176                     	switch	.bss
4177  0000               L3_FatFs:
4178  0000 0000          	ds.b	2
4179                     	xref	_disk_readp
4180                     	xref	_disk_initialize
4181                     	xdef	_pf_lseek
4182                     	xdef	_pf_read
4183                     	xdef	_pf_open
4184                     	xdef	_pf_mount
4185                     	xref.b	c_lreg
4186                     	xref.b	c_x
4187                     	xref.b	c_y
4207                     	xref	c_itolx
4208                     	xref	c_lgsub
4209                     	xref	c_land
4210                     	xref	c_umul
4211                     	xref	c_lgadd
4212                     	xref	c_uitoly
4213                     	xref	c_ladc
4214                     	xref	c_ludv
4215                     	xref	c_lsub
4216                     	xref	c_lgmul
4217                     	xref	c_lgadc
4218                     	xref	c_lzmp
4219                     	xref	c_lgor
4220                     	xref	c_lglsh
4221                     	xref	c_uitol
4222                     	xref	c_lmul
4223                     	xref	c_lsbc
4224                     	xref	c_lgsbc
4225                     	xref	c_uitolx
4226                     	xref	c_lor
4227                     	xref	c_rtol
4228                     	xref	c_llsh
4229                     	xref	c_ladd
4230                     	xref	c_lursh
4231                     	xref	c_lcmp
4232                     	xref	c_ltor
4233                     	end
