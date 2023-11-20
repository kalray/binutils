#as: -march=kv3-2
#objdump: -d
.*\/kv3-2-insns-64.o:     file format elf64-kvx

Disassembly of section .text:

0000000000000000 <main>:
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

     608:	00 00 80 1f                                     	call fffffffffe000608 <main\+0xfffffffffe000608>;;

     60c:	04 20 0e 72                                     	cbsd \$r3 = \$r4;;

     610:	04 40 12 72                                     	cbswp \$r4 = \$r4;;

     614:	05 30 16 72                                     	cbsw \$r5 = \$r5;;

     618:	05 00 78 08                                     	cb.dnez \$r5\? ffffffffffff8618 <main\+0xffffffffffff8618>;;

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

     7f4:	ff ff fc ec ff ff ff 87 ff ff ff 00             	eord \$r63 = \$r63, 2305843009213693951 \(0x1fffffffffffffff\);;

     800:	00 00 fd 7c                                     	eord \$r63 = \$r0, \$r0;;

     804:	01 f0 00 6c                                     	eord \$r0 = \$r1, -64 \(0xffffffc0\);;

     808:	01 00 04 ec 00 00 80 07                         	eord \$r1 = \$r1, -8589934592 \(0xfffffffe00000000\);;

     810:	82 c0 0b 72                                     	eorrbod \$r2 = \$r2;;

     814:	43 c0 0b 72                                     	eorrhqd \$r2 = \$r3;;

     818:	03 c0 0f 72                                     	eorrwpd \$r3 = \$r3;;

     81c:	04 11 11 7c                                     	eorw \$r4 = \$r4, \$r4;;

     820:	05 f0 14 7c                                     	eorw \$r5 = \$r5, -64 \(0xffffffc0\);;

     824:	06 00 14 fc 00 00 80 07                         	eorw \$r5 = \$r6, -8589934592 \(0xfffffffe00000000\);;

     82c:	00 00 00 00                                     	errop;;

     830:	c6 71 1b 68                                     	extfs \$r6 = \$r6, 7 \(0x7\), 7 \(0x7\);;

     834:	c7 71 1f 64                                     	extfz \$r7 = \$r7, 7 \(0x7\), 7 \(0x7\);;

     838:	08 20 1f 71                                     	fabsd \$r7 = \$r8;;

     83c:	08 20 23 77                                     	fabshq \$r8 = \$r8;;

     840:	09 20 27 75                                     	fabswp \$r9 = \$r9;;

     844:	0a 20 27 73                                     	fabsw \$r9 = \$r10;;

     848:	1c 07 6b 5d                                     	fadddc.c.rn \$r26r27 = \$r28r29, \$r28r29;;

     84c:	1e 98 7b 5c                                     	fadddp.ru.s \$r30r31 = \$r30r31, \$r32r33;;

     850:	a2 28 83 5c                                     	fadddp.rd \$r32r33 = \$r34r35, \$r34r35;;

     854:	ca b2 2a 50                                     	faddd.rz.s \$r10 = \$r10, \$r11;;

     858:	a4 49 97 56                                     	faddho.rna \$r36r37 = \$r36r37, \$r38r39;;

     85c:	0b d3 2e 52                                     	faddhq.rnz.s \$r11 = \$r11, \$r12;;

     860:	4d 63 32 53                                     	faddwc.c.ro \$r12 = \$r13, \$r13;;

     864:	28 fa 9f 59                                     	faddwcp.c.s \$r38r39 = \$r40r41, \$r40r41;;

     868:	2a 0b af 58                                     	faddwq.rn \$r42r43 = \$r42r43, \$r44r45;;

     86c:	ce 93 3a 51                                     	faddwp.ru.s \$r14 = \$r14, \$r15;;

     870:	10 24 3e 51                                     	faddwp.rd \$r15 = \$r16, \$r16;;

     874:	ae bb b7 58                                     	faddwq.rz.s \$r44r45 = \$r46r47, \$r46r47;;

     878:	51 44 42 5c                                     	faddw.rna \$r16 = \$r17, \$r17;;

     87c:	30 58 47 71                                     	fcdivd.s \$r17 = \$r48r49;;

     880:	30 50 4b 75                                     	fcdivwp \$r18 = \$r48r49;;

     884:	32 58 4b 73                                     	fcdivw.s \$r18 = \$r50r51;;

     888:	d3 04 4b 78                                     	fcompd.one \$r18 = \$r19, \$r19;;

     88c:	d4 07 4f f9 ff ff ff 00                         	fcompd.ueq \$r19 = \$r20, 536870911 \(0x1fffffff\);;

     894:	54 95 53 7a                                     	fcompnd.oeq \$r20 = \$r20, \$r21;;

     898:	d5 97 57 fb ff ff ff 00                         	fcompnd.une \$r21 = \$r21, 536870911 \(0x1fffffff\);;

     8a0:	96 15 5b 7c                                     	fcompnhq.olt \$r22 = \$r22, \$r22;;

     8a4:	d7 17 5f fd ff ff ff 00                         	fcompnhq.uge \$r23 = \$r23, 536870911 \(0x1fffffff\);;

     8ac:	18 16 5f 76                                     	fcompnwp.oge \$r23 = \$r24, \$r24;;

     8b0:	d9 1f 63 f7 ff ff ff 00                         	fcompnwp.ult \$r24 = \$r25, 536870911 \(0x1fffffff\).@;;

     8b8:	99 96 67 70                                     	fcompnw.one \$r25 = \$r25, \$r26;;

     8bc:	da 97 6b f1 ff ff ff 00                         	fcompnw.ueq \$r26 = \$r26, 536870911 \(0x1fffffff\);;

     8c4:	db 06 6f 72                                     	fcompw.oeq \$r27 = \$r27, \$r27;;

     8c8:	dc 07 73 f3 ff ff ff 00                         	fcompw.une \$r28 = \$r28, 536870911 \(0x1fffffff\);;

     8d0:	34 5d cf 5c                                     	fdot2wdp.rnz \$r50r51 = \$r52r53, \$r52r53;;

     8d4:	5d e7 71 5d                                     	fdot2wd.ro.s \$r28 = \$r29, \$r29;;

     8d8:	36 7e df 5d                                     	fdot2wzp \$r54r55 = \$r54r55, \$r56r57;;

     8dc:	9e 87 75 5c                                     	fdot2w.rn.s \$r29 = \$r30, \$r30;;

     8e0:	00 00 fc 3c                                     	fence;;

     8e4:	b8 1e 7a 47                                     	ffdmaswp.ru \$r30 = \$r56r57, \$r58r59;;

     8e8:	14 a6 ea 4f                                     	ffdmaswq.rd.s \$r58r59 = \$r20r21r22r23, \$r24r25r26r27;;

     8ec:	df 37 7e 43                                     	ffdmasw.rz \$r31 = \$r31, \$r31;;

     8f0:	3c cf 81 42                                     	ffdmawp.rna.s \$r32 = \$r60r61, \$r60r61;;

     8f4:	1c 58 f9 46                                     	ffdmawq.rnz \$r62r63 = \$r28r29r30r31, \$r32r33r34r35;;

     8f8:	60 e8 81 40                                     	ffdmaw.ro.s \$r32 = \$r32, \$r33;;

     8fc:	3e 70 86 44                                     	ffdmdawp \$r33 = \$r62r63, \$r0r1;;

     900:	24 8a 02 4c                                     	ffdmdawq.rn.s \$r0r1 = \$r36r37r38r39, \$r40r41r42r43;;

     904:	a2 18 86 40                                     	ffdmdaw.ru \$r33 = \$r34, \$r34;;

     908:	82 a0 8a 46                                     	ffdmdswp.rd.s \$r34 = \$r2r3, \$r2r3;;

     90c:	2c 3c 12 4e                                     	ffdmdswq.rz \$r4r5 = \$r44r45r46r47, \$r48r49r50r51;;

     910:	e3 c8 8e 42                                     	ffdmdsw.rna.s \$r35 = \$r35, \$r35;;

     914:	84 51 92 45                                     	ffdmsawp.rnz \$r36 = \$r4r5, \$r6r7;;

     918:	34 ee 1a 4d                                     	ffdmsawq.ro.s \$r6r7 = \$r52r53r54r55, \$r56r57r58r59;;

     91c:	64 79 92 41                                     	ffdmsaw \$r36 = \$r36, \$r37;;

     920:	08 82 95 43                                     	ffdmswp.rn.s \$r37 = \$r8r9, \$r8r9;;

     924:	3c 10 29 47                                     	ffdmswq.ru \$r10r11 = \$r60r61r62r63, \$r0r1r2r3;;

     928:	a6 a9 95 41                                     	ffdmsw.rd.s \$r37 = \$r38, \$r38;;

     92c:	e7 39 98 44                                     	ffmad.rz \$r38 = \$r39, \$r39;;

     930:	0c c3 2b 5a                                     	ffmaho.rna.s \$r10r11 = \$r12r13, \$r12r13;;

     934:	28 5a 9d 53                                     	ffmahq.rnz \$r39 = \$r40, \$r40;;

     938:	68 ea 3b 51                                     	ffmahwq.ro.s \$r14r15 = \$r40, \$r41;;

     93c:	a9 7a a6 58                                     	ffmahw \$r41 = \$r41, \$r42;;

     940:	10 84 39 4c                                     	ffmawcp.rn.s \$r14r15 = \$r16r17, \$r16r17;;

     944:	ea 1a a9 49                                     	ffmawc.c.ru \$r42 = \$r42, \$r43;;

     948:	eb aa 4b 50                                     	ffmawdp.rd.s \$r18r19 = \$r43, \$r43;;

     94c:	2c 3b b1 51                                     	ffmawd.rz \$r44 = \$r44, \$r44;;

     950:	6d cb b4 42                                     	ffmawp.rna.s \$r45 = \$r45, \$r45;;

     954:	14 55 48 46                                     	ffmawq.rnz \$r18r19 = \$r20r21, \$r20r21;;

     958:	ae eb b8 40                                     	ffmaw.ro.s \$r46 = \$r46, \$r46;;

     95c:	ef 7b bc 45                                     	ffmsd \$r47 = \$r47, \$r47;;

     960:	16 86 5b 5b                                     	ffmsho.rn.s \$r22r23 = \$r22r23, \$r24r25;;

     964:	30 1c c1 57                                     	ffmshq.ru \$r48 = \$r48, \$r48;;

     968:	71 ac 63 53                                     	ffmshwq.rd.s \$r24r25 = \$r49, \$r49;;

     96c:	b2 3c c6 5a                                     	ffmshw.rz \$r49 = \$r50, \$r50;;

     970:	1a c7 69 4e                                     	ffmswcp.rna.s \$r26r27 = \$r26r27, \$r28r29;;

     974:	f3 5c c9 4b                                     	ffmswc.c.rnz \$r50 = \$r51, \$r51;;

     978:	33 ed 73 52                                     	ffmswdp.ro.s \$r28r29 = \$r51, \$r52;;

     97c:	74 7d d1 55                                     	ffmswd \$r52 = \$r52, \$r53;;

     980:	b5 8d d4 43                                     	ffmswp.rn.s \$r53 = \$r53, \$r54;;

     984:	1e 18 78 47                                     	ffmswq.ru \$r30r31 = \$r30r31, \$r32r33;;

     988:	f6 ad d8 41                                     	ffmsw.rd.s \$r54 = \$r54, \$r55;;

     98c:	f7 31 df 46                                     	fixedd.rz \$r55 = \$r55, 7 \(0x7\);;

     990:	f8 c1 e3 47                                     	fixedud.rna.s \$r56 = \$r56, 7 \(0x7\);;

     994:	f9 51 e3 4f                                     	fixeduwp.rnz \$r56 = \$r57, 7 \(0x7\);;

     998:	f9 e1 e7 4b                                     	fixeduw.ro.s \$r57 = \$r57, 7 \(0x7\);;

     99c:	fa 71 eb 4e                                     	fixedwp \$r58 = \$r58, 7 \(0x7\);;

     9a0:	fb 81 eb 4a                                     	fixedw.rn.s \$r58 = \$r59, 7 \(0x7\);;

     9a4:	fb 11 ef 44                                     	floatd.ru \$r59 = \$r59, 7 \(0x7\);;

     9a8:	fc a1 f3 45                                     	floatud.rd.s \$r60 = \$r60, 7 \(0x7\);;

     9ac:	fd 31 f3 4d                                     	floatuwp.rz \$r60 = \$r61, 7 \(0x7\);;

     9b0:	fd c1 f7 49                                     	floatuw.rna.s \$r61 = \$r61, 7 \(0x7\);;

     9b4:	fe 51 fb 4c                                     	floatwp.rnz \$r62 = \$r62, 7 \(0x7\);;

     9b8:	ff e1 fb 48                                     	floatw.ro.s \$r62 = \$r63, 7 \(0x7\);;

     9bc:	3f 80 ff 71                                     	fmaxd \$r63 = \$r63, \$r0;;

     9c0:	40 80 03 77                                     	fmaxhq \$r0 = \$r0, \$r1;;

     9c4:	81 80 07 75                                     	fmaxwp \$r1 = \$r1, \$r2;;

     9c8:	c2 80 0b 73                                     	fmaxw \$r2 = \$r2, \$r3;;

     9cc:	03 81 0f 70                                     	fmind \$r3 = \$r3, \$r4;;

     9d0:	44 81 13 76                                     	fminhq \$r4 = \$r4, \$r5;;

     9d4:	85 81 17 74                                     	fminwp \$r5 = \$r5, \$r6;;

     9d8:	c6 81 1b 72                                     	fminw \$r6 = \$r6, \$r7;;

     9dc:	c7 71 80 4c                                     	fmm212w \$r32r33 = \$r7, \$r7;;

     9e0:	22 89 8c 4c                                     	fmm222w.rn.s \$r34r35 = \$r34r35, \$r36r37;;

     9e4:	08 12 90 4e                                     	fmma212w.ru \$r36r37 = \$r8, \$r8;;

     9e8:	27 aa 9c 4e                                     	fmma222w.tn.rd.s \$r38r39 = \$r38r39, \$r40r41;;

     9ec:	48 32 a0 4f                                     	fmms212w.rz \$r40r41 = \$r8, \$r9;;

     9f0:	6a cb ac 4f                                     	fmms222w.nt.rna.s \$r42r43 = \$r42r43, \$r44r45;;

     9f4:	89 52 25 58                                     	fmuld.rnz \$r9 = \$r9, \$r10;;

     9f8:	ae eb b7 55                                     	fmulho.ro.s \$r44r45 = \$r46r47, \$r46r47;;

     9fc:	ca 72 29 5b                                     	fmulhq \$r10 = \$r10, \$r11;;

     a00:	cb 82 c7 51                                     	fmulhwq.rn.s \$r48r49 = \$r11, \$r11;;

     a04:	4c 13 32 5f                                     	fmulhw.ru \$r12 = \$r12, \$r13;;

     a08:	b2 ac c0 4a                                     	fmulwcp.rd.s \$r48r49 = \$r50r51, \$r50r51;;

     a0c:	8e 33 34 49                                     	fmulwc.c.rz \$r13 = \$r14, \$r14;;

     a10:	cf c3 d7 50                                     	fmulwdp.rna.s \$r52r53 = \$r15, \$r15;;

     a14:	10 54 41 59                                     	fmulwd.rnz \$r16 = \$r16, \$r16;;

     a18:	51 e4 45 5a                                     	fmulwp.ro.s \$r17 = \$r17, \$r17;;

     a1c:	b6 7d d7 5e                                     	fmulwq \$r52r53 = \$r54r55, \$r54r55;;

     a20:	92 84 4a 5e                                     	fmulw.rn.s \$r18 = \$r18, \$r18;;

     a24:	38 61 4f 7c                                     	fnarrowdwp.ru \$r19 = \$r56r57;;

     a28:	13 6a 4f 78                                     	fnarrowdw.rd.s \$r19 = \$r19;;

     a2c:	38 63 53 7e                                     	fnarrowwhq.rz \$r20 = \$r56r57;;

     a30:	14 6c 53 7a                                     	fnarrowwh.rna.s \$r20 = \$r20;;

     a34:	15 20 57 70                                     	fnegd \$r21 = \$r21;;

     a38:	16 20 57 76                                     	fneghq \$r21 = \$r22;;

     a3c:	16 20 5b 74                                     	fnegwp \$r22 = \$r22;;

     a40:	17 20 5f 72                                     	fnegw \$r23 = \$r23;;

     a44:	18 65 5f 72                                     	frecw.rnz \$r23 = \$r24;;

     a48:	18 6e 63 73                                     	frsrw.ro.s \$r24 = \$r24;;

     a4c:	3a 7f eb 5f                                     	fsbfdc.c \$r58r59 = \$r58r59, \$r60r61;;

     a50:	be 8f f3 5e                                     	fsbfdp.rn.s \$r60r61 = \$r62r63, \$r62r63;;

     a54:	80 10 03 5e                                     	fsbfdp.ru \$r0r1 = \$r0r1, \$r2r3;;

     a58:	59 a6 66 54                                     	fsbfd.rd.s \$r25 = \$r25, \$r25;;

     a5c:	04 31 0f 57                                     	fsbfho.rz \$r2r3 = \$r4r5, \$r4r5;;

     a60:	9a c6 6a 56                                     	fsbfhq.rna.s \$r26 = \$r26, \$r26;;

     a64:	db 56 6e 57                                     	fsbfwc.c.rnz \$r27 = \$r27, \$r27;;

     a68:	06 e2 1f 5b                                     	fsbfwcp.c.ro.s \$r6r7 = \$r6r7, \$r8r9;;

     a6c:	8a 72 27 5a                                     	fsbfwq \$r8r9 = \$r10r11, \$r10r11;;

     a70:	1c 87 72 55                                     	fsbfwp.rn.s \$r28 = \$r28, \$r28;;

     a74:	5d 17 76 55                                     	fsbfwp.ru \$r29 = \$r29, \$r29;;

     a78:	8c a3 37 5a                                     	fsbfwq.rd.s \$r12r13 = \$r12r13, \$r14r15;;

     a7c:	9e 37 7a 5d                                     	fsbfw.rz \$r30 = \$r30, \$r30;;

     a80:	0e 58 7f 70                                     	fsdivd.s \$r31 = \$r14r15;;

     a84:	10 50 7f 74                                     	fsdivwp \$r31 = \$r16r17;;

     a88:	10 58 7f 72                                     	fsdivw.s \$r31 = \$r16r17;;

     a8c:	20 40 83 70                                     	fsrecd \$r32 = \$r32;;

     a90:	21 48 83 74                                     	fsrecwp.s \$r32 = \$r33;;

     a94:	21 40 87 72                                     	fsrecw \$r33 = \$r33;;

     a98:	22 20 8b 78                                     	fsrsrd \$r34 = \$r34;;

     a9c:	23 20 8b 7c                                     	fsrsrwp \$r34 = \$r35;;

     aa0:	23 20 8f 7a                                     	fsrsrw \$r35 = \$r35;;

     aa4:	24 38 93 7c                                     	fwidenlhwp.s \$r36 = \$r36;;

     aa8:	25 30 93 7a                                     	fwidenlhw \$r36 = \$r37;;

     aac:	25 38 97 78                                     	fwidenlwd.s \$r37 = \$r37;;

     ab0:	26 30 9b 7d                                     	fwidenmhwp \$r38 = \$r38;;

     ab4:	27 38 9b 7b                                     	fwidenmhw.s \$r38 = \$r39;;

     ab8:	27 30 9f 79                                     	fwidenmwd \$r39 = \$r39;;

     abc:	28 00 c4 0f                                     	get \$r40 = \$pc;;

     ac0:	28 00 c4 0f                                     	get \$r40 = \$pc;;

     ac4:	00 00 80 17                                     	goto fffffffffe000ac4 <main\+0xfffffffffe000ac4>;;

     ac8:	29 ea 5e 3c                                     	i1invals \$r40\[\$r41\];;

     acc:	e9 ff 5c bc ff ff ff 9f ff ff ff 18             	i1invals 2305843009213693951 \(0x1fffffffffffffff\)\[\$r41\];;

     ad8:	29 f0 5c 3c                                     	i1invals -64 \(0xffffffc0\)\[\$r41\];;

     adc:	2a 00 5c bc 00 00 80 1f                         	i1invals -8589934592 \(0xfffffffe00000000\)\[\$r42\];;

     ae4:	00 00 cc 3c                                     	i1inval;;

     ae8:	2a 00 dc 0f                                     	icall \$r42;;

     aec:	2a 00 cc 0f                                     	iget \$r42;;

     af0:	2b 00 d8 0f                                     	igoto \$r43;;

     af4:	eb 71 af 60                                     	insf \$r43 = \$r43, 7 \(0x7\), 7 \(0x7\);;

     af8:	ec ff b0 ea ff ff ff 87 ff ff ff 00             	iord \$r44 = \$r44, 2305843009213693951 \(0x1fffffffffffffff\);;

     b04:	6d 0b b1 7a                                     	iord \$r44 = \$r45, \$r45;;

     b08:	2e f0 b4 6a                                     	iord \$r45 = \$r46, -64 \(0xffffffc0\);;

     b0c:	2e 00 b8 ea 00 00 80 07                         	iord \$r46 = \$r46, -8589934592 \(0xfffffffe00000000\);;

     b14:	ef ff bc ef ff ff ff 87 ff ff ff 00             	iornd \$r47 = \$r47, 2305843009213693951 \(0x1fffffffffffffff\);;

     b20:	30 0c bd 7f                                     	iornd \$r47 = \$r48, \$r48;;

     b24:	31 f0 c0 6f                                     	iornd \$r48 = \$r49, -64 \(0xffffffc0\);;

     b28:	31 00 c4 ef 00 00 80 07                         	iornd \$r49 = \$r49, -8589934592 \(0xfffffffe00000000\);;

     b30:	b2 1c c9 7f                                     	iornw \$r50 = \$r50, \$r50;;

     b34:	33 f0 cc 7f                                     	iornw \$r51 = \$r51, -64 \(0xffffffc0\);;

     b38:	34 00 cc ff 00 00 80 07                         	iornw \$r51 = \$r52, -8589934592 \(0xfffffffe00000000\);;

     b40:	b4 c0 d3 71                                     	iorrbod \$r52 = \$r52;;

     b44:	75 c0 d7 71                                     	iorrhqd \$r53 = \$r53;;

     b48:	36 c0 d7 71                                     	iorrwpd \$r53 = \$r54;;

     b4c:	f6 1d d9 7a                                     	iorw \$r54 = \$r54, \$r55;;

     b50:	37 f0 dc 7a                                     	iorw \$r55 = \$r55, -64 \(0xffffffc0\);;

     b54:	38 00 e0 fa 00 00 80 07                         	iorw \$r56 = \$r56, -8589934592 \(0xfffffffe00000000\);;

     b5c:	79 6e e2 70                                     	landd \$r56 = \$r57, \$r57;;

     b60:	ba 7e e6 70                                     	landw \$r57 = \$r58, \$r58;;

     b64:	fb 77 ea f0 ff ff ff 00                         	landw \$r58 = \$r59, 536870911 \(0x1fffffff\);;

     b6c:	fc fe ee 24                                     	lbs.xs \$r59 = \$r59\[\$r60\];;

     b70:	3d 5f f2 a5 00 00 00 98 00 00 80 1f             	lbs.s.dgtz \$r60\? \$r60 = -1125899906842624 \(0xfffc000000000000\)\[\$r61\];;

     b7c:	7e 6f f6 a6 00 00 80 1f                         	lbs.u.odd \$r61\? \$r61 = -8388608 \(0xff800000\)\[\$r62\];;

     b84:	bf 7f fa 27                                     	lbs.us.even \$r62\? \$r62 = \[\$r63\];;

     b88:	ff ff fc a4 ff ff ff 9f ff ff ff 18             	lbs \$r63 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r63\];;

     b94:	00 f0 00 25                                     	lbs.s \$r0 = -64 \(0xffffffc0\)\[\$r0\];;

     b98:	01 00 00 a6 00 00 80 1f                         	lbs.u \$r0 = -8589934592 \(0xfffffffe00000000\)\[\$r1\];;

     ba0:	42 e0 06 23                                     	lbz.us \$r1 = \$r1\[\$r2\];;

     ba4:	83 80 0a a0 00 00 00 98 00 00 80 1f             	lbz.wnez \$r2\? \$r2 = -1125899906842624 \(0xfffc000000000000\)\[\$r3\];;

     bb0:	c4 90 0e a1 00 00 80 1f                         	lbz.s.weqz \$r3\? \$r3 = -8388608 \(0xff800000\)\[\$r4\];;

     bb8:	05 a1 12 22                                     	lbz.u.wltz \$r4\? \$r4 = \[\$r5\];;

     bbc:	c5 ff 14 a3 ff ff ff 9f ff ff ff 18             	lbz.us \$r5 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r5\];;

     bc8:	06 f0 18 20                                     	lbz \$r6 = -64 \(0xffffffc0\)\[\$r6\];;

     bcc:	07 00 18 a1 00 00 80 1f                         	lbz.s \$r6 = -8589934592 \(0xfffffffe00000000\)\[\$r7\];;

     bd4:	c8 f1 1e 3a                                     	ld.u.xs \$r7 = \$r7\[\$r8\];;

     bd8:	09 b2 22 bb 00 00 00 98 00 00 80 1f             	ld.us.wgez \$r8\? \$r8 = -1125899906842624 \(0xfffc000000000000\)\[\$r9\];;

     be4:	4a c2 26 b8 00 00 80 1f                         	ld.wlez \$r9\? \$r9 = -8388608 \(0xff800000\)\[\$r10\];;

     bec:	8b d2 2a 39                                     	ld.s.wgtz \$r10\? \$r10 = \[\$r11\];;

     bf0:	cb ff 2c ba ff ff ff 9f ff ff ff 18             	ld.u \$r11 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r11\];;

     bfc:	0c f0 30 3b                                     	ld.us \$r12 = -64 \(0xffffffc0\)\[\$r12\];;

     c00:	0d 00 34 b8 00 00 80 1f                         	ld \$r13 = -8589934592 \(0xfffffffe00000000\)\[\$r13\];;

     c08:	8f e3 3a 2d                                     	lhs.s \$r14 = \$r14\[\$r15\];;

     c0c:	d0 03 42 ae 00 00 00 98 00 00 80 1f             	lhs.u.dnez \$r15\? \$r16 = -1125899906842624 \(0xfffc000000000000\)\[\$r16\];;

     c18:	11 14 46 af 00 00 80 1f                         	lhs.us.deqz \$r16\? \$r17 = -8388608 \(0xff800000\)\[\$r17\];;

     c20:	52 24 4a 2c                                     	lhs.dltz \$r17\? \$r18 = \[\$r18\];;

     c24:	d3 ff 48 ad ff ff ff 9f ff ff ff 18             	lhs.s \$r18 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r19\];;

     c30:	13 f0 4c 2e                                     	lhs.u \$r19 = -64 \(0xffffffc0\)\[\$r19\];;

     c34:	14 00 50 af 00 00 80 1f                         	lhs.us \$r20 = -8589934592 \(0xfffffffe00000000\)\[\$r20\];;

     c3c:	55 f5 52 28                                     	lhz.xs \$r20 = \$r21\[\$r21\];;

     c40:	56 35 5a a9 00 00 00 98 00 00 80 1f             	lhz.s.dgez \$r21\? \$r22 = -1125899906842624 \(0xfffc000000000000\)\[\$r22\];;

     c4c:	97 45 5e aa 00 00 80 1f                         	lhz.u.dlez \$r22\? \$r23 = -8388608 \(0xff800000\)\[\$r23\];;

     c54:	d8 55 62 2b                                     	lhz.us.dgtz \$r23\? \$r24 = \[\$r24\];;

     c58:	d9 ff 60 a8 ff ff ff 9f ff ff ff 18             	lhz \$r24 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r25\];;

     c64:	19 f0 64 29                                     	lhz.s \$r25 = -64 \(0xffffffc0\)\[\$r25\];;

     c68:	1a 00 68 aa 00 00 80 1f                         	lhz.u \$r26 = -8589934592 \(0xfffffffe00000000\)\[\$r26\];;

     c70:	db 66 6a 72                                     	liord \$r26 = \$r27, \$r27;;

     c74:	1c 77 6e 72                                     	liorw \$r27 = \$r28, \$r28;;

     c78:	dd 77 72 f2 ff ff ff 00                         	liorw \$r28 = \$r29, 536870911 \(0x1fffffff\);;

     c80:	9d 67 76 71                                     	lnandd \$r29 = \$r29, \$r30;;

     c84:	de 77 7a 71                                     	lnandw \$r30 = \$r30, \$r31;;

     c88:	df 77 7e f1 ff ff ff 00                         	lnandw \$r31 = \$r31, 536870911 \(0x1fffffff\);;

     c90:	20 68 82 73                                     	lniord \$r32 = \$r32, \$r32;;

     c94:	61 78 86 73                                     	lniorw \$r33 = \$r33, \$r33;;

     c98:	e2 77 8a f3 ff ff ff 00                         	lniorw \$r34 = \$r34, 536870911 \(0x1fffffff\);;

     ca0:	e3 68 8a 73                                     	lniord \$r34 = \$r35, \$r35;;

     ca4:	24 79 8e 73                                     	lniorw \$r35 = \$r36, \$r36;;

     ca8:	e5 77 92 f3 ff ff ff 00                         	lniorw \$r36 = \$r37, 536870911 \(0x1fffffff\);;

     cb0:	25 00 78 0f                                     	loopdo \$r37, ffffffffffff8cb0 <main\+0xffffffffffff8cb0>;;

     cb4:	a6 69 96 72                                     	liord \$r37 = \$r38, \$r38;;

     cb8:	e7 79 9a 72                                     	liorw \$r38 = \$r39, \$r39;;

     cbc:	e8 77 9e f2 ff ff ff 00                         	liorw \$r39 = \$r40, 536870911 \(0x1fffffff\);;

     cc4:	28 ea 16 3f                                     	lo.us \$r4r5r6r7 = \$r40\[\$r40\];;

     cc8:	69 0a 2e bc 00 00 00 98 00 00 80 1f             	lo.u0 \$r41\? \$r8r9r10r11 = -1125899906842624 \(0xfffc000000000000\)\[\$r41\];;

     cd4:	6a 1a 3e bd 00 00 80 1f                         	lo.s.u1 \$r41\? \$r12r13r14r15 = -8388608 \(0xff800000\)\[\$r42\];;

     cdc:	aa 2a 4e 3e                                     	lo.u.u2 \$r42\? \$r16r17r18r19 = \[\$r42\];;

     ce0:	eb 6a 56 bf 00 00 00 98 00 00 80 1f             	lo.us.odd \$r43\? \$r20r21r22r23 = -1125899906842624 \(0xfffc000000000000\)\[\$r43\];;

     cec:	ec 7a 66 bc 00 00 80 1f                         	lo.even \$r43\? \$r24r25r26r27 = -8388608 \(0xff800000\)\[\$r44\];;

     cf4:	2c 8b 76 3d                                     	lo.s.wnez \$r44\? \$r28r29r30r31 = \[\$r44\];;

     cf8:	ed ff 84 be ff ff ff 9f ff ff ff 18             	lo.u \$r32r33r34r35 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r45\];;

     d04:	2d f0 94 3f                                     	lo.us \$r36r37r38r39 = -64 \(0xffffffc0\)\[\$r45\];;

     d08:	2d 00 a4 bc 00 00 80 1f                         	lo \$r40r41r42r43 = -8589934592 \(0xfffffffe00000000\)\[\$r45\];;

     d10:	ae fb 4a 3d                                     	lq.s.xs \$r18r19 = \$r46\[\$r46\];;

     d14:	af 9b 4a be 00 00 00 98 00 00 80 1f             	lq.u.weqz \$r46\? \$r18r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r47\];;

     d20:	ef ab 52 bf 00 00 80 1f                         	lq.us.wltz \$r47\? \$r20r21 = -8388608 \(0xff800000\)\[\$r47\];;

     d28:	30 bc 52 3c                                     	lq.wgez \$r48\? \$r20r21 = \[\$r48\];;

     d2c:	f0 ff 58 bd ff ff ff 9f ff ff ff 18             	lq.s \$r22r23 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r48\];;

     d38:	31 f0 58 3e                                     	lq.u \$r22r23 = -64 \(0xffffffc0\)\[\$r49\];;

     d3c:	31 00 60 bf 00 00 80 1f                         	lq.us \$r24r25 = -8589934592 \(0xfffffffe00000000\)\[\$r49\];;

     d44:	b2 ec c6 34                                     	lws \$r49 = \$r50\[\$r50\];;

     d48:	b3 cc ce b5 00 00 00 98 00 00 80 1f             	lws.s.wlez \$r50\? \$r51 = -1125899906842624 \(0xfffc000000000000\)\[\$r51\];;

     d54:	f4 dc d2 b6 00 00 80 1f                         	lws.u.wgtz \$r51\? \$r52 = -8388608 \(0xff800000\)\[\$r52\];;

     d5c:	35 0d d6 37                                     	lws.us.dnez \$r52\? \$r53 = \[\$r53\];;

     d60:	f6 ff d4 b4 ff ff ff 9f ff ff ff 18             	lws \$r53 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r54\];;

     d6c:	36 f0 d8 35                                     	lws.s \$r54 = -64 \(0xffffffc0\)\[\$r54\];;

     d70:	37 00 dc b6 00 00 80 1f                         	lws.u \$r55 = -8589934592 \(0xfffffffe00000000\)\[\$r55\];;

     d78:	38 fe de 33                                     	lwz.us.xs \$r55 = \$r56\[\$r56\];;

     d7c:	39 1e e6 b0 00 00 00 98 00 00 80 1f             	lwz.deqz \$r56\? \$r57 = -1125899906842624 \(0xfffc000000000000\)\[\$r57\];;

     d88:	7a 2e ea b1 00 00 80 1f                         	lwz.s.dltz \$r57\? \$r58 = -8388608 \(0xff800000\)\[\$r58\];;

     d90:	bb 3e ee 32                                     	lwz.u.dgez \$r58\? \$r59 = \[\$r59\];;

     d94:	fc ff ec b3 ff ff ff 9f ff ff ff 18             	lwz.us \$r59 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r60\];;

     da0:	3c f0 f0 30                                     	lwz \$r60 = -64 \(0xffffffc0\)\[\$r60\];;

     da4:	3d 00 f4 b1 00 00 80 1f                         	lwz.s \$r61 = -8589934592 \(0xfffffffe00000000\)\[\$r61\];;

     dac:	bd 1f 60 58                                     	madddt \$r24r25 = \$r61, \$r62;;

     db0:	fe 0f f8 50                                     	maddd \$r62 = \$r62, \$r63;;

     db4:	ff 07 fc d0 ff ff ff 10                         	maddd \$r63 = \$r63, 536870911 \(0x1fffffff\);;

     dbc:	00 00 00 52                                     	maddhq \$r0 = \$r0, \$r0;;

     dc0:	c1 0f 04 d2 ff ff ff 10                         	maddhq \$r1 = \$r1, 536870911 \(0x1fffffff\).@;;

     dc8:	81 40 68 50                                     	maddhwq \$r26r27 = \$r1, \$r2;;

     dcc:	1c 27 6c 51                                     	maddmwq \$r26r27 = \$r28r29, \$r28r29;;

     dd0:	82 10 78 5a                                     	maddsudt \$r30r31 = \$r2, \$r2;;

     dd4:	c3 40 78 52                                     	maddsuhwq \$r30r31 = \$r3, \$r3;;

     dd8:	a0 28 84 53                                     	maddsumwq \$r32r33 = \$r32r33, \$r34r35;;

     ddc:	03 01 88 5a                                     	maddsuwdp \$r34r35 = \$r3, \$r4;;

     de0:	c4 07 90 da ff ff ff 10                         	maddsuwdp \$r36r37 = \$r4, 536870911 \(0x1fffffff\);;

     de8:	45 31 10 52                                     	maddsuwd \$r4 = \$r5, \$r5;;

     dec:	c6 37 14 d2 ff ff ff 10                         	maddsuwd \$r5 = \$r6, 536870911 \(0x1fffffff\);;

     df4:	86 11 90 59                                     	maddudt \$r36r37 = \$r6, \$r6;;

     df8:	c7 41 98 51                                     	madduhwq \$r38r39 = \$r7, \$r7;;

     dfc:	28 2a 9c 52                                     	maddumwq \$r38r39 = \$r40r41, \$r40r41;;

     e00:	07 02 a8 59                                     	madduwdp \$r42r43 = \$r7, \$r8;;

     e04:	c8 0f a8 d9 ff ff ff 10                         	madduwdp \$r42r43 = \$r8, 536870911 \(0x1fffffff\).@;;

     e0c:	49 32 20 51                                     	madduwd \$r8 = \$r9, \$r9;;

     e10:	ca 37 24 d1 ff ff ff 10                         	madduwd \$r9 = \$r10, 536870911 \(0x1fffffff\);;

     e18:	8a 12 b0 5b                                     	madduzdt \$r44r45 = \$r10, \$r10;;

     e1c:	cb 02 b0 58                                     	maddwdp \$r44r45 = \$r11, \$r11;;

     e20:	cb 07 b8 d8 ff ff ff 10                         	maddwdp \$r46r47 = \$r11, 536870911 \(0x1fffffff\);;

     e28:	4c 33 30 50                                     	maddwd \$r12 = \$r12, \$r13;;

     e2c:	ce 37 34 d0 ff ff ff 10                         	maddwd \$r13 = \$r14, 536870911 \(0x1fffffff\);;

     e34:	cf 03 38 51                                     	maddwp \$r14 = \$r15, \$r15;;

     e38:	d0 0f 40 d1 ff ff ff 10                         	maddwp \$r16 = \$r16, 536870911 \(0x1fffffff\).@;;

     e40:	30 2c bc 50                                     	maddwq \$r46r47 = \$r48r49, \$r48r49;;

     e44:	51 34 40 53                                     	maddw \$r16 = \$r17, \$r17;;

     e48:	d2 37 44 d3 ff ff ff 10                         	maddw \$r17 = \$r18, 536870911 \(0x1fffffff\);;

     e50:	c0 ff 48 e0 ff ff ff 87 ff ff ff 00             	make \$r18 = 2305843009213693951 \(0x1fffffffffffffff\);;

     e5c:	3c 00 48 e0 00 00 00 00                         	make \$r18 = -549755813888 \(0xffffff8000000000\);;

     e64:	00 f0 4c 60                                     	make \$r19 = -4096 \(0xfffff000\);;

     e68:	13 a5 4e 75                                     	maxbo \$r19 = \$r19, \$r20;;

     e6c:	d4 a7 52 f5 ff ff ff 00                         	maxbo \$r20 = \$r20, 536870911 \(0x1fffffff\);;

     e74:	d5 ff 54 e5 ff ff ff 87 ff ff ff 00             	maxd \$r21 = \$r21, 2305843009213693951 \(0x1fffffffffffffff\);;

     e80:	96 05 55 75                                     	maxd \$r21 = \$r22, \$r22;;

     e84:	17 f0 58 65                                     	maxd \$r22 = \$r23, -64 \(0xffffffc0\);;

     e88:	17 00 5c e5 00 00 80 07                         	maxd \$r23 = \$r23, -8589934592 \(0xfffffffe00000000\);;

     e90:	18 36 61 75                                     	maxhq \$r24 = \$r24, \$r24;;

     e94:	d9 3f 65 f5 ff ff ff 00                         	maxhq \$r25 = \$r25, 536870911 \(0x1fffffff\).@;;

     e9c:	9a c0 67 75                                     	maxrbod \$r25 = \$r26;;

     ea0:	5a c0 6b 75                                     	maxrhqd \$r26 = \$r26;;

     ea4:	1b c0 6f 75                                     	maxrwpd \$r27 = \$r27;;

     ea8:	1c a7 6e 77                                     	maxubo \$r27 = \$r28, \$r28;;

     eac:	dd a7 72 f7 ff ff ff 00                         	maxubo \$r28 = \$r29, 536870911 \(0x1fffffff\);;

     eb4:	dd ff 74 e7 ff ff ff 87 ff ff ff 00             	maxud \$r29 = \$r29, 2305843009213693951 \(0x1fffffffffffffff\);;

     ec0:	9e 07 79 77                                     	maxud \$r30 = \$r30, \$r30;;

     ec4:	1f f0 7c 67                                     	maxud \$r31 = \$r31, -64 \(0xffffffc0\);;

     ec8:	20 00 7c e7 00 00 80 07                         	maxud \$r31 = \$r32, -8589934592 \(0xfffffffe00000000\);;

     ed0:	60 38 81 77                                     	maxuhq \$r32 = \$r32, \$r33;;

     ed4:	e1 3f 85 f7 ff ff ff 00                         	maxuhq \$r33 = \$r33, 536870911 \(0x1fffffff\).@;;

     edc:	a2 c0 8b 79                                     	maxurbod \$r34 = \$r34;;

     ee0:	63 c0 8b 79                                     	maxurhqd \$r34 = \$r35;;

     ee4:	23 c0 8f 79                                     	maxurwpd \$r35 = \$r35;;

     ee8:	24 29 91 77                                     	maxuwp \$r36 = \$r36, \$r36;;

     eec:	e5 27 95 f7 ff ff ff 00                         	maxuwp \$r37 = \$r37, 536870911 \(0x1fffffff\);;

     ef4:	a6 19 95 77                                     	maxuw \$r37 = \$r38, \$r38;;

     ef8:	27 f0 98 77                                     	maxuw \$r38 = \$r39, -64 \(0xffffffc0\);;

     efc:	27 00 9c f7 00 00 80 07                         	maxuw \$r39 = \$r39, -8589934592 \(0xfffffffe00000000\);;

     f04:	28 2a a1 75                                     	maxwp \$r40 = \$r40, \$r40;;

     f08:	e9 2f a5 f5 ff ff ff 00                         	maxwp \$r41 = \$r41, 536870911 \(0x1fffffff\).@;;

     f10:	aa 1a a5 75                                     	maxw \$r41 = \$r42, \$r42;;

     f14:	2b f0 a8 75                                     	maxw \$r42 = \$r43, -64 \(0xffffffc0\);;

     f18:	2b 00 ac f5 00 00 80 07                         	maxw \$r43 = \$r43, -8589934592 \(0xfffffffe00000000\);;

     f20:	2c ab b2 74                                     	minbo \$r44 = \$r44, \$r44;;

     f24:	ed a7 b6 f4 ff ff ff 00                         	minbo \$r45 = \$r45, 536870911 \(0x1fffffff\);;

     f2c:	ee ff b4 e4 ff ff ff 87 ff ff ff 00             	mind \$r45 = \$r46, 2305843009213693951 \(0x1fffffffffffffff\);;

     f38:	ee 0b b9 74                                     	mind \$r46 = \$r46, \$r47;;

     f3c:	2f f0 bc 64                                     	mind \$r47 = \$r47, -64 \(0xffffffc0\);;

     f40:	30 00 c0 e4 00 00 80 07                         	mind \$r48 = \$r48, -8589934592 \(0xfffffffe00000000\);;

     f48:	71 3c c1 74                                     	minhq \$r48 = \$r49, \$r49;;

     f4c:	f2 3f c5 f4 ff ff ff 00                         	minhq \$r49 = \$r50, 536870911 \(0x1fffffff\).@;;

     f54:	b2 c0 cb 74                                     	minrbod \$r50 = \$r50;;

     f58:	73 c0 cf 74                                     	minrhqd \$r51 = \$r51;;

     f5c:	34 c0 cf 74                                     	minrwpd \$r51 = \$r52;;

     f60:	74 ad d2 76                                     	minubo \$r52 = \$r52, \$r53;;

     f64:	f5 a7 d6 f6 ff ff ff 00                         	minubo \$r53 = \$r53, 536870911 \(0x1fffffff\);;

     f6c:	f6 ff d8 e6 ff ff ff 87 ff ff ff 00             	minud \$r54 = \$r54, 2305843009213693951 \(0x1fffffffffffffff\);;

     f78:	f7 0d d9 76                                     	minud \$r54 = \$r55, \$r55;;

     f7c:	38 f0 dc 66                                     	minud \$r55 = \$r56, -64 \(0xffffffc0\);;

     f80:	38 00 e0 e6 00 00 80 07                         	minud \$r56 = \$r56, -8589934592 \(0xfffffffe00000000\);;

     f88:	79 3e e5 76                                     	minuhq \$r57 = \$r57, \$r57;;

     f8c:	fa 3f e9 f6 ff ff ff 00                         	minuhq \$r58 = \$r58, 536870911 \(0x1fffffff\).@;;

     f94:	bb c0 eb 78                                     	minurbod \$r58 = \$r59;;

     f98:	7b c0 ef 78                                     	minurhqd \$r59 = \$r59;;

     f9c:	3c c0 f3 78                                     	minurwpd \$r60 = \$r60;;

     fa0:	7d 2f f1 76                                     	minuwp \$r60 = \$r61, \$r61;;

     fa4:	fe 27 f5 f6 ff ff ff 00                         	minuwp \$r61 = \$r62, 536870911 \(0x1fffffff\);;

     fac:	fe 1f f9 76                                     	minuw \$r62 = \$r62, \$r63;;

     fb0:	3f f0 fc 76                                     	minuw \$r63 = \$r63, -64 \(0xffffffc0\);;

     fb4:	00 00 00 f6 00 00 80 07                         	minuw \$r0 = \$r0, -8589934592 \(0xfffffffe00000000\);;

     fbc:	41 20 01 74                                     	minwp \$r0 = \$r1, \$r1;;

     fc0:	c2 2f 05 f4 ff ff ff 00                         	minwp \$r1 = \$r2, 536870911 \(0x1fffffff\).@;;

     fc8:	c2 10 09 74                                     	minw \$r2 = \$r2, \$r3;;

     fcc:	03 f0 0c 74                                     	minw \$r3 = \$r3, -64 \(0xffffffc0\);;

     fd0:	04 00 10 f4 00 00 80 07                         	minw \$r4 = \$r4, -8589934592 \(0xfffffffe00000000\);;

     fd8:	44 11 c8 53                                     	mm212w \$r50r51 = \$r4, \$r5;;

     fdc:	c5 17 c8 d3 ff ff ff 10                         	mm212w \$r50r51 = \$r5, 536870911 \(0x1fffffff\);;

     fe4:	85 01 d0 5b                                     	mma212w \$r52r53 = \$r5, \$r6;;

     fe8:	c6 0f d0 db ff ff ff 10                         	mma212w \$r52r53 = \$r6, 536870911 \(0x1fffffff\).@;;

     ff0:	c6 01 d8 5f                                     	mms212w \$r54r55 = \$r6, \$r7;;

     ff4:	c7 07 d8 df ff ff ff 10                         	mms212w \$r54r55 = \$r7, 536870911 \(0x1fffffff\);;

     ffc:	07 12 e0 5c                                     	msbfdt \$r56r57 = \$r7, \$r8;;

    1000:	48 02 20 54                                     	msbfd \$r8 = \$r8, \$r9;;

    1004:	c9 0f 24 d4 ff ff ff 10                         	msbfd \$r9 = \$r9, 536870911 \(0x1fffffff\).@;;

    100c:	8a 02 28 56                                     	msbfhq \$r10 = \$r10, \$r10;;

    1010:	cb 07 2c d6 ff ff ff 10                         	msbfhq \$r11 = \$r11, 536870911 \(0x1fffffff\);;

    1018:	0b 43 e0 54                                     	msbfhwq \$r56r57 = \$r11, \$r12;;

    101c:	3a 2f ec 55                                     	msbfmwq \$r58r59 = \$r58r59, \$r60r61;;

    1020:	4c 13 f0 5e                                     	msbfsudt \$r60r61 = \$r12, \$r13;;

    1024:	8d 43 f8 56                                     	msbfsuhwq \$r62r63 = \$r13, \$r14;;

    1028:	00 20 fc 57                                     	msbfsumwq \$r62r63 = \$r0r1, \$r0r1;;

    102c:	ce 03 08 5e                                     	msbfsuwdp \$r2r3 = \$r14, \$r15;;

    1030:	cf 0f 08 de ff ff ff 10                         	msbfsuwdp \$r2r3 = \$r15, 536870911 \(0x1fffffff\).@;;

    1038:	10 34 40 56                                     	msbfsuwd \$r16 = \$r16, \$r16;;

    103c:	d1 37 44 d6 ff ff ff 10                         	msbfsuwd \$r17 = \$r17, 536870911 \(0x1fffffff\);;

    1044:	91 14 10 5d                                     	msbfudt \$r4r5 = \$r17, \$r18;;

    1048:	92 44 10 55                                     	msbfuhwq \$r4r5 = \$r18, \$r18;;

    104c:	06 22 1c 56                                     	msbfumwq \$r6r7 = \$r6r7, \$r8r9;;

    1050:	d3 04 20 5d                                     	msbfuwdp \$r8r9 = \$r19, \$r19;;

    1054:	d3 07 28 dd ff ff ff 10                         	msbfuwdp \$r10r11 = \$r19, 536870911 \(0x1fffffff\);;

    105c:	14 35 50 55                                     	msbfuwd \$r20 = \$r20, \$r20;;

    1060:	d5 37 54 d5 ff ff ff 10                         	msbfuwd \$r21 = \$r21, 536870911 \(0x1fffffff\);;

    1068:	95 15 28 5f                                     	msbfuzdt \$r10r11 = \$r21, \$r22;;

    106c:	96 05 30 5c                                     	msbfwdp \$r12r13 = \$r22, \$r22;;

    1070:	d7 0f 30 dc ff ff ff 10                         	msbfwdp \$r12r13 = \$r23, 536870911 \(0x1fffffff\).@;;

    1078:	17 36 5c 54                                     	msbfwd \$r23 = \$r23, \$r24;;

    107c:	d8 37 60 d4 ff ff ff 10                         	msbfwd \$r24 = \$r24, 536870911 \(0x1fffffff\);;

    1084:	59 06 64 55                                     	msbfwp \$r25 = \$r25, \$r25;;

    1088:	da 07 68 d5 ff ff ff 10                         	msbfwp \$r26 = \$r26, 536870911 \(0x1fffffff\);;

    1090:	0e 24 3c 54                                     	msbfwq \$r14r15 = \$r14r15, \$r16r17;;

    1094:	db 36 68 57                                     	msbfw \$r26 = \$r27, \$r27;;

    1098:	dc 37 6c d7 ff ff ff 10                         	msbfw \$r27 = \$r28, 536870911 \(0x1fffffff\);;

    10a0:	1c 17 44 58                                     	muldt \$r16r17 = \$r28, \$r28;;

    10a4:	5d 17 74 54                                     	muld \$r29 = \$r29, \$r29;;

    10a8:	de 1f 78 d4 ff ff ff 10                         	muld \$r30 = \$r30, 536870911 \(0x1fffffff\).@;;

    10b0:	df 17 78 56                                     	mulhq \$r30 = \$r31, \$r31;;

    10b4:	e0 17 7c d6 ff ff ff 10                         	mulhq \$r31 = \$r32, 536870911 \(0x1fffffff\);;

    10bc:	20 48 48 58                                     	mulhwq \$r18r19 = \$r32, \$r32;;

    10c0:	14 25 48 55                                     	mulmwq \$r18r19 = \$r20r21, \$r20r21;;

    10c4:	61 18 5c 5a                                     	mulsudt \$r22r23 = \$r33, \$r33;;

    10c8:	a1 48 58 5a                                     	mulsuhwq \$r22r23 = \$r33, \$r34;;

    10cc:	98 26 60 57                                     	mulsumwq \$r24r25 = \$r24r25, \$r26r27;;

    10d0:	a2 18 68 52                                     	mulsuwdp \$r26r27 = \$r34, \$r34;;

    10d4:	e3 1f 70 d2 ff ff ff 10                         	mulsuwdp \$r28r29 = \$r35, 536870911 \(0x1fffffff\).@;;

    10dc:	23 39 8c 5a                                     	mulsuwd \$r35 = \$r35, \$r36;;

    10e0:	e4 37 90 da ff ff ff 10                         	mulsuwd \$r36 = \$r36, 536870911 \(0x1fffffff\);;

    10e8:	65 19 74 59                                     	muludt \$r28r29 = \$r37, \$r37;;

    10ec:	a5 49 78 59                                     	muluhwq \$r30r31 = \$r37, \$r38;;

    10f0:	20 28 78 56                                     	mulumwq \$r30r31 = \$r32r33, \$r32r33;;

    10f4:	a6 19 88 51                                     	muluwdp \$r34r35 = \$r38, \$r38;;

    10f8:	e7 17 88 d1 ff ff ff 10                         	muluwdp \$r34r35 = \$r39, 536870911 \(0x1fffffff\);;

    1100:	27 3a 9c 59                                     	muluwd \$r39 = \$r39, \$r40;;

    1104:	e8 37 a0 d9 ff ff ff 10                         	muluwd \$r40 = \$r40, 536870911 \(0x1fffffff\);;

    110c:	69 1a 90 50                                     	mulwdp \$r36r37 = \$r41, \$r41;;

    1110:	e9 1f 90 d0 ff ff ff 10                         	mulwdp \$r36r37 = \$r41, 536870911 \(0x1fffffff\).@;;

    1118:	aa 3a a8 58                                     	mulwd \$r42 = \$r42, \$r42;;

    111c:	eb 37 ac d8 ff ff ff 10                         	mulwd \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    1124:	2c 1b ac 55                                     	mulwp \$r43 = \$r44, \$r44;;

    1128:	ed 17 b0 d5 ff ff ff 10                         	mulwp \$r44 = \$r45, 536870911 \(0x1fffffff\);;

    1130:	26 2a 98 54                                     	mulwq \$r38r39 = \$r38r39, \$r40r41;;

    1134:	ad 3b b4 5b                                     	mulw \$r45 = \$r45, \$r46;;

    1138:	ee 37 b8 db ff ff ff 10                         	mulw \$r46 = \$r46, 536870911 \(0x1fffffff\);;

    1140:	ef ff bc e9 ff ff ff 87 ff ff ff 00             	nandd \$r47 = \$r47, 2305843009213693951 \(0x1fffffffffffffff\);;

    114c:	30 0c bd 79                                     	nandd \$r47 = \$r48, \$r48;;

    1150:	31 f0 c0 69                                     	nandd \$r48 = \$r49, -64 \(0xffffffc0\);;

    1154:	31 00 c4 e9 00 00 80 07                         	nandd \$r49 = \$r49, -8589934592 \(0xfffffffe00000000\);;

    115c:	b2 1c c9 79                                     	nandw \$r50 = \$r50, \$r50;;

    1160:	33 f0 cc 79                                     	nandw \$r51 = \$r51, -64 \(0xffffffc0\);;

    1164:	34 00 cc f9 00 00 80 07                         	nandw \$r51 = \$r52, -8589934592 \(0xfffffffe00000000\);;

    116c:	34 a0 d2 f1 00 00 00 00                         	negbo \$r52 = \$r52;;

    1174:	35 00 d4 63                                     	negd \$r53 = \$r53;;

    1178:	36 30 d5 f3 00 00 00 00                         	neghq \$r53 = \$r54;;

    1180:	36 b0 da fd 00 00 00 00                         	negsbo \$r54 = \$r54;;

    1188:	37 40 dd fd 00 00 00 00                         	negsd \$r55 = \$r55;;

    1190:	38 70 dd fd 00 00 00 00                         	negshq \$r55 = \$r56;;

    1198:	38 60 e1 fd 00 00 00 00                         	negswp \$r56 = \$r56;;

    11a0:	39 50 e5 fd 00 00 00 00                         	negsw \$r57 = \$r57;;

    11a8:	3a 20 e5 f3 00 00 00 00                         	negwp \$r57 = \$r58;;

    11b0:	3a 00 e8 73                                     	negw \$r58 = \$r58;;

    11b4:	fb ff ec ed ff ff ff 87 ff ff ff 00             	neord \$r59 = \$r59, 2305843009213693951 \(0x1fffffffffffffff\);;

    11c0:	3c 0f ed 7d                                     	neord \$r59 = \$r60, \$r60;;

    11c4:	3d f0 f0 6d                                     	neord \$r60 = \$r61, -64 \(0xffffffc0\);;

    11c8:	3d 00 f4 ed 00 00 80 07                         	neord \$r61 = \$r61, -8589934592 \(0xfffffffe00000000\);;

    11d0:	be 1f f9 7d                                     	neorw \$r62 = \$r62, \$r62;;

    11d4:	3f f0 fc 7d                                     	neorw \$r63 = \$r63, -64 \(0xffffffc0\);;

    11d8:	00 00 fc fd 00 00 80 07                         	neorw \$r63 = \$r0, -8589934592 \(0xfffffffe00000000\);;

    11e0:	c0 ff 00 eb ff ff ff 87 ff ff ff 00             	niord \$r0 = \$r0, 2305843009213693951 \(0x1fffffffffffffff\);;

    11ec:	41 00 05 7b                                     	niord \$r1 = \$r1, \$r1;;

    11f0:	02 f0 08 6b                                     	niord \$r2 = \$r2, -64 \(0xffffffc0\);;

    11f4:	03 00 08 eb 00 00 80 07                         	niord \$r2 = \$r3, -8589934592 \(0xfffffffe00000000\);;

    11fc:	03 11 0d 7b                                     	niorw \$r3 = \$r3, \$r4;;

    1200:	04 f0 10 7b                                     	niorw \$r4 = \$r4, -64 \(0xffffffc0\);;

    1204:	05 00 14 fb 00 00 80 07                         	niorw \$r5 = \$r5, -8589934592 \(0xfffffffe00000000\);;

    120c:	00 f0 03 7f                                     	nop;;

    1210:	c6 ff 14 eb ff ff ff 87 ff ff ff 00             	niord \$r5 = \$r6, 2305843009213693951 \(0x1fffffffffffffff\);;

    121c:	c6 01 19 7b                                     	niord \$r6 = \$r6, \$r7;;

    1220:	07 f0 1c 6b                                     	niord \$r7 = \$r7, -64 \(0xffffffc0\);;

    1224:	08 00 20 eb 00 00 80 07                         	niord \$r8 = \$r8, -8589934592 \(0xfffffffe00000000\);;

    122c:	49 12 21 7b                                     	niorw \$r8 = \$r9, \$r9;;

    1230:	0a f0 24 7b                                     	niorw \$r9 = \$r10, -64 \(0xffffffc0\);;

    1234:	0a 00 28 fb 00 00 80 07                         	niorw \$r10 = \$r10, -8589934592 \(0xfffffffe00000000\);;

    123c:	cb ff 2c 6c                                     	notd \$r11 = \$r11;;

    1240:	cc ff 2c 7c                                     	notw \$r11 = \$r12;;

    1244:	cd ff 30 ed ff ff ff 87 ff ff ff 00             	neord \$r12 = \$r13, 2305843009213693951 \(0x1fffffffffffffff\);;

    1250:	8e 03 35 7d                                     	neord \$r13 = \$r14, \$r14;;

    1254:	0f f0 3c 6d                                     	neord \$r15 = \$r15, -64 \(0xffffffc0\);;

    1258:	10 00 40 ed 00 00 80 07                         	neord \$r16 = \$r16, -8589934592 \(0xfffffffe00000000\);;

    1260:	51 14 41 7d                                     	neorw \$r16 = \$r17, \$r17;;

    1264:	12 f0 44 7d                                     	neorw \$r17 = \$r18, -64 \(0xffffffc0\);;

    1268:	12 00 48 fd 00 00 80 07                         	neorw \$r18 = \$r18, -8589934592 \(0xfffffffe00000000\);;

    1270:	d3 ff 4c ea ff ff ff 87 ff ff ff 00             	iord \$r19 = \$r19, 2305843009213693951 \(0x1fffffffffffffff\);;

    127c:	14 05 4d 7a                                     	iord \$r19 = \$r20, \$r20;;

    1280:	15 f0 50 6a                                     	iord \$r20 = \$r21, -64 \(0xffffffc0\);;

    1284:	15 00 54 ea 00 00 80 07                         	iord \$r21 = \$r21, -8589934592 \(0xfffffffe00000000\);;

    128c:	d6 ff 58 ef ff ff ff 87 ff ff ff 00             	iornd \$r22 = \$r22, 2305843009213693951 \(0x1fffffffffffffff\);;

    1298:	d7 05 59 7f                                     	iornd \$r22 = \$r23, \$r23;;

    129c:	18 f0 5c 6f                                     	iornd \$r23 = \$r24, -64 \(0xffffffc0\);;

    12a0:	18 00 60 ef 00 00 80 07                         	iornd \$r24 = \$r24, -8589934592 \(0xfffffffe00000000\);;

    12a8:	59 16 65 7f                                     	iornw \$r25 = \$r25, \$r25;;

    12ac:	1a f0 68 7f                                     	iornw \$r26 = \$r26, -64 \(0xffffffc0\);;

    12b0:	1b 00 68 ff 00 00 80 07                         	iornw \$r26 = \$r27, -8589934592 \(0xfffffffe00000000\);;

    12b8:	9b c0 6f 71                                     	iorrbod \$r27 = \$r27;;

    12bc:	5c c0 73 71                                     	iorrhqd \$r28 = \$r28;;

    12c0:	1d c0 73 71                                     	iorrwpd \$r28 = \$r29;;

    12c4:	9d 17 75 7a                                     	iorw \$r29 = \$r29, \$r30;;

    12c8:	1e f0 78 7a                                     	iorw \$r30 = \$r30, -64 \(0xffffffc0\);;

    12cc:	1f 00 7c fa 00 00 80 07                         	iorw \$r31 = \$r31, -8589934592 \(0xfffffffe00000000\);;

    12d4:	c0 ff 7c f0 ff ff ff 87 ff ff ff 00             	pcrel \$r31 = 2305843009213693951 \(0x1fffffffffffffff\);;

    12e0:	3c 00 80 f0 00 00 00 00                         	pcrel \$r32 = -549755813888 \(0xffffff8000000000\);;

    12e8:	00 f0 80 70                                     	pcrel \$r32 = -4096 \(0xfffff000\);;

    12ec:	00 00 d0 0f                                     	ret;;

    12f0:	00 00 d4 0f                                     	rfe;;

    12f4:	61 88 82 7e                                     	rolwps \$r32 = \$r33, \$r33;;

    12f8:	e2 41 86 7e                                     	rolwps \$r33 = \$r34, 7 \(0x7\);;

    12fc:	e2 78 8a 7e                                     	rolw \$r34 = \$r34, \$r35;;

    1300:	e3 31 8e 7e                                     	rolw \$r35 = \$r35, 7 \(0x7\);;

    1304:	24 89 92 7f                                     	rorwps \$r36 = \$r36, \$r36;;

    1308:	e5 41 96 7f                                     	rorwps \$r37 = \$r37, 7 \(0x7\);;

    130c:	a6 79 96 7f                                     	rorw \$r37 = \$r38, \$r38;;

    1310:	e7 31 9a 7f                                     	rorw \$r38 = \$r39, 7 \(0x7\);;

    1314:	27 07 c8 0f                                     	rswap \$r39 = \$mmc;;

    1318:	27 00 c8 0f                                     	rswap \$r39 = \$pc;;

    131c:	28 00 c8 0f                                     	rswap \$r40 = \$pc;;

    1320:	68 aa a2 71                                     	sbfbo \$r40 = \$r40, \$r41;;

    1324:	e9 af a6 f1 ff ff ff 00                         	sbfbo \$r41 = \$r41, 536870911 \(0x1fffffff\).@;;

    132c:	aa 9a a9 7f                                     	sbfcd.i \$r42 = \$r42, \$r42;;

    1330:	eb 97 ad ff ff ff ff 00                         	sbfcd.i \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    1338:	2c 8b ad 7f                                     	sbfcd \$r43 = \$r44, \$r44;;

    133c:	ed 87 b1 ff ff ff ff 00                         	sbfcd \$r44 = \$r45, 536870911 \(0x1fffffff\);;

    1344:	ed ff b4 e3 ff ff ff 87 ff ff ff 00             	sbfd \$r45 = \$r45, 2305843009213693951 \(0x1fffffffffffffff\);;

    1350:	ae 0b b9 73                                     	sbfd \$r46 = \$r46, \$r46;;

    1354:	2f f0 bc 63                                     	sbfd \$r47 = \$r47, -64 \(0xffffffc0\);;

    1358:	30 00 bc e3 00 00 80 07                         	sbfd \$r47 = \$r48, -8589934592 \(0xfffffffe00000000\);;

    1360:	70 3c c1 73                                     	sbfhq \$r48 = \$r48, \$r49;;

    1364:	f1 37 c5 f3 ff ff ff 00                         	sbfhq \$r49 = \$r49, 536870911 \(0x1fffffff\);;

    136c:	b2 bc ca 7d                                     	sbfsbo \$r50 = \$r50, \$r50;;

    1370:	f3 bf ce fd ff ff ff 00                         	sbfsbo \$r51 = \$r51, 536870911 \(0x1fffffff\).@;;

    1378:	34 4d cd 7d                                     	sbfsd \$r51 = \$r52, \$r52;;

    137c:	f5 47 d1 fd ff ff ff 00                         	sbfsd \$r52 = \$r53, 536870911 \(0x1fffffff\);;

    1384:	b5 7d d5 7d                                     	sbfshq \$r53 = \$r53, \$r54;;

    1388:	f6 7f d9 fd ff ff ff 00                         	sbfshq \$r54 = \$r54, 536870911 \(0x1fffffff\).@;;

    1390:	f7 6d dd 7d                                     	sbfswp \$r55 = \$r55, \$r55;;

    1394:	f8 67 e1 fd ff ff ff 00                         	sbfswp \$r56 = \$r56, 536870911 \(0x1fffffff\);;

    139c:	79 5e e1 7d                                     	sbfsw \$r56 = \$r57, \$r57;;

    13a0:	fa 57 e5 fd ff ff ff 00                         	sbfsw \$r57 = \$r58, 536870911 \(0x1fffffff\);;

    13a8:	fa be ea 7f                                     	sbfusbo \$r58 = \$r58, \$r59;;

    13ac:	fb bf ee ff ff ff ff 00                         	sbfusbo \$r59 = \$r59, 536870911 \(0x1fffffff\).@;;

    13b4:	3c 4f f1 7f                                     	sbfusd \$r60 = \$r60, \$r60;;

    13b8:	fd 47 f5 ff ff ff ff 00                         	sbfusd \$r61 = \$r61, 536870911 \(0x1fffffff\);;

    13c0:	be 7f f5 7f                                     	sbfushq \$r61 = \$r62, \$r62;;

    13c4:	ff 7f f9 ff ff ff ff 00                         	sbfushq \$r62 = \$r63, 536870911 \(0x1fffffff\).@;;

    13cc:	3f 60 fd 7f                                     	sbfuswp \$r63 = \$r63, \$r0;;

    13d0:	c0 67 01 ff ff ff ff 00                         	sbfuswp \$r0 = \$r0, 536870911 \(0x1fffffff\);;

    13d8:	41 50 05 7f                                     	sbfusw \$r1 = \$r1, \$r1;;

    13dc:	c2 57 09 ff ff ff ff 00                         	sbfusw \$r2 = \$r2, 536870911 \(0x1fffffff\);;

    13e4:	c3 90 09 7d                                     	sbfuwd \$r2 = \$r3, \$r3;;

    13e8:	c4 97 0d fd ff ff ff 00                         	sbfuwd \$r3 = \$r4, 536870911 \(0x1fffffff\);;

    13f0:	44 81 11 7d                                     	sbfwd \$r4 = \$r4, \$r5;;

    13f4:	c5 87 15 fd ff ff ff 00                         	sbfwd \$r5 = \$r5, 536870911 \(0x1fffffff\);;

    13fc:	86 21 19 73                                     	sbfwp \$r6 = \$r6, \$r6;;

    1400:	c7 2f 1d f3 ff ff ff 00                         	sbfwp \$r7 = \$r7, 536870911 \(0x1fffffff\).@;;

    1408:	08 12 1d 73                                     	sbfw \$r7 = \$r8, \$r8;;

    140c:	09 f0 20 73                                     	sbfw \$r8 = \$r9, -64 \(0xffffffc0\);;

    1410:	09 00 24 f3 00 00 80 07                         	sbfw \$r9 = \$r9, -8589934592 \(0xfffffffe00000000\);;

    1418:	8a b2 2a 77                                     	sbfx16bo \$r10 = \$r10, \$r10;;

    141c:	cb b7 2e f7 ff ff ff 00                         	sbfx16bo \$r11 = \$r11, 536870911 \(0x1fffffff\);;

    1424:	0c 43 2d 77                                     	sbfx16d \$r11 = \$r12, \$r12;;

    1428:	cd 4f 35 f7 ff ff ff 00                         	sbfx16d \$r13 = \$r13, 536870911 \(0x1fffffff\).@;;

    1430:	ce 73 39 77                                     	sbfx16hq \$r14 = \$r14, \$r15;;

    1434:	d0 77 3d f7 ff ff ff 00                         	sbfx16hq \$r15 = \$r16, 536870911 \(0x1fffffff\);;

    143c:	50 94 41 77                                     	sbfx16uwd \$r16 = \$r16, \$r17;;

    1440:	d1 97 45 f7 ff ff ff 00                         	sbfx16uwd \$r17 = \$r17, 536870911 \(0x1fffffff\);;

    1448:	92 84 49 77                                     	sbfx16wd \$r18 = \$r18, \$r18;;

    144c:	d3 87 4d f7 ff ff ff 00                         	sbfx16wd \$r19 = \$r19, 536870911 \(0x1fffffff\);;

    1454:	14 65 4d 77                                     	sbfx16wp \$r19 = \$r20, \$r20;;

    1458:	d5 6f 51 f7 ff ff ff 00                         	sbfx16wp \$r20 = \$r21, 536870911 \(0x1fffffff\).@;;

    1460:	95 55 55 77                                     	sbfx16w \$r21 = \$r21, \$r22;;

    1464:	d6 57 59 f7 ff ff ff 00                         	sbfx16w \$r22 = \$r22, 536870911 \(0x1fffffff\);;

    146c:	d7 b5 5e 71                                     	sbfx2bo \$r23 = \$r23, \$r23;;

    1470:	d8 b7 62 f1 ff ff ff 00                         	sbfx2bo \$r24 = \$r24, 536870911 \(0x1fffffff\);;

    1478:	59 46 61 71                                     	sbfx2d \$r24 = \$r25, \$r25;;

    147c:	da 4f 65 f1 ff ff ff 00                         	sbfx2d \$r25 = \$r26, 536870911 \(0x1fffffff\).@;;

    1484:	da 76 69 71                                     	sbfx2hq \$r26 = \$r26, \$r27;;

    1488:	db 77 6d f1 ff ff ff 00                         	sbfx2hq \$r27 = \$r27, 536870911 \(0x1fffffff\);;

    1490:	1c 97 71 71                                     	sbfx2uwd \$r28 = \$r28, \$r28;;

    1494:	dd 97 75 f1 ff ff ff 00                         	sbfx2uwd \$r29 = \$r29, 536870911 \(0x1fffffff\);;

    149c:	9e 87 75 71                                     	sbfx2wd \$r29 = \$r30, \$r30;;

    14a0:	df 87 79 f1 ff ff ff 00                         	sbfx2wd \$r30 = \$r31, 536870911 \(0x1fffffff\);;

    14a8:	1f 68 7d 71                                     	sbfx2wp \$r31 = \$r31, \$r32;;

    14ac:	e0 6f 81 f1 ff ff ff 00                         	sbfx2wp \$r32 = \$r32, 536870911 \(0x1fffffff\).@;;

    14b4:	61 58 85 71                                     	sbfx2w \$r33 = \$r33, \$r33;;

    14b8:	e2 57 89 f1 ff ff ff 00                         	sbfx2w \$r34 = \$r34, 536870911 \(0x1fffffff\);;

    14c0:	e3 48 89 79                                     	sbfx32d \$r34 = \$r35, \$r35;;

    14c4:	e4 47 8d f9 ff ff ff 00                         	sbfx32d \$r35 = \$r36, 536870911 \(0x1fffffff\);;

    14cc:	64 99 91 79                                     	sbfx32uwd \$r36 = \$r36, \$r37;;

    14d0:	e5 97 95 f9 ff ff ff 00                         	sbfx32uwd \$r37 = \$r37, 536870911 \(0x1fffffff\);;

    14d8:	a6 89 99 79                                     	sbfx32wd \$r38 = \$r38, \$r38;;

    14dc:	e7 87 9d f9 ff ff ff 00                         	sbfx32wd \$r39 = \$r39, 536870911 \(0x1fffffff\);;

    14e4:	28 5a 9d 79                                     	sbfx32w \$r39 = \$r40, \$r40;;

    14e8:	e9 57 a1 f9 ff ff ff 00                         	sbfx32w \$r40 = \$r41, 536870911 \(0x1fffffff\);;

    14f0:	a9 ba a6 73                                     	sbfx4bo \$r41 = \$r41, \$r42;;

    14f4:	ea bf aa f3 ff ff ff 00                         	sbfx4bo \$r42 = \$r42, 536870911 \(0x1fffffff\).@;;

    14fc:	eb 4a ad 73                                     	sbfx4d \$r43 = \$r43, \$r43;;

    1500:	ec 47 b1 f3 ff ff ff 00                         	sbfx4d \$r44 = \$r44, 536870911 \(0x1fffffff\);;

    1508:	6d 7b b1 73                                     	sbfx4hq \$r44 = \$r45, \$r45;;

    150c:	ee 7f b5 f3 ff ff ff 00                         	sbfx4hq \$r45 = \$r46, 536870911 \(0x1fffffff\).@;;

    1514:	ee 9b b9 73                                     	sbfx4uwd \$r46 = \$r46, \$r47;;

    1518:	ef 97 bd f3 ff ff ff 00                         	sbfx4uwd \$r47 = \$r47, 536870911 \(0x1fffffff\);;

    1520:	30 8c c1 73                                     	sbfx4wd \$r48 = \$r48, \$r48;;

    1524:	f1 87 c5 f3 ff ff ff 00                         	sbfx4wd \$r49 = \$r49, 536870911 \(0x1fffffff\);;

    152c:	b2 6c c5 73                                     	sbfx4wp \$r49 = \$r50, \$r50;;

    1530:	f3 67 c9 f3 ff ff ff 00                         	sbfx4wp \$r50 = \$r51, 536870911 \(0x1fffffff\);;

    1538:	33 5d cd 73                                     	sbfx4w \$r51 = \$r51, \$r52;;

    153c:	f4 57 d1 f3 ff ff ff 00                         	sbfx4w \$r52 = \$r52, 536870911 \(0x1fffffff\);;

    1544:	75 4d d5 7b                                     	sbfx64d \$r53 = \$r53, \$r53;;

    1548:	f6 4f d9 fb ff ff ff 00                         	sbfx64d \$r54 = \$r54, 536870911 \(0x1fffffff\).@;;

    1550:	f7 9d d9 7b                                     	sbfx64uwd \$r54 = \$r55, \$r55;;

    1554:	f8 97 dd fb ff ff ff 00                         	sbfx64uwd \$r55 = \$r56, 536870911 \(0x1fffffff\);;

    155c:	78 8e e1 7b                                     	sbfx64wd \$r56 = \$r56, \$r57;;

    1560:	f9 87 e5 fb ff ff ff 00                         	sbfx64wd \$r57 = \$r57, 536870911 \(0x1fffffff\);;

    1568:	ba 5e e9 7b                                     	sbfx64w \$r58 = \$r58, \$r58;;

    156c:	fb 57 ed fb ff ff ff 00                         	sbfx64w \$r59 = \$r59, 536870911 \(0x1fffffff\);;

    1574:	3c bf ee 75                                     	sbfx8bo \$r59 = \$r60, \$r60;;

    1578:	fd b7 f2 f5 ff ff ff 00                         	sbfx8bo \$r60 = \$r61, 536870911 \(0x1fffffff\);;

    1580:	bd 4f f5 75                                     	sbfx8d \$r61 = \$r61, \$r62;;

    1584:	fe 4f f9 f5 ff ff ff 00                         	sbfx8d \$r62 = \$r62, 536870911 \(0x1fffffff\).@;;

    158c:	ff 7f fd 75                                     	sbfx8hq \$r63 = \$r63, \$r63;;

    1590:	c0 77 01 f5 ff ff ff 00                         	sbfx8hq \$r0 = \$r0, 536870911 \(0x1fffffff\);;

    1598:	41 90 01 75                                     	sbfx8uwd \$r0 = \$r1, \$r1;;

    159c:	c2 97 05 f5 ff ff ff 00                         	sbfx8uwd \$r1 = \$r2, 536870911 \(0x1fffffff\);;

    15a4:	c2 80 09 75                                     	sbfx8wd \$r2 = \$r2, \$r3;;

    15a8:	c3 87 0d f5 ff ff ff 00                         	sbfx8wd \$r3 = \$r3, 536870911 \(0x1fffffff\);;

    15b0:	04 61 11 75                                     	sbfx8wp \$r4 = \$r4, \$r4;;

    15b4:	c5 6f 15 f5 ff ff ff 00                         	sbfx8wp \$r5 = \$r5, 536870911 \(0x1fffffff\).@;;

    15bc:	86 51 15 75                                     	sbfx8w \$r5 = \$r6, \$r6;;

    15c0:	c7 57 19 f5 ff ff ff 00                         	sbfx8w \$r6 = \$r7, 536870911 \(0x1fffffff\);;

    15c8:	c7 ff 1e ee ff ff ff 87 ff ff ff 00             	sbmm8 \$r7 = \$r7, 2305843009213693951 \(0x1fffffffffffffff\);;

    15d4:	08 02 22 7e                                     	sbmm8 \$r8 = \$r8, \$r8;;

    15d8:	09 f0 26 6e                                     	sbmm8 \$r9 = \$r9, -64 \(0xffffffc0\);;

    15dc:	0a 00 26 ee 00 00 80 07                         	sbmm8 \$r9 = \$r10, -8589934592 \(0xfffffffe00000000\);;

    15e4:	ca ff 2a ef ff ff ff 87 ff ff ff 00             	sbmmt8 \$r10 = \$r10, 2305843009213693951 \(0x1fffffffffffffff\);;

    15f0:	cb 02 2e 7f                                     	sbmmt8 \$r11 = \$r11, \$r11;;

    15f4:	0c f0 32 6f                                     	sbmmt8 \$r12 = \$r12, -64 \(0xffffffc0\);;

    15f8:	0d 00 36 ef 00 00 80 07                         	sbmmt8 \$r13 = \$r13, -8589934592 \(0xfffffffe00000000\);;

    1600:	8e e3 3f 30                                     	sb \$r14\[\$r14\] = \$r15;;

    1604:	cf ff 41 b0 ff ff ff 9f ff ff ff 18             	sb 2305843009213693951 \(0x1fffffffffffffff\)\[\$r15\] = \$r16;;

    1610:	10 44 47 b0 00 00 00 98 00 00 80 1f             	sb.dlez \$r16\? -1125899906842624 \(0xfffc000000000000\)\[\$r16\] = \$r17;;

    161c:	51 54 4b b0 00 00 80 1f                         	sb.dgtz \$r17\? -8388608 \(0xff800000\)\[\$r17\] = \$r18;;

    1624:	92 64 4f 30                                     	sb.odd \$r18\? \[\$r18\] = \$r19;;

    1628:	13 f0 4d 30                                     	sb -64 \(0xffffffc0\)\[\$r19\] = \$r19;;

    162c:	14 00 51 b0 00 00 80 1f                         	sb -8589934592 \(0xfffffffe00000000\)\[\$r20\] = \$r20;;

    1634:	14 00 e4 0f                                     	scall \$r20;;

    1638:	ff 01 e0 0f                                     	scall 511 \(0x1ff\);;

    163c:	55 f5 57 33                                     	sd.xs \$r21\[\$r21\] = \$r21;;

    1640:	d6 ff 59 b3 ff ff ff 9f ff ff ff 18             	sd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r22\] = \$r22;;

    164c:	97 75 5f b3 00 00 00 98 00 00 80 1f             	sd.even \$r22\? -1125899906842624 \(0xfffc000000000000\)\[\$r23\] = \$r23;;

    1658:	d8 85 63 b3 00 00 80 1f                         	sd.wnez \$r23\? -8388608 \(0xff800000\)\[\$r24\] = \$r24;;

    1660:	19 96 67 33                                     	sd.weqz \$r24\? \[\$r25\] = \$r25;;

    1664:	19 f0 69 33                                     	sd -64 \(0xffffffc0\)\[\$r25\] = \$r26;;

    1668:	1a 00 69 b3 00 00 80 1f                         	sd -8589934592 \(0xfffffffe00000000\)\[\$r26\] = \$r26;;

    1670:	1b 07 c0 0f                                     	set \$mmc = \$r27;;

    1674:	db 00 c0 0f                                     	set \$ra = \$r27;;

    1678:	5b 00 c0 0f                                     	set \$ps = \$r27;;

    167c:	5c 00 c0 0f                                     	set \$ps = \$r28;;

    1680:	1c e7 77 31                                     	sh \$r28\[\$r28\] = \$r29;;

    1684:	dd ff 75 b1 ff ff ff 9f ff ff ff 18             	sh 2305843009213693951 \(0x1fffffffffffffff\)\[\$r29\] = \$r29;;

    1690:	9e a7 7b b1 00 00 00 98 00 00 80 1f             	sh.wltz \$r30\? -1125899906842624 \(0xfffc000000000000\)\[\$r30\] = \$r30;;

    169c:	df b7 7f b1 00 00 80 1f                         	sh.wgez \$r31\? -8388608 \(0xff800000\)\[\$r31\] = \$r31;;

    16a4:	20 c8 83 31                                     	sh.wlez \$r32\? \[\$r32\] = \$r32;;

    16a8:	21 f0 85 31                                     	sh -64 \(0xffffffc0\)\[\$r33\] = \$r33;;

    16ac:	21 00 89 b1 00 00 80 1f                         	sh -8589934592 \(0xfffffffe00000000\)\[\$r33\] = \$r34;;

    16b4:	00 00 a4 0f                                     	sleep;;

    16b8:	e2 f8 8a 79                                     	sllbos \$r34 = \$r34, \$r35;;

    16bc:	e3 e1 8e 79                                     	sllbos \$r35 = \$r35, 7 \(0x7\);;

    16c0:	24 69 92 79                                     	slld \$r36 = \$r36, \$r36;;

    16c4:	e5 21 96 79                                     	slld \$r37 = \$r37, 7 \(0x7\);;

    16c8:	a6 99 96 79                                     	sllhqs \$r37 = \$r38, \$r38;;

    16cc:	e7 51 9a 79                                     	sllhqs \$r38 = \$r39, 7 \(0x7\);;

    16d0:	27 8a 9e 79                                     	sllwps \$r39 = \$r39, \$r40;;

    16d4:	e8 41 a2 79                                     	sllwps \$r40 = \$r40, 7 \(0x7\);;

    16d8:	69 7a a6 79                                     	sllw \$r41 = \$r41, \$r41;;

    16dc:	ea 31 aa 79                                     	sllw \$r42 = \$r42, 7 \(0x7\);;

    16e0:	eb fa aa 7c                                     	slsbos \$r42 = \$r43, \$r43;;

    16e4:	ec e1 ae 7c                                     	slsbos \$r43 = \$r44, 7 \(0x7\);;

    16e8:	6c 6b b2 7c                                     	slsd \$r44 = \$r44, \$r45;;

    16ec:	ed 21 b6 7c                                     	slsd \$r45 = \$r45, 7 \(0x7\);;

    16f0:	ae 9b ba 7c                                     	slshqs \$r46 = \$r46, \$r46;;

    16f4:	ef 51 be 7c                                     	slshqs \$r47 = \$r47, 7 \(0x7\);;

    16f8:	30 8c be 7c                                     	slswps \$r47 = \$r48, \$r48;;

    16fc:	f1 41 c2 7c                                     	slswps \$r48 = \$r49, 7 \(0x7\);;

    1700:	b1 7c c6 7c                                     	slsw \$r49 = \$r49, \$r50;;

    1704:	f2 31 ca 7c                                     	slsw \$r50 = \$r50, 7 \(0x7\);;

    1708:	f3 fc ce 7d                                     	slusbos \$r51 = \$r51, \$r51;;

    170c:	f4 e1 d2 7d                                     	slusbos \$r52 = \$r52, 7 \(0x7\);;

    1710:	75 6d d2 7d                                     	slusd \$r52 = \$r53, \$r53;;

    1714:	f6 21 d6 7d                                     	slusd \$r53 = \$r54, 7 \(0x7\);;

    1718:	f6 9d da 7d                                     	slushqs \$r54 = \$r54, \$r55;;

    171c:	f7 51 de 7d                                     	slushqs \$r55 = \$r55, 7 \(0x7\);;

    1720:	38 8e e2 7d                                     	sluswps \$r56 = \$r56, \$r56;;

    1724:	f9 41 e6 7d                                     	sluswps \$r57 = \$r57, 7 \(0x7\);;

    1728:	ba 7e e6 7d                                     	slusw \$r57 = \$r58, \$r58;;

    172c:	fb 31 ea 7d                                     	slusw \$r58 = \$r59, 7 \(0x7\);;

    1730:	fb fe b7 34                                     	so.xs \$r59\[\$r59\] = \$r44r45r46r47;;

    1734:	fc ff c5 b4 ff ff ff 9f ff ff ff 18             	so 2305843009213693951 \(0x1fffffffffffffff\)\[\$r60\] = \$r48r49r50r51;;

    1740:	3c 3f df b4 00 00 00 98 00 00 80 1f             	so.u3 \$r60\? -1125899906842624 \(0xfffc000000000000\)\[\$r60\] = \$r52r53r54r55;;

    174c:	7d 4f ef b4 00 00 80 1f                         	so.mt \$r61\? -8388608 \(0xff800000\)\[\$r61\] = \$r56r57r58r59;;

    1754:	7e 5f ff 34                                     	so.mf \$r61\? \[\$r62\] = \$r60r61r62r63;;

    1758:	be df 07 b4 00 00 00 98 00 00 80 1f             	so.wgtz \$r62\? -1125899906842624 \(0xfffc000000000000\)\[\$r62\] = \$r0r1r2r3;;

    1764:	ff 0f 17 b4 00 00 80 1f                         	so.dnez \$r63\? -8388608 \(0xff800000\)\[\$r63\] = \$r4r5r6r7;;

    176c:	c0 1f 27 34                                     	so.deqz \$r63\? \[\$r0\] = \$r8r9r10r11;;

    1770:	00 f0 35 34                                     	so -64 \(0xffffffc0\)\[\$r0\] = \$r12r13r14r15;;

    1774:	00 00 45 b4 00 00 80 1f                         	so -8589934592 \(0xfffffffe00000000\)\[\$r0\] = \$r16r17r18r19;;

    177c:	41 e0 a3 34                                     	sq \$r1\[\$r1\] = \$r40r41;;

    1780:	c1 ff a9 b4 ff ff ff 9f ff ff ff 18             	sq 2305843009213693951 \(0x1fffffffffffffff\)\[\$r1\] = \$r42r43;;

    178c:	82 20 ab b4 00 00 00 98 00 00 80 1f             	sq.dltz \$r2\? -1125899906842624 \(0xfffc000000000000\)\[\$r2\] = \$r42r43;;

    1798:	83 30 b3 b4 00 00 80 1f                         	sq.dgez \$r2\? -8388608 \(0xff800000\)\[\$r3\] = \$r44r45;;

    17a0:	c3 40 b3 34                                     	sq.dlez \$r3\? \[\$r3\] = \$r44r45;;

    17a4:	04 f0 b9 34                                     	sq -64 \(0xffffffc0\)\[\$r4\] = \$r46r47;;

    17a8:	04 00 b9 b4 00 00 80 1f                         	sq -8589934592 \(0xfffffffe00000000\)\[\$r4\] = \$r46r47;;

    17b0:	45 f1 12 7a                                     	srabos \$r4 = \$r5, \$r5;;

    17b4:	c6 e1 16 7a                                     	srabos \$r5 = \$r6, 7 \(0x7\);;

    17b8:	c6 61 1a 7a                                     	srad \$r6 = \$r6, \$r7;;

    17bc:	c7 21 1e 7a                                     	srad \$r7 = \$r7, 7 \(0x7\);;

    17c0:	08 92 22 7a                                     	srahqs \$r8 = \$r8, \$r8;;

    17c4:	c9 51 26 7a                                     	srahqs \$r9 = \$r9, 7 \(0x7\);;

    17c8:	8a 82 26 7a                                     	srawps \$r9 = \$r10, \$r10;;

    17cc:	cb 41 2a 7a                                     	srawps \$r10 = \$r11, 7 \(0x7\);;

    17d0:	0b 73 2e 7a                                     	sraw \$r11 = \$r11, \$r12;;

    17d4:	cd 31 32 7a                                     	sraw \$r12 = \$r13, 7 \(0x7\);;

    17d8:	8e f3 36 7b                                     	srlbos \$r13 = \$r14, \$r14;;

    17dc:	cf e1 3e 7b                                     	srlbos \$r15 = \$r15, 7 \(0x7\);;

    17e0:	10 64 42 7b                                     	srld \$r16 = \$r16, \$r16;;

    17e4:	d1 21 46 7b                                     	srld \$r17 = \$r17, 7 \(0x7\);;

    17e8:	92 94 46 7b                                     	srlhqs \$r17 = \$r18, \$r18;;

    17ec:	d3 51 4a 7b                                     	srlhqs \$r18 = \$r19, 7 \(0x7\);;

    17f0:	13 85 4e 7b                                     	srlwps \$r19 = \$r19, \$r20;;

    17f4:	d4 41 52 7b                                     	srlwps \$r20 = \$r20, 7 \(0x7\);;

    17f8:	55 75 56 7b                                     	srlw \$r21 = \$r21, \$r21;;

    17fc:	d6 31 5a 7b                                     	srlw \$r22 = \$r22, 7 \(0x7\);;

    1800:	d7 f5 5a 78                                     	srsbos \$r22 = \$r23, \$r23;;

    1804:	d8 e1 5e 78                                     	srsbos \$r23 = \$r24, 7 \(0x7\);;

    1808:	58 66 62 78                                     	srsd \$r24 = \$r24, \$r25;;

    180c:	d9 21 66 78                                     	srsd \$r25 = \$r25, 7 \(0x7\);;

    1810:	9a 96 6a 78                                     	srshqs \$r26 = \$r26, \$r26;;

    1814:	db 51 6e 78                                     	srshqs \$r27 = \$r27, 7 \(0x7\);;

    1818:	1c 87 6e 78                                     	srswps \$r27 = \$r28, \$r28;;

    181c:	dd 41 72 78                                     	srswps \$r28 = \$r29, 7 \(0x7\);;

    1820:	9d 77 76 78                                     	srsw \$r29 = \$r29, \$r30;;

    1824:	de 31 7a 78                                     	srsw \$r30 = \$r30, 7 \(0x7\);;

    1828:	00 00 a8 0f                                     	stop;;

    182c:	df a7 7d 7e                                     	stsud \$r31 = \$r31, \$r31;;

    1830:	e0 a7 81 fe ff ff ff 00                         	stsud \$r32 = \$r32, 536870911 \(0x1fffffff\);;

    1838:	61 f8 81 7e                                     	stsuhq \$r32 = \$r33, \$r33;;

    183c:	e2 ff 85 fe ff ff ff 00                         	stsuhq \$r33 = \$r34, 536870911 \(0x1fffffff\).@;;

    1844:	e2 e8 89 7e                                     	stsuwp \$r34 = \$r34, \$r35;;

    1848:	e3 e7 8d fe ff ff ff 00                         	stsuwp \$r35 = \$r35, 536870911 \(0x1fffffff\);;

    1850:	24 b9 91 7e                                     	stsuw \$r36 = \$r36, \$r36;;

    1854:	e5 b7 95 fe ff ff ff 00                         	stsuw \$r37 = \$r37, 536870911 \(0x1fffffff\);;

    185c:	66 f9 9b 32                                     	sw.xs \$r37\[\$r38\] = \$r38;;

    1860:	e6 ff 9d b2 ff ff ff 9f ff ff ff 18             	sw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r38\] = \$r39;;

    186c:	e7 59 a3 b2 00 00 00 98 00 00 80 1f             	sw.dgtz \$r39\? -1125899906842624 \(0xfffc000000000000\)\[\$r39\] = \$r40;;

    1878:	28 6a a7 b2 00 00 80 1f                         	sw.odd \$r40\? -8388608 \(0xff800000\)\[\$r40\] = \$r41;;

    1880:	69 7a ab 32                                     	sw.even \$r41\? \[\$r41\] = \$r42;;

    1884:	2a f0 a9 32                                     	sw -64 \(0xffffffc0\)\[\$r42\] = \$r42;;

    1888:	2b 00 ad b2 00 00 80 1f                         	sw -8589934592 \(0xfffffffe00000000\)\[\$r43\] = \$r43;;

    1890:	2c 70 af 68                                     	sxbd \$r43 = \$r44;;

    1894:	2c f0 b3 68                                     	sxhd \$r44 = \$r44;;

    1898:	2d 50 b6 76                                     	sxlbhq \$r45 = \$r45;;

    189c:	2e 40 b6 76                                     	sxlhwp \$r45 = \$r46;;

    18a0:	2e 50 ba 77                                     	sxmbhq \$r46 = \$r46;;

    18a4:	2f 40 be 77                                     	sxmhwp \$r47 = \$r47;;

    18a8:	30 f0 bf 69                                     	sxwd \$r47 = \$r48;;

    18ac:	30 00 b4 0f                                     	syncgroup \$r48;;

    18b0:	00 00 8c 0f                                     	tlbdinval;;

    18b4:	00 00 90 0f                                     	tlbiinval;;

    18b8:	00 00 84 0f                                     	tlbprobe;;

    18bc:	00 00 80 0f                                     	tlbread;;

    18c0:	00 00 88 0f                                     	tlbwrite;;

    18c4:	30 00 b0 0f                                     	waitit \$r48;;

    18c8:	71 00 b8 0f                                     	wfxl \$ps, \$r49;;

    18cc:	b1 00 b8 0f                                     	wfxl \$pcr, \$r49;;

    18d0:	71 00 b8 0f                                     	wfxl \$ps, \$r49;;

    18d4:	72 00 bc 0f                                     	wfxm \$ps, \$r50;;

    18d8:	b2 00 bc 0f                                     	wfxm \$pcr, \$r50;;

    18dc:	b2 00 bc 0f                                     	wfxm \$pcr, \$r50;;

    18e0:	33 80 5c 00                                     	xaccesso \$r20r21r22r23 = \$a0..a1, \$r51;;

    18e4:	73 80 6c 00                                     	xaccesso \$r24r25r26r27 = \$a0..a3, \$r51;;

    18e8:	f3 80 7c 00                                     	xaccesso \$r28r29r30r31 = \$a0..a7, \$r51;;

    18ec:	f4 81 8c 00                                     	xaccesso \$r32r33r34r35 = \$a0..a15, \$r52;;

    18f0:	f4 83 9c 00                                     	xaccesso \$r36r37r38r39 = \$a0..a31, \$r52;;

    18f4:	f4 87 ac 00                                     	xaccesso \$r40r41r42r43 = \$a0..a63, \$r52;;

    18f8:	b5 80 00 01                                     	xaligno \$a0 = \$a2..a3, \$r53;;

    18fc:	75 81 00 01                                     	xaligno \$a0 = \$a4..a7, \$r53;;

    1900:	f5 82 00 01                                     	xaligno \$a0 = \$a8..a15, \$r53;;

    1904:	f6 85 04 01                                     	xaligno \$a1 = \$a16..a31, \$r54;;

    1908:	f6 8b 04 01                                     	xaligno \$a1 = \$a32..a63, \$r54;;

    190c:	f6 87 04 01                                     	xaligno \$a1 = \$a0..a63, \$r54;;

    1910:	82 60 0b 07                                     	xandno \$a2 = \$a2, \$a2;;

    1914:	c3 00 0f 07                                     	xando \$a3 = \$a3, \$a3;;

    1918:	04 01 13 05                                     	xclampwo \$a4 = \$a4, \$a4;;

    191c:	40 01 14 01                                     	xcopyo \$a5 = \$a5;;

    1920:	00 01 05 07                                     	xcopyv \$a0a1a2a3 = \$a4a5a6a7;;

    1924:	00 00 04 07                                     	xcopyx \$a0a1 = \$a0a1;;

    1928:	86 41 17 07                                     	xeoro \$a5 = \$a6, \$a6;;

    192c:	87 c1 0a 04                                     	xffma44hw.rna.s \$a2a3 = \$a6, \$a7;;

    1930:	c8 01 1e 05                                     	xfmaxhx \$a7 = \$a7, \$a8;;

    1934:	09 02 21 05                                     	xfminhx \$a8 = \$a8, \$a9;;

    1938:	04 51 0b 04                                     	xfmma484hw.rnz \$a2a3 = \$a4a5, \$a4a5;;

    193c:	80 e1 24 05                                     	xfnarrow44wh.ro.s \$a9 = \$a6a7;;

    1940:	b7 72 27 01                                     	xfscalewo \$a9 = \$a10, \$r55;;

    1944:	ca 72 2b 07                                     	xiorno \$a10 = \$a10, \$a11;;

    1948:	0b 23 2f 07                                     	xioro \$a11 = \$a11, \$a12;;

    194c:	f7 ed 23 2a                                     	xlo.u.q0 \$a8a9a10a11 = \$r55\[\$r55\];;

    1950:	38 fe 33 23                                     	xlo.us.xs \$a12 = \$r56\[\$r56\];;

    1954:	39 0e 37 a8 00 00 00 98 00 00 80 1f             	xlo.dnez.q1 \$r56\? \$a12a13a14a15 = -1125899906842624 \(0xfffc000000000000\)\[\$r57\];;

    1960:	79 1e 4b a9 00 00 80 1f                         	xlo.s.deqz.q2 \$r57\? \$a16a17a18a19 = -8388608 \(0xff800000\)\[\$r57\];;

    1968:	ba 2e 5f 2a                                     	xlo.u.wnez.q3 \$r58\? \$a20a21a22a23 = \[\$r58\];;

    196c:	bb 3e 33 a3 00 00 00 98 00 00 80 1f             	xlo.us.weqz \$r58\? \$a12 = -1125899906842624 \(0xfffc000000000000\)\[\$r59\];;

    1978:	fb 4e 37 a0 00 00 80 1f                         	xlo.mt \$r59\? \$a13 = -8388608 \(0xff800000\)\[\$r59\];;

    1980:	3c 5f 37 21                                     	xlo.s.mf \$r60\? \$a13 = \[\$r60\];;

    1984:	3d 0f 13 ae 00 00 00 98 00 00 80 1f             	xlo.u \$a4..a5, \$r60 = -1125899906842624 \(0xfffc000000000000\)\[\$r61\];;

    1990:	7d 1f 1b af 00 00 80 1f                         	xlo.us.q \$a6..a7, \$r61 = -8388608 \(0xff800000\)\[\$r61\];;

    1998:	be 2f 23 2c                                     	xlo.d \$a8..a9, \$r62 = \[\$r62\];;

    199c:	bf 3f 27 ad 00 00 00 98 00 00 80 1f             	xlo.s.w \$a8..a11, \$r62 = -1125899906842624 \(0xfffc000000000000\)\[\$r63\];;

    19a8:	ff 4f 37 ae 00 00 80 1f                         	xlo.u.h \$a12..a15, \$r63 = -8388608 \(0xff800000\)\[\$r63\];;

    19b0:	00 50 47 2f                                     	xlo.us.b \$a16..a19, \$r0 = \[\$r0\];;

    19b4:	01 00 4f ac 00 00 00 98 00 00 80 1f             	xlo \$a16..a23, \$r0 = -1125899906842624 \(0xfffc000000000000\)\[\$r1\];;

    19c0:	41 10 6f ad 00 00 80 1f                         	xlo.s.q \$a24..a31, \$r1 = -8388608 \(0xff800000\)\[\$r1\];;

    19c8:	82 20 8f 2e                                     	xlo.u.d \$a32..a39, \$r2 = \[\$r2\];;

    19cc:	83 30 9f af 00 00 00 98 00 00 80 1f             	xlo.us.w \$a32..a47, \$r2 = -1125899906842624 \(0xfffc000000000000\)\[\$r3\];;

    19d8:	c3 40 df ac 00 00 80 1f                         	xlo.h \$a48..a63, \$r3 = -8388608 \(0xff800000\)\[\$r3\];;

    19e0:	04 51 1f 2d                                     	xlo.s.b \$a0..a15, \$r4 = \[\$r4\];;

    19e4:	05 01 3f ae 00 00 00 98 00 00 80 1f             	xlo.u \$a0..a31, \$r4 = -1125899906842624 \(0xfffc000000000000\)\[\$r5\];;

    19f0:	45 11 bf af 00 00 80 1f                         	xlo.us.q \$a32..a63, \$r5 = -8388608 \(0xff800000\)\[\$r5\];;

    19f8:	86 21 3f 2c                                     	xlo.d \$a0..a31, \$r6 = \[\$r6\];;

    19fc:	87 31 7f ad 00 00 00 98 00 00 80 1f             	xlo.s.w \$a0..a63, \$r6 = -1125899906842624 \(0xfffc000000000000\)\[\$r7\];;

    1a08:	c7 41 7f ae 00 00 80 1f                         	xlo.u.h \$a0..a63, \$r7 = -8388608 \(0xff800000\)\[\$r7\];;

    1a10:	08 52 7f 2f                                     	xlo.us.b \$a0..a63, \$r8 = \[\$r8\];;

    1a14:	c8 ff 61 a8 ff ff ff 9f ff ff ff 18             	xlo.q0 \$a24a25a26a27 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r8\];;

    1a20:	09 f0 75 29                                     	xlo.s.q1 \$a28a29a30a31 = -64 \(0xffffffc0\)\[\$r9\];;

    1a24:	09 00 89 aa 00 00 80 1f                         	xlo.u.q2 \$a32a33a34a35 = -8589934592 \(0xfffffffe00000000\)\[\$r9\];;

    1a2c:	c9 ff 35 a3 ff ff ff 9f ff ff ff 18             	xlo.us \$a13 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r9\];;

    1a38:	0a f0 39 20                                     	xlo \$a14 = -64 \(0xffffffc0\)\[\$r10\];;

    1a3c:	0a 00 39 a1 00 00 80 1f                         	xlo.s \$a14 = -8589934592 \(0xfffffffe00000000\)\[\$r10\];;

    1a44:	8f 03 18 03                                     	xmadd44bw0 \$a6a7 = \$a14, \$a15;;

    1a48:	cf 03 24 03                                     	xmadd44bw1 \$a8a9 = \$a15, \$a15;;

    1a4c:	10 84 40 04                                     	xmaddifwo.rn.s \$a16 = \$a16, \$a16;;

    1a50:	51 04 22 03                                     	xmaddsu44bw0 \$a8a9 = \$a17, \$a17;;

    1a54:	52 04 2e 03                                     	xmaddsu44bw1 \$a10a11 = \$a17, \$a18;;

    1a58:	92 04 29 03                                     	xmaddu44bw0 \$a10a11 = \$a18, \$a18;;

    1a5c:	d3 04 35 03                                     	xmaddu44bw1 \$a12a13 = \$a19, \$a19;;

    1a60:	8e 03 30 02                                     	xmma4164bw \$a12a13 = \$a14a15, \$a14a15;;

    1a64:	d4 04 44 02                                     	xmma484bw \$a16a17 = \$a19, \$a20;;

    1a68:	92 04 42 02                                     	xmmasu4164bw \$a16a17 = \$a18a19, \$a18a19;;

    1a6c:	14 05 56 02                                     	xmmasu484bw \$a20a21 = \$a20, \$a20;;

    1a70:	96 05 51 02                                     	xmmau4164bw \$a20a21 = \$a22a23, \$a22a23;;

    1a74:	55 05 65 02                                     	xmmau484bw \$a24a25 = \$a21, \$a21;;

    1a78:	9a 06 63 02                                     	xmmaus4164bw \$a24a25 = \$a26a27, \$a26a27;;

    1a7c:	56 05 77 02                                     	xmmaus484bw \$a28a29 = \$a21, \$a22;;

    1a80:	00 c0 28 00                                     	xmovefd \$r10 = \$a0_x;;

    1a84:	80 85 b4 00                                     	xmovefo \$r44r45r46r47 = \$a22;;

    1a88:	00 00 c4 00                                     	xmovefq \$r48r49 = \$a0_lo;;

    1a8c:	0b e0 03 73                                     	xmovetd \$a0_t = \$r11;;

    1a90:	0b e0 03 70                                     	xmovetd \$a0_x = \$r11;;

    1a94:	0b e0 03 71                                     	xmovetd \$a0_y = \$r11;;

    1a98:	0c e0 03 72                                     	xmovetd \$a0_z = \$r12;;

    1a9c:	4c e3 03 74                                     	xmovetq \$a0_lo = \$r12, \$r13;;

    1aa0:	8d e3 03 75                                     	xmovetq \$a0_hi = \$r13, \$r14;;

    1aa4:	d7 15 59 04                                     	xmsbfifwo.ru \$a22 = \$a23, \$a23;;

    1aa8:	00 1a 95 07                                     	xcopyv.td \$a36a37a38a39 = \$a40a41a42a43;;

    1aac:	18 16 5f 07                                     	xnando \$a23 = \$a24, \$a24;;

    1ab0:	59 56 63 07                                     	xneoro \$a24 = \$a25, \$a25;;

    1ab4:	9a 36 67 07                                     	xnioro \$a25 = \$a26, \$a26;;

    1ab8:	db 36 6b 07                                     	xnioro \$a26 = \$a27, \$a27;;

    1abc:	1c 57 6f 07                                     	xneoro \$a27 = \$a28, \$a28;;

    1ac0:	cf ff 38 ec ff ff ff 87 ff ff ff 00             	eord \$r14 = \$r15, 2305843009213693951 \(0x1fffffffffffffff\);;

    1acc:	10 04 3d 7c                                     	eord \$r15 = \$r16, \$r16;;

    1ad0:	11 f0 40 6c                                     	eord \$r16 = \$r17, -64 \(0xffffffc0\);;

    1ad4:	11 00 44 ec 00 00 80 07                         	eord \$r17 = \$r17, -8589934592 \(0xfffffffe00000000\);;

    1adc:	5d 77 73 07                                     	xiorno \$a28 = \$a29, \$a29;;

    1ae0:	9e 27 77 07                                     	xioro \$a29 = \$a30, \$a30;;

    1ae4:	92 c0 4b 72                                     	eorrbod \$r18 = \$r18;;

    1ae8:	53 c0 4b 72                                     	eorrhqd \$r18 = \$r19;;

    1aec:	13 c0 4f 72                                     	eorrwpd \$r19 = \$r19;;

    1af0:	14 15 51 7c                                     	eorw \$r20 = \$r20, \$r20;;

    1af4:	15 f0 54 7c                                     	eorw \$r21 = \$r21, -64 \(0xffffffc0\);;

    1af8:	16 00 54 fc 00 00 80 07                         	eorw \$r21 = \$r22, -8589934592 \(0xfffffffe00000000\);;

    1b00:	00 e0 7b 78                                     	xrecvo.f \$a30;;

    1b04:	df e7 7e 07                                     	xsbmm8dq \$a31 = \$a31, \$a31;;

    1b08:	20 f8 82 07                                     	xsbmmt8dq \$a32 = \$a32, \$a32;;

    1b0c:	40 e8 03 77                                     	xsendo.b \$a33;;

    1b10:	40 e8 87 7e                                     	xsendrecvo.f.b \$a33, \$a33;;

    1b14:	96 e5 8b 35                                     	xso \$r22\[\$r22\] = \$a34;;

    1b18:	d7 ff 89 b5 ff ff ff 9f ff ff ff 18             	xso 2305843009213693951 \(0x1fffffffffffffff\)\[\$r23\] = \$a34;;

    1b24:	d7 65 8b b5 00 00 00 98 00 00 80 1f             	xso.mtc \$r23\? -1125899906842624 \(0xfffc000000000000\)\[\$r23\] = \$a34;;

    1b30:	18 76 8f b5 00 00 80 1f                         	xso.mfc \$r24\? -8388608 \(0xff800000\)\[\$r24\] = \$a35;;

    1b38:	19 06 8f 35                                     	xso.dnez \$r24\? \[\$r25\] = \$a35;;

    1b3c:	19 f0 8d 35                                     	xso -64 \(0xffffffc0\)\[\$r25\] = \$a35;;

    1b40:	19 00 91 b5 00 00 80 1f                         	xso -8589934592 \(0xfffffffe00000000\)\[\$r25\] = \$a36;;

    1b48:	c0 ff 91 ee ff ff ff 87 ff ff ff 00             	xsplatdo \$a36 = 2305843009213693951 \(0x1fffffffffffffff\);;

    1b54:	3c 00 91 ee 00 00 00 00                         	xsplatdo \$a36 = -549755813888 \(0xffffff8000000000\);;

    1b5c:	00 f0 95 6e                                     	xsplatdo \$a37 = -4096 \(0xfffff000\);;

    1b60:	40 19 b1 07                                     	xsplatov.td \$a44a45a46a47 = \$a37;;

    1b64:	40 19 70 07                                     	xsplatox.zd \$a28a29 = \$a37;;

    1b68:	80 09 c1 06                                     	xsx48bw \$a48a49a50a51 = \$a38;;

    1b6c:	00 0d 98 06                                     	xtrunc48wb \$a38 = \$a52a53a54a55;;

    1b70:	e7 49 9b 07                                     	xeoro \$a38 = \$a39, \$a39;;

    1b74:	c0 09 e5 06                                     	xzx48bw \$a56a57a58a59 = \$a39;;

    1b78:	da 3f 68 78                                     	zxbd \$r26 = \$r26;;

    1b7c:	1b f0 6b 64                                     	zxhd \$r26 = \$r27;;

    1b80:	1b 50 6e 74                                     	zxlbhq \$r27 = \$r27;;

    1b84:	1c 40 72 74                                     	zxlhwp \$r28 = \$r28;;

    1b88:	1d 50 72 75                                     	zxmbhq \$r28 = \$r29;;

    1b8c:	1d 40 76 75                                     	zxmhwp \$r29 = \$r29;;

    1b90:	de ff 78 78                                     	zxwd \$r30 = \$r30;;

