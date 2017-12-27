   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
   4                     ; Optimizer V4.3.3 - 10 Feb 2010
  18                     .const:	section	.text
  19  0000               _BMP1:
  20  0000 00            	dc.b	0
  21  0001 00            	dc.b	0
  22  0002 00            	dc.b	0
  23  0003 00            	dc.b	0
  24  0004 00            	dc.b	0
  25  0005 00            	dc.b	0
  26  0006 00            	dc.b	0
  27  0007 00            	dc.b	0
  28  0008 00            	dc.b	0
  29  0009 00            	dc.b	0
  30  000a 00            	dc.b	0
  31  000b 00            	dc.b	0
  32  000c 00            	dc.b	0
  33  000d 00            	dc.b	0
  34  000e 00            	dc.b	0
  35  000f 00            	dc.b	0
  36  0010 00            	dc.b	0
  37  0011 00            	dc.b	0
  38  0012 00            	dc.b	0
  39  0013 00            	dc.b	0
  40  0014 00            	dc.b	0
  41  0015 00            	dc.b	0
  42  0016 00            	dc.b	0
  43  0017 00            	dc.b	0
  44  0018 00            	dc.b	0
  45  0019 00            	dc.b	0
  46  001a 00            	dc.b	0
  47  001b 60            	dc.b	96
  48  001c f0            	dc.b	240
  49  001d f8            	dc.b	248
  50  001e f8            	dc.b	248
  51  001f f8            	dc.b	248
  52  0020 ff            	dc.b	255
  53  0021 ff            	dc.b	255
  54  0022 ff            	dc.b	255
  55  0023 ff            	dc.b	255
  56  0024 ff            	dc.b	255
  57  0025 fc            	dc.b	252
  58  0026 f8            	dc.b	248
  59  0027 f8            	dc.b	248
  60  0028 f0            	dc.b	240
  61  0029 60            	dc.b	96
  62  002a 00            	dc.b	0
  63  002b 00            	dc.b	0
  64  002c 00            	dc.b	0
  65  002d 00            	dc.b	0
  66  002e 00            	dc.b	0
  67  002f 00            	dc.b	0
  68  0030 00            	dc.b	0
  69  0031 00            	dc.b	0
  70  0032 00            	dc.b	0
  71  0033 00            	dc.b	0
  72  0034 00            	dc.b	0
  73  0035 00            	dc.b	0
  74  0036 00            	dc.b	0
  75  0037 00            	dc.b	0
  76  0038 00            	dc.b	0
  77  0039 00            	dc.b	0
  78  003a 00            	dc.b	0
  79  003b 00            	dc.b	0
  80  003c 00            	dc.b	0
  81  003d 00            	dc.b	0
  82  003e 00            	dc.b	0
  83  003f 00            	dc.b	0
  84  0040 00            	dc.b	0
  85  0041 00            	dc.b	0
  86  0042 00            	dc.b	0
  87  0043 00            	dc.b	0
  88  0044 00            	dc.b	0
  89  0045 00            	dc.b	0
  90  0046 00            	dc.b	0
  91  0047 00            	dc.b	0
  92  0048 00            	dc.b	0
  93  0049 00            	dc.b	0
  94  004a 00            	dc.b	0
  95  004b 00            	dc.b	0
  96  004c 00            	dc.b	0
  97  004d 00            	dc.b	0
  98  004e 00            	dc.b	0
  99  004f 00            	dc.b	0
 100  0050 00            	dc.b	0
 101  0051 00            	dc.b	0
 102  0052 00            	dc.b	0
 103  0053 00            	dc.b	0
 104  0054 00            	dc.b	0
 105  0055 00            	dc.b	0
 106  0056 00            	dc.b	0
 107  0057 00            	dc.b	0
 108  0058 00            	dc.b	0
 109  0059 00            	dc.b	0
 110  005a 00            	dc.b	0
 111  005b 00            	dc.b	0
 112  005c 00            	dc.b	0
 113  005d 00            	dc.b	0
 114  005e 00            	dc.b	0
 115  005f 00            	dc.b	0
 116  0060 00            	dc.b	0
 117  0061 00            	dc.b	0
 118  0062 00            	dc.b	0
 119  0063 00            	dc.b	0
 120  0064 00            	dc.b	0
 121  0065 00            	dc.b	0
 122  0066 00            	dc.b	0
 123  0067 00            	dc.b	0
 124  0068 00            	dc.b	0
 125  0069 00            	dc.b	0
 126  006a 00            	dc.b	0
 127  006b 00            	dc.b	0
 128  006c 00            	dc.b	0
 129  006d 00            	dc.b	0
 130  006e 00            	dc.b	0
 131  006f 00            	dc.b	0
 132  0070 00            	dc.b	0
 133  0071 00            	dc.b	0
 134  0072 00            	dc.b	0
 135  0073 80            	dc.b	128
 136  0074 c0            	dc.b	192
 137  0075 c0            	dc.b	192
 138  0076 e0            	dc.b	224
 139  0077 e0            	dc.b	224
 140  0078 e0            	dc.b	224
 141  0079 c0            	dc.b	192
 142  007a c0            	dc.b	192
 143  007b c0            	dc.b	192
 144  007c c0            	dc.b	192
 145  007d e0            	dc.b	224
 146  007e e0            	dc.b	224
 147  007f e0            	dc.b	224
 148  0080 00            	dc.b	0
 149  0081 00            	dc.b	0
 150  0082 00            	dc.b	0
 151  0083 fc            	dc.b	252
 152  0084 7e            	dc.b	126
 153  0085 e0            	dc.b	224
 154  0086 00            	dc.b	0
 155  0087 00            	dc.b	0
 156  0088 00            	dc.b	0
 157  0089 80            	dc.b	128
 158  008a c0            	dc.b	192
 159  008b 70            	dc.b	112
 160  008c fc            	dc.b	252
 161  008d 1e            	dc.b	30
 162  008e 00            	dc.b	0
 163  008f 00            	dc.b	0
 164  0090 80            	dc.b	128
 165  0091 c0            	dc.b	192
 166  0092 40            	dc.b	64
 167  0093 60            	dc.b	96
 168  0094 60            	dc.b	96
 169  0095 c0            	dc.b	192
 170  0096 00            	dc.b	0
 171  0097 00            	dc.b	0
 172  0098 e0            	dc.b	224
 173  0099 80            	dc.b	128
 174  009a 40            	dc.b	64
 175  009b 40            	dc.b	64
 176  009c e0            	dc.b	224
 177  009d 81            	dc.b	129
 178  009e e1            	dc.b	225
 179  009f 81            	dc.b	129
 180  00a0 4f            	dc.b	79
 181  00a1 5f            	dc.b	95
 182  00a2 ff            	dc.b	255
 183  00a3 ff            	dc.b	255
 184  00a4 0f            	dc.b	15
 185  00a5 03            	dc.b	3
 186  00a6 01            	dc.b	1
 187  00a7 03            	dc.b	3
 188  00a8 86            	dc.b	134
 189  00a9 78            	dc.b	120
 190  00aa e0            	dc.b	224
 191  00ab 00            	dc.b	0
 192  00ac 00            	dc.b	0
 193  00ad 00            	dc.b	0
 194  00ae 00            	dc.b	0
 195  00af c0            	dc.b	192
 196  00b0 70            	dc.b	112
 197  00b1 18            	dc.b	24
 198  00b2 04            	dc.b	4
 199  00b3 06            	dc.b	6
 200  00b4 02            	dc.b	2
 201  00b5 06            	dc.b	6
 202  00b6 0c            	dc.b	12
 203  00b7 00            	dc.b	0
 204  00b8 fc            	dc.b	252
 205  00b9 8e            	dc.b	142
 206  00ba 40            	dc.b	64
 207  00bb 40            	dc.b	64
 208  00bc e0            	dc.b	224
 209  00bd 00            	dc.b	0
 210  00be 00            	dc.b	0
 211  00bf 00            	dc.b	0
 212  00c0 e0            	dc.b	224
 213  00c1 80            	dc.b	128
 214  00c2 40            	dc.b	64
 215  00c3 40            	dc.b	64
 216  00c4 e0            	dc.b	224
 217  00c5 80            	dc.b	128
 218  00c6 e8            	dc.b	232
 219  00c7 0c            	dc.b	12
 220  00c8 00            	dc.b	0
 221  00c9 00            	dc.b	0
 222  00ca c0            	dc.b	192
 223  00cb 40            	dc.b	64
 224  00cc 40            	dc.b	64
 225  00cd 20            	dc.b	32
 226  00ce 60            	dc.b	96
 227  00cf 00            	dc.b	0
 228  00d0 40            	dc.b	64
 229  00d1 40            	dc.b	64
 230  00d2 40            	dc.b	64
 231  00d3 fc            	dc.b	252
 232  00d4 68            	dc.b	104
 233  00d5 60            	dc.b	96
 234  00d6 20            	dc.b	32
 235  00d7 00            	dc.b	0
 236  00d8 00            	dc.b	0
 237  00d9 00            	dc.b	0
 238  00da e0            	dc.b	224
 239  00db 80            	dc.b	128
 240  00dc c0            	dc.b	192
 241  00dd 40            	dc.b	64
 242  00de e0            	dc.b	224
 243  00df 80            	dc.b	128
 244  00e0 c0            	dc.b	192
 245  00e1 40            	dc.b	64
 246  00e2 e0            	dc.b	224
 247  00e3 00            	dc.b	0
 248  00e4 00            	dc.b	0
 249  00e5 00            	dc.b	0
 250  00e6 c0            	dc.b	192
 251  00e7 40            	dc.b	64
 252  00e8 60            	dc.b	96
 253  00e9 20            	dc.b	32
 254  00ea e0            	dc.b	224
 255  00eb 00            	dc.b	0
 256  00ec 00            	dc.b	0
 257  00ed 00            	dc.b	0
 258  00ee 80            	dc.b	128
 259  00ef 40            	dc.b	64
 260  00f0 40            	dc.b	64
 261  00f1 20            	dc.b	32
 262  00f2 7e            	dc.b	126
 263  00f3 7f            	dc.b	127
 264  00f4 ff            	dc.b	255
 265  00f5 ff            	dc.b	255
 266  00f6 ff            	dc.b	255
 267  00f7 ff            	dc.b	255
 268  00f8 ff            	dc.b	255
 269  00f9 ff            	dc.b	255
 270  00fa ff            	dc.b	255
 271  00fb ff            	dc.b	255
 272  00fc ff            	dc.b	255
 273  00fd ff            	dc.b	255
 274  00fe ff            	dc.b	255
 275  00ff ff            	dc.b	255
 276  0100 00            	dc.b	0
 277  0101 60            	dc.b	96
 278  0102 7f            	dc.b	127
 279  0103 01            	dc.b	1
 280  0104 00            	dc.b	0
 281  0105 07            	dc.b	7
 282  0106 7e            	dc.b	126
 283  0107 1e            	dc.b	30
 284  0108 07            	dc.b	7
 285  0109 01            	dc.b	1
 286  010a 00            	dc.b	0
 287  010b 7e            	dc.b	126
 288  010c 07            	dc.b	7
 289  010d 00            	dc.b	0
 290  010e 3c            	dc.b	60
 291  010f 67            	dc.b	103
 292  0110 43            	dc.b	67
 293  0111 42            	dc.b	66
 294  0112 62            	dc.b	98
 295  0113 32            	dc.b	50
 296  0114 1b            	dc.b	27
 297  0115 01            	dc.b	1
 298  0116 60            	dc.b	96
 299  0117 7f            	dc.b	127
 300  0118 03            	dc.b	3
 301  0119 00            	dc.b	0
 302  011a 00            	dc.b	0
 303  011b 00            	dc.b	0
 304  011c 60            	dc.b	96
 305  011d 7f            	dc.b	127
 306  011e 03            	dc.b	3
 307  011f 00            	dc.b	0
 308  0120 00            	dc.b	0
 309  0121 00            	dc.b	0
 310  0122 00            	dc.b	0
 311  0123 03            	dc.b	3
 312  0124 fe            	dc.b	254
 313  0125 78            	dc.b	120
 314  0126 1c            	dc.b	28
 315  0127 06            	dc.b	6
 316  0128 01            	dc.b	1
 317  0129 00            	dc.b	0
 318  012a 01            	dc.b	1
 319  012b ff            	dc.b	255
 320  012c 00            	dc.b	0
 321  012d 00            	dc.b	0
 322  012e 3f            	dc.b	63
 323  012f 73            	dc.b	115
 324  0130 40            	dc.b	64
 325  0131 40            	dc.b	64
 326  0132 20            	dc.b	32
 327  0133 30            	dc.b	48
 328  0134 18            	dc.b	24
 329  0135 00            	dc.b	0
 330  0136 60            	dc.b	96
 331  0137 7f            	dc.b	127
 332  0138 03            	dc.b	3
 333  0139 00            	dc.b	0
 334  013a 00            	dc.b	0
 335  013b 7e            	dc.b	126
 336  013c 07            	dc.b	7
 337  013d 00            	dc.b	0
 338  013e 60            	dc.b	96
 339  013f 7f            	dc.b	127
 340  0140 03            	dc.b	3
 341  0141 00            	dc.b	0
 342  0142 00            	dc.b	0
 343  0143 00            	dc.b	0
 344  0144 60            	dc.b	96
 345  0145 7f            	dc.b	127
 346  0146 03            	dc.b	3
 347  0147 00            	dc.b	0
 348  0148 00            	dc.b	0
 349  0149 33            	dc.b	51
 350  014a 47            	dc.b	71
 351  014b 46            	dc.b	70
 352  014c 62            	dc.b	98
 353  014d 31            	dc.b	49
 354  014e 1f            	dc.b	31
 355  014f 06            	dc.b	6
 356  0150 00            	dc.b	0
 357  0151 20            	dc.b	32
 358  0152 7f            	dc.b	127
 359  0153 33            	dc.b	51
 360  0154 30            	dc.b	48
 361  0155 10            	dc.b	16
 362  0156 08            	dc.b	8
 363  0157 00            	dc.b	0
 364  0158 60            	dc.b	96
 365  0159 7f            	dc.b	127
 366  015a 03            	dc.b	3
 367  015b 00            	dc.b	0
 368  015c 40            	dc.b	64
 369  015d 7e            	dc.b	126
 370  015e 07            	dc.b	7
 371  015f 00            	dc.b	0
 372  0160 00            	dc.b	0
 373  0161 7e            	dc.b	126
 374  0162 07            	dc.b	7
 375  0163 00            	dc.b	0
 376  0164 70            	dc.b	112
 377  0165 48            	dc.b	72
 378  0166 24            	dc.b	36
 379  0167 22            	dc.b	34
 380  0168 12            	dc.b	18
 381  0169 7f            	dc.b	127
 382  016a 07            	dc.b	7
 383  016b 00            	dc.b	0
 384  016c 00            	dc.b	0
 385  016d 73            	dc.b	115
 386  016e 47            	dc.b	71
 387  016f 42            	dc.b	66
 388  0170 62            	dc.b	98
 389  0171 31            	dc.b	49
 390  0172 1f            	dc.b	31
 391  0173 06            	dc.b	6
 392  0174 01            	dc.b	1
 393  0175 c3            	dc.b	195
 394  0176 c7            	dc.b	199
 395  0177 f7            	dc.b	247
 396  0178 ff            	dc.b	255
 397  0179 ff            	dc.b	255
 398  017a 7f            	dc.b	127
 399  017b 1f            	dc.b	31
 400  017c 1f            	dc.b	31
 401  017d 0f            	dc.b	15
 402  017e 07            	dc.b	7
 403  017f 07            	dc.b	7
 404  0180 08            	dc.b	8
 405  0181 08            	dc.b	8
 406  0182 08            	dc.b	8
 407  0183 08            	dc.b	8
 408  0184 08            	dc.b	8
 409  0185 08            	dc.b	8
 410  0186 08            	dc.b	8
 411  0187 08            	dc.b	8
 412  0188 10            	dc.b	16
 413  0189 10            	dc.b	16
 414  018a 30            	dc.b	48
 415  018b 20            	dc.b	32
 416  018c 20            	dc.b	32
 417  018d 60            	dc.b	96
 418  018e 40            	dc.b	64
 419  018f 40            	dc.b	64
 420  0190 40            	dc.b	64
 421  0191 40            	dc.b	64
 422  0192 40            	dc.b	64
 423  0193 c0            	dc.b	192
 424  0194 80            	dc.b	128
 425  0195 80            	dc.b	128
 426  0196 80            	dc.b	128
 427  0197 80            	dc.b	128
 428  0198 80            	dc.b	128
 429  0199 80            	dc.b	128
 430  019a 80            	dc.b	128
 431  019b 80            	dc.b	128
 432  019c 80            	dc.b	128
 433  019d 80            	dc.b	128
 434  019e 80            	dc.b	128
 435  019f 80            	dc.b	128
 436  01a0 83            	dc.b	131
 437  01a1 c4            	dc.b	196
 438  01a2 c6            	dc.b	198
 439  01a3 e3            	dc.b	227
 440  01a4 61            	dc.b	97
 441  01a5 60            	dc.b	96
 442  01a6 60            	dc.b	96
 443  01a7 70            	dc.b	112
 444  01a8 30            	dc.b	48
 445  01a9 38            	dc.b	56
 446  01aa 3e            	dc.b	62
 447  01ab 33            	dc.b	51
 448  01ac 30            	dc.b	48
 449  01ad 30            	dc.b	48
 450  01ae 30            	dc.b	48
 451  01af 38            	dc.b	56
 452  01b0 38            	dc.b	56
 453  01b1 38            	dc.b	56
 454  01b2 38            	dc.b	56
 455  01b3 38            	dc.b	56
 456  01b4 38            	dc.b	56
 457  01b5 38            	dc.b	56
 458  01b6 38            	dc.b	56
 459  01b7 38            	dc.b	56
 460  01b8 38            	dc.b	56
 461  01b9 38            	dc.b	56
 462  01ba 38            	dc.b	56
 463  01bb 38            	dc.b	56
 464  01bc 38            	dc.b	56
 465  01bd 38            	dc.b	56
 466  01be 38            	dc.b	56
 467  01bf 38            	dc.b	56
 468  01c0 38            	dc.b	56
 469  01c1 38            	dc.b	56
 470  01c2 38            	dc.b	56
 471  01c3 30            	dc.b	48
 472  01c4 30            	dc.b	48
 473  01c5 30            	dc.b	48
 474  01c6 20            	dc.b	32
 475  01c7 20            	dc.b	32
 476  01c8 60            	dc.b	96
 477  01c9 40            	dc.b	64
 478  01ca 40            	dc.b	64
 479  01cb 40            	dc.b	64
 480  01cc 40            	dc.b	64
 481  01cd 40            	dc.b	64
 482  01ce 40            	dc.b	64
 483  01cf 40            	dc.b	64
 484  01d0 40            	dc.b	64
 485  01d1 40            	dc.b	64
 486  01d2 40            	dc.b	64
 487  01d3 40            	dc.b	64
 488  01d4 40            	dc.b	64
 489  01d5 40            	dc.b	64
 490  01d6 40            	dc.b	64
 491  01d7 40            	dc.b	64
 492  01d8 60            	dc.b	96
 493  01d9 60            	dc.b	96
 494  01da 70            	dc.b	112
 495  01db 70            	dc.b	112
 496  01dc 70            	dc.b	112
 497  01dd 70            	dc.b	112
 498  01de 38            	dc.b	56
 499  01df 3c            	dc.b	60
 500  01e0 3c            	dc.b	60
 501  01e1 3c            	dc.b	60
 502  01e2 3c            	dc.b	60
 503  01e3 3c            	dc.b	60
 504  01e4 3c            	dc.b	60
 505  01e5 3c            	dc.b	60
 506  01e6 3c            	dc.b	60
 507  01e7 3c            	dc.b	60
 508  01e8 3c            	dc.b	60
 509  01e9 3c            	dc.b	60
 510  01ea 3c            	dc.b	60
 511  01eb 3c            	dc.b	60
 512  01ec 3e            	dc.b	62
 513  01ed 3e            	dc.b	62
 514  01ee 3e            	dc.b	62
 515  01ef 3e            	dc.b	62
 516  01f0 3e            	dc.b	62
 517  01f1 3e            	dc.b	62
 518  01f2 3e            	dc.b	62
 519  01f3 1e            	dc.b	30
 520  01f4 0f            	dc.b	15
 521  01f5 0f            	dc.b	15
 522  01f6 03            	dc.b	3
 523  01f7 03            	dc.b	3
 524  01f8 01            	dc.b	1
 525  01f9 00            	dc.b	0
 526  01fa 00            	dc.b	0
 527  01fb 00            	dc.b	0
 528  01fc 00            	dc.b	0
 529  01fd 00            	dc.b	0
 530  01fe 00            	dc.b	0
 531  01ff 00            	dc.b	0
 590                     ; 62 unsigned char IsButtonB(){
 592                     	switch	.text
 593  0000               _IsButtonB:
 597                     ; 63 	return GPIO_ReadInputPin(GPIOD,GPIO_PIN_0)&GPIO_PIN_0;
 599  0000 4b01          	push	#1
 600  0002 ae500f        	ldw	x,#20495
 601  0005 cd0000        	call	_GPIO_ReadInputPin
 603  0008 5b01          	addw	sp,#1
 604  000a a401          	and	a,#1
 607  000c 81            	ret	
 635                     ; 65 void Startup_CLOCK_Config(){
 636                     	switch	.text
 637  000d               _Startup_CLOCK_Config:
 641                     ; 66 	 CLK_DeInit();
 643  000d cd0000        	call	_CLK_DeInit
 645                     ; 67 	 CLK_HSECmd(ENABLE);
 647  0010 a601          	ld	a,#1
 648  0012 cd0000        	call	_CLK_HSECmd
 650                     ; 68 	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV4);
 652  0015 a682          	ld	a,#130
 653  0017 cd0000        	call	_CLK_SYSCLKConfig
 655                     ; 69 	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV4);
 657  001a a610          	ld	a,#16
 659                     ; 70 }
 662  001c cc0000        	jp	_CLK_HSIPrescalerConfig
 689                     ; 71 void CLOCK_Config()  
 689                     ; 72 {  
 690                     	switch	.text
 691  001f               _CLOCK_Config:
 695                     ; 73    CLK_DeInit();
 697  001f cd0000        	call	_CLK_DeInit
 699                     ; 74 	 CLK_HSECmd(ENABLE);
 701  0022 a601          	ld	a,#1
 702  0024 cd0000        	call	_CLK_HSECmd
 704                     ; 75 	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 706  0027 a680          	ld	a,#128
 707  0029 cd0000        	call	_CLK_SYSCLKConfig
 709                     ; 76 	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 711  002c 4f            	clr	a
 713                     ; 77 }  
 716  002d cc0000        	jp	_CLK_HSIPrescalerConfig
 743                     ; 78 void GPIO_init(void){
 744                     	switch	.text
 745  0030               _GPIO_init:
 749                     ; 80 	GPIO_DeInit(GPIOD);
 751  0030 ae500f        	ldw	x,#20495
 752  0033 cd0000        	call	_GPIO_DeInit
 754                     ; 82 	GPIO_Init(GPIOB,GPIO_PIN_1,GPIO_MODE_OUT_OD_HIZ_FAST);
 756  0036 4bb0          	push	#176
 757  0038 4b02          	push	#2
 758  003a ae5005        	ldw	x,#20485
 759  003d cd0000        	call	_GPIO_Init
 761  0040 85            	popw	x
 762                     ; 83 	GPIO_Init(GPIOB,GPIO_PIN_2,GPIO_MODE_OUT_OD_HIZ_FAST);
 764  0041 4bb0          	push	#176
 765  0043 4b04          	push	#4
 766  0045 ae5005        	ldw	x,#20485
 767  0048 cd0000        	call	_GPIO_Init
 769  004b 85            	popw	x
 770                     ; 84 	GPIO_Init(GPIOB,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST);
 772  004c 4bb0          	push	#176
 773  004e 4b08          	push	#8
 774  0050 ae5005        	ldw	x,#20485
 775  0053 cd0000        	call	_GPIO_Init
 777  0056 85            	popw	x
 778                     ; 86 	GPIO_Init(GPIOC,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);		//C5		CMD SCK CHECK
 780  0057 4bf0          	push	#240
 781  0059 4b20          	push	#32
 782  005b ae500a        	ldw	x,#20490
 783  005e cd0000        	call	_GPIO_Init
 785  0061 85            	popw	x
 786                     ; 87 	GPIO_Init(GPIOC,GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_FAST); 	//C6		CMD SI  CHECK
 788  0062 4bf0          	push	#240
 789  0064 4b40          	push	#64
 790  0066 ae500a        	ldw	x,#20490
 791  0069 cd0000        	call	_GPIO_Init
 793  006c 85            	popw	x
 794                     ; 88 	GPIO_Init(GPIOC,GPIO_PIN_7,GPIO_MODE_IN_FL_NO_IT);       	//C7		CMD SO  CHECK
 796  006d 4b00          	push	#0
 797  006f 4b80          	push	#128
 798  0071 ae500a        	ldw	x,#20490
 799  0074 cd0000        	call	_GPIO_Init
 801  0077 85            	popw	x
 802                     ; 89 	GPIO_Init(GPIOC,GPIO_PIN_4,GPIO_MODE_OUT_PP_HIGH_FAST);   //C4		XCS     CHECK
 804  0078 4bf0          	push	#240
 805  007a 4b10          	push	#16
 806  007c ae500a        	ldw	x,#20490
 807  007f cd0000        	call	_GPIO_Init
 809  0082 85            	popw	x
 810                     ; 90 	GPIO_Init(GPIOC,GPIO_PIN_3,GPIO_MODE_OUT_PP_HIGH_FAST);   //C3		XRESET  CHECK
 812  0083 4bf0          	push	#240
 813  0085 4b08          	push	#8
 814  0087 ae500a        	ldw	x,#20490
 815  008a cd0000        	call	_GPIO_Init
 817  008d 85            	popw	x
 818                     ; 91 	GPIO_Init(GPIOC,GPIO_PIN_2,GPIO_MODE_IN_FL_NO_IT);        //C2		DREQ    CHECK
 820  008e 4b00          	push	#0
 821  0090 4b04          	push	#4
 822  0092 ae500a        	ldw	x,#20490
 823  0095 cd0000        	call	_GPIO_Init
 825  0098 85            	popw	x
 826                     ; 92 	GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_PP_HIGH_FAST);   //C1		DATA   	CHECK-ISH 
 828  0099 4bf0          	push	#240
 829  009b 4b02          	push	#2
 830  009d ae500a        	ldw	x,#20490
 831  00a0 cd0000        	call	_GPIO_Init
 833  00a3 85            	popw	x
 834                     ; 93 	GPIO_Init(GPIOE,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST);    //E5	DATA CLK	UNKNOWN
 836  00a4 4bf0          	push	#240
 837  00a6 4b20          	push	#32
 838  00a8 ae5014        	ldw	x,#20500
 839  00ab cd0000        	call	_GPIO_Init
 841  00ae 85            	popw	x
 842                     ; 94 	GPIO_Init(GPIOB,GPIO_PIN_0,GPIO_MODE_OUT_PP_HIGH_FAST);   //B0	BSYNC			UNKNOWN
 844  00af 4bf0          	push	#240
 845  00b1 4b01          	push	#1
 846  00b3 ae5005        	ldw	x,#20485
 847  00b6 cd0000        	call	_GPIO_Init
 849  00b9 85            	popw	x
 850                     ; 96 	GPIO_Init(GPIOD,GPIO_PIN_0,GPIO_MODE_IN_PU_IT);
 852  00ba 4b60          	push	#96
 853  00bc 4b01          	push	#1
 854  00be ae500f        	ldw	x,#20495
 855  00c1 cd0000        	call	_GPIO_Init
 857  00c4 85            	popw	x
 858                     ; 97 	GPIO_Init(GPIOF,GPIO_PIN_ALL,GPIO_MODE_IN_PU_NO_IT);
 860  00c5 4b40          	push	#64
 861  00c7 4bff          	push	#255
 862  00c9 ae5019        	ldw	x,#20505
 863  00cc cd0000        	call	_GPIO_Init
 865  00cf 85            	popw	x
 866                     ; 99 	EXTI_DeInit();
 868  00d0 cd0000        	call	_EXTI_DeInit
 870                     ; 102 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_LOW);
 872  00d3 5f            	clrw	x
 873  00d4 a603          	ld	a,#3
 874  00d6 95            	ld	xh,a
 875  00d7 cd0000        	call	_EXTI_SetExtIntSensitivity
 877                     ; 105 	GPIO_Init(GPIOD,GPIO_PIN_7|GPIO_PIN_2|GPIO_PIN_6,GPIO_MODE_OUT_PP_HIGH_FAST);	//SD GND CLK SI
 879  00da 4bf0          	push	#240
 880  00dc 4bc4          	push	#196
 881  00de ae500f        	ldw	x,#20495
 882  00e1 cd0000        	call	_GPIO_Init
 884  00e4 85            	popw	x
 885                     ; 107 	GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_IN_PU_NO_IT);      											//SD SO 
 887  00e5 4b40          	push	#64
 888  00e7 4b20          	push	#32
 889  00e9 ae500f        	ldw	x,#20495
 890  00ec cd0000        	call	_GPIO_Init
 892  00ef 85            	popw	x
 893                     ; 108 	GPIO_Init(GPIOD,GPIO_PIN_4,GPIO_MODE_OUT_OD_HIZ_FAST);												//SD NC
 895  00f0 4bb0          	push	#176
 896  00f2 4b10          	push	#16
 897  00f4 ae500f        	ldw	x,#20495
 898  00f7 cd0000        	call	_GPIO_Init
 900  00fa 85            	popw	x
 901                     ; 109 	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST);												//SD NC
 903  00fb 4bb0          	push	#176
 904  00fd 4b08          	push	#8
 905  00ff ae500f        	ldw	x,#20495
 906  0102 cd0000        	call	_GPIO_Init
 908  0105 85            	popw	x
 909                     ; 112 	GPIO_Init(GPIOB,GPIO_PIN_4,GPIO_MODE_OUT_PP_HIGH_FAST);		//C5 VS CMD SCK
 911  0106 4bf0          	push	#240
 912  0108 4b10          	push	#16
 913  010a ae5005        	ldw	x,#20485
 914  010d cd0000        	call	_GPIO_Init
 916  0110 85            	popw	x
 917                     ; 113 	GPIO_Init(GPIOB,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_FAST); 	//C6 VS CMD SI
 919  0111 4bf0          	push	#240
 920  0113 4b20          	push	#32
 921  0115 ae5005        	ldw	x,#20485
 922  0118 cd0000        	call	_GPIO_Init
 924  011b 85            	popw	x
 925                     ; 115 }
 928  011c 81            	ret	
 931                     	switch	.data
 932  0000               _led_count:
 933  0000 00            	dc.b	0
 934  0001               _j:
 935  0001 00            	dc.b	0
 936  0002               _k:
 937  0002 00            	dc.b	0
 938  0003               _temp:
 939  0003 00            	dc.b	0
 940  0004               _i:
 941  0004 0000          	dc.w	0
 942  0006               _readlen:
 943  0006 0000          	dc.w	0
 944  0008               _textbuf:
 945  0008 00            	dc.b	0
 946  0009 000000000000  	ds.b	263
 947  0110               _textlen:
 948  0110 0000          	dc.w	0
 949  0112               _textshown_pos0:
 950  0112 0001          	dc.w	1
 951  0114               _textshown_pos1:
 952  0114 0010          	dc.w	16
 976                     ; 129 void led_routine(){
 977                     	switch	.text
 978  011d               _led_routine:
 982                     ; 130 	if(led_count&1)GPIO_WriteHigh(GPIOB,GPIO_PIN_1); else GPIO_WriteLow(GPIOB,GPIO_PIN_1); 
 984  011d 720100000a    	btjf	_led_count,#0,L57
 987  0122 4b02          	push	#2
 988  0124 ae5005        	ldw	x,#20485
 989  0127 cd0000        	call	_GPIO_WriteHigh
 992  012a 2008          	jra	L77
 993  012c               L57:
 996  012c 4b02          	push	#2
 997  012e ae5005        	ldw	x,#20485
 998  0131 cd0000        	call	_GPIO_WriteLow
1000  0134               L77:
1001  0134 84            	pop	a
1002                     ; 131 	if(led_count&2)GPIO_WriteHigh(GPIOB,GPIO_PIN_2); else GPIO_WriteLow(GPIOB,GPIO_PIN_2); 
1004  0135 720300000a    	btjf	_led_count,#1,L101
1007  013a 4b04          	push	#4
1008  013c ae5005        	ldw	x,#20485
1009  013f cd0000        	call	_GPIO_WriteHigh
1012  0142 2008          	jra	L301
1013  0144               L101:
1016  0144 4b04          	push	#4
1017  0146 ae5005        	ldw	x,#20485
1018  0149 cd0000        	call	_GPIO_WriteLow
1020  014c               L301:
1021  014c 84            	pop	a
1022                     ; 132 	if(led_count&4)GPIO_WriteHigh(GPIOB,GPIO_PIN_3); else GPIO_WriteLow(GPIOB,GPIO_PIN_3); 
1024  014d 720500000a    	btjf	_led_count,#2,L501
1027  0152 4b08          	push	#8
1028  0154 ae5005        	ldw	x,#20485
1029  0157 cd0000        	call	_GPIO_WriteHigh
1032  015a 2008          	jra	L701
1033  015c               L501:
1036  015c 4b08          	push	#8
1037  015e ae5005        	ldw	x,#20485
1038  0161 cd0000        	call	_GPIO_WriteLow
1040  0164               L701:
1041  0164 84            	pop	a
1042                     ; 134 }
1045  0165 81            	ret	
1089                     ; 136 volatile void playMP3File(const char*fileName){
1090                     	switch	.text
1091  0166               _playMP3File:
1095                     ; 137 	count=pf_open(fileName); 
1097  0166 cd0000        	call	_pf_open
1099  0169 5f            	clrw	x
1100  016a 97            	ld	xl,a
1101  016b cf032a        	ldw	_count,x
1102                     ; 144 	vs1001_init_io();	
1104  016e cd0000        	call	_vs1001_init_io
1106                     ; 145 	vs1001_reset(HARD_RESET);
1108  0171 a601          	ld	a,#1
1109  0173 cd0000        	call	_vs1001_reset
1111                     ; 146 	pf_read(buf,BYTEPTIME,&readlen);
1113  0176 ae0006        	ldw	x,#_readlen
1114  0179 89            	pushw	x
1115  017a ae0300        	ldw	x,#768
1116  017d 89            	pushw	x
1117  017e ae002a        	ldw	x,#_buf
1118  0181 cd0000        	call	_pf_read
1120  0184 5b04          	addw	sp,#4
1121  0186               L721:
1122                     ; 148 		for(count=0;count<SENDPTIME;count++){
1124  0186 5f            	clrw	x
1125  0187 cf032a        	ldw	_count,x
1126  018a               L531:
1127                     ; 149 				VSC_CS_H();
1129  018a 7218500a      	bset	20490,#4
1130                     ; 151 				dreq_low:	
1133  018e               dreq_low:
1135                     ; 152 							ld a,$0x500B     //if(dreq == 1)
1138  018e c6500b        	ld	a,$0x500B//if(dreq==1)
1140                     ; 153 							and a,#$4		 //goto set dreq hi
1143  0191 a404          	and	a,#$4//gotosetdreqhi
1145                     ; 154 							jrne dreq_hi
1148  0193 2602          	jrne	dreq_hi
1150                     ; 155 							jra dreq_low
1153  0195 20f7          	jra	dreq_low
1155                     ; 156 				dreq_hi:
1158  0197               dreq_hi:
1160                     ; 158 				for (j=0;j<32;j++)
1162  0197 725f0001      	clr	_j
1163  019b               L341:
1164                     ; 161 					temp=*(buf+(count<<5)+j);							
1166  019b ce032a        	ldw	x,_count
1167  019e 58            	sllw	x
1168  019f 58            	sllw	x
1169  01a0 58            	sllw	x
1170  01a1 58            	sllw	x
1171  01a2 58            	sllw	x
1172  01a3 01            	rrwa	x,a
1173  01a4 cb0001        	add	a,_j
1174  01a7 2401          	jrnc	L441
1175  01a9 5c            	incw	x
1176  01aa               L441:
1177  01aa 02            	rlwa	x,a
1178  01ab d6002a        	ld	a,(_buf,x)
1179  01ae c70003        	ld	_temp,a
1180                     ; 163 							ld a,$5005		 //byte sync hi
1183  01b1 c65005        	ld	a,$5005//bytesynchi
1185                     ; 164 							or a,#1
1188  01b4 aa01          	or	a,#1
1190                     ; 165 							ld $5005,a
1193  01b6 c75005        	ld	$5005,a
1195                     ; 166 							ld a,#8        //set k=8
1198  01b9 a608          	ld	a,#8//setk=8
1200                     ; 167 							jra __beginsend
1203  01bb 2000          	jra	__beginsend
1205                     ; 168 					__beginsend:
1208  01bd               __beginsend:
1210                     ; 169 							push a
1213  01bd 88            	push	a
1215                     ; 170 							ld a,$0x5014     //set SCK_L
1218  01be c65014        	ld	a,$0x5014//setSCK_L
1220                     ; 171 							and a,#223
1223  01c1 a4df          	and	a,#223
1225                     ; 172 							ld $0x5014,a
1228  01c3 c75014        	ld	$0x5014,a
1230                     ; 173 							ld a,_temp     //if(temp&0x80)
1233  01c6 c60003        	ld	a,_temp//if(temp&0x80)
1235                     ; 174 							and a,#$80		 //goto set VSD_SI_H
1238  01c9 a480          	and	a,#$80//gotosetVSD_SI_H
1240                     ; 175 							jrne __high 
1243  01cb 2607          	jrne	__high
1245                     ; 176 									ld a,$500a
1248  01cd c6500a        	ld	a,$500a
1250                     ; 177 									and a,#253
1253  01d0 a4fd          	and	a,#253
1255                     ; 178 									ld $500a,a
1259                     ; 179 									jra __jump_out
1262  01d2 2005          	jra	__jump_out
1264                     ; 180 							__high:
1267  01d4               __high:
1269                     ; 181 									ld a,$500a
1272  01d4 c6500a        	ld	a,$500a
1274                     ; 182 									or a,#2
1277  01d7 aa02          	or	a,#2
1279                     ; 183 									ld $500a,a
1283                     ; 184 							__jump_out:
1286  01d9               __jump_out:
1287  01d9 c7500a        	ld	$500a,a
1289                     ; 186 							ld a,$0x5014    //set SCK_H
1292  01dc c65014        	ld	a,$0x5014//setSCK_H
1294                     ; 187 							or a,#32
1297  01df aa20          	or	a,#32
1299                     ; 188 							ld $0x5014,a
1302  01e1 c75014        	ld	$0x5014,a
1304                     ; 189 							ld a,$5005	  //set BSYCN_L
1307  01e4 c65005        	ld	a,$5005//setBSYCN_L
1309                     ; 190 							and a,#254
1312  01e7 a4fe          	and	a,#254
1314                     ; 191 							ld $5005,a
1317  01e9 c75005        	ld	$5005,a
1319                     ; 193 							sll _temp     //temp<<1
1323                     ; 194 							pop a
1326  01ec 84            	pop	a
1327  01ed 72580003      	sll	_temp//temp<<1
1329                     ; 195 							dec a
1332  01f1 4a            	dec	a
1334                     ; 196 							jrne __beginsend
1337  01f2 26c9          	jrne	__beginsend
1339                     ; 158 				for (j=0;j<32;j++)
1341  01f4 725c0001      	inc	_j
1344  01f8 c60001        	ld	a,_j
1345  01fb a120          	cp	a,#32
1346  01fd 259c          	jrult	L341
1347                     ; 148 		for(count=0;count<SENDPTIME;count++){
1349  01ff ce032a        	ldw	x,_count
1350  0202 5c            	incw	x
1351  0203 cf032a        	ldw	_count,x
1354  0206 a30018        	cpw	x,#24
1355  0209 2403cc018a    	jrult	L531
1356                     ; 201 		pf_read(buf,BYTEPTIME,&readlen);
1358  020e ae0006        	ldw	x,#_readlen
1359  0211 89            	pushw	x
1360  0212 ae0300        	ldw	x,#768
1361  0215 89            	pushw	x
1362  0216 ae002a        	ldw	x,#_buf
1363  0219 cd0000        	call	_pf_read
1365  021c 5b04          	addw	sp,#4
1366                     ; 202 	}while(readlen!=0);
1368  021e ce0006        	ldw	x,_readlen
1369  0221 2703cc0186    	jrne	L721
1370                     ; 203 	vs1001_reset(HARD_RESET);
1372  0226 a601          	ld	a,#1
1374                     ; 205 }
1377  0228 cc0000        	jp	_vs1001_reset
1404                     ; 206 void TIM1_init(){
1405                     	switch	.text
1406  022b               _TIM1_init:
1410                     ; 207 	TIM1_DeInit();
1412  022b cd0000        	call	_TIM1_DeInit
1414                     ; 208 	TIM1_TimeBaseInit(0x1f3f,TIM1_COUNTERMODE_DOWN,500,0);
1416  022e 4b00          	push	#0
1417  0230 ae01f4        	ldw	x,#500
1418  0233 89            	pushw	x
1419  0234 4b10          	push	#16
1420  0236 ae1f3f        	ldw	x,#7999
1421  0239 cd0000        	call	_TIM1_TimeBaseInit
1423  023c 5b04          	addw	sp,#4
1424                     ; 209 	TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
1426  023e ae0001        	ldw	x,#1
1427  0241 a601          	ld	a,#1
1428  0243 95            	ld	xh,a
1429  0244 cd0000        	call	_TIM1_ITConfig
1431                     ; 210 	TIM1_Cmd(ENABLE); 
1433  0247 a601          	ld	a,#1
1435                     ; 211 }
1438  0249 cc0000        	jp	_TIM1_Cmd
1500                     ; 212 void main(void)
1500                     ; 213 {
1501                     	switch	.text
1502  024c               _main:
1504  024c 88            	push	a
1505       00000001      OFST:	set	1
1508                     ; 215 	sim();
1511  024d 9b            	sim	
1513                     ; 216 	GPIO_init();
1516  024e cd0030        	call	_GPIO_init
1518                     ; 217 	b=pf_mount(&fs);
1520  0251 ae0000        	ldw	x,#_fs
1521  0254 cd0000        	call	_pf_mount
1523  0257 6b01          	ld	(OFST+0,sp),a
1524                     ; 218 	vs1001_init_io();
1526  0259 cd0000        	call	_vs1001_init_io
1528                     ; 219 	CLOCK_Config();
1530  025c cd001f        	call	_CLOCK_Config
1532                     ; 220 	delay_ms(500);
1534  025f ae01f4        	ldw	x,#500
1535  0262 cd0000        	call	_delay_ms
1537                     ; 221 	TIM1_init();
1539  0265 adc4          	call	_TIM1_init
1541                     ; 222 	rim();
1544  0267 9a            	rim	
1546                     ; 223  	OLED_Init();			
1549  0268 cd0000        	call	_OLED_Init
1551                     ; 224 	OLED_Clear(); 	
1553  026b cd0000        	call	_OLED_Clear
1555                     ; 228 	if(b==0)OLED_ShowString(0,0,"DISK_OK",16);
1557  026e 7b01          	ld	a,(OFST+0,sp)
1558  0270 2609          	jrne	L771
1561  0272 4b10          	push	#16
1562  0274 ae0289        	ldw	x,#L102
1563  0277 89            	pushw	x
1564  0278 5f            	clrw	x
1567  0279 2029          	jra	L302
1568  027b               L771:
1569                     ; 229 	else if(b==FR_NOT_READY)OLED_ShowString(0,0,"NOT_READY",16);
1571  027b a102          	cp	a,#2
1572  027d 2607          	jrne	L502
1575  027f 4b10          	push	#16
1576  0281 ae027f        	ldw	x,#L702
1579  0284 201b          	jp	LC001
1580  0286               L502:
1581                     ; 230 	else if(b==FR_DISK_ERR)OLED_ShowString(0,0,"DISK_ERR",16);
1583  0286 a101          	cp	a,#1
1584  0288 2607          	jrne	L312
1587  028a 4b10          	push	#16
1588  028c ae0276        	ldw	x,#L512
1591  028f 2010          	jp	LC001
1592  0291               L312:
1593                     ; 231 	else if(b==FR_NO_FILESYSTEM)OLED_ShowString(0,0,"NO_FILESYSTEM",16);
1595  0291 a106          	cp	a,#6
1596  0293 2607          	jrne	L122
1599  0295 4b10          	push	#16
1600  0297 ae0268        	ldw	x,#L322
1603  029a 2005          	jp	LC001
1604  029c               L122:
1605                     ; 232 	else OLED_ShowString(0,0,"??",16);
1607  029c 4b10          	push	#16
1608  029e ae0265        	ldw	x,#L722
1609  02a1               LC001:
1610  02a1 89            	pushw	x
1611  02a2 5f            	clrw	x
1612  02a3 4f            	clr	a
1614  02a4               L302:
1615  02a4 95            	ld	xh,a
1616  02a5 cd0000        	call	_OLED_ShowString
1617  02a8 5b03          	addw	sp,#3
1618                     ; 233 	b=pf_open("TEST.TXT");
1620  02aa ae025c        	ldw	x,#L132
1621  02ad cd0000        	call	_pf_open
1623  02b0 6b01          	ld	(OFST+0,sp),a
1624                     ; 234 	if(b==FR_DISK_ERR)OLED_ShowString(0,2,"DISK_ERR",16);
1626  02b2 a101          	cp	a,#1
1627  02b4 2607          	jrne	L332
1630  02b6 4b10          	push	#16
1631  02b8 ae0276        	ldw	x,#L512
1634  02bb 2014          	jp	LC003
1635  02bd               L332:
1636                     ; 235 	else if(b==FR_NOT_ENABLED)OLED_ShowString(0,2,"NOT_ENABLED",16);
1638  02bd a105          	cp	a,#5
1639  02bf 2607          	jrne	L732
1642  02c1 4b10          	push	#16
1643  02c3 ae0250        	ldw	x,#L142
1646  02c6 2009          	jp	LC003
1647  02c8               L732:
1648                     ; 236 	else if(b==FR_NO_FILE)OLED_ShowString(0,2,"DID NOT FIND",16);
1650  02c8 a103          	cp	a,#3
1651  02ca 260b          	jrne	L542
1654  02cc 4b10          	push	#16
1655  02ce ae0243        	ldw	x,#L742
1656  02d1               LC003:
1657  02d1 89            	pushw	x
1658  02d2 ae0002        	ldw	x,#2
1661  02d5 2028          	jp	LC002
1662  02d7               L542:
1663                     ; 237 	else if(b==FR_OK){
1665  02d7 7b01          	ld	a,(OFST+0,sp)
1666  02d9 262b          	jrne	L532
1667                     ; 238 		OLED_ShowString(0,2,"OPENED",16);
1669  02db 4b10          	push	#16
1670  02dd ae023c        	ldw	x,#L552
1671  02e0 89            	pushw	x
1672  02e1 ae0002        	ldw	x,#2
1673  02e4 95            	ld	xh,a
1674  02e5 cd0000        	call	_OLED_ShowString
1676  02e8 5b03          	addw	sp,#3
1677                     ; 239 		pf_read(buf,11,0);
1679  02ea 5f            	clrw	x
1680  02eb 89            	pushw	x
1681  02ec ae000b        	ldw	x,#11
1682  02ef 89            	pushw	x
1683  02f0 ae002a        	ldw	x,#_buf
1684  02f3 cd0000        	call	_pf_read
1686  02f6 5b04          	addw	sp,#4
1687                     ; 240 		OLED_ShowString(0,0,buf,16);
1689  02f8 4b10          	push	#16
1690  02fa ae002a        	ldw	x,#_buf
1691  02fd 89            	pushw	x
1692  02fe 5f            	clrw	x
1694  02ff               LC002:
1695  02ff 4f            	clr	a
1696  0300 95            	ld	xh,a
1697  0301 cd0000        	call	_OLED_ShowString
1698  0304 5b03          	addw	sp,#3
1699  0306               L532:
1700                     ; 242 	a=pf_open("LETTER.TXT");
1702  0306 ae0231        	ldw	x,#L752
1703  0309 cd0000        	call	_pf_open
1705  030c 6b01          	ld	(OFST+0,sp),a
1706                     ; 244 	if(a==FR_DISK_ERR)OLED_ShowString(0,2,"DISK_ERR",16);
1708  030e a101          	cp	a,#1
1709  0310 2607          	jrne	L162
1712  0312 4b10          	push	#16
1713  0314 ae0276        	ldw	x,#L512
1716  0317 2014          	jp	LC004
1717  0319               L162:
1718                     ; 245 	else if(a==FR_NOT_ENABLED)OLED_ShowString(0,2,"NOT_ENABLED",16);
1720  0319 a105          	cp	a,#5
1721  031b 2607          	jrne	L562
1724  031d 4b10          	push	#16
1725  031f ae0250        	ldw	x,#L142
1728  0322 2009          	jp	LC004
1729  0324               L562:
1730                     ; 246 	else if(a==FR_NO_FILE)OLED_ShowString(0,2,"DID NOT FIND",16);
1732  0324 a103          	cp	a,#3
1733  0326 2612          	jrne	L172
1736  0328 4b10          	push	#16
1737  032a ae0243        	ldw	x,#L742
1739  032d               LC004:
1740  032d 89            	pushw	x
1741  032e ae0002        	ldw	x,#2
1742  0331 4f            	clr	a
1743  0332 95            	ld	xh,a
1744  0333 cd0000        	call	_OLED_ShowString
1745  0336 5b03          	addw	sp,#3
1747  0338 2033          	jra	L362
1748  033a               L172:
1749                     ; 247 	else if(a==FR_OK){
1751  033a 7b01          	ld	a,(OFST+0,sp)
1752  033c 262f          	jrne	L362
1753                     ; 248 		OLED_ShowString(0,2,"OPENED",16);
1755  033e 4b10          	push	#16
1756  0340 ae023c        	ldw	x,#L552
1757  0343 89            	pushw	x
1758  0344 ae0002        	ldw	x,#2
1759  0347 95            	ld	xh,a
1760  0348 cd0000        	call	_OLED_ShowString
1762  034b 5b03          	addw	sp,#3
1763                     ; 249 		pf_read(textbuf,fs.fsize,&textlen);
1765  034d ae0110        	ldw	x,#_textlen
1766  0350 89            	pushw	x
1767  0351 ce001c        	ldw	x,_fs+28
1768  0354 89            	pushw	x
1769  0355 ae0008        	ldw	x,#_textbuf
1770  0358 cd0000        	call	_pf_read
1772  035b 5b04          	addw	sp,#4
1773                     ; 250 		for(i=0;i<textlen;i++)
1775  035d 5f            	clrw	x
1777  035e 2005          	jra	L303
1778  0360               L772:
1779                     ; 251 		textbuf[i]--;
1781  0360 724a0008      	dec	(_textbuf,x)
1782                     ; 250 		for(i=0;i<textlen;i++)
1784  0364 5c            	incw	x
1785  0365               L303:
1786  0365 cf0004        	ldw	_i,x
1789  0368 c30110        	cpw	x,_textlen
1790  036b 25f3          	jrult	L772
1791  036d               L362:
1792                     ; 253 	delay_ms(500);
1794  036d ae01f4        	ldw	x,#500
1795  0370 cd0000        	call	_delay_ms
1797                     ; 254 	OLED_Clear();
1799  0373 cd0000        	call	_OLED_Clear
1801                     ; 259 	OLED_DrawBMP(0,0,127,7,BMP1);
1803  0376 ae0000        	ldw	x,#_BMP1
1804  0379 89            	pushw	x
1805  037a 4b07          	push	#7
1806  037c 4b7f          	push	#127
1807  037e 5f            	clrw	x
1808  037f 4f            	clr	a
1809  0380 95            	ld	xh,a
1810  0381 cd0000        	call	_OLED_DrawBMP
1812  0384 5b04          	addw	sp,#4
1813  0386               L703:
1814                     ; 262 		if(GPIO_ReadInputPin(GPIOF,GPIO_PIN_4)==1)
1816  0386 4b10          	push	#16
1817  0388 ae5019        	ldw	x,#20505
1818  038b cd0000        	call	_GPIO_ReadInputPin
1820  038e 5b01          	addw	sp,#1
1821  0390 4a            	dec	a
1822  0391 260b          	jrne	L313
1823                     ; 263 			GPIO_WriteHigh(GPIOB,GPIO_PIN_3);
1825  0393 4b08          	push	#8
1826  0395 ae5005        	ldw	x,#20485
1827  0398 cd0000        	call	_GPIO_WriteHigh
1829  039b 84            	pop	a
1831  039c 20e8          	jra	L703
1832  039e               L313:
1833                     ; 264 		else if(GPIO_ReadInputPin(GPIOF,GPIO_PIN_4)==0){
1835  039e 4b10          	push	#16
1836  03a0 ae5019        	ldw	x,#20505
1837  03a3 cd0000        	call	_GPIO_ReadInputPin
1839  03a6 5b01          	addw	sp,#1
1840  03a8 4d            	tnz	a
1841  03a9 26db          	jrne	L703
1842                     ; 265 			  playMP3File("Hymn.mp3");
1844  03ab ae0228        	ldw	x,#L123
1845  03ae cd0166        	call	_playMP3File
1847                     ; 266 				playMP3File("47.mp3");
1849  03b1 ae0221        	ldw	x,#L323
1850  03b4 cd0166        	call	_playMP3File
1852                     ; 267 				playMP3File("MAGIC.MP3");
1854  03b7 ae0217        	ldw	x,#L523
1855  03ba cd0166        	call	_playMP3File
1857                     ; 268 				playMP3File("MIRACLE.MP3");
1859  03bd ae020b        	ldw	x,#L723
1860  03c0 cd0166        	call	_playMP3File
1862                     ; 269 				playMP3File("MENDSV.MP3");
1864  03c3 ae0200        	ldw	x,#L133
1865  03c6 cd0166        	call	_playMP3File
1867  03c9 20bb          	jra	L703
1902                     ; 285 void assert_failed(u8* file, unsigned long int line)
1902                     ; 286 { 
1903                     	switch	.text
1904  03cb               _assert_failed:
1908  03cb               L153:
1909  03cb 20fe          	jra	L153
2129                     	xdef	_main
2130                     	xdef	_TIM1_init
2131                     	xdef	_playMP3File
2132                     	xdef	_led_routine
2133                     	switch	.bss
2134  0000               _fs:
2135  0000 000000000000  	ds.b	42
2136                     	xdef	_fs
2137                     	xdef	_textshown_pos1
2138                     	xdef	_textshown_pos0
2139                     	xdef	_textlen
2140                     	xdef	_textbuf
2141  002a               _buf:
2142  002a 000000000000  	ds.b	768
2143                     	xdef	_buf
2144  032a               _count:
2145  032a 0000          	ds.b	2
2146                     	xdef	_count
2147                     	xdef	_readlen
2148                     	xdef	_i
2149                     	xdef	_temp
2150                     	xdef	_k
2151                     	xdef	_j
2152                     	xdef	_led_count
2153                     	xdef	_GPIO_init
2154                     	xdef	_CLOCK_Config
2155                     	xdef	_Startup_CLOCK_Config
2156                     	xdef	_IsButtonB
2157                     	xdef	_BMP1
2158                     	xref	_vs1001_reset
2159                     	xref	_vs1001_init_io
2160                     	xref	_pf_read
2161                     	xref	_pf_open
2162                     	xref	_pf_mount
2163                     	xref	_OLED_DrawBMP
2164                     	xref	_OLED_ShowString
2165                     	xref	_OLED_Clear
2166                     	xref	_OLED_Init
2167                     	xref	_delay_ms
2168                     	xdef	_assert_failed
2169                     	xref	_TIM1_ITConfig
2170                     	xref	_TIM1_Cmd
2171                     	xref	_TIM1_TimeBaseInit
2172                     	xref	_TIM1_DeInit
2173                     	xref	_GPIO_ReadInputPin
2174                     	xref	_GPIO_WriteLow
2175                     	xref	_GPIO_WriteHigh
2176                     	xref	_GPIO_Init
2177                     	xref	_GPIO_DeInit
2178                     	xref	_EXTI_SetExtIntSensitivity
2179                     	xref	_EXTI_DeInit
2180                     	xref	_CLK_SYSCLKConfig
2181                     	xref	_CLK_HSIPrescalerConfig
2182                     	xref	_CLK_HSECmd
2183                     	xref	_CLK_DeInit
2184                     	switch	.const
2185  0200               L133:
2186  0200 4d454e445356  	dc.b	"MENDSV.MP3",0
2187  020b               L723:
2188  020b 4d495241434c  	dc.b	"MIRACLE.MP3",0
2189  0217               L523:
2190  0217 4d414749432e  	dc.b	"MAGIC.MP3",0
2191  0221               L323:
2192  0221 34372e6d7033  	dc.b	"47.mp3",0
2193  0228               L123:
2194  0228 48796d6e2e6d  	dc.b	"Hymn.mp3",0
2195  0231               L752:
2196  0231 4c4554544552  	dc.b	"LETTER.TXT",0
2197  023c               L552:
2198  023c 4f50454e4544  	dc.b	"OPENED",0
2199  0243               L742:
2200  0243 444944204e4f  	dc.b	"DID NOT FIND",0
2201  0250               L142:
2202  0250 4e4f545f454e  	dc.b	"NOT_ENABLED",0
2203  025c               L132:
2204  025c 544553542e54  	dc.b	"TEST.TXT",0
2205  0265               L722:
2206  0265 3f3f00        	dc.b	"??",0
2207  0268               L322:
2208  0268 4e4f5f46494c  	dc.b	"NO_FILESYSTEM",0
2209  0276               L512:
2210  0276 4449534b5f45  	dc.b	"DISK_ERR",0
2211  027f               L702:
2212  027f 4e4f545f5245  	dc.b	"NOT_READY",0
2213  0289               L102:
2214  0289 4449534b5f4f  	dc.b	"DISK_OK",0
2234                     	end
