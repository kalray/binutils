#as: -m32 -march=kv3-2
#objdump: -d
.*\/kv3-2-insns-32.o:     file format elf32-kvx

Disassembly of section .text:

00000000 <main>:
       0:	00 a0 02 72                                     	abdbo \$r0 = \$r0, \$r0;;

       4:	c1 a7 06 f2 ff ff ff 00                         	abdbo \$r1 = \$r1, 536870911 \(0x1fffffff\);;

       c:	c2 ff 04 e1 ff ff ff 87 ff ff ff 00             	abdd \$r1 = \$r2, 2305843009213693951 \(0x1fffffffffffffff\);;

      18:	c2 00 09 71                                     	abdd \$r2 = \$r2, \$r3;;

      1c:	03 f0 0c 61                                     	abdd \$r3 = \$r3, -64 \(0xffffffc0\);;

      20:	04 00 10 e1 00 00 80 07                         	abdd \$r4 = \$r4, -8589934592 \(0xfffffffe00000000\);;

      28:	45 31 11 71                                     	abdhq \$r4 = \$r5, \$r5;;

      2c:	c6 3f 15 f1 ff ff ff 00                         	abdhq \$r5 = \$r6, 536870911 \(0x1fffffff\).@;;

      34:	c6 a1 1a 73                                     	abdsbo \$r6 = \$r6, \$r7;;

      38:	c7 a7 1e f3 ff ff ff 00                         	abdsbo \$r7 = \$r7, 536870911 \(0x1fffffff\);;

      40:	08 02 21 70                                     	abdsd \$r8 = \$r8, \$r8;;

      44:	c9 0f 25 f0 ff ff ff 00                         	abdsd \$r9 = \$r9, 536870911 \(0x1fffffff\).@;;

      4c:	8a 32 25 70                                     	abdshq \$r9 = \$r10, \$r10;;

      50:	cb 37 29 f0 ff ff ff 00                         	abdshq \$r10 = \$r11, 536870911 \(0x1fffffff\);;

      58:	0b 23 2d 70                                     	abdswp \$r11 = \$r11, \$r12;;

      5c:	cd 2f 31 f0 ff ff ff 00                         	abdswp \$r12 = \$r13, 536870911 \(0x1fffffff\).@;;

      64:	8e 13 35 70                                     	abdsw \$r13 = \$r14, \$r14;;

      68:	cf 17 3d f0 ff ff ff 00                         	abdsw \$r15 = \$r15, 536870911 \(0x1fffffff\);;

      70:	10 c4 42 7f                                     	abdubo \$r16 = \$r16, \$r16;;

      74:	d1 c7 46 ff ff ff ff 00                         	abdubo \$r17 = \$r17, 536870911 \(0x1fffffff\);;

      7c:	92 a4 45 7f                                     	abdud \$r17 = \$r18, \$r18;;

      80:	d3 af 49 ff ff ff ff 00                         	abdud \$r18 = \$r19, 536870911 \(0x1fffffff\).@;;

      88:	13 f5 4d 7f                                     	abduhq \$r19 = \$r19, \$r20;;

      8c:	d4 f7 51 ff ff ff ff 00                         	abduhq \$r20 = \$r20, 536870911 \(0x1fffffff\);;

      94:	55 e5 55 7f                                     	abduwp \$r21 = \$r21, \$r21;;

      98:	d6 ef 59 ff ff ff ff 00                         	abduwp \$r22 = \$r22, 536870911 \(0x1fffffff\).@;;

      a0:	d7 b5 59 7f                                     	abduw \$r22 = \$r23, \$r23;;

      a4:	d8 b7 5d ff ff ff ff 00                         	abduw \$r23 = \$r24, 536870911 \(0x1fffffff\);;

      ac:	58 26 61 71                                     	abdwp \$r24 = \$r24, \$r25;;

      b0:	d9 27 65 f1 ff ff ff 00                         	abdwp \$r25 = \$r25, 536870911 \(0x1fffffff\);;

      b8:	9a 16 69 71                                     	abdw \$r26 = \$r26, \$r26;;

      bc:	1b f0 6c 71                                     	abdw \$r27 = \$r27, -64 \(0xffffffc0\);;

      c0:	1c 00 6c f1 00 00 80 07                         	abdw \$r27 = \$r28, -8589934592 \(0xfffffffe00000000\);;

      c8:	1c a0 72 f2 00 00 00 00                         	absbo \$r28 = \$r28;;

      d0:	1d 00 74 61                                     	absd \$r29 = \$r29;;

      d4:	1e 30 75 f1 00 00 00 00                         	abshq \$r29 = \$r30;;

      dc:	1e a0 7a f3 00 00 00 00                         	abssbo \$r30 = \$r30;;

      e4:	1f 00 7d f0 00 00 00 00                         	abssd \$r31 = \$r31;;

      ec:	20 30 7d f0 00 00 00 00                         	absshq \$r31 = \$r32;;

      f4:	20 20 81 f0 00 00 00 00                         	absswp \$r32 = \$r32;;

      fc:	21 10 85 f0 00 00 00 00                         	abssw \$r33 = \$r33;;

     104:	22 20 85 f1 00 00 00 00                         	abswp \$r33 = \$r34;;

     10c:	22 00 88 71                                     	absw \$r34 = \$r34;;

     110:	23 a0 8f bc 00 00 00 98 00 00 80 1f             	acswapd.v \$r35, -1125899906842624 \(0xfffc000000000000\)\[\$r35\] = \$r0r1;;

     11c:	24 b0 8f bd 00 00 80 1f                         	acswapd.g \$r35, -8388608 \(0xff800000\)\[\$r36\] = \$r0r1;;

     124:	a4 a0 93 3e                                     	acswapd.v.s \$r36, \[\$r36\] = \$r2r3;;

     128:	25 d0 0b bc 00 00 00 98 00 00 80 1f             	acswapq \$r2r3, -1125899906842624 \(0xfffc000000000000\)\[\$r37\] = \$r0r1r2r3;;

     134:	25 c1 13 bd 00 00 80 1f                         	acswapq.v.g \$r4r5, -8388608 \(0xff800000\)\[\$r37\] = \$r4r5r6r7;;

     13c:	25 d2 13 3e                                     	acswapq.s \$r4r5, \[\$r37\] = \$r8r9r10r11;;

     140:	a6 81 9b bc 00 00 00 98 00 00 80 1f             	acswapw.v \$r38, -1125899906842624 \(0xfffc000000000000\)\[\$r38\] = \$r6r7;;

     14c:	a7 91 9b bd 00 00 80 1f                         	acswapw.g \$r38, -8388608 \(0xff800000\)\[\$r39\] = \$r6r7;;

     154:	27 82 9f 3e                                     	acswapw.v.s \$r39, \[\$r39\] = \$r8r9;;

     158:	28 aa a2 70                                     	addbo \$r40 = \$r40, \$r40;;

     15c:	e9 af a6 f0 ff ff ff 00                         	addbo \$r41 = \$r41, 536870911 \(0x1fffffff\).@;;

     164:	aa 9a a5 7e                                     	addcd.i \$r41 = \$r42, \$r42;;

     168:	eb 97 a9 fe ff ff ff 00                         	addcd.i \$r42 = \$r43, 536870911 \(0x1fffffff\);;

     170:	2b 8b ad 7e                                     	addcd \$r43 = \$r43, \$r44;;

     174:	ec 87 b1 fe ff ff ff 00                         	addcd \$r44 = \$r44, 536870911 \(0x1fffffff\);;

     17c:	ed ff b4 e2 ff ff ff 87 ff ff ff 00             	addd \$r45 = \$r45, 2305843009213693951 \(0x1fffffffffffffff\);;

     188:	ae 0b b5 72                                     	addd \$r45 = \$r46, \$r46;;

     18c:	2f f0 b8 62                                     	addd \$r46 = \$r47, -64 \(0xffffffc0\);;

     190:	2f 00 bc e2 00 00 80 07                         	addd \$r47 = \$r47, -8589934592 \(0xfffffffe00000000\);;

     198:	30 3c c1 72                                     	addhq \$r48 = \$r48, \$r48;;

     19c:	f1 37 c5 f2 ff ff ff 00                         	addhq \$r49 = \$r49, 536870911 \(0x1fffffff\);;

     1a4:	b2 c0 c7 76                                     	addrbod \$r49 = \$r50;;

     1a8:	72 c0 cb 76                                     	addrhqd \$r50 = \$r50;;

     1ac:	33 c0 cf 76                                     	addrwpd \$r51 = \$r51;;

     1b0:	34 bd ce 7c                                     	addsbo \$r51 = \$r52, \$r52;;

     1b4:	f5 bf d2 fc ff ff ff 00                         	addsbo \$r52 = \$r53, 536870911 \(0x1fffffff\).@;;

     1bc:	b5 4d d5 7c                                     	addsd \$r53 = \$r53, \$r54;;

     1c0:	f6 47 d9 fc ff ff ff 00                         	addsd \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     1c8:	f7 7d dd 7c                                     	addshq \$r55 = \$r55, \$r55;;

     1cc:	f8 7f e1 fc ff ff ff 00                         	addshq \$r56 = \$r56, 536870911 \(0x1fffffff\).@;;

     1d4:	79 6e e1 7c                                     	addswp \$r56 = \$r57, \$r57;;

     1d8:	fa 67 e5 fc ff ff ff 00                         	addswp \$r57 = \$r58, 536870911 \(0x1fffffff\);;

     1e0:	fa 5e e9 7c                                     	addsw \$r58 = \$r58, \$r59;;

     1e4:	fb 57 ed fc ff ff ff 00                         	addsw \$r59 = \$r59, 536870911 \(0x1fffffff\);;

     1ec:	bc c0 f3 7a                                     	addurbod \$r60 = \$r60;;

     1f0:	7d c0 f3 7a                                     	addurhqd \$r60 = \$r61;;

     1f4:	3d c0 f7 7a                                     	addurwpd \$r61 = \$r61;;

     1f8:	be bf fa 7e                                     	addusbo \$r62 = \$r62, \$r62;;

     1fc:	ff bf fe fe ff ff ff 00                         	addusbo \$r63 = \$r63, 536870911 \(0x1fffffff\).@;;

     204:	00 40 fd 7e                                     	addusd \$r63 = \$r0, \$r0;;

     208:	c1 47 01 fe ff ff ff 00                         	addusd \$r0 = \$r1, 536870911 \(0x1fffffff\);;

     210:	81 70 05 7e                                     	addushq \$r1 = \$r1, \$r2;;

     214:	c2 7f 09 fe ff ff ff 00                         	addushq \$r2 = \$r2, 536870911 \(0x1fffffff\).@;;

     21c:	c3 60 0d 7e                                     	adduswp \$r3 = \$r3, \$r3;;

     220:	c4 67 11 fe ff ff ff 00                         	adduswp \$r4 = \$r4, 536870911 \(0x1fffffff\);;

     228:	45 51 11 7e                                     	addusw \$r4 = \$r5, \$r5;;

     22c:	c6 57 15 fe ff ff ff 00                         	addusw \$r5 = \$r6, 536870911 \(0x1fffffff\);;

     234:	c6 91 19 7c                                     	adduwd \$r6 = \$r6, \$r7;;

     238:	c7 97 1d fc ff ff ff 00                         	adduwd \$r7 = \$r7, 536870911 \(0x1fffffff\);;

     240:	08 82 21 7c                                     	addwd \$r8 = \$r8, \$r8;;

     244:	c9 87 25 fc ff ff ff 00                         	addwd \$r9 = \$r9, 536870911 \(0x1fffffff\);;

     24c:	8a 22 25 72                                     	addwp \$r9 = \$r10, \$r10;;

     250:	cb 2f 29 f2 ff ff ff 00                         	addwp \$r10 = \$r11, 536870911 \(0x1fffffff\).@;;

     258:	0b 13 2d 72                                     	addw \$r11 = \$r11, \$r12;;

     25c:	0d f0 30 72                                     	addw \$r12 = \$r13, -64 \(0xffffffc0\);;

     260:	0e 00 34 f2 00 00 80 07                         	addw \$r13 = \$r14, -8589934592 \(0xfffffffe00000000\);;

     268:	cf b3 3a 76                                     	addx16bo \$r14 = \$r15, \$r15;;

     26c:	d0 b7 42 f6 ff ff ff 00                         	addx16bo \$r16 = \$r16, 536870911 \(0x1fffffff\);;

     274:	51 44 41 76                                     	addx16d \$r16 = \$r17, \$r17;;

     278:	d2 4f 45 f6 ff ff ff 00                         	addx16d \$r17 = \$r18, 536870911 \(0x1fffffff\).@;;

     280:	d2 74 49 76                                     	addx16hq \$r18 = \$r18, \$r19;;

     284:	d3 77 4d f6 ff ff ff 00                         	addx16hq \$r19 = \$r19, 536870911 \(0x1fffffff\);;

     28c:	14 95 51 76                                     	addx16uwd \$r20 = \$r20, \$r20;;

     290:	d5 97 55 f6 ff ff ff 00                         	addx16uwd \$r21 = \$r21, 536870911 \(0x1fffffff\);;

     298:	96 85 55 76                                     	addx16wd \$r21 = \$r22, \$r22;;

     29c:	d7 87 59 f6 ff ff ff 00                         	addx16wd \$r22 = \$r23, 536870911 \(0x1fffffff\);;

     2a4:	17 66 5d 76                                     	addx16wp \$r23 = \$r23, \$r24;;

     2a8:	d8 6f 61 f6 ff ff ff 00                         	addx16wp \$r24 = \$r24, 536870911 \(0x1fffffff\).@;;

     2b0:	59 56 65 76                                     	addx16w \$r25 = \$r25, \$r25;;

     2b4:	da 57 69 f6 ff ff ff 00                         	addx16w \$r26 = \$r26, 536870911 \(0x1fffffff\);;

     2bc:	db b6 6a 70                                     	addx2bo \$r26 = \$r27, \$r27;;

     2c0:	dc b7 6e f0 ff ff ff 00                         	addx2bo \$r27 = \$r28, 536870911 \(0x1fffffff\);;

     2c8:	5c 47 71 70                                     	addx2d \$r28 = \$r28, \$r29;;

     2cc:	dd 4f 75 f0 ff ff ff 00                         	addx2d \$r29 = \$r29, 536870911 \(0x1fffffff\).@;;

     2d4:	9e 77 79 70                                     	addx2hq \$r30 = \$r30, \$r30;;

     2d8:	df 77 7d f0 ff ff ff 00                         	addx2hq \$r31 = \$r31, 536870911 \(0x1fffffff\);;

     2e0:	20 98 7d 70                                     	addx2uwd \$r31 = \$r32, \$r32;;

     2e4:	e1 97 81 f0 ff ff ff 00                         	addx2uwd \$r32 = \$r33, 536870911 \(0x1fffffff\);;

     2ec:	a1 88 85 70                                     	addx2wd \$r33 = \$r33, \$r34;;

     2f0:	e2 87 89 f0 ff ff ff 00                         	addx2wd \$r34 = \$r34, 536870911 \(0x1fffffff\);;

     2f8:	e3 68 8d 70                                     	addx2wp \$r35 = \$r35, \$r35;;

     2fc:	e4 6f 91 f0 ff ff ff 00                         	addx2wp \$r36 = \$r36, 536870911 \(0x1fffffff\).@;;

     304:	65 59 91 70                                     	addx2w \$r36 = \$r37, \$r37;;

     308:	e6 57 95 f0 ff ff ff 00                         	addx2w \$r37 = \$r38, 536870911 \(0x1fffffff\);;

     310:	e6 49 99 78                                     	addx32d \$r38 = \$r38, \$r39;;

     314:	e7 47 9d f8 ff ff ff 00                         	addx32d \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     31c:	28 9a a1 78                                     	addx32uwd \$r40 = \$r40, \$r40;;

     320:	e9 97 a5 f8 ff ff ff 00                         	addx32uwd \$r41 = \$r41, 536870911 \(0x1fffffff\);;

     328:	aa 8a a5 78                                     	addx32wd \$r41 = \$r42, \$r42;;

     32c:	eb 87 a9 f8 ff ff ff 00                         	addx32wd \$r42 = \$r43, 536870911 \(0x1fffffff\);;

     334:	2b 5b ad 78                                     	addx32w \$r43 = \$r43, \$r44;;

     338:	ec 57 b1 f8 ff ff ff 00                         	addx32w \$r44 = \$r44, 536870911 \(0x1fffffff\);;

     340:	6d bb b6 72                                     	addx4bo \$r45 = \$r45, \$r45;;

     344:	ee bf ba f2 ff ff ff 00                         	addx4bo \$r46 = \$r46, 536870911 \(0x1fffffff\).@;;

     34c:	ef 4b b9 72                                     	addx4d \$r46 = \$r47, \$r47;;

     350:	f0 47 bd f2 ff ff ff 00                         	addx4d \$r47 = \$r48, 536870911 \(0x1fffffff\);;

     358:	70 7c c1 72                                     	addx4hq \$r48 = \$r48, \$r49;;

     35c:	f1 7f c5 f2 ff ff ff 00                         	addx4hq \$r49 = \$r49, 536870911 \(0x1fffffff\).@;;

     364:	b2 9c c9 72                                     	addx4uwd \$r50 = \$r50, \$r50;;

     368:	f3 97 cd f2 ff ff ff 00                         	addx4uwd \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     370:	34 8d cd 72                                     	addx4wd \$r51 = \$r52, \$r52;;

     374:	f5 87 d1 f2 ff ff ff 00                         	addx4wd \$r52 = \$r53, 536870911 \(0x1fffffff\);;

     37c:	b5 6d d5 72                                     	addx4wp \$r53 = \$r53, \$r54;;

     380:	f6 67 d9 f2 ff ff ff 00                         	addx4wp \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     388:	f7 5d dd 72                                     	addx4w \$r55 = \$r55, \$r55;;

     38c:	f8 57 e1 f2 ff ff ff 00                         	addx4w \$r56 = \$r56, 536870911 \(0x1fffffff\);;

     394:	79 4e e1 7a                                     	addx64d \$r56 = \$r57, \$r57;;

     398:	fa 4f e5 fa ff ff ff 00                         	addx64d \$r57 = \$r58, 536870911 \(0x1fffffff\).@;;

     3a0:	fa 9e e9 7a                                     	addx64uwd \$r58 = \$r58, \$r59;;

     3a4:	fb 97 ed fa ff ff ff 00                         	addx64uwd \$r59 = \$r59, 536870911 \(0x1fffffff\);;

     3ac:	3c 8f f1 7a                                     	addx64wd \$r60 = \$r60, \$r60;;

     3b0:	fd 87 f5 fa ff ff ff 00                         	addx64wd \$r61 = \$r61, 536870911 \(0x1fffffff\);;

     3b8:	be 5f f5 7a                                     	addx64w \$r61 = \$r62, \$r62;;

     3bc:	ff 57 f9 fa ff ff ff 00                         	addx64w \$r62 = \$r63, 536870911 \(0x1fffffff\);;

     3c4:	3f b0 fe 74                                     	addx8bo \$r63 = \$r63, \$r0;;

     3c8:	c0 b7 02 f4 ff ff ff 00                         	addx8bo \$r0 = \$r0, 536870911 \(0x1fffffff\);;

     3d0:	41 40 05 74                                     	addx8d \$r1 = \$r1, \$r1;;

     3d4:	c2 4f 09 f4 ff ff ff 00                         	addx8d \$r2 = \$r2, 536870911 \(0x1fffffff\).@;;

     3dc:	c3 70 09 74                                     	addx8hq \$r2 = \$r3, \$r3;;

     3e0:	c4 77 0d f4 ff ff ff 00                         	addx8hq \$r3 = \$r4, 536870911 \(0x1fffffff\);;

     3e8:	44 91 11 74                                     	addx8uwd \$r4 = \$r4, \$r5;;

     3ec:	c5 97 15 f4 ff ff ff 00                         	addx8uwd \$r5 = \$r5, 536870911 \(0x1fffffff\);;

     3f4:	86 81 19 74                                     	addx8wd \$r6 = \$r6, \$r6;;

     3f8:	c7 87 1d f4 ff ff ff 00                         	addx8wd \$r7 = \$r7, 536870911 \(0x1fffffff\);;

     400:	08 62 1d 74                                     	addx8wp \$r7 = \$r8, \$r8;;

     404:	c9 6f 21 f4 ff ff ff 00                         	addx8wp \$r8 = \$r9, 536870911 \(0x1fffffff\).@;;

     40c:	89 52 25 74                                     	addx8w \$r9 = \$r9, \$r10;;

     410:	ca 57 29 f4 ff ff ff 00                         	addx8w \$r10 = \$r10, 536870911 \(0x1fffffff\);;

     418:	0b 70 2f bc 00 00 00 98 00 00 80 1f             	aladdd -1125899906842624 \(0xfffc000000000000\)\[\$r11\] = \$r11;;

     424:	0b 70 33 bd 00 00 80 1f                         	aladdd.g -8388608 \(0xff800000\)\[\$r11\] = \$r12;;

     42c:	0c 70 37 3e                                     	aladdd.s \[\$r12\] = \$r13;;

     430:	0d 60 3b bc 00 00 00 98 00 00 80 1f             	aladdw -1125899906842624 \(0xfffc000000000000\)\[\$r13\] = \$r14;;

     43c:	0e 60 3f bd 00 00 80 1f                         	aladdw.g -8388608 \(0xff800000\)\[\$r14\] = \$r15;;

     444:	0f 60 43 3e                                     	aladdw.s \[\$r15\] = \$r16;;

     448:	10 30 43 bc 00 00 00 98 00 00 80 1f             	alclrd \$r16 = -1125899906842624 \(0xfffc000000000000\)\[\$r16\];;

     454:	11 30 47 bd 00 00 80 1f                         	alclrd.g \$r17 = -8388608 \(0xff800000\)\[\$r17\];;

     45c:	12 30 47 3e                                     	alclrd.s \$r17 = \[\$r18\];;

     460:	12 20 4b bc 00 00 00 98 00 00 80 1f             	alclrw \$r18 = -1125899906842624 \(0xfffc000000000000\)\[\$r18\];;

     46c:	13 20 4f bd 00 00 80 1f                         	alclrw.g \$r19 = -8388608 \(0xff800000\)\[\$r19\];;

     474:	14 20 4f 3e                                     	alclrw.s \$r19 = \[\$r20\];;

     478:	14 10 53 bc 00 00 00 98 00 00 80 1f             	ald \$r20 = -1125899906842624 \(0xfffc000000000000\)\[\$r20\];;

     484:	15 10 57 bd 00 00 80 1f                         	ald.g \$r21 = -8388608 \(0xff800000\)\[\$r21\];;

     48c:	16 10 57 3e                                     	ald.s \$r21 = \[\$r22\];;

     490:	16 00 5b bc 00 00 00 98 00 00 80 1f             	alw \$r22 = -1125899906842624 \(0xfffc000000000000\)\[\$r22\];;

     49c:	17 00 5f bd 00 00 80 1f                         	alw.g \$r23 = -8388608 \(0xff800000\)\[\$r23\];;

     4a4:	18 00 5f 3e                                     	alw.s \$r23 = \[\$r24\];;

     4a8:	d8 ff 60 e8 ff ff ff 87 ff ff ff 00             	andd \$r24 = \$r24, 2305843009213693951 \(0x1fffffffffffffff\);;

     4b4:	59 06 65 78                                     	andd \$r25 = \$r25, \$r25;;

     4b8:	1a f0 68 68                                     	andd \$r26 = \$r26, -64 \(0xffffffc0\);;

     4bc:	1b 00 68 e8 00 00 80 07                         	andd \$r26 = \$r27, -8589934592 \(0xfffffffe00000000\);;

     4c4:	db ff 6c ee ff ff ff 87 ff ff ff 00             	andnd \$r27 = \$r27, 2305843009213693951 \(0x1fffffffffffffff\);;

     4d0:	1c 07 71 7e                                     	andnd \$r28 = \$r28, \$r28;;

     4d4:	1d f0 74 6e                                     	andnd \$r29 = \$r29, -64 \(0xffffffc0\);;

     4d8:	1e 00 74 ee 00 00 80 07                         	andnd \$r29 = \$r30, -8589934592 \(0xfffffffe00000000\);;

     4e0:	de 17 79 7e                                     	andnw \$r30 = \$r30, \$r31;;

     4e4:	1f f0 7c 7e                                     	andnw \$r31 = \$r31, -64 \(0xffffffc0\);;

     4e8:	20 00 80 fe 00 00 80 07                         	andnw \$r32 = \$r32, -8589934592 \(0xfffffffe00000000\);;

     4f0:	a1 c0 83 70                                     	andrbod \$r32 = \$r33;;

     4f4:	61 c0 87 70                                     	andrhqd \$r33 = \$r33;;

     4f8:	22 c0 8b 70                                     	andrwpd \$r34 = \$r34;;

     4fc:	e3 18 89 78                                     	andw \$r34 = \$r35, \$r35;;

     500:	24 f0 8c 78                                     	andw \$r35 = \$r36, -64 \(0xffffffc0\);;

     504:	24 00 90 f8 00 00 80 07                         	andw \$r36 = \$r36, -8589934592 \(0xfffffffe00000000\);;

     50c:	25 50 97 bc 00 00 00 98 00 00 80 1f             	asd -1125899906842624 \(0xfffc000000000000\)\[\$r37\] = \$r37;;

     518:	25 50 9b bd 00 00 80 1f                         	asd.g -8388608 \(0xff800000\)\[\$r37\] = \$r38;;

     520:	26 50 9b 3e                                     	asd.s \[\$r38\] = \$r38;;

     524:	27 40 9f bc 00 00 00 98 00 00 80 1f             	asw -1125899906842624 \(0xfffc000000000000\)\[\$r39\] = \$r39;;

     530:	27 40 a3 bd 00 00 80 1f                         	asw.g -8388608 \(0xff800000\)\[\$r39\] = \$r40;;

     538:	28 40 a3 3e                                     	asw.s \[\$r40\] = \$r40;;

     53c:	69 fa a6 74                                     	avgbo \$r41 = \$r41, \$r41;;

     540:	ea f7 aa f4 ff ff ff 00                         	avgbo \$r42 = \$r42, 536870911 \(0x1fffffff\);;

     548:	eb 9a aa 74                                     	avghq \$r42 = \$r43, \$r43;;

     54c:	ec 9f ae f4 ff ff ff 00                         	avghq \$r43 = \$r44, 536870911 \(0x1fffffff\).@;;

     554:	6c fb b2 75                                     	avgrbo \$r44 = \$r44, \$r45;;

     558:	ed f7 b6 f5 ff ff ff 00                         	avgrbo \$r45 = \$r45, 536870911 \(0x1fffffff\);;

     560:	ae 9b ba 75                                     	avgrhq \$r46 = \$r46, \$r46;;

     564:	ef 9f be f5 ff ff ff 00                         	avgrhq \$r47 = \$r47, 536870911 \(0x1fffffff\).@;;

     56c:	30 fc be 77                                     	avgrubo \$r47 = \$r48, \$r48;;

     570:	f1 f7 c2 f7 ff ff ff 00                         	avgrubo \$r48 = \$r49, 536870911 \(0x1fffffff\);;

     578:	b1 9c c6 77                                     	avgruhq \$r49 = \$r49, \$r50;;

     57c:	f2 9f ca f7 ff ff ff 00                         	avgruhq \$r50 = \$r50, 536870911 \(0x1fffffff\).@;;

     584:	f3 8c ce 77                                     	avgruwp \$r51 = \$r51, \$r51;;

     588:	f4 87 d2 f7 ff ff ff 00                         	avgruwp \$r52 = \$r52, 536870911 \(0x1fffffff\);;

     590:	75 7d d2 77                                     	avgruw \$r52 = \$r53, \$r53;;

     594:	f6 77 d6 f7 ff ff ff 00                         	avgruw \$r53 = \$r54, 536870911 \(0x1fffffff\);;

     59c:	f6 8d da 75                                     	avgrwp \$r54 = \$r54, \$r55;;

     5a0:	f7 8f de f5 ff ff ff 00                         	avgrwp \$r55 = \$r55, 536870911 \(0x1fffffff\).@;;

     5a8:	38 7e e2 75                                     	avgrw \$r56 = \$r56, \$r56;;

     5ac:	f9 77 e6 f5 ff ff ff 00                         	avgrw \$r57 = \$r57, 536870911 \(0x1fffffff\);;

     5b4:	ba fe e6 76                                     	avgubo \$r57 = \$r58, \$r58;;

     5b8:	fb f7 ea f6 ff ff ff 00                         	avgubo \$r58 = \$r59, 536870911 \(0x1fffffff\);;

     5c0:	3b 9f ee 76                                     	avguhq \$r59 = \$r59, \$r60;;

     5c4:	fc 9f f2 f6 ff ff ff 00                         	avguhq \$r60 = \$r60, 536870911 \(0x1fffffff\).@;;

     5cc:	7d 8f f6 76                                     	avguwp \$r61 = \$r61, \$r61;;

     5d0:	fe 87 fa f6 ff ff ff 00                         	avguwp \$r62 = \$r62, 536870911 \(0x1fffffff\);;

     5d8:	ff 7f fa 76                                     	avguw \$r62 = \$r63, \$r63;;

     5dc:	c0 77 fe f6 ff ff ff 00                         	avguw \$r63 = \$r0, 536870911 \(0x1fffffff\);;

     5e4:	40 80 02 74                                     	avgwp \$r0 = \$r0, \$r1;;

     5e8:	c1 8f 06 f4 ff ff ff 00                         	avgwp \$r1 = \$r1, 536870911 \(0x1fffffff\).@;;

     5f0:	82 70 0a 74                                     	avgw \$r2 = \$r2, \$r2;;

     5f4:	c3 77 0e f4 ff ff ff 00                         	avgw \$r3 = \$r3, 536870911 \(0x1fffffff\);;

     5fc:	00 00 a0 0f                                     	await;;

     600:	00 00 ac 0f                                     	barrier;;

     604:	00 80 00 00                                     	break 0 \(0x0\);;

     608:	00 00 80 1f                                     	call fe000608 <main\+0xfe000608>;;

     60c:	04 20 0e 72                                     	cbsd \$r3 = \$r4;;

     610:	04 40 12 72                                     	cbswp \$r4 = \$r4;;

     614:	05 30 16 72                                     	cbsw \$r5 = \$r5;;

     618:	05 00 78 08                                     	cb.dnez \$r5\? ffff8618 <main\+0xffff8618>;;

     61c:	c6 71 1b 6c                                     	clrf \$r6 = \$r6, 7 \(0x7\), 7 \(0x7\);;

     620:	07 20 1a 71                                     	clsd \$r6 = \$r7;;

     624:	07 40 1e 71                                     	clswp \$r7 = \$r7;;

     628:	08 30 22 71                                     	clsw \$r8 = \$r8;;

     62c:	09 20 22 70                                     	clzd \$r8 = \$r9;;

     630:	09 40 26 70                                     	clzwp \$r9 = \$r9;;

     634:	0a 30 2a 70                                     	clzw \$r10 = \$r10;;

     638:	ca d2 2e 70                                     	cmovebo.nez \$r10\? \$r11 = \$r11;;

     63c:	cb d7 32 f1 ff ff ff 00                         	cmovebo.eqz \$r11\? \$r12 = 536870911 \(0x1fffffff\);;

     644:	cc ff 36 e1 ff ff ff 87 ff ff ff 00             	cmoved.deqz \$r12\? \$r13 = 2305843009213693951 \(0x1fffffffffffffff\);;

     650:	8d 03 3a 72                                     	cmoved.dltz \$r13\? \$r14 = \$r14;;

     654:	0f f0 3e 63                                     	cmoved.dgez \$r15\? \$r15 = -64 \(0xffffffc0\);;

     658:	10 00 42 e4 00 00 80 07                         	cmoved.dlez \$r16\? \$r16 = -8589934592 \(0xfffffffe00000000\);;

     660:	50 14 46 7a                                     	cmovehq.ltz \$r16\? \$r17 = \$r17;;

     664:	d1 1f 4a fb ff ff ff 00                         	cmovehq.gez \$r17\? \$r18 = 536870911 \(0x1fffffff\).@;;

     66c:	d2 14 4a 74                                     	cmovewp.lez \$r18\? \$r18 = \$r19;;

     670:	d3 17 4e f5 ff ff ff 00                         	cmovewp.gtz \$r19\? \$r19 = 536870911 \(0x1fffffff\);;

     678:	14 15 24 5b                                     	cmuldt \$r8r9 = \$r20, \$r20;;

     67c:	54 15 2c 5f                                     	cmulghxdt \$r10r11 = \$r20, \$r21;;

     680:	55 15 2c 5d                                     	cmulglxdt \$r10r11 = \$r21, \$r21;;

     684:	96 15 34 5e                                     	cmulgmxdt \$r12r13 = \$r22, \$r22;;

     688:	d6 15 34 5c                                     	cmulxdt \$r12r13 = \$r22, \$r23;;

     68c:	d7 ff 5d e0 ff ff ff 87 ff ff ff 00             	compd.ne \$r23 = \$r23, 2305843009213693951 \(0x1fffffffffffffff\);;

     698:	18 a6 61 71                                     	compd.eq \$r24 = \$r24, \$r24;;

     69c:	19 f0 65 62                                     	compd.lt \$r25 = \$r25, -64 \(0xffffffc0\);;

     6a0:	1a 00 65 e3 00 00 80 07                         	compd.ge \$r25 = \$r26, -8589934592 \(0xfffffffe00000000\);;

     6a8:	da c6 6a 74                                     	compnbo.le \$r26 = \$r26, \$r27;;

     6ac:	db cf 6e f5 ff ff ff 00                         	compnbo.gt \$r27 = \$r27, 536870911 \(0x1fffffff\).@;;

     6b4:	1c b7 73 76                                     	compnd.ltu \$r28 = \$r28, \$r28;;

     6b8:	dd b7 77 f7 ff ff ff 00                         	compnd.geu \$r29 = \$r29, 536870911 \(0x1fffffff\);;

     6c0:	9e f7 75 78                                     	compnhq.leu \$r29 = \$r30, \$r30;;

     6c4:	df f7 79 f9 ff ff ff 00                         	compnhq.gtu \$r30 = \$r31, 536870911 \(0x1fffffff\);;

     6cc:	1f e8 7d 7a                                     	compnwp.all \$r31 = \$r31, \$r32;;

     6d0:	e0 ef 81 fb ff ff ff 00                         	compnwp.nall \$r32 = \$r32, 536870911 \(0x1fffffff\).@;;

     6d8:	61 a8 87 7c                                     	compnw.any \$r33 = \$r33, \$r33;;

     6dc:	e2 a7 8b fd ff ff ff 00                         	compnw.none \$r34 = \$r34, 536870911 \(0x1fffffff\);;

     6e4:	e3 d8 89 70                                     	compuwd.ne \$r34 = \$r35, \$r35;;

     6e8:	e4 d7 8d f1 ff ff ff 00                         	compuwd.eq \$r35 = \$r36, 536870911 \(0x1fffffff\);;

     6f0:	64 c9 91 72                                     	compwd.lt \$r36 = \$r36, \$r37;;

     6f4:	e5 c7 95 f3 ff ff ff 00                         	compwd.ge \$r37 = \$r37, 536870911 \(0x1fffffff\);;

     6fc:	a6 b9 99 74                                     	compw.le \$r38 = \$r38, \$r38;;

     700:	e7 b7 9d f5 ff ff ff 00                         	compw.gt \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     708:	28 00 9c 6a                                     	copyd \$r39 = \$r40;;

     70c:	10 00 3d 34                                     	copyo \$r12r13r14r15 = \$r16r17r18r19;;

     710:	28 fa 38 5f                                     	copyq \$r14r15 = \$r40, \$r40;;

     714:	29 00 a4 7a                                     	copyw \$r41 = \$r41;;

     718:	aa 2a a4 59                                     	crcbellw \$r41 = \$r42, \$r42;;

     71c:	eb 27 a8 d9 ff ff ff 10                         	crcbellw \$r42 = \$r43, 536870911 \(0x1fffffff\);;

     724:	2b 2b ac 58                                     	crcbelmw \$r43 = \$r43, \$r44;;

     728:	ec 27 b0 d8 ff ff ff 10                         	crcbelmw \$r44 = \$r44, 536870911 \(0x1fffffff\);;

     730:	6d 2b b4 5b                                     	crclellw \$r45 = \$r45, \$r45;;

     734:	ee 27 b8 db ff ff ff 10                         	crclellw \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     73c:	ef 2b b8 5a                                     	crclelmw \$r46 = \$r47, \$r47;;

     740:	f0 27 bc da ff ff ff 10                         	crclelmw \$r47 = \$r48, 536870911 \(0x1fffffff\);;

     748:	30 20 c2 73                                     	ctzd \$r48 = \$r48;;

     74c:	31 40 c6 73                                     	ctzwp \$r49 = \$r49;;

     750:	32 30 c6 73                                     	ctzw \$r49 = \$r50;;

     754:	00 00 8c 3c                                     	d1inval;;

     758:	b2 ec 3e 3c                                     	dflushl \$r50\[\$r50\];;

     75c:	f3 ff 3c bc ff ff ff 9f ff ff ff 18             	dflushl 2305843009213693951 \(0x1fffffffffffffff\)\[\$r51\];;

     768:	33 f0 3c 3c                                     	dflushl -64 \(0xffffffc0\)\[\$r51\];;

     76c:	33 00 3c bc 00 00 80 1f                         	dflushl -8589934592 \(0xfffffffe00000000\)\[\$r51\];;

     774:	34 ed be 3c                                     	dflushsw.l1 \$r52, \$r52;;

     778:	35 fd 1e 3c                                     	dinvall.xs \$r52\[\$r53\];;

     77c:	f5 ff 1c bc ff ff ff 9f ff ff ff 18             	dinvall 2305843009213693951 \(0x1fffffffffffffff\)\[\$r53\];;

     788:	35 f0 1c 3c                                     	dinvall -64 \(0xffffffc0\)\[\$r53\];;

     78c:	36 00 1c bc 00 00 80 1f                         	dinvall -8589934592 \(0xfffffffe00000000\)\[\$r54\];;

     794:	b6 ed 9e 3d                                     	dinvalsw.l2 \$r54, \$r54;;

     798:	10 24 38 52                                     	dot2suwdp \$r14r15 = \$r16r17, \$r16r17;;

     79c:	f7 2d dc 5e                                     	dot2suwd \$r55 = \$r55, \$r55;;

     7a0:	12 25 48 51                                     	dot2uwdp \$r18r19 = \$r18r19, \$r20r21;;

     7a4:	38 2e e0 5d                                     	dot2uwd \$r56 = \$r56, \$r56;;

     7a8:	96 25 50 50                                     	dot2wdp \$r20r21 = \$r22r23, \$r22r23;;

     7ac:	79 2e e4 5c                                     	dot2wd \$r57 = \$r57, \$r57;;

     7b0:	98 26 60 53                                     	dot2wzp \$r24r25 = \$r24r25, \$r26r27;;

     7b4:	ba 2e e8 5f                                     	dot2w \$r58 = \$r58, \$r58;;

     7b8:	fb ee 2e 3c                                     	dpurgel \$r59\[\$r59\];;

     7bc:	fb ff 2c bc ff ff ff 9f ff ff ff 18             	dpurgel 2305843009213693951 \(0x1fffffffffffffff\)\[\$r59\];;

     7c8:	3c f0 2c 3c                                     	dpurgel -64 \(0xffffffc0\)\[\$r60\];;

     7cc:	3c 00 2c bc 00 00 80 1f                         	dpurgel -8589934592 \(0xfffffffe00000000\)\[\$r60\];;

     7d4:	3d ef ae 3c                                     	dpurgesw.l1 \$r60, \$r61;;

     7d8:	7d ff 0e 3c                                     	dtouchl.xs \$r61\[\$r61\];;

     7dc:	fe ff 0c bc ff ff ff 9f ff ff ff 18             	dtouchl 2305843009213693951 \(0x1fffffffffffffff\)\[\$r62\];;

     7e8:	3e f0 0c 3c                                     	dtouchl -64 \(0xffffffc0\)\[\$r62\];;

     7ec:	3e 00 0c bc 00 00 80 1f                         	dtouchl -8589934592 \(0xfffffffe00000000\)\[\$r62\];;

     7f4:	00 00 00 00                                     	errop;;

     7f8:	ff 71 ff 68                                     	extfs \$r63 = \$r63, 7 \(0x7\), 7 \(0x7\);;

     7fc:	c0 71 ff 64                                     	extfz \$r63 = \$r0, 7 \(0x7\), 7 \(0x7\);;

     800:	00 20 03 71                                     	fabsd \$r0 = \$r0;;

     804:	01 20 07 77                                     	fabshq \$r1 = \$r1;;

     808:	02 20 07 75                                     	fabswp \$r1 = \$r2;;

     80c:	02 20 0b 73                                     	fabsw \$r2 = \$r2;;

     810:	1c 07 6b 5d                                     	fadddc.c.rn \$r26r27 = \$r28r29, \$r28r29;;

     814:	1e 98 7b 5c                                     	fadddp.ru.s \$r30r31 = \$r30r31, \$r32r33;;

     818:	a2 28 83 5c                                     	fadddp.rd \$r32r33 = \$r34r35, \$r34r35;;

     81c:	c3 b0 0e 50                                     	faddd.rz.s \$r3 = \$r3, \$r3;;

     820:	a4 49 97 56                                     	faddho.rna \$r36r37 = \$r36r37, \$r38r39;;

     824:	04 d1 12 52                                     	faddhq.rnz.s \$r4 = \$r4, \$r4;;

     828:	45 61 16 53                                     	faddwc.c.ro \$r5 = \$r5, \$r5;;

     82c:	28 fa 9f 59                                     	faddwcp.c.s \$r38r39 = \$r40r41, \$r40r41;;

     830:	2a 0b af 58                                     	faddwq.rn \$r42r43 = \$r42r43, \$r44r45;;

     834:	86 91 1a 51                                     	faddwp.ru.s \$r6 = \$r6, \$r6;;

     838:	c7 21 1e 51                                     	faddwp.rd \$r7 = \$r7, \$r7;;

     83c:	ae bb b7 58                                     	faddwq.rz.s \$r44r45 = \$r46r47, \$r46r47;;

     840:	08 42 22 5c                                     	faddw.rna \$r8 = \$r8, \$r8;;

     844:	30 58 27 71                                     	fcdivd.s \$r9 = \$r48r49;;

     848:	30 50 27 75                                     	fcdivwp \$r9 = \$r48r49;;

     84c:	32 58 27 73                                     	fcdivw.s \$r9 = \$r50r51;;

     850:	8a 02 2b 78                                     	fcompd.one \$r10 = \$r10, \$r10;;

     854:	cb 07 2f f9 ff ff ff 00                         	fcompd.ueq \$r11 = \$r11, 536870911 \(0x1fffffff\);;

     85c:	0c 93 2f 7a                                     	fcompnd.oeq \$r11 = \$r12, \$r12;;

     860:	cd 97 37 fb ff ff ff 00                         	fcompnd.une \$r13 = \$r13, 536870911 \(0x1fffffff\);;

     868:	ce 13 3b 7c                                     	fcompnhq.olt \$r14 = \$r14, \$r15;;

     86c:	d0 17 3f fd ff ff ff 00                         	fcompnhq.uge \$r15 = \$r16, 536870911 \(0x1fffffff\);;

     874:	50 14 43 76                                     	fcompnwp.oge \$r16 = \$r16, \$r17;;

     878:	d1 1f 47 f7 ff ff ff 00                         	fcompnwp.ult \$r17 = \$r17, 536870911 \(0x1fffffff\).@;;

     880:	92 94 4b 70                                     	fcompnw.one \$r18 = \$r18, \$r18;;

     884:	d3 97 4f f1 ff ff ff 00                         	fcompnw.ueq \$r19 = \$r19, 536870911 \(0x1fffffff\);;

     88c:	14 05 4f 72                                     	fcompw.oeq \$r19 = \$r20, \$r20;;

     890:	d5 07 53 f3 ff ff ff 00                         	fcompw.une \$r20 = \$r21, 536870911 \(0x1fffffff\);;

     898:	34 5d cf 5c                                     	fdot2wdp.rnz \$r50r51 = \$r52r53, \$r52r53;;

     89c:	95 e5 55 5d                                     	fdot2wd.ro.s \$r21 = \$r21, \$r22;;

     8a0:	36 7e df 5d                                     	fdot2wzp \$r54r55 = \$r54r55, \$r56r57;;

     8a4:	d6 85 59 5c                                     	fdot2w.rn.s \$r22 = \$r22, \$r23;;

     8a8:	00 00 fc 3c                                     	fence;;

     8ac:	b8 1e 5e 47                                     	ffdmaswp.ru \$r23 = \$r56r57, \$r58r59;;

     8b0:	14 a6 ea 4f                                     	ffdmaswq.rd.s \$r58r59 = \$r20r21r22r23, \$r24r25r26r27;;

     8b4:	18 36 5e 43                                     	ffdmasw.rz \$r23 = \$r24, \$r24;;

     8b8:	3c cf 61 42                                     	ffdmawp.rna.s \$r24 = \$r60r61, \$r60r61;;

     8bc:	1c 58 f9 46                                     	ffdmawq.rnz \$r62r63 = \$r28r29r30r31, \$r32r33r34r35;;

     8c0:	59 e6 65 40                                     	ffdmaw.ro.s \$r25 = \$r25, \$r25;;

     8c4:	3e 70 6a 44                                     	ffdmdawp \$r26 = \$r62r63, \$r0r1;;

     8c8:	24 8a 02 4c                                     	ffdmdawq.rn.s \$r0r1 = \$r36r37r38r39, \$r40r41r42r43;;

     8cc:	da 16 6a 40                                     	ffdmdaw.ru \$r26 = \$r26, \$r27;;

     8d0:	82 a0 6e 46                                     	ffdmdswp.rd.s \$r27 = \$r2r3, \$r2r3;;

     8d4:	2c 3c 12 4e                                     	ffdmdswq.rz \$r4r5 = \$r44r45r46r47, \$r48r49r50r51;;

     8d8:	1c c7 6e 42                                     	ffdmdsw.rna.s \$r27 = \$r28, \$r28;;

     8dc:	84 51 72 45                                     	ffdmsawp.rnz \$r28 = \$r4r5, \$r6r7;;

     8e0:	34 ee 1a 4d                                     	ffdmsawq.ro.s \$r6r7 = \$r52r53r54r55, \$r56r57r58r59;;

     8e4:	5d 77 76 41                                     	ffdmsaw \$r29 = \$r29, \$r29;;

     8e8:	08 82 79 43                                     	ffdmswp.rn.s \$r30 = \$r8r9, \$r8r9;;

     8ec:	3c 10 29 47                                     	ffdmswq.ru \$r10r11 = \$r60r61r62r63, \$r0r1r2r3;;

     8f0:	de a7 79 41                                     	ffdmsw.rd.s \$r30 = \$r30, \$r31;;

     8f4:	1f 38 7c 44                                     	ffmad.rz \$r31 = \$r31, \$r32;;

     8f8:	0c c3 2b 5a                                     	ffmaho.rna.s \$r10r11 = \$r12r13, \$r12r13;;

     8fc:	60 58 81 53                                     	ffmahq.rnz \$r32 = \$r32, \$r33;;

     900:	61 e8 3b 51                                     	ffmahwq.ro.s \$r14r15 = \$r33, \$r33;;

     904:	a2 78 8a 58                                     	ffmahw \$r34 = \$r34, \$r34;;

     908:	10 84 39 4c                                     	ffmawcp.rn.s \$r14r15 = \$r16r17, \$r16r17;;

     90c:	e3 18 8d 49                                     	ffmawc.c.ru \$r35 = \$r35, \$r35;;

     910:	24 a9 4b 50                                     	ffmawdp.rd.s \$r18r19 = \$r36, \$r36;;

     914:	65 39 91 51                                     	ffmawd.rz \$r36 = \$r37, \$r37;;

     918:	a6 c9 94 42                                     	ffmawp.rna.s \$r37 = \$r38, \$r38;;

     91c:	14 55 48 46                                     	ffmawq.rnz \$r18r19 = \$r20r21, \$r20r21;;

     920:	e7 e9 98 40                                     	ffmaw.ro.s \$r38 = \$r39, \$r39;;

     924:	28 7a 9c 45                                     	ffmsd \$r39 = \$r40, \$r40;;

     928:	16 86 5b 5b                                     	ffmsho.rn.s \$r22r23 = \$r22r23, \$r24r25;;

     92c:	69 1a a1 57                                     	ffmshq.ru \$r40 = \$r41, \$r41;;

     930:	a9 aa 63 53                                     	ffmshwq.rd.s \$r24r25 = \$r41, \$r42;;

     934:	ea 3a aa 5a                                     	ffmshw.rz \$r42 = \$r42, \$r43;;

     938:	1a c7 69 4e                                     	ffmswcp.rna.s \$r26r27 = \$r26r27, \$r28r29;;

     93c:	2b 5b ad 4b                                     	ffmswc.c.rnz \$r43 = \$r43, \$r44;;

     940:	2c eb 73 52                                     	ffmswdp.ro.s \$r28r29 = \$r44, \$r44;;

     944:	6d 7b b5 55                                     	ffmswd \$r45 = \$r45, \$r45;;

     948:	ae 8b b8 43                                     	ffmswp.rn.s \$r46 = \$r46, \$r46;;

     94c:	1e 18 78 47                                     	ffmswq.ru \$r30r31 = \$r30r31, \$r32r33;;

     950:	ef ab bc 41                                     	ffmsw.rd.s \$r47 = \$r47, \$r47;;

     954:	f0 31 c3 46                                     	fixedd.rz \$r48 = \$r48, 7 \(0x7\);;

     958:	f1 c1 c3 47                                     	fixedud.rna.s \$r48 = \$r49, 7 \(0x7\);;

     95c:	f1 51 c7 4f                                     	fixeduwp.rnz \$r49 = \$r49, 7 \(0x7\);;

     960:	f2 e1 cb 4b                                     	fixeduw.ro.s \$r50 = \$r50, 7 \(0x7\);;

     964:	f3 71 cb 4e                                     	fixedwp \$r50 = \$r51, 7 \(0x7\);;

     968:	f3 81 cf 4a                                     	fixedw.rn.s \$r51 = \$r51, 7 \(0x7\);;

     96c:	f4 11 d3 44                                     	floatd.ru \$r52 = \$r52, 7 \(0x7\);;

     970:	f5 a1 d3 45                                     	floatud.rd.s \$r52 = \$r53, 7 \(0x7\);;

     974:	f5 31 d7 4d                                     	floatuwp.rz \$r53 = \$r53, 7 \(0x7\);;

     978:	f6 c1 db 49                                     	floatuw.rna.s \$r54 = \$r54, 7 \(0x7\);;

     97c:	f7 51 db 4c                                     	floatwp.rnz \$r54 = \$r55, 7 \(0x7\);;

     980:	f7 e1 df 48                                     	floatw.ro.s \$r55 = \$r55, 7 \(0x7\);;

     984:	38 8e e3 71                                     	fmaxd \$r56 = \$r56, \$r56;;

     988:	79 8e e7 77                                     	fmaxhq \$r57 = \$r57, \$r57;;

     98c:	ba 8e eb 75                                     	fmaxwp \$r58 = \$r58, \$r58;;

     990:	fb 8e ef 73                                     	fmaxw \$r59 = \$r59, \$r59;;

     994:	3c 8f f3 70                                     	fmind \$r60 = \$r60, \$r60;;

     998:	7d 8f f7 76                                     	fminhq \$r61 = \$r61, \$r61;;

     99c:	be 8f fb 74                                     	fminwp \$r62 = \$r62, \$r62;;

     9a0:	ff 8f ff 72                                     	fminw \$r63 = \$r63, \$r63;;

     9a4:	00 70 80 4c                                     	fmm212w \$r32r33 = \$r0, \$r0;;

     9a8:	22 89 8c 4c                                     	fmm222w.rn.s \$r34r35 = \$r34r35, \$r36r37;;

     9ac:	40 10 90 4e                                     	fmma212w.ru \$r36r37 = \$r0, \$r1;;

     9b0:	27 aa 9c 4e                                     	fmma222w.tn.rd.s \$r38r39 = \$r38r39, \$r40r41;;

     9b4:	41 30 a0 4f                                     	fmms212w.rz \$r40r41 = \$r1, \$r1;;

     9b8:	6a cb ac 4f                                     	fmms222w.nt.rna.s \$r42r43 = \$r42r43, \$r44r45;;

     9bc:	82 50 09 58                                     	fmuld.rnz \$r2 = \$r2, \$r2;;

     9c0:	ae eb b7 55                                     	fmulho.ro.s \$r44r45 = \$r46r47, \$r46r47;;

     9c4:	c3 70 0d 5b                                     	fmulhq \$r3 = \$r3, \$r3;;

     9c8:	04 81 c7 51                                     	fmulhwq.rn.s \$r48r49 = \$r4, \$r4;;

     9cc:	45 11 12 5f                                     	fmulhw.ru \$r4 = \$r5, \$r5;;

     9d0:	b2 ac c0 4a                                     	fmulwcp.rd.s \$r48r49 = \$r50r51, \$r50r51;;

     9d4:	86 31 14 49                                     	fmulwc.c.rz \$r5 = \$r6, \$r6;;

     9d8:	c6 c1 d7 50                                     	fmulwdp.rna.s \$r52r53 = \$r6, \$r7;;

     9dc:	07 52 1d 59                                     	fmulwd.rnz \$r7 = \$r7, \$r8;;

     9e0:	48 e2 21 5a                                     	fmulwp.ro.s \$r8 = \$r8, \$r9;;

     9e4:	b6 7d d7 5e                                     	fmulwq \$r52r53 = \$r54r55, \$r54r55;;

     9e8:	89 82 26 5e                                     	fmulw.rn.s \$r9 = \$r9, \$r10;;

     9ec:	38 61 2b 7c                                     	fnarrowdwp.ru \$r10 = \$r56r57;;

     9f0:	0b 6a 2b 78                                     	fnarrowdw.rd.s \$r10 = \$r11;;

     9f4:	38 63 2f 7e                                     	fnarrowwhq.rz \$r11 = \$r56r57;;

     9f8:	0c 6c 2f 7a                                     	fnarrowwh.rna.s \$r11 = \$r12;;

     9fc:	0d 20 33 70                                     	fnegd \$r12 = \$r13;;

     a00:	0e 20 37 76                                     	fneghq \$r13 = \$r14;;

     a04:	0f 20 3b 74                                     	fnegwp \$r14 = \$r15;;

     a08:	10 20 3f 72                                     	fnegw \$r15 = \$r16;;

     a0c:	10 65 43 72                                     	frecw.rnz \$r16 = \$r16;;

     a10:	11 6e 47 73                                     	frsrw.ro.s \$r17 = \$r17;;

     a14:	3a 7f eb 5f                                     	fsbfdc.c \$r58r59 = \$r58r59, \$r60r61;;

     a18:	be 8f f3 5e                                     	fsbfdp.rn.s \$r60r61 = \$r62r63, \$r62r63;;

     a1c:	80 10 03 5e                                     	fsbfdp.ru \$r0r1 = \$r0r1, \$r2r3;;

     a20:	92 a4 46 54                                     	fsbfd.rd.s \$r17 = \$r18, \$r18;;

     a24:	04 31 0f 57                                     	fsbfho.rz \$r2r3 = \$r4r5, \$r4r5;;

     a28:	d3 c4 4a 56                                     	fsbfhq.rna.s \$r18 = \$r19, \$r19;;

     a2c:	14 55 4e 57                                     	fsbfwc.c.rnz \$r19 = \$r20, \$r20;;

     a30:	06 e2 1f 5b                                     	fsbfwcp.c.ro.s \$r6r7 = \$r6r7, \$r8r9;;

     a34:	8a 72 27 5a                                     	fsbfwq \$r8r9 = \$r10r11, \$r10r11;;

     a38:	55 85 52 55                                     	fsbfwp.rn.s \$r20 = \$r21, \$r21;;

     a3c:	96 15 56 55                                     	fsbfwp.ru \$r21 = \$r22, \$r22;;

     a40:	8c a3 37 5a                                     	fsbfwq.rd.s \$r12r13 = \$r12r13, \$r14r15;;

     a44:	d7 35 5a 5d                                     	fsbfw.rz \$r22 = \$r23, \$r23;;

     a48:	0e 58 5f 70                                     	fsdivd.s \$r23 = \$r14r15;;

     a4c:	10 50 63 74                                     	fsdivwp \$r24 = \$r16r17;;

     a50:	10 58 63 72                                     	fsdivw.s \$r24 = \$r16r17;;

     a54:	19 40 63 70                                     	fsrecd \$r24 = \$r25;;

     a58:	19 48 67 74                                     	fsrecwp.s \$r25 = \$r25;;

     a5c:	1a 40 6b 72                                     	fsrecw \$r26 = \$r26;;

     a60:	1b 20 6b 78                                     	fsrsrd \$r26 = \$r27;;

     a64:	1b 20 6f 7c                                     	fsrsrwp \$r27 = \$r27;;

     a68:	1c 20 73 7a                                     	fsrsrw \$r28 = \$r28;;

     a6c:	1d 38 73 7c                                     	fwidenlhwp.s \$r28 = \$r29;;

     a70:	1d 30 77 7a                                     	fwidenlhw \$r29 = \$r29;;

     a74:	1e 38 7b 78                                     	fwidenlwd.s \$r30 = \$r30;;

     a78:	1f 30 7b 7d                                     	fwidenmhwp \$r30 = \$r31;;

     a7c:	1f 38 7f 7b                                     	fwidenmhw.s \$r31 = \$r31;;

     a80:	20 30 83 79                                     	fwidenmwd \$r32 = \$r32;;

     a84:	20 00 c4 0f                                     	get \$r32 = \$pc;;

     a88:	21 00 c4 0f                                     	get \$r33 = \$pc;;

     a8c:	00 00 80 17                                     	goto fe000a8c <main\+0xfe000a8c>;;

     a90:	61 e8 5e 3c                                     	i1invals \$r33\[\$r33\];;

     a94:	e2 ff 5c bc ff ff ff 9f ff ff ff 18             	i1invals 2305843009213693951 \(0x1fffffffffffffff\)\[\$r34\];;

     aa0:	22 f0 5c 3c                                     	i1invals -64 \(0xffffffc0\)\[\$r34\];;

     aa4:	22 00 5c bc 00 00 80 1f                         	i1invals -8589934592 \(0xfffffffe00000000\)\[\$r34\];;

     aac:	00 00 cc 3c                                     	i1inval;;

     ab0:	23 00 dc 0f                                     	icall \$r35;;

     ab4:	23 00 cc 0f                                     	iget \$r35;;

     ab8:	23 00 d8 0f                                     	igoto \$r35;;

     abc:	e4 71 93 60                                     	insf \$r36 = \$r36, 7 \(0x7\), 7 \(0x7\);;

     ac0:	e5 ff 90 ea ff ff ff 87 ff ff ff 00             	iord \$r36 = \$r37, 2305843009213693951 \(0x1fffffffffffffff\);;

     acc:	a5 09 95 7a                                     	iord \$r37 = \$r37, \$r38;;

     ad0:	26 f0 98 6a                                     	iord \$r38 = \$r38, -64 \(0xffffffc0\);;

     ad4:	27 00 9c ea 00 00 80 07                         	iord \$r39 = \$r39, -8589934592 \(0xfffffffe00000000\);;

     adc:	e8 ff 9c ef ff ff ff 87 ff ff ff 00             	iornd \$r39 = \$r40, 2305843009213693951 \(0x1fffffffffffffff\);;

     ae8:	68 0a a1 7f                                     	iornd \$r40 = \$r40, \$r41;;

     aec:	29 f0 a4 6f                                     	iornd \$r41 = \$r41, -64 \(0xffffffc0\);;

     af0:	2a 00 a8 ef 00 00 80 07                         	iornd \$r42 = \$r42, -8589934592 \(0xfffffffe00000000\);;

     af8:	eb 1a a9 7f                                     	iornw \$r42 = \$r43, \$r43;;

     afc:	2c f0 ac 7f                                     	iornw \$r43 = \$r44, -64 \(0xffffffc0\);;

     b00:	2c 00 b0 ff 00 00 80 07                         	iornw \$r44 = \$r44, -8589934592 \(0xfffffffe00000000\);;

     b08:	ad c0 b7 71                                     	iorrbod \$r45 = \$r45;;

     b0c:	6e c0 b7 71                                     	iorrhqd \$r45 = \$r46;;

     b10:	2e c0 bb 71                                     	iorrwpd \$r46 = \$r46;;

     b14:	ef 1b bd 7a                                     	iorw \$r47 = \$r47, \$r47;;

     b18:	30 f0 c0 7a                                     	iorw \$r48 = \$r48, -64 \(0xffffffc0\);;

     b1c:	31 00 c0 fa 00 00 80 07                         	iorw \$r48 = \$r49, -8589934592 \(0xfffffffe00000000\);;

     b24:	b1 6c c6 70                                     	landd \$r49 = \$r49, \$r50;;

     b28:	f2 7c ca 70                                     	landw \$r50 = \$r50, \$r51;;

     b2c:	f3 77 ce f0 ff ff ff 00                         	landw \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     b34:	34 fd d2 24                                     	lbs.xs \$r52 = \$r52\[\$r52\];;

     b38:	75 5d d6 a5 00 00 00 98 00 00 80 1f             	lbs.s.dgtz \$r53\? \$r53 = -1125899906842624 \(0xfffc000000000000\)\[\$r53\];;

     b44:	b6 6d da a6 00 00 80 1f                         	lbs.u.odd \$r54\? \$r54 = -8388608 \(0xff800000\)\[\$r54\];;

     b4c:	f7 7d de 27                                     	lbs.us.even \$r55\? \$r55 = \[\$r55\];;

     b50:	f8 ff e0 a4 ff ff ff 9f ff ff ff 18             	lbs \$r56 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r56\];;

     b5c:	39 f0 e0 25                                     	lbs.s \$r56 = -64 \(0xffffffc0\)\[\$r57\];;

     b60:	39 00 e4 a6 00 00 80 1f                         	lbs.u \$r57 = -8589934592 \(0xfffffffe00000000\)\[\$r57\];;

     b68:	ba ee ea 23                                     	lbz.us \$r58 = \$r58\[\$r58\];;

     b6c:	fb 8e ee a0 00 00 00 98 00 00 80 1f             	lbz.wnez \$r59\? \$r59 = -1125899906842624 \(0xfffc000000000000\)\[\$r59\];;

     b78:	3c 9f f2 a1 00 00 80 1f                         	lbz.s.weqz \$r60\? \$r60 = -8388608 \(0xff800000\)\[\$r60\];;

     b80:	7d af f6 22                                     	lbz.u.wltz \$r61\? \$r61 = \[\$r61\];;

     b84:	fe ff f8 a3 ff ff ff 9f ff ff ff 18             	lbz.us \$r62 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r62\];;

     b90:	3f f0 f8 20                                     	lbz \$r62 = -64 \(0xffffffc0\)\[\$r63\];;

     b94:	3f 00 fc a1 00 00 80 1f                         	lbz.s \$r63 = -8589934592 \(0xfffffffe00000000\)\[\$r63\];;

     b9c:	00 f0 02 3a                                     	ld.u.xs \$r0 = \$r0\[\$r0\];;

     ba0:	41 b0 06 bb 00 00 00 98 00 00 80 1f             	ld.us.wgez \$r1\? \$r1 = -1125899906842624 \(0xfffc000000000000\)\[\$r1\];;

     bac:	82 c0 0a b8 00 00 80 1f                         	ld.wlez \$r2\? \$r2 = -8388608 \(0xff800000\)\[\$r2\];;

     bb4:	c3 d0 0e 39                                     	ld.s.wgtz \$r3\? \$r3 = \[\$r3\];;

     bb8:	c4 ff 10 ba ff ff ff 9f ff ff ff 18             	ld.u \$r4 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r4\];;

     bc4:	05 f0 10 3b                                     	ld.us \$r4 = -64 \(0xffffffc0\)\[\$r5\];;

     bc8:	05 00 14 b8 00 00 80 1f                         	ld \$r5 = -8589934592 \(0xfffffffe00000000\)\[\$r5\];;

     bd0:	86 e1 1a 2d                                     	lhs.s \$r6 = \$r6\[\$r6\];;

     bd4:	c7 01 1e ae 00 00 00 98 00 00 80 1f             	lhs.u.dnez \$r7\? \$r7 = -1125899906842624 \(0xfffc000000000000\)\[\$r7\];;

     be0:	08 12 22 af 00 00 80 1f                         	lhs.us.deqz \$r8\? \$r8 = -8388608 \(0xff800000\)\[\$r8\];;

     be8:	49 22 26 2c                                     	lhs.dltz \$r9\? \$r9 = \[\$r9\];;

     bec:	ca ff 28 ad ff ff ff 9f ff ff ff 18             	lhs.s \$r10 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r10\];;

     bf8:	0b f0 28 2e                                     	lhs.u \$r10 = -64 \(0xffffffc0\)\[\$r11\];;

     bfc:	0b 00 2c af 00 00 80 1f                         	lhs.us \$r11 = -8589934592 \(0xfffffffe00000000\)\[\$r11\];;

     c04:	0d f3 32 28                                     	lhz.xs \$r12 = \$r12\[\$r13\];;

     c08:	4e 33 3a a9 00 00 00 98 00 00 80 1f             	lhz.s.dgez \$r13\? \$r14 = -1125899906842624 \(0xfffc000000000000\)\[\$r14\];;

     c14:	d0 43 3e aa 00 00 80 1f                         	lhz.u.dlez \$r15\? \$r15 = -8388608 \(0xff800000\)\[\$r16\];;

     c1c:	11 54 42 2b                                     	lhz.us.dgtz \$r16\? \$r16 = \[\$r17\];;

     c20:	d1 ff 44 a8 ff ff ff 9f ff ff ff 18             	lhz \$r17 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r17\];;

     c2c:	12 f0 48 29                                     	lhz.s \$r18 = -64 \(0xffffffc0\)\[\$r18\];;

     c30:	13 00 48 aa 00 00 80 1f                         	lhz.u \$r18 = -8589934592 \(0xfffffffe00000000\)\[\$r19\];;

     c38:	13 65 4e 72                                     	liord \$r19 = \$r19, \$r20;;

     c3c:	54 75 52 72                                     	liorw \$r20 = \$r20, \$r21;;

     c40:	d5 77 56 f2 ff ff ff 00                         	liorw \$r21 = \$r21, 536870911 \(0x1fffffff\);;

     c48:	96 65 5a 71                                     	lnandd \$r22 = \$r22, \$r22;;

     c4c:	d7 75 5e 71                                     	lnandw \$r23 = \$r23, \$r23;;

     c50:	d8 77 62 f1 ff ff ff 00                         	lnandw \$r24 = \$r24, 536870911 \(0x1fffffff\);;

     c58:	59 66 62 73                                     	lniord \$r24 = \$r25, \$r25;;

     c5c:	9a 76 66 73                                     	lniorw \$r25 = \$r26, \$r26;;

     c60:	db 77 6a f3 ff ff ff 00                         	lniorw \$r26 = \$r27, 536870911 \(0x1fffffff\);;

     c68:	1b 67 6e 73                                     	lniord \$r27 = \$r27, \$r28;;

     c6c:	5c 77 72 73                                     	lniorw \$r28 = \$r28, \$r29;;

     c70:	dd 77 76 f3 ff ff ff 00                         	lniorw \$r29 = \$r29, 536870911 \(0x1fffffff\);;

     c78:	1e 00 78 0f                                     	loopdo \$r30, ffff8c78 <main\+0xffff8c78>;;

     c7c:	de 67 7a 72                                     	liord \$r30 = \$r30, \$r31;;

     c80:	1f 78 7e 72                                     	liorw \$r31 = \$r31, \$r32;;

     c84:	e0 77 82 f2 ff ff ff 00                         	liorw \$r32 = \$r32, 536870911 \(0x1fffffff\);;

     c8c:	61 e8 16 3f                                     	lo.us \$r4r5r6r7 = \$r33\[\$r33\];;

     c90:	62 08 2e bc 00 00 00 98 00 00 80 1f             	lo.u0 \$r33\? \$r8r9r10r11 = -1125899906842624 \(0xfffc000000000000\)\[\$r34\];;

     c9c:	a2 18 3e bd 00 00 80 1f                         	lo.s.u1 \$r34\? \$r12r13r14r15 = -8388608 \(0xff800000\)\[\$r34\];;

     ca4:	e3 28 4e 3e                                     	lo.u.u2 \$r35\? \$r16r17r18r19 = \[\$r35\];;

     ca8:	e4 68 56 bf 00 00 00 98 00 00 80 1f             	lo.us.odd \$r35\? \$r20r21r22r23 = -1125899906842624 \(0xfffc000000000000\)\[\$r36\];;

     cb4:	24 79 66 bc 00 00 80 1f                         	lo.even \$r36\? \$r24r25r26r27 = -8388608 \(0xff800000\)\[\$r36\];;

     cbc:	65 89 76 3d                                     	lo.s.wnez \$r37\? \$r28r29r30r31 = \[\$r37\];;

     cc0:	e5 ff 84 be ff ff ff 9f ff ff ff 18             	lo.u \$r32r33r34r35 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r37\];;

     ccc:	26 f0 94 3f                                     	lo.us \$r36r37r38r39 = -64 \(0xffffffc0\)\[\$r38\];;

     cd0:	26 00 a4 bc 00 00 80 1f                         	lo \$r40r41r42r43 = -8589934592 \(0xfffffffe00000000\)\[\$r38\];;

     cd8:	a7 f9 4a 3d                                     	lq.s.xs \$r18r19 = \$r38\[\$r39\];;

     cdc:	e7 99 4a be 00 00 00 98 00 00 80 1f             	lq.u.weqz \$r39\? \$r18r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r39\];;

     ce8:	28 aa 52 bf 00 00 80 1f                         	lq.us.wltz \$r40\? \$r20r21 = -8388608 \(0xff800000\)\[\$r40\];;

     cf0:	29 ba 52 3c                                     	lq.wgez \$r40\? \$r20r21 = \[\$r41\];;

     cf4:	e9 ff 58 bd ff ff ff 9f ff ff ff 18             	lq.s \$r22r23 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r41\];;

     d00:	29 f0 58 3e                                     	lq.u \$r22r23 = -64 \(0xffffffc0\)\[\$r41\];;

     d04:	2a 00 60 bf 00 00 80 1f                         	lq.us \$r24r25 = -8589934592 \(0xfffffffe00000000\)\[\$r42\];;

     d0c:	ab ea aa 34                                     	lws \$r42 = \$r42\[\$r43\];;

     d10:	ec ca ae b5 00 00 00 98 00 00 80 1f             	lws.s.wlez \$r43\? \$r43 = -1125899906842624 \(0xfffc000000000000\)\[\$r44\];;

     d1c:	2d db b2 b6 00 00 80 1f                         	lws.u.wgtz \$r44\? \$r44 = -8388608 \(0xff800000\)\[\$r45\];;

     d24:	6e 0b b6 37                                     	lws.us.dnez \$r45\? \$r45 = \[\$r46\];;

     d28:	ee ff b8 b4 ff ff ff 9f ff ff ff 18             	lws \$r46 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r46\];;

     d34:	2f f0 bc 35                                     	lws.s \$r47 = -64 \(0xffffffc0\)\[\$r47\];;

     d38:	30 00 bc b6 00 00 80 1f                         	lws.u \$r47 = -8589934592 \(0xfffffffe00000000\)\[\$r48\];;

     d40:	31 fc c2 33                                     	lwz.us.xs \$r48 = \$r48\[\$r49\];;

     d44:	72 1c c6 b0 00 00 00 98 00 00 80 1f             	lwz.deqz \$r49\? \$r49 = -1125899906842624 \(0xfffc000000000000\)\[\$r50\];;

     d50:	b3 2c ca b1 00 00 80 1f                         	lwz.s.dltz \$r50\? \$r50 = -8388608 \(0xff800000\)\[\$r51\];;

     d58:	f4 3c ce 32                                     	lwz.u.dgez \$r51\? \$r51 = \[\$r52\];;

     d5c:	f4 ff d0 b3 ff ff ff 9f ff ff ff 18             	lwz.us \$r52 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r52\];;

     d68:	35 f0 d4 30                                     	lwz \$r53 = -64 \(0xffffffc0\)\[\$r53\];;

     d6c:	36 00 d4 b1 00 00 80 1f                         	lwz.s \$r53 = -8589934592 \(0xfffffffe00000000\)\[\$r54\];;

     d74:	b6 1d 60 58                                     	madddt \$r24r25 = \$r54, \$r54;;

     d78:	f7 0d dc 50                                     	maddd \$r55 = \$r55, \$r55;;

     d7c:	f8 07 e0 d0 ff ff ff 10                         	maddd \$r56 = \$r56, 536870911 \(0x1fffffff\);;

     d84:	79 0e e0 52                                     	maddhq \$r56 = \$r57, \$r57;;

     d88:	fa 0f e4 d2 ff ff ff 10                         	maddhq \$r57 = \$r58, 536870911 \(0x1fffffff\).@;;

     d90:	ba 4e 68 50                                     	maddhwq \$r26r27 = \$r58, \$r58;;

     d94:	1c 27 6c 51                                     	maddmwq \$r26r27 = \$r28r29, \$r28r29;;

     d98:	fb 1e 78 5a                                     	maddsudt \$r30r31 = \$r59, \$r59;;

     d9c:	3b 4f 78 52                                     	maddsuhwq \$r30r31 = \$r59, \$r60;;

     da0:	a0 28 84 53                                     	maddsumwq \$r32r33 = \$r32r33, \$r34r35;;

     da4:	3c 0f 88 5a                                     	maddsuwdp \$r34r35 = \$r60, \$r60;;

     da8:	fd 07 90 da ff ff ff 10                         	maddsuwdp \$r36r37 = \$r61, 536870911 \(0x1fffffff\);;

     db0:	bd 3f f4 52                                     	maddsuwd \$r61 = \$r61, \$r62;;

     db4:	fe 37 f8 d2 ff ff ff 10                         	maddsuwd \$r62 = \$r62, 536870911 \(0x1fffffff\);;

     dbc:	ff 1f 90 59                                     	maddudt \$r36r37 = \$r63, \$r63;;

     dc0:	3f 40 98 51                                     	madduhwq \$r38r39 = \$r63, \$r0;;

     dc4:	28 2a 9c 52                                     	maddumwq \$r38r39 = \$r40r41, \$r40r41;;

     dc8:	00 00 a8 59                                     	madduwdp \$r42r43 = \$r0, \$r0;;

     dcc:	c1 0f a8 d9 ff ff ff 10                         	madduwdp \$r42r43 = \$r1, 536870911 \(0x1fffffff\).@;;

     dd4:	81 30 04 51                                     	madduwd \$r1 = \$r1, \$r2;;

     dd8:	c2 37 08 d1 ff ff ff 10                         	madduwd \$r2 = \$r2, 536870911 \(0x1fffffff\);;

     de0:	c3 10 b0 5b                                     	madduzdt \$r44r45 = \$r3, \$r3;;

     de4:	03 01 b0 58                                     	maddwdp \$r44r45 = \$r3, \$r4;;

     de8:	c4 07 b8 d8 ff ff ff 10                         	maddwdp \$r46r47 = \$r4, 536870911 \(0x1fffffff\);;

     df0:	45 31 10 50                                     	maddwd \$r4 = \$r5, \$r5;;

     df4:	c6 37 14 d0 ff ff ff 10                         	maddwd \$r5 = \$r6, 536870911 \(0x1fffffff\);;

     dfc:	c6 01 18 51                                     	maddwp \$r6 = \$r6, \$r7;;

     e00:	c7 0f 1c d1 ff ff ff 10                         	maddwp \$r7 = \$r7, 536870911 \(0x1fffffff\).@;;

     e08:	30 2c bc 50                                     	maddwq \$r46r47 = \$r48r49, \$r48r49;;

     e0c:	08 32 20 53                                     	maddw \$r8 = \$r8, \$r8;;

     e10:	c9 37 24 d3 ff ff ff 10                         	maddw \$r9 = \$r9, 536870911 \(0x1fffffff\);;

     e18:	c0 ff 24 e0 ff ff ff 87 ff ff ff 00             	make \$r9 = 2305843009213693951 \(0x1fffffffffffffff\);;

     e24:	3c 00 28 e0 00 00 00 00                         	make \$r10 = -549755813888 \(0xffffff8000000000\);;

     e2c:	00 f0 28 60                                     	make \$r10 = -4096 \(0xfffff000\);;

     e30:	cb a2 2a 75                                     	maxbo \$r10 = \$r11, \$r11;;

     e34:	cc a7 2e f5 ff ff ff 00                         	maxbo \$r11 = \$r12, 536870911 \(0x1fffffff\);;

     e3c:	cd ff 30 e5 ff ff ff 87 ff ff ff 00             	maxd \$r12 = \$r13, 2305843009213693951 \(0x1fffffffffffffff\);;

     e48:	8e 03 35 75                                     	maxd \$r13 = \$r14, \$r14;;

     e4c:	0f f0 3c 65                                     	maxd \$r15 = \$r15, -64 \(0xffffffc0\);;

     e50:	10 00 40 e5 00 00 80 07                         	maxd \$r16 = \$r16, -8589934592 \(0xfffffffe00000000\);;

     e58:	51 34 41 75                                     	maxhq \$r16 = \$r17, \$r17;;

     e5c:	d2 3f 45 f5 ff ff ff 00                         	maxhq \$r17 = \$r18, 536870911 \(0x1fffffff\).@;;

     e64:	92 c0 4b 75                                     	maxrbod \$r18 = \$r18;;

     e68:	53 c0 4f 75                                     	maxrhqd \$r19 = \$r19;;

     e6c:	14 c0 4f 75                                     	maxrwpd \$r19 = \$r20;;

     e70:	54 a5 52 77                                     	maxubo \$r20 = \$r20, \$r21;;

     e74:	d5 a7 56 f7 ff ff ff 00                         	maxubo \$r21 = \$r21, 536870911 \(0x1fffffff\);;

     e7c:	d6 ff 58 e7 ff ff ff 87 ff ff ff 00             	maxud \$r22 = \$r22, 2305843009213693951 \(0x1fffffffffffffff\);;

     e88:	d7 05 59 77                                     	maxud \$r22 = \$r23, \$r23;;

     e8c:	18 f0 5c 67                                     	maxud \$r23 = \$r24, -64 \(0xffffffc0\);;

     e90:	18 00 60 e7 00 00 80 07                         	maxud \$r24 = \$r24, -8589934592 \(0xfffffffe00000000\);;

     e98:	59 36 65 77                                     	maxuhq \$r25 = \$r25, \$r25;;

     e9c:	da 3f 69 f7 ff ff ff 00                         	maxuhq \$r26 = \$r26, 536870911 \(0x1fffffff\).@;;

     ea4:	9b c0 6b 79                                     	maxurbod \$r26 = \$r27;;

     ea8:	5b c0 6f 79                                     	maxurhqd \$r27 = \$r27;;

     eac:	1c c0 73 79                                     	maxurwpd \$r28 = \$r28;;

     eb0:	5d 27 71 77                                     	maxuwp \$r28 = \$r29, \$r29;;

     eb4:	de 27 75 f7 ff ff ff 00                         	maxuwp \$r29 = \$r30, 536870911 \(0x1fffffff\);;

     ebc:	de 17 79 77                                     	maxuw \$r30 = \$r30, \$r31;;

     ec0:	1f f0 7c 77                                     	maxuw \$r31 = \$r31, -64 \(0xffffffc0\);;

     ec4:	20 00 80 f7 00 00 80 07                         	maxuw \$r32 = \$r32, -8589934592 \(0xfffffffe00000000\);;

     ecc:	61 28 81 75                                     	maxwp \$r32 = \$r33, \$r33;;

     ed0:	e2 2f 85 f5 ff ff ff 00                         	maxwp \$r33 = \$r34, 536870911 \(0x1fffffff\).@;;

     ed8:	e2 18 89 75                                     	maxw \$r34 = \$r34, \$r35;;

     edc:	23 f0 8c 75                                     	maxw \$r35 = \$r35, -64 \(0xffffffc0\);;

     ee0:	24 00 90 f5 00 00 80 07                         	maxw \$r36 = \$r36, -8589934592 \(0xfffffffe00000000\);;

     ee8:	65 a9 92 74                                     	minbo \$r36 = \$r37, \$r37;;

     eec:	e6 a7 96 f4 ff ff ff 00                         	minbo \$r37 = \$r38, 536870911 \(0x1fffffff\);;

     ef4:	e6 ff 98 e4 ff ff ff 87 ff ff ff 00             	mind \$r38 = \$r38, 2305843009213693951 \(0x1fffffffffffffff\);;

     f00:	e7 09 9d 74                                     	mind \$r39 = \$r39, \$r39;;

     f04:	28 f0 a0 64                                     	mind \$r40 = \$r40, -64 \(0xffffffc0\);;

     f08:	29 00 a0 e4 00 00 80 07                         	mind \$r40 = \$r41, -8589934592 \(0xfffffffe00000000\);;

     f10:	a9 3a a5 74                                     	minhq \$r41 = \$r41, \$r42;;

     f14:	ea 3f a9 f4 ff ff ff 00                         	minhq \$r42 = \$r42, 536870911 \(0x1fffffff\).@;;

     f1c:	ab c0 af 74                                     	minrbod \$r43 = \$r43;;

     f20:	6c c0 af 74                                     	minrhqd \$r43 = \$r44;;

     f24:	2c c0 b3 74                                     	minrwpd \$r44 = \$r44;;

     f28:	6d ab b6 76                                     	minubo \$r45 = \$r45, \$r45;;

     f2c:	ee a7 ba f6 ff ff ff 00                         	minubo \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     f34:	ef ff b8 e6 ff ff ff 87 ff ff ff 00             	minud \$r46 = \$r47, 2305843009213693951 \(0x1fffffffffffffff\);;

     f40:	2f 0c bd 76                                     	minud \$r47 = \$r47, \$r48;;

     f44:	30 f0 c0 66                                     	minud \$r48 = \$r48, -64 \(0xffffffc0\);;

     f48:	31 00 c4 e6 00 00 80 07                         	minud \$r49 = \$r49, -8589934592 \(0xfffffffe00000000\);;

     f50:	b2 3c c5 76                                     	minuhq \$r49 = \$r50, \$r50;;

     f54:	f3 3f c9 f6 ff ff ff 00                         	minuhq \$r50 = \$r51, 536870911 \(0x1fffffff\).@;;

     f5c:	b3 c0 cf 78                                     	minurbod \$r51 = \$r51;;

     f60:	74 c0 d3 78                                     	minurhqd \$r52 = \$r52;;

     f64:	35 c0 d3 78                                     	minurwpd \$r52 = \$r53;;

     f68:	b5 2d d5 76                                     	minuwp \$r53 = \$r53, \$r54;;

     f6c:	f6 27 d9 f6 ff ff ff 00                         	minuwp \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     f74:	f7 1d dd 76                                     	minuw \$r55 = \$r55, \$r55;;

     f78:	38 f0 e0 76                                     	minuw \$r56 = \$r56, -64 \(0xffffffc0\);;

     f7c:	39 00 e0 f6 00 00 80 07                         	minuw \$r56 = \$r57, -8589934592 \(0xfffffffe00000000\);;

     f84:	b9 2e e5 74                                     	minwp \$r57 = \$r57, \$r58;;

     f88:	fa 2f e9 f4 ff ff ff 00                         	minwp \$r58 = \$r58, 536870911 \(0x1fffffff\).@;;

     f90:	fb 1e ed 74                                     	minw \$r59 = \$r59, \$r59;;

     f94:	3c f0 f0 74                                     	minw \$r60 = \$r60, -64 \(0xffffffc0\);;

     f98:	3d 00 f0 f4 00 00 80 07                         	minw \$r60 = \$r61, -8589934592 \(0xfffffffe00000000\);;

     fa0:	7d 1f c8 53                                     	mm212w \$r50r51 = \$r61, \$r61;;

     fa4:	fe 17 c8 d3 ff ff ff 10                         	mm212w \$r50r51 = \$r62, 536870911 \(0x1fffffff\);;

     fac:	be 0f d0 5b                                     	mma212w \$r52r53 = \$r62, \$r62;;

     fb0:	ff 0f d0 db ff ff ff 10                         	mma212w \$r52r53 = \$r63, 536870911 \(0x1fffffff\).@;;

     fb8:	ff 0f d8 5f                                     	mms212w \$r54r55 = \$r63, \$r63;;

     fbc:	c0 07 d8 df ff ff ff 10                         	mms212w \$r54r55 = \$r0, 536870911 \(0x1fffffff\);;

     fc4:	00 10 e0 5c                                     	msbfdt \$r56r57 = \$r0, \$r0;;

     fc8:	41 00 04 54                                     	msbfd \$r1 = \$r1, \$r1;;

     fcc:	c2 0f 08 d4 ff ff ff 10                         	msbfd \$r2 = \$r2, 536870911 \(0x1fffffff\).@;;

     fd4:	c3 00 08 56                                     	msbfhq \$r2 = \$r3, \$r3;;

     fd8:	c4 07 0c d6 ff ff ff 10                         	msbfhq \$r3 = \$r4, 536870911 \(0x1fffffff\);;

     fe0:	04 41 e0 54                                     	msbfhwq \$r56r57 = \$r4, \$r4;;

     fe4:	3a 2f ec 55                                     	msbfmwq \$r58r59 = \$r58r59, \$r60r61;;

     fe8:	45 11 f0 5e                                     	msbfsudt \$r60r61 = \$r5, \$r5;;

     fec:	85 41 f8 56                                     	msbfsuhwq \$r62r63 = \$r5, \$r6;;

     ff0:	00 20 fc 57                                     	msbfsumwq \$r62r63 = \$r0r1, \$r0r1;;

     ff4:	86 01 08 5e                                     	msbfsuwdp \$r2r3 = \$r6, \$r6;;

     ff8:	c7 0f 08 de ff ff ff 10                         	msbfsuwdp \$r2r3 = \$r7, 536870911 \(0x1fffffff\).@;;

    1000:	07 32 1c 56                                     	msbfsuwd \$r7 = \$r7, \$r8;;

    1004:	c8 37 20 d6 ff ff ff 10                         	msbfsuwd \$r8 = \$r8, 536870911 \(0x1fffffff\);;

    100c:	49 12 10 5d                                     	msbfudt \$r4r5 = \$r9, \$r9;;

    1010:	89 42 10 55                                     	msbfuhwq \$r4r5 = \$r9, \$r10;;

    1014:	06 22 1c 56                                     	msbfumwq \$r6r7 = \$r6r7, \$r8r9;;

    1018:	8a 02 20 5d                                     	msbfuwdp \$r8r9 = \$r10, \$r10;;

    101c:	cb 07 28 dd ff ff ff 10                         	msbfuwdp \$r10r11 = \$r11, 536870911 \(0x1fffffff\);;

    1024:	0b 33 2c 55                                     	msbfuwd \$r11 = \$r11, \$r12;;

    1028:	cd 37 30 d5 ff ff ff 10                         	msbfuwd \$r12 = \$r13, 536870911 \(0x1fffffff\);;

    1030:	8d 13 28 5f                                     	msbfuzdt \$r10r11 = \$r13, \$r14;;

    1034:	ce 03 30 5c                                     	msbfwdp \$r12r13 = \$r14, \$r15;;

    1038:	cf 0f 30 dc ff ff ff 10                         	msbfwdp \$r12r13 = \$r15, 536870911 \(0x1fffffff\).@;;

    1040:	10 34 40 54                                     	msbfwd \$r16 = \$r16, \$r16;;

    1044:	d1 37 44 d4 ff ff ff 10                         	msbfwd \$r17 = \$r17, 536870911 \(0x1fffffff\);;

    104c:	92 04 44 55                                     	msbfwp \$r17 = \$r18, \$r18;;

    1050:	d3 07 48 d5 ff ff ff 10                         	msbfwp \$r18 = \$r19, 536870911 \(0x1fffffff\);;

    1058:	0e 24 3c 54                                     	msbfwq \$r14r15 = \$r14r15, \$r16r17;;

    105c:	13 35 4c 57                                     	msbfw \$r19 = \$r19, \$r20;;

    1060:	d4 37 50 d7 ff ff ff 10                         	msbfw \$r20 = \$r20, 536870911 \(0x1fffffff\);;

    1068:	55 15 44 58                                     	muldt \$r16r17 = \$r21, \$r21;;

    106c:	96 15 54 54                                     	muld \$r21 = \$r22, \$r22;;

    1070:	d7 1f 58 d4 ff ff ff 10                         	muld \$r22 = \$r23, 536870911 \(0x1fffffff\).@;;

    1078:	17 16 5c 56                                     	mulhq \$r23 = \$r23, \$r24;;

    107c:	d8 17 60 d6 ff ff ff 10                         	mulhq \$r24 = \$r24, 536870911 \(0x1fffffff\);;

    1084:	59 46 48 58                                     	mulhwq \$r18r19 = \$r25, \$r25;;

    1088:	14 25 48 55                                     	mulmwq \$r18r19 = \$r20r21, \$r20r21;;

    108c:	99 16 5c 5a                                     	mulsudt \$r22r23 = \$r25, \$r26;;

    1090:	9a 46 58 5a                                     	mulsuhwq \$r22r23 = \$r26, \$r26;;

    1094:	98 26 60 57                                     	mulsumwq \$r24r25 = \$r24r25, \$r26r27;;

    1098:	db 16 68 52                                     	mulsuwdp \$r26r27 = \$r27, \$r27;;

    109c:	db 1f 70 d2 ff ff ff 10                         	mulsuwdp \$r28r29 = \$r27, 536870911 \(0x1fffffff\).@;;

    10a4:	1c 37 70 5a                                     	mulsuwd \$r28 = \$r28, \$r28;;

    10a8:	dd 37 74 da ff ff ff 10                         	mulsuwd \$r29 = \$r29, 536870911 \(0x1fffffff\);;

    10b0:	9d 17 74 59                                     	muludt \$r28r29 = \$r29, \$r30;;

    10b4:	9e 47 78 59                                     	muluhwq \$r30r31 = \$r30, \$r30;;

    10b8:	20 28 78 56                                     	mulumwq \$r30r31 = \$r32r33, \$r32r33;;

    10bc:	df 17 88 51                                     	muluwdp \$r34r35 = \$r31, \$r31;;

    10c0:	df 17 88 d1 ff ff ff 10                         	muluwdp \$r34r35 = \$r31, 536870911 \(0x1fffffff\);;

    10c8:	20 38 80 59                                     	muluwd \$r32 = \$r32, \$r32;;

    10cc:	e1 37 84 d9 ff ff ff 10                         	muluwd \$r33 = \$r33, 536870911 \(0x1fffffff\);;

    10d4:	a1 18 90 50                                     	mulwdp \$r36r37 = \$r33, \$r34;;

    10d8:	e2 1f 90 d0 ff ff ff 10                         	mulwdp \$r36r37 = \$r34, 536870911 \(0x1fffffff\).@;;

    10e0:	e3 38 88 58                                     	mulwd \$r34 = \$r35, \$r35;;

    10e4:	e4 37 8c d8 ff ff ff 10                         	mulwd \$r35 = \$r36, 536870911 \(0x1fffffff\);;

    10ec:	64 19 90 55                                     	mulwp \$r36 = \$r36, \$r37;;

    10f0:	e5 17 94 d5 ff ff ff 10                         	mulwp \$r37 = \$r37, 536870911 \(0x1fffffff\);;

    10f8:	26 2a 98 54                                     	mulwq \$r38r39 = \$r38r39, \$r40r41;;

    10fc:	a6 39 98 5b                                     	mulw \$r38 = \$r38, \$r38;;

    1100:	e7 37 9c db ff ff ff 10                         	mulw \$r39 = \$r39, 536870911 \(0x1fffffff\);;

    1108:	e8 ff 9c e9 ff ff ff 87 ff ff ff 00             	nandd \$r39 = \$r40, 2305843009213693951 \(0x1fffffffffffffff\);;

    1114:	68 0a a1 79                                     	nandd \$r40 = \$r40, \$r41;;

    1118:	29 f0 a4 69                                     	nandd \$r41 = \$r41, -64 \(0xffffffc0\);;

    111c:	2a 00 a8 e9 00 00 80 07                         	nandd \$r42 = \$r42, -8589934592 \(0xfffffffe00000000\);;

    1124:	eb 1a a9 79                                     	nandw \$r42 = \$r43, \$r43;;

    1128:	2c f0 ac 79                                     	nandw \$r43 = \$r44, -64 \(0xffffffc0\);;

    112c:	2c 00 b0 f9 00 00 80 07                         	nandw \$r44 = \$r44, -8589934592 \(0xfffffffe00000000\);;

    1134:	2d a0 b6 f1 00 00 00 00                         	negbo \$r45 = \$r45;;

    113c:	2e 00 b4 63                                     	negd \$r45 = \$r46;;

    1140:	2e 30 b9 f3 00 00 00 00                         	neghq \$r46 = \$r46;;

    1148:	2f b0 be fd 00 00 00 00                         	negsbo \$r47 = \$r47;;

    1150:	30 40 bd fd 00 00 00 00                         	negsd \$r47 = \$r48;;

    1158:	30 70 c1 fd 00 00 00 00                         	negshq \$r48 = \$r48;;

    1160:	31 60 c5 fd 00 00 00 00                         	negswp \$r49 = \$r49;;

    1168:	32 50 c5 fd 00 00 00 00                         	negsw \$r49 = \$r50;;

    1170:	32 20 c9 f3 00 00 00 00                         	negwp \$r50 = \$r50;;

    1178:	33 00 cc 73                                     	negw \$r51 = \$r51;;

    117c:	f4 ff cc eb ff ff ff 87 ff ff ff 00             	niord \$r51 = \$r52, 2305843009213693951 \(0x1fffffffffffffff\);;

    1188:	74 0d d1 7b                                     	niord \$r52 = \$r52, \$r53;;

    118c:	35 f0 d4 6b                                     	niord \$r53 = \$r53, -64 \(0xffffffc0\);;

    1190:	36 00 d8 eb 00 00 80 07                         	niord \$r54 = \$r54, -8589934592 \(0xfffffffe00000000\);;

    1198:	f7 1d d9 7b                                     	niorw \$r54 = \$r55, \$r55;;

    119c:	38 f0 dc 7b                                     	niorw \$r55 = \$r56, -64 \(0xffffffc0\);;

    11a0:	38 00 e0 fb 00 00 80 07                         	niorw \$r56 = \$r56, -8589934592 \(0xfffffffe00000000\);;

    11a8:	00 f0 03 7f                                     	nop;;

    11ac:	f9 ff e4 eb ff ff ff 87 ff ff ff 00             	niord \$r57 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

    11b8:	ba 0e e5 7b                                     	niord \$r57 = \$r58, \$r58;;

    11bc:	3b f0 e8 6b                                     	niord \$r58 = \$r59, -64 \(0xffffffc0\);;

    11c0:	3b 00 ec eb 00 00 80 07                         	niord \$r59 = \$r59, -8589934592 \(0xfffffffe00000000\);;

    11c8:	3c 1f f1 7b                                     	niorw \$r60 = \$r60, \$r60;;

    11cc:	3d f0 f4 7b                                     	niorw \$r61 = \$r61, -64 \(0xffffffc0\);;

    11d0:	3e 00 f4 fb 00 00 80 07                         	niorw \$r61 = \$r62, -8589934592 \(0xfffffffe00000000\);;

    11d8:	fe ff f8 6c                                     	notd \$r62 = \$r62;;

    11dc:	ff ff fc 7c                                     	notw \$r63 = \$r63;;

    11e0:	c0 ff fc ed ff ff ff 87 ff ff ff 00             	nxord \$r63 = \$r0, 2305843009213693951 \(0x1fffffffffffffff\);;

    11ec:	40 00 01 7d                                     	nxord \$r0 = \$r0, \$r1;;

    11f0:	01 f0 04 6d                                     	nxord \$r1 = \$r1, -64 \(0xffffffc0\);;

    11f4:	02 00 08 ed 00 00 80 07                         	nxord \$r2 = \$r2, -8589934592 \(0xfffffffe00000000\);;

    11fc:	c3 10 09 7d                                     	nxorw \$r2 = \$r3, \$r3;;

    1200:	04 f0 0c 7d                                     	nxorw \$r3 = \$r4, -64 \(0xffffffc0\);;

    1204:	04 00 10 fd 00 00 80 07                         	nxorw \$r4 = \$r4, -8589934592 \(0xfffffffe00000000\);;

    120c:	c5 ff 14 ea ff ff ff 87 ff ff ff 00             	iord \$r5 = \$r5, 2305843009213693951 \(0x1fffffffffffffff\);;

    1218:	86 01 15 7a                                     	iord \$r5 = \$r6, \$r6;;

    121c:	07 f0 18 6a                                     	iord \$r6 = \$r7, -64 \(0xffffffc0\);;

    1220:	07 00 1c ea 00 00 80 07                         	iord \$r7 = \$r7, -8589934592 \(0xfffffffe00000000\);;

    1228:	c8 ff 20 ef ff ff ff 87 ff ff ff 00             	iornd \$r8 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

    1234:	49 02 21 7f                                     	iornd \$r8 = \$r9, \$r9;;

    1238:	0a f0 24 6f                                     	iornd \$r9 = \$r10, -64 \(0xffffffc0\);;

    123c:	0a 00 28 ef 00 00 80 07                         	iornd \$r10 = \$r10, -8589934592 \(0xfffffffe00000000\);;

    1244:	cb 12 2d 7f                                     	iornw \$r11 = \$r11, \$r11;;

    1248:	0c f0 30 7f                                     	iornw \$r12 = \$r12, -64 \(0xffffffc0\);;

    124c:	0d 00 34 ff 00 00 80 07                         	iornw \$r13 = \$r13, -8589934592 \(0xfffffffe00000000\);;

    1254:	8e c0 3b 71                                     	iorrbod \$r14 = \$r14;;

    1258:	4f c0 3f 71                                     	iorrhqd \$r15 = \$r15;;

    125c:	10 c0 43 71                                     	iorrwpd \$r16 = \$r16;;

    1260:	51 14 41 7a                                     	iorw \$r16 = \$r17, \$r17;;

    1264:	12 f0 44 7a                                     	iorw \$r17 = \$r18, -64 \(0xffffffc0\);;

    1268:	12 00 48 fa 00 00 80 07                         	iorw \$r18 = \$r18, -8589934592 \(0xfffffffe00000000\);;

    1270:	c0 ff 4c f0 ff ff ff 87 ff ff ff 00             	pcrel \$r19 = 2305843009213693951 \(0x1fffffffffffffff\);;

    127c:	3c 00 4c f0 00 00 00 00                         	pcrel \$r19 = -549755813888 \(0xffffff8000000000\);;

    1284:	00 f0 4c 70                                     	pcrel \$r19 = -4096 \(0xfffff000\);;

    1288:	00 00 d0 0f                                     	ret;;

    128c:	00 00 d4 0f                                     	rfe;;

    1290:	14 85 52 7e                                     	rolwps \$r20 = \$r20, \$r20;;

    1294:	d5 41 56 7e                                     	rolwps \$r21 = \$r21, 7 \(0x7\);;

    1298:	96 75 56 7e                                     	rolw \$r21 = \$r22, \$r22;;

    129c:	d7 31 5a 7e                                     	rolw \$r22 = \$r23, 7 \(0x7\);;

    12a0:	17 86 5e 7f                                     	rorwps \$r23 = \$r23, \$r24;;

    12a4:	d8 41 62 7f                                     	rorwps \$r24 = \$r24, 7 \(0x7\);;

    12a8:	59 76 66 7f                                     	rorw \$r25 = \$r25, \$r25;;

    12ac:	da 31 6a 7f                                     	rorw \$r26 = \$r26, 7 \(0x7\);;

    12b0:	1a 07 c8 0f                                     	rswap \$r26 = \$mmc;;

    12b4:	1b 00 c8 0f                                     	rswap \$r27 = \$pc;;

    12b8:	1b 00 c8 0f                                     	rswap \$r27 = \$pc;;

    12bc:	1c a7 6e 71                                     	sbfbo \$r27 = \$r28, \$r28;;

    12c0:	dd af 72 f1 ff ff ff 00                         	sbfbo \$r28 = \$r29, 536870911 \(0x1fffffff\).@;;

    12c8:	9d 97 75 7f                                     	sbfcd.i \$r29 = \$r29, \$r30;;

    12cc:	de 97 79 ff ff ff ff 00                         	sbfcd.i \$r30 = \$r30, 536870911 \(0x1fffffff\);;

    12d4:	df 87 7d 7f                                     	sbfcd \$r31 = \$r31, \$r31;;

    12d8:	e0 87 81 ff ff ff ff 00                         	sbfcd \$r32 = \$r32, 536870911 \(0x1fffffff\);;

    12e0:	e1 ff 80 e3 ff ff ff 87 ff ff ff 00             	sbfd \$r32 = \$r33, 2305843009213693951 \(0x1fffffffffffffff\);;

    12ec:	a1 08 85 73                                     	sbfd \$r33 = \$r33, \$r34;;

    12f0:	22 f0 88 63                                     	sbfd \$r34 = \$r34, -64 \(0xffffffc0\);;

    12f4:	23 00 8c e3 00 00 80 07                         	sbfd \$r35 = \$r35, -8589934592 \(0xfffffffe00000000\);;

    12fc:	24 39 8d 73                                     	sbfhq \$r35 = \$r36, \$r36;;

    1300:	e5 37 91 f3 ff ff ff 00                         	sbfhq \$r36 = \$r37, 536870911 \(0x1fffffff\);;

    1308:	a5 b9 96 7d                                     	sbfsbo \$r37 = \$r37, \$r38;;

    130c:	e6 bf 9a fd ff ff ff 00                         	sbfsbo \$r38 = \$r38, 536870911 \(0x1fffffff\).@;;

    1314:	e7 49 9d 7d                                     	sbfsd \$r39 = \$r39, \$r39;;

    1318:	e8 47 a1 fd ff ff ff 00                         	sbfsd \$r40 = \$r40, 536870911 \(0x1fffffff\);;

    1320:	69 7a a1 7d                                     	sbfshq \$r40 = \$r41, \$r41;;

    1324:	ea 7f a5 fd ff ff ff 00                         	sbfshq \$r41 = \$r42, 536870911 \(0x1fffffff\).@;;

    132c:	ea 6a a9 7d                                     	sbfswp \$r42 = \$r42, \$r43;;

    1330:	eb 67 ad fd ff ff ff 00                         	sbfswp \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    1338:	2c 5b b1 7d                                     	sbfsw \$r44 = \$r44, \$r44;;

    133c:	ed 57 b5 fd ff ff ff 00                         	sbfsw \$r45 = \$r45, 536870911 \(0x1fffffff\);;

    1344:	ae bb b6 7f                                     	sbfusbo \$r45 = \$r46, \$r46;;

    1348:	ef bf ba ff ff ff ff 00                         	sbfusbo \$r46 = \$r47, 536870911 \(0x1fffffff\).@;;

    1350:	2f 4c bd 7f                                     	sbfusd \$r47 = \$r47, \$r48;;

    1354:	f0 47 c1 ff ff ff ff 00                         	sbfusd \$r48 = \$r48, 536870911 \(0x1fffffff\);;

    135c:	71 7c c5 7f                                     	sbfushq \$r49 = \$r49, \$r49;;

    1360:	f2 7f c9 ff ff ff ff 00                         	sbfushq \$r50 = \$r50, 536870911 \(0x1fffffff\).@;;

    1368:	f3 6c c9 7f                                     	sbfuswp \$r50 = \$r51, \$r51;;

    136c:	f4 67 cd ff ff ff ff 00                         	sbfuswp \$r51 = \$r52, 536870911 \(0x1fffffff\);;

    1374:	74 5d d1 7f                                     	sbfusw \$r52 = \$r52, \$r53;;

    1378:	f5 57 d5 ff ff ff ff 00                         	sbfusw \$r53 = \$r53, 536870911 \(0x1fffffff\);;

    1380:	b6 9d d9 7d                                     	sbfuwd \$r54 = \$r54, \$r54;;

    1384:	f7 97 dd fd ff ff ff 00                         	sbfuwd \$r55 = \$r55, 536870911 \(0x1fffffff\);;

    138c:	38 8e dd 7d                                     	sbfwd \$r55 = \$r56, \$r56;;

    1390:	f9 87 e1 fd ff ff ff 00                         	sbfwd \$r56 = \$r57, 536870911 \(0x1fffffff\);;

    1398:	b9 2e e5 73                                     	sbfwp \$r57 = \$r57, \$r58;;

    139c:	fa 2f e9 f3 ff ff ff 00                         	sbfwp \$r58 = \$r58, 536870911 \(0x1fffffff\).@;;

    13a4:	fb 1e ed 73                                     	sbfw \$r59 = \$r59, \$r59;;

    13a8:	3c f0 f0 73                                     	sbfw \$r60 = \$r60, -64 \(0xffffffc0\);;

    13ac:	3d 00 f0 f3 00 00 80 07                         	sbfw \$r60 = \$r61, -8589934592 \(0xfffffffe00000000\);;

    13b4:	bd bf f6 77                                     	sbfx16bo \$r61 = \$r61, \$r62;;

    13b8:	fe b7 fa f7 ff ff ff 00                         	sbfx16bo \$r62 = \$r62, 536870911 \(0x1fffffff\);;

    13c0:	ff 4f fd 77                                     	sbfx16d \$r63 = \$r63, \$r63;;

    13c4:	c0 4f 01 f7 ff ff ff 00                         	sbfx16d \$r0 = \$r0, 536870911 \(0x1fffffff\).@;;

    13cc:	41 70 01 77                                     	sbfx16hq \$r0 = \$r1, \$r1;;

    13d0:	c2 77 05 f7 ff ff ff 00                         	sbfx16hq \$r1 = \$r2, 536870911 \(0x1fffffff\);;

    13d8:	c2 90 09 77                                     	sbfx16uwd \$r2 = \$r2, \$r3;;

    13dc:	c3 97 0d f7 ff ff ff 00                         	sbfx16uwd \$r3 = \$r3, 536870911 \(0x1fffffff\);;

    13e4:	04 81 11 77                                     	sbfx16wd \$r4 = \$r4, \$r4;;

    13e8:	c5 87 15 f7 ff ff ff 00                         	sbfx16wd \$r5 = \$r5, 536870911 \(0x1fffffff\);;

    13f0:	86 61 15 77                                     	sbfx16wp \$r5 = \$r6, \$r6;;

    13f4:	c7 6f 19 f7 ff ff ff 00                         	sbfx16wp \$r6 = \$r7, 536870911 \(0x1fffffff\).@;;

    13fc:	07 52 1d 77                                     	sbfx16w \$r7 = \$r7, \$r8;;

    1400:	c8 57 21 f7 ff ff ff 00                         	sbfx16w \$r8 = \$r8, 536870911 \(0x1fffffff\);;

    1408:	49 b2 26 71                                     	sbfx2bo \$r9 = \$r9, \$r9;;

    140c:	ca b7 2a f1 ff ff ff 00                         	sbfx2bo \$r10 = \$r10, 536870911 \(0x1fffffff\);;

    1414:	cb 42 29 71                                     	sbfx2d \$r10 = \$r11, \$r11;;

    1418:	cc 4f 2d f1 ff ff ff 00                         	sbfx2d \$r11 = \$r12, 536870911 \(0x1fffffff\).@;;

    1420:	4d 73 31 71                                     	sbfx2hq \$r12 = \$r13, \$r13;;

    1424:	ce 77 39 f1 ff ff ff 00                         	sbfx2hq \$r14 = \$r14, 536870911 \(0x1fffffff\);;

    142c:	0f 94 3d 71                                     	sbfx2uwd \$r15 = \$r15, \$r16;;

    1430:	d0 97 41 f1 ff ff ff 00                         	sbfx2uwd \$r16 = \$r16, 536870911 \(0x1fffffff\);;

    1438:	51 84 45 71                                     	sbfx2wd \$r17 = \$r17, \$r17;;

    143c:	d2 87 49 f1 ff ff ff 00                         	sbfx2wd \$r18 = \$r18, 536870911 \(0x1fffffff\);;

    1444:	d3 64 49 71                                     	sbfx2wp \$r18 = \$r19, \$r19;;

    1448:	d4 6f 4d f1 ff ff ff 00                         	sbfx2wp \$r19 = \$r20, 536870911 \(0x1fffffff\).@;;

    1450:	54 55 51 71                                     	sbfx2w \$r20 = \$r20, \$r21;;

    1454:	d5 57 55 f1 ff ff ff 00                         	sbfx2w \$r21 = \$r21, 536870911 \(0x1fffffff\);;

    145c:	96 45 59 79                                     	sbfx32d \$r22 = \$r22, \$r22;;

    1460:	d7 47 5d f9 ff ff ff 00                         	sbfx32d \$r23 = \$r23, 536870911 \(0x1fffffff\);;

    1468:	18 96 5d 79                                     	sbfx32uwd \$r23 = \$r24, \$r24;;

    146c:	d9 97 61 f9 ff ff ff 00                         	sbfx32uwd \$r24 = \$r25, 536870911 \(0x1fffffff\);;

    1474:	99 86 65 79                                     	sbfx32wd \$r25 = \$r25, \$r26;;

    1478:	da 87 69 f9 ff ff ff 00                         	sbfx32wd \$r26 = \$r26, 536870911 \(0x1fffffff\);;

    1480:	db 56 6d 79                                     	sbfx32w \$r27 = \$r27, \$r27;;

    1484:	dc 57 71 f9 ff ff ff 00                         	sbfx32w \$r28 = \$r28, 536870911 \(0x1fffffff\);;

    148c:	5d b7 72 73                                     	sbfx4bo \$r28 = \$r29, \$r29;;

    1490:	de bf 76 f3 ff ff ff 00                         	sbfx4bo \$r29 = \$r30, 536870911 \(0x1fffffff\).@;;

    1498:	de 47 79 73                                     	sbfx4d \$r30 = \$r30, \$r31;;

    149c:	df 47 7d f3 ff ff ff 00                         	sbfx4d \$r31 = \$r31, 536870911 \(0x1fffffff\);;

    14a4:	20 78 81 73                                     	sbfx4hq \$r32 = \$r32, \$r32;;

    14a8:	e1 7f 85 f3 ff ff ff 00                         	sbfx4hq \$r33 = \$r33, 536870911 \(0x1fffffff\).@;;

    14b0:	a2 98 85 73                                     	sbfx4uwd \$r33 = \$r34, \$r34;;

    14b4:	e3 97 89 f3 ff ff ff 00                         	sbfx4uwd \$r34 = \$r35, 536870911 \(0x1fffffff\);;

    14bc:	23 89 8d 73                                     	sbfx4wd \$r35 = \$r35, \$r36;;

    14c0:	e4 87 91 f3 ff ff ff 00                         	sbfx4wd \$r36 = \$r36, 536870911 \(0x1fffffff\);;

    14c8:	65 69 95 73                                     	sbfx4wp \$r37 = \$r37, \$r37;;

    14cc:	e6 67 99 f3 ff ff ff 00                         	sbfx4wp \$r38 = \$r38, 536870911 \(0x1fffffff\);;

    14d4:	e7 59 99 73                                     	sbfx4w \$r38 = \$r39, \$r39;;

    14d8:	e8 57 9d f3 ff ff ff 00                         	sbfx4w \$r39 = \$r40, 536870911 \(0x1fffffff\);;

    14e0:	68 4a a1 7b                                     	sbfx64d \$r40 = \$r40, \$r41;;

    14e4:	e9 4f a5 fb ff ff ff 00                         	sbfx64d \$r41 = \$r41, 536870911 \(0x1fffffff\).@;;

    14ec:	aa 9a a9 7b                                     	sbfx64uwd \$r42 = \$r42, \$r42;;

    14f0:	eb 97 ad fb ff ff ff 00                         	sbfx64uwd \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    14f8:	2c 8b ad 7b                                     	sbfx64wd \$r43 = \$r44, \$r44;;

    14fc:	ed 87 b1 fb ff ff ff 00                         	sbfx64wd \$r44 = \$r45, 536870911 \(0x1fffffff\);;

    1504:	ad 5b b5 7b                                     	sbfx64w \$r45 = \$r45, \$r46;;

    1508:	ee 57 b9 fb ff ff ff 00                         	sbfx64w \$r46 = \$r46, 536870911 \(0x1fffffff\);;

    1510:	ef bb be 75                                     	sbfx8bo \$r47 = \$r47, \$r47;;

    1514:	f0 b7 c2 f5 ff ff ff 00                         	sbfx8bo \$r48 = \$r48, 536870911 \(0x1fffffff\);;

    151c:	71 4c c1 75                                     	sbfx8d \$r48 = \$r49, \$r49;;

    1520:	f2 4f c5 f5 ff ff ff 00                         	sbfx8d \$r49 = \$r50, 536870911 \(0x1fffffff\).@;;

    1528:	f2 7c c9 75                                     	sbfx8hq \$r50 = \$r50, \$r51;;

    152c:	f3 77 cd f5 ff ff ff 00                         	sbfx8hq \$r51 = \$r51, 536870911 \(0x1fffffff\);;

    1534:	34 9d d1 75                                     	sbfx8uwd \$r52 = \$r52, \$r52;;

    1538:	f5 97 d5 f5 ff ff ff 00                         	sbfx8uwd \$r53 = \$r53, 536870911 \(0x1fffffff\);;

    1540:	b6 8d d5 75                                     	sbfx8wd \$r53 = \$r54, \$r54;;

    1544:	f7 87 d9 f5 ff ff ff 00                         	sbfx8wd \$r54 = \$r55, 536870911 \(0x1fffffff\);;

    154c:	37 6e dd 75                                     	sbfx8wp \$r55 = \$r55, \$r56;;

    1550:	f8 6f e1 f5 ff ff ff 00                         	sbfx8wp \$r56 = \$r56, 536870911 \(0x1fffffff\).@;;

    1558:	79 5e e5 75                                     	sbfx8w \$r57 = \$r57, \$r57;;

    155c:	fa 57 e9 f5 ff ff ff 00                         	sbfx8w \$r58 = \$r58, 536870911 \(0x1fffffff\);;

    1564:	fb ff ea ee ff ff ff 87 ff ff ff 00             	sbmm8 \$r58 = \$r59, 2305843009213693951 \(0x1fffffffffffffff\);;

    1570:	3b 0f ee 7e                                     	sbmm8 \$r59 = \$r59, \$r60;;

    1574:	3c f0 f2 6e                                     	sbmm8 \$r60 = \$r60, -64 \(0xffffffc0\);;

    1578:	3d 00 f6 ee 00 00 80 07                         	sbmm8 \$r61 = \$r61, -8589934592 \(0xfffffffe00000000\);;

    1580:	fe ff f6 ef ff ff ff 87 ff ff ff 00             	sbmmt8 \$r61 = \$r62, 2305843009213693951 \(0x1fffffffffffffff\);;

    158c:	fe 0f fa 7f                                     	sbmmt8 \$r62 = \$r62, \$r63;;

    1590:	3f f0 fe 6f                                     	sbmmt8 \$r63 = \$r63, -64 \(0xffffffc0\);;

    1594:	00 00 02 ef 00 00 80 07                         	sbmmt8 \$r0 = \$r0, -8589934592 \(0xfffffffe00000000\);;

    159c:	01 e0 07 30                                     	sb \$r0\[\$r1\] = \$r1;;

    15a0:	c1 ff 09 b0 ff ff ff 9f ff ff ff 18             	sb 2305843009213693951 \(0x1fffffffffffffff\)\[\$r1\] = \$r2;;

    15ac:	82 40 0f b0 00 00 00 98 00 00 80 1f             	sb.dlez \$r2\? -1125899906842624 \(0xfffc000000000000\)\[\$r2\] = \$r3;;

    15b8:	c3 50 13 b0 00 00 80 1f                         	sb.dgtz \$r3\? -8388608 \(0xff800000\)\[\$r3\] = \$r4;;

    15c0:	04 61 17 30                                     	sb.odd \$r4\? \[\$r4\] = \$r5;;

    15c4:	05 f0 15 30                                     	sb -64 \(0xffffffc0\)\[\$r5\] = \$r5;;

    15c8:	06 00 19 b0 00 00 80 1f                         	sb -8589934592 \(0xfffffffe00000000\)\[\$r6\] = \$r6;;

    15d0:	06 00 e4 0f                                     	scall \$r6;;

    15d4:	ff 01 e0 0f                                     	scall 511 \(0x1ff\);;

    15d8:	c7 f1 1f 33                                     	sd.xs \$r7\[\$r7\] = \$r7;;

    15dc:	c8 ff 21 b3 ff ff ff 9f ff ff ff 18             	sd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r8\] = \$r8;;

    15e8:	09 72 27 b3 00 00 00 98 00 00 80 1f             	sd.even \$r8\? -1125899906842624 \(0xfffc000000000000\)\[\$r9\] = \$r9;;

    15f4:	4a 82 2b b3 00 00 80 1f                         	sd.wnez \$r9\? -8388608 \(0xff800000\)\[\$r10\] = \$r10;;

    15fc:	8b 92 2f 33                                     	sd.weqz \$r10\? \[\$r11\] = \$r11;;

    1600:	0b f0 31 33                                     	sd -64 \(0xffffffc0\)\[\$r11\] = \$r12;;

    1604:	0c 00 35 b3 00 00 80 1f                         	sd -8589934592 \(0xfffffffe00000000\)\[\$r12\] = \$r13;;

    160c:	0d 07 c0 0f                                     	set \$mmc = \$r13;;

    1610:	ce 00 c0 0f                                     	set \$ra = \$r14;;

    1614:	4e 00 c0 0f                                     	set \$ps = \$r14;;

    1618:	4f 00 c0 0f                                     	set \$ps = \$r15;;

    161c:	d0 e3 43 31                                     	sh \$r15\[\$r16\] = \$r16;;

    1620:	d0 ff 45 b1 ff ff ff 9f ff ff ff 18             	sh 2305843009213693951 \(0x1fffffffffffffff\)\[\$r16\] = \$r17;;

    162c:	51 a4 4b b1 00 00 00 98 00 00 80 1f             	sh.wltz \$r17\? -1125899906842624 \(0xfffc000000000000\)\[\$r17\] = \$r18;;

    1638:	92 b4 4f b1 00 00 80 1f                         	sh.wgez \$r18\? -8388608 \(0xff800000\)\[\$r18\] = \$r19;;

    1640:	d3 c4 53 31                                     	sh.wlez \$r19\? \[\$r19\] = \$r20;;

    1644:	14 f0 51 31                                     	sh -64 \(0xffffffc0\)\[\$r20\] = \$r20;;

    1648:	15 00 55 b1 00 00 80 1f                         	sh -8589934592 \(0xfffffffe00000000\)\[\$r21\] = \$r21;;

    1650:	00 00 a4 0f                                     	sleep;;

    1654:	96 f5 56 79                                     	sllbos \$r21 = \$r22, \$r22;;

    1658:	d7 e1 5a 79                                     	sllbos \$r22 = \$r23, 7 \(0x7\);;

    165c:	17 66 5e 79                                     	slld \$r23 = \$r23, \$r24;;

    1660:	d8 21 62 79                                     	slld \$r24 = \$r24, 7 \(0x7\);;

    1664:	59 96 66 79                                     	sllhqs \$r25 = \$r25, \$r25;;

    1668:	da 51 6a 79                                     	sllhqs \$r26 = \$r26, 7 \(0x7\);;

    166c:	db 86 6a 79                                     	sllwps \$r26 = \$r27, \$r27;;

    1670:	dc 41 6e 79                                     	sllwps \$r27 = \$r28, 7 \(0x7\);;

    1674:	5c 77 72 79                                     	sllw \$r28 = \$r28, \$r29;;

    1678:	dd 31 76 79                                     	sllw \$r29 = \$r29, 7 \(0x7\);;

    167c:	9e f7 7a 7c                                     	slsbos \$r30 = \$r30, \$r30;;

    1680:	df e1 7e 7c                                     	slsbos \$r31 = \$r31, 7 \(0x7\);;

    1684:	20 68 7e 7c                                     	slsd \$r31 = \$r32, \$r32;;

    1688:	e1 21 82 7c                                     	slsd \$r32 = \$r33, 7 \(0x7\);;

    168c:	a1 98 86 7c                                     	slshqs \$r33 = \$r33, \$r34;;

    1690:	e2 51 8a 7c                                     	slshqs \$r34 = \$r34, 7 \(0x7\);;

    1694:	e3 88 8e 7c                                     	slswps \$r35 = \$r35, \$r35;;

    1698:	e4 41 92 7c                                     	slswps \$r36 = \$r36, 7 \(0x7\);;

    169c:	65 79 92 7c                                     	slsw \$r36 = \$r37, \$r37;;

    16a0:	e6 31 96 7c                                     	slsw \$r37 = \$r38, 7 \(0x7\);;

    16a4:	e6 f9 9a 7d                                     	slusbos \$r38 = \$r38, \$r39;;

    16a8:	e7 e1 9e 7d                                     	slusbos \$r39 = \$r39, 7 \(0x7\);;

    16ac:	28 6a a2 7d                                     	slusd \$r40 = \$r40, \$r40;;

    16b0:	e9 21 a6 7d                                     	slusd \$r41 = \$r41, 7 \(0x7\);;

    16b4:	aa 9a a6 7d                                     	slushqs \$r41 = \$r42, \$r42;;

    16b8:	eb 51 aa 7d                                     	slushqs \$r42 = \$r43, 7 \(0x7\);;

    16bc:	2b 8b ae 7d                                     	sluswps \$r43 = \$r43, \$r44;;

    16c0:	ec 41 b2 7d                                     	sluswps \$r44 = \$r44, 7 \(0x7\);;

    16c4:	6d 7b b6 7d                                     	slusw \$r45 = \$r45, \$r45;;

    16c8:	ee 31 ba 7d                                     	slusw \$r46 = \$r46, 7 \(0x7\);;

    16cc:	af fb b7 34                                     	so.xs \$r46\[\$r47\] = \$r44r45r46r47;;

    16d0:	ef ff c5 b4 ff ff ff 9f ff ff ff 18             	so 2305843009213693951 \(0x1fffffffffffffff\)\[\$r47\] = \$r48r49r50r51;;

    16dc:	f0 3b df b4 00 00 00 98 00 00 80 1f             	so.u3 \$r47\? -1125899906842624 \(0xfffc000000000000\)\[\$r48\] = \$r52r53r54r55;;

    16e8:	30 4c ef b4 00 00 80 1f                         	so.mt \$r48\? -8388608 \(0xff800000\)\[\$r48\] = \$r56r57r58r59;;

    16f0:	71 5c ff 34                                     	so.mf \$r49\? \[\$r49\] = \$r60r61r62r63;;

    16f4:	72 dc 07 b4 00 00 00 98 00 00 80 1f             	so.wgtz \$r49\? -1125899906842624 \(0xfffc000000000000\)\[\$r50\] = \$r0r1r2r3;;

    1700:	b2 0c 17 b4 00 00 80 1f                         	so.dnez \$r50\? -8388608 \(0xff800000\)\[\$r50\] = \$r4r5r6r7;;

    1708:	f3 1c 27 34                                     	so.deqz \$r51\? \[\$r51\] = \$r8r9r10r11;;

    170c:	33 f0 35 34                                     	so -64 \(0xffffffc0\)\[\$r51\] = \$r12r13r14r15;;

    1710:	34 00 45 b4 00 00 80 1f                         	so -8589934592 \(0xfffffffe00000000\)\[\$r52\] = \$r16r17r18r19;;

    1718:	34 ed a3 34                                     	sq \$r52\[\$r52\] = \$r40r41;;

    171c:	f5 ff a9 b4 ff ff ff 9f ff ff ff 18             	sq 2305843009213693951 \(0x1fffffffffffffff\)\[\$r53\] = \$r42r43;;

    1728:	75 2d ab b4 00 00 00 98 00 00 80 1f             	sq.dltz \$r53\? -1125899906842624 \(0xfffc000000000000\)\[\$r53\] = \$r42r43;;

    1734:	b6 3d b3 b4 00 00 80 1f                         	sq.dgez \$r54\? -8388608 \(0xff800000\)\[\$r54\] = \$r44r45;;

    173c:	b7 4d b3 34                                     	sq.dlez \$r54\? \[\$r55\] = \$r44r45;;

    1740:	37 f0 b9 34                                     	sq -64 \(0xffffffc0\)\[\$r55\] = \$r46r47;;

    1744:	37 00 b9 b4 00 00 80 1f                         	sq -8589934592 \(0xfffffffe00000000\)\[\$r55\] = \$r46r47;;

    174c:	38 fe e2 7a                                     	srabos \$r56 = \$r56, \$r56;;

    1750:	f9 e1 e6 7a                                     	srabos \$r57 = \$r57, 7 \(0x7\);;

    1754:	ba 6e e6 7a                                     	srad \$r57 = \$r58, \$r58;;

    1758:	fb 21 ea 7a                                     	srad \$r58 = \$r59, 7 \(0x7\);;

    175c:	3b 9f ee 7a                                     	srahqs \$r59 = \$r59, \$r60;;

    1760:	fc 51 f2 7a                                     	srahqs \$r60 = \$r60, 7 \(0x7\);;

    1764:	7d 8f f6 7a                                     	srawps \$r61 = \$r61, \$r61;;

    1768:	fe 41 fa 7a                                     	srawps \$r62 = \$r62, 7 \(0x7\);;

    176c:	ff 7f fa 7a                                     	sraw \$r62 = \$r63, \$r63;;

    1770:	c0 31 fe 7a                                     	sraw \$r63 = \$r0, 7 \(0x7\);;

    1774:	40 f0 02 7b                                     	srlbos \$r0 = \$r0, \$r1;;

    1778:	c1 e1 06 7b                                     	srlbos \$r1 = \$r1, 7 \(0x7\);;

    177c:	82 60 0a 7b                                     	srld \$r2 = \$r2, \$r2;;

    1780:	c3 21 0e 7b                                     	srld \$r3 = \$r3, 7 \(0x7\);;

    1784:	04 91 0e 7b                                     	srlhqs \$r3 = \$r4, \$r4;;

    1788:	c5 51 12 7b                                     	srlhqs \$r4 = \$r5, 7 \(0x7\);;

    178c:	85 81 16 7b                                     	srlwps \$r5 = \$r5, \$r6;;

    1790:	c6 41 1a 7b                                     	srlwps \$r6 = \$r6, 7 \(0x7\);;

    1794:	c7 71 1e 7b                                     	srlw \$r7 = \$r7, \$r7;;

    1798:	c8 31 22 7b                                     	srlw \$r8 = \$r8, 7 \(0x7\);;

    179c:	49 f2 22 78                                     	srsbos \$r8 = \$r9, \$r9;;

    17a0:	ca e1 26 78                                     	srsbos \$r9 = \$r10, 7 \(0x7\);;

    17a4:	ca 62 2a 78                                     	srsd \$r10 = \$r10, \$r11;;

    17a8:	cb 21 2e 78                                     	srsd \$r11 = \$r11, 7 \(0x7\);;

    17ac:	4c 93 32 78                                     	srshqs \$r12 = \$r12, \$r13;;

    17b0:	ce 51 36 78                                     	srshqs \$r13 = \$r14, 7 \(0x7\);;

    17b4:	cf 83 3a 78                                     	srswps \$r14 = \$r15, \$r15;;

    17b8:	d0 41 42 78                                     	srswps \$r16 = \$r16, 7 \(0x7\);;

    17bc:	51 74 42 78                                     	srsw \$r16 = \$r17, \$r17;;

    17c0:	d2 31 46 78                                     	srsw \$r17 = \$r18, 7 \(0x7\);;

    17c4:	00 00 a8 0f                                     	stop;;

    17c8:	d2 a4 49 7e                                     	stsud \$r18 = \$r18, \$r19;;

    17cc:	d3 a7 4d fe ff ff ff 00                         	stsud \$r19 = \$r19, 536870911 \(0x1fffffff\);;

    17d4:	14 f5 51 7e                                     	stsuhq \$r20 = \$r20, \$r20;;

    17d8:	d5 ff 55 fe ff ff ff 00                         	stsuhq \$r21 = \$r21, 536870911 \(0x1fffffff\).@;;

    17e0:	96 e5 55 7e                                     	stsuwp \$r21 = \$r22, \$r22;;

    17e4:	d7 e7 59 fe ff ff ff 00                         	stsuwp \$r22 = \$r23, 536870911 \(0x1fffffff\);;

    17ec:	17 b6 5d 7e                                     	stsuw \$r23 = \$r23, \$r24;;

    17f0:	d8 b7 61 fe ff ff ff 00                         	stsuw \$r24 = \$r24, 536870911 \(0x1fffffff\);;

    17f8:	59 f6 67 32                                     	sw.xs \$r25\[\$r25\] = \$r25;;

    17fc:	da ff 69 b2 ff ff ff 9f ff ff ff 18             	sw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r26\] = \$r26;;

    1808:	9b 56 6f b2 00 00 00 98 00 00 80 1f             	sw.dgtz \$r26\? -1125899906842624 \(0xfffc000000000000\)\[\$r27\] = \$r27;;

    1814:	dc 66 73 b2 00 00 80 1f                         	sw.odd \$r27\? -8388608 \(0xff800000\)\[\$r28\] = \$r28;;

    181c:	1d 77 77 32                                     	sw.even \$r28\? \[\$r29\] = \$r29;;

    1820:	1d f0 79 32                                     	sw -64 \(0xffffffc0\)\[\$r29\] = \$r30;;

    1824:	1e 00 79 b2 00 00 80 1f                         	sw -8589934592 \(0xfffffffe00000000\)\[\$r30\] = \$r30;;

    182c:	1f 70 7f 68                                     	sxbd \$r31 = \$r31;;

    1830:	20 f0 7f 68                                     	sxhd \$r31 = \$r32;;

    1834:	20 50 82 76                                     	sxlbhq \$r32 = \$r32;;

    1838:	21 40 86 76                                     	sxlhwp \$r33 = \$r33;;

    183c:	22 50 86 77                                     	sxmbhq \$r33 = \$r34;;

    1840:	22 40 8a 77                                     	sxmhwp \$r34 = \$r34;;

    1844:	23 f0 8f 69                                     	sxwd \$r35 = \$r35;;

    1848:	23 00 b4 0f                                     	syncgroup \$r35;;

    184c:	00 00 8c 0f                                     	tlbdinval;;

    1850:	00 00 90 0f                                     	tlbiinval;;

    1854:	00 00 84 0f                                     	tlbprobe;;

    1858:	00 00 80 0f                                     	tlbread;;

    185c:	00 00 88 0f                                     	tlbwrite;;

    1860:	24 00 b0 0f                                     	waitit \$r36;;

    1864:	64 00 b8 0f                                     	wfxl \$ps, \$r36;;

    1868:	a4 00 b8 0f                                     	wfxl \$pcr, \$r36;;

    186c:	65 00 b8 0f                                     	wfxl \$ps, \$r37;;

    1870:	65 00 bc 0f                                     	wfxm \$ps, \$r37;;

    1874:	a5 00 bc 0f                                     	wfxm \$pcr, \$r37;;

    1878:	a6 00 bc 0f                                     	wfxm \$pcr, \$r38;;

    187c:	26 80 5c 00                                     	xaccesso \$r20r21r22r23 = \$a0..a1, \$r38;;

    1880:	66 80 6c 00                                     	xaccesso \$r24r25r26r27 = \$a0..a3, \$r38;;

    1884:	e7 80 7c 00                                     	xaccesso \$r28r29r30r31 = \$a0..a7, \$r39;;

    1888:	e7 81 8c 00                                     	xaccesso \$r32r33r34r35 = \$a0..a15, \$r39;;

    188c:	e7 83 9c 00                                     	xaccesso \$r36r37r38r39 = \$a0..a31, \$r39;;

    1890:	e8 87 ac 00                                     	xaccesso \$r40r41r42r43 = \$a0..a63, \$r40;;

    1894:	a8 80 00 01                                     	xaligno \$a0 = \$a2..a3, \$r40;;

    1898:	68 81 00 01                                     	xaligno \$a0 = \$a4..a7, \$r40;;

    189c:	e9 82 00 01                                     	xaligno \$a0 = \$a8..a15, \$r41;;

    18a0:	e9 85 04 01                                     	xaligno \$a1 = \$a16..a31, \$r41;;

    18a4:	e9 8b 04 01                                     	xaligno \$a1 = \$a32..a63, \$r41;;

    18a8:	ea 87 04 01                                     	xaligno \$a1 = \$a0..a63, \$r42;;

    18ac:	82 60 0b 07                                     	xandno \$a2 = \$a2, \$a2;;

    18b0:	c3 00 0f 07                                     	xando \$a3 = \$a3, \$a3;;

    18b4:	04 01 13 05                                     	xclampwo \$a4 = \$a4, \$a4;;

    18b8:	40 01 14 01                                     	xcopyo \$a5 = \$a5;;

    18bc:	00 01 05 07                                     	xcopyv \$a0a1a2a3 = \$a4a5a6a7;;

    18c0:	00 00 04 07                                     	xcopyx \$a0a1 = \$a0a1;;

    18c4:	46 c1 0a 04                                     	xffma44hw.rna.s \$a2a3 = \$a5, \$a6;;

    18c8:	87 01 1a 05                                     	xfmaxhx \$a6 = \$a6, \$a7;;

    18cc:	c8 01 1d 05                                     	xfminhx \$a7 = \$a7, \$a8;;

    18d0:	04 51 0b 04                                     	xfmma484hw.rnz \$a2a3 = \$a4a5, \$a4a5;;

    18d4:	80 e1 20 05                                     	xfnarrow44wh.ro.s \$a8 = \$a6a7;;

    18d8:	6a 72 23 01                                     	xfscalewo \$a8 = \$a9, \$r42;;

    18dc:	89 72 27 07                                     	xiorno \$a9 = \$a9, \$a10;;

    18e0:	ca 22 2b 07                                     	xioro \$a10 = \$a10, \$a11;;

    18e4:	ab ea 23 2a                                     	xlo.u.q0 \$a8a9a10a11 = \$r42\[\$r43\];;

    18e8:	eb fa 2f 23                                     	xlo.us.xs \$a11 = \$r43\[\$r43\];;

    18ec:	2c 0b 37 a8 00 00 00 98 00 00 80 1f             	xlo.dnez.q1 \$r44\? \$a12a13a14a15 = -1125899906842624 \(0xfffc000000000000\)\[\$r44\];;

    18f8:	2d 1b 4b a9 00 00 80 1f                         	xlo.s.deqz.q2 \$r44\? \$a16a17a18a19 = -8388608 \(0xff800000\)\[\$r45\];;

    1900:	6d 2b 5f 2a                                     	xlo.u.wnez.q3 \$r45\? \$a20a21a22a23 = \[\$r45\];;

    1904:	ae 3b 2f a3 00 00 00 98 00 00 80 1f             	xlo.us.weqz \$r46\? \$a11 = -1125899906842624 \(0xfffc000000000000\)\[\$r46\];;

    1910:	af 4b 33 a0 00 00 80 1f                         	xlo.mt \$r46\? \$a12 = -8388608 \(0xff800000\)\[\$r47\];;

    1918:	ef 5b 33 21                                     	xlo.s.mf \$r47\? \$a12 = \[\$r47\];;

    191c:	30 0c 13 ae 00 00 00 98 00 00 80 1f             	xlo.u \$a4..a5, \$r48 = -1125899906842624 \(0xfffc000000000000\)\[\$r48\];;

    1928:	31 1c 1b af 00 00 80 1f                         	xlo.us.q \$a6..a7, \$r48 = -8388608 \(0xff800000\)\[\$r49\];;

    1930:	71 2c 23 2c                                     	xlo.d \$a8..a9, \$r49 = \[\$r49\];;

    1934:	b2 3c 27 ad 00 00 00 98 00 00 80 1f             	xlo.s.w \$a8..a11, \$r50 = -1125899906842624 \(0xfffc000000000000\)\[\$r50\];;

    1940:	b3 4c 37 ae 00 00 80 1f                         	xlo.u.h \$a12..a15, \$r50 = -8388608 \(0xff800000\)\[\$r51\];;

    1948:	f3 5c 47 2f                                     	xlo.us.b \$a16..a19, \$r51 = \[\$r51\];;

    194c:	34 0d 4f ac 00 00 00 98 00 00 80 1f             	xlo \$a16..a23, \$r52 = -1125899906842624 \(0xfffc000000000000\)\[\$r52\];;

    1958:	35 1d 6f ad 00 00 80 1f                         	xlo.s.q \$a24..a31, \$r52 = -8388608 \(0xff800000\)\[\$r53\];;

    1960:	75 2d 8f 2e                                     	xlo.u.d \$a32..a39, \$r53 = \[\$r53\];;

    1964:	b6 3d 9f af 00 00 00 98 00 00 80 1f             	xlo.us.w \$a32..a47, \$r54 = -1125899906842624 \(0xfffc000000000000\)\[\$r54\];;

    1970:	b7 4d df ac 00 00 80 1f                         	xlo.h \$a48..a63, \$r54 = -8388608 \(0xff800000\)\[\$r55\];;

    1978:	f7 5d 1f 2d                                     	xlo.s.b \$a0..a15, \$r55 = \[\$r55\];;

    197c:	38 0e 3f ae 00 00 00 98 00 00 80 1f             	xlo.u \$a0..a31, \$r56 = -1125899906842624 \(0xfffc000000000000\)\[\$r56\];;

    1988:	39 1e bf af 00 00 80 1f                         	xlo.us.q \$a32..a63, \$r56 = -8388608 \(0xff800000\)\[\$r57\];;

    1990:	79 2e 3f 2c                                     	xlo.d \$a0..a31, \$r57 = \[\$r57\];;

    1994:	ba 3e 7f ad 00 00 00 98 00 00 80 1f             	xlo.s.w \$a0..a63, \$r58 = -1125899906842624 \(0xfffc000000000000\)\[\$r58\];;

    19a0:	bb 4e 7f ae 00 00 80 1f                         	xlo.u.h \$a0..a63, \$r58 = -8388608 \(0xff800000\)\[\$r59\];;

    19a8:	fb 5e 7f 2f                                     	xlo.us.b \$a0..a63, \$r59 = \[\$r59\];;

    19ac:	fc ff 61 a8 ff ff ff 9f ff ff ff 18             	xlo.q0 \$a24a25a26a27 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r60\];;

    19b8:	3c f0 75 29                                     	xlo.s.q1 \$a28a29a30a31 = -64 \(0xffffffc0\)\[\$r60\];;

    19bc:	3c 00 89 aa 00 00 80 1f                         	xlo.u.q2 \$a32a33a34a35 = -8589934592 \(0xfffffffe00000000\)\[\$r60\];;

    19c4:	fd ff 31 a3 ff ff ff 9f ff ff ff 18             	xlo.us \$a12 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r61\];;

    19d0:	3d f0 35 20                                     	xlo \$a13 = -64 \(0xffffffc0\)\[\$r61\];;

    19d4:	3d 00 35 a1 00 00 80 1f                         	xlo.s \$a13 = -8589934592 \(0xfffffffe00000000\)\[\$r61\];;

    19dc:	4e 03 18 03                                     	xmadd44bw0 \$a6a7 = \$a13, \$a14;;

    19e0:	8e 03 24 03                                     	xmadd44bw1 \$a8a9 = \$a14, \$a14;;

    19e4:	cf 83 3c 04                                     	xmaddifwo.rn.s \$a15 = \$a15, \$a15;;

    19e8:	10 04 22 03                                     	xmaddsu44bw0 \$a8a9 = \$a16, \$a16;;

    19ec:	11 04 2e 03                                     	xmaddsu44bw1 \$a10a11 = \$a16, \$a17;;

    19f0:	51 04 29 03                                     	xmaddu44bw0 \$a10a11 = \$a17, \$a17;;

    19f4:	92 04 35 03                                     	xmaddu44bw1 \$a12a13 = \$a18, \$a18;;

    19f8:	8e 03 30 02                                     	xmma4164bw \$a12a13 = \$a14a15, \$a14a15;;

    19fc:	93 04 44 02                                     	xmma484bw \$a16a17 = \$a18, \$a19;;

    1a00:	92 04 42 02                                     	xmmasu4164bw \$a16a17 = \$a18a19, \$a18a19;;

    1a04:	d3 04 56 02                                     	xmmasu484bw \$a20a21 = \$a19, \$a19;;

    1a08:	96 05 51 02                                     	xmmau4164bw \$a20a21 = \$a22a23, \$a22a23;;

    1a0c:	14 05 65 02                                     	xmmau484bw \$a24a25 = \$a20, \$a20;;

    1a10:	9a 06 63 02                                     	xmmaus4164bw \$a24a25 = \$a26a27, \$a26a27;;

    1a14:	15 05 77 02                                     	xmmaus484bw \$a28a29 = \$a20, \$a21;;

    1a18:	00 c0 f8 00                                     	xmovefd \$r62 = \$a0_x;;

    1a1c:	40 85 b4 00                                     	xmovefo \$r44r45r46r47 = \$a21;;

    1a20:	00 00 c4 00                                     	xmovefq \$r48r49 = \$a0_lo;;

    1a24:	3e e0 03 73                                     	xmovetd \$a0_t = \$r62;;

    1a28:	3e e0 03 70                                     	xmovetd \$a0_x = \$r62;;

    1a2c:	3f e0 03 71                                     	xmovetd \$a0_y = \$r63;;

    1a30:	3f e0 03 72                                     	xmovetd \$a0_z = \$r63;;

    1a34:	3f e0 03 74                                     	xmovetq \$a0_lo = \$r63, \$r0;;

    1a38:	00 e0 03 75                                     	xmovetq \$a0_hi = \$r0, \$r0;;

    1a3c:	96 15 55 04                                     	xmsbfifwo.ru \$a21 = \$a22, \$a22;;

    1a40:	00 1a 95 07                                     	xcopyv.td \$a36a37a38a39 = \$a40a41a42a43;;

    1a44:	d7 15 5b 07                                     	xnando \$a22 = \$a23, \$a23;;

    1a48:	18 36 5f 07                                     	xnioro \$a23 = \$a24, \$a24;;

    1a4c:	59 36 63 07                                     	xnioro \$a24 = \$a25, \$a25;;

    1a50:	9a 56 67 07                                     	xnxoro \$a25 = \$a26, \$a26;;

    1a54:	c1 ff 04 ec ff ff ff 87 ff ff ff 00             	xord \$r1 = \$r1, 2305843009213693951 \(0x1fffffffffffffff\);;

    1a60:	82 00 05 7c                                     	xord \$r1 = \$r2, \$r2;;

    1a64:	03 f0 08 6c                                     	xord \$r2 = \$r3, -64 \(0xffffffc0\);;

    1a68:	03 00 0c ec 00 00 80 07                         	xord \$r3 = \$r3, -8589934592 \(0xfffffffe00000000\);;

    1a70:	db 76 6b 07                                     	xiorno \$a26 = \$a27, \$a27;;

    1a74:	1c 27 6f 07                                     	xioro \$a27 = \$a28, \$a28;;

    1a78:	84 c0 13 72                                     	xorrbod \$r4 = \$r4;;

    1a7c:	45 c0 13 72                                     	xorrhqd \$r4 = \$r5;;

    1a80:	05 c0 17 72                                     	xorrwpd \$r5 = \$r5;;

    1a84:	86 11 19 7c                                     	xorw \$r6 = \$r6, \$r6;;

    1a88:	07 f0 1c 7c                                     	xorw \$r7 = \$r7, -64 \(0xffffffc0\);;

    1a8c:	08 00 1c fc 00 00 80 07                         	xorw \$r7 = \$r8, -8589934592 \(0xfffffffe00000000\);;

    1a94:	00 e0 73 78                                     	xrecvo.f \$a28;;

    1a98:	5d e7 76 07                                     	xsbmm8dq \$a29 = \$a29, \$a29;;

    1a9c:	9e f7 7a 07                                     	xsbmmt8dq \$a30 = \$a30, \$a30;;

    1aa0:	c0 e7 03 77                                     	xsendo.b \$a31;;

    1aa4:	c0 e7 7f 7e                                     	xsendrecvo.f.b \$a31, \$a31;;

    1aa8:	08 e2 83 35                                     	xso \$r8\[\$r8\] = \$a32;;

    1aac:	c9 ff 81 b5 ff ff ff 9f ff ff ff 18             	xso 2305843009213693951 \(0x1fffffffffffffff\)\[\$r9\] = \$a32;;

    1ab8:	49 62 83 b5 00 00 00 98 00 00 80 1f             	xso.mtc \$r9\? -1125899906842624 \(0xfffc000000000000\)\[\$r9\] = \$a32;;

    1ac4:	8a 72 87 b5 00 00 80 1f                         	xso.mfc \$r10\? -8388608 \(0xff800000\)\[\$r10\] = \$a33;;

    1acc:	8b 02 87 35                                     	xso.dnez \$r10\? \[\$r11\] = \$a33;;

    1ad0:	0b f0 85 35                                     	xso -64 \(0xffffffc0\)\[\$r11\] = \$a33;;

    1ad4:	0b 00 89 b5 00 00 80 1f                         	xso -8589934592 \(0xfffffffe00000000\)\[\$r11\] = \$a34;;

    1adc:	c0 ff 89 ee ff ff ff 87 ff ff ff 00             	xsplatdo \$a34 = 2305843009213693951 \(0x1fffffffffffffff\);;

    1ae8:	3c 00 89 ee 00 00 00 00                         	xsplatdo \$a34 = -549755813888 \(0xffffff8000000000\);;

    1af0:	00 f0 8d 6e                                     	xsplatdo \$a35 = -4096 \(0xfffff000\);;

    1af4:	c0 18 b1 07                                     	xsplatov.td \$a44a45a46a47 = \$a35;;

    1af8:	c0 18 70 07                                     	xsplatox.zd \$a28a29 = \$a35;;

    1afc:	00 09 c1 06                                     	xsx48bw \$a48a49a50a51 = \$a36;;

    1b00:	00 0d 90 06                                     	xtrunc48wb \$a36 = \$a52a53a54a55;;

    1b04:	65 49 93 07                                     	xxoro \$a36 = \$a37, \$a37;;

    1b08:	40 09 e5 06                                     	xzx48bw \$a56a57a58a59 = \$a37;;

    1b0c:	cc 3f 30 78                                     	zxbd \$r12 = \$r12;;

    1b10:	0d f0 37 64                                     	zxhd \$r13 = \$r13;;

    1b14:	0e 50 3a 74                                     	zxlbhq \$r14 = \$r14;;

    1b18:	0f 40 3e 74                                     	zxlhwp \$r15 = \$r15;;

    1b1c:	10 50 42 75                                     	zxmbhq \$r16 = \$r16;;

    1b20:	11 40 42 75                                     	zxmhwp \$r16 = \$r17;;

    1b24:	d1 ff 44 78                                     	zxwd \$r17 = \$r17;;


