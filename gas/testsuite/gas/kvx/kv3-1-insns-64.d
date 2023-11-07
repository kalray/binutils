#as: -march=kv3-1
#objdump: -d
.*\/kv3-1-insns-64.o:     file format elf64-kvx

Disassembly of section .text:

0000000000000000 <main>:
       0:	c0 ff 00 e4 ff ff ff 87 ff ff ff 00             	abdd \$r0 = \$r0, 2305843009213693951 \(0x1fffffffffffffff\);;

       c:	41 00 01 74                                     	abdd \$r0 = \$r1, \$r1;;

      10:	02 f0 04 64                                     	abdd \$r1 = \$r2, -64 \(0xffffffc0\);;

      14:	02 00 08 e4 00 00 80 07                         	abdd \$r2 = \$r2, -8589934592 \(0xfffffffe00000000\);;

      1c:	c3 30 0d 74                                     	abdhq \$r3 = \$r3, \$r3;;

      20:	c4 37 11 f4 ff ff ff 00                         	abdhq \$r4 = \$r4, 536870911 \(0x1fffffff\);;

      28:	45 21 11 74                                     	abdwp \$r4 = \$r5, \$r5;;

      2c:	c6 2f 15 f4 ff ff ff 00                         	abdwp \$r5 = \$r6, 536870911 \(0x1fffffff\).@;;

      34:	c6 11 19 74                                     	abdw \$r6 = \$r6, \$r7;;

      38:	07 f0 1c 74                                     	abdw \$r7 = \$r7, -64 \(0xffffffc0\);;

      3c:	08 00 20 f4 00 00 80 07                         	abdw \$r8 = \$r8, -8589934592 \(0xfffffffe00000000\);;

      44:	09 00 20 64                                     	absd \$r8 = \$r9;;

      48:	09 30 25 f4 00 00 00 00                         	abshq \$r9 = \$r9;;

      50:	0a 20 29 f4 00 00 00 00                         	abswp \$r10 = \$r10;;

      58:	0b 00 28 74                                     	absw \$r10 = \$r11;;

      5c:	cb e2 03 3f                                     	acswapd \$r11\[\$r11\] = \$r0r1;;

      60:	cc ff 01 bf ff ff ff 9f ff ff ff 18             	acswapd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r12\] = \$r0r1;;

      6c:	0d 03 0b bf 00 00 00 98 00 00 80 1f             	acswapd.dnez \$r12\? -1125899906842624 \(0xfffc000000000000\)\[\$r13\] = \$r2r3;;

      78:	4e 13 0b bf 00 00 80 1f                         	acswapd.deqz \$r13\? -8388608 \(0xff800000\)\[\$r14\] = \$r2r3;;

      80:	8f 23 13 3f                                     	acswapd.dltz \$r14\? \[\$r15\] = \$r4r5;;

      84:	0f f0 11 3f                                     	acswapd -64 \(0xffffffc0\)\[\$r15\] = \$r4r5;;

      88:	10 00 19 bf 00 00 80 1f                         	acswapd -8589934592 \(0xfffffffe00000000\)\[\$r16\] = \$r6r7;;

      90:	10 f4 1b 3e                                     	acswapw.xs \$r16\[\$r16\] = \$r6r7;;

      94:	d1 ff 21 be ff ff ff 9f ff ff ff 18             	acswapw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r17\] = \$r8r9;;

      a0:	51 34 23 be 00 00 00 98 00 00 80 1f             	acswapw.dgez \$r17\? -1125899906842624 \(0xfffc000000000000\)\[\$r17\] = \$r8r9;;

      ac:	92 44 2b be 00 00 80 1f                         	acswapw.dlez \$r18\? -8388608 \(0xff800000\)\[\$r18\] = \$r10r11;;

      b4:	93 54 2b 3e                                     	acswapw.dgtz \$r18\? \[\$r19\] = \$r10r11;;

      b8:	13 f0 31 3e                                     	acswapw -64 \(0xffffffc0\)\[\$r19\] = \$r12r13;;

      bc:	13 00 31 be 00 00 80 1f                         	acswapw -8589934592 \(0xfffffffe00000000\)\[\$r19\] = \$r12r13;;

      c4:	14 d5 51 7e                                     	addcd.i \$r20 = \$r20, \$r20;;

      c8:	d5 d7 55 fe ff ff ff 00                         	addcd.i \$r21 = \$r21, 536870911 \(0x1fffffff\);;

      d0:	96 c5 55 7e                                     	addcd \$r21 = \$r22, \$r22;;

      d4:	d7 c7 59 fe ff ff ff 00                         	addcd \$r22 = \$r23, 536870911 \(0x1fffffff\);;

      dc:	d7 ff 5c e1 ff ff ff 87 ff ff ff 00             	addd \$r23 = \$r23, 2305843009213693951 \(0x1fffffffffffffff\);;

      e8:	18 06 61 71                                     	addd \$r24 = \$r24, \$r24;;

      ec:	19 f0 64 61                                     	addd \$r25 = \$r25, -64 \(0xffffffc0\);;

      f0:	1a 00 64 e1 00 00 80 07                         	addd \$r25 = \$r26, -8589934592 \(0xfffffffe00000000\);;

      f8:	da 36 69 7c                                     	addhcp.c \$r26 = \$r26, \$r27;;

      fc:	db 37 6d fc ff ff ff 00                         	addhcp.c \$r27 = \$r27, 536870911 \(0x1fffffff\);;

     104:	1c 37 71 71                                     	addhq \$r28 = \$r28, \$r28;;

     108:	dd 3f 75 f1 ff ff ff 00                         	addhq \$r29 = \$r29, 536870911 \(0x1fffffff\).@;;

     110:	de ff 75 ee ff ff ff 87 ff ff ff 00             	addsd \$r29 = \$r30, 2305843009213693951 \(0x1fffffffffffffff\);;

     11c:	de a7 79 7e                                     	addsd \$r30 = \$r30, \$r31;;

     120:	1f f0 7d 6e                                     	addsd \$r31 = \$r31, -64 \(0xffffffc0\);;

     124:	20 00 81 ee 00 00 80 07                         	addsd \$r32 = \$r32, -8589934592 \(0xfffffffe00000000\);;

     12c:	61 f8 81 7e                                     	addshq \$r32 = \$r33, \$r33;;

     130:	e2 f7 85 fe ff ff ff 00                         	addshq \$r33 = \$r34, 536870911 \(0x1fffffff\);;

     138:	e2 e8 89 7e                                     	addswp \$r34 = \$r34, \$r35;;

     13c:	e3 ef 8d fe ff ff ff 00                         	addswp \$r35 = \$r35, 536870911 \(0x1fffffff\).@;;

     144:	24 b9 91 7e                                     	addsw \$r36 = \$r36, \$r36;;

     148:	e5 b7 95 fe ff ff ff 00                         	addsw \$r37 = \$r37, 536870911 \(0x1fffffff\);;

     150:	a6 49 95 7a                                     	adduwd \$r37 = \$r38, \$r38;;

     154:	e7 47 99 fa ff ff ff 00                         	adduwd \$r38 = \$r39, 536870911 \(0x1fffffff\);;

     15c:	27 2a 9d 7c                                     	addwc.c \$r39 = \$r39, \$r40;;

     160:	e8 2f a1 fc ff ff ff 00                         	addwc.c \$r40 = \$r40, 536870911 \(0x1fffffff\).@;;

     168:	69 4a a5 78                                     	addwd \$r41 = \$r41, \$r41;;

     16c:	ea 47 a9 f8 ff ff ff 00                         	addwd \$r42 = \$r42, 536870911 \(0x1fffffff\);;

     174:	eb 2a a9 71                                     	addwp \$r42 = \$r43, \$r43;;

     178:	ec 2f ad f1 ff ff ff 00                         	addwp \$r43 = \$r44, 536870911 \(0x1fffffff\).@;;

     180:	6c 1b b1 71                                     	addw \$r44 = \$r44, \$r45;;

     184:	2d f0 b4 71                                     	addw \$r45 = \$r45, -64 \(0xffffffc0\);;

     188:	2e 00 b8 f1 00 00 80 07                         	addw \$r46 = \$r46, -8589934592 \(0xfffffffe00000000\);;

     190:	ef 4b b9 76                                     	addx16d \$r46 = \$r47, \$r47;;

     194:	f0 47 bd f6 ff ff ff 00                         	addx16d \$r47 = \$r48, 536870911 \(0x1fffffff\);;

     19c:	70 7c c1 76                                     	addx16hq \$r48 = \$r48, \$r49;;

     1a0:	f1 7f c5 f6 ff ff ff 00                         	addx16hq \$r49 = \$r49, 536870911 \(0x1fffffff\).@;;

     1a8:	b2 8c c9 7e                                     	addx16uwd \$r50 = \$r50, \$r50;;

     1ac:	f3 87 cd fe ff ff ff 00                         	addx16uwd \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     1b4:	34 8d cd 76                                     	addx16wd \$r51 = \$r52, \$r52;;

     1b8:	f5 87 d1 f6 ff ff ff 00                         	addx16wd \$r52 = \$r53, 536870911 \(0x1fffffff\);;

     1c0:	b5 6d d5 76                                     	addx16wp \$r53 = \$r53, \$r54;;

     1c4:	f6 67 d9 f6 ff ff ff 00                         	addx16wp \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     1cc:	f7 5d dd 76                                     	addx16w \$r55 = \$r55, \$r55;;

     1d0:	f8 57 e1 f6 ff ff ff 00                         	addx16w \$r56 = \$r56, 536870911 \(0x1fffffff\);;

     1d8:	79 4e e1 70                                     	addx2d \$r56 = \$r57, \$r57;;

     1dc:	fa 4f e5 f0 ff ff ff 00                         	addx2d \$r57 = \$r58, 536870911 \(0x1fffffff\).@;;

     1e4:	fa 7e e9 70                                     	addx2hq \$r58 = \$r58, \$r59;;

     1e8:	fb 77 ed f0 ff ff ff 00                         	addx2hq \$r59 = \$r59, 536870911 \(0x1fffffff\);;

     1f0:	3c 8f f1 78                                     	addx2uwd \$r60 = \$r60, \$r60;;

     1f4:	fd 87 f5 f8 ff ff ff 00                         	addx2uwd \$r61 = \$r61, 536870911 \(0x1fffffff\);;

     1fc:	be 8f f5 70                                     	addx2wd \$r61 = \$r62, \$r62;;

     200:	ff 87 f9 f0 ff ff ff 00                         	addx2wd \$r62 = \$r63, 536870911 \(0x1fffffff\);;

     208:	3f 60 fd 70                                     	addx2wp \$r63 = \$r63, \$r0;;

     20c:	c0 6f 01 f0 ff ff ff 00                         	addx2wp \$r0 = \$r0, 536870911 \(0x1fffffff\).@;;

     214:	41 50 05 70                                     	addx2w \$r1 = \$r1, \$r1;;

     218:	c2 57 09 f0 ff ff ff 00                         	addx2w \$r2 = \$r2, 536870911 \(0x1fffffff\);;

     220:	c3 40 09 72                                     	addx4d \$r2 = \$r3, \$r3;;

     224:	c4 47 0d f2 ff ff ff 00                         	addx4d \$r3 = \$r4, 536870911 \(0x1fffffff\);;

     22c:	44 71 11 72                                     	addx4hq \$r4 = \$r4, \$r5;;

     230:	c5 7f 15 f2 ff ff ff 00                         	addx4hq \$r5 = \$r5, 536870911 \(0x1fffffff\).@;;

     238:	86 81 19 7a                                     	addx4uwd \$r6 = \$r6, \$r6;;

     23c:	c7 87 1d fa ff ff ff 00                         	addx4uwd \$r7 = \$r7, 536870911 \(0x1fffffff\);;

     244:	08 82 1d 72                                     	addx4wd \$r7 = \$r8, \$r8;;

     248:	c9 87 21 f2 ff ff ff 00                         	addx4wd \$r8 = \$r9, 536870911 \(0x1fffffff\);;

     250:	89 62 25 72                                     	addx4wp \$r9 = \$r9, \$r10;;

     254:	ca 67 29 f2 ff ff ff 00                         	addx4wp \$r10 = \$r10, 536870911 \(0x1fffffff\);;

     25c:	cb 52 2d 72                                     	addx4w \$r11 = \$r11, \$r11;;

     260:	cc 57 31 f2 ff ff ff 00                         	addx4w \$r12 = \$r12, 536870911 \(0x1fffffff\);;

     268:	8d 43 35 74                                     	addx8d \$r13 = \$r13, \$r14;;

     26c:	cf 4f 39 f4 ff ff ff 00                         	addx8d \$r14 = \$r15, 536870911 \(0x1fffffff\).@;;

     274:	10 74 3d 74                                     	addx8hq \$r15 = \$r16, \$r16;;

     278:	d1 77 41 f4 ff ff ff 00                         	addx8hq \$r16 = \$r17, 536870911 \(0x1fffffff\);;

     280:	91 84 45 7c                                     	addx8uwd \$r17 = \$r17, \$r18;;

     284:	d2 87 49 fc ff ff ff 00                         	addx8uwd \$r18 = \$r18, 536870911 \(0x1fffffff\);;

     28c:	d3 84 4d 74                                     	addx8wd \$r19 = \$r19, \$r19;;

     290:	d4 87 51 f4 ff ff ff 00                         	addx8wd \$r20 = \$r20, 536870911 \(0x1fffffff\);;

     298:	55 65 51 74                                     	addx8wp \$r20 = \$r21, \$r21;;

     29c:	d6 6f 55 f4 ff ff ff 00                         	addx8wp \$r21 = \$r22, 536870911 \(0x1fffffff\).@;;

     2a4:	d6 55 59 74                                     	addx8w \$r22 = \$r22, \$r23;;

     2a8:	d7 57 5d f4 ff ff ff 00                         	addx8w \$r23 = \$r23, 536870911 \(0x1fffffff\);;

     2b0:	18 e6 63 2f                                     	aladdd \$r24\[\$r24\] = \$r24;;

     2b4:	d9 ff 65 af ff ff ff 9f ff ff ff 18             	aladdd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r25\] = \$r25;;

     2c0:	5a 66 6b af 00 00 00 98 00 00 80 1f             	aladdd.odd \$r25\? -1125899906842624 \(0xfffc000000000000\)\[\$r26\] = \$r26;;

     2cc:	9b 76 6f af 00 00 80 1f                         	aladdd.even \$r26\? -8388608 \(0xff800000\)\[\$r27\] = \$r27;;

     2d4:	dc 86 73 2f                                     	aladdd.wnez \$r27\? \[\$r28\] = \$r28;;

     2d8:	1c f0 75 2f                                     	aladdd -64 \(0xffffffc0\)\[\$r28\] = \$r29;;

     2dc:	1d 00 75 af 00 00 80 1f                         	aladdd -8589934592 \(0xfffffffe00000000\)\[\$r29\] = \$r29;;

     2e4:	9e f7 7b 2e                                     	aladdw.xs \$r30\[\$r30\] = \$r30;;

     2e8:	df ff 7d ae ff ff ff 9f ff ff ff 18             	aladdw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r31\] = \$r31;;

     2f4:	e0 97 83 ae 00 00 00 98 00 00 80 1f             	aladdw.weqz \$r31\? -1125899906842624 \(0xfffc000000000000\)\[\$r32\] = \$r32;;

     300:	21 a8 87 ae 00 00 80 1f                         	aladdw.wltz \$r32\? -8388608 \(0xff800000\)\[\$r33\] = \$r33;;

     308:	62 b8 8b 2e                                     	aladdw.wgez \$r33\? \[\$r34\] = \$r34;;

     30c:	22 f0 8d 2e                                     	aladdw -64 \(0xffffffc0\)\[\$r34\] = \$r35;;

     310:	23 00 8d ae 00 00 80 1f                         	aladdw -8589934592 \(0xfffffffe00000000\)\[\$r35\] = \$r35;;

     318:	24 e9 93 2b                                     	alclrd \$r36 = \$r36\[\$r36\];;

     31c:	65 c9 97 ab 00 00 00 98 00 00 80 1f             	alclrd.wlez \$r37\? \$r37 = -1125899906842624 \(0xfffc000000000000\)\[\$r37\];;

     328:	a6 d9 9b ab 00 00 80 1f                         	alclrd.wgtz \$r38\? \$r38 = -8388608 \(0xff800000\)\[\$r38\];;

     330:	e7 09 9f 2b                                     	alclrd.dnez \$r39\? \$r39 = \[\$r39\];;

     334:	e8 ff a1 ab ff ff ff 9f ff ff ff 18             	alclrd \$r40 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r40\];;

     340:	29 f0 a1 2b                                     	alclrd \$r40 = -64 \(0xffffffc0\)\[\$r41\];;

     344:	29 00 a5 ab 00 00 80 1f                         	alclrd \$r41 = -8589934592 \(0xfffffffe00000000\)\[\$r41\];;

     34c:	aa fa ab 2a                                     	alclrw.xs \$r42 = \$r42\[\$r42\];;

     350:	eb 1a af aa 00 00 00 98 00 00 80 1f             	alclrw.deqz \$r43\? \$r43 = -1125899906842624 \(0xfffc000000000000\)\[\$r43\];;

     35c:	2c 2b b3 aa 00 00 80 1f                         	alclrw.dltz \$r44\? \$r44 = -8388608 \(0xff800000\)\[\$r44\];;

     364:	6d 3b b7 2a                                     	alclrw.dgez \$r45\? \$r45 = \[\$r45\];;

     368:	ee ff b9 aa ff ff ff 9f ff ff ff 18             	alclrw \$r46 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r46\];;

     374:	2f f0 b9 2a                                     	alclrw \$r46 = -64 \(0xffffffc0\)\[\$r47\];;

     378:	2f 00 bd aa 00 00 80 1f                         	alclrw \$r47 = -8589934592 \(0xfffffffe00000000\)\[\$r47\];;

     380:	07 10 08 00                                     	aligno \$r0r1r2r3 = \$a0, \$a1, 7 \(0x7\);;

     384:	70 10 18 00                                     	aligno \$r4r5r6r7 = \$a0, \$a1, \$r48;;

     388:	07 10 2c 00                                     	aligno \$r8r9r10r11 = \$a1, \$a0, 7 \(0x7\);;

     38c:	f0 30 3c 00                                     	aligno \$r12r13r14r15 = \$a3, \$a2, \$r48;;

     390:	87 20 00 01                                     	alignv \$a0 = \$a2, \$a3, 7 \(0x7\);;

     394:	f0 20 00 01                                     	alignv \$a0 = \$a2, \$a3, \$r48;;

     398:	07 51 00 01                                     	alignv \$a0 = \$a5, \$a4, 7 \(0x7\);;

     39c:	71 51 04 01                                     	alignv \$a1 = \$a5, \$a4, \$r49;;

     3a0:	f1 ff c4 e8 ff ff ff 87 ff ff ff 00             	andd \$r49 = \$r49, 2305843009213693951 \(0x1fffffffffffffff\);;

     3ac:	b2 0c c9 78                                     	andd \$r50 = \$r50, \$r50;;

     3b0:	33 f0 cc 68                                     	andd \$r51 = \$r51, -64 \(0xffffffc0\);;

     3b4:	34 00 cc e8 00 00 80 07                         	andd \$r51 = \$r52, -8589934592 \(0xfffffffe00000000\);;

     3bc:	f4 ff d0 ee ff ff ff 87 ff ff ff 00             	andnd \$r52 = \$r52, 2305843009213693951 \(0x1fffffffffffffff\);;

     3c8:	75 0d d5 7e                                     	andnd \$r53 = \$r53, \$r53;;

     3cc:	36 f0 d8 6e                                     	andnd \$r54 = \$r54, -64 \(0xffffffc0\);;

     3d0:	37 00 d8 ee 00 00 80 07                         	andnd \$r54 = \$r55, -8589934592 \(0xfffffffe00000000\);;

     3d8:	37 1e dd 7e                                     	andnw \$r55 = \$r55, \$r56;;

     3dc:	38 f0 e0 7e                                     	andnw \$r56 = \$r56, -64 \(0xffffffc0\);;

     3e0:	39 00 e4 fe 00 00 80 07                         	andnw \$r57 = \$r57, -8589934592 \(0xfffffffe00000000\);;

     3e8:	ba 1e e5 78                                     	andw \$r57 = \$r58, \$r58;;

     3ec:	3b f0 e8 78                                     	andw \$r58 = \$r59, -64 \(0xffffffc0\);;

     3f0:	3b 00 ec f8 00 00 80 07                         	andw \$r59 = \$r59, -8589934592 \(0xfffffffe00000000\);;

     3f8:	3c 7f f1 78                                     	avghq \$r60 = \$r60, \$r60;;

     3fc:	fd 77 f5 f8 ff ff ff 00                         	avghq \$r61 = \$r61, 536870911 \(0x1fffffff\);;

     404:	be 7f f5 7a                                     	avgrhq \$r61 = \$r62, \$r62;;

     408:	ff 7f f9 fa ff ff ff 00                         	avgrhq \$r62 = \$r63, 536870911 \(0x1fffffff\).@;;

     410:	3f 70 fd 7b                                     	avgruhq \$r63 = \$r63, \$r0;;

     414:	c0 77 01 fb ff ff ff 00                         	avgruhq \$r0 = \$r0, 536870911 \(0x1fffffff\);;

     41c:	41 60 05 7b                                     	avgruwp \$r1 = \$r1, \$r1;;

     420:	c2 6f 09 fb ff ff ff 00                         	avgruwp \$r2 = \$r2, 536870911 \(0x1fffffff\).@;;

     428:	c3 50 09 7b                                     	avgruw \$r2 = \$r3, \$r3;;

     42c:	c4 57 0d fb ff ff ff 00                         	avgruw \$r3 = \$r4, 536870911 \(0x1fffffff\);;

     434:	44 61 11 7a                                     	avgrwp \$r4 = \$r4, \$r5;;

     438:	c5 67 15 fa ff ff ff 00                         	avgrwp \$r5 = \$r5, 536870911 \(0x1fffffff\);;

     440:	86 51 19 7a                                     	avgrw \$r6 = \$r6, \$r6;;

     444:	c7 57 1d fa ff ff ff 00                         	avgrw \$r7 = \$r7, 536870911 \(0x1fffffff\);;

     44c:	08 72 1d 79                                     	avguhq \$r7 = \$r8, \$r8;;

     450:	c9 7f 21 f9 ff ff ff 00                         	avguhq \$r8 = \$r9, 536870911 \(0x1fffffff\).@;;

     458:	89 62 25 79                                     	avguwp \$r9 = \$r9, \$r10;;

     45c:	ca 67 29 f9 ff ff ff 00                         	avguwp \$r10 = \$r10, 536870911 \(0x1fffffff\);;

     464:	cb 52 2d 79                                     	avguw \$r11 = \$r11, \$r11;;

     468:	cc 57 31 f9 ff ff ff 00                         	avguw \$r12 = \$r12, 536870911 \(0x1fffffff\);;

     470:	8d 63 35 78                                     	avgwp \$r13 = \$r13, \$r14;;

     474:	cf 6f 39 f8 ff ff ff 00                         	avgwp \$r14 = \$r15, 536870911 \(0x1fffffff\).@;;

     47c:	10 54 3d 78                                     	avgw \$r15 = \$r16, \$r16;;

     480:	d1 57 41 f8 ff ff ff 00                         	avgw \$r16 = \$r17, 536870911 \(0x1fffffff\);;

     488:	00 00 a0 0f                                     	await;;

     48c:	00 00 ac 0f                                     	barrier;;

     490:	00 00 80 1f                                     	call fffffffffe000490 <main\+0xfffffffffe000490>;;

     494:	11 20 46 72                                     	cbsd \$r17 = \$r17;;

     498:	12 40 4a 72                                     	cbswp \$r18 = \$r18;;

     49c:	13 30 4a 72                                     	cbsw \$r18 = \$r19;;

     4a0:	13 00 78 0a                                     	cb.dlez \$r19\? ffffffffffff84a0 <main\+0xffffffffffff84a0>;;

     4a4:	d4 71 4f 6c                                     	clrf \$r19 = \$r20, 7 \(0x7\), 7 \(0x7\);;

     4a8:	14 20 52 71                                     	clsd \$r20 = \$r20;;

     4ac:	15 40 56 71                                     	clswp \$r21 = \$r21;;

     4b0:	16 30 56 71                                     	clsw \$r21 = \$r22;;

     4b4:	16 20 5a 70                                     	clzd \$r22 = \$r22;;

     4b8:	17 40 5e 70                                     	clzwp \$r23 = \$r23;;

     4bc:	18 30 5e 70                                     	clzw \$r23 = \$r24;;

     4c0:	d8 ff 62 e5 ff ff ff 87 ff ff ff 00             	cmoved.dgtz \$r24\? \$r24 = 2305843009213693951 \(0x1fffffffffffffff\);;

     4cc:	59 06 66 76                                     	cmoved.odd \$r25\? \$r25 = \$r25;;

     4d0:	1a f0 6a 67                                     	cmoved.even \$r26\? \$r26 = -64 \(0xffffffc0\);;

     4d4:	1a 00 6e e8 00 00 80 07                         	cmoved.wnez \$r26\? \$r27 = -8589934592 \(0xfffffffe00000000\);;

     4dc:	1b 17 6e 78                                     	cmovehq.nez \$r27\? \$r27 = \$r28;;

     4e0:	dc 17 72 f9 ff ff ff 00                         	cmovehq.eqz \$r28\? \$r28 = 536870911 \(0x1fffffff\);;

     4e8:	5d 17 76 72                                     	cmovewp.ltz \$r29\? \$r29 = \$r29;;

     4ec:	de 1f 7a f3 ff ff ff 00                         	cmovewp.gez \$r30\? \$r30 = 536870911 \(0x1fffffff\).@;;

     4f4:	de ff 3c cb ff ff ff 97 ff ff ff 10             	cmuldt \$r14r15 = \$r30, 2305843009213693951 \(0x1fffffffffffffff\);;

     500:	df 17 3c 5b                                     	cmuldt \$r14r15 = \$r31, \$r31;;

     504:	1f f0 44 4b                                     	cmuldt \$r16r17 = \$r31, -64 \(0xffffffc0\);;

     508:	20 00 44 cb 00 00 80 17                         	cmuldt \$r16r17 = \$r32, -8589934592 \(0xfffffffe00000000\);;

     510:	20 18 4c 5f                                     	cmulghxdt \$r18r19 = \$r32, \$r32;;

     514:	61 18 4c 5d                                     	cmulglxdt \$r18r19 = \$r33, \$r33;;

     518:	a1 18 54 5e                                     	cmulgmxdt \$r20r21 = \$r33, \$r34;;

     51c:	a2 18 54 5c                                     	cmulxdt \$r20r21 = \$r34, \$r34;;

     520:	e3 ff 8d e0 ff ff ff 87 ff ff ff 00             	compd.ne \$r35 = \$r35, 2305843009213693951 \(0x1fffffffffffffff\);;

     52c:	24 a9 8d 71                                     	compd.eq \$r35 = \$r36, \$r36;;

     530:	25 f0 91 62                                     	compd.lt \$r36 = \$r37, -64 \(0xffffffc0\);;

     534:	25 00 95 e3 00 00 80 07                         	compd.ge \$r37 = \$r37, -8589934592 \(0xfffffffe00000000\);;

     53c:	a6 f9 99 74                                     	compnhq.le \$r38 = \$r38, \$r38;;

     540:	e7 f7 9d f5 ff ff ff 00                         	compnhq.gt \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     548:	28 ea 9d 76                                     	compnwp.ltu \$r39 = \$r40, \$r40;;

     54c:	e9 ef a1 f7 ff ff ff 00                         	compnwp.geu \$r40 = \$r41, 536870911 \(0x1fffffff\).@;;

     554:	a9 da a5 78                                     	compuwd.leu \$r41 = \$r41, \$r42;;

     558:	ea d7 a9 f9 ff ff ff 00                         	compuwd.gtu \$r42 = \$r42, 536870911 \(0x1fffffff\);;

     560:	eb ca ad 7a                                     	compwd.all \$r43 = \$r43, \$r43;;

     564:	ec c7 b1 fb ff ff ff 00                         	compwd.nall \$r44 = \$r44, 536870911 \(0x1fffffff\);;

     56c:	6d bb b1 7c                                     	compw.any \$r44 = \$r45, \$r45;;

     570:	ee b7 b5 fd ff ff ff 00                         	compw.none \$r45 = \$r46, 536870911 \(0x1fffffff\);;

     578:	00 00 00 05                                     	convdhv0.rn.sat \$a0_lo = \$a0a1a2a3;;

     57c:	80 51 00 05                                     	convdhv1.ru.satu \$a0_hi = \$a4a5a6a7;;

     580:	00 82 00 06                                     	convwbv0.rd.sat \$a0_x = \$a8a9a10a11;;

     584:	80 d3 00 06                                     	convwbv1.rz.satu \$a0_y = \$a12a13a14a15;;

     588:	00 24 01 06                                     	convwbv2.rhu.sat \$a0_z = \$a16a17a18a19;;

     58c:	80 70 01 06                                     	convwbv3.rn.satu \$a0_t = \$a20a21a22a23;;

     590:	2e 00 b8 6a                                     	copyd \$r46 = \$r46;;

     594:	14 00 45 3e                                     	copyo \$r16r17r18r19 = \$r20r21r22r23;;

     598:	ef fb 58 5f                                     	copyq \$r22r23 = \$r47, \$r47;;

     59c:	30 00 bc 7a                                     	copyw \$r47 = \$r48;;

     5a0:	70 2c c0 59                                     	crcbellw \$r48 = \$r48, \$r49;;

     5a4:	f1 27 c4 d9 ff ff ff 10                         	crcbellw \$r49 = \$r49, 536870911 \(0x1fffffff\);;

     5ac:	b2 2c c8 58                                     	crcbelmw \$r50 = \$r50, \$r50;;

     5b0:	f3 27 cc d8 ff ff ff 10                         	crcbelmw \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     5b8:	34 2d cc 5b                                     	crclellw \$r51 = \$r52, \$r52;;

     5bc:	f5 27 d0 db ff ff ff 10                         	crclellw \$r52 = \$r53, 536870911 \(0x1fffffff\);;

     5c4:	b5 2d d4 5a                                     	crclelmw \$r53 = \$r53, \$r54;;

     5c8:	f6 27 d8 da ff ff ff 10                         	crclelmw \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     5d0:	37 20 de 73                                     	ctzd \$r55 = \$r55;;

     5d4:	38 40 de 73                                     	ctzwp \$r55 = \$r56;;

     5d8:	38 30 e2 73                                     	ctzw \$r56 = \$r56;;

     5dc:	00 00 8d 3f                                     	d1inval;;

     5e0:	f9 ff 1c bc ff ff ff 9f ff ff ff 18             	dinvall 2305843009213693951 \(0x1fffffffffffffff\)\[\$r57\];;

     5ec:	79 9e 1e bc 00 00 00 98 00 00 80 1f             	dinvall.weqz \$r57\? -1125899906842624 \(0xfffc000000000000\)\[\$r57\];;

     5f8:	ba ae 1e bc 00 00 80 1f                         	dinvall.wltz \$r58\? -8388608 \(0xff800000\)\[\$r58\];;

     600:	bb be 1e 3c                                     	dinvall.wgez \$r58\? \[\$r59\];;

     604:	fb ee 1e 3c                                     	dinvall \$r59\[\$r59\];;

     608:	3c f0 1c 3c                                     	dinvall -64 \(0xffffffc0\)\[\$r60\];;

     60c:	3c 00 1c bc 00 00 80 1f                         	dinvall -8589934592 \(0xfffffffe00000000\)\[\$r60\];;

     614:	18 26 58 52                                     	dot2suwdp \$r22r23 = \$r24r25, \$r24r25;;

     618:	fd ff f0 ce ff ff ff 97 ff ff ff 10             	dot2suwd \$r60 = \$r61, 2305843009213693951 \(0x1fffffffffffffff\);;

     624:	bd 2f f4 5e                                     	dot2suwd \$r61 = \$r61, \$r62;;

     628:	3e f0 f8 4e                                     	dot2suwd \$r62 = \$r62, -64 \(0xffffffc0\);;

     62c:	3f 00 fc ce 00 00 80 17                         	dot2suwd \$r63 = \$r63, -8589934592 \(0xfffffffe00000000\);;

     634:	1a 27 68 51                                     	dot2uwdp \$r26r27 = \$r26r27, \$r28r29;;

     638:	c0 ff fc cd ff ff ff 97 ff ff ff 10             	dot2uwd \$r63 = \$r0, 2305843009213693951 \(0x1fffffffffffffff\);;

     644:	40 20 00 5d                                     	dot2uwd \$r0 = \$r0, \$r1;;

     648:	01 f0 04 4d                                     	dot2uwd \$r1 = \$r1, -64 \(0xffffffc0\);;

     64c:	02 00 08 cd 00 00 80 17                         	dot2uwd \$r2 = \$r2, -8589934592 \(0xfffffffe00000000\);;

     654:	9e 27 70 50                                     	dot2wdp \$r28r29 = \$r30r31, \$r30r31;;

     658:	c3 ff 08 cc ff ff ff 97 ff ff ff 10             	dot2wd \$r2 = \$r3, 2305843009213693951 \(0x1fffffffffffffff\);;

     664:	03 21 0c 5c                                     	dot2wd \$r3 = \$r3, \$r4;;

     668:	04 f0 10 4c                                     	dot2wd \$r4 = \$r4, -64 \(0xffffffc0\);;

     66c:	05 00 14 cc 00 00 80 17                         	dot2wd \$r5 = \$r5, -8589934592 \(0xfffffffe00000000\);;

     674:	a0 28 80 53                                     	dot2wzp \$r32r33 = \$r32r33, \$r34r35;;

     678:	c6 ff 14 cf ff ff ff 97 ff ff ff 10             	dot2w \$r5 = \$r6, 2305843009213693951 \(0x1fffffffffffffff\);;

     684:	c6 21 18 5f                                     	dot2w \$r6 = \$r6, \$r7;;

     688:	07 f0 1c 4f                                     	dot2w \$r7 = \$r7, -64 \(0xffffffc0\);;

     68c:	08 00 20 cf 00 00 80 17                         	dot2w \$r8 = \$r8, -8589934592 \(0xfffffffe00000000\);;

     694:	c8 ff 0c bc ff ff ff 9f ff ff ff 18             	dtouchl 2305843009213693951 \(0x1fffffffffffffff\)\[\$r8\];;

     6a0:	49 c2 0e bc 00 00 00 98 00 00 80 1f             	dtouchl.wlez \$r9\? -1125899906842624 \(0xfffc000000000000\)\[\$r9\];;

     6ac:	4a d2 0e bc 00 00 80 1f                         	dtouchl.wgtz \$r9\? -8388608 \(0xff800000\)\[\$r10\];;

     6b4:	8a 02 0e 3c                                     	dtouchl.dnez \$r10\? \[\$r10\];;

     6b8:	cb e2 0e 3c                                     	dtouchl \$r11\[\$r11\];;

     6bc:	0b f0 0c 3c                                     	dtouchl -64 \(0xffffffc0\)\[\$r11\];;

     6c0:	0c 00 0c bc 00 00 80 1f                         	dtouchl -8589934592 \(0xfffffffe00000000\)\[\$r12\];;

     6c8:	cc ff 0d a8 ff ff ff 9f ff ff ff 18             	dzerol 2305843009213693951 \(0x1fffffffffffffff\)\[\$r12\];;

     6d4:	4d 13 0f a8 00 00 00 98 00 00 80 1f             	dzerol.deqz \$r13\? -1125899906842624 \(0xfffc000000000000\)\[\$r13\];;

     6e0:	8e 23 0f a8 00 00 80 1f                         	dzerol.dltz \$r14\? -8388608 \(0xff800000\)\[\$r14\];;

     6e8:	cf 33 0f 28                                     	dzerol.dgez \$r15\? \[\$r15\];;

     6ec:	10 e4 0f 28                                     	dzerol \$r16\[\$r16\];;

     6f0:	10 f0 0d 28                                     	dzerol -64 \(0xffffffc0\)\[\$r16\];;

     6f4:	11 00 0d a8 00 00 80 1f                         	dzerol -8589934592 \(0xfffffffe00000000\)\[\$r17\];;

     6fc:	00 00 00 00                                     	errop;;

     700:	d1 71 47 68                                     	extfs \$r17 = \$r17, 7 \(0x7\), 7 \(0x7\);;

     704:	d2 71 4b 64                                     	extfz \$r18 = \$r18, 7 \(0x7\), 7 \(0x7\);;

     708:	13 20 4b 71                                     	fabsd \$r18 = \$r19;;

     70c:	13 20 4f 77                                     	fabshq \$r19 = \$r19;;

     710:	14 20 53 75                                     	fabswp \$r20 = \$r20;;

     714:	15 20 53 73                                     	fabsw \$r20 = \$r21;;

     718:	24 09 8b 5d                                     	fadddc.c.rn \$r34r35 = \$r36r37, \$r36r37;;

     71c:	26 9a 9b 5c                                     	fadddp.ru.s \$r38r39 = \$r38r39, \$r40r41;;

     720:	aa 2a a3 5c                                     	fadddp.rd \$r40r41 = \$r42r43, \$r42r43;;

     724:	d5 ff 56 c0 ff ff ff 97 ff ff ff 10             	faddd \$r21 = \$r21, 2305843009213693951 \(0x1fffffffffffffff\);;

     730:	16 f0 5a 40                                     	faddd \$r22 = \$r22, -64 \(0xffffffc0\);;

     734:	17 00 5a c0 00 00 80 17                         	faddd \$r22 = \$r23, -8589934592 \(0xfffffffe00000000\);;

     73c:	17 b6 5e 50                                     	faddd.rz.s \$r23 = \$r23, \$r24;;

     740:	d8 ff 62 c2 ff ff ff 97 ff ff ff 10             	faddhq \$r24 = \$r24, 2305843009213693951 \(0x1fffffffffffffff\);;

     74c:	19 f0 66 42                                     	faddhq \$r25 = \$r25, -64 \(0xffffffc0\);;

     750:	1a 00 66 c2 00 00 80 17                         	faddhq \$r25 = \$r26, -8589934592 \(0xfffffffe00000000\);;

     758:	da 46 6a 52                                     	faddhq.rna \$r26 = \$r26, \$r27;;

     75c:	db ff 6e c3 ff ff ff 97 ff ff ff 10             	faddwc.c \$r27 = \$r27, 2305843009213693951 \(0x1fffffffffffffff\);;

     768:	1c f0 72 43                                     	faddwc.c \$r28 = \$r28, -64 \(0xffffffc0\);;

     76c:	1d 00 72 c3 00 00 80 17                         	faddwc.c \$r28 = \$r29, -8589934592 \(0xfffffffe00000000\);;

     774:	9d d7 76 53                                     	faddwc.c.rnz.s \$r29 = \$r29, \$r30;;

     778:	ac 6b b7 59                                     	faddwcp.c.ro \$r44r45 = \$r44r45, \$r46r47;;

     77c:	30 fc bf 58                                     	faddwq.s \$r46r47 = \$r48r49, \$r48r49;;

     780:	de 07 7a 51                                     	faddwp.rn \$r30 = \$r30, \$r31;;

     784:	df ff 7e c1 ff ff ff 97 ff ff ff 10             	faddwp \$r31 = \$r31, 2305843009213693951 \(0x1fffffffffffffff\);;

     790:	20 f0 82 41                                     	faddwp \$r32 = \$r32, -64 \(0xffffffc0\);;

     794:	21 00 82 c1 00 00 80 17                         	faddwp \$r32 = \$r33, -8589934592 \(0xfffffffe00000000\);;

     79c:	a1 98 86 51                                     	faddwp.ru.s \$r33 = \$r33, \$r34;;

     7a0:	32 2d cf 58                                     	faddwq.rd \$r50r51 = \$r50r51, \$r52r53;;

     7a4:	e2 ff 8a cc ff ff ff 97 ff ff ff 10             	faddw \$r34 = \$r34, 2305843009213693951 \(0x1fffffffffffffff\);;

     7b0:	23 f0 8e 4c                                     	faddw \$r35 = \$r35, -64 \(0xffffffc0\);;

     7b4:	24 00 8e cc 00 00 80 17                         	faddw \$r35 = \$r36, -8589934592 \(0xfffffffe00000000\);;

     7bc:	64 b9 92 5c                                     	faddw.rz.s \$r36 = \$r36, \$r37;;

     7c0:	34 50 97 71                                     	fcdivd \$r37 = \$r52r53;;

     7c4:	36 58 97 75                                     	fcdivwp.s \$r37 = \$r54r55;;

     7c8:	36 50 9b 73                                     	fcdivw \$r38 = \$r54r55;;

     7cc:	e6 09 9b 78                                     	fcompd.one \$r38 = \$r38, \$r39;;

     7d0:	e7 07 9f f9 ff ff ff 00                         	fcompd.ueq \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     7d8:	28 1a a3 7a                                     	fcompnhq.oeq \$r40 = \$r40, \$r40;;

     7dc:	e9 17 a7 fb ff ff ff 00                         	fcompnhq.une \$r41 = \$r41, 536870911 \(0x1fffffff\);;

     7e4:	aa 1a a7 74                                     	fcompnwp.olt \$r41 = \$r42, \$r42;;

     7e8:	eb 1f ab f5 ff ff ff 00                         	fcompnwp.uge \$r42 = \$r43, 536870911 \(0x1fffffff\).@;;

     7f0:	2b 0b af 76                                     	fcompw.oge \$r43 = \$r43, \$r44;;

     7f4:	ec 07 b3 f7 ff ff ff 00                         	fcompw.ult \$r44 = \$r44, 536870911 \(0x1fffffff\);;

     7fc:	b8 ce e7 5c                                     	fdot2wdp.rna.s \$r56r57 = \$r56r57, \$r58r59;;

     800:	ed ff b5 cd ff ff ff 97 ff ff ff 10             	fdot2wd \$r45 = \$r45, 2305843009213693951 \(0x1fffffffffffffff\);;

     80c:	2e f0 b5 4d                                     	fdot2wd \$r45 = \$r46, -64 \(0xffffffc0\);;

     810:	2e 00 b9 cd 00 00 80 17                         	fdot2wd \$r46 = \$r46, -8589934592 \(0xfffffffe00000000\);;

     818:	ef 5b bd 5d                                     	fdot2wd.rnz \$r47 = \$r47, \$r47;;

     81c:	3c ef ef 5d                                     	fdot2wzp.ro.s \$r58r59 = \$r60r61, \$r60r61;;

     820:	f0 ff c1 cc ff ff ff 97 ff ff ff 10             	fdot2w \$r48 = \$r48, 2305843009213693951 \(0x1fffffffffffffff\);;

     82c:	31 f0 c1 4c                                     	fdot2w \$r48 = \$r49, -64 \(0xffffffc0\);;

     830:	31 00 c5 cc 00 00 80 17                         	fdot2w \$r49 = \$r49, -8589934592 \(0xfffffffe00000000\);;

     838:	b2 7c c9 5c                                     	fdot2w \$r50 = \$r50, \$r50;;

     83c:	00 00 cd 3f                                     	fence;;

     840:	f3 ff cd c0 ff ff ff 97 ff ff ff 10             	ffmad \$r51 = \$r51, 2305843009213693951 \(0x1fffffffffffffff\);;

     84c:	34 f0 cd 40                                     	ffmad \$r51 = \$r52, -64 \(0xffffffc0\);;

     850:	34 00 d1 c0 00 00 80 17                         	ffmad \$r52 = \$r52, -8589934592 \(0xfffffffe00000000\);;

     858:	75 8d d5 50                                     	ffmad.rn.s \$r53 = \$r53, \$r53;;

     85c:	f6 ff d9 c3 ff ff ff 97 ff ff ff 10             	ffmahq \$r54 = \$r54, 2305843009213693951 \(0x1fffffffffffffff\);;

     868:	37 f0 d9 43                                     	ffmahq \$r54 = \$r55, -64 \(0xffffffc0\);;

     86c:	37 00 dd c3 00 00 80 17                         	ffmahq \$r55 = \$r55, -8589934592 \(0xfffffffe00000000\);;

     874:	38 1e e1 53                                     	ffmahq.ru \$r56 = \$r56, \$r56;;

     878:	f9 ff fb c1 ff ff ff 97 ff ff ff 10             	ffmahwq \$r62r63 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

     884:	39 f0 fb 41                                     	ffmahwq \$r62r63 = \$r57, -64 \(0xffffffc0\);;

     888:	39 00 03 c1 00 00 80 17                         	ffmahwq \$r0r1 = \$r57, -8589934592 \(0xfffffffe00000000\);;

     890:	ba ae 03 51                                     	ffmahwq.rd.s \$r0r1 = \$r58, \$r58;;

     894:	fb ff ea c8 ff ff ff 97 ff ff ff 10             	ffmahw \$r58 = \$r59, 2305843009213693951 \(0x1fffffffffffffff\);;

     8a0:	3b f0 ee 48                                     	ffmahw \$r59 = \$r59, -64 \(0xffffffc0\);;

     8a4:	3c 00 f2 c8 00 00 80 17                         	ffmahw \$r60 = \$r60, -8589934592 \(0xfffffffe00000000\);;

     8ac:	7d 3f f2 58                                     	ffmahw.rz \$r60 = \$r61, \$r61;;

     8b0:	fd ff 0b c0 ff ff ff 97 ff ff ff 10             	ffmawdp \$r2r3 = \$r61, 2305843009213693951 \(0x1fffffffffffffff\);;

     8bc:	3e f0 0b 40                                     	ffmawdp \$r2r3 = \$r62, -64 \(0xffffffc0\);;

     8c0:	3e 00 13 c0 00 00 80 17                         	ffmawdp \$r4r5 = \$r62, -8589934592 \(0xfffffffe00000000\);;

     8c8:	fe cf 13 50                                     	ffmawdp.rna.s \$r4r5 = \$r62, \$r63;;

     8cc:	ff ff fd c1 ff ff ff 97 ff ff ff 10             	ffmawd \$r63 = \$r63, 2305843009213693951 \(0x1fffffffffffffff\);;

     8d8:	00 f0 01 41                                     	ffmawd \$r0 = \$r0, -64 \(0xffffffc0\);;

     8dc:	01 00 01 c1 00 00 80 17                         	ffmawd \$r0 = \$r1, -8589934592 \(0xfffffffe00000000\);;

     8e4:	81 50 05 51                                     	ffmawd.rnz \$r1 = \$r1, \$r2;;

     8e8:	c2 ff 09 c2 ff ff ff 97 ff ff ff 10             	ffmawp \$r2 = \$r2, 2305843009213693951 \(0x1fffffffffffffff\);;

     8f4:	03 f0 0d 42                                     	ffmawp \$r3 = \$r3, -64 \(0xffffffc0\);;

     8f8:	04 00 0d c2 00 00 80 17                         	ffmawp \$r3 = \$r4, -8589934592 \(0xfffffffe00000000\);;

     900:	44 e1 11 52                                     	ffmawp.ro.s \$r4 = \$r4, \$r5;;

     904:	c5 ff 16 c9 ff ff ff 97 ff ff ff 10             	ffmaw \$r5 = \$r5, 2305843009213693951 \(0x1fffffffffffffff\);;

     910:	06 f0 1a 49                                     	ffmaw \$r6 = \$r6, -64 \(0xffffffc0\);;

     914:	07 00 1a c9 00 00 80 17                         	ffmaw \$r6 = \$r7, -8589934592 \(0xfffffffe00000000\);;

     91c:	07 72 1e 59                                     	ffmaw \$r7 = \$r7, \$r8;;

     920:	c8 ff 21 c4 ff ff ff 97 ff ff ff 10             	ffmsd \$r8 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

     92c:	09 f0 25 44                                     	ffmsd \$r9 = \$r9, -64 \(0xffffffc0\);;

     930:	0a 00 25 c4 00 00 80 17                         	ffmsd \$r9 = \$r10, -8589934592 \(0xfffffffe00000000\);;

     938:	ca 82 29 54                                     	ffmsd.rn.s \$r10 = \$r10, \$r11;;

     93c:	cb ff 2d c7 ff ff ff 97 ff ff ff 10             	ffmshq \$r11 = \$r11, 2305843009213693951 \(0x1fffffffffffffff\);;

     948:	0c f0 31 47                                     	ffmshq \$r12 = \$r12, -64 \(0xffffffc0\);;

     94c:	0d 00 35 c7 00 00 80 17                         	ffmshq \$r13 = \$r13, -8589934592 \(0xfffffffe00000000\);;

     954:	ce 13 39 57                                     	ffmshq.ru \$r14 = \$r14, \$r15;;

     958:	cf ff 1b c3 ff ff ff 97 ff ff ff 10             	ffmshwq \$r6r7 = \$r15, 2305843009213693951 \(0x1fffffffffffffff\);;

     964:	10 f0 1b 43                                     	ffmshwq \$r6r7 = \$r16, -64 \(0xffffffc0\);;

     968:	10 00 23 c3 00 00 80 17                         	ffmshwq \$r8r9 = \$r16, -8589934592 \(0xfffffffe00000000\);;

     970:	50 a4 23 53                                     	ffmshwq.rd.s \$r8r9 = \$r16, \$r17;;

     974:	d1 ff 46 ca ff ff ff 97 ff ff ff 10             	ffmshw \$r17 = \$r17, 2305843009213693951 \(0x1fffffffffffffff\);;

     980:	12 f0 4a 4a                                     	ffmshw \$r18 = \$r18, -64 \(0xffffffc0\);;

     984:	13 00 4a ca 00 00 80 17                         	ffmshw \$r18 = \$r19, -8589934592 \(0xfffffffe00000000\);;

     98c:	13 35 4e 5a                                     	ffmshw.rz \$r19 = \$r19, \$r20;;

     990:	d4 ff 2b c2 ff ff ff 97 ff ff ff 10             	ffmswdp \$r10r11 = \$r20, 2305843009213693951 \(0x1fffffffffffffff\);;

     99c:	14 f0 2b 42                                     	ffmswdp \$r10r11 = \$r20, -64 \(0xffffffc0\);;

     9a0:	15 00 33 c2 00 00 80 17                         	ffmswdp \$r12r13 = \$r21, -8589934592 \(0xfffffffe00000000\);;

     9a8:	55 c5 33 52                                     	ffmswdp.rna.s \$r12r13 = \$r21, \$r21;;

     9ac:	d6 ff 59 c5 ff ff ff 97 ff ff ff 10             	ffmswd \$r22 = \$r22, 2305843009213693951 \(0x1fffffffffffffff\);;

     9b8:	17 f0 59 45                                     	ffmswd \$r22 = \$r23, -64 \(0xffffffc0\);;

     9bc:	17 00 5d c5 00 00 80 17                         	ffmswd \$r23 = \$r23, -8589934592 \(0xfffffffe00000000\);;

     9c4:	18 56 61 55                                     	ffmswd.rnz \$r24 = \$r24, \$r24;;

     9c8:	d9 ff 65 c6 ff ff ff 97 ff ff ff 10             	ffmswp \$r25 = \$r25, 2305843009213693951 \(0x1fffffffffffffff\);;

     9d4:	1a f0 65 46                                     	ffmswp \$r25 = \$r26, -64 \(0xffffffc0\);;

     9d8:	1a 00 69 c6 00 00 80 17                         	ffmswp \$r26 = \$r26, -8589934592 \(0xfffffffe00000000\);;

     9e0:	db e6 6d 56                                     	ffmswp.ro.s \$r27 = \$r27, \$r27;;

     9e4:	dc ff 72 cb ff ff ff 97 ff ff ff 10             	ffmsw \$r28 = \$r28, 2305843009213693951 \(0x1fffffffffffffff\);;

     9f0:	1d f0 72 4b                                     	ffmsw \$r28 = \$r29, -64 \(0xffffffc0\);;

     9f4:	1d 00 76 cb 00 00 80 17                         	ffmsw \$r29 = \$r29, -8589934592 \(0xfffffffe00000000\);;

     9fc:	9e 77 7a 5b                                     	ffmsw \$r30 = \$r30, \$r30;;

     a00:	df 81 7f 46                                     	fixedd.rn.s \$r31 = \$r31, 7 \(0x7\);;

     a04:	e0 11 7f 47                                     	fixedud.ru \$r31 = \$r32, 7 \(0x7\);;

     a08:	e0 a1 83 4f                                     	fixeduwp.rd.s \$r32 = \$r32, 7 \(0x7\);;

     a0c:	e1 31 87 4b                                     	fixeduw.rz \$r33 = \$r33, 7 \(0x7\);;

     a10:	e2 c1 87 4e                                     	fixedwp.rna.s \$r33 = \$r34, 7 \(0x7\);;

     a14:	e2 51 8b 4a                                     	fixedw.rnz \$r34 = \$r34, 7 \(0x7\);;

     a18:	e3 e1 8f 44                                     	floatd.ro.s \$r35 = \$r35, 7 \(0x7\);;

     a1c:	e4 71 8f 45                                     	floatud \$r35 = \$r36, 7 \(0x7\);;

     a20:	e4 81 93 4d                                     	floatuwp.rn.s \$r36 = \$r36, 7 \(0x7\);;

     a24:	e5 11 97 49                                     	floatuw.ru \$r37 = \$r37, 7 \(0x7\);;

     a28:	e6 a1 97 4c                                     	floatwp.rd.s \$r37 = \$r38, 7 \(0x7\);;

     a2c:	e6 31 9b 48                                     	floatw.rz \$r38 = \$r38, 7 \(0x7\);;

     a30:	e7 89 9f 71                                     	fmaxd \$r39 = \$r39, \$r39;;

     a34:	28 8a a3 77                                     	fmaxhq \$r40 = \$r40, \$r40;;

     a38:	69 8a a7 75                                     	fmaxwp \$r41 = \$r41, \$r41;;

     a3c:	aa 8a ab 73                                     	fmaxw \$r42 = \$r42, \$r42;;

     a40:	eb 8a af 70                                     	fmind \$r43 = \$r43, \$r43;;

     a44:	2c 8b b3 76                                     	fminhq \$r44 = \$r44, \$r44;;

     a48:	6d 8b b7 74                                     	fminwp \$r45 = \$r45, \$r45;;

     a4c:	ae 8b bb 72                                     	fminw \$r46 = \$r46, \$r46;;

     a50:	ef cb 3f 54                                     	fmm212w.rna.s \$r14r15 = \$r47, \$r47;;

     a54:	2f 5c 3b 54                                     	fmma212w.rnz \$r14r15 = \$r47, \$r48;;

     a58:	41 00 00 03                                     	fmma242hw0 \$a0_lo = \$a0a1, \$a1, \$a1;;

     a5c:	82 10 00 03                                     	fmma242hw1 \$a0_hi = \$a0a1, \$a2, \$a2;;

     a60:	83 20 04 03                                     	fmma242hw2 \$a1_lo = \$a2a3, \$a2, \$a3;;

     a64:	c3 30 04 03                                     	fmma242hw3 \$a1_hi = \$a2a3, \$a3, \$a3;;

     a68:	30 ec 43 56                                     	fmms212w.ro.s \$r16r17 = \$r48, \$r48;;

     a6c:	f1 ff c5 c8 ff ff ff 97 ff ff ff 10             	fmuld \$r49 = \$r49, 2305843009213693951 \(0x1fffffffffffffff\);;

     a78:	32 f0 c5 48                                     	fmuld \$r49 = \$r50, -64 \(0xffffffc0\);;

     a7c:	32 00 c9 c8 00 00 80 17                         	fmuld \$r50 = \$r50, -8589934592 \(0xfffffffe00000000\);;

     a84:	f3 7c cd 58                                     	fmuld \$r51 = \$r51, \$r51;;

     a88:	f4 ff d1 cb ff ff ff 97 ff ff ff 10             	fmulhq \$r52 = \$r52, 2305843009213693951 \(0x1fffffffffffffff\);;

     a94:	35 f0 d1 4b                                     	fmulhq \$r52 = \$r53, -64 \(0xffffffc0\);;

     a98:	35 00 d5 cb 00 00 80 17                         	fmulhq \$r53 = \$r53, -8589934592 \(0xfffffffe00000000\);;

     aa0:	b6 8d d9 5b                                     	fmulhq.rn.s \$r54 = \$r54, \$r54;;

     aa4:	f7 ff 47 c1 ff ff ff 97 ff ff ff 10             	fmulhwq \$r16r17 = \$r55, 2305843009213693951 \(0x1fffffffffffffff\);;

     ab0:	37 f0 4f 41                                     	fmulhwq \$r18r19 = \$r55, -64 \(0xffffffc0\);;

     ab4:	37 00 4f c1 00 00 80 17                         	fmulhwq \$r18r19 = \$r55, -8589934592 \(0xfffffffe00000000\);;

     abc:	38 1e 57 51                                     	fmulhwq.ru \$r20r21 = \$r56, \$r56;;

     ac0:	f9 ff e2 cf ff ff ff 97 ff ff ff 10             	fmulhw \$r56 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

     acc:	39 f0 e6 4f                                     	fmulhw \$r57 = \$r57, -64 \(0xffffffc0\);;

     ad0:	3a 00 ea cf 00 00 80 17                         	fmulhw \$r58 = \$r58, -8589934592 \(0xfffffffe00000000\);;

     ad8:	fb ae ea 5f                                     	fmulhw.rd.s \$r58 = \$r59, \$r59;;

     adc:	fc ff ed cf ff ff ff 97 ff ff ff 10             	fmulwc.c \$r59 = \$r60, 2305843009213693951 \(0x1fffffffffffffff\);;

     ae8:	3c f0 f1 4f                                     	fmulwc.c \$r60 = \$r60, -64 \(0xffffffc0\);;

     aec:	3d 00 f5 cf 00 00 80 17                         	fmulwc.c \$r61 = \$r61, -8589934592 \(0xfffffffe00000000\);;

     af4:	be 3f f5 5f                                     	fmulwc.c.rz \$r61 = \$r62, \$r62;;

     af8:	ff ff f9 ce ff ff ff 97 ff ff ff 10             	fmulwc \$r62 = \$r63, 2305843009213693951 \(0x1fffffffffffffff\);;

     b04:	3f f0 fd 4e                                     	fmulwc \$r63 = \$r63, -64 \(0xffffffc0\);;

     b08:	00 00 01 ce 00 00 80 17                         	fmulwc \$r0 = \$r0, -8589934592 \(0xfffffffe00000000\);;

     b10:	41 c0 01 5e                                     	fmulwc.rna.s \$r0 = \$r1, \$r1;;

     b14:	c1 ff 57 c3 ff ff ff 97 ff ff ff 10             	fmulwdc.c \$r20r21 = \$r1, 2305843009213693951 \(0x1fffffffffffffff\);;

     b20:	02 f0 5f 43                                     	fmulwdc.c \$r22r23 = \$r2, -64 \(0xffffffc0\);;

     b24:	02 00 5f c3 00 00 80 17                         	fmulwdc.c \$r22r23 = \$r2, -8589934592 \(0xfffffffe00000000\);;

     b2c:	c2 50 67 53                                     	fmulwdc.c.rnz \$r24r25 = \$r2, \$r3;;

     b30:	c3 ff 67 c2 ff ff ff 97 ff ff ff 10             	fmulwdc \$r24r25 = \$r3, 2305843009213693951 \(0x1fffffffffffffff\);;

     b3c:	03 f0 6f 42                                     	fmulwdc \$r26r27 = \$r3, -64 \(0xffffffc0\);;

     b40:	04 00 6f c2 00 00 80 17                         	fmulwdc \$r26r27 = \$r4, -8589934592 \(0xfffffffe00000000\);;

     b48:	04 e1 77 52                                     	fmulwdc.ro.s \$r28r29 = \$r4, \$r4;;

     b4c:	c5 ff 77 c0 ff ff ff 97 ff ff ff 10             	fmulwdp \$r28r29 = \$r5, 2305843009213693951 \(0x1fffffffffffffff\);;

     b58:	05 f0 7f 40                                     	fmulwdp \$r30r31 = \$r5, -64 \(0xffffffc0\);;

     b5c:	05 00 7f c0 00 00 80 17                         	fmulwdp \$r30r31 = \$r5, -8589934592 \(0xfffffffe00000000\);;

     b64:	86 71 87 50                                     	fmulwdp \$r32r33 = \$r6, \$r6;;

     b68:	c7 ff 19 c9 ff ff ff 97 ff ff ff 10             	fmulwd \$r6 = \$r7, 2305843009213693951 \(0x1fffffffffffffff\);;

     b74:	07 f0 1d 49                                     	fmulwd \$r7 = \$r7, -64 \(0xffffffc0\);;

     b78:	08 00 21 c9 00 00 80 17                         	fmulwd \$r8 = \$r8, -8589934592 \(0xfffffffe00000000\);;

     b80:	49 82 21 59                                     	fmulwd.rn.s \$r8 = \$r9, \$r9;;

     b84:	ca ff 25 ca ff ff ff 97 ff ff ff 10             	fmulwp \$r9 = \$r10, 2305843009213693951 \(0x1fffffffffffffff\);;

     b90:	0a f0 29 4a                                     	fmulwp \$r10 = \$r10, -64 \(0xffffffc0\);;

     b94:	0b 00 2d ca 00 00 80 17                         	fmulwp \$r11 = \$r11, -8589934592 \(0xfffffffe00000000\);;

     b9c:	0c 13 2d 5a                                     	fmulwp.ru \$r11 = \$r12, \$r12;;

     ba0:	a2 a8 87 5e                                     	fmulwq.rd.s \$r32r33 = \$r34r35, \$r34r35;;

     ba4:	cd ff 36 ce ff ff ff 97 ff ff ff 10             	fmulw \$r13 = \$r13, 2305843009213693951 \(0x1fffffffffffffff\);;

     bb0:	0e f0 3a 4e                                     	fmulw \$r14 = \$r14, -64 \(0xffffffc0\);;

     bb4:	0f 00 3e ce 00 00 80 17                         	fmulw \$r15 = \$r15, -8589934592 \(0xfffffffe00000000\);;

     bbc:	10 34 42 5e                                     	fmulw.rz \$r16 = \$r16, \$r16;;

     bc0:	40 4c 10 07                                     	fnarrow44wh.rna.s \$a4 = \$a4a5;;

     bc4:	24 65 47 7c                                     	fnarrowdwp.rnz \$r17 = \$r36r37;;

     bc8:	11 6e 47 78                                     	fnarrowdw.ro.s \$r17 = \$r17;;

     bcc:	24 67 4b 7e                                     	fnarrowwhq \$r18 = \$r36r37;;

     bd0:	12 68 4b 7a                                     	fnarrowwh.rn.s \$r18 = \$r18;;

     bd4:	13 20 4f 70                                     	fnegd \$r19 = \$r19;;

     bd8:	14 20 4f 76                                     	fneghq \$r19 = \$r20;;

     bdc:	14 20 53 74                                     	fnegwp \$r20 = \$r20;;

     be0:	15 20 57 72                                     	fnegw \$r21 = \$r21;;

     be4:	16 61 57 72                                     	frecw.ru \$r21 = \$r22;;

     be8:	16 6a 5b 73                                     	frsrw.rd.s \$r22 = \$r22;;

     bec:	26 3a 9b 5f                                     	fsbfdc.c.rz \$r38r39 = \$r38r39, \$r40r41;;

     bf0:	aa ca a3 5e                                     	fsbfdp.rna.s \$r40r41 = \$r42r43, \$r42r43;;

     bf4:	ac 5b b3 5e                                     	fsbfdp.rnz \$r44r45 = \$r44r45, \$r46r47;;

     bf8:	d7 ff 5e c4 ff ff ff 97 ff ff ff 10             	fsbfd \$r23 = \$r23, 2305843009213693951 \(0x1fffffffffffffff\);;

     c04:	18 f0 5e 44                                     	fsbfd \$r23 = \$r24, -64 \(0xffffffc0\);;

     c08:	18 00 62 c4 00 00 80 17                         	fsbfd \$r24 = \$r24, -8589934592 \(0xfffffffe00000000\);;

     c10:	59 e6 66 54                                     	fsbfd.ro.s \$r25 = \$r25, \$r25;;

     c14:	da ff 6a c6 ff ff ff 97 ff ff ff 10             	fsbfhq \$r26 = \$r26, 2305843009213693951 \(0x1fffffffffffffff\);;

     c20:	1b f0 6a 46                                     	fsbfhq \$r26 = \$r27, -64 \(0xffffffc0\);;

     c24:	1b 00 6e c6 00 00 80 17                         	fsbfhq \$r27 = \$r27, -8589934592 \(0xfffffffe00000000\);;

     c2c:	1c 77 72 56                                     	fsbfhq \$r28 = \$r28, \$r28;;

     c30:	dd ff 76 c7 ff ff ff 97 ff ff ff 10             	fsbfwc.c \$r29 = \$r29, 2305843009213693951 \(0x1fffffffffffffff\);;

     c3c:	1e f0 76 47                                     	fsbfwc.c \$r29 = \$r30, -64 \(0xffffffc0\);;

     c40:	1e 00 7a c7 00 00 80 17                         	fsbfwc.c \$r30 = \$r30, -8589934592 \(0xfffffffe00000000\);;

     c48:	df 87 7e 57                                     	fsbfwc.c.rn.s \$r31 = \$r31, \$r31;;

     c4c:	30 1c bf 5b                                     	fsbfwcp.c.ru \$r46r47 = \$r48r49, \$r48r49;;

     c50:	32 ad cf 5a                                     	fsbfwq.rd.s \$r50r51 = \$r50r51, \$r52r53;;

     c54:	20 38 82 55                                     	fsbfwp.rz \$r32 = \$r32, \$r32;;

     c58:	e1 ff 86 c5 ff ff ff 97 ff ff ff 10             	fsbfwp \$r33 = \$r33, 2305843009213693951 \(0x1fffffffffffffff\);;

     c64:	22 f0 86 45                                     	fsbfwp \$r33 = \$r34, -64 \(0xffffffc0\);;

     c68:	22 00 8a c5 00 00 80 17                         	fsbfwp \$r34 = \$r34, -8589934592 \(0xfffffffe00000000\);;

     c70:	e3 c8 8e 55                                     	fsbfwp.rna.s \$r35 = \$r35, \$r35;;

     c74:	b6 5d d7 5a                                     	fsbfwq.rnz \$r52r53 = \$r54r55, \$r54r55;;

     c78:	e4 ff 92 cd ff ff ff 97 ff ff ff 10             	fsbfw \$r36 = \$r36, 2305843009213693951 \(0x1fffffffffffffff\);;

     c84:	25 f0 92 4d                                     	fsbfw \$r36 = \$r37, -64 \(0xffffffc0\);;

     c88:	25 00 96 cd 00 00 80 17                         	fsbfw \$r37 = \$r37, -8589934592 \(0xfffffffe00000000\);;

     c90:	a6 e9 9a 5d                                     	fsbfw.ro.s \$r38 = \$r38, \$r38;;

     c94:	00 47 10 07                                     	fscalewv \$a4 = \$a4;;

     c98:	38 58 9f 70                                     	fsdivd.s \$r39 = \$r56r57;;

     c9c:	38 50 9f 74                                     	fsdivwp \$r39 = \$r56r57;;

     ca0:	3a 58 9f 72                                     	fsdivw.s \$r39 = \$r58r59;;

     ca4:	28 40 a3 70                                     	fsrecd \$r40 = \$r40;;

     ca8:	29 48 a3 74                                     	fsrecwp.s \$r40 = \$r41;;

     cac:	29 40 a7 72                                     	fsrecw \$r41 = \$r41;;

     cb0:	2a 20 ab 78                                     	fsrsrd \$r42 = \$r42;;

     cb4:	2b 20 ab 7c                                     	fsrsrwp \$r42 = \$r43;;

     cb8:	2b 20 af 7a                                     	fsrsrw \$r43 = \$r43;;

     cbc:	2c 38 b3 7c                                     	fwidenlhwp.s \$r44 = \$r44;;

     cc0:	2d 30 b3 7a                                     	fwidenlhw \$r44 = \$r45;;

     cc4:	2d 38 b7 78                                     	fwidenlwd.s \$r45 = \$r45;;

     cc8:	2e 30 bb 7d                                     	fwidenmhwp \$r46 = \$r46;;

     ccc:	2f 38 bb 7b                                     	fwidenmhw.s \$r46 = \$r47;;

     cd0:	2f 30 bf 79                                     	fwidenmwd \$r47 = \$r47;;

     cd4:	30 00 c4 0f                                     	get \$r48 = \$pc;;

     cd8:	30 00 c4 0f                                     	get \$r48 = \$pc;;

     cdc:	00 00 80 17                                     	goto fffffffffe000cdc <main\+0xfffffffffe000cdc>;;

     ce0:	f0 ff 5c bc ff ff ff 9f ff ff ff 18             	i1invals 2305843009213693951 \(0x1fffffffffffffff\)\[\$r48\];;

     cec:	71 4c 5e bc 00 00 00 98 00 00 80 1f             	i1invals.dlez \$r49\? -1125899906842624 \(0xfffc000000000000\)\[\$r49\];;

     cf8:	72 5c 5e bc 00 00 80 1f                         	i1invals.dgtz \$r49\? -8388608 \(0xff800000\)\[\$r50\];;

     d00:	b2 6c 5e 3c                                     	i1invals.odd \$r50\? \[\$r50\];;

     d04:	f3 ec 5e 3c                                     	i1invals \$r51\[\$r51\];;

     d08:	33 f0 5c 3c                                     	i1invals -64 \(0xffffffc0\)\[\$r51\];;

     d0c:	34 00 5c bc 00 00 80 1f                         	i1invals -8589934592 \(0xfffffffe00000000\)\[\$r52\];;

     d14:	00 00 9d 3f                                     	i1inval;;

     d18:	34 00 dc 0f                                     	icall \$r52;;

     d1c:	34 00 cc 0f                                     	iget \$r52;;

     d20:	35 00 d8 0f                                     	igoto \$r53;;

     d24:	f5 71 d7 60                                     	insf \$r53 = \$r53, 7 \(0x7\), 7 \(0x7\);;

     d28:	f6 ff d8 ea ff ff ff 87 ff ff ff 00             	iord \$r54 = \$r54, 2305843009213693951 \(0x1fffffffffffffff\);;

     d34:	f7 0d d9 7a                                     	iord \$r54 = \$r55, \$r55;;

     d38:	38 f0 dc 6a                                     	iord \$r55 = \$r56, -64 \(0xffffffc0\);;

     d3c:	38 00 e0 ea 00 00 80 07                         	iord \$r56 = \$r56, -8589934592 \(0xfffffffe00000000\);;

     d44:	f9 ff e4 ef ff ff ff 87 ff ff ff 00             	iornd \$r57 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

     d50:	ba 0e e5 7f                                     	iornd \$r57 = \$r58, \$r58;;

     d54:	3b f0 e8 6f                                     	iornd \$r58 = \$r59, -64 \(0xffffffc0\);;

     d58:	3b 00 ec ef 00 00 80 07                         	iornd \$r59 = \$r59, -8589934592 \(0xfffffffe00000000\);;

     d60:	3c 1f f1 7f                                     	iornw \$r60 = \$r60, \$r60;;

     d64:	3d f0 f4 7f                                     	iornw \$r61 = \$r61, -64 \(0xffffffc0\);;

     d68:	3e 00 f4 ff 00 00 80 07                         	iornw \$r61 = \$r62, -8589934592 \(0xfffffffe00000000\);;

     d70:	fe 1f f9 7a                                     	iorw \$r62 = \$r62, \$r63;;

     d74:	3f f0 fc 7a                                     	iorw \$r63 = \$r63, -64 \(0xffffffc0\);;

     d78:	00 00 00 fa 00 00 80 07                         	iorw \$r0 = \$r0, -8589934592 \(0xfffffffe00000000\);;

     d80:	41 40 01 7c                                     	landd \$r0 = \$r1, \$r1;;

     d84:	c2 47 05 fc ff ff ff 00                         	landd \$r1 = \$r2, 536870911 \(0x1fffffff\);;

     d8c:	c2 70 09 7c                                     	landhq \$r2 = \$r2, \$r3;;

     d90:	c3 7f 0d fc ff ff ff 00                         	landhq \$r3 = \$r3, 536870911 \(0x1fffffff\).@;;

     d98:	04 61 11 7c                                     	landwp \$r4 = \$r4, \$r4;;

     d9c:	c5 67 15 fc ff ff ff 00                         	landwp \$r5 = \$r5, 536870911 \(0x1fffffff\);;

     da4:	86 51 15 7c                                     	landw \$r5 = \$r6, \$r6;;

     da8:	c7 57 19 fc ff ff ff 00                         	landw \$r6 = \$r7, 536870911 \(0x1fffffff\);;

     db0:	c8 e1 1e 24                                     	lbs \$r7 = \$r7\[\$r8\];;

     db4:	09 72 22 a5 00 00 00 98 00 00 80 1f             	lbs.s.even \$r8\? \$r8 = -1125899906842624 \(0xfffc000000000000\)\[\$r9\];;

     dc0:	4a 82 26 a6 00 00 80 1f                         	lbs.u.wnez \$r9\? \$r9 = -8388608 \(0xff800000\)\[\$r10\];;

     dc8:	8b 92 2a 27                                     	lbs.us.weqz \$r10\? \$r10 = \[\$r11\];;

     dcc:	cb ff 2c a4 ff ff ff 9f ff ff ff 18             	lbs \$r11 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r11\];;

     dd8:	0c f0 30 25                                     	lbs.s \$r12 = -64 \(0xffffffc0\)\[\$r12\];;

     ddc:	0d 00 34 a6 00 00 80 1f                         	lbs.u \$r13 = -8589934592 \(0xfffffffe00000000\)\[\$r13\];;

     de4:	8f f3 3a 23                                     	lbz.us.xs \$r14 = \$r14\[\$r15\];;

     de8:	d0 a3 42 a0 00 00 00 98 00 00 80 1f             	lbz.wltz \$r15\? \$r16 = -1125899906842624 \(0xfffc000000000000\)\[\$r16\];;

     df4:	11 b4 46 a1 00 00 80 1f                         	lbz.s.wgez \$r16\? \$r17 = -8388608 \(0xff800000\)\[\$r17\];;

     dfc:	52 c4 4a 22                                     	lbz.u.wlez \$r17\? \$r18 = \[\$r18\];;

     e00:	d3 ff 48 a3 ff ff ff 9f ff ff ff 18             	lbz.us \$r18 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r19\];;

     e0c:	13 f0 4c 20                                     	lbz \$r19 = -64 \(0xffffffc0\)\[\$r19\];;

     e10:	14 00 50 a1 00 00 80 1f                         	lbz.s \$r20 = -8589934592 \(0xfffffffe00000000\)\[\$r20\];;

     e18:	55 e5 52 3a                                     	ld.u \$r20 = \$r21\[\$r21\];;

     e1c:	56 d5 5a bb 00 00 00 98 00 00 80 1f             	ld.us.wgtz \$r21\? \$r22 = -1125899906842624 \(0xfffc000000000000\)\[\$r22\];;

     e28:	97 05 5e b8 00 00 80 1f                         	ld.dnez \$r22\? \$r23 = -8388608 \(0xff800000\)\[\$r23\];;

     e30:	d8 15 62 39                                     	ld.s.deqz \$r23\? \$r24 = \[\$r24\];;

     e34:	d9 ff 60 ba ff ff ff 9f ff ff ff 18             	ld.u \$r24 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r25\];;

     e40:	19 f0 64 3b                                     	ld.us \$r25 = -64 \(0xffffffc0\)\[\$r25\];;

     e44:	1a 00 68 b8 00 00 80 1f                         	ld \$r26 = -8589934592 \(0xfffffffe00000000\)\[\$r26\];;

     e4c:	db f6 6a 2d                                     	lhs.s.xs \$r26 = \$r27\[\$r27\];;

     e50:	dc 26 72 ae 00 00 00 98 00 00 80 1f             	lhs.u.dltz \$r27\? \$r28 = -1125899906842624 \(0xfffc000000000000\)\[\$r28\];;

     e5c:	1d 37 76 af 00 00 80 1f                         	lhs.us.dgez \$r28\? \$r29 = -8388608 \(0xff800000\)\[\$r29\];;

     e64:	5e 47 7a 2c                                     	lhs.dlez \$r29\? \$r30 = \[\$r30\];;

     e68:	df ff 78 ad ff ff ff 9f ff ff ff 18             	lhs.s \$r30 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r31\];;

     e74:	1f f0 7c 2e                                     	lhs.u \$r31 = -64 \(0xffffffc0\)\[\$r31\];;

     e78:	20 00 80 af 00 00 80 1f                         	lhs.us \$r32 = -8589934592 \(0xfffffffe00000000\)\[\$r32\];;

     e80:	61 e8 82 28                                     	lhz \$r32 = \$r33\[\$r33\];;

     e84:	62 58 8a a9 00 00 00 98 00 00 80 1f             	lhz.s.dgtz \$r33\? \$r34 = -1125899906842624 \(0xfffc000000000000\)\[\$r34\];;

     e90:	a3 68 8e aa 00 00 80 1f                         	lhz.u.odd \$r34\? \$r35 = -8388608 \(0xff800000\)\[\$r35\];;

     e98:	e4 78 92 2b                                     	lhz.us.even \$r35\? \$r36 = \[\$r36\];;

     e9c:	e5 ff 90 a8 ff ff ff 9f ff ff ff 18             	lhz \$r36 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r37\];;

     ea8:	25 f0 94 29                                     	lhz.s \$r37 = -64 \(0xffffffc0\)\[\$r37\];;

     eac:	26 00 98 aa 00 00 80 1f                         	lhz.u \$r38 = -8589934592 \(0xfffffffe00000000\)\[\$r38\];;

     eb4:	e7 49 99 7e                                     	liord \$r38 = \$r39, \$r39;;

     eb8:	e8 4f 9d fe ff ff ff 00                         	liord \$r39 = \$r40, 536870911 \(0x1fffffff\).@;;

     ec0:	68 7a a1 7e                                     	liorhq \$r40 = \$r40, \$r41;;

     ec4:	e9 77 a5 fe ff ff ff 00                         	liorhq \$r41 = \$r41, 536870911 \(0x1fffffff\);;

     ecc:	aa 6a a9 7e                                     	liorwp \$r42 = \$r42, \$r42;;

     ed0:	eb 6f ad fe ff ff ff 00                         	liorwp \$r43 = \$r43, 536870911 \(0x1fffffff\).@;;

     ed8:	2c 5b ad 7e                                     	liorw \$r43 = \$r44, \$r44;;

     edc:	ed 57 b1 fe ff ff ff 00                         	liorw \$r44 = \$r45, 536870911 \(0x1fffffff\);;

     ee4:	ad 4b b5 7d                                     	lnandd \$r45 = \$r45, \$r46;;

     ee8:	ee 47 b9 fd ff ff ff 00                         	lnandd \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     ef0:	ef 7b bd 7d                                     	lnandhq \$r47 = \$r47, \$r47;;

     ef4:	f0 7f c1 fd ff ff ff 00                         	lnandhq \$r48 = \$r48, 536870911 \(0x1fffffff\).@;;

     efc:	71 6c c1 7d                                     	lnandwp \$r48 = \$r49, \$r49;;

     f00:	f2 67 c5 fd ff ff ff 00                         	lnandwp \$r49 = \$r50, 536870911 \(0x1fffffff\);;

     f08:	f2 5c c9 7d                                     	lnandw \$r50 = \$r50, \$r51;;

     f0c:	f3 57 cd fd ff ff ff 00                         	lnandw \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     f14:	34 4d d1 7f                                     	lniord \$r52 = \$r52, \$r52;;

     f18:	f5 4f d5 ff ff ff ff 00                         	lniord \$r53 = \$r53, 536870911 \(0x1fffffff\).@;;

     f20:	b6 7d d5 7f                                     	lniorhq \$r53 = \$r54, \$r54;;

     f24:	f7 77 d9 ff ff ff ff 00                         	lniorhq \$r54 = \$r55, 536870911 \(0x1fffffff\);;

     f2c:	37 6e dd 7f                                     	lniorwp \$r55 = \$r55, \$r56;;

     f30:	f8 6f e1 ff ff ff ff 00                         	lniorwp \$r56 = \$r56, 536870911 \(0x1fffffff\).@;;

     f38:	79 5e e5 7f                                     	lniorw \$r57 = \$r57, \$r57;;

     f3c:	fa 57 e9 ff ff ff ff 00                         	lniorw \$r58 = \$r58, 536870911 \(0x1fffffff\);;

     f44:	fb 4e e9 7f                                     	lniord \$r58 = \$r59, \$r59;;

     f48:	fc 47 ed ff ff ff ff 00                         	lniord \$r59 = \$r60, 536870911 \(0x1fffffff\);;

     f50:	7c 7f f1 7f                                     	lniorhq \$r60 = \$r60, \$r61;;

     f54:	fd 7f f5 ff ff ff ff 00                         	lniorhq \$r61 = \$r61, 536870911 \(0x1fffffff\).@;;

     f5c:	be 6f f9 7f                                     	lniorwp \$r62 = \$r62, \$r62;;

     f60:	ff 67 fd ff ff ff ff 00                         	lniorwp \$r63 = \$r63, 536870911 \(0x1fffffff\);;

     f68:	00 50 fd 7f                                     	lniorw \$r63 = \$r0, \$r0;;

     f6c:	c1 57 01 ff ff ff ff 00                         	lniorw \$r0 = \$r1, 536870911 \(0x1fffffff\);;

     f74:	01 00 78 0f                                     	loopdo \$r1, ffffffffffff8f74 <main\+0xffffffffffff8f74>;;

     f78:	82 40 05 7e                                     	liord \$r1 = \$r2, \$r2;;

     f7c:	c3 4f 09 fe ff ff ff 00                         	liord \$r2 = \$r3, 536870911 \(0x1fffffff\).@;;

     f84:	03 71 0d 7e                                     	liorhq \$r3 = \$r3, \$r4;;

     f88:	c4 77 11 fe ff ff ff 00                         	liorhq \$r4 = \$r4, 536870911 \(0x1fffffff\);;

     f90:	45 61 15 7e                                     	liorwp \$r5 = \$r5, \$r5;;

     f94:	c6 6f 19 fe ff ff ff 00                         	liorwp \$r6 = \$r6, 536870911 \(0x1fffffff\).@;;

     f9c:	c7 51 19 7e                                     	liorw \$r6 = \$r7, \$r7;;

     fa0:	c8 57 1d fe ff ff ff 00                         	liorw \$r7 = \$r8, 536870911 \(0x1fffffff\);;

     fa8:	08 f2 66 3f                                     	lo.us.xs \$r24r25r26r27 = \$r8\[\$r8\];;

     fac:	49 82 76 bc 00 00 00 98 00 00 80 1f             	lo.wnez \$r9\? \$r28r29r30r31 = -1125899906842624 \(0xfffc000000000000\)\[\$r9\];;

     fb8:	4a 92 86 bd 00 00 80 1f                         	lo.s.weqz \$r9\? \$r32r33r34r35 = -8388608 \(0xff800000\)\[\$r10\];;

     fc0:	8a a2 96 3e                                     	lo.u.wltz \$r10\? \$r36r37r38r39 = \[\$r10\];;

     fc4:	cb ff a4 bf ff ff ff 9f ff ff ff 18             	lo.us \$r40r41r42r43 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r11\];;

     fd0:	0b f0 b4 3c                                     	lo \$r44r45r46r47 = -64 \(0xffffffc0\)\[\$r11\];;

     fd4:	0b 00 c4 bd 00 00 80 1f                         	lo.s \$r48r49r50r51 = -8589934592 \(0xfffffffe00000000\)\[\$r11\];;

     fdc:	0c e3 ea 3e                                     	lq.u \$r58r59 = \$r12\[\$r12\];;

     fe0:	4d b3 f2 bf 00 00 00 98 00 00 80 1f             	lq.us.wgez \$r13\? \$r60r61 = -1125899906842624 \(0xfffc000000000000\)\[\$r13\];;

     fec:	8e c3 f2 bc 00 00 80 1f                         	lq.wlez \$r14\? \$r60r61 = -8388608 \(0xff800000\)\[\$r14\];;

     ff4:	cf d3 fa 3d                                     	lq.s.wgtz \$r15\? \$r62r63 = \[\$r15\];;

     ff8:	d0 ff f8 be ff ff ff 9f ff ff ff 18             	lq.u \$r62r63 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r16\];;

    1004:	10 f0 00 3f                                     	lq.us \$r0r1 = -64 \(0xffffffc0\)\[\$r16\];;

    1008:	10 00 00 bc 00 00 80 1f                         	lq \$r0r1 = -8589934592 \(0xfffffffe00000000\)\[\$r16\];;

    1010:	51 f4 46 35                                     	lws.s.xs \$r17 = \$r17\[\$r17\];;

    1014:	92 04 4a b6 00 00 00 98 00 00 80 1f             	lws.u.dnez \$r18\? \$r18 = -1125899906842624 \(0xfffc000000000000\)\[\$r18\];;

    1020:	d3 14 4e b7 00 00 80 1f                         	lws.us.deqz \$r19\? \$r19 = -8388608 \(0xff800000\)\[\$r19\];;

    1028:	14 25 52 34                                     	lws.dltz \$r20\? \$r20 = \[\$r20\];;

    102c:	d5 ff 54 b5 ff ff ff 9f ff ff ff 18             	lws.s \$r21 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r21\];;

    1038:	16 f0 54 36                                     	lws.u \$r21 = -64 \(0xffffffc0\)\[\$r22\];;

    103c:	16 00 58 b7 00 00 80 1f                         	lws.us \$r22 = -8589934592 \(0xfffffffe00000000\)\[\$r22\];;

    1044:	d7 e5 5e 30                                     	lwz \$r23 = \$r23\[\$r23\];;

    1048:	18 36 62 b1 00 00 00 98 00 00 80 1f             	lwz.s.dgez \$r24\? \$r24 = -1125899906842624 \(0xfffc000000000000\)\[\$r24\];;

    1054:	59 46 66 b2 00 00 80 1f                         	lwz.u.dlez \$r25\? \$r25 = -8388608 \(0xff800000\)\[\$r25\];;

    105c:	9a 56 6a 33                                     	lwz.us.dgtz \$r26\? \$r26 = \[\$r26\];;

    1060:	db ff 6c b0 ff ff ff 9f ff ff ff 18             	lwz \$r27 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r27\];;

    106c:	1c f0 6c 31                                     	lwz.s \$r27 = -64 \(0xffffffc0\)\[\$r28\];;

    1070:	1c 00 70 b2 00 00 80 1f                         	lwz.u \$r28 = -8589934592 \(0xfffffffe00000000\)\[\$r28\];;

    1078:	dd ff 08 c8 ff ff ff 97 ff ff ff 10             	madddt \$r2r3 = \$r29, 2305843009213693951 \(0x1fffffffffffffff\);;

    1084:	5d 17 08 58                                     	madddt \$r2r3 = \$r29, \$r29;;

    1088:	1e f0 10 48                                     	madddt \$r4r5 = \$r30, -64 \(0xffffffc0\);;

    108c:	1e 00 10 c8 00 00 80 17                         	madddt \$r4r5 = \$r30, -8589934592 \(0xfffffffe00000000\);;

    1094:	df ff 78 c0 ff ff ff 97 ff ff ff 10             	maddd \$r30 = \$r31, 2305843009213693951 \(0x1fffffffffffffff\);;

    10a0:	1f 08 7c 50                                     	maddd \$r31 = \$r31, \$r32;;

    10a4:	20 f0 80 40                                     	maddd \$r32 = \$r32, -64 \(0xffffffc0\);;

    10a8:	21 00 84 c0 00 00 80 17                         	maddd \$r33 = \$r33, -8589934592 \(0xfffffffe00000000\);;

    10b0:	e2 ff 84 c2 ff ff ff 97 ff ff ff 10             	maddhq \$r33 = \$r34, 2305843009213693951 \(0x1fffffffffffffff\);;

    10bc:	e2 08 88 52                                     	maddhq \$r34 = \$r34, \$r35;;

    10c0:	23 f0 8c 42                                     	maddhq \$r35 = \$r35, -64 \(0xffffffc0\);;

    10c4:	24 00 90 c2 00 00 80 17                         	maddhq \$r36 = \$r36, -8589934592 \(0xfffffffe00000000\);;

    10cc:	64 49 18 50                                     	maddhwq \$r6r7 = \$r36, \$r37;;

    10d0:	e5 ff 18 ca ff ff ff 97 ff ff ff 10             	maddsudt \$r6r7 = \$r37, 2305843009213693951 \(0x1fffffffffffffff\);;

    10dc:	a5 19 20 5a                                     	maddsudt \$r8r9 = \$r37, \$r38;;

    10e0:	26 f0 20 4a                                     	maddsudt \$r8r9 = \$r38, -64 \(0xffffffc0\);;

    10e4:	26 00 28 ca 00 00 80 17                         	maddsudt \$r10r11 = \$r38, -8589934592 \(0xfffffffe00000000\);;

    10ec:	e7 49 28 52                                     	maddsuhwq \$r10r11 = \$r39, \$r39;;

    10f0:	27 0a 30 5a                                     	maddsuwdp \$r12r13 = \$r39, \$r40;;

    10f4:	e8 07 30 da ff ff ff 10                         	maddsuwdp \$r12r13 = \$r40, 536870911 \(0x1fffffff\);;

    10fc:	69 3a a0 52                                     	maddsuwd \$r40 = \$r41, \$r41;;

    1100:	ea 37 a4 d2 ff ff ff 10                         	maddsuwd \$r41 = \$r42, 536870911 \(0x1fffffff\);;

    1108:	ea ff 38 c9 ff ff ff 97 ff ff ff 10             	maddudt \$r14r15 = \$r42, 2305843009213693951 \(0x1fffffffffffffff\);;

    1114:	ea 1a 38 59                                     	maddudt \$r14r15 = \$r42, \$r43;;

    1118:	2b f0 40 49                                     	maddudt \$r16r17 = \$r43, -64 \(0xffffffc0\);;

    111c:	2b 00 40 c9 00 00 80 17                         	maddudt \$r16r17 = \$r43, -8589934592 \(0xfffffffe00000000\);;

    1124:	2c 4b 48 51                                     	madduhwq \$r18r19 = \$r44, \$r44;;

    1128:	6c 0b 48 59                                     	madduwdp \$r18r19 = \$r44, \$r45;;

    112c:	ed 0f 50 d9 ff ff ff 10                         	madduwdp \$r20r21 = \$r45, 536870911 \(0x1fffffff\).@;;

    1134:	ae 3b b4 51                                     	madduwd \$r45 = \$r46, \$r46;;

    1138:	ef 37 b8 d1 ff ff ff 10                         	madduwd \$r46 = \$r47, 536870911 \(0x1fffffff\);;

    1140:	ef ff 50 cb ff ff ff 97 ff ff ff 10             	madduzdt \$r20r21 = \$r47, 2305843009213693951 \(0x1fffffffffffffff\);;

    114c:	2f 1c 58 5b                                     	madduzdt \$r22r23 = \$r47, \$r48;;

    1150:	30 f0 58 4b                                     	madduzdt \$r22r23 = \$r48, -64 \(0xffffffc0\);;

    1154:	30 00 60 cb 00 00 80 17                         	madduzdt \$r24r25 = \$r48, -8589934592 \(0xfffffffe00000000\);;

    115c:	71 0c 60 58                                     	maddwdp \$r24r25 = \$r49, \$r49;;

    1160:	f1 07 68 d8 ff ff ff 10                         	maddwdp \$r26r27 = \$r49, 536870911 \(0x1fffffff\);;

    1168:	b2 3c c8 50                                     	maddwd \$r50 = \$r50, \$r50;;

    116c:	f3 37 cc d0 ff ff ff 10                         	maddwd \$r51 = \$r51, 536870911 \(0x1fffffff\);;

    1174:	f4 ff cc c1 ff ff ff 97 ff ff ff 10             	maddwp \$r51 = \$r52, 2305843009213693951 \(0x1fffffffffffffff\);;

    1180:	74 0d d0 51                                     	maddwp \$r52 = \$r52, \$r53;;

    1184:	35 f0 d4 41                                     	maddwp \$r53 = \$r53, -64 \(0xffffffc0\);;

    1188:	36 00 d8 c1 00 00 80 17                         	maddwp \$r54 = \$r54, -8589934592 \(0xfffffffe00000000\);;

    1190:	f7 3d d8 53                                     	maddw \$r54 = \$r55, \$r55;;

    1194:	f8 37 dc d3 ff ff ff 10                         	maddw \$r55 = \$r56, 536870911 \(0x1fffffff\);;

    119c:	c0 ff e0 e0 ff ff ff 87 ff ff ff 00             	make \$r56 = 2305843009213693951 \(0x1fffffffffffffff\);;

    11a8:	3c 00 e0 e0 00 00 00 00                         	make \$r56 = -549755813888 \(0xffffff8000000000\);;

    11b0:	00 f0 e4 60                                     	make \$r57 = -4096 \(0xfffff000\);;

    11b4:	f9 ff e4 e3 ff ff ff 87 ff ff ff 00             	maxd \$r57 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

    11c0:	ba 0e e9 73                                     	maxd \$r58 = \$r58, \$r58;;

    11c4:	3b f0 ec 63                                     	maxd \$r59 = \$r59, -64 \(0xffffffc0\);;

    11c8:	3c 00 ec e3 00 00 80 07                         	maxd \$r59 = \$r60, -8589934592 \(0xfffffffe00000000\);;

    11d0:	7c 3f f1 73                                     	maxhq \$r60 = \$r60, \$r61;;

    11d4:	fd 3f f5 f3 ff ff ff 00                         	maxhq \$r61 = \$r61, 536870911 \(0x1fffffff\).@;;

    11dc:	fe ff f8 e7 ff ff ff 87 ff ff ff 00             	maxud \$r62 = \$r62, 2305843009213693951 \(0x1fffffffffffffff\);;

    11e8:	ff 0f f9 77                                     	maxud \$r62 = \$r63, \$r63;;

    11ec:	00 f0 fc 67                                     	maxud \$r63 = \$r0, -64 \(0xffffffc0\);;

    11f0:	00 00 00 e7 00 00 80 07                         	maxud \$r0 = \$r0, -8589934592 \(0xfffffffe00000000\);;

    11f8:	41 30 05 77                                     	maxuhq \$r1 = \$r1, \$r1;;

    11fc:	c2 37 09 f7 ff ff ff 00                         	maxuhq \$r2 = \$r2, 536870911 \(0x1fffffff\);;

    1204:	c3 20 09 77                                     	maxuwp \$r2 = \$r3, \$r3;;

    1208:	c4 2f 0d f7 ff ff ff 00                         	maxuwp \$r3 = \$r4, 536870911 \(0x1fffffff\).@;;

    1210:	44 11 11 77                                     	maxuw \$r4 = \$r4, \$r5;;

    1214:	05 f0 14 77                                     	maxuw \$r5 = \$r5, -64 \(0xffffffc0\);;

    1218:	06 00 18 f7 00 00 80 07                         	maxuw \$r6 = \$r6, -8589934592 \(0xfffffffe00000000\);;

    1220:	c7 21 19 73                                     	maxwp \$r6 = \$r7, \$r7;;

    1224:	c8 27 1d f3 ff ff ff 00                         	maxwp \$r7 = \$r8, 536870911 \(0x1fffffff\);;

    122c:	48 12 21 73                                     	maxw \$r8 = \$r8, \$r9;;

    1230:	09 f0 24 73                                     	maxw \$r9 = \$r9, -64 \(0xffffffc0\);;

    1234:	0a 00 28 f3 00 00 80 07                         	maxw \$r10 = \$r10, -8589934592 \(0xfffffffe00000000\);;

    123c:	cb ff 28 e2 ff ff ff 87 ff ff ff 00             	mind \$r10 = \$r11, 2305843009213693951 \(0x1fffffffffffffff\);;

    1248:	0b 03 2d 72                                     	mind \$r11 = \$r11, \$r12;;

    124c:	0d f0 30 62                                     	mind \$r12 = \$r13, -64 \(0xffffffc0\);;

    1250:	0e 00 34 e2 00 00 80 07                         	mind \$r13 = \$r14, -8589934592 \(0xfffffffe00000000\);;

    1258:	cf 33 39 72                                     	minhq \$r14 = \$r15, \$r15;;

    125c:	d0 3f 41 f2 ff ff ff 00                         	minhq \$r16 = \$r16, 536870911 \(0x1fffffff\).@;;

    1264:	d1 ff 40 e6 ff ff ff 87 ff ff ff 00             	minud \$r16 = \$r17, 2305843009213693951 \(0x1fffffffffffffff\);;

    1270:	91 04 45 76                                     	minud \$r17 = \$r17, \$r18;;

    1274:	12 f0 48 66                                     	minud \$r18 = \$r18, -64 \(0xffffffc0\);;

    1278:	13 00 4c e6 00 00 80 07                         	minud \$r19 = \$r19, -8589934592 \(0xfffffffe00000000\);;

    1280:	14 35 4d 76                                     	minuhq \$r19 = \$r20, \$r20;;

    1284:	d5 37 51 f6 ff ff ff 00                         	minuhq \$r20 = \$r21, 536870911 \(0x1fffffff\);;

    128c:	95 25 55 76                                     	minuwp \$r21 = \$r21, \$r22;;

    1290:	d6 2f 59 f6 ff ff ff 00                         	minuwp \$r22 = \$r22, 536870911 \(0x1fffffff\).@;;

    1298:	d7 15 5d 76                                     	minuw \$r23 = \$r23, \$r23;;

    129c:	18 f0 60 76                                     	minuw \$r24 = \$r24, -64 \(0xffffffc0\);;

    12a0:	19 00 60 f6 00 00 80 07                         	minuw \$r24 = \$r25, -8589934592 \(0xfffffffe00000000\);;

    12a8:	99 26 65 72                                     	minwp \$r25 = \$r25, \$r26;;

    12ac:	da 27 69 f2 ff ff ff 00                         	minwp \$r26 = \$r26, 536870911 \(0x1fffffff\);;

    12b4:	db 16 6d 72                                     	minw \$r27 = \$r27, \$r27;;

    12b8:	1c f0 70 72                                     	minw \$r28 = \$r28, -64 \(0xffffffc0\);;

    12bc:	1d 00 70 f2 00 00 80 07                         	minw \$r28 = \$r29, -8589934592 \(0xfffffffe00000000\);;

    12c4:	5d 17 68 53                                     	mm212w \$r26r27 = \$r29, \$r29;;

    12c8:	de 1f 70 d3 ff ff ff 10                         	mm212w \$r28r29 = \$r30, 536870911 \(0x1fffffff\).@;;

    12d0:	9e 07 70 5b                                     	mma212w \$r28r29 = \$r30, \$r30;;

    12d4:	df 07 78 db ff ff ff 10                         	mma212w \$r30r31 = \$r31, 536870911 \(0x1fffffff\);;

    12dc:	45 c1 61 04                                     	mma444hbd0 \$a24a25a26a27 = \$a28a29a30a31, \$a5, \$a5;;

    12e0:	46 41 86 04                                     	mma444hbd1 \$a32a33a34a35 = \$a36a37a38a39, \$a5, \$a6;;

    12e4:	86 c1 aa 04                                     	mma444hd \$a40a41a42a43 = \$a44a45a46a47, \$a6, \$a6;;

    12e8:	c7 61 c3 04                                     	mma444suhbd0 \$a48a49a50a51 = \$a52a53a54a55, \$a7, \$a7;;

    12ec:	c8 e1 e7 04                                     	mma444suhbd1 \$a56a57a58a59 = \$a60a61a62a63, \$a7, \$a8;;

    12f0:	08 62 08 04                                     	mma444suhd \$a0a1a2a3 = \$a4a5a6a7, \$a8, \$a8;;

    12f4:	49 d2 20 04                                     	mma444uhbd0 \$a8a9a10a11 = \$a12a13a14a15, \$a9, \$a9;;

    12f8:	4a 52 45 04                                     	mma444uhbd1 \$a16a17a18a19 = \$a20a21a22a23, \$a9, \$a10;;

    12fc:	8a d2 69 04                                     	mma444uhd \$a24a25a26a27 = \$a28a29a30a31, \$a10, \$a10;;

    1300:	cb 72 82 04                                     	mma444ushbd0 \$a32a33a34a35 = \$a36a37a38a39, \$a11, \$a11;;

    1304:	cc f2 a6 04                                     	mma444ushbd1 \$a40a41a42a43 = \$a44a45a46a47, \$a11, \$a12;;

    1308:	0c 73 cb 04                                     	mma444ushd \$a48a49a50a51 = \$a52a53a54a55, \$a12, \$a12;;

    130c:	df 07 78 5f                                     	mms212w \$r30r31 = \$r31, \$r31;;

    1310:	e0 0f 80 df ff ff ff 10                         	mms212w \$r32r33 = \$r32, 536870911 \(0x1fffffff\).@;;

    1318:	20 e8 02 7f                                     	movetq \$a0_lo = \$r32, \$r32;;

    131c:	61 f8 02 7f                                     	movetq \$a0_hi = \$r33, \$r33;;

    1320:	a1 18 80 5c                                     	msbfdt \$r32r33 = \$r33, \$r34;;

    1324:	e2 08 88 54                                     	msbfd \$r34 = \$r34, \$r35;;

    1328:	e3 07 8c d4 ff ff ff 10                         	msbfd \$r35 = \$r35, 536870911 \(0x1fffffff\);;

    1330:	24 09 90 56                                     	msbfhq \$r36 = \$r36, \$r36;;

    1334:	e5 0f 94 d6 ff ff ff 10                         	msbfhq \$r37 = \$r37, 536870911 \(0x1fffffff\).@;;

    133c:	a5 49 88 54                                     	msbfhwq \$r34r35 = \$r37, \$r38;;

    1340:	a6 19 88 5e                                     	msbfsudt \$r34r35 = \$r38, \$r38;;

    1344:	e7 49 90 56                                     	msbfsuhwq \$r36r37 = \$r39, \$r39;;

    1348:	27 0a 90 5e                                     	msbfsuwdp \$r36r37 = \$r39, \$r40;;

    134c:	e8 07 98 de ff ff ff 10                         	msbfsuwdp \$r38r39 = \$r40, 536870911 \(0x1fffffff\);;

    1354:	69 3a a0 56                                     	msbfsuwd \$r40 = \$r41, \$r41;;

    1358:	ea 37 a4 d6 ff ff ff 10                         	msbfsuwd \$r41 = \$r42, 536870911 \(0x1fffffff\);;

    1360:	aa 1a 98 5d                                     	msbfudt \$r38r39 = \$r42, \$r42;;

    1364:	eb 4a a0 55                                     	msbfuhwq \$r40r41 = \$r43, \$r43;;

    1368:	2b 0b a0 5d                                     	msbfuwdp \$r40r41 = \$r43, \$r44;;

    136c:	ec 0f a8 dd ff ff ff 10                         	msbfuwdp \$r42r43 = \$r44, 536870911 \(0x1fffffff\).@;;

    1374:	6d 3b b0 55                                     	msbfuwd \$r44 = \$r45, \$r45;;

    1378:	ee 37 b4 d5 ff ff ff 10                         	msbfuwd \$r45 = \$r46, 536870911 \(0x1fffffff\);;

    1380:	ae 1b a8 5f                                     	msbfuzdt \$r42r43 = \$r46, \$r46;;

    1384:	ef 0b b0 5c                                     	msbfwdp \$r44r45 = \$r47, \$r47;;

    1388:	ef 07 b0 dc ff ff ff 10                         	msbfwdp \$r44r45 = \$r47, 536870911 \(0x1fffffff\);;

    1390:	30 3c c0 54                                     	msbfwd \$r48 = \$r48, \$r48;;

    1394:	f1 37 c4 d4 ff ff ff 10                         	msbfwd \$r49 = \$r49, 536870911 \(0x1fffffff\);;

    139c:	b2 0c c4 55                                     	msbfwp \$r49 = \$r50, \$r50;;

    13a0:	f3 0f c8 d5 ff ff ff 10                         	msbfwp \$r50 = \$r51, 536870911 \(0x1fffffff\).@;;

    13a8:	33 3d cc 57                                     	msbfw \$r51 = \$r51, \$r52;;

    13ac:	f4 37 d0 d7 ff ff ff 10                         	msbfw \$r52 = \$r52, 536870911 \(0x1fffffff\);;

    13b4:	f5 ff bc c8 ff ff ff 97 ff ff ff 10             	muldt \$r46r47 = \$r53, 2305843009213693951 \(0x1fffffffffffffff\);;

    13c0:	75 1d bc 58                                     	muldt \$r46r47 = \$r53, \$r53;;

    13c4:	36 f0 c4 48                                     	muldt \$r48r49 = \$r54, -64 \(0xffffffc0\);;

    13c8:	36 00 c4 c8 00 00 80 17                         	muldt \$r48r49 = \$r54, -8589934592 \(0xfffffffe00000000\);;

    13d0:	f7 ff d8 c4 ff ff ff 97 ff ff ff 10             	muld \$r54 = \$r55, 2305843009213693951 \(0x1fffffffffffffff\);;

    13dc:	37 1e dc 54                                     	muld \$r55 = \$r55, \$r56;;

    13e0:	38 f0 e0 44                                     	muld \$r56 = \$r56, -64 \(0xffffffc0\);;

    13e4:	39 00 e4 c4 00 00 80 17                         	muld \$r57 = \$r57, -8589934592 \(0xfffffffe00000000\);;

    13ec:	fa ff e4 c6 ff ff ff 97 ff ff ff 10             	mulhq \$r57 = \$r58, 2305843009213693951 \(0x1fffffffffffffff\);;

    13f8:	fa 1e e8 56                                     	mulhq \$r58 = \$r58, \$r59;;

    13fc:	3b f0 ec 46                                     	mulhq \$r59 = \$r59, -64 \(0xffffffc0\);;

    1400:	3c 00 f0 c6 00 00 80 17                         	mulhq \$r60 = \$r60, -8589934592 \(0xfffffffe00000000\);;

    1408:	7c 4f c8 58                                     	mulhwq \$r50r51 = \$r60, \$r61;;

    140c:	fd ff cc ca ff ff ff 97 ff ff ff 10             	mulsudt \$r50r51 = \$r61, 2305843009213693951 \(0x1fffffffffffffff\);;

    1418:	bd 1f d4 5a                                     	mulsudt \$r52r53 = \$r61, \$r62;;

    141c:	3e f0 d4 4a                                     	mulsudt \$r52r53 = \$r62, -64 \(0xffffffc0\);;

    1420:	3e 00 dc ca 00 00 80 17                         	mulsudt \$r54r55 = \$r62, -8589934592 \(0xfffffffe00000000\);;

    1428:	ff 4f d8 5a                                     	mulsuhwq \$r54r55 = \$r63, \$r63;;

    142c:	3f 10 e0 52                                     	mulsuwdp \$r56r57 = \$r63, \$r0;;

    1430:	c0 17 e0 d2 ff ff ff 10                         	mulsuwdp \$r56r57 = \$r0, 536870911 \(0x1fffffff\);;

    1438:	41 30 00 5a                                     	mulsuwd \$r0 = \$r1, \$r1;;

    143c:	c2 37 04 da ff ff ff 10                         	mulsuwd \$r1 = \$r2, 536870911 \(0x1fffffff\);;

    1444:	c2 ff ec c9 ff ff ff 97 ff ff ff 10             	muludt \$r58r59 = \$r2, 2305843009213693951 \(0x1fffffffffffffff\);;

    1450:	c2 10 ec 59                                     	muludt \$r58r59 = \$r2, \$r3;;

    1454:	03 f0 f4 49                                     	muludt \$r60r61 = \$r3, -64 \(0xffffffc0\);;

    1458:	03 00 f4 c9 00 00 80 17                         	muludt \$r60r61 = \$r3, -8589934592 \(0xfffffffe00000000\);;

    1460:	04 41 f8 59                                     	muluhwq \$r62r63 = \$r4, \$r4;;

    1464:	44 11 f8 51                                     	muluwdp \$r62r63 = \$r4, \$r5;;

    1468:	c5 1f 00 d1 ff ff ff 10                         	muluwdp \$r0r1 = \$r5, 536870911 \(0x1fffffff\).@;;

    1470:	86 31 14 59                                     	muluwd \$r5 = \$r6, \$r6;;

    1474:	c7 37 18 d9 ff ff ff 10                         	muluwd \$r6 = \$r7, 536870911 \(0x1fffffff\);;

    147c:	07 22 1c 55                                     	mulwc.c \$r7 = \$r7, \$r8;;

    1480:	c8 ff 20 c7 ff ff ff 97 ff ff ff 10             	mulwc \$r8 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

    148c:	49 12 24 57                                     	mulwc \$r9 = \$r9, \$r9;;

    1490:	0a f0 28 47                                     	mulwc \$r10 = \$r10, -64 \(0xffffffc0\);;

    1494:	0b 00 28 c7 00 00 80 17                         	mulwc \$r10 = \$r11, -8589934592 \(0xfffffffe00000000\);;

    149c:	cb 22 00 57                                     	mulwdc.c \$r0r1 = \$r11, \$r11;;

    14a0:	0c 23 08 56                                     	mulwdc \$r2r3 = \$r12, \$r12;;

    14a4:	4d 13 08 50                                     	mulwdp \$r2r3 = \$r13, \$r13;;

    14a8:	ce 17 10 d0 ff ff ff 10                         	mulwdp \$r4r5 = \$r14, 536870911 \(0x1fffffff\);;

    14b0:	cf 33 38 58                                     	mulwd \$r14 = \$r15, \$r15;;

    14b4:	d0 37 40 d8 ff ff ff 10                         	mulwd \$r16 = \$r16, 536870911 \(0x1fffffff\);;

    14bc:	d1 ff 40 c5 ff ff ff 97 ff ff ff 10             	mulwp \$r16 = \$r17, 2305843009213693951 \(0x1fffffffffffffff\);;

    14c8:	91 14 44 55                                     	mulwp \$r17 = \$r17, \$r18;;

    14cc:	12 f0 48 45                                     	mulwp \$r18 = \$r18, -64 \(0xffffffc0\);;

    14d0:	13 00 4c c5 00 00 80 17                         	mulwp \$r19 = \$r19, -8589934592 \(0xfffffffe00000000\);;

    14d8:	86 21 10 54                                     	mulwq \$r4r5 = \$r6r7, \$r6r7;;

    14dc:	14 35 4c 5b                                     	mulw \$r19 = \$r20, \$r20;;

    14e0:	d5 37 50 db ff ff ff 10                         	mulw \$r20 = \$r21, 536870911 \(0x1fffffff\);;

    14e8:	d5 ff 54 e9 ff ff ff 87 ff ff ff 00             	nandd \$r21 = \$r21, 2305843009213693951 \(0x1fffffffffffffff\);;

    14f4:	96 05 59 79                                     	nandd \$r22 = \$r22, \$r22;;

    14f8:	17 f0 5c 69                                     	nandd \$r23 = \$r23, -64 \(0xffffffc0\);;

    14fc:	18 00 5c e9 00 00 80 07                         	nandd \$r23 = \$r24, -8589934592 \(0xfffffffe00000000\);;

    1504:	58 16 61 79                                     	nandw \$r24 = \$r24, \$r25;;

    1508:	19 f0 64 79                                     	nandw \$r25 = \$r25, -64 \(0xffffffc0\);;

    150c:	1a 00 68 f9 00 00 80 07                         	nandw \$r26 = \$r26, -8589934592 \(0xfffffffe00000000\);;

    1514:	1b 00 68 65                                     	negd \$r26 = \$r27;;

    1518:	1b 30 6d f5 00 00 00 00                         	neghq \$r27 = \$r27;;

    1520:	1c 20 71 f5 00 00 00 00                         	negwp \$r28 = \$r28;;

    1528:	1d 00 70 75                                     	negw \$r28 = \$r29;;

    152c:	dd ff 74 eb ff ff ff 87 ff ff ff 00             	niord \$r29 = \$r29, 2305843009213693951 \(0x1fffffffffffffff\);;

    1538:	9e 07 79 7b                                     	niord \$r30 = \$r30, \$r30;;

    153c:	1f f0 7c 6b                                     	niord \$r31 = \$r31, -64 \(0xffffffc0\);;

    1540:	20 00 7c eb 00 00 80 07                         	niord \$r31 = \$r32, -8589934592 \(0xfffffffe00000000\);;

    1548:	60 18 81 7b                                     	niorw \$r32 = \$r32, \$r33;;

    154c:	21 f0 84 7b                                     	niorw \$r33 = \$r33, -64 \(0xffffffc0\);;

    1550:	22 00 88 fb 00 00 80 07                         	niorw \$r34 = \$r34, -8589934592 \(0xfffffffe00000000\);;

    1558:	00 f0 03 7f                                     	nop;;

    155c:	e3 ff 88 eb ff ff ff 87 ff ff ff 00             	niord \$r34 = \$r35, 2305843009213693951 \(0x1fffffffffffffff\);;

    1568:	23 09 8d 7b                                     	niord \$r35 = \$r35, \$r36;;

    156c:	24 f0 90 6b                                     	niord \$r36 = \$r36, -64 \(0xffffffc0\);;

    1570:	25 00 94 eb 00 00 80 07                         	niord \$r37 = \$r37, -8589934592 \(0xfffffffe00000000\);;

    1578:	a6 19 95 7b                                     	niorw \$r37 = \$r38, \$r38;;

    157c:	27 f0 98 7b                                     	niorw \$r38 = \$r39, -64 \(0xffffffc0\);;

    1580:	27 00 9c fb 00 00 80 07                         	niorw \$r39 = \$r39, -8589934592 \(0xfffffffe00000000\);;

    1588:	e8 ff a0 6c                                     	notd \$r40 = \$r40;;

    158c:	e9 ff a0 7c                                     	notw \$r40 = \$r41;;

    1590:	e9 ff a4 ed ff ff ff 87 ff ff ff 00             	nxord \$r41 = \$r41, 2305843009213693951 \(0x1fffffffffffffff\);;

    159c:	aa 0a a9 7d                                     	nxord \$r42 = \$r42, \$r42;;

    15a0:	2b f0 ac 6d                                     	nxord \$r43 = \$r43, -64 \(0xffffffc0\);;

    15a4:	2c 00 ac ed 00 00 80 07                         	nxord \$r43 = \$r44, -8589934592 \(0xfffffffe00000000\);;

    15ac:	6c 1b b1 7d                                     	nxorw \$r44 = \$r44, \$r45;;

    15b0:	2d f0 b4 7d                                     	nxorw \$r45 = \$r45, -64 \(0xffffffc0\);;

    15b4:	2e 00 b8 fd 00 00 80 07                         	nxorw \$r46 = \$r46, -8589934592 \(0xfffffffe00000000\);;

    15bc:	ef ff b8 ea ff ff ff 87 ff ff ff 00             	iord \$r46 = \$r47, 2305843009213693951 \(0x1fffffffffffffff\);;

    15c8:	2f 0c bd 7a                                     	iord \$r47 = \$r47, \$r48;;

    15cc:	30 f0 c0 6a                                     	iord \$r48 = \$r48, -64 \(0xffffffc0\);;

    15d0:	31 00 c4 ea 00 00 80 07                         	iord \$r49 = \$r49, -8589934592 \(0xfffffffe00000000\);;

    15d8:	f2 ff c4 ef ff ff ff 87 ff ff ff 00             	iornd \$r49 = \$r50, 2305843009213693951 \(0x1fffffffffffffff\);;

    15e4:	f2 0c c9 7f                                     	iornd \$r50 = \$r50, \$r51;;

    15e8:	33 f0 cc 6f                                     	iornd \$r51 = \$r51, -64 \(0xffffffc0\);;

    15ec:	34 00 d0 ef 00 00 80 07                         	iornd \$r52 = \$r52, -8589934592 \(0xfffffffe00000000\);;

    15f4:	75 1d d1 7f                                     	iornw \$r52 = \$r53, \$r53;;

    15f8:	36 f0 d4 7f                                     	iornw \$r53 = \$r54, -64 \(0xffffffc0\);;

    15fc:	36 00 d8 ff 00 00 80 07                         	iornw \$r54 = \$r54, -8589934592 \(0xfffffffe00000000\);;

    1604:	f7 1d dd 7a                                     	iorw \$r55 = \$r55, \$r55;;

    1608:	38 f0 e0 7a                                     	iorw \$r56 = \$r56, -64 \(0xffffffc0\);;

    160c:	39 00 e0 fa 00 00 80 07                         	iorw \$r56 = \$r57, -8589934592 \(0xfffffffe00000000\);;

    1614:	c0 ff e4 f0 ff ff ff 87 ff ff ff 00             	pcrel \$r57 = 2305843009213693951 \(0x1fffffffffffffff\);;

    1620:	3c 00 e4 f0 00 00 00 00                         	pcrel \$r57 = -549755813888 \(0xffffff8000000000\);;

    1628:	00 f0 e8 70                                     	pcrel \$r58 = -4096 \(0xfffff000\);;

    162c:	00 00 d0 0f                                     	ret;;

    1630:	00 00 d4 0f                                     	rfe;;

    1634:	fa 8e ea 7e                                     	rolwps \$r58 = \$r58, \$r59;;

    1638:	fb 41 ee 7e                                     	rolwps \$r59 = \$r59, 7 \(0x7\);;

    163c:	3c 7f f2 7e                                     	rolw \$r60 = \$r60, \$r60;;

    1640:	fd 31 f6 7e                                     	rolw \$r61 = \$r61, 7 \(0x7\);;

    1644:	be 8f f6 7f                                     	rorwps \$r61 = \$r62, \$r62;;

    1648:	ff 41 fa 7f                                     	rorwps \$r62 = \$r63, 7 \(0x7\);;

    164c:	3f 70 fe 7f                                     	rorw \$r63 = \$r63, \$r0;;

    1650:	c0 31 02 7f                                     	rorw \$r0 = \$r0, 7 \(0x7\);;

    1654:	01 07 c8 0f                                     	rswap \$r1 = \$mmc;;

    1658:	01 00 c8 0f                                     	rswap \$r1 = \$pc;;

    165c:	01 00 c8 0f                                     	rswap \$r1 = \$pc;;

    1660:	02 24 0a 7e                                     	satdh \$r2 = \$r2;;

    1664:	03 28 0a 7e                                     	satdw \$r2 = \$r3;;

    1668:	03 61 0e 7e                                     	satd \$r3 = \$r3, \$r4;;

    166c:	c4 21 12 7e                                     	satd \$r4 = \$r4, 7 \(0x7\);;

    1670:	45 d1 15 7f                                     	sbfcd.i \$r5 = \$r5, \$r5;;

    1674:	c6 d7 19 ff ff ff ff 00                         	sbfcd.i \$r6 = \$r6, 536870911 \(0x1fffffff\);;

    167c:	c7 c1 19 7f                                     	sbfcd \$r6 = \$r7, \$r7;;

    1680:	c8 c7 1d ff ff ff ff 00                         	sbfcd \$r7 = \$r8, 536870911 \(0x1fffffff\);;

    1688:	c8 ff 20 e5 ff ff ff 87 ff ff ff 00             	sbfd \$r8 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

    1694:	49 02 25 75                                     	sbfd \$r9 = \$r9, \$r9;;

    1698:	0a f0 28 65                                     	sbfd \$r10 = \$r10, -64 \(0xffffffc0\);;

    169c:	0b 00 28 e5 00 00 80 07                         	sbfd \$r10 = \$r11, -8589934592 \(0xfffffffe00000000\);;

    16a4:	0b 33 2d 7d                                     	sbfhcp.c \$r11 = \$r11, \$r12;;

    16a8:	cd 3f 31 fd ff ff ff 00                         	sbfhcp.c \$r12 = \$r13, 536870911 \(0x1fffffff\).@;;

    16b0:	8e 33 35 75                                     	sbfhq \$r13 = \$r14, \$r14;;

    16b4:	cf 37 3d f5 ff ff ff 00                         	sbfhq \$r15 = \$r15, 536870911 \(0x1fffffff\);;

    16bc:	d0 ff 41 ef ff ff ff 87 ff ff ff 00             	sbfsd \$r16 = \$r16, 2305843009213693951 \(0x1fffffffffffffff\);;

    16c8:	51 a4 41 7f                                     	sbfsd \$r16 = \$r17, \$r17;;

    16cc:	12 f0 45 6f                                     	sbfsd \$r17 = \$r18, -64 \(0xffffffc0\);;

    16d0:	12 00 49 ef 00 00 80 07                         	sbfsd \$r18 = \$r18, -8589934592 \(0xfffffffe00000000\);;

    16d8:	d3 f4 4d 7f                                     	sbfshq \$r19 = \$r19, \$r19;;

    16dc:	d4 ff 51 ff ff ff ff 00                         	sbfshq \$r20 = \$r20, 536870911 \(0x1fffffff\).@;;

    16e4:	55 e5 51 7f                                     	sbfswp \$r20 = \$r21, \$r21;;

    16e8:	d6 e7 55 ff ff ff ff 00                         	sbfswp \$r21 = \$r22, 536870911 \(0x1fffffff\);;

    16f0:	d6 b5 59 7f                                     	sbfsw \$r22 = \$r22, \$r23;;

    16f4:	d7 b7 5d ff ff ff ff 00                         	sbfsw \$r23 = \$r23, 536870911 \(0x1fffffff\);;

    16fc:	18 46 61 7b                                     	sbfuwd \$r24 = \$r24, \$r24;;

    1700:	d9 4f 65 fb ff ff ff 00                         	sbfuwd \$r25 = \$r25, 536870911 \(0x1fffffff\).@;;

    1708:	9a 26 65 7d                                     	sbfwc.c \$r25 = \$r26, \$r26;;

    170c:	db 27 69 fd ff ff ff 00                         	sbfwc.c \$r26 = \$r27, 536870911 \(0x1fffffff\);;

    1714:	1b 47 6d 79                                     	sbfwd \$r27 = \$r27, \$r28;;

    1718:	dc 4f 71 f9 ff ff ff 00                         	sbfwd \$r28 = \$r28, 536870911 \(0x1fffffff\).@;;

    1720:	5d 27 75 75                                     	sbfwp \$r29 = \$r29, \$r29;;

    1724:	de 27 79 f5 ff ff ff 00                         	sbfwp \$r30 = \$r30, 536870911 \(0x1fffffff\);;

    172c:	df 17 79 75                                     	sbfw \$r30 = \$r31, \$r31;;

    1730:	20 f0 7c 75                                     	sbfw \$r31 = \$r32, -64 \(0xffffffc0\);;

    1734:	20 00 80 f5 00 00 80 07                         	sbfw \$r32 = \$r32, -8589934592 \(0xfffffffe00000000\);;

    173c:	61 48 85 77                                     	sbfx16d \$r33 = \$r33, \$r33;;

    1740:	e2 4f 89 f7 ff ff ff 00                         	sbfx16d \$r34 = \$r34, 536870911 \(0x1fffffff\).@;;

    1748:	e3 78 89 77                                     	sbfx16hq \$r34 = \$r35, \$r35;;

    174c:	e4 77 8d f7 ff ff ff 00                         	sbfx16hq \$r35 = \$r36, 536870911 \(0x1fffffff\);;

    1754:	64 89 91 7f                                     	sbfx16uwd \$r36 = \$r36, \$r37;;

    1758:	e5 87 95 ff ff ff ff 00                         	sbfx16uwd \$r37 = \$r37, 536870911 \(0x1fffffff\);;

    1760:	a6 89 99 77                                     	sbfx16wd \$r38 = \$r38, \$r38;;

    1764:	e7 87 9d f7 ff ff ff 00                         	sbfx16wd \$r39 = \$r39, 536870911 \(0x1fffffff\);;

    176c:	28 6a 9d 77                                     	sbfx16wp \$r39 = \$r40, \$r40;;

    1770:	e9 6f a1 f7 ff ff ff 00                         	sbfx16wp \$r40 = \$r41, 536870911 \(0x1fffffff\).@;;

    1778:	a9 5a a5 77                                     	sbfx16w \$r41 = \$r41, \$r42;;

    177c:	ea 57 a9 f7 ff ff ff 00                         	sbfx16w \$r42 = \$r42, 536870911 \(0x1fffffff\);;

    1784:	eb 4a ad 71                                     	sbfx2d \$r43 = \$r43, \$r43;;

    1788:	ec 47 b1 f1 ff ff ff 00                         	sbfx2d \$r44 = \$r44, 536870911 \(0x1fffffff\);;

    1790:	6d 7b b1 71                                     	sbfx2hq \$r44 = \$r45, \$r45;;

    1794:	ee 7f b5 f1 ff ff ff 00                         	sbfx2hq \$r45 = \$r46, 536870911 \(0x1fffffff\).@;;

    179c:	ee 8b b9 79                                     	sbfx2uwd \$r46 = \$r46, \$r47;;

    17a0:	ef 87 bd f9 ff ff ff 00                         	sbfx2uwd \$r47 = \$r47, 536870911 \(0x1fffffff\);;

    17a8:	30 8c c1 71                                     	sbfx2wd \$r48 = \$r48, \$r48;;

    17ac:	f1 87 c5 f1 ff ff ff 00                         	sbfx2wd \$r49 = \$r49, 536870911 \(0x1fffffff\);;

    17b4:	b2 6c c5 71                                     	sbfx2wp \$r49 = \$r50, \$r50;;

    17b8:	f3 67 c9 f1 ff ff ff 00                         	sbfx2wp \$r50 = \$r51, 536870911 \(0x1fffffff\);;

    17c0:	33 5d cd 71                                     	sbfx2w \$r51 = \$r51, \$r52;;

    17c4:	f4 57 d1 f1 ff ff ff 00                         	sbfx2w \$r52 = \$r52, 536870911 \(0x1fffffff\);;

    17cc:	75 4d d5 73                                     	sbfx4d \$r53 = \$r53, \$r53;;

    17d0:	f6 4f d9 f3 ff ff ff 00                         	sbfx4d \$r54 = \$r54, 536870911 \(0x1fffffff\).@;;

    17d8:	f7 7d d9 73                                     	sbfx4hq \$r54 = \$r55, \$r55;;

    17dc:	f8 77 dd f3 ff ff ff 00                         	sbfx4hq \$r55 = \$r56, 536870911 \(0x1fffffff\);;

    17e4:	78 8e e1 7b                                     	sbfx4uwd \$r56 = \$r56, \$r57;;

    17e8:	f9 87 e5 fb ff ff ff 00                         	sbfx4uwd \$r57 = \$r57, 536870911 \(0x1fffffff\);;

    17f0:	ba 8e e9 73                                     	sbfx4wd \$r58 = \$r58, \$r58;;

    17f4:	fb 87 ed f3 ff ff ff 00                         	sbfx4wd \$r59 = \$r59, 536870911 \(0x1fffffff\);;

    17fc:	3c 6f ed 73                                     	sbfx4wp \$r59 = \$r60, \$r60;;

    1800:	fd 6f f1 f3 ff ff ff 00                         	sbfx4wp \$r60 = \$r61, 536870911 \(0x1fffffff\).@;;

    1808:	bd 5f f5 73                                     	sbfx4w \$r61 = \$r61, \$r62;;

    180c:	fe 57 f9 f3 ff ff ff 00                         	sbfx4w \$r62 = \$r62, 536870911 \(0x1fffffff\);;

    1814:	ff 4f fd 75                                     	sbfx8d \$r63 = \$r63, \$r63;;

    1818:	c0 47 01 f5 ff ff ff 00                         	sbfx8d \$r0 = \$r0, 536870911 \(0x1fffffff\);;

    1820:	41 70 01 75                                     	sbfx8hq \$r0 = \$r1, \$r1;;

    1824:	c2 7f 05 f5 ff ff ff 00                         	sbfx8hq \$r1 = \$r2, 536870911 \(0x1fffffff\).@;;

    182c:	c2 80 09 7d                                     	sbfx8uwd \$r2 = \$r2, \$r3;;

    1830:	c3 87 0d fd ff ff ff 00                         	sbfx8uwd \$r3 = \$r3, 536870911 \(0x1fffffff\);;

    1838:	04 81 11 75                                     	sbfx8wd \$r4 = \$r4, \$r4;;

    183c:	c5 87 15 f5 ff ff ff 00                         	sbfx8wd \$r5 = \$r5, 536870911 \(0x1fffffff\);;

    1844:	86 61 15 75                                     	sbfx8wp \$r5 = \$r6, \$r6;;

    1848:	c7 67 19 f5 ff ff ff 00                         	sbfx8wp \$r6 = \$r7, 536870911 \(0x1fffffff\);;

    1850:	07 52 1d 75                                     	sbfx8w \$r7 = \$r7, \$r8;;

    1854:	c8 57 21 f5 ff ff ff 00                         	sbfx8w \$r8 = \$r8, 536870911 \(0x1fffffff\);;

    185c:	c9 ff 26 ee ff ff ff 87 ff ff ff 00             	sbmm8 \$r9 = \$r9, 2305843009213693951 \(0x1fffffffffffffff\);;

    1868:	8a 02 26 7e                                     	sbmm8 \$r9 = \$r10, \$r10;;

    186c:	0b f0 2a 6e                                     	sbmm8 \$r10 = \$r11, -64 \(0xffffffc0\);;

    1870:	0b 00 2e ee 00 00 80 07                         	sbmm8 \$r11 = \$r11, -8589934592 \(0xfffffffe00000000\);;

    1878:	cc ff 32 ef ff ff ff 87 ff ff ff 00             	sbmmt8 \$r12 = \$r12, 2305843009213693951 \(0x1fffffffffffffff\);;

    1884:	8d 03 36 7f                                     	sbmmt8 \$r13 = \$r13, \$r14;;

    1888:	0f f0 3a 6f                                     	sbmmt8 \$r14 = \$r15, -64 \(0xffffffc0\);;

    188c:	10 00 3e ef 00 00 80 07                         	sbmmt8 \$r15 = \$r16, -8589934592 \(0xfffffffe00000000\);;

    1894:	10 f4 47 24                                     	sb.xs \$r16\[\$r16\] = \$r17;;

    1898:	d1 ff 45 a4 ff ff ff 9f ff ff ff 18             	sb 2305843009213693951 \(0x1fffffffffffffff\)\[\$r17\] = \$r17;;

    18a4:	92 64 4b a4 00 00 00 98 00 00 80 1f             	sb.odd \$r18\? -1125899906842624 \(0xfffc000000000000\)\[\$r18\] = \$r18;;

    18b0:	d3 74 4f a4 00 00 80 1f                         	sb.even \$r19\? -8388608 \(0xff800000\)\[\$r19\] = \$r19;;

    18b8:	14 85 53 24                                     	sb.wnez \$r20\? \[\$r20\] = \$r20;;

    18bc:	15 f0 55 24                                     	sb -64 \(0xffffffc0\)\[\$r21\] = \$r21;;

    18c0:	15 00 59 a4 00 00 80 1f                         	sb -8589934592 \(0xfffffffe00000000\)\[\$r21\] = \$r22;;

    18c8:	16 00 e4 0f                                     	scall \$r22;;

    18cc:	ff 01 e0 0f                                     	scall 511 \(0x1ff\);;

    18d0:	97 e5 5f 27                                     	sd \$r22\[\$r23\] = \$r23;;

    18d4:	d7 ff 61 a7 ff ff ff 9f ff ff ff 18             	sd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r23\] = \$r24;;

    18e0:	18 96 67 a7 00 00 00 98 00 00 80 1f             	sd.weqz \$r24\? -1125899906842624 \(0xfffc000000000000\)\[\$r24\] = \$r25;;

    18ec:	59 a6 6b a7 00 00 80 1f                         	sd.wltz \$r25\? -8388608 \(0xff800000\)\[\$r25\] = \$r26;;

    18f4:	9a b6 6f 27                                     	sd.wgez \$r26\? \[\$r26\] = \$r27;;

    18f8:	1b f0 6d 27                                     	sd -64 \(0xffffffc0\)\[\$r27\] = \$r27;;

    18fc:	1c 00 71 a7 00 00 80 1f                         	sd -8589934592 \(0xfffffffe00000000\)\[\$r28\] = \$r28;;

    1904:	1c 07 c0 0f                                     	set \$mmc = \$r28;;

    1908:	dd 00 c0 0f                                     	set \$ra = \$r29;;

    190c:	5d 00 c0 0f                                     	set \$ps = \$r29;;

    1910:	5d 00 c0 0f                                     	set \$ps = \$r29;;

    1914:	9e f7 7b 25                                     	sh.xs \$r30\[\$r30\] = \$r30;;

    1918:	df ff 7d a5 ff ff ff 9f ff ff ff 18             	sh 2305843009213693951 \(0x1fffffffffffffff\)\[\$r31\] = \$r31;;

    1924:	e0 c7 83 a5 00 00 00 98 00 00 80 1f             	sh.wlez \$r31\? -1125899906842624 \(0xfffc000000000000\)\[\$r32\] = \$r32;;

    1930:	21 d8 87 a5 00 00 80 1f                         	sh.wgtz \$r32\? -8388608 \(0xff800000\)\[\$r33\] = \$r33;;

    1938:	62 08 8b 25                                     	sh.dnez \$r33\? \[\$r34\] = \$r34;;

    193c:	22 f0 8d 25                                     	sh -64 \(0xffffffc0\)\[\$r34\] = \$r35;;

    1940:	23 00 8d a5 00 00 80 1f                         	sh -8589934592 \(0xfffffffe00000000\)\[\$r35\] = \$r35;;

    1948:	00 00 a4 0f                                     	sleep;;

    194c:	24 69 92 79                                     	slld \$r36 = \$r36, \$r36;;

    1950:	e5 21 96 79                                     	slld \$r37 = \$r37, 7 \(0x7\);;

    1954:	a6 99 96 79                                     	sllhqs \$r37 = \$r38, \$r38;;

    1958:	e7 51 9a 79                                     	sllhqs \$r38 = \$r39, 7 \(0x7\);;

    195c:	27 8a 9e 79                                     	sllwps \$r39 = \$r39, \$r40;;

    1960:	e8 41 a2 79                                     	sllwps \$r40 = \$r40, 7 \(0x7\);;

    1964:	69 7a a6 79                                     	sllw \$r41 = \$r41, \$r41;;

    1968:	ea 31 aa 79                                     	sllw \$r42 = \$r42, 7 \(0x7\);;

    196c:	eb 6a aa 7c                                     	slsd \$r42 = \$r43, \$r43;;

    1970:	ec 21 ae 7c                                     	slsd \$r43 = \$r44, 7 \(0x7\);;

    1974:	6c 9b b2 7c                                     	slshqs \$r44 = \$r44, \$r45;;

    1978:	ed 51 b6 7c                                     	slshqs \$r45 = \$r45, 7 \(0x7\);;

    197c:	ae 8b ba 7c                                     	slswps \$r46 = \$r46, \$r46;;

    1980:	ef 41 be 7c                                     	slswps \$r47 = \$r47, 7 \(0x7\);;

    1984:	30 7c be 7c                                     	slsw \$r47 = \$r48, \$r48;;

    1988:	f1 31 c2 7c                                     	slsw \$r48 = \$r49, 7 \(0x7\);;

    198c:	71 ec d7 28                                     	so \$r49\[\$r49\] = \$r52r53r54r55;;

    1990:	f2 ff e5 a8 ff ff ff 9f ff ff ff 18             	so 2305843009213693951 \(0x1fffffffffffffff\)\[\$r50\] = \$r56r57r58r59;;

    199c:	b2 1c f7 a8 00 00 00 98 00 00 80 1f             	so.deqz \$r50\? -1125899906842624 \(0xfffc000000000000\)\[\$r50\] = \$r60r61r62r63;;

    19a8:	f3 2c 07 a8 00 00 80 1f                         	so.dltz \$r51\? -8388608 \(0xff800000\)\[\$r51\] = \$r0r1r2r3;;

    19b0:	f4 3c 17 28                                     	so.dgez \$r51\? \[\$r52\] = \$r4r5r6r7;;

    19b4:	34 f0 25 28                                     	so -64 \(0xffffffc0\)\[\$r52\] = \$r8r9r10r11;;

    19b8:	34 00 35 a8 00 00 80 1f                         	so -8589934592 \(0xfffffffe00000000\)\[\$r52\] = \$r12r13r14r15;;

    19c0:	75 fd 23 28                                     	sq.xs \$r53\[\$r53\] = \$r8r9;;

    19c4:	f5 ff 21 a8 ff ff ff 9f ff ff ff 18             	sq 2305843009213693951 \(0x1fffffffffffffff\)\[\$r53\] = \$r8r9;;

    19d0:	b6 4d 2b a8 00 00 00 98 00 00 80 1f             	sq.dlez \$r54\? -1125899906842624 \(0xfffc000000000000\)\[\$r54\] = \$r10r11;;

    19dc:	b7 5d 2b a8 00 00 80 1f                         	sq.dgtz \$r54\? -8388608 \(0xff800000\)\[\$r55\] = \$r10r11;;

    19e4:	f7 6d 33 28                                     	sq.odd \$r55\? \[\$r55\] = \$r12r13;;

    19e8:	38 f0 31 28                                     	sq -64 \(0xffffffc0\)\[\$r56\] = \$r12r13;;

    19ec:	38 00 39 a8 00 00 80 1f                         	sq -8589934592 \(0xfffffffe00000000\)\[\$r56\] = \$r14r15;;

    19f4:	79 6e e2 7a                                     	srad \$r56 = \$r57, \$r57;;

    19f8:	fa 21 e6 7a                                     	srad \$r57 = \$r58, 7 \(0x7\);;

    19fc:	fa 9e ea 7a                                     	srahqs \$r58 = \$r58, \$r59;;

    1a00:	fb 51 ee 7a                                     	srahqs \$r59 = \$r59, 7 \(0x7\);;

    1a04:	3c 8f f2 7a                                     	srawps \$r60 = \$r60, \$r60;;

    1a08:	fd 41 f6 7a                                     	srawps \$r61 = \$r61, 7 \(0x7\);;

    1a0c:	be 7f f6 7a                                     	sraw \$r61 = \$r62, \$r62;;

    1a10:	ff 31 fa 7a                                     	sraw \$r62 = \$r63, 7 \(0x7\);;

    1a14:	3f 60 fe 7b                                     	srld \$r63 = \$r63, \$r0;;

    1a18:	c0 21 02 7b                                     	srld \$r0 = \$r0, 7 \(0x7\);;

    1a1c:	41 90 06 7b                                     	srlhqs \$r1 = \$r1, \$r1;;

    1a20:	c2 51 0a 7b                                     	srlhqs \$r2 = \$r2, 7 \(0x7\);;

    1a24:	c3 80 0a 7b                                     	srlwps \$r2 = \$r3, \$r3;;

    1a28:	c4 41 0e 7b                                     	srlwps \$r3 = \$r4, 7 \(0x7\);;

    1a2c:	44 71 12 7b                                     	srlw \$r4 = \$r4, \$r5;;

    1a30:	c5 31 16 7b                                     	srlw \$r5 = \$r5, 7 \(0x7\);;

    1a34:	86 61 1a 78                                     	srsd \$r6 = \$r6, \$r6;;

    1a38:	c7 21 1e 78                                     	srsd \$r7 = \$r7, 7 \(0x7\);;

    1a3c:	08 92 1e 78                                     	srshqs \$r7 = \$r8, \$r8;;

    1a40:	c9 51 22 78                                     	srshqs \$r8 = \$r9, 7 \(0x7\);;

    1a44:	89 82 26 78                                     	srswps \$r9 = \$r9, \$r10;;

    1a48:	ca 41 2a 78                                     	srswps \$r10 = \$r10, 7 \(0x7\);;

    1a4c:	cb 72 2e 78                                     	srsw \$r11 = \$r11, \$r11;;

    1a50:	cc 31 32 78                                     	srsw \$r12 = \$r12, 7 \(0x7\);;

    1a54:	00 00 a8 0f                                     	stop;;

    1a58:	8d 03 35 70                                     	stsud \$r13 = \$r13, \$r14;;

    1a5c:	cf 13 39 70                                     	stsuw \$r14 = \$r15, \$r15;;

    1a60:	10 e4 43 26                                     	sw \$r16\[\$r16\] = \$r16;;

    1a64:	d1 ff 45 a6 ff ff ff 9f ff ff ff 18             	sw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r17\] = \$r17;;

    1a70:	52 74 4b a6 00 00 00 98 00 00 80 1f             	sw.even \$r17\? -1125899906842624 \(0xfffc000000000000\)\[\$r18\] = \$r18;;

    1a7c:	93 84 4f a6 00 00 80 1f                         	sw.wnez \$r18\? -8388608 \(0xff800000\)\[\$r19\] = \$r19;;

    1a84:	d4 94 53 26                                     	sw.weqz \$r19\? \[\$r20\] = \$r20;;

    1a88:	14 f0 55 26                                     	sw -64 \(0xffffffc0\)\[\$r20\] = \$r21;;

    1a8c:	15 00 55 a6 00 00 80 1f                         	sw -8589934592 \(0xfffffffe00000000\)\[\$r21\] = \$r21;;

    1a94:	16 70 5b 68                                     	sxbd \$r22 = \$r22;;

    1a98:	17 f0 5b 68                                     	sxhd \$r22 = \$r23;;

    1a9c:	17 50 5e 76                                     	sxlbhq \$r23 = \$r23;;

    1aa0:	18 40 62 76                                     	sxlhwp \$r24 = \$r24;;

    1aa4:	19 50 62 77                                     	sxmbhq \$r24 = \$r25;;

    1aa8:	19 40 66 77                                     	sxmhwp \$r25 = \$r25;;

    1aac:	1a f0 6b 69                                     	sxwd \$r26 = \$r26;;

    1ab0:	1a 00 b4 0f                                     	syncgroup \$r26;;

    1ab4:	00 00 8c 0f                                     	tlbdinval;;

    1ab8:	00 00 90 0f                                     	tlbiinval;;

    1abc:	00 00 84 0f                                     	tlbprobe;;

    1ac0:	00 00 80 0f                                     	tlbread;;

    1ac4:	00 00 88 0f                                     	tlbwrite;;

    1ac8:	1b 00 b0 0f                                     	waitit \$r27;;

    1acc:	5b 00 b8 0f                                     	wfxl \$ps, \$r27;;

    1ad0:	9b 00 b8 0f                                     	wfxl \$pcr, \$r27;;

    1ad4:	5c 00 b8 0f                                     	wfxl \$ps, \$r28;;

    1ad8:	5c 00 bc 0f                                     	wfxm \$ps, \$r28;;

    1adc:	9c 00 bc 0f                                     	wfxm \$pcr, \$r28;;

    1ae0:	9d 00 bc 0f                                     	wfxm \$pcr, \$r29;;

    1ae4:	80 4f 34 01                                     	xcopyo \$a13 = \$a4;;

    1ae8:	80 5f 34 01                                     	xcopyo \$a13 = \$a5;;

    1aec:	5d f7 37 20                                     	xlo.u.xs \$a13 = \$r29\[\$r29\];;

    1af0:	9e a7 e3 a3 00 00 00 98 00 00 80 1f             	xlo.us.wltz.q0 \$r30\? \$a56a57a58a59 = -1125899906842624 \(0xfffc000000000000\)\[\$r30\];;

    1afc:	9f b7 f7 a2 00 00 80 1f                         	xlo.u.wgez.q1 \$r30\? \$a60a61a62a63 = -8388608 \(0xff800000\)\[\$r31\];;

    1b04:	df c7 0b 23                                     	xlo.us.wlez.q2 \$r31\? \$a0a1a2a3 = \[\$r31\];;

    1b08:	20 d8 3b a0 00 00 00 98 00 00 80 1f             	xlo.u.wgtz \$r32\? \$a14 = -1125899906842624 \(0xfffc000000000000\)\[\$r32\];;

    1b14:	21 08 3b a1 00 00 80 1f                         	xlo.us.dnez \$r32\? \$a14 = -8388608 \(0xff800000\)\[\$r33\];;

    1b1c:	61 18 3b 20                                     	xlo.u.deqz \$r33\? \$a14 = \[\$r33\];;

    1b20:	a2 e8 1f 23                                     	xlo.us.q3 \$a4a5a6a7 = \$r34\[\$r34\];;

    1b24:	e2 ff 21 a2 ff ff ff 9f ff ff ff 18             	xlo.u.q0 \$a8a9a10a11 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r34\];;

    1b30:	23 f0 35 23                                     	xlo.us.q1 \$a12a13a14a15 = -64 \(0xffffffc0\)\[\$r35\];;

    1b34:	23 00 49 a2 00 00 80 1f                         	xlo.u.q2 \$a16a17a18a19 = -8589934592 \(0xfffffffe00000000\)\[\$r35\];;

    1b3c:	e3 ff 3d a1 ff ff ff 9f ff ff ff 18             	xlo.us \$a15 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r35\];;

    1b48:	24 f0 3d 20                                     	xlo.u \$a15 = -64 \(0xffffffc0\)\[\$r36\];;

    1b4c:	24 00 3d a1 00 00 80 1f                         	xlo.us \$a15 = -8589934592 \(0xfffffffe00000000\)\[\$r36\];;

    1b54:	10 64 10 02                                     	xmma484bw \$a4a5 = \$a6a7, \$a16, \$a16;;

    1b58:	11 84 1c 02                                     	xmma484subw \$a6a7 = \$a8a9, \$a16, \$a17;;

    1b5c:	51 b4 20 02                                     	xmma484ubw \$a8a9 = \$a10a11, \$a17, \$a17;;

    1b60:	92 d4 2c 02                                     	xmma484usbw \$a10a11 = \$a12a13, \$a18, \$a18;;

    1b64:	80 7f 48 00                                     	xmovefo \$r16r17r18r19 = \$a6;;

    1b68:	80 7f 5c 00                                     	xmovefo \$r20r21r22r23 = \$a7;;

    1b6c:	64 e9 06 7f                                     	movetq \$a1_lo = \$r36, \$r37;;

    1b70:	65 f9 06 7f                                     	movetq \$a1_hi = \$r37, \$r37;;

    1b74:	00 80 5d 04                                     	xmt44d \$a20a21a22a23 = \$a24a25a26a27;;

    1b78:	e6 ff 98 ec ff ff ff 87 ff ff ff 00             	xord \$r38 = \$r38, 2305843009213693951 \(0x1fffffffffffffff\);;

    1b84:	e7 09 99 7c                                     	xord \$r38 = \$r39, \$r39;;

    1b88:	28 f0 9c 6c                                     	xord \$r39 = \$r40, -64 \(0xffffffc0\);;

    1b8c:	28 00 a0 ec 00 00 80 07                         	xord \$r40 = \$r40, -8589934592 \(0xfffffffe00000000\);;

    1b94:	69 1a a5 7c                                     	xorw \$r41 = \$r41, \$r41;;

    1b98:	2a f0 a8 7c                                     	xorw \$r42 = \$r42, -64 \(0xffffffc0\);;

    1b9c:	2b 00 a8 fc 00 00 80 07                         	xorw \$r42 = \$r43, -8589934592 \(0xfffffffe00000000\);;

    1ba4:	eb fa 4b 29                                     	xso.xs \$r43\[\$r43\] = \$a18;;

    1ba8:	ec ff 4d a9 ff ff ff 9f ff ff ff 18             	xso 2305843009213693951 \(0x1fffffffffffffff\)\[\$r44\] = \$a19;;

    1bb4:	2c 2b 4f a9 00 00 00 98 00 00 80 1f             	xso.dltz \$r44\? -1125899906842624 \(0xfffc000000000000\)\[\$r44\] = \$a19;;

    1bc0:	6d 3b 4f a9 00 00 80 1f                         	xso.dgez \$r45\? -8388608 \(0xff800000\)\[\$r45\] = \$a19;;

    1bc8:	6e 4b 53 29                                     	xso.dlez \$r45\? \[\$r46\] = \$a20;;

    1bcc:	2e f0 51 29                                     	xso -64 \(0xffffffc0\)\[\$r46\] = \$a20;;

    1bd0:	2e 00 51 a9 00 00 80 1f                         	xso -8589934592 \(0xfffffffe00000000\)\[\$r46\] = \$a20;;

    1bd8:	ef 3f bc 78                                     	zxbd \$r47 = \$r47;;

    1bdc:	30 f0 bf 64                                     	zxhd \$r47 = \$r48;;

    1be0:	f0 ff c0 78                                     	zxwd \$r48 = \$r48;;


