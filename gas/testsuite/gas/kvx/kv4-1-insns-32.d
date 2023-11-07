#as: -m32 -march=kv4-1
#objdump: -d
.*\/kv4-1-insns-32.o:     file format elf32-kvx

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

      70:	10 c4 40 7f                                     	abdubo \$r16 = \$r16, \$r16;;

      74:	d1 c7 44 ff ff ff ff 00                         	abdubo \$r17 = \$r17, 536870911 \(0x1fffffff\);;

      7c:	92 64 44 7f                                     	abdud \$r17 = \$r18, \$r18;;

      80:	d3 6f 48 ff ff ff ff 00                         	abdud \$r18 = \$r19, 536870911 \(0x1fffffff\).@;;

      88:	13 b5 4c 7f                                     	abduhq \$r19 = \$r19, \$r20;;

      8c:	d4 b7 50 ff ff ff ff 00                         	abduhq \$r20 = \$r20, 536870911 \(0x1fffffff\);;

      94:	55 a5 54 7f                                     	abduwp \$r21 = \$r21, \$r21;;

      98:	d6 af 58 ff ff ff ff 00                         	abduwp \$r22 = \$r22, 536870911 \(0x1fffffff\).@;;

      a0:	d7 75 58 7f                                     	abduw \$r22 = \$r23, \$r23;;

      a4:	d8 77 5c ff ff ff ff 00                         	abduw \$r23 = \$r24, 536870911 \(0x1fffffff\);;

      ac:	58 26 61 71                                     	abdwp \$r24 = \$r24, \$r25;;

      b0:	d9 27 65 f1 ff ff ff 00                         	abdwp \$r25 = \$r25, 536870911 \(0x1fffffff\);;

      b8:	9a 16 69 71                                     	abdw \$r26 = \$r26, \$r26;;

      bc:	db 17 6d f1 ff ff ff 00                         	abdw \$r27 = \$r27, 536870911 \(0x1fffffff\);;

      c4:	1c a0 6e f2 00 00 00 00                         	absbo \$r27 = \$r28;;

      cc:	1c 00 70 61                                     	absd \$r28 = \$r28;;

      d0:	1d 30 75 f1 00 00 00 00                         	abshq \$r29 = \$r29;;

      d8:	1e a0 76 f3 00 00 00 00                         	abssbo \$r29 = \$r30;;

      e0:	1e 00 79 f0 00 00 00 00                         	abssd \$r30 = \$r30;;

      e8:	1f 30 7d f0 00 00 00 00                         	absshq \$r31 = \$r31;;

      f0:	20 20 7d f0 00 00 00 00                         	absswp \$r31 = \$r32;;

      f8:	20 10 81 f0 00 00 00 00                         	abssw \$r32 = \$r32;;

     100:	21 20 85 f1 00 00 00 00                         	abswp \$r33 = \$r33;;

     108:	22 10 85 f1 00 00 00 00                         	absw \$r33 = \$r34;;

     110:	22 a0 8b bc 00 00 00 90 00 00 80 17             	acswapd.v \$r34, -1125899906842624 \(0xfffc000000000000\)\[\$r34\] = \$r0r1;;

     11c:	23 b0 8f bd 00 00 80 17                         	acswapd.g \$r35, -8388608 \(0xff800000\)\[\$r35\] = \$r0r1;;

     124:	a4 a0 8f 3e                                     	acswapd.v.s \$r35, \[\$r36\] = \$r2r3;;

     128:	24 d0 0b bc 00 00 00 90 00 00 80 17             	acswapq \$r2r3, -1125899906842624 \(0xfffc000000000000\)\[\$r36\] = \$r0r1r2r3;;

     134:	24 c1 13 bd 00 00 80 17                         	acswapq.v.g \$r4r5, -8388608 \(0xff800000\)\[\$r36\] = \$r4r5r6r7;;

     13c:	25 d2 13 3e                                     	acswapq.s \$r4r5, \[\$r37\] = \$r8r9r10r11;;

     140:	a5 81 97 bc 00 00 00 90 00 00 80 17             	acswapw.v \$r37, -1125899906842624 \(0xfffc000000000000\)\[\$r37\] = \$r6r7;;

     14c:	a6 91 9b bd 00 00 80 17                         	acswapw.g \$r38, -8388608 \(0xff800000\)\[\$r38\] = \$r6r7;;

     154:	27 82 9b 3e                                     	acswapw.v.s \$r38, \[\$r39\] = \$r8r9;;

     158:	27 aa 9e 70                                     	addbo \$r39 = \$r39, \$r40;;

     15c:	e8 af a2 f0 ff ff ff 00                         	addbo \$r40 = \$r40, 536870911 \(0x1fffffff\).@;;

     164:	69 9a a5 7e                                     	addcd.i \$r41 = \$r41, \$r41;;

     168:	ea 97 a9 fe ff ff ff 00                         	addcd.i \$r42 = \$r42, 536870911 \(0x1fffffff\);;

     170:	eb 8a a9 7e                                     	addcd \$r42 = \$r43, \$r43;;

     174:	ec 87 ad fe ff ff ff 00                         	addcd \$r43 = \$r44, 536870911 \(0x1fffffff\);;

     17c:	ec ff b0 e2 ff ff ff 87 ff ff ff 00             	addd \$r44 = \$r44, 2305843009213693951 \(0x1fffffffffffffff\);;

     188:	6d 0b b5 72                                     	addd \$r45 = \$r45, \$r45;;

     18c:	2e f0 b8 62                                     	addd \$r46 = \$r46, -64 \(0xffffffc0\);;

     190:	2f 00 b8 e2 00 00 80 07                         	addd \$r46 = \$r47, -8589934592 \(0xfffffffe00000000\);;

     198:	2f 3c bd 72                                     	addhq \$r47 = \$r47, \$r48;;

     19c:	f0 37 c1 f2 ff ff ff 00                         	addhq \$r48 = \$r48, 536870911 \(0x1fffffff\);;

     1a4:	b1 c0 c6 76                                     	addrbod \$r49 = \$r49;;

     1a8:	72 c0 c6 76                                     	addrhqd \$r49 = \$r50;;

     1ac:	32 c0 ca 76                                     	addrwpd \$r50 = \$r50;;

     1b0:	f3 bc ce 7c                                     	addsbo \$r51 = \$r51, \$r51;;

     1b4:	f4 bf d2 fc ff ff ff 00                         	addsbo \$r52 = \$r52, 536870911 \(0x1fffffff\).@;;

     1bc:	75 4d d1 7c                                     	addsd \$r52 = \$r53, \$r53;;

     1c0:	f6 47 d5 fc ff ff ff 00                         	addsd \$r53 = \$r54, 536870911 \(0x1fffffff\);;

     1c8:	f6 7d d9 7c                                     	addshq \$r54 = \$r54, \$r55;;

     1cc:	f7 7f dd fc ff ff ff 00                         	addshq \$r55 = \$r55, 536870911 \(0x1fffffff\).@;;

     1d4:	38 6e e1 7c                                     	addswp \$r56 = \$r56, \$r56;;

     1d8:	f9 67 e5 fc ff ff ff 00                         	addswp \$r57 = \$r57, 536870911 \(0x1fffffff\);;

     1e0:	ba 5e e5 7c                                     	addsw \$r57 = \$r58, \$r58;;

     1e4:	fb 57 e9 fc ff ff ff 00                         	addsw \$r58 = \$r59, 536870911 \(0x1fffffff\);;

     1ec:	bb c0 ee 7a                                     	addurbod \$r59 = \$r59;;

     1f0:	7c c0 f2 7a                                     	addurhqd \$r60 = \$r60;;

     1f4:	3d c0 f2 7a                                     	addurwpd \$r60 = \$r61;;

     1f8:	bd bf f6 7e                                     	addusbo \$r61 = \$r61, \$r62;;

     1fc:	fe bf fa fe ff ff ff 00                         	addusbo \$r62 = \$r62, 536870911 \(0x1fffffff\).@;;

     204:	ff 4f fd 7e                                     	addusd \$r63 = \$r63, \$r63;;

     208:	c0 47 01 fe ff ff ff 00                         	addusd \$r0 = \$r0, 536870911 \(0x1fffffff\);;

     210:	41 70 01 7e                                     	addushq \$r0 = \$r1, \$r1;;

     214:	c2 7f 05 fe ff ff ff 00                         	addushq \$r1 = \$r2, 536870911 \(0x1fffffff\).@;;

     21c:	c2 60 09 7e                                     	adduswp \$r2 = \$r2, \$r3;;

     220:	c3 67 0d fe ff ff ff 00                         	adduswp \$r3 = \$r3, 536870911 \(0x1fffffff\);;

     228:	04 51 11 7e                                     	addusw \$r4 = \$r4, \$r4;;

     22c:	c5 57 15 fe ff ff ff 00                         	addusw \$r5 = \$r5, 536870911 \(0x1fffffff\);;

     234:	86 91 15 7c                                     	adduwd \$r5 = \$r6, \$r6;;

     238:	c7 97 19 fc ff ff ff 00                         	adduwd \$r6 = \$r7, 536870911 \(0x1fffffff\);;

     240:	07 82 1d 7c                                     	addwd \$r7 = \$r7, \$r8;;

     244:	c8 87 21 fc ff ff ff 00                         	addwd \$r8 = \$r8, 536870911 \(0x1fffffff\);;

     24c:	49 22 25 72                                     	addwp \$r9 = \$r9, \$r9;;

     250:	ca 2f 29 f2 ff ff ff 00                         	addwp \$r10 = \$r10, 536870911 \(0x1fffffff\).@;;

     258:	cb 12 29 72                                     	addw \$r10 = \$r11, \$r11;;

     25c:	cc 17 2d f2 ff ff ff 00                         	addw \$r11 = \$r12, 536870911 \(0x1fffffff\);;

     264:	4d b3 32 76                                     	addx16bo \$r12 = \$r13, \$r13;;

     268:	ce b7 3a f6 ff ff ff 00                         	addx16bo \$r14 = \$r14, 536870911 \(0x1fffffff\);;

     270:	0f 44 3d 76                                     	addx16d \$r15 = \$r15, \$r16;;

     274:	d0 4f 41 f6 ff ff ff 00                         	addx16d \$r16 = \$r16, 536870911 \(0x1fffffff\).@;;

     27c:	51 74 45 76                                     	addx16hq \$r17 = \$r17, \$r17;;

     280:	d2 77 49 f6 ff ff ff 00                         	addx16hq \$r18 = \$r18, 536870911 \(0x1fffffff\);;

     288:	d3 94 49 76                                     	addx16uwd \$r18 = \$r19, \$r19;;

     28c:	d4 97 4d f6 ff ff ff 00                         	addx16uwd \$r19 = \$r20, 536870911 \(0x1fffffff\);;

     294:	54 85 51 76                                     	addx16wd \$r20 = \$r20, \$r21;;

     298:	d5 87 55 f6 ff ff ff 00                         	addx16wd \$r21 = \$r21, 536870911 \(0x1fffffff\);;

     2a0:	96 65 59 76                                     	addx16wp \$r22 = \$r22, \$r22;;

     2a4:	d7 6f 5d f6 ff ff ff 00                         	addx16wp \$r23 = \$r23, 536870911 \(0x1fffffff\).@;;

     2ac:	18 56 5d 76                                     	addx16w \$r23 = \$r24, \$r24;;

     2b0:	d9 57 61 f6 ff ff ff 00                         	addx16w \$r24 = \$r25, 536870911 \(0x1fffffff\);;

     2b8:	99 b6 66 70                                     	addx2bo \$r25 = \$r25, \$r26;;

     2bc:	da b7 6a f0 ff ff ff 00                         	addx2bo \$r26 = \$r26, 536870911 \(0x1fffffff\);;

     2c4:	db 46 6d 70                                     	addx2d \$r27 = \$r27, \$r27;;

     2c8:	dc 4f 71 f0 ff ff ff 00                         	addx2d \$r28 = \$r28, 536870911 \(0x1fffffff\).@;;

     2d0:	5d 77 71 70                                     	addx2hq \$r28 = \$r29, \$r29;;

     2d4:	de 77 75 f0 ff ff ff 00                         	addx2hq \$r29 = \$r30, 536870911 \(0x1fffffff\);;

     2dc:	de 97 79 70                                     	addx2uwd \$r30 = \$r30, \$r31;;

     2e0:	df 97 7d f0 ff ff ff 00                         	addx2uwd \$r31 = \$r31, 536870911 \(0x1fffffff\);;

     2e8:	20 88 81 70                                     	addx2wd \$r32 = \$r32, \$r32;;

     2ec:	e1 87 85 f0 ff ff ff 00                         	addx2wd \$r33 = \$r33, 536870911 \(0x1fffffff\);;

     2f4:	a2 68 85 70                                     	addx2wp \$r33 = \$r34, \$r34;;

     2f8:	e3 6f 89 f0 ff ff ff 00                         	addx2wp \$r34 = \$r35, 536870911 \(0x1fffffff\).@;;

     300:	23 59 8d 70                                     	addx2w \$r35 = \$r35, \$r36;;

     304:	e4 57 91 f0 ff ff ff 00                         	addx2w \$r36 = \$r36, 536870911 \(0x1fffffff\);;

     30c:	65 49 95 78                                     	addx32d \$r37 = \$r37, \$r37;;

     310:	e6 47 99 f8 ff ff ff 00                         	addx32d \$r38 = \$r38, 536870911 \(0x1fffffff\);;

     318:	e7 99 99 78                                     	addx32uwd \$r38 = \$r39, \$r39;;

     31c:	e8 97 9d f8 ff ff ff 00                         	addx32uwd \$r39 = \$r40, 536870911 \(0x1fffffff\);;

     324:	68 8a a1 78                                     	addx32wd \$r40 = \$r40, \$r41;;

     328:	e9 87 a5 f8 ff ff ff 00                         	addx32wd \$r41 = \$r41, 536870911 \(0x1fffffff\);;

     330:	aa 5a a9 78                                     	addx32w \$r42 = \$r42, \$r42;;

     334:	eb 57 ad f8 ff ff ff 00                         	addx32w \$r43 = \$r43, 536870911 \(0x1fffffff\);;

     33c:	2c bb ae 72                                     	addx4bo \$r43 = \$r44, \$r44;;

     340:	ed bf b2 f2 ff ff ff 00                         	addx4bo \$r44 = \$r45, 536870911 \(0x1fffffff\).@;;

     348:	ad 4b b5 72                                     	addx4d \$r45 = \$r45, \$r46;;

     34c:	ee 47 b9 f2 ff ff ff 00                         	addx4d \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     354:	ef 7b bd 72                                     	addx4hq \$r47 = \$r47, \$r47;;

     358:	f0 7f c1 f2 ff ff ff 00                         	addx4hq \$r48 = \$r48, 536870911 \(0x1fffffff\).@;;

     360:	71 9c c1 72                                     	addx4uwd \$r48 = \$r49, \$r49;;

     364:	f2 97 c5 f2 ff ff ff 00                         	addx4uwd \$r49 = \$r50, 536870911 \(0x1fffffff\);;

     36c:	f2 8c c9 72                                     	addx4wd \$r50 = \$r50, \$r51;;

     370:	f3 87 cd f2 ff ff ff 00                         	addx4wd \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     378:	34 6d d1 72                                     	addx4wp \$r52 = \$r52, \$r52;;

     37c:	f5 67 d5 f2 ff ff ff 00                         	addx4wp \$r53 = \$r53, 536870911 \(0x1fffffff\);;

     384:	b6 5d d5 72                                     	addx4w \$r53 = \$r54, \$r54;;

     388:	f7 57 d9 f2 ff ff ff 00                         	addx4w \$r54 = \$r55, 536870911 \(0x1fffffff\);;

     390:	37 4e dd 7a                                     	addx64d \$r55 = \$r55, \$r56;;

     394:	f8 4f e1 fa ff ff ff 00                         	addx64d \$r56 = \$r56, 536870911 \(0x1fffffff\).@;;

     39c:	79 9e e5 7a                                     	addx64uwd \$r57 = \$r57, \$r57;;

     3a0:	fa 97 e9 fa ff ff ff 00                         	addx64uwd \$r58 = \$r58, 536870911 \(0x1fffffff\);;

     3a8:	fb 8e e9 7a                                     	addx64wd \$r58 = \$r59, \$r59;;

     3ac:	fc 87 ed fa ff ff ff 00                         	addx64wd \$r59 = \$r60, 536870911 \(0x1fffffff\);;

     3b4:	7c 5f f1 7a                                     	addx64w \$r60 = \$r60, \$r61;;

     3b8:	fd 57 f5 fa ff ff ff 00                         	addx64w \$r61 = \$r61, 536870911 \(0x1fffffff\);;

     3c0:	be bf fa 74                                     	addx8bo \$r62 = \$r62, \$r62;;

     3c4:	ff b7 fe f4 ff ff ff 00                         	addx8bo \$r63 = \$r63, 536870911 \(0x1fffffff\);;

     3cc:	00 40 fd 74                                     	addx8d \$r63 = \$r0, \$r0;;

     3d0:	c1 4f 01 f4 ff ff ff 00                         	addx8d \$r0 = \$r1, 536870911 \(0x1fffffff\).@;;

     3d8:	81 70 05 74                                     	addx8hq \$r1 = \$r1, \$r2;;

     3dc:	c2 77 09 f4 ff ff ff 00                         	addx8hq \$r2 = \$r2, 536870911 \(0x1fffffff\);;

     3e4:	c3 90 0d 74                                     	addx8uwd \$r3 = \$r3, \$r3;;

     3e8:	c4 97 11 f4 ff ff ff 00                         	addx8uwd \$r4 = \$r4, 536870911 \(0x1fffffff\);;

     3f0:	45 81 11 74                                     	addx8wd \$r4 = \$r5, \$r5;;

     3f4:	c6 87 15 f4 ff ff ff 00                         	addx8wd \$r5 = \$r6, 536870911 \(0x1fffffff\);;

     3fc:	c6 61 19 74                                     	addx8wp \$r6 = \$r6, \$r7;;

     400:	c7 6f 1d f4 ff ff ff 00                         	addx8wp \$r7 = \$r7, 536870911 \(0x1fffffff\).@;;

     408:	08 52 21 74                                     	addx8w \$r8 = \$r8, \$r8;;

     40c:	c9 57 25 f4 ff ff ff 00                         	addx8w \$r9 = \$r9, 536870911 \(0x1fffffff\);;

     414:	09 70 2b bc 00 00 00 90 00 00 80 17             	aladdd -1125899906842624 \(0xfffc000000000000\)\[\$r9\] = \$r10;;

     420:	0a 70 2b bd 00 00 80 17                         	aladdd.g -8388608 \(0xff800000\)\[\$r10\] = \$r10;;

     428:	0b 70 2f 3e                                     	aladdd.s \[\$r11\] = \$r11;;

     42c:	0b 60 33 bc 00 00 00 90 00 00 80 17             	aladdw -1125899906842624 \(0xfffc000000000000\)\[\$r11\] = \$r12;;

     438:	0c 60 37 bd 00 00 80 17                         	aladdw.g -8388608 \(0xff800000\)\[\$r12\] = \$r13;;

     440:	0d 60 3b 3e                                     	aladdw.s \[\$r13\] = \$r14;;

     444:	0f 30 3b bc 00 00 00 90 00 00 80 17             	alclrd \$r14 = -1125899906842624 \(0xfffc000000000000\)\[\$r15\];;

     450:	10 30 3f bd 00 00 80 17                         	alclrd.g \$r15 = -8388608 \(0xff800000\)\[\$r16\];;

     458:	10 30 43 3e                                     	alclrd.s \$r16 = \[\$r16\];;

     45c:	11 20 47 bc 00 00 00 90 00 00 80 17             	alclrw \$r17 = -1125899906842624 \(0xfffc000000000000\)\[\$r17\];;

     468:	12 20 47 bd 00 00 80 17                         	alclrw.g \$r17 = -8388608 \(0xff800000\)\[\$r18\];;

     470:	12 20 4b 3e                                     	alclrw.s \$r18 = \[\$r18\];;

     474:	13 10 4f bc 00 00 00 90 00 00 80 17             	ald \$r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r19\];;

     480:	14 10 4f bd 00 00 80 17                         	ald.g \$r19 = -8388608 \(0xff800000\)\[\$r20\];;

     488:	14 10 53 3e                                     	ald.s \$r20 = \[\$r20\];;

     48c:	15 00 57 bc 00 00 00 90 00 00 80 17             	alw \$r21 = -1125899906842624 \(0xfffc000000000000\)\[\$r21\];;

     498:	16 00 57 bd 00 00 80 17                         	alw.g \$r21 = -8388608 \(0xff800000\)\[\$r22\];;

     4a0:	16 00 5b 3e                                     	alw.s \$r22 = \[\$r22\];;

     4a4:	d7 ff 5c e8 ff ff ff 87 ff ff ff 00             	andd \$r23 = \$r23, 2305843009213693951 \(0x1fffffffffffffff\);;

     4b0:	18 06 5d 78                                     	andd \$r23 = \$r24, \$r24;;

     4b4:	19 f0 60 68                                     	andd \$r24 = \$r25, -64 \(0xffffffc0\);;

     4b8:	19 00 64 e8 00 00 80 07                         	andd \$r25 = \$r25, -8589934592 \(0xfffffffe00000000\);;

     4c0:	da ff 68 ee ff ff ff 87 ff ff ff 00             	andnd \$r26 = \$r26, 2305843009213693951 \(0x1fffffffffffffff\);;

     4cc:	db 06 69 7e                                     	andnd \$r26 = \$r27, \$r27;;

     4d0:	1c f0 6c 6e                                     	andnd \$r27 = \$r28, -64 \(0xffffffc0\);;

     4d4:	1c 00 70 ee 00 00 80 07                         	andnd \$r28 = \$r28, -8589934592 \(0xfffffffe00000000\);;

     4dc:	5d 17 75 7e                                     	andnw \$r29 = \$r29, \$r29;;

     4e0:	de 17 79 fe ff ff ff 00                         	andnw \$r30 = \$r30, 536870911 \(0x1fffffff\);;

     4e8:	9f c0 7a 70                                     	andrbod \$r30 = \$r31;;

     4ec:	5f c0 7e 70                                     	andrhqd \$r31 = \$r31;;

     4f0:	20 c0 82 70                                     	andrwpd \$r32 = \$r32;;

     4f4:	61 18 81 78                                     	andw \$r32 = \$r33, \$r33;;

     4f8:	e2 17 85 f8 ff ff ff 00                         	andw \$r33 = \$r34, 536870911 \(0x1fffffff\);;

     500:	22 50 8b bc 00 00 00 90 00 00 80 17             	asd -1125899906842624 \(0xfffc000000000000\)\[\$r34\] = \$r34;;

     50c:	23 50 8f bd 00 00 80 17                         	asd.g -8388608 \(0xff800000\)\[\$r35\] = \$r35;;

     514:	23 50 93 3e                                     	asd.s \[\$r35\] = \$r36;;

     518:	24 40 93 bc 00 00 00 90 00 00 80 17             	asw -1125899906842624 \(0xfffc000000000000\)\[\$r36\] = \$r36;;

     524:	25 40 97 bd 00 00 80 17                         	asw.g -8388608 \(0xff800000\)\[\$r37\] = \$r37;;

     52c:	25 40 9b 3e                                     	asw.s \[\$r37\] = \$r38;;

     530:	e6 f9 9a 74                                     	avgbo \$r38 = \$r38, \$r39;;

     534:	e7 f7 9e f4 ff ff ff 00                         	avgbo \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     53c:	28 9a a2 74                                     	avghq \$r40 = \$r40, \$r40;;

     540:	e9 9f a6 f4 ff ff ff 00                         	avghq \$r41 = \$r41, 536870911 \(0x1fffffff\).@;;

     548:	aa fa a6 75                                     	avgrbo \$r41 = \$r42, \$r42;;

     54c:	eb f7 aa f5 ff ff ff 00                         	avgrbo \$r42 = \$r43, 536870911 \(0x1fffffff\);;

     554:	2b 9b ae 75                                     	avgrhq \$r43 = \$r43, \$r44;;

     558:	ec 9f b2 f5 ff ff ff 00                         	avgrhq \$r44 = \$r44, 536870911 \(0x1fffffff\).@;;

     560:	6d fb b6 77                                     	avgrubo \$r45 = \$r45, \$r45;;

     564:	ee f7 ba f7 ff ff ff 00                         	avgrubo \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     56c:	ef 9b ba 77                                     	avgruhq \$r46 = \$r47, \$r47;;

     570:	f0 9f be f7 ff ff ff 00                         	avgruhq \$r47 = \$r48, 536870911 \(0x1fffffff\).@;;

     578:	70 8c c2 77                                     	avgruwp \$r48 = \$r48, \$r49;;

     57c:	f1 87 c6 f7 ff ff ff 00                         	avgruwp \$r49 = \$r49, 536870911 \(0x1fffffff\);;

     584:	b2 7c ca 77                                     	avgruw \$r50 = \$r50, \$r50;;

     588:	f3 77 ce f7 ff ff ff 00                         	avgruw \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     590:	34 8d ce 75                                     	avgrwp \$r51 = \$r52, \$r52;;

     594:	f5 8f d2 f5 ff ff ff 00                         	avgrwp \$r52 = \$r53, 536870911 \(0x1fffffff\).@;;

     59c:	b5 7d d6 75                                     	avgrw \$r53 = \$r53, \$r54;;

     5a0:	f6 77 da f5 ff ff ff 00                         	avgrw \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     5a8:	f7 fd de 76                                     	avgubo \$r55 = \$r55, \$r55;;

     5ac:	f8 f7 e2 f6 ff ff ff 00                         	avgubo \$r56 = \$r56, 536870911 \(0x1fffffff\);;

     5b4:	79 9e e2 76                                     	avguhq \$r56 = \$r57, \$r57;;

     5b8:	fa 9f e6 f6 ff ff ff 00                         	avguhq \$r57 = \$r58, 536870911 \(0x1fffffff\).@;;

     5c0:	fa 8e ea 76                                     	avguwp \$r58 = \$r58, \$r59;;

     5c4:	fb 87 ee f6 ff ff ff 00                         	avguwp \$r59 = \$r59, 536870911 \(0x1fffffff\);;

     5cc:	3c 7f f2 76                                     	avguw \$r60 = \$r60, \$r60;;

     5d0:	fd 77 f6 f6 ff ff ff 00                         	avguw \$r61 = \$r61, 536870911 \(0x1fffffff\);;

     5d8:	be 8f f6 74                                     	avgwp \$r61 = \$r62, \$r62;;

     5dc:	ff 8f fa f4 ff ff ff 00                         	avgwp \$r62 = \$r63, 536870911 \(0x1fffffff\).@;;

     5e4:	3f 70 fe 74                                     	avgw \$r63 = \$r63, \$r0;;

     5e8:	c0 77 02 f4 ff ff ff 00                         	avgw \$r0 = \$r0, 536870911 \(0x1fffffff\);;

     5f0:	00 00 a0 0f                                     	await;;

     5f4:	00 00 ac 0f                                     	barrier;;

     5f8:	00 80 00 00                                     	break 0 \(0x0\);;

     5fc:	00 00 80 1f                                     	call fe0005fc <main\+0xfe0005fc>;;

     600:	01 20 06 72                                     	cbsd \$r1 = \$r1;;

     604:	02 40 06 72                                     	cbswp \$r1 = \$r2;;

     608:	02 30 0a 72                                     	cbsw \$r2 = \$r2;;

     60c:	03 00 78 08                                     	cb.dnez \$r3\? ffff860c <main\+0xffff860c>;;

     610:	c3 71 0f 6c                                     	clrf \$r3 = \$r3, 7 \(0x7\), 7 \(0x7\);;

     614:	04 20 12 71                                     	clsd \$r4 = \$r4;;

     618:	05 40 12 71                                     	clswp \$r4 = \$r5;;

     61c:	05 30 16 71                                     	clsw \$r5 = \$r5;;

     620:	06 20 1a 70                                     	clzd \$r6 = \$r6;;

     624:	07 40 1a 70                                     	clzwp \$r6 = \$r7;;

     628:	07 30 1e 70                                     	clzw \$r7 = \$r7;;

     62c:	08 d2 22 70                                     	cmovebo.nez \$r8\? \$r8 = \$r8;;

     630:	c9 d7 26 f1 ff ff ff 00                         	cmovebo.eqz \$r9\? \$r9 = 536870911 \(0x1fffffff\);;

     638:	c9 ff 2a e1 ff ff ff 87 ff ff ff 00             	cmoved.deqz \$r9\? \$r10 = 2305843009213693951 \(0x1fffffffffffffff\);;

     644:	ca 02 2a 72                                     	cmoved.dltz \$r10\? \$r10 = \$r11;;

     648:	0b f0 2e 63                                     	cmoved.dgez \$r11\? \$r11 = -64 \(0xffffffc0\);;

     64c:	0c 00 32 e4 00 00 80 07                         	cmoved.dlez \$r12\? \$r12 = -8589934592 \(0xfffffffe00000000\);;

     654:	8d 13 36 7a                                     	cmovehq.ltz \$r13\? \$r13 = \$r14;;

     658:	ce 1f 3e fb ff ff ff 00                         	cmovehq.gez \$r14\? \$r15 = 536870911 \(0x1fffffff\).@;;

     660:	0f 14 42 74                                     	cmovewp.lez \$r15\? \$r16 = \$r16;;

     664:	d0 17 46 f5 ff ff ff 00                         	cmovewp.gtz \$r16\? \$r17 = 536870911 \(0x1fffffff\);;

     66c:	51 14 20 73                                     	cmuldt \$r8r9 = \$r17, \$r17;;

     670:	92 14 28 77                                     	cmulghxdt \$r10r11 = \$r18, \$r18;;

     674:	d2 14 28 75                                     	cmulglxdt \$r10r11 = \$r18, \$r19;;

     678:	d3 14 30 76                                     	cmulgmxdt \$r12r13 = \$r19, \$r19;;

     67c:	14 15 30 74                                     	cmulxdt \$r12r13 = \$r20, \$r20;;

     680:	d5 ff 51 e0 ff ff ff 87 ff ff ff 00             	compd.ne \$r20 = \$r21, 2305843009213693951 \(0x1fffffffffffffff\);;

     68c:	95 65 54 71                                     	compd.eq \$r21 = \$r21, \$r22;;

     690:	16 f0 59 62                                     	compd.lt \$r22 = \$r22, -64 \(0xffffffc0\);;

     694:	17 00 5d e3 00 00 80 07                         	compd.ge \$r23 = \$r23, -8589934592 \(0xfffffffe00000000\);;

     69c:	18 c6 5c 74                                     	compnbo.le \$r23 = \$r24, \$r24;;

     6a0:	d9 cf 60 f5 ff ff ff 00                         	compnbo.gt \$r24 = \$r25, 536870911 \(0x1fffffff\).@;;

     6a8:	99 56 64 76                                     	compnd.ltu \$r25 = \$r25, \$r26;;

     6ac:	da 57 68 f7 ff ff ff 00                         	compnd.geu \$r26 = \$r26, 536870911 \(0x1fffffff\);;

     6b4:	db b6 6c 78                                     	compnhq.leu \$r27 = \$r27, \$r27;;

     6b8:	dc b7 70 f9 ff ff ff 00                         	compnhq.gtu \$r28 = \$r28, 536870911 \(0x1fffffff\);;

     6c0:	5d a7 70 7a                                     	compnwp.all \$r28 = \$r29, \$r29;;

     6c4:	de af 74 fb ff ff ff 00                         	compnwp.nall \$r29 = \$r30, 536870911 \(0x1fffffff\).@;;

     6cc:	de 47 78 7c                                     	compnw.any \$r30 = \$r30, \$r31;;

     6d0:	df 47 7c fd ff ff ff 00                         	compnw.none \$r31 = \$r31, 536870911 \(0x1fffffff\);;

     6d8:	20 98 80 70                                     	compuwd.ne \$r32 = \$r32, \$r32;;

     6dc:	e1 97 84 f1 ff ff ff 00                         	compuwd.eq \$r33 = \$r33, 536870911 \(0x1fffffff\);;

     6e4:	a2 88 84 72                                     	compwd.lt \$r33 = \$r34, \$r34;;

     6e8:	e3 87 88 f3 ff ff ff 00                         	compwd.ge \$r34 = \$r35, 536870911 \(0x1fffffff\);;

     6f0:	23 79 8c 74                                     	compw.le \$r35 = \$r35, \$r36;;

     6f4:	e4 77 90 f5 ff ff ff 00                         	compw.gt \$r36 = \$r36, 536870911 \(0x1fffffff\);;

     6fc:	25 00 94 6a                                     	copyd \$r37 = \$r37;;

     700:	10 00 3d 34                                     	copyo \$r12r13r14r15 = \$r16r17r18r19;;

     704:	a5 d9 3a 78                                     	copyq \$r14r15 = \$r37, \$r38;;

     708:	26 30 9a 79                                     	copyw \$r38 = \$r38;;

     70c:	e7 29 9c 75                                     	crcbellw \$r39 = \$r39, \$r39;;

     710:	e8 27 a0 f5 ff ff ff 00                         	crcbellw \$r40 = \$r40, 536870911 \(0x1fffffff\);;

     718:	69 2a a0 74                                     	crcbelmw \$r40 = \$r41, \$r41;;

     71c:	ea 27 a4 f4 ff ff ff 00                         	crcbelmw \$r41 = \$r42, 536870911 \(0x1fffffff\);;

     724:	ea 2a a8 77                                     	crclellw \$r42 = \$r42, \$r43;;

     728:	eb 27 ac f7 ff ff ff 00                         	crclellw \$r43 = \$r43, 536870911 \(0x1fffffff\);;

     730:	2c 2b b0 76                                     	crclelmw \$r44 = \$r44, \$r44;;

     734:	ed 27 b4 f6 ff ff ff 00                         	crclelmw \$r45 = \$r45, 536870911 \(0x1fffffff\);;

     73c:	2e 20 b6 73                                     	ctzd \$r45 = \$r46;;

     740:	2e 40 ba 73                                     	ctzwp \$r46 = \$r46;;

     744:	2f 30 be 73                                     	ctzw \$r47 = \$r47;;

     748:	00 00 8c 3c                                     	d1inval;;

     74c:	f0 eb 3e 3c                                     	dflushl \$r47\[\$r48\];;

     750:	f0 ff 3c bc ff ff ff 97 ff ff ff 10             	dflushl 2305843009213693951 \(0x1fffffffffffffff\)\[\$r48\];;

     75c:	30 f0 3c 3c                                     	dflushl -64 \(0xffffffc0\)\[\$r48\];;

     760:	31 00 3c bc 00 00 80 17                         	dflushl -8589934592 \(0xfffffffe00000000\)\[\$r49\];;

     768:	71 ec be 3c                                     	dflushsw.l1 \$r49, \$r49;;

     76c:	b2 fc 1e 3c                                     	dinvall.xs \$r50\[\$r50\];;

     770:	f2 ff 1c bc ff ff ff 97 ff ff ff 10             	dinvall 2305843009213693951 \(0x1fffffffffffffff\)\[\$r50\];;

     77c:	33 f0 1c 3c                                     	dinvall -64 \(0xffffffc0\)\[\$r51\];;

     780:	33 00 1c bc 00 00 80 17                         	dinvall -8589934592 \(0xfffffffe00000000\)\[\$r51\];;

     788:	f4 ec 9e 3d                                     	dinvalsw.l2 \$r51, \$r52;;

     78c:	34 ed 2e 3c                                     	dpurgel \$r52\[\$r52\];;

     790:	f5 ff 2c bc ff ff ff 97 ff ff ff 10             	dpurgel 2305843009213693951 \(0x1fffffffffffffff\)\[\$r53\];;

     79c:	35 f0 2c 3c                                     	dpurgel -64 \(0xffffffc0\)\[\$r53\];;

     7a0:	35 00 2c bc 00 00 80 17                         	dpurgel -8589934592 \(0xfffffffe00000000\)\[\$r53\];;

     7a8:	b6 ed ae 3c                                     	dpurgesw.l1 \$r54, \$r54;;

     7ac:	b7 fd 0e 3c                                     	dtouchl.xs \$r54\[\$r55\];;

     7b0:	f7 ff 0c bc ff ff ff 97 ff ff ff 10             	dtouchl 2305843009213693951 \(0x1fffffffffffffff\)\[\$r55\];;

     7bc:	37 f0 0c 3c                                     	dtouchl -64 \(0xffffffc0\)\[\$r55\];;

     7c0:	38 00 0c bc 00 00 80 17                         	dtouchl -8589934592 \(0xfffffffe00000000\)\[\$r56\];;

     7c8:	00 00 00 00                                     	errop;;

     7cc:	f8 71 e3 68                                     	extfs \$r56 = \$r56, 7 \(0x7\), 7 \(0x7\);;

     7d0:	f9 71 e7 64                                     	extfz \$r57 = \$r57, 7 \(0x7\), 7 \(0x7\);;

     7d4:	7a 60 e7 70                                     	fabsd \$r57 = \$r58;;

     7d8:	7a 60 eb 73                                     	fabshq \$r58 = \$r58;;

     7dc:	7b 60 ef 72                                     	fabswp \$r59 = \$r59;;

     7e0:	7c 60 ef 71                                     	fabsw \$r59 = \$r60;;

     7e4:	7c 2f f3 70                                     	faddd.rn \$r60 = \$r60, \$r61;;

     7e8:	bd af f7 79                                     	faddhq.ru \$r61 = \$r61, \$r62;;

     7ec:	fe 2f fb 7a                                     	faddwp.rd \$r62 = \$r62, \$r63;;

     7f0:	3f 20 ff 7b                                     	faddwp.rz \$r63 = \$r63, \$r0;;

     7f4:	40 a0 03 74                                     	faddw.rna \$r0 = \$r0, \$r1;;

     7f8:	81 d0 04 78                                     	fcompd.one \$r1 = \$r1, \$r2;;

     7fc:	c2 d7 08 f9 ff ff ff 00                         	fcompd.ueq \$r2 = \$r2, 536870911 \(0x1fffffff\);;

     804:	c3 f0 0c 7a                                     	fcompnd.oeq \$r3 = \$r3, \$r3;;

     808:	c4 f7 10 fb ff ff ff 00                         	fcompnd.une \$r4 = \$r4, 536870911 \(0x1fffffff\);;

     810:	45 e1 10 7c                                     	fcompnhq.olt \$r4 = \$r5, \$r5;;

     814:	c6 e7 14 fd ff ff ff 00                         	fcompnhq.uge \$r5 = \$r6, 536870911 \(0x1fffffff\);;

     81c:	c6 e1 18 76                                     	fcompnwp.oge \$r6 = \$r6, \$r7;;

     820:	c7 ef 1c f7 ff ff ff 00                         	fcompnwp.ult \$r7 = \$r7, 536870911 \(0x1fffffff\).@;;

     828:	08 f2 20 70                                     	fcompnw.one \$r8 = \$r8, \$r8;;

     82c:	c9 f7 24 f1 ff ff ff 00                         	fcompnw.ueq \$r9 = \$r9, 536870911 \(0x1fffffff\);;

     834:	8a d2 24 72                                     	fcompw.oeq \$r9 = \$r10, \$r10;;

     838:	cb d7 28 f3 ff ff ff 00                         	fcompw.une \$r10 = \$r11, 536870911 \(0x1fffffff\);;

     840:	00 00 fc 3c                                     	fence;;

     844:	0b 03 2f 75                                     	ffmad.rnz \$r11 = \$r11, \$r12;;

     848:	4d 83 33 7e                                     	ffmahq.ro \$r12 = \$r13, \$r13;;

     84c:	ce 63 3b 7f                                     	ffmawc \$r14 = \$r14, \$r15;;

     850:	10 04 3f 78                                     	ffmawp.rn \$r15 = \$r16, \$r16;;

     854:	51 84 43 71                                     	ffmaw.ru \$r16 = \$r17, \$r17;;

     858:	92 14 47 72                                     	ffmsd.rd \$r17 = \$r18, \$r18;;

     85c:	d3 94 4b 7b                                     	ffmshq.rz \$r18 = \$r19, \$r19;;

     860:	14 e5 4f 7c                                     	ffmswc.rna \$r19 = \$r20, \$r20;;

     864:	55 15 53 7d                                     	ffmswp.rnz \$r20 = \$r21, \$r21;;

     868:	96 95 57 76                                     	ffmsw.ro \$r21 = \$r22, \$r22;;

     86c:	97 50 5b 77                                     	fixedd \$r22 = \$r23;;

     870:	d7 50 5f 70                                     	fixedud.rn \$r23 = \$r23;;

     874:	d8 50 63 79                                     	fixeduwp.ru \$r24 = \$r24;;

     878:	d9 d0 63 72                                     	fixeduw.rd \$r24 = \$r25;;

     87c:	99 50 67 7b                                     	fixedwp.rz \$r25 = \$r25;;

     880:	9a d0 6b 74                                     	fixedw.rna \$r26 = \$r26;;

     884:	1b 50 6b 75                                     	floatd.rnz \$r26 = \$r27;;

     888:	5b 50 6f 76                                     	floatud.ro \$r27 = \$r27;;

     88c:	5c 50 73 7f                                     	floatuwp \$r28 = \$r28;;

     890:	5d d0 73 70                                     	floatuw.rn \$r28 = \$r29;;

     894:	1d 50 77 79                                     	floatwp.ru \$r29 = \$r29;;

     898:	1e d0 7b 72                                     	floatw.rd \$r30 = \$r30;;

     89c:	df a7 79 71                                     	fmaxd \$r30 = \$r31, \$r31;;

     8a0:	20 a8 7d 77                                     	fmaxhq \$r31 = \$r32, \$r32;;

     8a4:	61 a8 81 75                                     	fmaxwp \$r32 = \$r33, \$r33;;

     8a8:	a2 a8 85 73                                     	fmaxw \$r33 = \$r34, \$r34;;

     8ac:	e3 a8 89 70                                     	fmind \$r34 = \$r35, \$r35;;

     8b0:	24 a9 8d 76                                     	fminhq \$r35 = \$r36, \$r36;;

     8b4:	65 a9 91 74                                     	fminwp \$r36 = \$r37, \$r37;;

     8b8:	a6 a9 95 72                                     	fminw \$r37 = \$r38, \$r38;;

     8bc:	e7 49 9b 73                                     	fmuld.rz \$r38 = \$r39, \$r39;;

     8c0:	28 ca 9f 7c                                     	fmulhq.rna \$r39 = \$r40, \$r40;;

     8c4:	69 ea a3 75                                     	fmulwc.rnz \$r40 = \$r41, \$r41;;

     8c8:	aa 4a a7 7e                                     	fmulwp.ro \$r41 = \$r42, \$r42;;

     8cc:	eb ca ab 77                                     	fmulw \$r42 = \$r43, \$r43;;

     8d0:	0e f8 af 78                                     	fnarrowdwp.rn \$r43 = \$r14r15;;

     8d4:	2c f4 b3 79                                     	fnarrowdw.ru \$r44 = \$r44;;

     8d8:	50 f8 b3 7a                                     	fnarrowwhq.rd \$r44 = \$r16r17;;

     8dc:	6d f4 b7 7b                                     	fnarrowwh.rz \$r45 = \$r45;;

     8e0:	2e 60 b7 70                                     	fnegd \$r45 = \$r46;;

     8e4:	2e 60 bb 73                                     	fneghq \$r46 = \$r46;;

     8e8:	2f 60 bf 72                                     	fnegwp \$r47 = \$r47;;

     8ec:	30 60 bf 71                                     	fnegw \$r47 = \$r48;;

     8f0:	30 d4 c3 74                                     	frecw.rna \$r48 = \$r48;;

     8f4:	71 d4 c7 75                                     	frsrw.rnz \$r49 = \$r49;;

     8f8:	b2 3c c7 76                                     	fsbfd.ro \$r49 = \$r50, \$r50;;

     8fc:	f3 bc cb 7f                                     	fsbfhq \$r50 = \$r51, \$r51;;

     900:	34 3d cf 78                                     	fsbfwp.rn \$r51 = \$r52, \$r52;;

     904:	75 3d d3 79                                     	fsbfwp.ru \$r52 = \$r53, \$r53;;

     908:	b6 bd d7 72                                     	fsbfw.rd \$r53 = \$r54, \$r54;;

     90c:	b7 60 db 70                                     	fsrecd \$r54 = \$r55;;

     910:	b7 60 df 72                                     	fsrecwp \$r55 = \$r55;;

     914:	b8 60 e3 71                                     	fsrecw \$r56 = \$r56;;

     918:	f9 60 e3 70                                     	fsrsrd \$r56 = \$r57;;

     91c:	f9 60 e7 72                                     	fsrsrwp \$r57 = \$r57;;

     920:	fa 60 eb 71                                     	fsrsrw \$r58 = \$r58;;

     924:	3b 61 eb 72                                     	fwidenlhwp \$r58 = \$r59;;

     928:	3b 61 ef 71                                     	fwidenlhw \$r59 = \$r59;;

     92c:	3c 61 f3 70                                     	fwidenlwd \$r60 = \$r60;;

     930:	7d 61 f3 72                                     	fwidenmhwp \$r60 = \$r61;;

     934:	7d 61 f7 71                                     	fwidenmhw \$r61 = \$r61;;

     938:	7e 61 fb 70                                     	fwidenmwd \$r62 = \$r62;;

     93c:	3e 00 c4 0f                                     	get \$r62 = \$pc;;

     940:	3f 00 c4 0f                                     	get \$r63 = \$pc;;

     944:	00 00 80 17                                     	goto fe000944 <main\+0xfe000944>;;

     948:	ff ef 5e 3c                                     	i1invals \$r63\[\$r63\];;

     94c:	c0 ff 5c bc ff ff ff 97 ff ff ff 10             	i1invals 2305843009213693951 \(0x1fffffffffffffff\)\[\$r0\];;

     958:	00 f0 5c 3c                                     	i1invals -64 \(0xffffffc0\)\[\$r0\];;

     95c:	00 00 5c bc 00 00 80 17                         	i1invals -8589934592 \(0xfffffffe00000000\)\[\$r0\];;

     964:	00 00 cc 3c                                     	i1inval;;

     968:	01 00 dc 0f                                     	icall \$r1;;

     96c:	01 00 cc 0f                                     	iget \$r1;;

     970:	01 00 d8 0f                                     	igoto \$r1;;

     974:	c2 71 0b 60                                     	insf \$r2 = \$r2, 7 \(0x7\), 7 \(0x7\);;

     978:	c3 ff 08 ea ff ff ff 87 ff ff ff 00             	iord \$r2 = \$r3, 2305843009213693951 \(0x1fffffffffffffff\);;

     984:	03 01 0d 7a                                     	iord \$r3 = \$r3, \$r4;;

     988:	04 f0 10 6a                                     	iord \$r4 = \$r4, -64 \(0xffffffc0\);;

     98c:	05 00 14 ea 00 00 80 07                         	iord \$r5 = \$r5, -8589934592 \(0xfffffffe00000000\);;

     994:	c6 ff 14 ef ff ff ff 87 ff ff ff 00             	iornd \$r5 = \$r6, 2305843009213693951 \(0x1fffffffffffffff\);;

     9a0:	c6 01 19 7f                                     	iornd \$r6 = \$r6, \$r7;;

     9a4:	07 f0 1c 6f                                     	iornd \$r7 = \$r7, -64 \(0xffffffc0\);;

     9a8:	08 00 20 ef 00 00 80 07                         	iornd \$r8 = \$r8, -8589934592 \(0xfffffffe00000000\);;

     9b0:	49 12 21 7f                                     	iornw \$r8 = \$r9, \$r9;;

     9b4:	ca 17 25 ff ff ff ff 00                         	iornw \$r9 = \$r10, 536870911 \(0x1fffffff\);;

     9bc:	8a c0 2a 71                                     	iorrbod \$r10 = \$r10;;

     9c0:	4b c0 2e 71                                     	iorrhqd \$r11 = \$r11;;

     9c4:	0c c0 2e 71                                     	iorrwpd \$r11 = \$r12;;

     9c8:	4d 13 31 7a                                     	iorw \$r12 = \$r13, \$r13;;

     9cc:	ce 17 39 fa ff ff ff 00                         	iorw \$r14 = \$r14, 536870911 \(0x1fffffff\);;

     9d4:	0f 64 3e 70                                     	landd \$r15 = \$r15, \$r16;;

     9d8:	50 74 42 70                                     	landw \$r16 = \$r16, \$r17;;

     9dc:	d1 77 46 f0 ff ff ff 00                         	landw \$r17 = \$r17, 536870911 \(0x1fffffff\);;

     9e4:	92 f4 4a 24                                     	lbs.xs \$r18 = \$r18\[\$r18\];;

     9e8:	d3 54 4e a5 00 00 00 90 00 00 80 17             	lbs.s.dgtz \$r19\? \$r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r19\];;

     9f4:	14 65 52 a6 00 00 80 17                         	lbs.u.odd \$r20\? \$r20 = -8388608 \(0xff800000\)\[\$r20\];;

     9fc:	55 75 56 27                                     	lbs.us.even \$r21\? \$r21 = \[\$r21\];;

     a00:	d6 ff 58 a4 ff ff ff 97 ff ff ff 10             	lbs \$r22 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r22\];;

     a0c:	17 f0 58 25                                     	lbs.s \$r22 = -64 \(0xffffffc0\)\[\$r23\];;

     a10:	17 00 5c a6 00 00 80 17                         	lbs.u \$r23 = -8589934592 \(0xfffffffe00000000\)\[\$r23\];;

     a18:	18 e6 62 23                                     	lbz.us \$r24 = \$r24\[\$r24\];;

     a1c:	59 86 66 a0 00 00 00 90 00 00 80 17             	lbz.wnez \$r25\? \$r25 = -1125899906842624 \(0xfffc000000000000\)\[\$r25\];;

     a28:	9a 96 6a a1 00 00 80 17                         	lbz.s.weqz \$r26\? \$r26 = -8388608 \(0xff800000\)\[\$r26\];;

     a30:	db a6 6e 22                                     	lbz.u.wltz \$r27\? \$r27 = \[\$r27\];;

     a34:	dc ff 70 a3 ff ff ff 97 ff ff ff 10             	lbz.us \$r28 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r28\];;

     a40:	1d f0 70 20                                     	lbz \$r28 = -64 \(0xffffffc0\)\[\$r29\];;

     a44:	1d 00 74 a1 00 00 80 17                         	lbz.s \$r29 = -8589934592 \(0xfffffffe00000000\)\[\$r29\];;

     a4c:	9e f7 7a 3a                                     	ld.u.xs \$r30 = \$r30\[\$r30\];;

     a50:	df b7 7e bb 00 00 00 90 00 00 80 17             	ld.us.wgez \$r31\? \$r31 = -1125899906842624 \(0xfffc000000000000\)\[\$r31\];;

     a5c:	20 c8 82 b8 00 00 80 17                         	ld.wlez \$r32\? \$r32 = -8388608 \(0xff800000\)\[\$r32\];;

     a64:	61 d8 86 39                                     	ld.s.wgtz \$r33\? \$r33 = \[\$r33\];;

     a68:	e2 ff 88 ba ff ff ff 97 ff ff ff 10             	ld.u \$r34 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r34\];;

     a74:	23 f0 88 3b                                     	ld.us \$r34 = -64 \(0xffffffc0\)\[\$r35\];;

     a78:	23 00 8c b8 00 00 80 17                         	ld \$r35 = -8589934592 \(0xfffffffe00000000\)\[\$r35\];;

     a80:	24 e9 92 2d                                     	lhs.s \$r36 = \$r36\[\$r36\];;

     a84:	65 09 96 ae 00 00 00 90 00 00 80 17             	lhs.u.dnez \$r37\? \$r37 = -1125899906842624 \(0xfffc000000000000\)\[\$r37\];;

     a90:	a6 19 9a af 00 00 80 17                         	lhs.us.deqz \$r38\? \$r38 = -8388608 \(0xff800000\)\[\$r38\];;

     a98:	e7 29 9e 2c                                     	lhs.dltz \$r39\? \$r39 = \[\$r39\];;

     a9c:	e8 ff a0 ad ff ff ff 97 ff ff ff 10             	lhs.s \$r40 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r40\];;

     aa8:	29 f0 a0 2e                                     	lhs.u \$r40 = -64 \(0xffffffc0\)\[\$r41\];;

     aac:	29 00 a4 af 00 00 80 17                         	lhs.us \$r41 = -8589934592 \(0xfffffffe00000000\)\[\$r41\];;

     ab4:	aa fa aa 28                                     	lhz.xs \$r42 = \$r42\[\$r42\];;

     ab8:	eb 3a ae a9 00 00 00 90 00 00 80 17             	lhz.s.dgez \$r43\? \$r43 = -1125899906842624 \(0xfffc000000000000\)\[\$r43\];;

     ac4:	2c 4b b2 aa 00 00 80 17                         	lhz.u.dlez \$r44\? \$r44 = -8388608 \(0xff800000\)\[\$r44\];;

     acc:	6d 5b b6 2b                                     	lhz.us.dgtz \$r45\? \$r45 = \[\$r45\];;

     ad0:	ee ff b8 a8 ff ff ff 97 ff ff ff 10             	lhz \$r46 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r46\];;

     adc:	2f f0 b8 29                                     	lhz.s \$r46 = -64 \(0xffffffc0\)\[\$r47\];;

     ae0:	2f 00 bc aa 00 00 80 17                         	lhz.u \$r47 = -8589934592 \(0xfffffffe00000000\)\[\$r47\];;

     ae8:	30 6c c2 72                                     	liord \$r48 = \$r48, \$r48;;

     aec:	71 7c c6 72                                     	liorw \$r49 = \$r49, \$r49;;

     af0:	f2 77 ca f2 ff ff ff 00                         	liorw \$r50 = \$r50, 536870911 \(0x1fffffff\);;

     af8:	f3 6c ca 71                                     	lnandd \$r50 = \$r51, \$r51;;

     afc:	34 7d ce 71                                     	lnandw \$r51 = \$r52, \$r52;;

     b00:	f5 77 d2 f1 ff ff ff 00                         	lnandw \$r52 = \$r53, 536870911 \(0x1fffffff\);;

     b08:	b5 6d d6 73                                     	lniord \$r53 = \$r53, \$r54;;

     b0c:	f6 7d da 73                                     	lniorw \$r54 = \$r54, \$r55;;

     b10:	f7 77 de f3 ff ff ff 00                         	lniorw \$r55 = \$r55, 536870911 \(0x1fffffff\);;

     b18:	38 6e e2 73                                     	lniord \$r56 = \$r56, \$r56;;

     b1c:	79 7e e6 73                                     	lniorw \$r57 = \$r57, \$r57;;

     b20:	fa 77 ea f3 ff ff ff 00                         	lniorw \$r58 = \$r58, 536870911 \(0x1fffffff\);;

     b28:	3a 00 78 0f                                     	loopdo \$r58, ffff8b28 <main\+0xffff8b28>;;

     b2c:	fb 6e ee 72                                     	liord \$r59 = \$r59, \$r59;;

     b30:	3c 7f f2 72                                     	liorw \$r60 = \$r60, \$r60;;

     b34:	fd 77 f6 f2 ff ff ff 00                         	liorw \$r61 = \$r61, 536870911 \(0x1fffffff\);;

     b3c:	7e ef 56 3f                                     	lo.us \$r20r21r22r23 = \$r61\[\$r62\];;

     b40:	be 0f 6e bc 00 00 00 90 00 00 80 17             	lo.u0 \$r62\? \$r24r25r26r27 = -1125899906842624 \(0xfffc000000000000\)\[\$r62\];;

     b4c:	ff 1f 7e bd 00 00 80 17                         	lo.s.u1 \$r63\? \$r28r29r30r31 = -8388608 \(0xff800000\)\[\$r63\];;

     b54:	c0 2f 8e 3e                                     	lo.u.u2 \$r63\? \$r32r33r34r35 = \[\$r0\];;

     b58:	00 60 96 bf 00 00 00 90 00 00 80 17             	lo.us.odd \$r0\? \$r36r37r38r39 = -1125899906842624 \(0xfffc000000000000\)\[\$r0\];;

     b64:	41 70 a6 bc 00 00 80 17                         	lo.even \$r1\? \$r40r41r42r43 = -8388608 \(0xff800000\)\[\$r1\];;

     b6c:	42 80 b6 3d                                     	lo.s.wnez \$r1\? \$r44r45r46r47 = \[\$r2\];;

     b70:	c2 ff c4 be ff ff ff 97 ff ff ff 10             	lo.u \$r48r49r50r51 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r2\];;

     b7c:	02 f0 d4 3f                                     	lo.us \$r52r53r54r55 = -64 \(0xffffffc0\)\[\$r2\];;

     b80:	03 00 e4 bc 00 00 80 17                         	lo \$r56r57r58r59 = -8589934592 \(0xfffffffe00000000\)\[\$r3\];;

     b88:	c3 f0 42 3d                                     	lq.s.xs \$r16r17 = \$r3\[\$r3\];;

     b8c:	04 91 4a be 00 00 00 90 00 00 80 17             	lq.u.weqz \$r4\? \$r18r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r4\];;

     b98:	05 a1 4a bf 00 00 80 17                         	lq.us.wltz \$r4\? \$r18r19 = -8388608 \(0xff800000\)\[\$r5\];;

     ba0:	45 b1 52 3c                                     	lq.wgez \$r5\? \$r20r21 = \[\$r5\];;

     ba4:	c6 ff 50 bd ff ff ff 97 ff ff ff 10             	lq.s \$r20r21 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r6\];;

     bb0:	06 f0 58 3e                                     	lq.u \$r22r23 = -64 \(0xffffffc0\)\[\$r6\];;

     bb4:	06 00 58 bf 00 00 80 17                         	lq.us \$r22r23 = -8589934592 \(0xfffffffe00000000\)\[\$r6\];;

     bbc:	c7 e1 1e 34                                     	lws \$r7 = \$r7\[\$r7\];;

     bc0:	08 c2 22 b5 00 00 00 90 00 00 80 17             	lws.s.wlez \$r8\? \$r8 = -1125899906842624 \(0xfffc000000000000\)\[\$r8\];;

     bcc:	49 d2 26 b6 00 00 80 17                         	lws.u.wgtz \$r9\? \$r9 = -8388608 \(0xff800000\)\[\$r9\];;

     bd4:	8a 02 2a 37                                     	lws.us.dnez \$r10\? \$r10 = \[\$r10\];;

     bd8:	cb ff 2c b4 ff ff ff 97 ff ff ff 10             	lws \$r11 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r11\];;

     be4:	0c f0 2c 35                                     	lws.s \$r11 = -64 \(0xffffffc0\)\[\$r12\];;

     be8:	0d 00 30 b6 00 00 80 17                         	lws.u \$r12 = -8589934592 \(0xfffffffe00000000\)\[\$r13\];;

     bf0:	8e f3 36 33                                     	lwz.us.xs \$r13 = \$r14\[\$r14\];;

     bf4:	d0 13 3e b0 00 00 00 90 00 00 80 17             	lwz.deqz \$r15\? \$r15 = -1125899906842624 \(0xfffc000000000000\)\[\$r16\];;

     c00:	11 24 42 b1 00 00 80 17                         	lwz.s.dltz \$r16\? \$r16 = -8388608 \(0xff800000\)\[\$r17\];;

     c08:	52 34 46 32                                     	lwz.u.dgez \$r17\? \$r17 = \[\$r18\];;

     c0c:	d2 ff 48 b3 ff ff ff 97 ff ff ff 10             	lwz.us \$r18 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r18\];;

     c18:	13 f0 4c 30                                     	lwz \$r19 = -64 \(0xffffffc0\)\[\$r19\];;

     c1c:	14 00 4c b1 00 00 80 17                         	lwz.s \$r19 = -8589934592 \(0xfffffffe00000000\)\[\$r20\];;

     c24:	14 15 60 78                                     	madddt \$r24r25 = \$r20, \$r20;;

     c28:	55 25 54 78                                     	maddd \$r21 = \$r21, \$r21;;

     c2c:	d6 27 58 f8 ff ff ff 00                         	maddd \$r22 = \$r22, 536870911 \(0x1fffffff\);;

     c34:	d7 25 58 7a                                     	maddhq \$r22 = \$r23, \$r23;;

     c38:	d8 2f 5c fa ff ff ff 00                         	maddhq \$r23 = \$r24, 536870911 \(0x1fffffff\).@;;

     c40:	18 16 64 78                                     	maddhwq \$r24r25 = \$r24, \$r24;;

     c44:	59 16 68 7a                                     	maddsudt \$r26r27 = \$r25, \$r25;;

     c48:	99 16 6c 7a                                     	maddsuhwq \$r26r27 = \$r25, \$r26;;

     c4c:	9a 06 70 7a                                     	maddsuwdp \$r28r29 = \$r26, \$r26;;

     c50:	db 07 70 fa ff ff ff 00                         	maddsuwdp \$r28r29 = \$r27, 536870911 \(0x1fffffff\);;

     c58:	1b 37 6c 7a                                     	maddsuwd \$r27 = \$r27, \$r28;;

     c5c:	dc 37 70 fa ff ff ff 00                         	maddsuwd \$r28 = \$r28, 536870911 \(0x1fffffff\);;

     c64:	5d 17 78 79                                     	maddudt \$r30r31 = \$r29, \$r29;;

     c68:	9d 17 7c 79                                     	madduhwq \$r30r31 = \$r29, \$r30;;

     c6c:	9e 07 80 79                                     	madduwdp \$r32r33 = \$r30, \$r30;;

     c70:	df 0f 80 f9 ff ff ff 00                         	madduwdp \$r32r33 = \$r31, 536870911 \(0x1fffffff\).@;;

     c78:	1f 38 7c 79                                     	madduwd \$r31 = \$r31, \$r32;;

     c7c:	e0 37 80 f9 ff ff ff 00                         	madduwd \$r32 = \$r32, 536870911 \(0x1fffffff\);;

     c84:	61 18 88 7b                                     	madduzdt \$r34r35 = \$r33, \$r33;;

     c88:	a1 08 88 78                                     	maddwdp \$r34r35 = \$r33, \$r34;;

     c8c:	e2 07 90 f8 ff ff ff 00                         	maddwdp \$r36r37 = \$r34, 536870911 \(0x1fffffff\);;

     c94:	e3 38 88 78                                     	maddwd \$r34 = \$r35, \$r35;;

     c98:	e4 37 8c f8 ff ff ff 00                         	maddwd \$r35 = \$r36, 536870911 \(0x1fffffff\);;

     ca0:	64 29 90 79                                     	maddwp \$r36 = \$r36, \$r37;;

     ca4:	e5 2f 94 f9 ff ff ff 00                         	maddwp \$r37 = \$r37, 536870911 \(0x1fffffff\).@;;

     cac:	a6 39 98 7b                                     	maddw \$r38 = \$r38, \$r38;;

     cb0:	e7 37 9c fb ff ff ff 00                         	maddw \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     cb8:	c0 ff 9c e0 ff ff ff 87 ff ff ff 00             	make \$r39 = 2305843009213693951 \(0x1fffffffffffffff\);;

     cc4:	3c 00 a0 e0 00 00 00 00                         	make \$r40 = -549755813888 \(0xffffff8000000000\);;

     ccc:	00 f0 a0 60                                     	make \$r40 = -4096 \(0xfffff000\);;

     cd0:	69 aa a2 75                                     	maxbo \$r40 = \$r41, \$r41;;

     cd4:	ea a7 a6 f5 ff ff ff 00                         	maxbo \$r41 = \$r42, 536870911 \(0x1fffffff\);;

     cdc:	ea ff a8 e5 ff ff ff 87 ff ff ff 00             	maxd \$r42 = \$r42, 2305843009213693951 \(0x1fffffffffffffff\);;

     ce8:	eb 0a ad 75                                     	maxd \$r43 = \$r43, \$r43;;

     cec:	2c f0 b0 65                                     	maxd \$r44 = \$r44, -64 \(0xffffffc0\);;

     cf0:	2d 00 b0 e5 00 00 80 07                         	maxd \$r44 = \$r45, -8589934592 \(0xfffffffe00000000\);;

     cf8:	ad 3b b5 75                                     	maxhq \$r45 = \$r45, \$r46;;

     cfc:	ee 3f b9 f5 ff ff ff 00                         	maxhq \$r46 = \$r46, 536870911 \(0x1fffffff\).@;;

     d04:	af c0 be 75                                     	maxrbod \$r47 = \$r47;;

     d08:	70 c0 be 75                                     	maxrhqd \$r47 = \$r48;;

     d0c:	30 c0 c2 75                                     	maxrwpd \$r48 = \$r48;;

     d10:	71 ac c6 77                                     	maxubo \$r49 = \$r49, \$r49;;

     d14:	f2 a7 ca f7 ff ff ff 00                         	maxubo \$r50 = \$r50, 536870911 \(0x1fffffff\);;

     d1c:	f3 ff c8 e7 ff ff ff 87 ff ff ff 00             	maxud \$r50 = \$r51, 2305843009213693951 \(0x1fffffffffffffff\);;

     d28:	33 0d cd 77                                     	maxud \$r51 = \$r51, \$r52;;

     d2c:	34 f0 d0 67                                     	maxud \$r52 = \$r52, -64 \(0xffffffc0\);;

     d30:	35 00 d4 e7 00 00 80 07                         	maxud \$r53 = \$r53, -8589934592 \(0xfffffffe00000000\);;

     d38:	b6 3d d5 77                                     	maxuhq \$r53 = \$r54, \$r54;;

     d3c:	f7 3f d9 f7 ff ff ff 00                         	maxuhq \$r54 = \$r55, 536870911 \(0x1fffffff\).@;;

     d44:	b7 c0 de 79                                     	maxurbod \$r55 = \$r55;;

     d48:	78 c0 e2 79                                     	maxurhqd \$r56 = \$r56;;

     d4c:	39 c0 e2 79                                     	maxurwpd \$r56 = \$r57;;

     d50:	b9 2e e5 77                                     	maxuwp \$r57 = \$r57, \$r58;;

     d54:	fa 27 e9 f7 ff ff ff 00                         	maxuwp \$r58 = \$r58, 536870911 \(0x1fffffff\);;

     d5c:	fb 1e ed 77                                     	maxuw \$r59 = \$r59, \$r59;;

     d60:	fc 17 f1 f7 ff ff ff 00                         	maxuw \$r60 = \$r60, 536870911 \(0x1fffffff\);;

     d68:	7d 2f f1 75                                     	maxwp \$r60 = \$r61, \$r61;;

     d6c:	fe 2f f5 f5 ff ff ff 00                         	maxwp \$r61 = \$r62, 536870911 \(0x1fffffff\).@;;

     d74:	fe 1f f9 75                                     	maxw \$r62 = \$r62, \$r63;;

     d78:	ff 17 fd f5 ff ff ff 00                         	maxw \$r63 = \$r63, 536870911 \(0x1fffffff\);;

     d80:	00 a0 02 74                                     	minbo \$r0 = \$r0, \$r0;;

     d84:	c1 a7 06 f4 ff ff ff 00                         	minbo \$r1 = \$r1, 536870911 \(0x1fffffff\);;

     d8c:	c2 ff 04 e4 ff ff ff 87 ff ff ff 00             	mind \$r1 = \$r2, 2305843009213693951 \(0x1fffffffffffffff\);;

     d98:	c2 00 09 74                                     	mind \$r2 = \$r2, \$r3;;

     d9c:	03 f0 0c 64                                     	mind \$r3 = \$r3, -64 \(0xffffffc0\);;

     da0:	04 00 10 e4 00 00 80 07                         	mind \$r4 = \$r4, -8589934592 \(0xfffffffe00000000\);;

     da8:	45 31 11 74                                     	minhq \$r4 = \$r5, \$r5;;

     dac:	c6 3f 15 f4 ff ff ff 00                         	minhq \$r5 = \$r6, 536870911 \(0x1fffffff\).@;;

     db4:	86 c0 1a 74                                     	minrbod \$r6 = \$r6;;

     db8:	47 c0 1e 74                                     	minrhqd \$r7 = \$r7;;

     dbc:	08 c0 1e 74                                     	minrwpd \$r7 = \$r8;;

     dc0:	48 a2 22 76                                     	minubo \$r8 = \$r8, \$r9;;

     dc4:	c9 a7 26 f6 ff ff ff 00                         	minubo \$r9 = \$r9, 536870911 \(0x1fffffff\);;

     dcc:	ca ff 28 e6 ff ff ff 87 ff ff ff 00             	minud \$r10 = \$r10, 2305843009213693951 \(0x1fffffffffffffff\);;

     dd8:	cb 02 29 76                                     	minud \$r10 = \$r11, \$r11;;

     ddc:	0c f0 2c 66                                     	minud \$r11 = \$r12, -64 \(0xffffffc0\);;

     de0:	0d 00 30 e6 00 00 80 07                         	minud \$r12 = \$r13, -8589934592 \(0xfffffffe00000000\);;

     de8:	8e 33 35 76                                     	minuhq \$r13 = \$r14, \$r14;;

     dec:	cf 3f 3d f6 ff ff ff 00                         	minuhq \$r15 = \$r15, 536870911 \(0x1fffffff\).@;;

     df4:	90 c0 42 78                                     	minurbod \$r16 = \$r16;;

     df8:	51 c0 42 78                                     	minurhqd \$r16 = \$r17;;

     dfc:	11 c0 46 78                                     	minurwpd \$r17 = \$r17;;

     e00:	92 24 49 76                                     	minuwp \$r18 = \$r18, \$r18;;

     e04:	d3 27 4d f6 ff ff ff 00                         	minuwp \$r19 = \$r19, 536870911 \(0x1fffffff\);;

     e0c:	14 15 4d 76                                     	minuw \$r19 = \$r20, \$r20;;

     e10:	d5 17 51 f6 ff ff ff 00                         	minuw \$r20 = \$r21, 536870911 \(0x1fffffff\);;

     e18:	95 25 55 74                                     	minwp \$r21 = \$r21, \$r22;;

     e1c:	d6 2f 59 f4 ff ff ff 00                         	minwp \$r22 = \$r22, 536870911 \(0x1fffffff\).@;;

     e24:	d7 15 5d 74                                     	minw \$r23 = \$r23, \$r23;;

     e28:	d8 17 61 f4 ff ff ff 00                         	minw \$r24 = \$r24, 536870911 \(0x1fffffff\);;

     e30:	58 06 90 73                                     	mm212w \$r36r37 = \$r24, \$r25;;

     e34:	d9 07 98 f3 ff ff ff 00                         	mm212w \$r38r39 = \$r25, 536870911 \(0x1fffffff\);;

     e3c:	99 06 98 7b                                     	mma212w \$r38r39 = \$r25, \$r26;;

     e40:	da 0f a0 fb ff ff ff 00                         	mma212w \$r40r41 = \$r26, 536870911 \(0x1fffffff\).@;;

     e48:	da 06 a0 7f                                     	mms212w \$r40r41 = \$r26, \$r27;;

     e4c:	db 07 a8 ff ff ff ff 00                         	mms212w \$r42r43 = \$r27, 536870911 \(0x1fffffff\);;

     e54:	1b 17 a8 7c                                     	msbfdt \$r42r43 = \$r27, \$r28;;

     e58:	5c 27 70 7c                                     	msbfd \$r28 = \$r28, \$r29;;

     e5c:	dd 2f 74 fc ff ff ff 00                         	msbfd \$r29 = \$r29, 536870911 \(0x1fffffff\).@;;

     e64:	9e 27 78 7e                                     	msbfhq \$r30 = \$r30, \$r30;;

     e68:	df 27 7c fe ff ff ff 00                         	msbfhq \$r31 = \$r31, 536870911 \(0x1fffffff\);;

     e70:	1f 18 b4 7c                                     	msbfhwq \$r44r45 = \$r31, \$r32;;

     e74:	20 18 b0 7e                                     	msbfsudt \$r44r45 = \$r32, \$r32;;

     e78:	61 18 bc 7e                                     	msbfsuhwq \$r46r47 = \$r33, \$r33;;

     e7c:	a1 08 b8 7e                                     	msbfsuwdp \$r46r47 = \$r33, \$r34;;

     e80:	e2 0f c0 fe ff ff ff 00                         	msbfsuwdp \$r48r49 = \$r34, 536870911 \(0x1fffffff\).@;;

     e88:	e3 38 88 7e                                     	msbfsuwd \$r34 = \$r35, \$r35;;

     e8c:	e4 37 8c fe ff ff ff 00                         	msbfsuwd \$r35 = \$r36, 536870911 \(0x1fffffff\);;

     e94:	24 19 c0 7d                                     	msbfudt \$r48r49 = \$r36, \$r36;;

     e98:	65 19 cc 7d                                     	msbfuhwq \$r50r51 = \$r37, \$r37;;

     e9c:	a5 09 c8 7d                                     	msbfuwdp \$r50r51 = \$r37, \$r38;;

     ea0:	e6 07 d0 fd ff ff ff 00                         	msbfuwdp \$r52r53 = \$r38, 536870911 \(0x1fffffff\);;

     ea8:	e7 39 98 7d                                     	msbfuwd \$r38 = \$r39, \$r39;;

     eac:	e8 37 9c fd ff ff ff 00                         	msbfuwd \$r39 = \$r40, 536870911 \(0x1fffffff\);;

     eb4:	28 1a d0 7f                                     	msbfuzdt \$r52r53 = \$r40, \$r40;;

     eb8:	69 0a d8 7c                                     	msbfwdp \$r54r55 = \$r41, \$r41;;

     ebc:	e9 0f d8 fc ff ff ff 00                         	msbfwdp \$r54r55 = \$r41, 536870911 \(0x1fffffff\).@;;

     ec4:	aa 3a a8 7c                                     	msbfwd \$r42 = \$r42, \$r42;;

     ec8:	eb 37 ac fc ff ff ff 00                         	msbfwd \$r43 = \$r43, 536870911 \(0x1fffffff\);;

     ed0:	2c 2b ac 7d                                     	msbfwp \$r43 = \$r44, \$r44;;

     ed4:	ed 27 b0 fd ff ff ff 00                         	msbfwp \$r44 = \$r45, 536870911 \(0x1fffffff\);;

     edc:	ad 3b b4 7f                                     	msbfw \$r45 = \$r45, \$r46;;

     ee0:	ee 37 b8 ff ff ff ff 00                         	msbfw \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     ee8:	ef 1b e0 70                                     	muldt \$r56r57 = \$r47, \$r47;;

     eec:	30 2c bc 70                                     	muld \$r47 = \$r48, \$r48;;

     ef0:	f1 2f c0 f0 ff ff ff 00                         	muld \$r48 = \$r49, 536870911 \(0x1fffffff\).@;;

     ef8:	b1 2c c4 72                                     	mulhq \$r49 = \$r49, \$r50;;

     efc:	f2 27 c8 f2 ff ff ff 00                         	mulhq \$r50 = \$r50, 536870911 \(0x1fffffff\);;

     f04:	f3 1c e4 70                                     	mulhwq \$r56r57 = \$r51, \$r51;;

     f08:	3a 0f ec 71                                     	mulmwq \$r58r59 = \$r58r59, \$r60r61;;

     f0c:	33 1d f0 72                                     	mulsudt \$r60r61 = \$r51, \$r52;;

     f10:	34 1d fc 72                                     	mulsuhwq \$r62r63 = \$r52, \$r52;;

     f14:	00 00 fc 73                                     	mulsumwq \$r62r63 = \$r0r1, \$r0r1;;

     f18:	75 0d 08 72                                     	mulsuwdp \$r2r3 = \$r53, \$r53;;

     f1c:	f5 0f 08 f2 ff ff ff 00                         	mulsuwdp \$r2r3 = \$r53, 536870911 \(0x1fffffff\).@;;

     f24:	b6 3d d8 72                                     	mulsuwd \$r54 = \$r54, \$r54;;

     f28:	f7 37 dc f2 ff ff ff 00                         	mulsuwd \$r55 = \$r55, 536870911 \(0x1fffffff\);;

     f30:	37 1e 10 71                                     	muludt \$r4r5 = \$r55, \$r56;;

     f34:	38 1e 14 71                                     	muluhwq \$r4r5 = \$r56, \$r56;;

     f38:	06 02 1c 72                                     	mulumwq \$r6r7 = \$r6r7, \$r8r9;;

     f3c:	79 0e 20 71                                     	muluwdp \$r8r9 = \$r57, \$r57;;

     f40:	f9 07 28 f1 ff ff ff 00                         	muluwdp \$r10r11 = \$r57, 536870911 \(0x1fffffff\);;

     f48:	ba 3e e8 71                                     	muluwd \$r58 = \$r58, \$r58;;

     f4c:	fb 37 ec f1 ff ff ff 00                         	muluwd \$r59 = \$r59, 536870911 \(0x1fffffff\);;

     f54:	3b 0f 28 70                                     	mulwdp \$r10r11 = \$r59, \$r60;;

     f58:	fc 0f 30 f0 ff ff ff 00                         	mulwdp \$r12r13 = \$r60, 536870911 \(0x1fffffff\).@;;

     f60:	7d 3f f0 70                                     	mulwd \$r60 = \$r61, \$r61;;

     f64:	fe 37 f4 f0 ff ff ff 00                         	mulwd \$r61 = \$r62, 536870911 \(0x1fffffff\);;

     f6c:	fe 2f f8 71                                     	mulwp \$r62 = \$r62, \$r63;;

     f70:	ff 27 fc f1 ff ff ff 00                         	mulwp \$r63 = \$r63, 536870911 \(0x1fffffff\);;

     f78:	8e 03 34 70                                     	mulwq \$r12r13 = \$r14r15, \$r14r15;;

     f7c:	00 30 00 73                                     	mulw \$r0 = \$r0, \$r0;;

     f80:	c1 37 04 f3 ff ff ff 00                         	mulw \$r1 = \$r1, 536870911 \(0x1fffffff\);;

     f88:	c2 ff 04 e9 ff ff ff 87 ff ff ff 00             	nandd \$r1 = \$r2, 2305843009213693951 \(0x1fffffffffffffff\);;

     f94:	c2 00 09 79                                     	nandd \$r2 = \$r2, \$r3;;

     f98:	03 f0 0c 69                                     	nandd \$r3 = \$r3, -64 \(0xffffffc0\);;

     f9c:	04 00 10 e9 00 00 80 07                         	nandd \$r4 = \$r4, -8589934592 \(0xfffffffe00000000\);;

     fa4:	45 11 11 79                                     	nandw \$r4 = \$r5, \$r5;;

     fa8:	c6 17 15 f9 ff ff ff 00                         	nandw \$r5 = \$r6, 536870911 \(0x1fffffff\);;

     fb0:	06 a0 1a f1 00 00 00 00                         	negbo \$r6 = \$r6;;

     fb8:	07 00 1c 63                                     	negd \$r7 = \$r7;;

     fbc:	08 30 1d f3 00 00 00 00                         	neghq \$r7 = \$r8;;

     fc4:	08 b0 22 fd 00 00 00 00                         	negsbo \$r8 = \$r8;;

     fcc:	09 40 25 fd 00 00 00 00                         	negsd \$r9 = \$r9;;

     fd4:	0a 70 25 fd 00 00 00 00                         	negshq \$r9 = \$r10;;

     fdc:	0a 60 29 fd 00 00 00 00                         	negswp \$r10 = \$r10;;

     fe4:	0b 50 2d fd 00 00 00 00                         	negsw \$r11 = \$r11;;

     fec:	0c 20 2d f3 00 00 00 00                         	negwp \$r11 = \$r12;;

     ff4:	0d 10 31 f3 00 00 00 00                         	negw \$r12 = \$r13;;

     ffc:	ce ff 34 eb ff ff ff 87 ff ff ff 00             	niord \$r13 = \$r14, 2305843009213693951 \(0x1fffffffffffffff\);;

    1008:	cf 03 39 7b                                     	niord \$r14 = \$r15, \$r15;;

    100c:	10 f0 40 6b                                     	niord \$r16 = \$r16, -64 \(0xffffffc0\);;

    1010:	11 00 40 eb 00 00 80 07                         	niord \$r16 = \$r17, -8589934592 \(0xfffffffe00000000\);;

    1018:	91 14 45 7b                                     	niorw \$r17 = \$r17, \$r18;;

    101c:	d2 17 49 fb ff ff ff 00                         	niorw \$r18 = \$r18, 536870911 \(0x1fffffff\);;

    1024:	c0 ff 03 7f                                     	nop;;

    1028:	d3 ff 4c 6c                                     	notd \$r19 = \$r19;;

    102c:	d4 17 4d fc ff ff ff 07                         	notw \$r19 = \$r20;;

    1034:	d4 ff 50 ed ff ff ff 87 ff ff ff 00             	nxord \$r20 = \$r20, 2305843009213693951 \(0x1fffffffffffffff\);;

    1040:	55 05 55 7d                                     	nxord \$r21 = \$r21, \$r21;;

    1044:	16 f0 58 6d                                     	nxord \$r22 = \$r22, -64 \(0xffffffc0\);;

    1048:	17 00 58 ed 00 00 80 07                         	nxord \$r22 = \$r23, -8589934592 \(0xfffffffe00000000\);;

    1050:	17 16 5d 7d                                     	nxorw \$r23 = \$r23, \$r24;;

    1054:	d8 17 61 fd ff ff ff 00                         	nxorw \$r24 = \$r24, 536870911 \(0x1fffffff\);;

    105c:	c0 ff 65 ef ff ff ff 87 ff ff ff 00             	pcrel \$r25 = 2305843009213693951 \(0x1fffffffffffffff\);;

    1068:	3c 00 65 ef 00 00 00 00                         	pcrel \$r25 = -549755813888 \(0xffffff8000000000\);;

    1070:	00 f0 65 6f                                     	pcrel \$r25 = -4096 \(0xfffff000\);;

    1074:	00 00 d0 0f                                     	ret;;

    1078:	00 00 d4 0f                                     	rfe;;

    107c:	9a 86 6a 7e                                     	rolwps \$r26 = \$r26, \$r26;;

    1080:	db 41 6e 7e                                     	rolwps \$r27 = \$r27, 7 \(0x7\);;

    1084:	1c 77 6e 7e                                     	rolw \$r27 = \$r28, \$r28;;

    1088:	dd 31 72 7e                                     	rolw \$r28 = \$r29, 7 \(0x7\);;

    108c:	9d 87 76 7f                                     	rorwps \$r29 = \$r29, \$r30;;

    1090:	de 41 7a 7f                                     	rorwps \$r30 = \$r30, 7 \(0x7\);;

    1094:	df 77 7e 7f                                     	rorw \$r31 = \$r31, \$r31;;

    1098:	e0 31 82 7f                                     	rorw \$r32 = \$r32, 7 \(0x7\);;

    109c:	20 07 c8 0f                                     	rswap \$r32 = \$mmc;;

    10a0:	21 00 c8 0f                                     	rswap \$r33 = \$pc;;

    10a4:	21 00 c8 0f                                     	rswap \$r33 = \$pc;;

    10a8:	a2 a8 86 71                                     	sbfbo \$r33 = \$r34, \$r34;;

    10ac:	e3 af 8a f1 ff ff ff 00                         	sbfbo \$r34 = \$r35, 536870911 \(0x1fffffff\).@;;

    10b4:	23 99 8d 7f                                     	sbfcd.i \$r35 = \$r35, \$r36;;

    10b8:	e4 97 91 ff ff ff ff 00                         	sbfcd.i \$r36 = \$r36, 536870911 \(0x1fffffff\);;

    10c0:	65 89 95 7f                                     	sbfcd \$r37 = \$r37, \$r37;;

    10c4:	e6 87 99 ff ff ff ff 00                         	sbfcd \$r38 = \$r38, 536870911 \(0x1fffffff\);;

    10cc:	e7 ff 98 e3 ff ff ff 87 ff ff ff 00             	sbfd \$r38 = \$r39, 2305843009213693951 \(0x1fffffffffffffff\);;

    10d8:	27 0a 9d 73                                     	sbfd \$r39 = \$r39, \$r40;;

    10dc:	28 f0 a0 63                                     	sbfd \$r40 = \$r40, -64 \(0xffffffc0\);;

    10e0:	29 00 a4 e3 00 00 80 07                         	sbfd \$r41 = \$r41, -8589934592 \(0xfffffffe00000000\);;

    10e8:	aa 3a a5 73                                     	sbfhq \$r41 = \$r42, \$r42;;

    10ec:	eb 37 a9 f3 ff ff ff 00                         	sbfhq \$r42 = \$r43, 536870911 \(0x1fffffff\);;

    10f4:	2b bb ae 7d                                     	sbfsbo \$r43 = \$r43, \$r44;;

    10f8:	ec bf b2 fd ff ff ff 00                         	sbfsbo \$r44 = \$r44, 536870911 \(0x1fffffff\).@;;

    1100:	6d 4b b5 7d                                     	sbfsd \$r45 = \$r45, \$r45;;

    1104:	ee 47 b9 fd ff ff ff 00                         	sbfsd \$r46 = \$r46, 536870911 \(0x1fffffff\);;

    110c:	ef 7b b9 7d                                     	sbfshq \$r46 = \$r47, \$r47;;

    1110:	f0 7f bd fd ff ff ff 00                         	sbfshq \$r47 = \$r48, 536870911 \(0x1fffffff\).@;;

    1118:	70 6c c1 7d                                     	sbfswp \$r48 = \$r48, \$r49;;

    111c:	f1 67 c5 fd ff ff ff 00                         	sbfswp \$r49 = \$r49, 536870911 \(0x1fffffff\);;

    1124:	b2 5c c9 7d                                     	sbfsw \$r50 = \$r50, \$r50;;

    1128:	f3 57 cd fd ff ff ff 00                         	sbfsw \$r51 = \$r51, 536870911 \(0x1fffffff\);;

    1130:	34 bd ce 7f                                     	sbfusbo \$r51 = \$r52, \$r52;;

    1134:	f5 bf d2 ff ff ff ff 00                         	sbfusbo \$r52 = \$r53, 536870911 \(0x1fffffff\).@;;

    113c:	b5 4d d5 7f                                     	sbfusd \$r53 = \$r53, \$r54;;

    1140:	f6 47 d9 ff ff ff ff 00                         	sbfusd \$r54 = \$r54, 536870911 \(0x1fffffff\);;

    1148:	f7 7d dd 7f                                     	sbfushq \$r55 = \$r55, \$r55;;

    114c:	f8 7f e1 ff ff ff ff 00                         	sbfushq \$r56 = \$r56, 536870911 \(0x1fffffff\).@;;

    1154:	79 6e e1 7f                                     	sbfuswp \$r56 = \$r57, \$r57;;

    1158:	fa 67 e5 ff ff ff ff 00                         	sbfuswp \$r57 = \$r58, 536870911 \(0x1fffffff\);;

    1160:	fa 5e e9 7f                                     	sbfusw \$r58 = \$r58, \$r59;;

    1164:	fb 57 ed ff ff ff ff 00                         	sbfusw \$r59 = \$r59, 536870911 \(0x1fffffff\);;

    116c:	3c 9f f1 7d                                     	sbfuwd \$r60 = \$r60, \$r60;;

    1170:	fd 97 f5 fd ff ff ff 00                         	sbfuwd \$r61 = \$r61, 536870911 \(0x1fffffff\);;

    1178:	be 8f f5 7d                                     	sbfwd \$r61 = \$r62, \$r62;;

    117c:	ff 87 f9 fd ff ff ff 00                         	sbfwd \$r62 = \$r63, 536870911 \(0x1fffffff\);;

    1184:	3f 20 fd 73                                     	sbfwp \$r63 = \$r63, \$r0;;

    1188:	c0 2f 01 f3 ff ff ff 00                         	sbfwp \$r0 = \$r0, 536870911 \(0x1fffffff\).@;;

    1190:	41 10 05 73                                     	sbfw \$r1 = \$r1, \$r1;;

    1194:	c2 17 09 f3 ff ff ff 00                         	sbfw \$r2 = \$r2, 536870911 \(0x1fffffff\);;

    119c:	c3 b0 0a 77                                     	sbfx16bo \$r2 = \$r3, \$r3;;

    11a0:	c4 b7 0e f7 ff ff ff 00                         	sbfx16bo \$r3 = \$r4, 536870911 \(0x1fffffff\);;

    11a8:	44 41 11 77                                     	sbfx16d \$r4 = \$r4, \$r5;;

    11ac:	c5 4f 15 f7 ff ff ff 00                         	sbfx16d \$r5 = \$r5, 536870911 \(0x1fffffff\).@;;

    11b4:	86 71 19 77                                     	sbfx16hq \$r6 = \$r6, \$r6;;

    11b8:	c7 77 1d f7 ff ff ff 00                         	sbfx16hq \$r7 = \$r7, 536870911 \(0x1fffffff\);;

    11c0:	08 92 1d 77                                     	sbfx16uwd \$r7 = \$r8, \$r8;;

    11c4:	c9 97 21 f7 ff ff ff 00                         	sbfx16uwd \$r8 = \$r9, 536870911 \(0x1fffffff\);;

    11cc:	89 82 25 77                                     	sbfx16wd \$r9 = \$r9, \$r10;;

    11d0:	ca 87 29 f7 ff ff ff 00                         	sbfx16wd \$r10 = \$r10, 536870911 \(0x1fffffff\);;

    11d8:	cb 62 2d 77                                     	sbfx16wp \$r11 = \$r11, \$r11;;

    11dc:	cc 6f 31 f7 ff ff ff 00                         	sbfx16wp \$r12 = \$r12, 536870911 \(0x1fffffff\).@;;

    11e4:	8d 53 35 77                                     	sbfx16w \$r13 = \$r13, \$r14;;

    11e8:	cf 57 39 f7 ff ff ff 00                         	sbfx16w \$r14 = \$r15, 536870911 \(0x1fffffff\);;

    11f0:	10 b4 3e 71                                     	sbfx2bo \$r15 = \$r16, \$r16;;

    11f4:	d1 b7 42 f1 ff ff ff 00                         	sbfx2bo \$r16 = \$r17, 536870911 \(0x1fffffff\);;

    11fc:	91 44 45 71                                     	sbfx2d \$r17 = \$r17, \$r18;;

    1200:	d2 4f 49 f1 ff ff ff 00                         	sbfx2d \$r18 = \$r18, 536870911 \(0x1fffffff\).@;;

    1208:	d3 74 4d 71                                     	sbfx2hq \$r19 = \$r19, \$r19;;

    120c:	d4 77 51 f1 ff ff ff 00                         	sbfx2hq \$r20 = \$r20, 536870911 \(0x1fffffff\);;

    1214:	55 95 51 71                                     	sbfx2uwd \$r20 = \$r21, \$r21;;

    1218:	d6 97 55 f1 ff ff ff 00                         	sbfx2uwd \$r21 = \$r22, 536870911 \(0x1fffffff\);;

    1220:	d6 85 59 71                                     	sbfx2wd \$r22 = \$r22, \$r23;;

    1224:	d7 87 5d f1 ff ff ff 00                         	sbfx2wd \$r23 = \$r23, 536870911 \(0x1fffffff\);;

    122c:	18 66 61 71                                     	sbfx2wp \$r24 = \$r24, \$r24;;

    1230:	d9 6f 65 f1 ff ff ff 00                         	sbfx2wp \$r25 = \$r25, 536870911 \(0x1fffffff\).@;;

    1238:	9a 56 65 71                                     	sbfx2w \$r25 = \$r26, \$r26;;

    123c:	db 57 69 f1 ff ff ff 00                         	sbfx2w \$r26 = \$r27, 536870911 \(0x1fffffff\);;

    1244:	1b 47 6d 79                                     	sbfx32d \$r27 = \$r27, \$r28;;

    1248:	dc 47 71 f9 ff ff ff 00                         	sbfx32d \$r28 = \$r28, 536870911 \(0x1fffffff\);;

    1250:	5d 97 75 79                                     	sbfx32uwd \$r29 = \$r29, \$r29;;

    1254:	de 97 79 f9 ff ff ff 00                         	sbfx32uwd \$r30 = \$r30, 536870911 \(0x1fffffff\);;

    125c:	df 87 79 79                                     	sbfx32wd \$r30 = \$r31, \$r31;;

    1260:	e0 87 7d f9 ff ff ff 00                         	sbfx32wd \$r31 = \$r32, 536870911 \(0x1fffffff\);;

    1268:	60 58 81 79                                     	sbfx32w \$r32 = \$r32, \$r33;;

    126c:	e1 57 85 f9 ff ff ff 00                         	sbfx32w \$r33 = \$r33, 536870911 \(0x1fffffff\);;

    1274:	a2 b8 8a 73                                     	sbfx4bo \$r34 = \$r34, \$r34;;

    1278:	e3 bf 8e f3 ff ff ff 00                         	sbfx4bo \$r35 = \$r35, 536870911 \(0x1fffffff\).@;;

    1280:	24 49 8d 73                                     	sbfx4d \$r35 = \$r36, \$r36;;

    1284:	e5 47 91 f3 ff ff ff 00                         	sbfx4d \$r36 = \$r37, 536870911 \(0x1fffffff\);;

    128c:	a5 79 95 73                                     	sbfx4hq \$r37 = \$r37, \$r38;;

    1290:	e6 7f 99 f3 ff ff ff 00                         	sbfx4hq \$r38 = \$r38, 536870911 \(0x1fffffff\).@;;

    1298:	e7 99 9d 73                                     	sbfx4uwd \$r39 = \$r39, \$r39;;

    129c:	e8 97 a1 f3 ff ff ff 00                         	sbfx4uwd \$r40 = \$r40, 536870911 \(0x1fffffff\);;

    12a4:	69 8a a1 73                                     	sbfx4wd \$r40 = \$r41, \$r41;;

    12a8:	ea 87 a5 f3 ff ff ff 00                         	sbfx4wd \$r41 = \$r42, 536870911 \(0x1fffffff\);;

    12b0:	ea 6a a9 73                                     	sbfx4wp \$r42 = \$r42, \$r43;;

    12b4:	eb 67 ad f3 ff ff ff 00                         	sbfx4wp \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    12bc:	2c 5b b1 73                                     	sbfx4w \$r44 = \$r44, \$r44;;

    12c0:	ed 57 b5 f3 ff ff ff 00                         	sbfx4w \$r45 = \$r45, 536870911 \(0x1fffffff\);;

    12c8:	ae 4b b5 7b                                     	sbfx64d \$r45 = \$r46, \$r46;;

    12cc:	ef 4f b9 fb ff ff ff 00                         	sbfx64d \$r46 = \$r47, 536870911 \(0x1fffffff\).@;;

    12d4:	2f 9c bd 7b                                     	sbfx64uwd \$r47 = \$r47, \$r48;;

    12d8:	f0 97 c1 fb ff ff ff 00                         	sbfx64uwd \$r48 = \$r48, 536870911 \(0x1fffffff\);;

    12e0:	71 8c c5 7b                                     	sbfx64wd \$r49 = \$r49, \$r49;;

    12e4:	f2 87 c9 fb ff ff ff 00                         	sbfx64wd \$r50 = \$r50, 536870911 \(0x1fffffff\);;

    12ec:	f3 5c c9 7b                                     	sbfx64w \$r50 = \$r51, \$r51;;

    12f0:	f4 57 cd fb ff ff ff 00                         	sbfx64w \$r51 = \$r52, 536870911 \(0x1fffffff\);;

    12f8:	74 bd d2 75                                     	sbfx8bo \$r52 = \$r52, \$r53;;

    12fc:	f5 b7 d6 f5 ff ff ff 00                         	sbfx8bo \$r53 = \$r53, 536870911 \(0x1fffffff\);;

    1304:	b6 4d d9 75                                     	sbfx8d \$r54 = \$r54, \$r54;;

    1308:	f7 4f dd f5 ff ff ff 00                         	sbfx8d \$r55 = \$r55, 536870911 \(0x1fffffff\).@;;

    1310:	38 7e dd 75                                     	sbfx8hq \$r55 = \$r56, \$r56;;

    1314:	f9 77 e1 f5 ff ff ff 00                         	sbfx8hq \$r56 = \$r57, 536870911 \(0x1fffffff\);;

    131c:	b9 9e e5 75                                     	sbfx8uwd \$r57 = \$r57, \$r58;;

    1320:	fa 97 e9 f5 ff ff ff 00                         	sbfx8uwd \$r58 = \$r58, 536870911 \(0x1fffffff\);;

    1328:	fb 8e ed 75                                     	sbfx8wd \$r59 = \$r59, \$r59;;

    132c:	fc 87 f1 f5 ff ff ff 00                         	sbfx8wd \$r60 = \$r60, 536870911 \(0x1fffffff\);;

    1334:	7d 6f f1 75                                     	sbfx8wp \$r60 = \$r61, \$r61;;

    1338:	fe 6f f5 f5 ff ff ff 00                         	sbfx8wp \$r61 = \$r62, 536870911 \(0x1fffffff\).@;;

    1340:	fe 5f f9 75                                     	sbfx8w \$r62 = \$r62, \$r63;;

    1344:	ff 57 fd f5 ff ff ff 00                         	sbfx8w \$r63 = \$r63, 536870911 \(0x1fffffff\);;

    134c:	c0 ff 02 ee ff ff ff 87 ff ff ff 00             	sbmm8 \$r0 = \$r0, 2305843009213693951 \(0x1fffffffffffffff\);;

    1358:	41 00 02 7e                                     	sbmm8 \$r0 = \$r1, \$r1;;

    135c:	02 f0 06 6e                                     	sbmm8 \$r1 = \$r2, -64 \(0xffffffc0\);;

    1360:	02 00 0a ee 00 00 80 07                         	sbmm8 \$r2 = \$r2, -8589934592 \(0xfffffffe00000000\);;

    1368:	c3 ff 0e ef ff ff ff 87 ff ff ff 00             	sbmmt8 \$r3 = \$r3, 2305843009213693951 \(0x1fffffffffffffff\);;

    1374:	04 01 0e 7f                                     	sbmmt8 \$r3 = \$r4, \$r4;;

    1378:	05 f0 12 6f                                     	sbmmt8 \$r4 = \$r5, -64 \(0xffffffc0\);;

    137c:	05 00 16 ef 00 00 80 07                         	sbmmt8 \$r5 = \$r5, -8589934592 \(0xfffffffe00000000\);;

    1384:	86 e1 1b 30                                     	sb \$r6\[\$r6\] = \$r6;;

    1388:	c7 ff 1d b0 ff ff ff 97 ff ff ff 10             	sb 2305843009213693951 \(0x1fffffffffffffff\)\[\$r7\] = \$r7;;

    1394:	c8 41 23 b0 00 00 00 90 00 00 80 17             	sb.dlez \$r7\? -1125899906842624 \(0xfffc000000000000\)\[\$r8\] = \$r8;;

    13a0:	09 52 27 b0 00 00 80 17                         	sb.dgtz \$r8\? -8388608 \(0xff800000\)\[\$r9\] = \$r9;;

    13a8:	4a 62 2b 30                                     	sb.odd \$r9\? \[\$r10\] = \$r10;;

    13ac:	0a f0 2d 30                                     	sb -64 \(0xffffffc0\)\[\$r10\] = \$r11;;

    13b0:	0b 00 2d b0 00 00 80 17                         	sb -8589934592 \(0xfffffffe00000000\)\[\$r11\] = \$r11;;

    13b8:	0c 00 e4 0f                                     	scall \$r12;;

    13bc:	ff 01 e0 0f                                     	scall 511 \(0x1ff\);;

    13c0:	0d f3 37 33                                     	sd.xs \$r12\[\$r13\] = \$r13;;

    13c4:	ce ff 39 b3 ff ff ff 97 ff ff ff 10             	sd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r14\] = \$r14;;

    13d0:	cf 73 43 b3 00 00 00 90 00 00 80 17             	sd.even \$r15\? -1125899906842624 \(0xfffc000000000000\)\[\$r15\] = \$r16;;

    13dc:	10 84 47 b3 00 00 80 17                         	sd.wnez \$r16\? -8388608 \(0xff800000\)\[\$r16\] = \$r17;;

    13e4:	51 94 4b 33                                     	sd.weqz \$r17\? \[\$r17\] = \$r18;;

    13e8:	12 f0 49 33                                     	sd -64 \(0xffffffc0\)\[\$r18\] = \$r18;;

    13ec:	13 00 4d b3 00 00 80 17                         	sd -8589934592 \(0xfffffffe00000000\)\[\$r19\] = \$r19;;

    13f4:	13 07 c0 0f                                     	set \$mmc = \$r19;;

    13f8:	d4 00 c0 0f                                     	set \$ra = \$r20;;

    13fc:	54 00 c0 0f                                     	set \$ps = \$r20;;

    1400:	54 00 c0 0f                                     	set \$ps = \$r20;;

    1404:	55 e5 57 31                                     	sh \$r21\[\$r21\] = \$r21;;

    1408:	d6 ff 59 b1 ff ff ff 97 ff ff ff 10             	sh 2305843009213693951 \(0x1fffffffffffffff\)\[\$r22\] = \$r22;;

    1414:	97 a5 5f b1 00 00 00 90 00 00 80 17             	sh.wltz \$r22\? -1125899906842624 \(0xfffc000000000000\)\[\$r23\] = \$r23;;

    1420:	d8 b5 63 b1 00 00 80 17                         	sh.wgez \$r23\? -8388608 \(0xff800000\)\[\$r24\] = \$r24;;

    1428:	19 c6 67 31                                     	sh.wlez \$r24\? \[\$r25\] = \$r25;;

    142c:	19 f0 69 31                                     	sh -64 \(0xffffffc0\)\[\$r25\] = \$r26;;

    1430:	1a 00 69 b1 00 00 80 17                         	sh -8589934592 \(0xfffffffe00000000\)\[\$r26\] = \$r26;;

    1438:	00 00 a4 0f                                     	sleep;;

    143c:	db f6 6e 79                                     	sllbos \$r27 = \$r27, \$r27;;

    1440:	dc e1 72 79                                     	sllbos \$r28 = \$r28, 7 \(0x7\);;

    1444:	5d 67 72 79                                     	slld \$r28 = \$r29, \$r29;;

    1448:	de 21 76 79                                     	slld \$r29 = \$r30, 7 \(0x7\);;

    144c:	de 97 7a 79                                     	sllhqs \$r30 = \$r30, \$r31;;

    1450:	df 51 7e 79                                     	sllhqs \$r31 = \$r31, 7 \(0x7\);;

    1454:	20 88 82 79                                     	sllwps \$r32 = \$r32, \$r32;;

    1458:	e1 41 86 79                                     	sllwps \$r33 = \$r33, 7 \(0x7\);;

    145c:	a2 78 86 79                                     	sllw \$r33 = \$r34, \$r34;;

    1460:	e3 31 8a 79                                     	sllw \$r34 = \$r35, 7 \(0x7\);;

    1464:	23 f9 8e 7c                                     	slsbos \$r35 = \$r35, \$r36;;

    1468:	e4 e1 92 7c                                     	slsbos \$r36 = \$r36, 7 \(0x7\);;

    146c:	65 69 96 7c                                     	slsd \$r37 = \$r37, \$r37;;

    1470:	e6 21 9a 7c                                     	slsd \$r38 = \$r38, 7 \(0x7\);;

    1474:	e7 99 9a 7c                                     	slshqs \$r38 = \$r39, \$r39;;

    1478:	e8 51 9e 7c                                     	slshqs \$r39 = \$r40, 7 \(0x7\);;

    147c:	68 8a a2 7c                                     	slswps \$r40 = \$r40, \$r41;;

    1480:	e9 41 a6 7c                                     	slswps \$r41 = \$r41, 7 \(0x7\);;

    1484:	aa 7a aa 7c                                     	slsw \$r42 = \$r42, \$r42;;

    1488:	eb 31 ae 7c                                     	slsw \$r43 = \$r43, 7 \(0x7\);;

    148c:	2c fb ae 7d                                     	slusbos \$r43 = \$r44, \$r44;;

    1490:	ed e1 b2 7d                                     	slusbos \$r44 = \$r45, 7 \(0x7\);;

    1494:	ad 6b b6 7d                                     	slusd \$r45 = \$r45, \$r46;;

    1498:	ee 21 ba 7d                                     	slusd \$r46 = \$r46, 7 \(0x7\);;

    149c:	ef 9b be 7d                                     	slushqs \$r47 = \$r47, \$r47;;

    14a0:	f0 51 c2 7d                                     	slushqs \$r48 = \$r48, 7 \(0x7\);;

    14a4:	71 8c c2 7d                                     	sluswps \$r48 = \$r49, \$r49;;

    14a8:	f2 41 c6 7d                                     	sluswps \$r49 = \$r50, 7 \(0x7\);;

    14ac:	f2 7c ca 7d                                     	slusw \$r50 = \$r50, \$r51;;

    14b0:	f3 31 ce 7d                                     	slusw \$r51 = \$r51, 7 \(0x7\);;

    14b4:	34 fd f7 34                                     	so.xs \$r52\[\$r52\] = \$r60r61r62r63;;

    14b8:	f4 ff 05 b4 ff ff ff 97 ff ff ff 10             	so 2305843009213693951 \(0x1fffffffffffffff\)\[\$r52\] = \$r0r1r2r3;;

    14c4:	75 3d 1f b4 00 00 00 90 00 00 80 17             	so.u3 \$r53\? -1125899906842624 \(0xfffc000000000000\)\[\$r53\] = \$r4r5r6r7;;

    14d0:	76 4d 2f b4 00 00 80 17                         	so.mt \$r53\? -8388608 \(0xff800000\)\[\$r54\] = \$r8r9r10r11;;

    14d8:	b6 5d 3f 34                                     	so.mf \$r54\? \[\$r54\] = \$r12r13r14r15;;

    14dc:	f7 dd 47 b4 00 00 00 90 00 00 80 17             	so.wgtz \$r55\? -1125899906842624 \(0xfffc000000000000\)\[\$r55\] = \$r16r17r18r19;;

    14e8:	f8 0d 57 b4 00 00 80 17                         	so.dnez \$r55\? -8388608 \(0xff800000\)\[\$r56\] = \$r20r21r22r23;;

    14f0:	38 1e 67 34                                     	so.deqz \$r56\? \[\$r56\] = \$r24r25r26r27;;

    14f4:	39 f0 75 34                                     	so -64 \(0xffffffc0\)\[\$r57\] = \$r28r29r30r31;;

    14f8:	39 00 85 b4 00 00 80 17                         	so -8589934592 \(0xfffffffe00000000\)\[\$r57\] = \$r32r33r34r35;;

    1500:	7a ee 43 34                                     	sq \$r57\[\$r58\] = \$r16r17;;

    1504:	fa ff 41 b4 ff ff ff 97 ff ff ff 10             	sq 2305843009213693951 \(0x1fffffffffffffff\)\[\$r58\] = \$r16r17;;

    1510:	bb 2e 4b b4 00 00 00 90 00 00 80 17             	sq.dltz \$r58\? -1125899906842624 \(0xfffc000000000000\)\[\$r59\] = \$r18r19;;

    151c:	fb 3e 4b b4 00 00 80 17                         	sq.dgez \$r59\? -8388608 \(0xff800000\)\[\$r59\] = \$r18r19;;

    1524:	3c 4f 53 34                                     	sq.dlez \$r60\? \[\$r60\] = \$r20r21;;

    1528:	3c f0 51 34                                     	sq -64 \(0xffffffc0\)\[\$r60\] = \$r20r21;;

    152c:	3d 00 59 b4 00 00 80 17                         	sq -8589934592 \(0xfffffffe00000000\)\[\$r61\] = \$r22r23;;

    1534:	bd ff f6 7a                                     	srabos \$r61 = \$r61, \$r62;;

    1538:	fe e1 fa 7a                                     	srabos \$r62 = \$r62, 7 \(0x7\);;

    153c:	ff 6f fe 7a                                     	srad \$r63 = \$r63, \$r63;;

    1540:	c0 21 02 7a                                     	srad \$r0 = \$r0, 7 \(0x7\);;

    1544:	41 90 02 7a                                     	srahqs \$r0 = \$r1, \$r1;;

    1548:	c2 51 06 7a                                     	srahqs \$r1 = \$r2, 7 \(0x7\);;

    154c:	c2 80 0a 7a                                     	srawps \$r2 = \$r2, \$r3;;

    1550:	c3 41 0e 7a                                     	srawps \$r3 = \$r3, 7 \(0x7\);;

    1554:	04 71 12 7a                                     	sraw \$r4 = \$r4, \$r4;;

    1558:	c5 31 16 7a                                     	sraw \$r5 = \$r5, 7 \(0x7\);;

    155c:	86 f1 16 7b                                     	srlbos \$r5 = \$r6, \$r6;;

    1560:	c7 e1 1a 7b                                     	srlbos \$r6 = \$r7, 7 \(0x7\);;

    1564:	07 62 1e 7b                                     	srld \$r7 = \$r7, \$r8;;

    1568:	c8 21 22 7b                                     	srld \$r8 = \$r8, 7 \(0x7\);;

    156c:	49 92 26 7b                                     	srlhqs \$r9 = \$r9, \$r9;;

    1570:	ca 51 2a 7b                                     	srlhqs \$r10 = \$r10, 7 \(0x7\);;

    1574:	cb 82 2a 7b                                     	srlwps \$r10 = \$r11, \$r11;;

    1578:	cc 41 2e 7b                                     	srlwps \$r11 = \$r12, 7 \(0x7\);;

    157c:	4d 73 32 7b                                     	srlw \$r12 = \$r13, \$r13;;

    1580:	ce 31 3a 7b                                     	srlw \$r14 = \$r14, 7 \(0x7\);;

    1584:	0f f4 3e 78                                     	srsbos \$r15 = \$r15, \$r16;;

    1588:	d0 e1 42 78                                     	srsbos \$r16 = \$r16, 7 \(0x7\);;

    158c:	51 64 46 78                                     	srsd \$r17 = \$r17, \$r17;;

    1590:	d2 21 4a 78                                     	srsd \$r18 = \$r18, 7 \(0x7\);;

    1594:	d3 94 4a 78                                     	srshqs \$r18 = \$r19, \$r19;;

    1598:	d4 51 4e 78                                     	srshqs \$r19 = \$r20, 7 \(0x7\);;

    159c:	54 85 52 78                                     	srswps \$r20 = \$r20, \$r21;;

    15a0:	d5 41 56 78                                     	srswps \$r21 = \$r21, 7 \(0x7\);;

    15a4:	96 75 5a 78                                     	srsw \$r22 = \$r22, \$r22;;

    15a8:	d7 31 5e 78                                     	srsw \$r23 = \$r23, 7 \(0x7\);;

    15ac:	00 00 a8 0f                                     	stop;;

    15b0:	18 66 5c 7e                                     	stsud \$r23 = \$r24, \$r24;;

    15b4:	d9 67 60 fe ff ff ff 00                         	stsud \$r24 = \$r25, 536870911 \(0x1fffffff\);;

    15bc:	99 b6 64 7e                                     	stsuhq \$r25 = \$r25, \$r26;;

    15c0:	da bf 68 fe ff ff ff 00                         	stsuhq \$r26 = \$r26, 536870911 \(0x1fffffff\).@;;

    15c8:	db a6 6c 7e                                     	stsuwp \$r27 = \$r27, \$r27;;

    15cc:	dc a7 70 fe ff ff ff 00                         	stsuwp \$r28 = \$r28, 536870911 \(0x1fffffff\);;

    15d4:	5d 77 70 7e                                     	stsuw \$r28 = \$r29, \$r29;;

    15d8:	de 77 74 fe ff ff ff 00                         	stsuw \$r29 = \$r30, 536870911 \(0x1fffffff\);;

    15e0:	9e f7 7f 32                                     	sw.xs \$r30\[\$r30\] = \$r31;;

    15e4:	df ff 7d b2 ff ff ff 97 ff ff ff 10             	sw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r31\] = \$r31;;

    15f0:	20 58 83 b2 00 00 00 90 00 00 80 17             	sw.dgtz \$r32\? -1125899906842624 \(0xfffc000000000000\)\[\$r32\] = \$r32;;

    15fc:	61 68 87 b2 00 00 80 17                         	sw.odd \$r33\? -8388608 \(0xff800000\)\[\$r33\] = \$r33;;

    1604:	a2 78 8b 32                                     	sw.even \$r34\? \[\$r34\] = \$r34;;

    1608:	23 f0 8d 32                                     	sw -64 \(0xffffffc0\)\[\$r35\] = \$r35;;

    160c:	23 00 91 b2 00 00 80 17                         	sw -8589934592 \(0xfffffffe00000000\)\[\$r35\] = \$r36;;

    1614:	24 70 93 68                                     	sxbd \$r36 = \$r36;;

    1618:	25 f0 97 68                                     	sxhd \$r37 = \$r37;;

    161c:	26 50 96 76                                     	sxlbhq \$r37 = \$r38;;

    1620:	26 40 9a 76                                     	sxlhwp \$r38 = \$r38;;

    1624:	27 50 9e 77                                     	sxmbhq \$r39 = \$r39;;

    1628:	28 40 9e 77                                     	sxmhwp \$r39 = \$r40;;

    162c:	28 f0 a3 69                                     	sxwd \$r40 = \$r40;;

    1630:	29 00 b4 0f                                     	syncgroup \$r41;;

    1634:	00 00 8c 0f                                     	tlbdinval;;

    1638:	00 00 90 0f                                     	tlbiinval;;

    163c:	00 00 84 0f                                     	tlbprobe;;

    1640:	00 00 80 0f                                     	tlbread;;

    1644:	00 00 88 0f                                     	tlbwrite;;

    1648:	29 00 b0 0f                                     	waitit \$r41;;

    164c:	69 00 b8 0f                                     	wfxl \$ps, \$r41;;

    1650:	aa 00 b8 0f                                     	wfxl \$pcr, \$r42;;

    1654:	6a 00 b8 0f                                     	wfxl \$ps, \$r42;;

    1658:	6a 00 bc 0f                                     	wfxm \$ps, \$r42;;

    165c:	ab 00 bc 0f                                     	wfxm \$pcr, \$r43;;

    1660:	ab 00 bc 0f                                     	wfxm \$pcr, \$r43;;

    1664:	2b 80 9c 40                                     	xaccesso \$r36r37r38r39 = \$a0..a1, \$r43;;

    1668:	6c 80 ac 40                                     	xaccesso \$r40r41r42r43 = \$a0..a3, \$r44;;

    166c:	ec 80 bc 40                                     	xaccesso \$r44r45r46r47 = \$a0..a7, \$r44;;

    1670:	ec 81 cc 40                                     	xaccesso \$r48r49r50r51 = \$a0..a15, \$r44;;

    1674:	ed 83 dc 40                                     	xaccesso \$r52r53r54r55 = \$a0..a31, \$r45;;

    1678:	ed 87 ec 40                                     	xaccesso \$r56r57r58r59 = \$a0..a63, \$r45;;

    167c:	ad 80 00 41                                     	xaligno \$a0 = \$a2..a3, \$r45;;

    1680:	6e 81 00 41                                     	xaligno \$a0 = \$a4..a7, \$r46;;

    1684:	ee 82 00 41                                     	xaligno \$a0 = \$a8..a15, \$r46;;

    1688:	ee 85 04 41                                     	xaligno \$a1 = \$a16..a31, \$r46;;

    168c:	ef 8b 04 41                                     	xaligno \$a1 = \$a32..a63, \$r47;;

    1690:	ef 87 04 41                                     	xaligno \$a1 = \$a0..a63, \$r47;;

    1694:	82 60 0b 47                                     	xandno \$a2 = \$a2, \$a2;;

    1698:	c3 00 0f 47                                     	xando \$a3 = \$a3, \$a3;;

    169c:	04 01 13 45                                     	xclampwo \$a4 = \$a4, \$a4;;

    16a0:	40 01 14 41                                     	xcopyo \$a5 = \$a5;;

    16a4:	00 01 05 47                                     	xcopyv \$a0a1a2a3 = \$a4a5a6a7;;

    16a8:	00 00 04 47                                     	xcopyx \$a0a1 = \$a0a1;;

    16ac:	46 31 0a 44                                     	xffma44hw.rz \$a2a3 = \$a5, \$a6;;

    16b0:	87 01 1a 45                                     	xfmaxhx \$a6 = \$a6, \$a7;;

    16b4:	c8 01 1d 45                                     	xfminhx \$a7 = \$a7, \$a8;;

    16b8:	04 c1 0b 44                                     	xfmma484hw.rna.s \$a2a3 = \$a4a5, \$a4a5;;

    16bc:	80 51 20 45                                     	xfnarrow44wh.rnz \$a8 = \$a6a7;;

    16c0:	6f e2 23 41                                     	xfscalewo.ro.s \$a8 = \$a9, \$r47;;

    16c4:	89 72 27 47                                     	xiorno \$a9 = \$a9, \$a10;;

    16c8:	ca 22 2b 47                                     	xioro \$a10 = \$a10, \$a11;;

    16cc:	30 ec 23 2a                                     	xlo.u.q0 \$a8a9a10a11 = \$r48\[\$r48\];;

    16d0:	31 fc 2f 23                                     	xlo.us.xs \$a11 = \$r48\[\$r49\];;

    16d4:	71 0c 37 a8 00 00 00 90 00 00 80 17             	xlo.dnez.q1 \$r49\? \$a12a13a14a15 = -1125899906842624 \(0xfffc000000000000\)\[\$r49\];;

    16e0:	b2 1c 4b a9 00 00 80 17                         	xlo.s.deqz.q2 \$r50\? \$a16a17a18a19 = -8388608 \(0xff800000\)\[\$r50\];;

    16e8:	b3 2c 5f 2a                                     	xlo.u.wnez.q3 \$r50\? \$a20a21a22a23 = \[\$r51\];;

    16ec:	f3 3c 2f a3 00 00 00 90 00 00 80 17             	xlo.us.weqz \$r51\? \$a11 = -1125899906842624 \(0xfffc000000000000\)\[\$r51\];;

    16f8:	34 4d 33 a0 00 00 80 17                         	xlo.mt \$r52\? \$a12 = -8388608 \(0xff800000\)\[\$r52\];;

    1700:	35 5d 33 21                                     	xlo.s.mf \$r52\? \$a12 = \[\$r53\];;

    1704:	75 0d 13 ae 00 00 00 90 00 00 80 17             	xlo.u \$a4..a5, \$r53 = -1125899906842624 \(0xfffc000000000000\)\[\$r53\];;

    1710:	b6 1d 1b af 00 00 80 17                         	xlo.us.q \$a6..a7, \$r54 = -8388608 \(0xff800000\)\[\$r54\];;

    1718:	b7 2d 23 2c                                     	xlo.d \$a8..a9, \$r54 = \[\$r55\];;

    171c:	f7 3d 27 ad 00 00 00 90 00 00 80 17             	xlo.s.w \$a8..a11, \$r55 = -1125899906842624 \(0xfffc000000000000\)\[\$r55\];;

    1728:	38 4e 37 ae 00 00 80 17                         	xlo.u.h \$a12..a15, \$r56 = -8388608 \(0xff800000\)\[\$r56\];;

    1730:	39 5e 47 2f                                     	xlo.us.b \$a16..a19, \$r56 = \[\$r57\];;

    1734:	79 0e 4f ac 00 00 00 90 00 00 80 17             	xlo \$a16..a23, \$r57 = -1125899906842624 \(0xfffc000000000000\)\[\$r57\];;

    1740:	ba 1e 6f ad 00 00 80 17                         	xlo.s.q \$a24..a31, \$r58 = -8388608 \(0xff800000\)\[\$r58\];;

    1748:	bb 2e 8f 2e                                     	xlo.u.d \$a32..a39, \$r58 = \[\$r59\];;

    174c:	fb 3e 9f af 00 00 00 90 00 00 80 17             	xlo.us.w \$a32..a47, \$r59 = -1125899906842624 \(0xfffc000000000000\)\[\$r59\];;

    1758:	3c 4f df ac 00 00 80 17                         	xlo.h \$a48..a63, \$r60 = -8388608 \(0xff800000\)\[\$r60\];;

    1760:	3d 5f 1f 2d                                     	xlo.s.b \$a0..a15, \$r60 = \[\$r61\];;

    1764:	7d 0f 3f ae 00 00 00 90 00 00 80 17             	xlo.u \$a0..a31, \$r61 = -1125899906842624 \(0xfffc000000000000\)\[\$r61\];;

    1770:	be 1f bf af 00 00 80 17                         	xlo.us.q \$a32..a63, \$r62 = -8388608 \(0xff800000\)\[\$r62\];;

    1778:	bf 2f 3f 2c                                     	xlo.d \$a0..a31, \$r62 = \[\$r63\];;

    177c:	ff 3f 7f ad 00 00 00 90 00 00 80 17             	xlo.s.w \$a0..a63, \$r63 = -1125899906842624 \(0xfffc000000000000\)\[\$r63\];;

    1788:	00 40 7f ae 00 00 80 17                         	xlo.u.h \$a0..a63, \$r0 = -8388608 \(0xff800000\)\[\$r0\];;

    1790:	01 50 7f 2f                                     	xlo.us.b \$a0..a63, \$r0 = \[\$r1\];;

    1794:	c1 ff 61 a8 ff ff ff 97 ff ff ff 10             	xlo.q0 \$a24a25a26a27 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r1\];;

    17a0:	01 f0 75 29                                     	xlo.s.q1 \$a28a29a30a31 = -64 \(0xffffffc0\)\[\$r1\];;

    17a4:	02 00 89 aa 00 00 80 17                         	xlo.u.q2 \$a32a33a34a35 = -8589934592 \(0xfffffffe00000000\)\[\$r2\];;

    17ac:	c2 ff 31 a3 ff ff ff 97 ff ff ff 10             	xlo.us \$a12 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r2\];;

    17b8:	02 f0 35 20                                     	xlo \$a13 = -64 \(0xffffffc0\)\[\$r2\];;

    17bc:	03 00 35 a1 00 00 80 17                         	xlo.s \$a13 = -8589934592 \(0xfffffffe00000000\)\[\$r3\];;

    17c4:	4e 03 18 43                                     	xmadd44bw0 \$a6a7 = \$a13, \$a14;;

    17c8:	8e 03 24 43                                     	xmadd44bw1 \$a8a9 = \$a14, \$a14;;

    17cc:	cf 73 3c 44                                     	xmaddifwo \$a15 = \$a15, \$a15;;

    17d0:	10 04 22 43                                     	xmaddsu44bw0 \$a8a9 = \$a16, \$a16;;

    17d4:	11 04 2e 43                                     	xmaddsu44bw1 \$a10a11 = \$a16, \$a17;;

    17d8:	51 04 29 43                                     	xmaddu44bw0 \$a10a11 = \$a17, \$a17;;

    17dc:	92 04 35 43                                     	xmaddu44bw1 \$a12a13 = \$a18, \$a18;;

    17e0:	8e 03 30 42                                     	xmma4164bw \$a12a13 = \$a14a15, \$a14a15;;

    17e4:	93 04 44 42                                     	xmma484bw \$a16a17 = \$a18, \$a19;;

    17e8:	92 04 42 42                                     	xmmasu4164bw \$a16a17 = \$a18a19, \$a18a19;;

    17ec:	d3 04 56 42                                     	xmmasu484bw \$a20a21 = \$a19, \$a19;;

    17f0:	96 05 51 42                                     	xmmau4164bw \$a20a21 = \$a22a23, \$a22a23;;

    17f4:	14 05 65 42                                     	xmmau484bw \$a24a25 = \$a20, \$a20;;

    17f8:	9a 06 63 42                                     	xmmaus4164bw \$a24a25 = \$a26a27, \$a26a27;;

    17fc:	15 05 77 42                                     	xmmaus484bw \$a28a29 = \$a20, \$a21;;

    1800:	00 c0 0c 40                                     	xmovefd \$r3 = \$a0_x;;

    1804:	40 85 f4 40                                     	xmovefo \$r60r61r62r63 = \$a21;;

    1808:	00 00 5c 40                                     	xmovefq \$r22r23 = \$a0_lo;;

    180c:	03 e0 01 73                                     	xmovetd \$a0_t = \$r3;;

    1810:	04 e0 01 70                                     	xmovetd \$a0_x = \$r4;;

    1814:	04 e0 01 71                                     	xmovetd \$a0_y = \$r4;;

    1818:	04 e0 01 72                                     	xmovetd \$a0_z = \$r4;;

    181c:	45 e1 01 74                                     	xmovetq \$a0_lo = \$r5, \$r5;;

    1820:	85 e1 01 75                                     	xmovetq \$a0_hi = \$r5, \$r6;;

    1824:	96 85 55 44                                     	xmsbfifwo.rn.s \$a21 = \$a22, \$a22;;

    1828:	00 1a 95 47                                     	xcopyv.td \$a36a37a38a39 = \$a40a41a42a43;;

    182c:	d7 15 5b 47                                     	xnando \$a22 = \$a23, \$a23;;

    1830:	18 36 5f 47                                     	xnioro \$a23 = \$a24, \$a24;;

    1834:	59 36 63 47                                     	xnioro \$a24 = \$a25, \$a25;;

    1838:	9a 56 67 47                                     	xnxoro \$a25 = \$a26, \$a26;;

    183c:	c6 ff 18 ec ff ff ff 87 ff ff ff 00             	xord \$r6 = \$r6, 2305843009213693951 \(0x1fffffffffffffff\);;

    1848:	c7 01 1d 7c                                     	xord \$r7 = \$r7, \$r7;;

    184c:	08 f0 20 6c                                     	xord \$r8 = \$r8, -64 \(0xffffffc0\);;

    1850:	09 00 20 ec 00 00 80 07                         	xord \$r8 = \$r9, -8589934592 \(0xfffffffe00000000\);;

    1858:	db 76 6b 47                                     	xiorno \$a26 = \$a27, \$a27;;

    185c:	89 c0 26 72                                     	xorrbod \$r9 = \$r9;;

    1860:	4a c0 2a 72                                     	xorrhqd \$r10 = \$r10;;

    1864:	0b c0 2a 72                                     	xorrwpd \$r10 = \$r11;;

    1868:	0b 13 2d 7c                                     	xorw \$r11 = \$r11, \$r12;;

    186c:	cd 17 31 fc ff ff ff 00                         	xorw \$r12 = \$r13, 536870911 \(0x1fffffff\);;

    1874:	00 e0 6d 78                                     	xrecvo.f \$a27;;

    1878:	1c e7 72 47                                     	xsbmm8dq \$a28 = \$a28, \$a28;;

    187c:	5d f7 76 47                                     	xsbmmt8dq \$a29 = \$a29, \$a29;;

    1880:	80 e7 01 77                                     	xsendo.b \$a30;;

    1884:	80 e7 79 7e                                     	xsendrecvo.f.b \$a30, \$a30;;

    1888:	4e e3 7f 35                                     	xso \$r13\[\$r14\] = \$a31;;

    188c:	ce ff 7d b5 ff ff ff 97 ff ff ff 10             	xso 2305843009213693951 \(0x1fffffffffffffff\)\[\$r14\] = \$a31;;

    1898:	cf 63 7f b5 00 00 00 90 00 00 80 17             	xso.mtc \$r15\? -1125899906842624 \(0xfffc000000000000\)\[\$r15\] = \$a31;;

    18a4:	10 74 83 b5 00 00 80 17                         	xso.mfc \$r16\? -8388608 \(0xff800000\)\[\$r16\] = \$a32;;

    18ac:	11 04 83 35                                     	xso.dnez \$r16\? \[\$r17\] = \$a32;;

    18b0:	11 f0 81 35                                     	xso -64 \(0xffffffc0\)\[\$r17\] = \$a32;;

    18b4:	11 00 85 b5 00 00 80 17                         	xso -8589934592 \(0xfffffffe00000000\)\[\$r17\] = \$a33;;

    18bc:	c0 ff 85 ee ff ff ff 87 ff ff ff 00             	xsplatdo \$a33 = 2305843009213693951 \(0x1fffffffffffffff\);;

    18c8:	3c 00 85 ee 00 00 00 00                         	xsplatdo \$a33 = -549755813888 \(0xffffff8000000000\);;

    18d0:	00 f0 89 6e                                     	xsplatdo \$a34 = -4096 \(0xfffff000\);;

    18d4:	80 18 b1 47                                     	xsplatov.td \$a44a45a46a47 = \$a34;;

    18d8:	80 18 70 47                                     	xsplatox.zd \$a28a29 = \$a34;;

    18dc:	c0 08 c1 46                                     	xsx48bw \$a48a49a50a51 = \$a35;;

    18e0:	00 0d 8c 46                                     	xtrunc48wb \$a35 = \$a52a53a54a55;;

    18e4:	24 49 8f 47                                     	xxoro \$a35 = \$a36, \$a36;;

    18e8:	00 09 e5 46                                     	xzx48bw \$a56a57a58a59 = \$a36;;

    18ec:	12 70 4b 64                                     	zxbd \$r18 = \$r18;;

    18f0:	13 f0 4b 64                                     	zxhd \$r18 = \$r19;;

    18f4:	13 50 4e 74                                     	zxlbhq \$r19 = \$r19;;

    18f8:	14 40 52 74                                     	zxlhwp \$r20 = \$r20;;

    18fc:	15 50 52 75                                     	zxmbhq \$r20 = \$r21;;

    1900:	15 40 56 75                                     	zxmhwp \$r21 = \$r21;;

    1904:	16 f0 5b 65                                     	zxwd \$r22 = \$r22;;


