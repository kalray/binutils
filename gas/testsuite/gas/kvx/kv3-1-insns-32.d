#as: -m32 -march=kv3-1
#objdump: -d
.*\/kv3-1-insns-32.o:     file format elf32-kvx

Disassembly of section .text:

00000000 <main>:
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

     490:	00 00 80 1f                                     	call fe000490 <main\+0xfe000490>;;

     494:	11 20 46 72                                     	cbsd \$r17 = \$r17;;

     498:	12 40 4a 72                                     	cbswp \$r18 = \$r18;;

     49c:	13 30 4a 72                                     	cbsw \$r18 = \$r19;;

     4a0:	13 00 78 0a                                     	cb.dlez \$r19\? ffff84a0 <main\+0xffff84a0>;;

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

     6fc:	d1 ff 44 ec ff ff ff 87 ff ff ff 00             	eord \$r17 = \$r17, 2305843009213693951 \(0x1fffffffffffffff\);;

     708:	92 04 49 7c                                     	eord \$r18 = \$r18, \$r18;;

     70c:	13 f0 4c 6c                                     	eord \$r19 = \$r19, -64 \(0xffffffc0\);;

     710:	14 00 4c ec 00 00 80 07                         	eord \$r19 = \$r20, -8589934592 \(0xfffffffe00000000\);;

     718:	54 15 51 7c                                     	eorw \$r20 = \$r20, \$r21;;

     71c:	15 f0 54 7c                                     	eorw \$r21 = \$r21, -64 \(0xffffffc0\);;

     720:	16 00 58 fc 00 00 80 07                         	eorw \$r22 = \$r22, -8589934592 \(0xfffffffe00000000\);;

     728:	00 00 00 00                                     	errop;;

     72c:	d7 71 5b 68                                     	extfs \$r22 = \$r23, 7 \(0x7\), 7 \(0x7\);;

     730:	d7 71 5f 64                                     	extfz \$r23 = \$r23, 7 \(0x7\), 7 \(0x7\);;

     734:	18 20 63 71                                     	fabsd \$r24 = \$r24;;

     738:	19 20 63 77                                     	fabshq \$r24 = \$r25;;

     73c:	19 20 67 75                                     	fabswp \$r25 = \$r25;;

     740:	1a 20 6b 73                                     	fabsw \$r26 = \$r26;;

     744:	24 09 8b 5d                                     	fadddc.c.rn \$r34r35 = \$r36r37, \$r36r37;;

     748:	26 9a 9b 5c                                     	fadddp.ru.s \$r38r39 = \$r38r39, \$r40r41;;

     74c:	aa 2a a3 5c                                     	fadddp.rd \$r40r41 = \$r42r43, \$r42r43;;

     750:	db ff 6a c0 ff ff ff 97 ff ff ff 10             	faddd \$r26 = \$r27, 2305843009213693951 \(0x1fffffffffffffff\);;

     75c:	1b f0 6e 40                                     	faddd \$r27 = \$r27, -64 \(0xffffffc0\);;

     760:	1c 00 72 c0 00 00 80 17                         	faddd \$r28 = \$r28, -8589934592 \(0xfffffffe00000000\);;

     768:	5d b7 72 50                                     	faddd.rz.s \$r28 = \$r29, \$r29;;

     76c:	de ff 76 c2 ff ff ff 97 ff ff ff 10             	faddhq \$r29 = \$r30, 2305843009213693951 \(0x1fffffffffffffff\);;

     778:	1e f0 7a 42                                     	faddhq \$r30 = \$r30, -64 \(0xffffffc0\);;

     77c:	1f 00 7e c2 00 00 80 17                         	faddhq \$r31 = \$r31, -8589934592 \(0xfffffffe00000000\);;

     784:	20 48 7e 52                                     	faddhq.rna \$r31 = \$r32, \$r32;;

     788:	e1 ff 82 c3 ff ff ff 97 ff ff ff 10             	faddwc.c \$r32 = \$r33, 2305843009213693951 \(0x1fffffffffffffff\);;

     794:	21 f0 86 43                                     	faddwc.c \$r33 = \$r33, -64 \(0xffffffc0\);;

     798:	22 00 8a c3 00 00 80 17                         	faddwc.c \$r34 = \$r34, -8589934592 \(0xfffffffe00000000\);;

     7a0:	e3 d8 8a 53                                     	faddwc.c.rnz.s \$r34 = \$r35, \$r35;;

     7a4:	ac 6b b7 59                                     	faddwcp.c.ro \$r44r45 = \$r44r45, \$r46r47;;

     7a8:	30 fc bf 58                                     	faddwq.s \$r46r47 = \$r48r49, \$r48r49;;

     7ac:	24 09 8e 51                                     	faddwp.rn \$r35 = \$r36, \$r36;;

     7b0:	e5 ff 92 c1 ff ff ff 97 ff ff ff 10             	faddwp \$r36 = \$r37, 2305843009213693951 \(0x1fffffffffffffff\);;

     7bc:	25 f0 96 41                                     	faddwp \$r37 = \$r37, -64 \(0xffffffc0\);;

     7c0:	26 00 9a c1 00 00 80 17                         	faddwp \$r38 = \$r38, -8589934592 \(0xfffffffe00000000\);;

     7c8:	e7 99 9a 51                                     	faddwp.ru.s \$r38 = \$r39, \$r39;;

     7cc:	32 2d cf 58                                     	faddwq.rd \$r50r51 = \$r50r51, \$r52r53;;

     7d0:	e8 ff 9e cc ff ff ff 97 ff ff ff 10             	faddw \$r39 = \$r40, 2305843009213693951 \(0x1fffffffffffffff\);;

     7dc:	28 f0 a2 4c                                     	faddw \$r40 = \$r40, -64 \(0xffffffc0\);;

     7e0:	29 00 a6 cc 00 00 80 17                         	faddw \$r41 = \$r41, -8589934592 \(0xfffffffe00000000\);;

     7e8:	aa ba a6 5c                                     	faddw.rz.s \$r41 = \$r42, \$r42;;

     7ec:	34 50 ab 71                                     	fcdivd \$r42 = \$r52r53;;

     7f0:	36 58 af 75                                     	fcdivwp.s \$r43 = \$r54r55;;

     7f4:	36 50 af 73                                     	fcdivw \$r43 = \$r54r55;;

     7f8:	2c 0b af 78                                     	fcompd.one \$r43 = \$r44, \$r44;;

     7fc:	ed 07 b3 f9 ff ff ff 00                         	fcompd.ueq \$r44 = \$r45, 536870911 \(0x1fffffff\);;

     804:	ad 1b b7 7a                                     	fcompnhq.oeq \$r45 = \$r45, \$r46;;

     808:	ee 17 bb fb ff ff ff 00                         	fcompnhq.une \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     810:	ef 1b bf 74                                     	fcompnwp.olt \$r47 = \$r47, \$r47;;

     814:	f0 1f c3 f5 ff ff ff 00                         	fcompnwp.uge \$r48 = \$r48, 536870911 \(0x1fffffff\).@;;

     81c:	71 0c c3 76                                     	fcompw.oge \$r48 = \$r49, \$r49;;

     820:	f2 07 c7 f7 ff ff ff 00                         	fcompw.ult \$r49 = \$r50, 536870911 \(0x1fffffff\);;

     828:	b8 ce e7 5c                                     	fdot2wdp.rna.s \$r56r57 = \$r56r57, \$r58r59;;

     82c:	f2 ff c9 cd ff ff ff 97 ff ff ff 10             	fdot2wd \$r50 = \$r50, 2305843009213693951 \(0x1fffffffffffffff\);;

     838:	33 f0 cd 4d                                     	fdot2wd \$r51 = \$r51, -64 \(0xffffffc0\);;

     83c:	34 00 cd cd 00 00 80 17                         	fdot2wd \$r51 = \$r52, -8589934592 \(0xfffffffe00000000\);;

     844:	74 5d d1 5d                                     	fdot2wd.rnz \$r52 = \$r52, \$r53;;

     848:	3c ef ef 5d                                     	fdot2wzp.ro.s \$r58r59 = \$r60r61, \$r60r61;;

     84c:	f5 ff d5 cc ff ff ff 97 ff ff ff 10             	fdot2w \$r53 = \$r53, 2305843009213693951 \(0x1fffffffffffffff\);;

     858:	36 f0 d9 4c                                     	fdot2w \$r54 = \$r54, -64 \(0xffffffc0\);;

     85c:	37 00 d9 cc 00 00 80 17                         	fdot2w \$r54 = \$r55, -8589934592 \(0xfffffffe00000000\);;

     864:	37 7e dd 5c                                     	fdot2w \$r55 = \$r55, \$r56;;

     868:	00 00 cd 3f                                     	fence;;

     86c:	f8 ff e1 c0 ff ff ff 97 ff ff ff 10             	ffmad \$r56 = \$r56, 2305843009213693951 \(0x1fffffffffffffff\);;

     878:	39 f0 e5 40                                     	ffmad \$r57 = \$r57, -64 \(0xffffffc0\);;

     87c:	3a 00 e5 c0 00 00 80 17                         	ffmad \$r57 = \$r58, -8589934592 \(0xfffffffe00000000\);;

     884:	fa 8e e9 50                                     	ffmad.rn.s \$r58 = \$r58, \$r59;;

     888:	fb ff ed c3 ff ff ff 97 ff ff ff 10             	ffmahq \$r59 = \$r59, 2305843009213693951 \(0x1fffffffffffffff\);;

     894:	3c f0 f1 43                                     	ffmahq \$r60 = \$r60, -64 \(0xffffffc0\);;

     898:	3d 00 f1 c3 00 00 80 17                         	ffmahq \$r60 = \$r61, -8589934592 \(0xfffffffe00000000\);;

     8a0:	bd 1f f5 53                                     	ffmahq.ru \$r61 = \$r61, \$r62;;

     8a4:	fe ff fb c1 ff ff ff 97 ff ff ff 10             	ffmahwq \$r62r63 = \$r62, 2305843009213693951 \(0x1fffffffffffffff\);;

     8b0:	3e f0 fb 41                                     	ffmahwq \$r62r63 = \$r62, -64 \(0xffffffc0\);;

     8b4:	3f 00 03 c1 00 00 80 17                         	ffmahwq \$r0r1 = \$r63, -8589934592 \(0xfffffffe00000000\);;

     8bc:	ff af 03 51                                     	ffmahwq.rd.s \$r0r1 = \$r63, \$r63;;

     8c0:	c0 ff 02 c8 ff ff ff 97 ff ff ff 10             	ffmahw \$r0 = \$r0, 2305843009213693951 \(0x1fffffffffffffff\);;

     8cc:	01 f0 02 48                                     	ffmahw \$r0 = \$r1, -64 \(0xffffffc0\);;

     8d0:	01 00 06 c8 00 00 80 17                         	ffmahw \$r1 = \$r1, -8589934592 \(0xfffffffe00000000\);;

     8d8:	82 30 0a 58                                     	ffmahw.rz \$r2 = \$r2, \$r2;;

     8dc:	c3 ff 0b c0 ff ff ff 97 ff ff ff 10             	ffmawdp \$r2r3 = \$r3, 2305843009213693951 \(0x1fffffffffffffff\);;

     8e8:	03 f0 0b 40                                     	ffmawdp \$r2r3 = \$r3, -64 \(0xffffffc0\);;

     8ec:	03 00 13 c0 00 00 80 17                         	ffmawdp \$r4r5 = \$r3, -8589934592 \(0xfffffffe00000000\);;

     8f4:	04 c1 13 50                                     	ffmawdp.rna.s \$r4r5 = \$r4, \$r4;;

     8f8:	c5 ff 11 c1 ff ff ff 97 ff ff ff 10             	ffmawd \$r4 = \$r5, 2305843009213693951 \(0x1fffffffffffffff\);;

     904:	05 f0 15 41                                     	ffmawd \$r5 = \$r5, -64 \(0xffffffc0\);;

     908:	06 00 19 c1 00 00 80 17                         	ffmawd \$r6 = \$r6, -8589934592 \(0xfffffffe00000000\);;

     910:	c7 51 19 51                                     	ffmawd.rnz \$r6 = \$r7, \$r7;;

     914:	c8 ff 1d c2 ff ff ff 97 ff ff ff 10             	ffmawp \$r7 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

     920:	08 f0 21 42                                     	ffmawp \$r8 = \$r8, -64 \(0xffffffc0\);;

     924:	09 00 25 c2 00 00 80 17                         	ffmawp \$r9 = \$r9, -8589934592 \(0xfffffffe00000000\);;

     92c:	8a e2 25 52                                     	ffmawp.ro.s \$r9 = \$r10, \$r10;;

     930:	cb ff 2a c9 ff ff ff 97 ff ff ff 10             	ffmaw \$r10 = \$r11, 2305843009213693951 \(0x1fffffffffffffff\);;

     93c:	0b f0 2e 49                                     	ffmaw \$r11 = \$r11, -64 \(0xffffffc0\);;

     940:	0c 00 32 c9 00 00 80 17                         	ffmaw \$r12 = \$r12, -8589934592 \(0xfffffffe00000000\);;

     948:	8d 73 36 59                                     	ffmaw \$r13 = \$r13, \$r14;;

     94c:	cf ff 39 c4 ff ff ff 97 ff ff ff 10             	ffmsd \$r14 = \$r15, 2305843009213693951 \(0x1fffffffffffffff\);;

     958:	10 f0 3d 44                                     	ffmsd \$r15 = \$r16, -64 \(0xffffffc0\);;

     95c:	10 00 41 c4 00 00 80 17                         	ffmsd \$r16 = \$r16, -8589934592 \(0xfffffffe00000000\);;

     964:	51 84 45 54                                     	ffmsd.rn.s \$r17 = \$r17, \$r17;;

     968:	d2 ff 49 c7 ff ff ff 97 ff ff ff 10             	ffmshq \$r18 = \$r18, 2305843009213693951 \(0x1fffffffffffffff\);;

     974:	13 f0 49 47                                     	ffmshq \$r18 = \$r19, -64 \(0xffffffc0\);;

     978:	13 00 4d c7 00 00 80 17                         	ffmshq \$r19 = \$r19, -8589934592 \(0xfffffffe00000000\);;

     980:	14 15 51 57                                     	ffmshq.ru \$r20 = \$r20, \$r20;;

     984:	d5 ff 1b c3 ff ff ff 97 ff ff ff 10             	ffmshwq \$r6r7 = \$r21, 2305843009213693951 \(0x1fffffffffffffff\);;

     990:	15 f0 1b 43                                     	ffmshwq \$r6r7 = \$r21, -64 \(0xffffffc0\);;

     994:	15 00 23 c3 00 00 80 17                         	ffmshwq \$r8r9 = \$r21, -8589934592 \(0xfffffffe00000000\);;

     99c:	96 a5 23 53                                     	ffmshwq.rd.s \$r8r9 = \$r22, \$r22;;

     9a0:	d7 ff 5a ca ff ff ff 97 ff ff ff 10             	ffmshw \$r22 = \$r23, 2305843009213693951 \(0x1fffffffffffffff\);;

     9ac:	17 f0 5e 4a                                     	ffmshw \$r23 = \$r23, -64 \(0xffffffc0\);;

     9b0:	18 00 62 ca 00 00 80 17                         	ffmshw \$r24 = \$r24, -8589934592 \(0xfffffffe00000000\);;

     9b8:	59 36 62 5a                                     	ffmshw.rz \$r24 = \$r25, \$r25;;

     9bc:	d9 ff 2b c2 ff ff ff 97 ff ff ff 10             	ffmswdp \$r10r11 = \$r25, 2305843009213693951 \(0x1fffffffffffffff\);;

     9c8:	1a f0 2b 42                                     	ffmswdp \$r10r11 = \$r26, -64 \(0xffffffc0\);;

     9cc:	1a 00 33 c2 00 00 80 17                         	ffmswdp \$r12r13 = \$r26, -8589934592 \(0xfffffffe00000000\);;

     9d4:	da c6 33 52                                     	ffmswdp.rna.s \$r12r13 = \$r26, \$r27;;

     9d8:	db ff 6d c5 ff ff ff 97 ff ff ff 10             	ffmswd \$r27 = \$r27, 2305843009213693951 \(0x1fffffffffffffff\);;

     9e4:	1c f0 71 45                                     	ffmswd \$r28 = \$r28, -64 \(0xffffffc0\);;

     9e8:	1d 00 71 c5 00 00 80 17                         	ffmswd \$r28 = \$r29, -8589934592 \(0xfffffffe00000000\);;

     9f0:	9d 57 75 55                                     	ffmswd.rnz \$r29 = \$r29, \$r30;;

     9f4:	de ff 79 c6 ff ff ff 97 ff ff ff 10             	ffmswp \$r30 = \$r30, 2305843009213693951 \(0x1fffffffffffffff\);;

     a00:	1f f0 7d 46                                     	ffmswp \$r31 = \$r31, -64 \(0xffffffc0\);;

     a04:	20 00 7d c6 00 00 80 17                         	ffmswp \$r31 = \$r32, -8589934592 \(0xfffffffe00000000\);;

     a0c:	60 e8 81 56                                     	ffmswp.ro.s \$r32 = \$r32, \$r33;;

     a10:	e1 ff 86 cb ff ff ff 97 ff ff ff 10             	ffmsw \$r33 = \$r33, 2305843009213693951 \(0x1fffffffffffffff\);;

     a1c:	22 f0 8a 4b                                     	ffmsw \$r34 = \$r34, -64 \(0xffffffc0\);;

     a20:	23 00 8a cb 00 00 80 17                         	ffmsw \$r34 = \$r35, -8589934592 \(0xfffffffe00000000\);;

     a28:	23 79 8e 5b                                     	ffmsw \$r35 = \$r35, \$r36;;

     a2c:	e4 81 93 46                                     	fixedd.rn.s \$r36 = \$r36, 7 \(0x7\);;

     a30:	e5 11 97 47                                     	fixedud.ru \$r37 = \$r37, 7 \(0x7\);;

     a34:	e6 a1 97 4f                                     	fixeduwp.rd.s \$r37 = \$r38, 7 \(0x7\);;

     a38:	e6 31 9b 4b                                     	fixeduw.rz \$r38 = \$r38, 7 \(0x7\);;

     a3c:	e7 c1 9f 4e                                     	fixedwp.rna.s \$r39 = \$r39, 7 \(0x7\);;

     a40:	e8 51 9f 4a                                     	fixedw.rnz \$r39 = \$r40, 7 \(0x7\);;

     a44:	e8 e1 a3 44                                     	floatd.ro.s \$r40 = \$r40, 7 \(0x7\);;

     a48:	e9 71 a7 45                                     	floatud \$r41 = \$r41, 7 \(0x7\);;

     a4c:	ea 81 a7 4d                                     	floatuwp.rn.s \$r41 = \$r42, 7 \(0x7\);;

     a50:	ea 11 ab 49                                     	floatuw.ru \$r42 = \$r42, 7 \(0x7\);;

     a54:	eb a1 af 4c                                     	floatwp.rd.s \$r43 = \$r43, 7 \(0x7\);;

     a58:	ec 31 af 48                                     	floatw.rz \$r43 = \$r44, 7 \(0x7\);;

     a5c:	6c 8b b3 71                                     	fmaxd \$r44 = \$r44, \$r45;;

     a60:	ad 8b b7 77                                     	fmaxhq \$r45 = \$r45, \$r46;;

     a64:	ee 8b bb 75                                     	fmaxwp \$r46 = \$r46, \$r47;;

     a68:	2f 8c bf 73                                     	fmaxw \$r47 = \$r47, \$r48;;

     a6c:	70 8c c3 70                                     	fmind \$r48 = \$r48, \$r49;;

     a70:	b1 8c c7 76                                     	fminhq \$r49 = \$r49, \$r50;;

     a74:	f2 8c cb 74                                     	fminwp \$r50 = \$r50, \$r51;;

     a78:	33 8d cf 72                                     	fminw \$r51 = \$r51, \$r52;;

     a7c:	34 cd 3f 54                                     	fmm212w.rna.s \$r14r15 = \$r52, \$r52;;

     a80:	75 5d 3b 54                                     	fmma212w.rnz \$r14r15 = \$r53, \$r53;;

     a84:	41 00 00 03                                     	fmma242hw0 \$a0_lo = \$a0a1, \$a1, \$a1;;

     a88:	82 10 00 03                                     	fmma242hw1 \$a0_hi = \$a0a1, \$a2, \$a2;;

     a8c:	83 20 04 03                                     	fmma242hw2 \$a1_lo = \$a2a3, \$a2, \$a3;;

     a90:	c3 30 04 03                                     	fmma242hw3 \$a1_hi = \$a2a3, \$a3, \$a3;;

     a94:	b5 ed 43 56                                     	fmms212w.ro.s \$r16r17 = \$r53, \$r54;;

     a98:	f6 ff d9 c8 ff ff ff 97 ff ff ff 10             	fmuld \$r54 = \$r54, 2305843009213693951 \(0x1fffffffffffffff\);;

     aa4:	37 f0 dd 48                                     	fmuld \$r55 = \$r55, -64 \(0xffffffc0\);;

     aa8:	38 00 dd c8 00 00 80 17                         	fmuld \$r55 = \$r56, -8589934592 \(0xfffffffe00000000\);;

     ab0:	78 7e e1 58                                     	fmuld \$r56 = \$r56, \$r57;;

     ab4:	f9 ff e5 cb ff ff ff 97 ff ff ff 10             	fmulhq \$r57 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

     ac0:	3a f0 e9 4b                                     	fmulhq \$r58 = \$r58, -64 \(0xffffffc0\);;

     ac4:	3b 00 e9 cb 00 00 80 17                         	fmulhq \$r58 = \$r59, -8589934592 \(0xfffffffe00000000\);;

     acc:	3b 8f ed 5b                                     	fmulhq.rn.s \$r59 = \$r59, \$r60;;

     ad0:	fc ff 47 c1 ff ff ff 97 ff ff ff 10             	fmulhwq \$r16r17 = \$r60, 2305843009213693951 \(0x1fffffffffffffff\);;

     adc:	3c f0 4f 41                                     	fmulhwq \$r18r19 = \$r60, -64 \(0xffffffc0\);;

     ae0:	3d 00 4f c1 00 00 80 17                         	fmulhwq \$r18r19 = \$r61, -8589934592 \(0xfffffffe00000000\);;

     ae8:	7d 1f 57 51                                     	fmulhwq.ru \$r20r21 = \$r61, \$r61;;

     aec:	fe ff fa cf ff ff ff 97 ff ff ff 10             	fmulhw \$r62 = \$r62, 2305843009213693951 \(0x1fffffffffffffff\);;

     af8:	3f f0 fa 4f                                     	fmulhw \$r62 = \$r63, -64 \(0xffffffc0\);;

     afc:	3f 00 fe cf 00 00 80 17                         	fmulhw \$r63 = \$r63, -8589934592 \(0xfffffffe00000000\);;

     b04:	00 a0 02 5f                                     	fmulhw.rd.s \$r0 = \$r0, \$r0;;

     b08:	c1 ff 05 cf ff ff ff 97 ff ff ff 10             	fmulwc.c \$r1 = \$r1, 2305843009213693951 \(0x1fffffffffffffff\);;

     b14:	02 f0 05 4f                                     	fmulwc.c \$r1 = \$r2, -64 \(0xffffffc0\);;

     b18:	02 00 09 cf 00 00 80 17                         	fmulwc.c \$r2 = \$r2, -8589934592 \(0xfffffffe00000000\);;

     b20:	c3 30 0d 5f                                     	fmulwc.c.rz \$r3 = \$r3, \$r3;;

     b24:	c4 ff 11 ce ff ff ff 97 ff ff ff 10             	fmulwc \$r4 = \$r4, 2305843009213693951 \(0x1fffffffffffffff\);;

     b30:	05 f0 11 4e                                     	fmulwc \$r4 = \$r5, -64 \(0xffffffc0\);;

     b34:	05 00 15 ce 00 00 80 17                         	fmulwc \$r5 = \$r5, -8589934592 \(0xfffffffe00000000\);;

     b3c:	86 c1 19 5e                                     	fmulwc.rna.s \$r6 = \$r6, \$r6;;

     b40:	c7 ff 57 c3 ff ff ff 97 ff ff ff 10             	fmulwdc.c \$r20r21 = \$r7, 2305843009213693951 \(0x1fffffffffffffff\);;

     b4c:	07 f0 5f 43                                     	fmulwdc.c \$r22r23 = \$r7, -64 \(0xffffffc0\);;

     b50:	07 00 5f c3 00 00 80 17                         	fmulwdc.c \$r22r23 = \$r7, -8589934592 \(0xfffffffe00000000\);;

     b58:	08 52 67 53                                     	fmulwdc.c.rnz \$r24r25 = \$r8, \$r8;;

     b5c:	c8 ff 67 c2 ff ff ff 97 ff ff ff 10             	fmulwdc \$r24r25 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

     b68:	09 f0 6f 42                                     	fmulwdc \$r26r27 = \$r9, -64 \(0xffffffc0\);;

     b6c:	09 00 6f c2 00 00 80 17                         	fmulwdc \$r26r27 = \$r9, -8589934592 \(0xfffffffe00000000\);;

     b74:	89 e2 77 52                                     	fmulwdc.ro.s \$r28r29 = \$r9, \$r10;;

     b78:	ca ff 77 c0 ff ff ff 97 ff ff ff 10             	fmulwdp \$r28r29 = \$r10, 2305843009213693951 \(0x1fffffffffffffff\);;

     b84:	0a f0 7f 40                                     	fmulwdp \$r30r31 = \$r10, -64 \(0xffffffc0\);;

     b88:	0b 00 7f c0 00 00 80 17                         	fmulwdp \$r30r31 = \$r11, -8589934592 \(0xfffffffe00000000\);;

     b90:	cb 72 87 50                                     	fmulwdp \$r32r33 = \$r11, \$r11;;

     b94:	cc ff 31 c9 ff ff ff 97 ff ff ff 10             	fmulwd \$r12 = \$r12, 2305843009213693951 \(0x1fffffffffffffff\);;

     ba0:	0d f0 35 49                                     	fmulwd \$r13 = \$r13, -64 \(0xffffffc0\);;

     ba4:	0e 00 39 c9 00 00 80 17                         	fmulwd \$r14 = \$r14, -8589934592 \(0xfffffffe00000000\);;

     bac:	0f 84 3d 59                                     	fmulwd.rn.s \$r15 = \$r15, \$r16;;

     bb0:	d0 ff 41 ca ff ff ff 97 ff ff ff 10             	fmulwp \$r16 = \$r16, 2305843009213693951 \(0x1fffffffffffffff\);;

     bbc:	11 f0 45 4a                                     	fmulwp \$r17 = \$r17, -64 \(0xffffffc0\);;

     bc0:	12 00 45 ca 00 00 80 17                         	fmulwp \$r17 = \$r18, -8589934592 \(0xfffffffe00000000\);;

     bc8:	d2 14 49 5a                                     	fmulwp.ru \$r18 = \$r18, \$r19;;

     bcc:	a2 a8 87 5e                                     	fmulwq.rd.s \$r32r33 = \$r34r35, \$r34r35;;

     bd0:	d3 ff 4e ce ff ff ff 97 ff ff ff 10             	fmulw \$r19 = \$r19, 2305843009213693951 \(0x1fffffffffffffff\);;

     bdc:	14 f0 52 4e                                     	fmulw \$r20 = \$r20, -64 \(0xffffffc0\);;

     be0:	15 00 52 ce 00 00 80 17                         	fmulw \$r20 = \$r21, -8589934592 \(0xfffffffe00000000\);;

     be8:	95 35 56 5e                                     	fmulw.rz \$r21 = \$r21, \$r22;;

     bec:	40 4c 10 07                                     	fnarrow44wh.rna.s \$a4 = \$a4a5;;

     bf0:	24 65 5b 7c                                     	fnarrowdwp.rnz \$r22 = \$r36r37;;

     bf4:	17 6e 5b 78                                     	fnarrowdw.ro.s \$r22 = \$r23;;

     bf8:	24 67 5f 7e                                     	fnarrowwhq \$r23 = \$r36r37;;

     bfc:	18 68 5f 7a                                     	fnarrowwh.rn.s \$r23 = \$r24;;

     c00:	18 20 63 70                                     	fnegd \$r24 = \$r24;;

     c04:	19 20 67 76                                     	fneghq \$r25 = \$r25;;

     c08:	1a 20 67 74                                     	fnegwp \$r25 = \$r26;;

     c0c:	1a 20 6b 72                                     	fnegw \$r26 = \$r26;;

     c10:	1b 61 6f 72                                     	frecw.ru \$r27 = \$r27;;

     c14:	1c 6a 6f 73                                     	frsrw.rd.s \$r27 = \$r28;;

     c18:	26 3a 9b 5f                                     	fsbfdc.c.rz \$r38r39 = \$r38r39, \$r40r41;;

     c1c:	aa ca a3 5e                                     	fsbfdp.rna.s \$r40r41 = \$r42r43, \$r42r43;;

     c20:	ac 5b b3 5e                                     	fsbfdp.rnz \$r44r45 = \$r44r45, \$r46r47;;

     c24:	dc ff 72 c4 ff ff ff 97 ff ff ff 10             	fsbfd \$r28 = \$r28, 2305843009213693951 \(0x1fffffffffffffff\);;

     c30:	1d f0 76 44                                     	fsbfd \$r29 = \$r29, -64 \(0xffffffc0\);;

     c34:	1e 00 76 c4 00 00 80 17                         	fsbfd \$r29 = \$r30, -8589934592 \(0xfffffffe00000000\);;

     c3c:	de e7 7a 54                                     	fsbfd.ro.s \$r30 = \$r30, \$r31;;

     c40:	df ff 7e c6 ff ff ff 97 ff ff ff 10             	fsbfhq \$r31 = \$r31, 2305843009213693951 \(0x1fffffffffffffff\);;

     c4c:	20 f0 82 46                                     	fsbfhq \$r32 = \$r32, -64 \(0xffffffc0\);;

     c50:	21 00 82 c6 00 00 80 17                         	fsbfhq \$r32 = \$r33, -8589934592 \(0xfffffffe00000000\);;

     c58:	a1 78 86 56                                     	fsbfhq \$r33 = \$r33, \$r34;;

     c5c:	e2 ff 8a c7 ff ff ff 97 ff ff ff 10             	fsbfwc.c \$r34 = \$r34, 2305843009213693951 \(0x1fffffffffffffff\);;

     c68:	23 f0 8e 47                                     	fsbfwc.c \$r35 = \$r35, -64 \(0xffffffc0\);;

     c6c:	24 00 8e c7 00 00 80 17                         	fsbfwc.c \$r35 = \$r36, -8589934592 \(0xfffffffe00000000\);;

     c74:	64 89 92 57                                     	fsbfwc.c.rn.s \$r36 = \$r36, \$r37;;

     c78:	30 1c bf 5b                                     	fsbfwcp.c.ru \$r46r47 = \$r48r49, \$r48r49;;

     c7c:	32 ad cf 5a                                     	fsbfwq.rd.s \$r50r51 = \$r50r51, \$r52r53;;

     c80:	a5 39 96 55                                     	fsbfwp.rz \$r37 = \$r37, \$r38;;

     c84:	e6 ff 9a c5 ff ff ff 97 ff ff ff 10             	fsbfwp \$r38 = \$r38, 2305843009213693951 \(0x1fffffffffffffff\);;

     c90:	27 f0 9e 45                                     	fsbfwp \$r39 = \$r39, -64 \(0xffffffc0\);;

     c94:	28 00 9e c5 00 00 80 17                         	fsbfwp \$r39 = \$r40, -8589934592 \(0xfffffffe00000000\);;

     c9c:	68 ca a2 55                                     	fsbfwp.rna.s \$r40 = \$r40, \$r41;;

     ca0:	b6 5d d7 5a                                     	fsbfwq.rnz \$r52r53 = \$r54r55, \$r54r55;;

     ca4:	e9 ff a6 cd ff ff ff 97 ff ff ff 10             	fsbfw \$r41 = \$r41, 2305843009213693951 \(0x1fffffffffffffff\);;

     cb0:	2a f0 aa 4d                                     	fsbfw \$r42 = \$r42, -64 \(0xffffffc0\);;

     cb4:	2b 00 aa cd 00 00 80 17                         	fsbfw \$r42 = \$r43, -8589934592 \(0xfffffffe00000000\);;

     cbc:	2b eb ae 5d                                     	fsbfw.ro.s \$r43 = \$r43, \$r44;;

     cc0:	00 47 10 07                                     	fscalewv \$a4 = \$a4;;

     cc4:	38 58 b3 70                                     	fsdivd.s \$r44 = \$r56r57;;

     cc8:	38 50 b3 74                                     	fsdivwp \$r44 = \$r56r57;;

     ccc:	3a 58 b7 72                                     	fsdivw.s \$r45 = \$r58r59;;

     cd0:	2d 40 b7 70                                     	fsrecd \$r45 = \$r45;;

     cd4:	2e 48 bb 74                                     	fsrecwp.s \$r46 = \$r46;;

     cd8:	2f 40 bb 72                                     	fsrecw \$r46 = \$r47;;

     cdc:	2f 20 bf 78                                     	fsrsrd \$r47 = \$r47;;

     ce0:	30 20 c3 7c                                     	fsrsrwp \$r48 = \$r48;;

     ce4:	31 20 c3 7a                                     	fsrsrw \$r48 = \$r49;;

     ce8:	31 38 c7 7c                                     	fwidenlhwp.s \$r49 = \$r49;;

     cec:	32 30 cb 7a                                     	fwidenlhw \$r50 = \$r50;;

     cf0:	33 38 cb 78                                     	fwidenlwd.s \$r50 = \$r51;;

     cf4:	33 30 cf 7d                                     	fwidenmhwp \$r51 = \$r51;;

     cf8:	34 38 d3 7b                                     	fwidenmhw.s \$r52 = \$r52;;

     cfc:	35 30 d3 79                                     	fwidenmwd \$r52 = \$r53;;

     d00:	35 00 c4 0f                                     	get \$r53 = \$pc;;

     d04:	35 00 c4 0f                                     	get \$r53 = \$pc;;

     d08:	00 00 80 17                                     	goto fe000d08 <main\+0xfe000d08>;;

     d0c:	f6 ff 5c bc ff ff ff 9f ff ff ff 18             	i1invals 2305843009213693951 \(0x1fffffffffffffff\)\[\$r54\];;

     d18:	b6 4d 5e bc 00 00 00 98 00 00 80 1f             	i1invals.dlez \$r54\? -1125899906842624 \(0xfffc000000000000\)\[\$r54\];;

     d24:	f7 5d 5e bc 00 00 80 1f                         	i1invals.dgtz \$r55\? -8388608 \(0xff800000\)\[\$r55\];;

     d2c:	f8 6d 5e 3c                                     	i1invals.odd \$r55\? \[\$r56\];;

     d30:	38 ee 5e 3c                                     	i1invals \$r56\[\$r56\];;

     d34:	39 f0 5c 3c                                     	i1invals -64 \(0xffffffc0\)\[\$r57\];;

     d38:	39 00 5c bc 00 00 80 1f                         	i1invals -8589934592 \(0xfffffffe00000000\)\[\$r57\];;

     d40:	00 00 9d 3f                                     	i1inval;;

     d44:	39 00 dc 0f                                     	icall \$r57;;

     d48:	3a 00 cc 0f                                     	iget \$r58;;

     d4c:	3a 00 d8 0f                                     	igoto \$r58;;

     d50:	fb 71 eb 60                                     	insf \$r58 = \$r59, 7 \(0x7\), 7 \(0x7\);;

     d54:	fb ff ec ea ff ff ff 87 ff ff ff 00             	iord \$r59 = \$r59, 2305843009213693951 \(0x1fffffffffffffff\);;

     d60:	3c 0f f1 7a                                     	iord \$r60 = \$r60, \$r60;;

     d64:	3d f0 f4 6a                                     	iord \$r61 = \$r61, -64 \(0xffffffc0\);;

     d68:	3e 00 f4 ea 00 00 80 07                         	iord \$r61 = \$r62, -8589934592 \(0xfffffffe00000000\);;

     d70:	fe ff f8 ef ff ff ff 87 ff ff ff 00             	iornd \$r62 = \$r62, 2305843009213693951 \(0x1fffffffffffffff\);;

     d7c:	ff 0f fd 7f                                     	iornd \$r63 = \$r63, \$r63;;

     d80:	00 f0 00 6f                                     	iornd \$r0 = \$r0, -64 \(0xffffffc0\);;

     d84:	01 00 00 ef 00 00 80 07                         	iornd \$r0 = \$r1, -8589934592 \(0xfffffffe00000000\);;

     d8c:	81 10 05 7f                                     	iornw \$r1 = \$r1, \$r2;;

     d90:	02 f0 08 7f                                     	iornw \$r2 = \$r2, -64 \(0xffffffc0\);;

     d94:	03 00 0c ff 00 00 80 07                         	iornw \$r3 = \$r3, -8589934592 \(0xfffffffe00000000\);;

     d9c:	04 11 0d 7a                                     	iorw \$r3 = \$r4, \$r4;;

     da0:	05 f0 10 7a                                     	iorw \$r4 = \$r5, -64 \(0xffffffc0\);;

     da4:	05 00 14 fa 00 00 80 07                         	iorw \$r5 = \$r5, -8589934592 \(0xfffffffe00000000\);;

     dac:	86 41 19 7c                                     	landd \$r6 = \$r6, \$r6;;

     db0:	c7 47 1d fc ff ff ff 00                         	landd \$r7 = \$r7, 536870911 \(0x1fffffff\);;

     db8:	08 72 1d 7c                                     	landhq \$r7 = \$r8, \$r8;;

     dbc:	c9 7f 21 fc ff ff ff 00                         	landhq \$r8 = \$r9, 536870911 \(0x1fffffff\).@;;

     dc4:	89 62 25 7c                                     	landwp \$r9 = \$r9, \$r10;;

     dc8:	ca 67 29 fc ff ff ff 00                         	landwp \$r10 = \$r10, 536870911 \(0x1fffffff\);;

     dd0:	cb 52 2d 7c                                     	landw \$r11 = \$r11, \$r11;;

     dd4:	cc 57 31 fc ff ff ff 00                         	landw \$r12 = \$r12, 536870911 \(0x1fffffff\);;

     ddc:	4e e3 36 24                                     	lbs \$r13 = \$r13\[\$r14\];;

     de0:	8f 73 3e a5 00 00 00 98 00 00 80 1f             	lbs.s.even \$r14\? \$r15 = -1125899906842624 \(0xfffc000000000000\)\[\$r15\];;

     dec:	10 84 42 a6 00 00 80 1f                         	lbs.u.wnez \$r16\? \$r16 = -8388608 \(0xff800000\)\[\$r16\];;

     df4:	51 94 46 27                                     	lbs.us.weqz \$r17\? \$r17 = \[\$r17\];;

     df8:	d2 ff 48 a4 ff ff ff 9f ff ff ff 18             	lbs \$r18 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r18\];;

     e04:	13 f0 48 25                                     	lbs.s \$r18 = -64 \(0xffffffc0\)\[\$r19\];;

     e08:	13 00 4c a6 00 00 80 1f                         	lbs.u \$r19 = -8589934592 \(0xfffffffe00000000\)\[\$r19\];;

     e10:	14 f5 52 23                                     	lbz.us.xs \$r20 = \$r20\[\$r20\];;

     e14:	55 a5 56 a0 00 00 00 98 00 00 80 1f             	lbz.wltz \$r21\? \$r21 = -1125899906842624 \(0xfffc000000000000\)\[\$r21\];;

     e20:	96 b5 5a a1 00 00 80 1f                         	lbz.s.wgez \$r22\? \$r22 = -8388608 \(0xff800000\)\[\$r22\];;

     e28:	d7 c5 5e 22                                     	lbz.u.wlez \$r23\? \$r23 = \[\$r23\];;

     e2c:	d8 ff 60 a3 ff ff ff 9f ff ff ff 18             	lbz.us \$r24 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r24\];;

     e38:	19 f0 60 20                                     	lbz \$r24 = -64 \(0xffffffc0\)\[\$r25\];;

     e3c:	19 00 64 a1 00 00 80 1f                         	lbz.s \$r25 = -8589934592 \(0xfffffffe00000000\)\[\$r25\];;

     e44:	9a e6 6a 3a                                     	ld.u \$r26 = \$r26\[\$r26\];;

     e48:	db d6 6e bb 00 00 00 98 00 00 80 1f             	ld.us.wgtz \$r27\? \$r27 = -1125899906842624 \(0xfffc000000000000\)\[\$r27\];;

     e54:	1c 07 72 b8 00 00 80 1f                         	ld.dnez \$r28\? \$r28 = -8388608 \(0xff800000\)\[\$r28\];;

     e5c:	5d 17 76 39                                     	ld.s.deqz \$r29\? \$r29 = \[\$r29\];;

     e60:	de ff 78 ba ff ff ff 9f ff ff ff 18             	ld.u \$r30 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r30\];;

     e6c:	1f f0 78 3b                                     	ld.us \$r30 = -64 \(0xffffffc0\)\[\$r31\];;

     e70:	1f 00 7c b8 00 00 80 1f                         	ld \$r31 = -8589934592 \(0xfffffffe00000000\)\[\$r31\];;

     e78:	20 f8 82 2d                                     	lhs.s.xs \$r32 = \$r32\[\$r32\];;

     e7c:	61 28 86 ae 00 00 00 98 00 00 80 1f             	lhs.u.dltz \$r33\? \$r33 = -1125899906842624 \(0xfffc000000000000\)\[\$r33\];;

     e88:	a2 38 8a af 00 00 80 1f                         	lhs.us.dgez \$r34\? \$r34 = -8388608 \(0xff800000\)\[\$r34\];;

     e90:	e3 48 8e 2c                                     	lhs.dlez \$r35\? \$r35 = \[\$r35\];;

     e94:	e4 ff 90 ad ff ff ff 9f ff ff ff 18             	lhs.s \$r36 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r36\];;

     ea0:	25 f0 90 2e                                     	lhs.u \$r36 = -64 \(0xffffffc0\)\[\$r37\];;

     ea4:	25 00 94 af 00 00 80 1f                         	lhs.us \$r37 = -8589934592 \(0xfffffffe00000000\)\[\$r37\];;

     eac:	a6 e9 9a 28                                     	lhz \$r38 = \$r38\[\$r38\];;

     eb0:	e7 59 9e a9 00 00 00 98 00 00 80 1f             	lhz.s.dgtz \$r39\? \$r39 = -1125899906842624 \(0xfffc000000000000\)\[\$r39\];;

     ebc:	28 6a a2 aa 00 00 80 1f                         	lhz.u.odd \$r40\? \$r40 = -8388608 \(0xff800000\)\[\$r40\];;

     ec4:	69 7a a6 2b                                     	lhz.us.even \$r41\? \$r41 = \[\$r41\];;

     ec8:	ea ff a8 a8 ff ff ff 9f ff ff ff 18             	lhz \$r42 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r42\];;

     ed4:	2b f0 a8 29                                     	lhz.s \$r42 = -64 \(0xffffffc0\)\[\$r43\];;

     ed8:	2b 00 ac aa 00 00 80 1f                         	lhz.u \$r43 = -8589934592 \(0xfffffffe00000000\)\[\$r43\];;

     ee0:	2c 4b b1 7e                                     	liord \$r44 = \$r44, \$r44;;

     ee4:	ed 4f b5 fe ff ff ff 00                         	liord \$r45 = \$r45, 536870911 \(0x1fffffff\).@;;

     eec:	ae 7b b5 7e                                     	liorhq \$r45 = \$r46, \$r46;;

     ef0:	ef 77 b9 fe ff ff ff 00                         	liorhq \$r46 = \$r47, 536870911 \(0x1fffffff\);;

     ef8:	2f 6c bd 7e                                     	liorwp \$r47 = \$r47, \$r48;;

     efc:	f0 6f c1 fe ff ff ff 00                         	liorwp \$r48 = \$r48, 536870911 \(0x1fffffff\).@;;

     f04:	71 5c c5 7e                                     	liorw \$r49 = \$r49, \$r49;;

     f08:	f2 57 c9 fe ff ff ff 00                         	liorw \$r50 = \$r50, 536870911 \(0x1fffffff\);;

     f10:	f3 4c c9 7d                                     	lnandd \$r50 = \$r51, \$r51;;

     f14:	f4 47 cd fd ff ff ff 00                         	lnandd \$r51 = \$r52, 536870911 \(0x1fffffff\);;

     f1c:	74 7d d1 7d                                     	lnandhq \$r52 = \$r52, \$r53;;

     f20:	f5 7f d5 fd ff ff ff 00                         	lnandhq \$r53 = \$r53, 536870911 \(0x1fffffff\).@;;

     f28:	b6 6d d9 7d                                     	lnandwp \$r54 = \$r54, \$r54;;

     f2c:	f7 67 dd fd ff ff ff 00                         	lnandwp \$r55 = \$r55, 536870911 \(0x1fffffff\);;

     f34:	38 5e dd 7d                                     	lnandw \$r55 = \$r56, \$r56;;

     f38:	f9 57 e1 fd ff ff ff 00                         	lnandw \$r56 = \$r57, 536870911 \(0x1fffffff\);;

     f40:	b9 4e e5 7f                                     	lniord \$r57 = \$r57, \$r58;;

     f44:	fa 4f e9 ff ff ff ff 00                         	lniord \$r58 = \$r58, 536870911 \(0x1fffffff\).@;;

     f4c:	fb 7e ed 7f                                     	lniorhq \$r59 = \$r59, \$r59;;

     f50:	fc 77 f1 ff ff ff ff 00                         	lniorhq \$r60 = \$r60, 536870911 \(0x1fffffff\);;

     f58:	7d 6f f1 7f                                     	lniorwp \$r60 = \$r61, \$r61;;

     f5c:	fe 6f f5 ff ff ff ff 00                         	lniorwp \$r61 = \$r62, 536870911 \(0x1fffffff\).@;;

     f64:	fe 5f f9 7f                                     	lniorw \$r62 = \$r62, \$r63;;

     f68:	ff 57 fd ff ff ff ff 00                         	lniorw \$r63 = \$r63, 536870911 \(0x1fffffff\);;

     f70:	00 40 01 7f                                     	lniord \$r0 = \$r0, \$r0;;

     f74:	c1 47 05 ff ff ff ff 00                         	lniord \$r1 = \$r1, 536870911 \(0x1fffffff\);;

     f7c:	82 70 05 7f                                     	lniorhq \$r1 = \$r2, \$r2;;

     f80:	c3 7f 09 ff ff ff ff 00                         	lniorhq \$r2 = \$r3, 536870911 \(0x1fffffff\).@;;

     f88:	03 61 0d 7f                                     	lniorwp \$r3 = \$r3, \$r4;;

     f8c:	c4 67 11 ff ff ff ff 00                         	lniorwp \$r4 = \$r4, 536870911 \(0x1fffffff\);;

     f94:	45 51 15 7f                                     	lniorw \$r5 = \$r5, \$r5;;

     f98:	c6 57 19 ff ff ff ff 00                         	lniorw \$r6 = \$r6, 536870911 \(0x1fffffff\);;

     fa0:	06 00 78 0f                                     	loopdo \$r6, ffff8fa0 <main\+0xffff8fa0>;;

     fa4:	c7 41 1d 7e                                     	liord \$r7 = \$r7, \$r7;;

     fa8:	c8 4f 21 fe ff ff ff 00                         	liord \$r8 = \$r8, 536870911 \(0x1fffffff\).@;;

     fb0:	49 72 21 7e                                     	liorhq \$r8 = \$r9, \$r9;;

     fb4:	ca 77 25 fe ff ff ff 00                         	liorhq \$r9 = \$r10, 536870911 \(0x1fffffff\);;

     fbc:	ca 62 29 7e                                     	liorwp \$r10 = \$r10, \$r11;;

     fc0:	cb 6f 2d fe ff ff ff 00                         	liorwp \$r11 = \$r11, 536870911 \(0x1fffffff\).@;;

     fc8:	4c 53 31 7e                                     	liorw \$r12 = \$r12, \$r13;;

     fcc:	ce 57 35 fe ff ff ff 00                         	liorw \$r13 = \$r14, 536870911 \(0x1fffffff\);;

     fd4:	8f f3 66 3f                                     	lo.us.xs \$r24r25r26r27 = \$r14\[\$r15\];;

     fd8:	d0 83 76 bc 00 00 00 98 00 00 80 1f             	lo.wnez \$r15\? \$r28r29r30r31 = -1125899906842624 \(0xfffc000000000000\)\[\$r16\];;

     fe4:	10 94 86 bd 00 00 80 1f                         	lo.s.weqz \$r16\? \$r32r33r34r35 = -8388608 \(0xff800000\)\[\$r16\];;

     fec:	51 a4 96 3e                                     	lo.u.wltz \$r17\? \$r36r37r38r39 = \[\$r17\];;

     ff0:	d1 ff a4 bf ff ff ff 9f ff ff ff 18             	lo.us \$r40r41r42r43 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r17\];;

     ffc:	12 f0 b4 3c                                     	lo \$r44r45r46r47 = -64 \(0xffffffc0\)\[\$r18\];;

    1000:	12 00 c4 bd 00 00 80 1f                         	lo.s \$r48r49r50r51 = -8589934592 \(0xfffffffe00000000\)\[\$r18\];;

    1008:	93 e4 ea 3e                                     	lq.u \$r58r59 = \$r18\[\$r19\];;

    100c:	d3 b4 f2 bf 00 00 00 98 00 00 80 1f             	lq.us.wgez \$r19\? \$r60r61 = -1125899906842624 \(0xfffc000000000000\)\[\$r19\];;

    1018:	14 c5 f2 bc 00 00 80 1f                         	lq.wlez \$r20\? \$r60r61 = -8388608 \(0xff800000\)\[\$r20\];;

    1020:	15 d5 fa 3d                                     	lq.s.wgtz \$r20\? \$r62r63 = \[\$r21\];;

    1024:	d5 ff f8 be ff ff ff 9f ff ff ff 18             	lq.u \$r62r63 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r21\];;

    1030:	15 f0 00 3f                                     	lq.us \$r0r1 = -64 \(0xffffffc0\)\[\$r21\];;

    1034:	16 00 00 bc 00 00 80 1f                         	lq \$r0r1 = -8589934592 \(0xfffffffe00000000\)\[\$r22\];;

    103c:	97 f5 5a 35                                     	lws.s.xs \$r22 = \$r22\[\$r23\];;

    1040:	d8 05 5e b6 00 00 00 98 00 00 80 1f             	lws.u.dnez \$r23\? \$r23 = -1125899906842624 \(0xfffc000000000000\)\[\$r24\];;

    104c:	19 16 62 b7 00 00 80 1f                         	lws.us.deqz \$r24\? \$r24 = -8388608 \(0xff800000\)\[\$r25\];;

    1054:	5a 26 66 34                                     	lws.dltz \$r25\? \$r25 = \[\$r26\];;

    1058:	da ff 68 b5 ff ff ff 9f ff ff ff 18             	lws.s \$r26 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r26\];;

    1064:	1b f0 6c 36                                     	lws.u \$r27 = -64 \(0xffffffc0\)\[\$r27\];;

    1068:	1c 00 6c b7 00 00 80 1f                         	lws.us \$r27 = -8589934592 \(0xfffffffe00000000\)\[\$r28\];;

    1070:	1d e7 72 30                                     	lwz \$r28 = \$r28\[\$r29\];;

    1074:	5e 37 76 b1 00 00 00 98 00 00 80 1f             	lwz.s.dgez \$r29\? \$r29 = -1125899906842624 \(0xfffc000000000000\)\[\$r30\];;

    1080:	9f 47 7a b2 00 00 80 1f                         	lwz.u.dlez \$r30\? \$r30 = -8388608 \(0xff800000\)\[\$r31\];;

    1088:	e0 57 7e 33                                     	lwz.us.dgtz \$r31\? \$r31 = \[\$r32\];;

    108c:	e0 ff 80 b0 ff ff ff 9f ff ff ff 18             	lwz \$r32 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r32\];;

    1098:	21 f0 84 31                                     	lwz.s \$r33 = -64 \(0xffffffc0\)\[\$r33\];;

    109c:	22 00 84 b2 00 00 80 1f                         	lwz.u \$r33 = -8589934592 \(0xfffffffe00000000\)\[\$r34\];;

    10a4:	e2 ff 08 c8 ff ff ff 97 ff ff ff 10             	madddt \$r2r3 = \$r34, 2305843009213693951 \(0x1fffffffffffffff\);;

    10b0:	e2 18 08 58                                     	madddt \$r2r3 = \$r34, \$r35;;

    10b4:	23 f0 10 48                                     	madddt \$r4r5 = \$r35, -64 \(0xffffffc0\);;

    10b8:	23 00 10 c8 00 00 80 17                         	madddt \$r4r5 = \$r35, -8589934592 \(0xfffffffe00000000\);;

    10c0:	e4 ff 90 c0 ff ff ff 97 ff ff ff 10             	maddd \$r36 = \$r36, 2305843009213693951 \(0x1fffffffffffffff\);;

    10cc:	65 09 90 50                                     	maddd \$r36 = \$r37, \$r37;;

    10d0:	26 f0 94 40                                     	maddd \$r37 = \$r38, -64 \(0xffffffc0\);;

    10d4:	26 00 98 c0 00 00 80 17                         	maddd \$r38 = \$r38, -8589934592 \(0xfffffffe00000000\);;

    10dc:	e7 ff 9c c2 ff ff ff 97 ff ff ff 10             	maddhq \$r39 = \$r39, 2305843009213693951 \(0x1fffffffffffffff\);;

    10e8:	28 0a 9c 52                                     	maddhq \$r39 = \$r40, \$r40;;

    10ec:	29 f0 a0 42                                     	maddhq \$r40 = \$r41, -64 \(0xffffffc0\);;

    10f0:	29 00 a4 c2 00 00 80 17                         	maddhq \$r41 = \$r41, -8589934592 \(0xfffffffe00000000\);;

    10f8:	aa 4a 18 50                                     	maddhwq \$r6r7 = \$r42, \$r42;;

    10fc:	ea ff 18 ca ff ff ff 97 ff ff ff 10             	maddsudt \$r6r7 = \$r42, 2305843009213693951 \(0x1fffffffffffffff\);;

    1108:	eb 1a 20 5a                                     	maddsudt \$r8r9 = \$r43, \$r43;;

    110c:	2b f0 20 4a                                     	maddsudt \$r8r9 = \$r43, -64 \(0xffffffc0\);;

    1110:	2c 00 28 ca 00 00 80 17                         	maddsudt \$r10r11 = \$r44, -8589934592 \(0xfffffffe00000000\);;

    1118:	2c 4b 28 52                                     	maddsuhwq \$r10r11 = \$r44, \$r44;;

    111c:	6d 0b 30 5a                                     	maddsuwdp \$r12r13 = \$r45, \$r45;;

    1120:	ed 07 30 da ff ff ff 10                         	maddsuwdp \$r12r13 = \$r45, 536870911 \(0x1fffffff\);;

    1128:	ae 3b b8 52                                     	maddsuwd \$r46 = \$r46, \$r46;;

    112c:	ef 37 bc d2 ff ff ff 10                         	maddsuwd \$r47 = \$r47, 536870911 \(0x1fffffff\);;

    1134:	ef ff 38 c9 ff ff ff 97 ff ff ff 10             	maddudt \$r14r15 = \$r47, 2305843009213693951 \(0x1fffffffffffffff\);;

    1140:	30 1c 38 59                                     	maddudt \$r14r15 = \$r48, \$r48;;

    1144:	30 f0 40 49                                     	maddudt \$r16r17 = \$r48, -64 \(0xffffffc0\);;

    1148:	31 00 40 c9 00 00 80 17                         	maddudt \$r16r17 = \$r49, -8589934592 \(0xfffffffe00000000\);;

    1150:	71 4c 48 51                                     	madduhwq \$r18r19 = \$r49, \$r49;;

    1154:	b2 0c 48 59                                     	madduwdp \$r18r19 = \$r50, \$r50;;

    1158:	f2 0f 50 d9 ff ff ff 10                         	madduwdp \$r20r21 = \$r50, 536870911 \(0x1fffffff\).@;;

    1160:	f3 3c cc 51                                     	madduwd \$r51 = \$r51, \$r51;;

    1164:	f4 37 d0 d1 ff ff ff 10                         	madduwd \$r52 = \$r52, 536870911 \(0x1fffffff\);;

    116c:	f4 ff 50 cb ff ff ff 97 ff ff ff 10             	madduzdt \$r20r21 = \$r52, 2305843009213693951 \(0x1fffffffffffffff\);;

    1178:	75 1d 58 5b                                     	madduzdt \$r22r23 = \$r53, \$r53;;

    117c:	35 f0 58 4b                                     	madduzdt \$r22r23 = \$r53, -64 \(0xffffffc0\);;

    1180:	36 00 60 cb 00 00 80 17                         	madduzdt \$r24r25 = \$r54, -8589934592 \(0xfffffffe00000000\);;

    1188:	b6 0d 60 58                                     	maddwdp \$r24r25 = \$r54, \$r54;;

    118c:	f7 07 68 d8 ff ff ff 10                         	maddwdp \$r26r27 = \$r55, 536870911 \(0x1fffffff\);;

    1194:	37 3e dc 50                                     	maddwd \$r55 = \$r55, \$r56;;

    1198:	f8 37 e0 d0 ff ff ff 10                         	maddwd \$r56 = \$r56, 536870911 \(0x1fffffff\);;

    11a0:	f9 ff e4 c1 ff ff ff 97 ff ff ff 10             	maddwp \$r57 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

    11ac:	ba 0e e4 51                                     	maddwp \$r57 = \$r58, \$r58;;

    11b0:	3b f0 e8 41                                     	maddwp \$r58 = \$r59, -64 \(0xffffffc0\);;

    11b4:	3b 00 ec c1 00 00 80 17                         	maddwp \$r59 = \$r59, -8589934592 \(0xfffffffe00000000\);;

    11bc:	3c 3f f0 53                                     	maddw \$r60 = \$r60, \$r60;;

    11c0:	fd 37 f4 d3 ff ff ff 10                         	maddw \$r61 = \$r61, 536870911 \(0x1fffffff\);;

    11c8:	c0 ff f4 e0 ff ff ff 87 ff ff ff 00             	make \$r61 = 2305843009213693951 \(0x1fffffffffffffff\);;

    11d4:	3c 00 f8 e0 00 00 00 00                         	make \$r62 = -549755813888 \(0xffffff8000000000\);;

    11dc:	00 f0 f8 60                                     	make \$r62 = -4096 \(0xfffff000\);;

    11e0:	ff ff f8 e3 ff ff ff 87 ff ff ff 00             	maxd \$r62 = \$r63, 2305843009213693951 \(0x1fffffffffffffff\);;

    11ec:	3f 00 fd 73                                     	maxd \$r63 = \$r63, \$r0;;

    11f0:	00 f0 00 63                                     	maxd \$r0 = \$r0, -64 \(0xffffffc0\);;

    11f4:	01 00 04 e3 00 00 80 07                         	maxd \$r1 = \$r1, -8589934592 \(0xfffffffe00000000\);;

    11fc:	82 30 05 73                                     	maxhq \$r1 = \$r2, \$r2;;

    1200:	c3 3f 09 f3 ff ff ff 00                         	maxhq \$r2 = \$r3, 536870911 \(0x1fffffff\).@;;

    1208:	c3 ff 0c e7 ff ff ff 87 ff ff ff 00             	maxud \$r3 = \$r3, 2305843009213693951 \(0x1fffffffffffffff\);;

    1214:	04 01 11 77                                     	maxud \$r4 = \$r4, \$r4;;

    1218:	05 f0 14 67                                     	maxud \$r5 = \$r5, -64 \(0xffffffc0\);;

    121c:	06 00 14 e7 00 00 80 07                         	maxud \$r5 = \$r6, -8589934592 \(0xfffffffe00000000\);;

    1224:	c6 31 19 77                                     	maxuhq \$r6 = \$r6, \$r7;;

    1228:	c7 37 1d f7 ff ff ff 00                         	maxuhq \$r7 = \$r7, 536870911 \(0x1fffffff\);;

    1230:	08 22 21 77                                     	maxuwp \$r8 = \$r8, \$r8;;

    1234:	c9 2f 25 f7 ff ff ff 00                         	maxuwp \$r9 = \$r9, 536870911 \(0x1fffffff\).@;;

    123c:	8a 12 25 77                                     	maxuw \$r9 = \$r10, \$r10;;

    1240:	0b f0 28 77                                     	maxuw \$r10 = \$r11, -64 \(0xffffffc0\);;

    1244:	0b 00 2c f7 00 00 80 07                         	maxuw \$r11 = \$r11, -8589934592 \(0xfffffffe00000000\);;

    124c:	4c 23 31 73                                     	maxwp \$r12 = \$r12, \$r13;;

    1250:	ce 27 35 f3 ff ff ff 00                         	maxwp \$r13 = \$r14, 536870911 \(0x1fffffff\);;

    1258:	cf 13 39 73                                     	maxw \$r14 = \$r15, \$r15;;

    125c:	10 f0 40 73                                     	maxw \$r16 = \$r16, -64 \(0xffffffc0\);;

    1260:	11 00 40 f3 00 00 80 07                         	maxw \$r16 = \$r17, -8589934592 \(0xfffffffe00000000\);;

    1268:	d1 ff 44 e2 ff ff ff 87 ff ff ff 00             	mind \$r17 = \$r17, 2305843009213693951 \(0x1fffffffffffffff\);;

    1274:	92 04 49 72                                     	mind \$r18 = \$r18, \$r18;;

    1278:	13 f0 4c 62                                     	mind \$r19 = \$r19, -64 \(0xffffffc0\);;

    127c:	14 00 4c e2 00 00 80 07                         	mind \$r19 = \$r20, -8589934592 \(0xfffffffe00000000\);;

    1284:	54 35 51 72                                     	minhq \$r20 = \$r20, \$r21;;

    1288:	d5 3f 55 f2 ff ff ff 00                         	minhq \$r21 = \$r21, 536870911 \(0x1fffffff\).@;;

    1290:	d6 ff 58 e6 ff ff ff 87 ff ff ff 00             	minud \$r22 = \$r22, 2305843009213693951 \(0x1fffffffffffffff\);;

    129c:	d7 05 59 76                                     	minud \$r22 = \$r23, \$r23;;

    12a0:	18 f0 5c 66                                     	minud \$r23 = \$r24, -64 \(0xffffffc0\);;

    12a4:	18 00 60 e6 00 00 80 07                         	minud \$r24 = \$r24, -8589934592 \(0xfffffffe00000000\);;

    12ac:	59 36 65 76                                     	minuhq \$r25 = \$r25, \$r25;;

    12b0:	da 37 69 f6 ff ff ff 00                         	minuhq \$r26 = \$r26, 536870911 \(0x1fffffff\);;

    12b8:	db 26 69 76                                     	minuwp \$r26 = \$r27, \$r27;;

    12bc:	dc 2f 6d f6 ff ff ff 00                         	minuwp \$r27 = \$r28, 536870911 \(0x1fffffff\).@;;

    12c4:	5c 17 71 76                                     	minuw \$r28 = \$r28, \$r29;;

    12c8:	1d f0 74 76                                     	minuw \$r29 = \$r29, -64 \(0xffffffc0\);;

    12cc:	1e 00 78 f6 00 00 80 07                         	minuw \$r30 = \$r30, -8589934592 \(0xfffffffe00000000\);;

    12d4:	df 27 79 72                                     	minwp \$r30 = \$r31, \$r31;;

    12d8:	e0 27 7d f2 ff ff ff 00                         	minwp \$r31 = \$r32, 536870911 \(0x1fffffff\);;

    12e0:	60 18 81 72                                     	minw \$r32 = \$r32, \$r33;;

    12e4:	21 f0 84 72                                     	minw \$r33 = \$r33, -64 \(0xffffffc0\);;

    12e8:	22 00 88 f2 00 00 80 07                         	minw \$r34 = \$r34, -8589934592 \(0xfffffffe00000000\);;

    12f0:	e2 18 68 53                                     	mm212w \$r26r27 = \$r34, \$r35;;

    12f4:	e3 1f 70 d3 ff ff ff 10                         	mm212w \$r28r29 = \$r35, 536870911 \(0x1fffffff\).@;;

    12fc:	23 09 70 5b                                     	mma212w \$r28r29 = \$r35, \$r36;;

    1300:	e4 07 78 db ff ff ff 10                         	mma212w \$r30r31 = \$r36, 536870911 \(0x1fffffff\);;

    1308:	45 c1 61 04                                     	mma444hbd0 \$a24a25a26a27 = \$a28a29a30a31, \$a5, \$a5;;

    130c:	46 41 86 04                                     	mma444hbd1 \$a32a33a34a35 = \$a36a37a38a39, \$a5, \$a6;;

    1310:	86 c1 aa 04                                     	mma444hd \$a40a41a42a43 = \$a44a45a46a47, \$a6, \$a6;;

    1314:	c7 61 c3 04                                     	mma444suhbd0 \$a48a49a50a51 = \$a52a53a54a55, \$a7, \$a7;;

    1318:	c8 e1 e7 04                                     	mma444suhbd1 \$a56a57a58a59 = \$a60a61a62a63, \$a7, \$a8;;

    131c:	08 62 08 04                                     	mma444suhd \$a0a1a2a3 = \$a4a5a6a7, \$a8, \$a8;;

    1320:	49 d2 20 04                                     	mma444uhbd0 \$a8a9a10a11 = \$a12a13a14a15, \$a9, \$a9;;

    1324:	4a 52 45 04                                     	mma444uhbd1 \$a16a17a18a19 = \$a20a21a22a23, \$a9, \$a10;;

    1328:	8a d2 69 04                                     	mma444uhd \$a24a25a26a27 = \$a28a29a30a31, \$a10, \$a10;;

    132c:	cb 72 82 04                                     	mma444ushbd0 \$a32a33a34a35 = \$a36a37a38a39, \$a11, \$a11;;

    1330:	cc f2 a6 04                                     	mma444ushbd1 \$a40a41a42a43 = \$a44a45a46a47, \$a11, \$a12;;

    1334:	0c 73 cb 04                                     	mma444ushd \$a48a49a50a51 = \$a52a53a54a55, \$a12, \$a12;;

    1338:	64 09 78 5f                                     	mms212w \$r30r31 = \$r36, \$r37;;

    133c:	e5 0f 80 df ff ff ff 10                         	mms212w \$r32r33 = \$r37, 536870911 \(0x1fffffff\).@;;

    1344:	a5 e9 02 7f                                     	movetq \$a0_lo = \$r37, \$r38;;

    1348:	a6 f9 02 7f                                     	movetq \$a0_hi = \$r38, \$r38;;

    134c:	e7 19 80 5c                                     	msbfdt \$r32r33 = \$r39, \$r39;;

    1350:	28 0a 9c 54                                     	msbfd \$r39 = \$r40, \$r40;;

    1354:	e9 07 a0 d4 ff ff ff 10                         	msbfd \$r40 = \$r41, 536870911 \(0x1fffffff\);;

    135c:	a9 0a a4 56                                     	msbfhq \$r41 = \$r41, \$r42;;

    1360:	ea 0f a8 d6 ff ff ff 10                         	msbfhq \$r42 = \$r42, 536870911 \(0x1fffffff\).@;;

    1368:	eb 4a 88 54                                     	msbfhwq \$r34r35 = \$r43, \$r43;;

    136c:	2b 1b 88 5e                                     	msbfsudt \$r34r35 = \$r43, \$r44;;

    1370:	2c 4b 90 56                                     	msbfsuhwq \$r36r37 = \$r44, \$r44;;

    1374:	6d 0b 90 5e                                     	msbfsuwdp \$r36r37 = \$r45, \$r45;;

    1378:	ed 07 98 de ff ff ff 10                         	msbfsuwdp \$r38r39 = \$r45, 536870911 \(0x1fffffff\);;

    1380:	ae 3b b8 56                                     	msbfsuwd \$r46 = \$r46, \$r46;;

    1384:	ef 37 bc d6 ff ff ff 10                         	msbfsuwd \$r47 = \$r47, 536870911 \(0x1fffffff\);;

    138c:	2f 1c 98 5d                                     	msbfudt \$r38r39 = \$r47, \$r48;;

    1390:	30 4c a0 55                                     	msbfuhwq \$r40r41 = \$r48, \$r48;;

    1394:	71 0c a0 5d                                     	msbfuwdp \$r40r41 = \$r49, \$r49;;

    1398:	f1 0f a8 dd ff ff ff 10                         	msbfuwdp \$r42r43 = \$r49, 536870911 \(0x1fffffff\).@;;

    13a0:	b2 3c c8 55                                     	msbfuwd \$r50 = \$r50, \$r50;;

    13a4:	f3 37 cc d5 ff ff ff 10                         	msbfuwd \$r51 = \$r51, 536870911 \(0x1fffffff\);;

    13ac:	33 1d a8 5f                                     	msbfuzdt \$r42r43 = \$r51, \$r52;;

    13b0:	34 0d b0 5c                                     	msbfwdp \$r44r45 = \$r52, \$r52;;

    13b4:	f5 07 b0 dc ff ff ff 10                         	msbfwdp \$r44r45 = \$r53, 536870911 \(0x1fffffff\);;

    13bc:	b5 3d d4 54                                     	msbfwd \$r53 = \$r53, \$r54;;

    13c0:	f6 37 d8 d4 ff ff ff 10                         	msbfwd \$r54 = \$r54, 536870911 \(0x1fffffff\);;

    13c8:	f7 0d dc 55                                     	msbfwp \$r55 = \$r55, \$r55;;

    13cc:	f8 0f e0 d5 ff ff ff 10                         	msbfwp \$r56 = \$r56, 536870911 \(0x1fffffff\).@;;

    13d4:	79 3e e0 57                                     	msbfw \$r56 = \$r57, \$r57;;

    13d8:	fa 37 e4 d7 ff ff ff 10                         	msbfw \$r57 = \$r58, 536870911 \(0x1fffffff\);;

    13e0:	fa ff bc c8 ff ff ff 97 ff ff ff 10             	muldt \$r46r47 = \$r58, 2305843009213693951 \(0x1fffffffffffffff\);;

    13ec:	fa 1e bc 58                                     	muldt \$r46r47 = \$r58, \$r59;;

    13f0:	3b f0 c4 48                                     	muldt \$r48r49 = \$r59, -64 \(0xffffffc0\);;

    13f4:	3b 00 c4 c8 00 00 80 17                         	muldt \$r48r49 = \$r59, -8589934592 \(0xfffffffe00000000\);;

    13fc:	fc ff f0 c4 ff ff ff 97 ff ff ff 10             	muld \$r60 = \$r60, 2305843009213693951 \(0x1fffffffffffffff\);;

    1408:	7d 1f f0 54                                     	muld \$r60 = \$r61, \$r61;;

    140c:	3e f0 f4 44                                     	muld \$r61 = \$r62, -64 \(0xffffffc0\);;

    1410:	3e 00 f8 c4 00 00 80 17                         	muld \$r62 = \$r62, -8589934592 \(0xfffffffe00000000\);;

    1418:	ff ff fc c6 ff ff ff 97 ff ff ff 10             	mulhq \$r63 = \$r63, 2305843009213693951 \(0x1fffffffffffffff\);;

    1424:	00 10 fc 56                                     	mulhq \$r63 = \$r0, \$r0;;

    1428:	01 f0 00 46                                     	mulhq \$r0 = \$r1, -64 \(0xffffffc0\);;

    142c:	01 00 04 c6 00 00 80 17                         	mulhq \$r1 = \$r1, -8589934592 \(0xfffffffe00000000\);;

    1434:	82 40 c8 58                                     	mulhwq \$r50r51 = \$r2, \$r2;;

    1438:	c2 ff cc ca ff ff ff 97 ff ff ff 10             	mulsudt \$r50r51 = \$r2, 2305843009213693951 \(0x1fffffffffffffff\);;

    1444:	c3 10 d4 5a                                     	mulsudt \$r52r53 = \$r3, \$r3;;

    1448:	03 f0 d4 4a                                     	mulsudt \$r52r53 = \$r3, -64 \(0xffffffc0\);;

    144c:	04 00 dc ca 00 00 80 17                         	mulsudt \$r54r55 = \$r4, -8589934592 \(0xfffffffe00000000\);;

    1454:	04 41 d8 5a                                     	mulsuhwq \$r54r55 = \$r4, \$r4;;

    1458:	45 11 e0 52                                     	mulsuwdp \$r56r57 = \$r5, \$r5;;

    145c:	c5 17 e0 d2 ff ff ff 10                         	mulsuwdp \$r56r57 = \$r5, 536870911 \(0x1fffffff\);;

    1464:	86 31 18 5a                                     	mulsuwd \$r6 = \$r6, \$r6;;

    1468:	c7 37 1c da ff ff ff 10                         	mulsuwd \$r7 = \$r7, 536870911 \(0x1fffffff\);;

    1470:	c7 ff ec c9 ff ff ff 97 ff ff ff 10             	muludt \$r58r59 = \$r7, 2305843009213693951 \(0x1fffffffffffffff\);;

    147c:	08 12 ec 59                                     	muludt \$r58r59 = \$r8, \$r8;;

    1480:	08 f0 f4 49                                     	muludt \$r60r61 = \$r8, -64 \(0xffffffc0\);;

    1484:	09 00 f4 c9 00 00 80 17                         	muludt \$r60r61 = \$r9, -8589934592 \(0xfffffffe00000000\);;

    148c:	49 42 f8 59                                     	muluhwq \$r62r63 = \$r9, \$r9;;

    1490:	8a 12 f8 51                                     	muluwdp \$r62r63 = \$r10, \$r10;;

    1494:	ca 1f 00 d1 ff ff ff 10                         	muluwdp \$r0r1 = \$r10, 536870911 \(0x1fffffff\).@;;

    149c:	cb 32 2c 59                                     	muluwd \$r11 = \$r11, \$r11;;

    14a0:	cc 37 30 d9 ff ff ff 10                         	muluwd \$r12 = \$r12, 536870911 \(0x1fffffff\);;

    14a8:	8d 23 34 55                                     	mulwc.c \$r13 = \$r13, \$r14;;

    14ac:	cf ff 38 c7 ff ff ff 97 ff ff ff 10             	mulwc \$r14 = \$r15, 2305843009213693951 \(0x1fffffffffffffff\);;

    14b8:	10 14 3c 57                                     	mulwc \$r15 = \$r16, \$r16;;

    14bc:	11 f0 40 47                                     	mulwc \$r16 = \$r17, -64 \(0xffffffc0\);;

    14c0:	11 00 44 c7 00 00 80 17                         	mulwc \$r17 = \$r17, -8589934592 \(0xfffffffe00000000\);;

    14c8:	92 24 00 57                                     	mulwdc.c \$r0r1 = \$r18, \$r18;;

    14cc:	d2 24 08 56                                     	mulwdc \$r2r3 = \$r18, \$r19;;

    14d0:	d3 14 08 50                                     	mulwdp \$r2r3 = \$r19, \$r19;;

    14d4:	d4 17 10 d0 ff ff ff 10                         	mulwdp \$r4r5 = \$r20, 536870911 \(0x1fffffff\);;

    14dc:	54 35 50 58                                     	mulwd \$r20 = \$r20, \$r21;;

    14e0:	d5 37 54 d8 ff ff ff 10                         	mulwd \$r21 = \$r21, 536870911 \(0x1fffffff\);;

    14e8:	d6 ff 58 c5 ff ff ff 97 ff ff ff 10             	mulwp \$r22 = \$r22, 2305843009213693951 \(0x1fffffffffffffff\);;

    14f4:	d7 15 58 55                                     	mulwp \$r22 = \$r23, \$r23;;

    14f8:	18 f0 5c 45                                     	mulwp \$r23 = \$r24, -64 \(0xffffffc0\);;

    14fc:	18 00 60 c5 00 00 80 17                         	mulwp \$r24 = \$r24, -8589934592 \(0xfffffffe00000000\);;

    1504:	86 21 10 54                                     	mulwq \$r4r5 = \$r6r7, \$r6r7;;

    1508:	59 36 64 5b                                     	mulw \$r25 = \$r25, \$r25;;

    150c:	da 37 68 db ff ff ff 10                         	mulw \$r26 = \$r26, 536870911 \(0x1fffffff\);;

    1514:	db ff 68 e9 ff ff ff 87 ff ff ff 00             	nandd \$r26 = \$r27, 2305843009213693951 \(0x1fffffffffffffff\);;

    1520:	1b 07 6d 79                                     	nandd \$r27 = \$r27, \$r28;;

    1524:	1c f0 70 69                                     	nandd \$r28 = \$r28, -64 \(0xffffffc0\);;

    1528:	1d 00 74 e9 00 00 80 07                         	nandd \$r29 = \$r29, -8589934592 \(0xfffffffe00000000\);;

    1530:	9e 17 75 79                                     	nandw \$r29 = \$r30, \$r30;;

    1534:	1f f0 78 79                                     	nandw \$r30 = \$r31, -64 \(0xffffffc0\);;

    1538:	1f 00 7c f9 00 00 80 07                         	nandw \$r31 = \$r31, -8589934592 \(0xfffffffe00000000\);;

    1540:	20 00 80 65                                     	negd \$r32 = \$r32;;

    1544:	21 30 81 f5 00 00 00 00                         	neghq \$r32 = \$r33;;

    154c:	21 20 85 f5 00 00 00 00                         	negwp \$r33 = \$r33;;

    1554:	22 00 88 75                                     	negw \$r34 = \$r34;;

    1558:	e3 ff 88 ed ff ff ff 87 ff ff ff 00             	neord \$r34 = \$r35, 2305843009213693951 \(0x1fffffffffffffff\);;

    1564:	23 09 8d 7d                                     	neord \$r35 = \$r35, \$r36;;

    1568:	24 f0 90 6d                                     	neord \$r36 = \$r36, -64 \(0xffffffc0\);;

    156c:	25 00 94 ed 00 00 80 07                         	neord \$r37 = \$r37, -8589934592 \(0xfffffffe00000000\);;

    1574:	a6 19 95 7d                                     	neorw \$r37 = \$r38, \$r38;;

    1578:	27 f0 98 7d                                     	neorw \$r38 = \$r39, -64 \(0xffffffc0\);;

    157c:	27 00 9c fd 00 00 80 07                         	neorw \$r39 = \$r39, -8589934592 \(0xfffffffe00000000\);;

    1584:	e8 ff a0 eb ff ff ff 87 ff ff ff 00             	niord \$r40 = \$r40, 2305843009213693951 \(0x1fffffffffffffff\);;

    1590:	69 0a a1 7b                                     	niord \$r40 = \$r41, \$r41;;

    1594:	2a f0 a4 6b                                     	niord \$r41 = \$r42, -64 \(0xffffffc0\);;

    1598:	2a 00 a8 eb 00 00 80 07                         	niord \$r42 = \$r42, -8589934592 \(0xfffffffe00000000\);;

    15a0:	eb 1a ad 7b                                     	niorw \$r43 = \$r43, \$r43;;

    15a4:	2c f0 b0 7b                                     	niorw \$r44 = \$r44, -64 \(0xffffffc0\);;

    15a8:	2d 00 b0 fb 00 00 80 07                         	niorw \$r44 = \$r45, -8589934592 \(0xfffffffe00000000\);;

    15b0:	00 f0 03 7f                                     	nop;;

    15b4:	ed ff b4 eb ff ff ff 87 ff ff ff 00             	niord \$r45 = \$r45, 2305843009213693951 \(0x1fffffffffffffff\);;

    15c0:	ae 0b b9 7b                                     	niord \$r46 = \$r46, \$r46;;

    15c4:	2f f0 bc 6b                                     	niord \$r47 = \$r47, -64 \(0xffffffc0\);;

    15c8:	30 00 bc eb 00 00 80 07                         	niord \$r47 = \$r48, -8589934592 \(0xfffffffe00000000\);;

    15d0:	70 1c c1 7b                                     	niorw \$r48 = \$r48, \$r49;;

    15d4:	31 f0 c4 7b                                     	niorw \$r49 = \$r49, -64 \(0xffffffc0\);;

    15d8:	32 00 c8 fb 00 00 80 07                         	niorw \$r50 = \$r50, -8589934592 \(0xfffffffe00000000\);;

    15e0:	f3 ff c8 6c                                     	notd \$r50 = \$r51;;

    15e4:	f3 ff cc 7c                                     	notw \$r51 = \$r51;;

    15e8:	f4 ff d0 ed ff ff ff 87 ff ff ff 00             	neord \$r52 = \$r52, 2305843009213693951 \(0x1fffffffffffffff\);;

    15f4:	75 0d d1 7d                                     	neord \$r52 = \$r53, \$r53;;

    15f8:	36 f0 d4 6d                                     	neord \$r53 = \$r54, -64 \(0xffffffc0\);;

    15fc:	36 00 d8 ed 00 00 80 07                         	neord \$r54 = \$r54, -8589934592 \(0xfffffffe00000000\);;

    1604:	f7 1d dd 7d                                     	neorw \$r55 = \$r55, \$r55;;

    1608:	38 f0 e0 7d                                     	neorw \$r56 = \$r56, -64 \(0xffffffc0\);;

    160c:	39 00 e0 fd 00 00 80 07                         	neorw \$r56 = \$r57, -8589934592 \(0xfffffffe00000000\);;

    1614:	f9 ff e4 ea ff ff ff 87 ff ff ff 00             	iord \$r57 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

    1620:	ba 0e e9 7a                                     	iord \$r58 = \$r58, \$r58;;

    1624:	3b f0 ec 6a                                     	iord \$r59 = \$r59, -64 \(0xffffffc0\);;

    1628:	3c 00 ec ea 00 00 80 07                         	iord \$r59 = \$r60, -8589934592 \(0xfffffffe00000000\);;

    1630:	fc ff f0 ef ff ff ff 87 ff ff ff 00             	iornd \$r60 = \$r60, 2305843009213693951 \(0x1fffffffffffffff\);;

    163c:	7d 0f f5 7f                                     	iornd \$r61 = \$r61, \$r61;;

    1640:	3e f0 f8 6f                                     	iornd \$r62 = \$r62, -64 \(0xffffffc0\);;

    1644:	3f 00 f8 ef 00 00 80 07                         	iornd \$r62 = \$r63, -8589934592 \(0xfffffffe00000000\);;

    164c:	3f 10 fd 7f                                     	iornw \$r63 = \$r63, \$r0;;

    1650:	00 f0 00 7f                                     	iornw \$r0 = \$r0, -64 \(0xffffffc0\);;

    1654:	01 00 04 ff 00 00 80 07                         	iornw \$r1 = \$r1, -8589934592 \(0xfffffffe00000000\);;

    165c:	82 10 05 7a                                     	iorw \$r1 = \$r2, \$r2;;

    1660:	03 f0 08 7a                                     	iorw \$r2 = \$r3, -64 \(0xffffffc0\);;

    1664:	03 00 0c fa 00 00 80 07                         	iorw \$r3 = \$r3, -8589934592 \(0xfffffffe00000000\);;

    166c:	c0 ff 10 f0 ff ff ff 87 ff ff ff 00             	pcrel \$r4 = 2305843009213693951 \(0x1fffffffffffffff\);;

    1678:	3c 00 10 f0 00 00 00 00                         	pcrel \$r4 = -549755813888 \(0xffffff8000000000\);;

    1680:	00 f0 10 70                                     	pcrel \$r4 = -4096 \(0xfffff000\);;

    1684:	00 00 d0 0f                                     	ret;;

    1688:	00 00 d4 0f                                     	rfe;;

    168c:	45 81 16 7e                                     	rolwps \$r5 = \$r5, \$r5;;

    1690:	c6 41 1a 7e                                     	rolwps \$r6 = \$r6, 7 \(0x7\);;

    1694:	c7 71 1a 7e                                     	rolw \$r6 = \$r7, \$r7;;

    1698:	c8 31 1e 7e                                     	rolw \$r7 = \$r8, 7 \(0x7\);;

    169c:	48 82 22 7f                                     	rorwps \$r8 = \$r8, \$r9;;

    16a0:	c9 41 26 7f                                     	rorwps \$r9 = \$r9, 7 \(0x7\);;

    16a4:	8a 72 2a 7f                                     	rorw \$r10 = \$r10, \$r10;;

    16a8:	cb 31 2e 7f                                     	rorw \$r11 = \$r11, 7 \(0x7\);;

    16ac:	0b 07 c8 0f                                     	rswap \$r11 = \$mmc;;

    16b0:	0c 00 c8 0f                                     	rswap \$r12 = \$pc;;

    16b4:	0c 00 c8 0f                                     	rswap \$r12 = \$pc;;

    16b8:	0d 24 36 7e                                     	satdh \$r13 = \$r13;;

    16bc:	0e 28 3a 7e                                     	satdw \$r14 = \$r14;;

    16c0:	0f 64 3e 7e                                     	satd \$r15 = \$r15, \$r16;;

    16c4:	d0 21 42 7e                                     	satd \$r16 = \$r16, 7 \(0x7\);;

    16c8:	51 d4 45 7f                                     	sbfcd.i \$r17 = \$r17, \$r17;;

    16cc:	d2 d7 49 ff ff ff ff 00                         	sbfcd.i \$r18 = \$r18, 536870911 \(0x1fffffff\);;

    16d4:	d3 c4 49 7f                                     	sbfcd \$r18 = \$r19, \$r19;;

    16d8:	d4 c7 4d ff ff ff ff 00                         	sbfcd \$r19 = \$r20, 536870911 \(0x1fffffff\);;

    16e0:	d4 ff 50 e5 ff ff ff 87 ff ff ff 00             	sbfd \$r20 = \$r20, 2305843009213693951 \(0x1fffffffffffffff\);;

    16ec:	55 05 55 75                                     	sbfd \$r21 = \$r21, \$r21;;

    16f0:	16 f0 58 65                                     	sbfd \$r22 = \$r22, -64 \(0xffffffc0\);;

    16f4:	17 00 58 e5 00 00 80 07                         	sbfd \$r22 = \$r23, -8589934592 \(0xfffffffe00000000\);;

    16fc:	17 36 5d 7d                                     	sbfhcp.c \$r23 = \$r23, \$r24;;

    1700:	d8 3f 61 fd ff ff ff 00                         	sbfhcp.c \$r24 = \$r24, 536870911 \(0x1fffffff\).@;;

    1708:	59 36 65 75                                     	sbfhq \$r25 = \$r25, \$r25;;

    170c:	da 37 69 f5 ff ff ff 00                         	sbfhq \$r26 = \$r26, 536870911 \(0x1fffffff\);;

    1714:	db ff 69 ef ff ff ff 87 ff ff ff 00             	sbfsd \$r26 = \$r27, 2305843009213693951 \(0x1fffffffffffffff\);;

    1720:	1b a7 6d 7f                                     	sbfsd \$r27 = \$r27, \$r28;;

    1724:	1c f0 71 6f                                     	sbfsd \$r28 = \$r28, -64 \(0xffffffc0\);;

    1728:	1d 00 75 ef 00 00 80 07                         	sbfsd \$r29 = \$r29, -8589934592 \(0xfffffffe00000000\);;

    1730:	9e f7 75 7f                                     	sbfshq \$r29 = \$r30, \$r30;;

    1734:	df ff 79 ff ff ff ff 00                         	sbfshq \$r30 = \$r31, 536870911 \(0x1fffffff\).@;;

    173c:	1f e8 7d 7f                                     	sbfswp \$r31 = \$r31, \$r32;;

    1740:	e0 e7 81 ff ff ff ff 00                         	sbfswp \$r32 = \$r32, 536870911 \(0x1fffffff\);;

    1748:	61 b8 85 7f                                     	sbfsw \$r33 = \$r33, \$r33;;

    174c:	e2 b7 89 ff ff ff ff 00                         	sbfsw \$r34 = \$r34, 536870911 \(0x1fffffff\);;

    1754:	e3 48 89 7b                                     	sbfuwd \$r34 = \$r35, \$r35;;

    1758:	e4 4f 8d fb ff ff ff 00                         	sbfuwd \$r35 = \$r36, 536870911 \(0x1fffffff\).@;;

    1760:	64 29 91 7d                                     	sbfwc.c \$r36 = \$r36, \$r37;;

    1764:	e5 27 95 fd ff ff ff 00                         	sbfwc.c \$r37 = \$r37, 536870911 \(0x1fffffff\);;

    176c:	a6 49 99 79                                     	sbfwd \$r38 = \$r38, \$r38;;

    1770:	e7 4f 9d f9 ff ff ff 00                         	sbfwd \$r39 = \$r39, 536870911 \(0x1fffffff\).@;;

    1778:	28 2a 9d 75                                     	sbfwp \$r39 = \$r40, \$r40;;

    177c:	e9 27 a1 f5 ff ff ff 00                         	sbfwp \$r40 = \$r41, 536870911 \(0x1fffffff\);;

    1784:	a9 1a a5 75                                     	sbfw \$r41 = \$r41, \$r42;;

    1788:	2a f0 a8 75                                     	sbfw \$r42 = \$r42, -64 \(0xffffffc0\);;

    178c:	2b 00 ac f5 00 00 80 07                         	sbfw \$r43 = \$r43, -8589934592 \(0xfffffffe00000000\);;

    1794:	2c 4b ad 77                                     	sbfx16d \$r43 = \$r44, \$r44;;

    1798:	ed 4f b1 f7 ff ff ff 00                         	sbfx16d \$r44 = \$r45, 536870911 \(0x1fffffff\).@;;

    17a0:	ad 7b b5 77                                     	sbfx16hq \$r45 = \$r45, \$r46;;

    17a4:	ee 77 b9 f7 ff ff ff 00                         	sbfx16hq \$r46 = \$r46, 536870911 \(0x1fffffff\);;

    17ac:	ef 8b bd 7f                                     	sbfx16uwd \$r47 = \$r47, \$r47;;

    17b0:	f0 87 c1 ff ff ff ff 00                         	sbfx16uwd \$r48 = \$r48, 536870911 \(0x1fffffff\);;

    17b8:	71 8c c1 77                                     	sbfx16wd \$r48 = \$r49, \$r49;;

    17bc:	f2 87 c5 f7 ff ff ff 00                         	sbfx16wd \$r49 = \$r50, 536870911 \(0x1fffffff\);;

    17c4:	f2 6c c9 77                                     	sbfx16wp \$r50 = \$r50, \$r51;;

    17c8:	f3 6f cd f7 ff ff ff 00                         	sbfx16wp \$r51 = \$r51, 536870911 \(0x1fffffff\).@;;

    17d0:	34 5d d1 77                                     	sbfx16w \$r52 = \$r52, \$r52;;

    17d4:	f5 57 d5 f7 ff ff ff 00                         	sbfx16w \$r53 = \$r53, 536870911 \(0x1fffffff\);;

    17dc:	b6 4d d5 71                                     	sbfx2d \$r53 = \$r54, \$r54;;

    17e0:	f7 47 d9 f1 ff ff ff 00                         	sbfx2d \$r54 = \$r55, 536870911 \(0x1fffffff\);;

    17e8:	37 7e dd 71                                     	sbfx2hq \$r55 = \$r55, \$r56;;

    17ec:	f8 7f e1 f1 ff ff ff 00                         	sbfx2hq \$r56 = \$r56, 536870911 \(0x1fffffff\).@;;

    17f4:	79 8e e5 79                                     	sbfx2uwd \$r57 = \$r57, \$r57;;

    17f8:	fa 87 e9 f9 ff ff ff 00                         	sbfx2uwd \$r58 = \$r58, 536870911 \(0x1fffffff\);;

    1800:	fb 8e e9 71                                     	sbfx2wd \$r58 = \$r59, \$r59;;

    1804:	fc 87 ed f1 ff ff ff 00                         	sbfx2wd \$r59 = \$r60, 536870911 \(0x1fffffff\);;

    180c:	7c 6f f1 71                                     	sbfx2wp \$r60 = \$r60, \$r61;;

    1810:	fd 67 f5 f1 ff ff ff 00                         	sbfx2wp \$r61 = \$r61, 536870911 \(0x1fffffff\);;

    1818:	be 5f f9 71                                     	sbfx2w \$r62 = \$r62, \$r62;;

    181c:	ff 57 fd f1 ff ff ff 00                         	sbfx2w \$r63 = \$r63, 536870911 \(0x1fffffff\);;

    1824:	00 40 fd 73                                     	sbfx4d \$r63 = \$r0, \$r0;;

    1828:	c1 4f 01 f3 ff ff ff 00                         	sbfx4d \$r0 = \$r1, 536870911 \(0x1fffffff\).@;;

    1830:	81 70 05 73                                     	sbfx4hq \$r1 = \$r1, \$r2;;

    1834:	c2 77 09 f3 ff ff ff 00                         	sbfx4hq \$r2 = \$r2, 536870911 \(0x1fffffff\);;

    183c:	c3 80 0d 7b                                     	sbfx4uwd \$r3 = \$r3, \$r3;;

    1840:	c4 87 11 fb ff ff ff 00                         	sbfx4uwd \$r4 = \$r4, 536870911 \(0x1fffffff\);;

    1848:	45 81 11 73                                     	sbfx4wd \$r4 = \$r5, \$r5;;

    184c:	c6 87 15 f3 ff ff ff 00                         	sbfx4wd \$r5 = \$r6, 536870911 \(0x1fffffff\);;

    1854:	c6 61 19 73                                     	sbfx4wp \$r6 = \$r6, \$r7;;

    1858:	c7 6f 1d f3 ff ff ff 00                         	sbfx4wp \$r7 = \$r7, 536870911 \(0x1fffffff\).@;;

    1860:	08 52 21 73                                     	sbfx4w \$r8 = \$r8, \$r8;;

    1864:	c9 57 25 f3 ff ff ff 00                         	sbfx4w \$r9 = \$r9, 536870911 \(0x1fffffff\);;

    186c:	8a 42 25 75                                     	sbfx8d \$r9 = \$r10, \$r10;;

    1870:	cb 47 29 f5 ff ff ff 00                         	sbfx8d \$r10 = \$r11, 536870911 \(0x1fffffff\);;

    1878:	0b 73 2d 75                                     	sbfx8hq \$r11 = \$r11, \$r12;;

    187c:	cd 7f 31 f5 ff ff ff 00                         	sbfx8hq \$r12 = \$r13, 536870911 \(0x1fffffff\).@;;

    1884:	8e 83 35 7d                                     	sbfx8uwd \$r13 = \$r14, \$r14;;

    1888:	cf 87 3d fd ff ff ff 00                         	sbfx8uwd \$r15 = \$r15, 536870911 \(0x1fffffff\);;

    1890:	10 84 41 75                                     	sbfx8wd \$r16 = \$r16, \$r16;;

    1894:	d1 87 45 f5 ff ff ff 00                         	sbfx8wd \$r17 = \$r17, 536870911 \(0x1fffffff\);;

    189c:	92 64 45 75                                     	sbfx8wp \$r17 = \$r18, \$r18;;

    18a0:	d3 67 49 f5 ff ff ff 00                         	sbfx8wp \$r18 = \$r19, 536870911 \(0x1fffffff\);;

    18a8:	13 55 4d 75                                     	sbfx8w \$r19 = \$r19, \$r20;;

    18ac:	d4 57 51 f5 ff ff ff 00                         	sbfx8w \$r20 = \$r20, 536870911 \(0x1fffffff\);;

    18b4:	d5 ff 56 ee ff ff ff 87 ff ff ff 00             	sbmm8 \$r21 = \$r21, 2305843009213693951 \(0x1fffffffffffffff\);;

    18c0:	96 05 56 7e                                     	sbmm8 \$r21 = \$r22, \$r22;;

    18c4:	17 f0 5a 6e                                     	sbmm8 \$r22 = \$r23, -64 \(0xffffffc0\);;

    18c8:	17 00 5e ee 00 00 80 07                         	sbmm8 \$r23 = \$r23, -8589934592 \(0xfffffffe00000000\);;

    18d0:	d8 ff 62 ef ff ff ff 87 ff ff ff 00             	sbmmt8 \$r24 = \$r24, 2305843009213693951 \(0x1fffffffffffffff\);;

    18dc:	59 06 62 7f                                     	sbmmt8 \$r24 = \$r25, \$r25;;

    18e0:	1a f0 66 6f                                     	sbmmt8 \$r25 = \$r26, -64 \(0xffffffc0\);;

    18e4:	1a 00 6a ef 00 00 80 07                         	sbmmt8 \$r26 = \$r26, -8589934592 \(0xfffffffe00000000\);;

    18ec:	db f6 6f 24                                     	sb.xs \$r27\[\$r27\] = \$r27;;

    18f0:	dc ff 71 a4 ff ff ff 9f ff ff ff 18             	sb 2305843009213693951 \(0x1fffffffffffffff\)\[\$r28\] = \$r28;;

    18fc:	1d 67 77 a4 00 00 00 98 00 00 80 1f             	sb.odd \$r28\? -1125899906842624 \(0xfffc000000000000\)\[\$r29\] = \$r29;;

    1908:	5e 77 7b a4 00 00 80 1f                         	sb.even \$r29\? -8388608 \(0xff800000\)\[\$r30\] = \$r30;;

    1910:	9f 87 7f 24                                     	sb.wnez \$r30\? \[\$r31\] = \$r31;;

    1914:	1f f0 81 24                                     	sb -64 \(0xffffffc0\)\[\$r31\] = \$r32;;

    1918:	20 00 81 a4 00 00 80 1f                         	sb -8589934592 \(0xfffffffe00000000\)\[\$r32\] = \$r32;;

    1920:	21 00 e4 0f                                     	scall \$r33;;

    1924:	ff 01 e0 0f                                     	scall 511 \(0x1ff\);;

    1928:	61 e8 8b 27                                     	sd \$r33\[\$r33\] = \$r34;;

    192c:	e2 ff 89 a7 ff ff ff 9f ff ff ff 18             	sd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r34\] = \$r34;;

    1938:	e3 98 8f a7 00 00 00 98 00 00 80 1f             	sd.weqz \$r35\? -1125899906842624 \(0xfffc000000000000\)\[\$r35\] = \$r35;;

    1944:	24 a9 93 a7 00 00 80 1f                         	sd.wltz \$r36\? -8388608 \(0xff800000\)\[\$r36\] = \$r36;;

    194c:	65 b9 97 27                                     	sd.wgez \$r37\? \[\$r37\] = \$r37;;

    1950:	26 f0 99 27                                     	sd -64 \(0xffffffc0\)\[\$r38\] = \$r38;;

    1954:	26 00 9d a7 00 00 80 1f                         	sd -8589934592 \(0xfffffffe00000000\)\[\$r38\] = \$r39;;

    195c:	27 07 c0 0f                                     	set \$mmc = \$r39;;

    1960:	e7 00 c0 0f                                     	set \$ra = \$r39;;

    1964:	68 00 c0 0f                                     	set \$ps = \$r40;;

    1968:	68 00 c0 0f                                     	set \$ps = \$r40;;

    196c:	29 fa a7 25                                     	sh.xs \$r40\[\$r41\] = \$r41;;

    1970:	e9 ff a9 a5 ff ff ff 9f ff ff ff 18             	sh 2305843009213693951 \(0x1fffffffffffffff\)\[\$r41\] = \$r42;;

    197c:	aa ca af a5 00 00 00 98 00 00 80 1f             	sh.wlez \$r42\? -1125899906842624 \(0xfffc000000000000\)\[\$r42\] = \$r43;;

    1988:	eb da b3 a5 00 00 80 1f                         	sh.wgtz \$r43\? -8388608 \(0xff800000\)\[\$r43\] = \$r44;;

    1990:	2c 0b b7 25                                     	sh.dnez \$r44\? \[\$r44\] = \$r45;;

    1994:	2d f0 b5 25                                     	sh -64 \(0xffffffc0\)\[\$r45\] = \$r45;;

    1998:	2e 00 b9 a5 00 00 80 1f                         	sh -8589934592 \(0xfffffffe00000000\)\[\$r46\] = \$r46;;

    19a0:	00 00 a4 0f                                     	sleep;;

    19a4:	ef 6b ba 79                                     	slld \$r46 = \$r47, \$r47;;

    19a8:	f0 21 be 79                                     	slld \$r47 = \$r48, 7 \(0x7\);;

    19ac:	70 9c c2 79                                     	sllhqs \$r48 = \$r48, \$r49;;

    19b0:	f1 51 c6 79                                     	sllhqs \$r49 = \$r49, 7 \(0x7\);;

    19b4:	b2 8c ca 79                                     	sllwps \$r50 = \$r50, \$r50;;

    19b8:	f3 41 ce 79                                     	sllwps \$r51 = \$r51, 7 \(0x7\);;

    19bc:	34 7d ce 79                                     	sllw \$r51 = \$r52, \$r52;;

    19c0:	f5 31 d2 79                                     	sllw \$r52 = \$r53, 7 \(0x7\);;

    19c4:	b5 6d d6 7c                                     	slsd \$r53 = \$r53, \$r54;;

    19c8:	f6 21 da 7c                                     	slsd \$r54 = \$r54, 7 \(0x7\);;

    19cc:	f7 9d de 7c                                     	slshqs \$r55 = \$r55, \$r55;;

    19d0:	f8 51 e2 7c                                     	slshqs \$r56 = \$r56, 7 \(0x7\);;

    19d4:	79 8e e2 7c                                     	slswps \$r56 = \$r57, \$r57;;

    19d8:	fa 41 e6 7c                                     	slswps \$r57 = \$r58, 7 \(0x7\);;

    19dc:	fa 7e ea 7c                                     	slsw \$r58 = \$r58, \$r59;;

    19e0:	fb 31 ee 7c                                     	slsw \$r59 = \$r59, 7 \(0x7\);;

    19e4:	3c ef d7 28                                     	so \$r60\[\$r60\] = \$r52r53r54r55;;

    19e8:	fc ff e5 a8 ff ff ff 9f ff ff ff 18             	so 2305843009213693951 \(0x1fffffffffffffff\)\[\$r60\] = \$r56r57r58r59;;

    19f4:	7d 1f f7 a8 00 00 00 98 00 00 80 1f             	so.deqz \$r61\? -1125899906842624 \(0xfffc000000000000\)\[\$r61\] = \$r60r61r62r63;;

    1a00:	7e 2f 07 a8 00 00 80 1f                         	so.dltz \$r61\? -8388608 \(0xff800000\)\[\$r62\] = \$r0r1r2r3;;

    1a08:	be 3f 17 28                                     	so.dgez \$r62\? \[\$r62\] = \$r4r5r6r7;;

    1a0c:	3f f0 25 28                                     	so -64 \(0xffffffc0\)\[\$r63\] = \$r8r9r10r11;;

    1a10:	3f 00 35 a8 00 00 80 1f                         	so -8589934592 \(0xfffffffe00000000\)\[\$r63\] = \$r12r13r14r15;;

    1a18:	c0 ff 23 28                                     	sq.xs \$r63\[\$r0\] = \$r8r9;;

    1a1c:	c0 ff 21 a8 ff ff ff 9f ff ff ff 18             	sq 2305843009213693951 \(0x1fffffffffffffff\)\[\$r0\] = \$r8r9;;

    1a28:	01 40 2b a8 00 00 00 98 00 00 80 1f             	sq.dlez \$r0\? -1125899906842624 \(0xfffc000000000000\)\[\$r1\] = \$r10r11;;

    1a34:	41 50 2b a8 00 00 80 1f                         	sq.dgtz \$r1\? -8388608 \(0xff800000\)\[\$r1\] = \$r10r11;;

    1a3c:	82 60 33 28                                     	sq.odd \$r2\? \[\$r2\] = \$r12r13;;

    1a40:	02 f0 31 28                                     	sq -64 \(0xffffffc0\)\[\$r2\] = \$r12r13;;

    1a44:	03 00 39 a8 00 00 80 1f                         	sq -8589934592 \(0xfffffffe00000000\)\[\$r3\] = \$r14r15;;

    1a4c:	03 61 0e 7a                                     	srad \$r3 = \$r3, \$r4;;

    1a50:	c4 21 12 7a                                     	srad \$r4 = \$r4, 7 \(0x7\);;

    1a54:	45 91 16 7a                                     	srahqs \$r5 = \$r5, \$r5;;

    1a58:	c6 51 1a 7a                                     	srahqs \$r6 = \$r6, 7 \(0x7\);;

    1a5c:	c7 81 1a 7a                                     	srawps \$r6 = \$r7, \$r7;;

    1a60:	c8 41 1e 7a                                     	srawps \$r7 = \$r8, 7 \(0x7\);;

    1a64:	48 72 22 7a                                     	sraw \$r8 = \$r8, \$r9;;

    1a68:	c9 31 26 7a                                     	sraw \$r9 = \$r9, 7 \(0x7\);;

    1a6c:	8a 62 2a 7b                                     	srld \$r10 = \$r10, \$r10;;

    1a70:	cb 21 2e 7b                                     	srld \$r11 = \$r11, 7 \(0x7\);;

    1a74:	0c 93 2e 7b                                     	srlhqs \$r11 = \$r12, \$r12;;

    1a78:	cd 51 36 7b                                     	srlhqs \$r13 = \$r13, 7 \(0x7\);;

    1a7c:	ce 83 3a 7b                                     	srlwps \$r14 = \$r14, \$r15;;

    1a80:	d0 41 3e 7b                                     	srlwps \$r15 = \$r16, 7 \(0x7\);;

    1a84:	50 74 42 7b                                     	srlw \$r16 = \$r16, \$r17;;

    1a88:	d1 31 46 7b                                     	srlw \$r17 = \$r17, 7 \(0x7\);;

    1a8c:	92 64 4a 78                                     	srsd \$r18 = \$r18, \$r18;;

    1a90:	d3 21 4e 78                                     	srsd \$r19 = \$r19, 7 \(0x7\);;

    1a94:	14 95 4e 78                                     	srshqs \$r19 = \$r20, \$r20;;

    1a98:	d5 51 52 78                                     	srshqs \$r20 = \$r21, 7 \(0x7\);;

    1a9c:	95 85 56 78                                     	srswps \$r21 = \$r21, \$r22;;

    1aa0:	d6 41 5a 78                                     	srswps \$r22 = \$r22, 7 \(0x7\);;

    1aa4:	d7 75 5e 78                                     	srsw \$r23 = \$r23, \$r23;;

    1aa8:	d8 31 62 78                                     	srsw \$r24 = \$r24, 7 \(0x7\);;

    1aac:	00 00 a8 0f                                     	stop;;

    1ab0:	59 06 61 70                                     	stsud \$r24 = \$r25, \$r25;;

    1ab4:	9a 16 65 70                                     	stsuw \$r25 = \$r26, \$r26;;

    1ab8:	9b e6 6f 26                                     	sw \$r26\[\$r27\] = \$r27;;

    1abc:	db ff 71 a6 ff ff ff 9f ff ff ff 18             	sw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r27\] = \$r28;;

    1ac8:	1c 77 77 a6 00 00 00 98 00 00 80 1f             	sw.even \$r28\? -1125899906842624 \(0xfffc000000000000\)\[\$r28\] = \$r29;;

    1ad4:	5d 87 7b a6 00 00 80 1f                         	sw.wnez \$r29\? -8388608 \(0xff800000\)\[\$r29\] = \$r30;;

    1adc:	9e 97 7f 26                                     	sw.weqz \$r30\? \[\$r30\] = \$r31;;

    1ae0:	1f f0 7d 26                                     	sw -64 \(0xffffffc0\)\[\$r31\] = \$r31;;

    1ae4:	20 00 81 a6 00 00 80 1f                         	sw -8589934592 \(0xfffffffe00000000\)\[\$r32\] = \$r32;;

    1aec:	21 70 83 68                                     	sxbd \$r32 = \$r33;;

    1af0:	21 f0 87 68                                     	sxhd \$r33 = \$r33;;

    1af4:	22 50 8a 76                                     	sxlbhq \$r34 = \$r34;;

    1af8:	23 40 8a 76                                     	sxlhwp \$r34 = \$r35;;

    1afc:	23 50 8e 77                                     	sxmbhq \$r35 = \$r35;;

    1b00:	24 40 92 77                                     	sxmhwp \$r36 = \$r36;;

    1b04:	25 f0 93 69                                     	sxwd \$r36 = \$r37;;

    1b08:	25 00 b4 0f                                     	syncgroup \$r37;;

    1b0c:	00 00 8c 0f                                     	tlbdinval;;

    1b10:	00 00 90 0f                                     	tlbiinval;;

    1b14:	00 00 84 0f                                     	tlbprobe;;

    1b18:	00 00 80 0f                                     	tlbread;;

    1b1c:	00 00 88 0f                                     	tlbwrite;;

    1b20:	25 00 b0 0f                                     	waitit \$r37;;

    1b24:	66 00 b8 0f                                     	wfxl \$ps, \$r38;;

    1b28:	a6 00 b8 0f                                     	wfxl \$pcr, \$r38;;

    1b2c:	66 00 b8 0f                                     	wfxl \$ps, \$r38;;

    1b30:	67 00 bc 0f                                     	wfxm \$ps, \$r39;;

    1b34:	a7 00 bc 0f                                     	wfxm \$pcr, \$r39;;

    1b38:	a7 00 bc 0f                                     	wfxm \$pcr, \$r39;;

    1b3c:	80 4f 34 01                                     	xcopyo \$a13 = \$a4;;

    1b40:	80 5f 34 01                                     	xcopyo \$a13 = \$a5;;

    1b44:	28 fa 37 20                                     	xlo.u.xs \$a13 = \$r40\[\$r40\];;

    1b48:	29 aa e3 a3 00 00 00 98 00 00 80 1f             	xlo.us.wltz.q0 \$r40\? \$a56a57a58a59 = -1125899906842624 \(0xfffc000000000000\)\[\$r41\];;

    1b54:	69 ba f7 a2 00 00 80 1f                         	xlo.u.wgez.q1 \$r41\? \$a60a61a62a63 = -8388608 \(0xff800000\)\[\$r41\];;

    1b5c:	aa ca 0b 23                                     	xlo.us.wlez.q2 \$r42\? \$a0a1a2a3 = \[\$r42\];;

    1b60:	ab da 3b a0 00 00 00 98 00 00 80 1f             	xlo.u.wgtz \$r42\? \$a14 = -1125899906842624 \(0xfffc000000000000\)\[\$r43\];;

    1b6c:	eb 0a 3b a1 00 00 80 1f                         	xlo.us.dnez \$r43\? \$a14 = -8388608 \(0xff800000\)\[\$r43\];;

    1b74:	2c 1b 3b 20                                     	xlo.u.deqz \$r44\? \$a14 = \[\$r44\];;

    1b78:	2d eb 1f 23                                     	xlo.us.q3 \$a4a5a6a7 = \$r44\[\$r45\];;

    1b7c:	ed ff 21 a2 ff ff ff 9f ff ff ff 18             	xlo.u.q0 \$a8a9a10a11 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r45\];;

    1b88:	2d f0 35 23                                     	xlo.us.q1 \$a12a13a14a15 = -64 \(0xffffffc0\)\[\$r45\];;

    1b8c:	2e 00 49 a2 00 00 80 1f                         	xlo.u.q2 \$a16a17a18a19 = -8589934592 \(0xfffffffe00000000\)\[\$r46\];;

    1b94:	ee ff 3d a1 ff ff ff 9f ff ff ff 18             	xlo.us \$a15 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r46\];;

    1ba0:	2e f0 3d 20                                     	xlo.u \$a15 = -64 \(0xffffffc0\)\[\$r46\];;

    1ba4:	2f 00 3d a1 00 00 80 1f                         	xlo.us \$a15 = -8589934592 \(0xfffffffe00000000\)\[\$r47\];;

    1bac:	10 64 10 02                                     	xmma484bw \$a4a5 = \$a6a7, \$a16, \$a16;;

    1bb0:	11 84 1c 02                                     	xmma484subw \$a6a7 = \$a8a9, \$a16, \$a17;;

    1bb4:	51 b4 20 02                                     	xmma484ubw \$a8a9 = \$a10a11, \$a17, \$a17;;

    1bb8:	92 d4 2c 02                                     	xmma484usbw \$a10a11 = \$a12a13, \$a18, \$a18;;

    1bbc:	80 7f 48 00                                     	xmovefo \$r16r17r18r19 = \$a6;;

    1bc0:	80 7f 5c 00                                     	xmovefo \$r20r21r22r23 = \$a7;;

    1bc4:	ef eb 06 7f                                     	movetq \$a1_lo = \$r47, \$r47;;

    1bc8:	30 fc 06 7f                                     	movetq \$a1_hi = \$r48, \$r48;;

    1bcc:	00 80 5d 04                                     	xmt44d \$a20a21a22a23 = \$a24a25a26a27;;

    1bd0:	f1 ff c0 ec ff ff ff 87 ff ff ff 00             	eord \$r48 = \$r49, 2305843009213693951 \(0x1fffffffffffffff\);;

    1bdc:	b1 0c c5 7c                                     	eord \$r49 = \$r49, \$r50;;

    1be0:	32 f0 c8 6c                                     	eord \$r50 = \$r50, -64 \(0xffffffc0\);;

    1be4:	33 00 cc ec 00 00 80 07                         	eord \$r51 = \$r51, -8589934592 \(0xfffffffe00000000\);;

    1bec:	34 1d cd 7c                                     	eorw \$r51 = \$r52, \$r52;;

    1bf0:	35 f0 d0 7c                                     	eorw \$r52 = \$r53, -64 \(0xffffffc0\);;

    1bf4:	35 00 d4 fc 00 00 80 07                         	eorw \$r53 = \$r53, -8589934592 \(0xfffffffe00000000\);;

    1bfc:	b6 fd 4b 29                                     	xso.xs \$r54\[\$r54\] = \$a18;;

    1c00:	f6 ff 4d a9 ff ff ff 9f ff ff ff 18             	xso 2305843009213693951 \(0x1fffffffffffffff\)\[\$r54\] = \$a19;;

    1c0c:	f7 2d 4f a9 00 00 00 98 00 00 80 1f             	xso.dltz \$r55\? -1125899906842624 \(0xfffc000000000000\)\[\$r55\] = \$a19;;

    1c18:	f8 3d 4f a9 00 00 80 1f                         	xso.dgez \$r55\? -8388608 \(0xff800000\)\[\$r56\] = \$a19;;

    1c20:	38 4e 53 29                                     	xso.dlez \$r56\? \[\$r56\] = \$a20;;

    1c24:	39 f0 51 29                                     	xso -64 \(0xffffffc0\)\[\$r57\] = \$a20;;

    1c28:	39 00 51 a9 00 00 80 1f                         	xso -8589934592 \(0xfffffffe00000000\)\[\$r57\] = \$a20;;

    1c30:	fa 3f e4 78                                     	zxbd \$r57 = \$r58;;

    1c34:	3a f0 eb 64                                     	zxhd \$r58 = \$r58;;

    1c38:	fb ff ec 78                                     	zxwd \$r59 = \$r59;;

