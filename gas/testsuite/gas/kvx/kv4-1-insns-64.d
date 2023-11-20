#as: -march=kv4-1
#objdump: -d
.*\/kv4-1-insns-64.o:     file format elf64-kvx

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

     5fc:	00 00 80 1f                                     	call fffffffffe0005fc <main\+0xfffffffffe0005fc>;;

     600:	01 20 06 72                                     	cbsd \$r1 = \$r1;;

     604:	02 40 06 72                                     	cbswp \$r1 = \$r2;;

     608:	02 30 0a 72                                     	cbsw \$r2 = \$r2;;

     60c:	03 00 78 08                                     	cb.dnez \$r3\? ffffffffffff860c <main\+0xffffffffffff860c>;;

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

     7c8:	f8 ff e0 ec ff ff ff 87 ff ff ff 00             	eord \$r56 = \$r56, 2305843009213693951 \(0x1fffffffffffffff\);;

     7d4:	79 0e e5 7c                                     	eord \$r57 = \$r57, \$r57;;

     7d8:	3a f0 e8 6c                                     	eord \$r58 = \$r58, -64 \(0xffffffc0\);;

     7dc:	3b 00 e8 ec 00 00 80 07                         	eord \$r58 = \$r59, -8589934592 \(0xfffffffe00000000\);;

     7e4:	bb c0 ee 72                                     	eorrbod \$r59 = \$r59;;

     7e8:	7c c0 f2 72                                     	eorrhqd \$r60 = \$r60;;

     7ec:	3d c0 f2 72                                     	eorrwpd \$r60 = \$r61;;

     7f0:	bd 1f f5 7c                                     	eorw \$r61 = \$r61, \$r62;;

     7f4:	fe 17 f9 fc ff ff ff 00                         	eorw \$r62 = \$r62, 536870911 \(0x1fffffff\);;

     7fc:	00 00 00 00                                     	errop;;

     800:	ff 71 ff 68                                     	extfs \$r63 = \$r63, 7 \(0x7\), 7 \(0x7\);;

     804:	c0 71 ff 64                                     	extfz \$r63 = \$r0, 7 \(0x7\), 7 \(0x7\);;

     808:	40 60 03 70                                     	fabsd \$r0 = \$r0;;

     80c:	41 60 07 73                                     	fabshq \$r1 = \$r1;;

     810:	42 60 07 72                                     	fabswp \$r1 = \$r2;;

     814:	42 60 0b 71                                     	fabsw \$r2 = \$r2;;

     818:	c3 20 0f 70                                     	faddd.rn \$r3 = \$r3, \$r3;;

     81c:	04 a1 13 79                                     	faddhq.ru \$r4 = \$r4, \$r4;;

     820:	45 21 17 7a                                     	faddwp.rd \$r5 = \$r5, \$r5;;

     824:	86 21 1b 7b                                     	faddwp.rz \$r6 = \$r6, \$r6;;

     828:	c7 a1 1f 74                                     	faddw.rna \$r7 = \$r7, \$r7;;

     82c:	08 d2 20 78                                     	fcompd.one \$r8 = \$r8, \$r8;;

     830:	c9 d7 24 f9 ff ff ff 00                         	fcompd.ueq \$r9 = \$r9, 536870911 \(0x1fffffff\);;

     838:	8a f2 24 7a                                     	fcompnd.oeq \$r9 = \$r10, \$r10;;

     83c:	cb f7 28 fb ff ff ff 00                         	fcompnd.une \$r10 = \$r11, 536870911 \(0x1fffffff\);;

     844:	0b e3 2c 7c                                     	fcompnhq.olt \$r11 = \$r11, \$r12;;

     848:	cd e7 30 fd ff ff ff 00                         	fcompnhq.uge \$r12 = \$r13, 536870911 \(0x1fffffff\);;

     850:	8e e3 34 76                                     	fcompnwp.oge \$r13 = \$r14, \$r14;;

     854:	cf ef 3c f7 ff ff ff 00                         	fcompnwp.ult \$r15 = \$r15, 536870911 \(0x1fffffff\).@;;

     85c:	10 f4 40 70                                     	fcompnw.one \$r16 = \$r16, \$r16;;

     860:	d1 f7 44 f1 ff ff ff 00                         	fcompnw.ueq \$r17 = \$r17, 536870911 \(0x1fffffff\);;

     868:	92 d4 44 72                                     	fcompw.oeq \$r17 = \$r18, \$r18;;

     86c:	d3 d7 48 f3 ff ff ff 00                         	fcompw.une \$r18 = \$r19, 536870911 \(0x1fffffff\);;

     874:	00 00 fc 3c                                     	fence;;

     878:	13 05 4f 75                                     	ffmad.rnz \$r19 = \$r19, \$r20;;

     87c:	54 85 53 7e                                     	ffmahq.ro \$r20 = \$r20, \$r21;;

     880:	95 65 57 7f                                     	ffmawc \$r21 = \$r21, \$r22;;

     884:	d6 05 5b 78                                     	ffmawp.rn \$r22 = \$r22, \$r23;;

     888:	17 86 5f 71                                     	ffmaw.ru \$r23 = \$r23, \$r24;;

     88c:	58 16 63 72                                     	ffmsd.rd \$r24 = \$r24, \$r25;;

     890:	99 96 67 7b                                     	ffmshq.rz \$r25 = \$r25, \$r26;;

     894:	da e6 6b 7c                                     	ffmswc.rna \$r26 = \$r26, \$r27;;

     898:	1b 17 6f 7d                                     	ffmswp.rnz \$r27 = \$r27, \$r28;;

     89c:	5c 97 73 76                                     	ffmsw.ro \$r28 = \$r28, \$r29;;

     8a0:	9d 50 77 77                                     	fixedd \$r29 = \$r29;;

     8a4:	de 50 7b 70                                     	fixedud.rn \$r30 = \$r30;;

     8a8:	df 50 7b 79                                     	fixeduwp.ru \$r30 = \$r31;;

     8ac:	df d0 7f 72                                     	fixeduw.rd \$r31 = \$r31;;

     8b0:	a0 50 83 7b                                     	fixedwp.rz \$r32 = \$r32;;

     8b4:	a1 d0 83 74                                     	fixedw.rna \$r32 = \$r33;;

     8b8:	21 50 87 75                                     	floatd.rnz \$r33 = \$r33;;

     8bc:	62 50 8b 76                                     	floatud.ro \$r34 = \$r34;;

     8c0:	63 50 8b 7f                                     	floatuwp \$r34 = \$r35;;

     8c4:	63 d0 8f 70                                     	floatuw.rn \$r35 = \$r35;;

     8c8:	24 50 93 79                                     	floatwp.ru \$r36 = \$r36;;

     8cc:	25 d0 93 72                                     	floatw.rd \$r36 = \$r37;;

     8d0:	a5 a9 95 71                                     	fmaxd \$r37 = \$r37, \$r38;;

     8d4:	e6 a9 99 77                                     	fmaxhq \$r38 = \$r38, \$r39;;

     8d8:	27 aa 9d 75                                     	fmaxwp \$r39 = \$r39, \$r40;;

     8dc:	68 aa a1 73                                     	fmaxw \$r40 = \$r40, \$r41;;

     8e0:	a9 aa a5 70                                     	fmind \$r41 = \$r41, \$r42;;

     8e4:	ea aa a9 76                                     	fminhq \$r42 = \$r42, \$r43;;

     8e8:	2b ab ad 74                                     	fminwp \$r43 = \$r43, \$r44;;

     8ec:	6c ab b1 72                                     	fminw \$r44 = \$r44, \$r45;;

     8f0:	ad 4b b7 73                                     	fmuld.rz \$r45 = \$r45, \$r46;;

     8f4:	ee cb bb 7c                                     	fmulhq.rna \$r46 = \$r46, \$r47;;

     8f8:	2f ec bf 75                                     	fmulwc.rnz \$r47 = \$r47, \$r48;;

     8fc:	70 4c c3 7e                                     	fmulwp.ro \$r48 = \$r48, \$r49;;

     900:	b1 cc c7 77                                     	fmulw \$r49 = \$r49, \$r50;;

     904:	0e f8 cb 78                                     	fnarrowdwp.rn \$r50 = \$r14r15;;

     908:	33 f4 cb 79                                     	fnarrowdw.ru \$r50 = \$r51;;

     90c:	50 f8 cf 7a                                     	fnarrowwhq.rd \$r51 = \$r16r17;;

     910:	74 f4 cf 7b                                     	fnarrowwh.rz \$r51 = \$r52;;

     914:	34 60 d3 70                                     	fnegd \$r52 = \$r52;;

     918:	35 60 d7 73                                     	fneghq \$r53 = \$r53;;

     91c:	36 60 d7 72                                     	fnegwp \$r53 = \$r54;;

     920:	36 60 db 71                                     	fnegw \$r54 = \$r54;;

     924:	37 d4 df 74                                     	frecw.rna \$r55 = \$r55;;

     928:	78 d4 df 75                                     	frsrw.rnz \$r55 = \$r56;;

     92c:	78 3e e3 76                                     	fsbfd.ro \$r56 = \$r56, \$r57;;

     930:	b9 be e7 7f                                     	fsbfhq \$r57 = \$r57, \$r58;;

     934:	fa 3e eb 78                                     	fsbfwp.rn \$r58 = \$r58, \$r59;;

     938:	3b 3f ef 79                                     	fsbfwp.ru \$r59 = \$r59, \$r60;;

     93c:	7c bf f3 72                                     	fsbfw.rd \$r60 = \$r60, \$r61;;

     940:	bd 60 f7 70                                     	fsrecd \$r61 = \$r61;;

     944:	be 60 fb 72                                     	fsrecwp \$r62 = \$r62;;

     948:	bf 60 fb 71                                     	fsrecw \$r62 = \$r63;;

     94c:	ff 60 ff 70                                     	fsrsrd \$r63 = \$r63;;

     950:	c0 60 03 72                                     	fsrsrwp \$r0 = \$r0;;

     954:	c1 60 03 71                                     	fsrsrw \$r0 = \$r1;;

     958:	01 61 07 72                                     	fwidenlhwp \$r1 = \$r1;;

     95c:	02 61 0b 71                                     	fwidenlhw \$r2 = \$r2;;

     960:	03 61 0b 70                                     	fwidenlwd \$r2 = \$r3;;

     964:	43 61 0f 72                                     	fwidenmhwp \$r3 = \$r3;;

     968:	44 61 13 71                                     	fwidenmhw \$r4 = \$r4;;

     96c:	45 61 13 70                                     	fwidenmwd \$r4 = \$r5;;

     970:	05 00 c4 0f                                     	get \$r5 = \$pc;;

     974:	05 00 c4 0f                                     	get \$r5 = \$pc;;

     978:	00 00 80 17                                     	goto fffffffffe000978 <main\+0xfffffffffe000978>;;

     97c:	86 e1 5e 3c                                     	i1invals \$r6\[\$r6\];;

     980:	c6 ff 5c bc ff ff ff 97 ff ff ff 10             	i1invals 2305843009213693951 \(0x1fffffffffffffff\)\[\$r6\];;

     98c:	07 f0 5c 3c                                     	i1invals -64 \(0xffffffc0\)\[\$r7\];;

     990:	07 00 5c bc 00 00 80 17                         	i1invals -8589934592 \(0xfffffffe00000000\)\[\$r7\];;

     998:	00 00 cc 3c                                     	i1inval;;

     99c:	07 00 dc 0f                                     	icall \$r7;;

     9a0:	08 00 cc 0f                                     	iget \$r8;;

     9a4:	08 00 d8 0f                                     	igoto \$r8;;

     9a8:	c9 71 23 60                                     	insf \$r8 = \$r9, 7 \(0x7\), 7 \(0x7\);;

     9ac:	c9 ff 24 ea ff ff ff 87 ff ff ff 00             	iord \$r9 = \$r9, 2305843009213693951 \(0x1fffffffffffffff\);;

     9b8:	8a 02 29 7a                                     	iord \$r10 = \$r10, \$r10;;

     9bc:	0b f0 2c 6a                                     	iord \$r11 = \$r11, -64 \(0xffffffc0\);;

     9c0:	0c 00 2c ea 00 00 80 07                         	iord \$r11 = \$r12, -8589934592 \(0xfffffffe00000000\);;

     9c8:	cd ff 30 ef ff ff ff 87 ff ff ff 00             	iornd \$r12 = \$r13, 2305843009213693951 \(0x1fffffffffffffff\);;

     9d4:	8e 03 35 7f                                     	iornd \$r13 = \$r14, \$r14;;

     9d8:	0f f0 3c 6f                                     	iornd \$r15 = \$r15, -64 \(0xffffffc0\);;

     9dc:	10 00 40 ef 00 00 80 07                         	iornd \$r16 = \$r16, -8589934592 \(0xfffffffe00000000\);;

     9e4:	51 14 41 7f                                     	iornw \$r16 = \$r17, \$r17;;

     9e8:	d2 17 45 ff ff ff ff 00                         	iornw \$r17 = \$r18, 536870911 \(0x1fffffff\);;

     9f0:	92 c0 4a 71                                     	iorrbod \$r18 = \$r18;;

     9f4:	53 c0 4e 71                                     	iorrhqd \$r19 = \$r19;;

     9f8:	14 c0 4e 71                                     	iorrwpd \$r19 = \$r20;;

     9fc:	54 15 51 7a                                     	iorw \$r20 = \$r20, \$r21;;

     a00:	d5 17 55 fa ff ff ff 00                         	iorw \$r21 = \$r21, 536870911 \(0x1fffffff\);;

     a08:	96 65 5a 70                                     	landd \$r22 = \$r22, \$r22;;

     a0c:	d7 75 5e 70                                     	landw \$r23 = \$r23, \$r23;;

     a10:	d8 77 62 f0 ff ff ff 00                         	landw \$r24 = \$r24, 536870911 \(0x1fffffff\);;

     a18:	59 f6 62 24                                     	lbs.xs \$r24 = \$r25\[\$r25\];;

     a1c:	5a 56 6a a5 00 00 00 90 00 00 80 17             	lbs.s.dgtz \$r25\? \$r26 = -1125899906842624 \(0xfffc000000000000\)\[\$r26\];;

     a28:	9b 66 6e a6 00 00 80 17                         	lbs.u.odd \$r26\? \$r27 = -8388608 \(0xff800000\)\[\$r27\];;

     a30:	dc 76 72 27                                     	lbs.us.even \$r27\? \$r28 = \[\$r28\];;

     a34:	dd ff 70 a4 ff ff ff 97 ff ff ff 10             	lbs \$r28 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r29\];;

     a40:	1d f0 74 25                                     	lbs.s \$r29 = -64 \(0xffffffc0\)\[\$r29\];;

     a44:	1e 00 78 a6 00 00 80 17                         	lbs.u \$r30 = -8589934592 \(0xfffffffe00000000\)\[\$r30\];;

     a4c:	df e7 7a 23                                     	lbz.us \$r30 = \$r31\[\$r31\];;

     a50:	e0 87 82 a0 00 00 00 90 00 00 80 17             	lbz.wnez \$r31\? \$r32 = -1125899906842624 \(0xfffc000000000000\)\[\$r32\];;

     a5c:	21 98 86 a1 00 00 80 17                         	lbz.s.weqz \$r32\? \$r33 = -8388608 \(0xff800000\)\[\$r33\];;

     a64:	62 a8 8a 22                                     	lbz.u.wltz \$r33\? \$r34 = \[\$r34\];;

     a68:	e3 ff 88 a3 ff ff ff 97 ff ff ff 10             	lbz.us \$r34 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r35\];;

     a74:	23 f0 8c 20                                     	lbz \$r35 = -64 \(0xffffffc0\)\[\$r35\];;

     a78:	24 00 90 a1 00 00 80 17                         	lbz.s \$r36 = -8589934592 \(0xfffffffe00000000\)\[\$r36\];;

     a80:	65 f9 92 3a                                     	ld.u.xs \$r36 = \$r37\[\$r37\];;

     a84:	66 b9 9a bb 00 00 00 90 00 00 80 17             	ld.us.wgez \$r37\? \$r38 = -1125899906842624 \(0xfffc000000000000\)\[\$r38\];;

     a90:	a7 c9 9e b8 00 00 80 17                         	ld.wlez \$r38\? \$r39 = -8388608 \(0xff800000\)\[\$r39\];;

     a98:	e8 d9 a2 39                                     	ld.s.wgtz \$r39\? \$r40 = \[\$r40\];;

     a9c:	e9 ff a0 ba ff ff ff 97 ff ff ff 10             	ld.u \$r40 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r41\];;

     aa8:	29 f0 a4 3b                                     	ld.us \$r41 = -64 \(0xffffffc0\)\[\$r41\];;

     aac:	2a 00 a8 b8 00 00 80 17                         	ld \$r42 = -8589934592 \(0xfffffffe00000000\)\[\$r42\];;

     ab4:	eb ea aa 2d                                     	lhs.s \$r42 = \$r43\[\$r43\];;

     ab8:	ec 0a b2 ae 00 00 00 90 00 00 80 17             	lhs.u.dnez \$r43\? \$r44 = -1125899906842624 \(0xfffc000000000000\)\[\$r44\];;

     ac4:	2d 1b b6 af 00 00 80 17                         	lhs.us.deqz \$r44\? \$r45 = -8388608 \(0xff800000\)\[\$r45\];;

     acc:	6e 2b ba 2c                                     	lhs.dltz \$r45\? \$r46 = \[\$r46\];;

     ad0:	ef ff b8 ad ff ff ff 97 ff ff ff 10             	lhs.s \$r46 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r47\];;

     adc:	2f f0 bc 2e                                     	lhs.u \$r47 = -64 \(0xffffffc0\)\[\$r47\];;

     ae0:	30 00 c0 af 00 00 80 17                         	lhs.us \$r48 = -8589934592 \(0xfffffffe00000000\)\[\$r48\];;

     ae8:	71 fc c2 28                                     	lhz.xs \$r48 = \$r49\[\$r49\];;

     aec:	72 3c ca a9 00 00 00 90 00 00 80 17             	lhz.s.dgez \$r49\? \$r50 = -1125899906842624 \(0xfffc000000000000\)\[\$r50\];;

     af8:	b3 4c ce aa 00 00 80 17                         	lhz.u.dlez \$r50\? \$r51 = -8388608 \(0xff800000\)\[\$r51\];;

     b00:	f4 5c d2 2b                                     	lhz.us.dgtz \$r51\? \$r52 = \[\$r52\];;

     b04:	f5 ff d0 a8 ff ff ff 97 ff ff ff 10             	lhz \$r52 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r53\];;

     b10:	35 f0 d4 29                                     	lhz.s \$r53 = -64 \(0xffffffc0\)\[\$r53\];;

     b14:	36 00 d8 aa 00 00 80 17                         	lhz.u \$r54 = -8589934592 \(0xfffffffe00000000\)\[\$r54\];;

     b1c:	f7 6d da 72                                     	liord \$r54 = \$r55, \$r55;;

     b20:	38 7e de 72                                     	liorw \$r55 = \$r56, \$r56;;

     b24:	f9 77 e2 f2 ff ff ff 00                         	liorw \$r56 = \$r57, 536870911 \(0x1fffffff\);;

     b2c:	b9 6e e6 71                                     	lnandd \$r57 = \$r57, \$r58;;

     b30:	fa 7e ea 71                                     	lnandw \$r58 = \$r58, \$r59;;

     b34:	fb 77 ee f1 ff ff ff 00                         	lnandw \$r59 = \$r59, 536870911 \(0x1fffffff\);;

     b3c:	3c 6f f2 73                                     	lniord \$r60 = \$r60, \$r60;;

     b40:	7d 7f f6 73                                     	lniorw \$r61 = \$r61, \$r61;;

     b44:	fe 77 fa f3 ff ff ff 00                         	lniorw \$r62 = \$r62, 536870911 \(0x1fffffff\);;

     b4c:	ff 6f fa 73                                     	lniord \$r62 = \$r63, \$r63;;

     b50:	00 70 fe 73                                     	lniorw \$r63 = \$r0, \$r0;;

     b54:	c1 77 02 f3 ff ff ff 00                         	lniorw \$r0 = \$r1, 536870911 \(0x1fffffff\);;

     b5c:	01 00 78 0f                                     	loopdo \$r1, ffffffffffff8b5c <main\+0xffffffffffff8b5c>;;

     b60:	82 60 06 72                                     	liord \$r1 = \$r2, \$r2;;

     b64:	c3 70 0a 72                                     	liorw \$r2 = \$r3, \$r3;;

     b68:	c4 77 0e f2 ff ff ff 00                         	liorw \$r3 = \$r4, 536870911 \(0x1fffffff\);;

     b70:	04 e1 56 3f                                     	lo.us \$r20r21r22r23 = \$r4\[\$r4\];;

     b74:	45 01 6e bc 00 00 00 90 00 00 80 17             	lo.u0 \$r5\? \$r24r25r26r27 = -1125899906842624 \(0xfffc000000000000\)\[\$r5\];;

     b80:	46 11 7e bd 00 00 80 17                         	lo.s.u1 \$r5\? \$r28r29r30r31 = -8388608 \(0xff800000\)\[\$r6\];;

     b88:	86 21 8e 3e                                     	lo.u.u2 \$r6\? \$r32r33r34r35 = \[\$r6\];;

     b8c:	c7 61 96 bf 00 00 00 90 00 00 80 17             	lo.us.odd \$r7\? \$r36r37r38r39 = -1125899906842624 \(0xfffc000000000000\)\[\$r7\];;

     b98:	c8 71 a6 bc 00 00 80 17                         	lo.even \$r7\? \$r40r41r42r43 = -8388608 \(0xff800000\)\[\$r8\];;

     ba0:	08 82 b6 3d                                     	lo.s.wnez \$r8\? \$r44r45r46r47 = \[\$r8\];;

     ba4:	c9 ff c4 be ff ff ff 97 ff ff ff 10             	lo.u \$r48r49r50r51 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r9\];;

     bb0:	09 f0 d4 3f                                     	lo.us \$r52r53r54r55 = -64 \(0xffffffc0\)\[\$r9\];;

     bb4:	09 00 e4 bc 00 00 80 17                         	lo \$r56r57r58r59 = -8589934592 \(0xfffffffe00000000\)\[\$r9\];;

     bbc:	8a f2 42 3d                                     	lq.s.xs \$r16r17 = \$r10\[\$r10\];;

     bc0:	8b 92 4a be 00 00 00 90 00 00 80 17             	lq.u.weqz \$r10\? \$r18r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r11\];;

     bcc:	cb a2 4a bf 00 00 80 17                         	lq.us.wltz \$r11\? \$r18r19 = -8388608 \(0xff800000\)\[\$r11\];;

     bd4:	0c b3 52 3c                                     	lq.wgez \$r12\? \$r20r21 = \[\$r12\];;

     bd8:	cd ff 50 bd ff ff ff 97 ff ff ff 10             	lq.s \$r20r21 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r13\];;

     be4:	0d f0 58 3e                                     	lq.u \$r22r23 = -64 \(0xffffffc0\)\[\$r13\];;

     be8:	0e 00 58 bf 00 00 80 17                         	lq.us \$r22r23 = -8589934592 \(0xfffffffe00000000\)\[\$r14\];;

     bf0:	cf e3 3a 34                                     	lws \$r14 = \$r15\[\$r15\];;

     bf4:	10 c4 42 b5 00 00 00 90 00 00 80 17             	lws.s.wlez \$r16\? \$r16 = -1125899906842624 \(0xfffc000000000000\)\[\$r16\];;

     c00:	51 d4 46 b6 00 00 80 17                         	lws.u.wgtz \$r17\? \$r17 = -8388608 \(0xff800000\)\[\$r17\];;

     c08:	92 04 4a 37                                     	lws.us.dnez \$r18\? \$r18 = \[\$r18\];;

     c0c:	d3 ff 4c b4 ff ff ff 97 ff ff ff 10             	lws \$r19 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r19\];;

     c18:	14 f0 4c 35                                     	lws.s \$r19 = -64 \(0xffffffc0\)\[\$r20\];;

     c1c:	14 00 50 b6 00 00 80 17                         	lws.u \$r20 = -8589934592 \(0xfffffffe00000000\)\[\$r20\];;

     c24:	55 f5 56 33                                     	lwz.us.xs \$r21 = \$r21\[\$r21\];;

     c28:	96 15 5a b0 00 00 00 90 00 00 80 17             	lwz.deqz \$r22\? \$r22 = -1125899906842624 \(0xfffc000000000000\)\[\$r22\];;

     c34:	d7 25 5e b1 00 00 80 17                         	lwz.s.dltz \$r23\? \$r23 = -8388608 \(0xff800000\)\[\$r23\];;

     c3c:	18 36 62 32                                     	lwz.u.dgez \$r24\? \$r24 = \[\$r24\];;

     c40:	d9 ff 64 b3 ff ff ff 97 ff ff ff 10             	lwz.us \$r25 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r25\];;

     c4c:	1a f0 64 30                                     	lwz \$r25 = -64 \(0xffffffc0\)\[\$r26\];;

     c50:	1a 00 68 b1 00 00 80 17                         	lwz.s \$r26 = -8589934592 \(0xfffffffe00000000\)\[\$r26\];;

     c58:	db 16 60 78                                     	madddt \$r24r25 = \$r27, \$r27;;

     c5c:	1c 27 6c 78                                     	maddd \$r27 = \$r28, \$r28;;

     c60:	dd 27 70 f8 ff ff ff 00                         	maddd \$r28 = \$r29, 536870911 \(0x1fffffff\);;

     c68:	9d 27 74 7a                                     	maddhq \$r29 = \$r29, \$r30;;

     c6c:	de 2f 78 fa ff ff ff 00                         	maddhq \$r30 = \$r30, 536870911 \(0x1fffffff\).@;;

     c74:	df 17 64 78                                     	maddhwq \$r24r25 = \$r31, \$r31;;

     c78:	1f 18 68 7a                                     	maddsudt \$r26r27 = \$r31, \$r32;;

     c7c:	20 18 6c 7a                                     	maddsuhwq \$r26r27 = \$r32, \$r32;;

     c80:	61 08 70 7a                                     	maddsuwdp \$r28r29 = \$r33, \$r33;;

     c84:	e1 07 70 fa ff ff ff 00                         	maddsuwdp \$r28r29 = \$r33, 536870911 \(0x1fffffff\);;

     c8c:	a2 38 88 7a                                     	maddsuwd \$r34 = \$r34, \$r34;;

     c90:	e3 37 8c fa ff ff ff 00                         	maddsuwd \$r35 = \$r35, 536870911 \(0x1fffffff\);;

     c98:	23 19 78 79                                     	maddudt \$r30r31 = \$r35, \$r36;;

     c9c:	24 19 7c 79                                     	madduhwq \$r30r31 = \$r36, \$r36;;

     ca0:	65 09 80 79                                     	madduwdp \$r32r33 = \$r37, \$r37;;

     ca4:	e5 0f 80 f9 ff ff ff 00                         	madduwdp \$r32r33 = \$r37, 536870911 \(0x1fffffff\).@;;

     cac:	a6 39 98 79                                     	madduwd \$r38 = \$r38, \$r38;;

     cb0:	e7 37 9c f9 ff ff ff 00                         	madduwd \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     cb8:	27 1a 88 7b                                     	madduzdt \$r34r35 = \$r39, \$r40;;

     cbc:	28 0a 88 78                                     	maddwdp \$r34r35 = \$r40, \$r40;;

     cc0:	e9 07 90 f8 ff ff ff 00                         	maddwdp \$r36r37 = \$r41, 536870911 \(0x1fffffff\);;

     cc8:	a9 3a a4 78                                     	maddwd \$r41 = \$r41, \$r42;;

     ccc:	ea 37 a8 f8 ff ff ff 00                         	maddwd \$r42 = \$r42, 536870911 \(0x1fffffff\);;

     cd4:	eb 2a ac 79                                     	maddwp \$r43 = \$r43, \$r43;;

     cd8:	ec 2f b0 f9 ff ff ff 00                         	maddwp \$r44 = \$r44, 536870911 \(0x1fffffff\).@;;

     ce0:	6d 3b b0 7b                                     	maddw \$r44 = \$r45, \$r45;;

     ce4:	ee 37 b4 fb ff ff ff 00                         	maddw \$r45 = \$r46, 536870911 \(0x1fffffff\);;

     cec:	c0 ff b8 e0 ff ff ff 87 ff ff ff 00             	make \$r46 = 2305843009213693951 \(0x1fffffffffffffff\);;

     cf8:	3c 00 b8 e0 00 00 00 00                         	make \$r46 = -549755813888 \(0xffffff8000000000\);;

     d00:	00 f0 bc 60                                     	make \$r47 = -4096 \(0xfffff000\);;

     d04:	2f ac be 75                                     	maxbo \$r47 = \$r47, \$r48;;

     d08:	f0 a7 c2 f5 ff ff ff 00                         	maxbo \$r48 = \$r48, 536870911 \(0x1fffffff\);;

     d10:	f1 ff c4 e5 ff ff ff 87 ff ff ff 00             	maxd \$r49 = \$r49, 2305843009213693951 \(0x1fffffffffffffff\);;

     d1c:	b2 0c c5 75                                     	maxd \$r49 = \$r50, \$r50;;

     d20:	33 f0 c8 65                                     	maxd \$r50 = \$r51, -64 \(0xffffffc0\);;

     d24:	33 00 cc e5 00 00 80 07                         	maxd \$r51 = \$r51, -8589934592 \(0xfffffffe00000000\);;

     d2c:	34 3d d1 75                                     	maxhq \$r52 = \$r52, \$r52;;

     d30:	f5 3f d5 f5 ff ff ff 00                         	maxhq \$r53 = \$r53, 536870911 \(0x1fffffff\).@;;

     d38:	b6 c0 d6 75                                     	maxrbod \$r53 = \$r54;;

     d3c:	76 c0 da 75                                     	maxrhqd \$r54 = \$r54;;

     d40:	37 c0 de 75                                     	maxrwpd \$r55 = \$r55;;

     d44:	38 ae de 77                                     	maxubo \$r55 = \$r56, \$r56;;

     d48:	f9 a7 e2 f7 ff ff ff 00                         	maxubo \$r56 = \$r57, 536870911 \(0x1fffffff\);;

     d50:	f9 ff e4 e7 ff ff ff 87 ff ff ff 00             	maxud \$r57 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

     d5c:	ba 0e e9 77                                     	maxud \$r58 = \$r58, \$r58;;

     d60:	3b f0 ec 67                                     	maxud \$r59 = \$r59, -64 \(0xffffffc0\);;

     d64:	3c 00 ec e7 00 00 80 07                         	maxud \$r59 = \$r60, -8589934592 \(0xfffffffe00000000\);;

     d6c:	7c 3f f1 77                                     	maxuhq \$r60 = \$r60, \$r61;;

     d70:	fd 3f f5 f7 ff ff ff 00                         	maxuhq \$r61 = \$r61, 536870911 \(0x1fffffff\).@;;

     d78:	be c0 fa 79                                     	maxurbod \$r62 = \$r62;;

     d7c:	7f c0 fa 79                                     	maxurhqd \$r62 = \$r63;;

     d80:	3f c0 fe 79                                     	maxurwpd \$r63 = \$r63;;

     d84:	00 20 01 77                                     	maxuwp \$r0 = \$r0, \$r0;;

     d88:	c1 27 05 f7 ff ff ff 00                         	maxuwp \$r1 = \$r1, 536870911 \(0x1fffffff\);;

     d90:	82 10 05 77                                     	maxuw \$r1 = \$r2, \$r2;;

     d94:	c3 17 09 f7 ff ff ff 00                         	maxuw \$r2 = \$r3, 536870911 \(0x1fffffff\);;

     d9c:	03 21 0d 75                                     	maxwp \$r3 = \$r3, \$r4;;

     da0:	c4 2f 11 f5 ff ff ff 00                         	maxwp \$r4 = \$r4, 536870911 \(0x1fffffff\).@;;

     da8:	45 11 15 75                                     	maxw \$r5 = \$r5, \$r5;;

     dac:	c6 17 19 f5 ff ff ff 00                         	maxw \$r6 = \$r6, 536870911 \(0x1fffffff\);;

     db4:	c7 a1 1a 74                                     	minbo \$r6 = \$r7, \$r7;;

     db8:	c8 a7 1e f4 ff ff ff 00                         	minbo \$r7 = \$r8, 536870911 \(0x1fffffff\);;

     dc0:	c8 ff 20 e4 ff ff ff 87 ff ff ff 00             	mind \$r8 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

     dcc:	49 02 25 74                                     	mind \$r9 = \$r9, \$r9;;

     dd0:	0a f0 28 64                                     	mind \$r10 = \$r10, -64 \(0xffffffc0\);;

     dd4:	0b 00 28 e4 00 00 80 07                         	mind \$r10 = \$r11, -8589934592 \(0xfffffffe00000000\);;

     ddc:	0b 33 2d 74                                     	minhq \$r11 = \$r11, \$r12;;

     de0:	cd 3f 31 f4 ff ff ff 00                         	minhq \$r12 = \$r13, 536870911 \(0x1fffffff\).@;;

     de8:	8e c0 36 74                                     	minrbod \$r13 = \$r14;;

     dec:	4f c0 3a 74                                     	minrhqd \$r14 = \$r15;;

     df0:	10 c0 3e 74                                     	minrwpd \$r15 = \$r16;;

     df4:	50 a4 42 76                                     	minubo \$r16 = \$r16, \$r17;;

     df8:	d1 a7 46 f6 ff ff ff 00                         	minubo \$r17 = \$r17, 536870911 \(0x1fffffff\);;

     e00:	d2 ff 48 e6 ff ff ff 87 ff ff ff 00             	minud \$r18 = \$r18, 2305843009213693951 \(0x1fffffffffffffff\);;

     e0c:	d3 04 49 76                                     	minud \$r18 = \$r19, \$r19;;

     e10:	14 f0 4c 66                                     	minud \$r19 = \$r20, -64 \(0xffffffc0\);;

     e14:	14 00 50 e6 00 00 80 07                         	minud \$r20 = \$r20, -8589934592 \(0xfffffffe00000000\);;

     e1c:	55 35 55 76                                     	minuhq \$r21 = \$r21, \$r21;;

     e20:	d6 3f 59 f6 ff ff ff 00                         	minuhq \$r22 = \$r22, 536870911 \(0x1fffffff\).@;;

     e28:	97 c0 5a 78                                     	minurbod \$r22 = \$r23;;

     e2c:	57 c0 5e 78                                     	minurhqd \$r23 = \$r23;;

     e30:	18 c0 62 78                                     	minurwpd \$r24 = \$r24;;

     e34:	59 26 61 76                                     	minuwp \$r24 = \$r25, \$r25;;

     e38:	da 27 65 f6 ff ff ff 00                         	minuwp \$r25 = \$r26, 536870911 \(0x1fffffff\);;

     e40:	da 16 69 76                                     	minuw \$r26 = \$r26, \$r27;;

     e44:	db 17 6d f6 ff ff ff 00                         	minuw \$r27 = \$r27, 536870911 \(0x1fffffff\);;

     e4c:	1c 27 71 74                                     	minwp \$r28 = \$r28, \$r28;;

     e50:	dd 2f 75 f4 ff ff ff 00                         	minwp \$r29 = \$r29, 536870911 \(0x1fffffff\).@;;

     e58:	9e 17 75 74                                     	minw \$r29 = \$r30, \$r30;;

     e5c:	df 17 79 f4 ff ff ff 00                         	minw \$r30 = \$r31, 536870911 \(0x1fffffff\);;

     e64:	df 07 90 73                                     	mm212w \$r36r37 = \$r31, \$r31;;

     e68:	e0 07 98 f3 ff ff ff 00                         	mm212w \$r38r39 = \$r32, 536870911 \(0x1fffffff\);;

     e70:	20 08 98 7b                                     	mma212w \$r38r39 = \$r32, \$r32;;

     e74:	e1 0f a0 fb ff ff ff 00                         	mma212w \$r40r41 = \$r33, 536870911 \(0x1fffffff\).@;;

     e7c:	61 08 a0 7f                                     	mms212w \$r40r41 = \$r33, \$r33;;

     e80:	e2 07 a8 ff ff ff ff 00                         	mms212w \$r42r43 = \$r34, 536870911 \(0x1fffffff\);;

     e88:	a2 18 a8 7c                                     	msbfdt \$r42r43 = \$r34, \$r34;;

     e8c:	e3 28 8c 7c                                     	msbfd \$r35 = \$r35, \$r35;;

     e90:	e4 2f 90 fc ff ff ff 00                         	msbfd \$r36 = \$r36, 536870911 \(0x1fffffff\).@;;

     e98:	65 29 90 7e                                     	msbfhq \$r36 = \$r37, \$r37;;

     e9c:	e6 27 94 fe ff ff ff 00                         	msbfhq \$r37 = \$r38, 536870911 \(0x1fffffff\);;

     ea4:	a6 19 b4 7c                                     	msbfhwq \$r44r45 = \$r38, \$r38;;

     ea8:	e7 19 b0 7e                                     	msbfsudt \$r44r45 = \$r39, \$r39;;

     eac:	27 1a bc 7e                                     	msbfsuhwq \$r46r47 = \$r39, \$r40;;

     eb0:	28 0a b8 7e                                     	msbfsuwdp \$r46r47 = \$r40, \$r40;;

     eb4:	e9 0f c0 fe ff ff ff 00                         	msbfsuwdp \$r48r49 = \$r41, 536870911 \(0x1fffffff\).@;;

     ebc:	a9 3a a4 7e                                     	msbfsuwd \$r41 = \$r41, \$r42;;

     ec0:	ea 37 a8 fe ff ff ff 00                         	msbfsuwd \$r42 = \$r42, 536870911 \(0x1fffffff\);;

     ec8:	eb 1a c0 7d                                     	msbfudt \$r48r49 = \$r43, \$r43;;

     ecc:	2b 1b cc 7d                                     	msbfuhwq \$r50r51 = \$r43, \$r44;;

     ed0:	2c 0b c8 7d                                     	msbfuwdp \$r50r51 = \$r44, \$r44;;

     ed4:	ed 07 d0 fd ff ff ff 00                         	msbfuwdp \$r52r53 = \$r45, 536870911 \(0x1fffffff\);;

     edc:	ad 3b b4 7d                                     	msbfuwd \$r45 = \$r45, \$r46;;

     ee0:	ee 37 b8 fd ff ff ff 00                         	msbfuwd \$r46 = \$r46, 536870911 \(0x1fffffff\);;

     ee8:	ef 1b d0 7f                                     	msbfuzdt \$r52r53 = \$r47, \$r47;;

     eec:	2f 0c d8 7c                                     	msbfwdp \$r54r55 = \$r47, \$r48;;

     ef0:	f0 0f d8 fc ff ff ff 00                         	msbfwdp \$r54r55 = \$r48, 536870911 \(0x1fffffff\).@;;

     ef8:	71 3c c0 7c                                     	msbfwd \$r48 = \$r49, \$r49;;

     efc:	f2 37 c4 fc ff ff ff 00                         	msbfwd \$r49 = \$r50, 536870911 \(0x1fffffff\);;

     f04:	f2 2c c8 7d                                     	msbfwp \$r50 = \$r50, \$r51;;

     f08:	f3 27 cc fd ff ff ff 00                         	msbfwp \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     f10:	34 3d d0 7f                                     	msbfw \$r52 = \$r52, \$r52;;

     f14:	f5 37 d4 ff ff ff ff 00                         	msbfw \$r53 = \$r53, 536870911 \(0x1fffffff\);;

     f1c:	b5 1d e0 70                                     	muldt \$r56r57 = \$r53, \$r54;;

     f20:	f6 2d d8 70                                     	muld \$r54 = \$r54, \$r55;;

     f24:	f7 2f dc f0 ff ff ff 00                         	muld \$r55 = \$r55, 536870911 \(0x1fffffff\).@;;

     f2c:	38 2e e0 72                                     	mulhq \$r56 = \$r56, \$r56;;

     f30:	f9 27 e4 f2 ff ff ff 00                         	mulhq \$r57 = \$r57, 536870911 \(0x1fffffff\);;

     f38:	b9 1e e4 70                                     	mulhwq \$r56r57 = \$r57, \$r58;;

     f3c:	3a 0f ec 71                                     	mulmwq \$r58r59 = \$r58r59, \$r60r61;;

     f40:	ba 1e f0 72                                     	mulsudt \$r60r61 = \$r58, \$r58;;

     f44:	fb 1e fc 72                                     	mulsuhwq \$r62r63 = \$r59, \$r59;;

     f48:	00 00 fc 73                                     	mulsumwq \$r62r63 = \$r0r1, \$r0r1;;

     f4c:	3b 0f 08 72                                     	mulsuwdp \$r2r3 = \$r59, \$r60;;

     f50:	fc 0f 08 f2 ff ff ff 00                         	mulsuwdp \$r2r3 = \$r60, 536870911 \(0x1fffffff\).@;;

     f58:	7d 3f f0 72                                     	mulsuwd \$r60 = \$r61, \$r61;;

     f5c:	fe 37 f4 f2 ff ff ff 00                         	mulsuwd \$r61 = \$r62, 536870911 \(0x1fffffff\);;

     f64:	be 1f 10 71                                     	muludt \$r4r5 = \$r62, \$r62;;

     f68:	ff 1f 14 71                                     	muluhwq \$r4r5 = \$r63, \$r63;;

     f6c:	06 02 1c 72                                     	mulumwq \$r6r7 = \$r6r7, \$r8r9;;

     f70:	3f 00 20 71                                     	muluwdp \$r8r9 = \$r63, \$r0;;

     f74:	c0 07 28 f1 ff ff ff 00                         	muluwdp \$r10r11 = \$r0, 536870911 \(0x1fffffff\);;

     f7c:	41 30 00 71                                     	muluwd \$r0 = \$r1, \$r1;;

     f80:	c2 37 04 f1 ff ff ff 00                         	muluwd \$r1 = \$r2, 536870911 \(0x1fffffff\);;

     f88:	82 00 28 70                                     	mulwdp \$r10r11 = \$r2, \$r2;;

     f8c:	c3 0f 30 f0 ff ff ff 00                         	mulwdp \$r12r13 = \$r3, 536870911 \(0x1fffffff\).@;;

     f94:	03 31 0c 70                                     	mulwd \$r3 = \$r3, \$r4;;

     f98:	c4 37 10 f0 ff ff ff 00                         	mulwd \$r4 = \$r4, 536870911 \(0x1fffffff\);;

     fa0:	45 21 14 71                                     	mulwp \$r5 = \$r5, \$r5;;

     fa4:	c6 27 18 f1 ff ff ff 00                         	mulwp \$r6 = \$r6, 536870911 \(0x1fffffff\);;

     fac:	8e 03 34 70                                     	mulwq \$r12r13 = \$r14r15, \$r14r15;;

     fb0:	c7 31 18 73                                     	mulw \$r6 = \$r7, \$r7;;

     fb4:	c8 37 1c f3 ff ff ff 00                         	mulw \$r7 = \$r8, 536870911 \(0x1fffffff\);;

     fbc:	c8 ff 20 e9 ff ff ff 87 ff ff ff 00             	nandd \$r8 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

     fc8:	49 02 25 79                                     	nandd \$r9 = \$r9, \$r9;;

     fcc:	0a f0 28 69                                     	nandd \$r10 = \$r10, -64 \(0xffffffc0\);;

     fd0:	0b 00 28 e9 00 00 80 07                         	nandd \$r10 = \$r11, -8589934592 \(0xfffffffe00000000\);;

     fd8:	0b 13 2d 79                                     	nandw \$r11 = \$r11, \$r12;;

     fdc:	cd 17 31 f9 ff ff ff 00                         	nandw \$r12 = \$r13, 536870911 \(0x1fffffff\);;

     fe4:	0e a0 36 f1 00 00 00 00                         	negbo \$r13 = \$r14;;

     fec:	0f 00 38 63                                     	negd \$r14 = \$r15;;

     ff0:	10 30 3d f3 00 00 00 00                         	neghq \$r15 = \$r16;;

     ff8:	10 b0 42 fd 00 00 00 00                         	negsbo \$r16 = \$r16;;

    1000:	11 40 45 fd 00 00 00 00                         	negsd \$r17 = \$r17;;

    1008:	12 70 45 fd 00 00 00 00                         	negshq \$r17 = \$r18;;

    1010:	12 60 49 fd 00 00 00 00                         	negswp \$r18 = \$r18;;

    1018:	13 50 4d fd 00 00 00 00                         	negsw \$r19 = \$r19;;

    1020:	14 20 4d f3 00 00 00 00                         	negwp \$r19 = \$r20;;

    1028:	14 10 51 f3 00 00 00 00                         	negw \$r20 = \$r20;;

    1030:	d5 ff 54 ed ff ff ff 87 ff ff ff 00             	neord \$r21 = \$r21, 2305843009213693951 \(0x1fffffffffffffff\);;

    103c:	96 05 55 7d                                     	neord \$r21 = \$r22, \$r22;;

    1040:	17 f0 58 6d                                     	neord \$r22 = \$r23, -64 \(0xffffffc0\);;

    1044:	17 00 5c ed 00 00 80 07                         	neord \$r23 = \$r23, -8589934592 \(0xfffffffe00000000\);;

    104c:	18 16 61 7d                                     	neorw \$r24 = \$r24, \$r24;;

    1050:	d9 17 65 fd ff ff ff 00                         	neorw \$r25 = \$r25, 536870911 \(0x1fffffff\);;

    1058:	da ff 64 eb ff ff ff 87 ff ff ff 00             	niord \$r25 = \$r26, 2305843009213693951 \(0x1fffffffffffffff\);;

    1064:	da 06 69 7b                                     	niord \$r26 = \$r26, \$r27;;

    1068:	1b f0 6c 6b                                     	niord \$r27 = \$r27, -64 \(0xffffffc0\);;

    106c:	1c 00 70 eb 00 00 80 07                         	niord \$r28 = \$r28, -8589934592 \(0xfffffffe00000000\);;

    1074:	5d 17 71 7b                                     	niorw \$r28 = \$r29, \$r29;;

    1078:	de 17 75 fb ff ff ff 00                         	niorw \$r29 = \$r30, 536870911 \(0x1fffffff\);;

    1080:	c0 ff 03 7f                                     	nop;;

    1084:	de ff 78 6c                                     	notd \$r30 = \$r30;;

    1088:	df 17 7d fc ff ff ff 07                         	notw \$r31 = \$r31;;

    1090:	c0 ff 7d ef ff ff ff 87 ff ff ff 00             	pcrel \$r31 = 2305843009213693951 \(0x1fffffffffffffff\);;

    109c:	3c 00 81 ef 00 00 00 00                         	pcrel \$r32 = -549755813888 \(0xffffff8000000000\);;

    10a4:	00 f0 81 6f                                     	pcrel \$r32 = -4096 \(0xfffff000\);;

    10a8:	00 00 d0 0f                                     	ret;;

    10ac:	00 00 d4 0f                                     	rfe;;

    10b0:	61 88 82 7e                                     	rolwps \$r32 = \$r33, \$r33;;

    10b4:	e2 41 86 7e                                     	rolwps \$r33 = \$r34, 7 \(0x7\);;

    10b8:	e2 78 8a 7e                                     	rolw \$r34 = \$r34, \$r35;;

    10bc:	e3 31 8e 7e                                     	rolw \$r35 = \$r35, 7 \(0x7\);;

    10c0:	24 89 92 7f                                     	rorwps \$r36 = \$r36, \$r36;;

    10c4:	e5 41 96 7f                                     	rorwps \$r37 = \$r37, 7 \(0x7\);;

    10c8:	a6 79 96 7f                                     	rorw \$r37 = \$r38, \$r38;;

    10cc:	e7 31 9a 7f                                     	rorw \$r38 = \$r39, 7 \(0x7\);;

    10d0:	27 07 c8 0f                                     	rswap \$r39 = \$mmc;;

    10d4:	27 00 c8 0f                                     	rswap \$r39 = \$pc;;

    10d8:	28 00 c8 0f                                     	rswap \$r40 = \$pc;;

    10dc:	68 aa a2 71                                     	sbfbo \$r40 = \$r40, \$r41;;

    10e0:	e9 af a6 f1 ff ff ff 00                         	sbfbo \$r41 = \$r41, 536870911 \(0x1fffffff\).@;;

    10e8:	aa 9a a9 7f                                     	sbfcd.i \$r42 = \$r42, \$r42;;

    10ec:	eb 97 ad ff ff ff ff 00                         	sbfcd.i \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    10f4:	2c 8b ad 7f                                     	sbfcd \$r43 = \$r44, \$r44;;

    10f8:	ed 87 b1 ff ff ff ff 00                         	sbfcd \$r44 = \$r45, 536870911 \(0x1fffffff\);;

    1100:	ed ff b4 e3 ff ff ff 87 ff ff ff 00             	sbfd \$r45 = \$r45, 2305843009213693951 \(0x1fffffffffffffff\);;

    110c:	ae 0b b9 73                                     	sbfd \$r46 = \$r46, \$r46;;

    1110:	2f f0 bc 63                                     	sbfd \$r47 = \$r47, -64 \(0xffffffc0\);;

    1114:	30 00 bc e3 00 00 80 07                         	sbfd \$r47 = \$r48, -8589934592 \(0xfffffffe00000000\);;

    111c:	70 3c c1 73                                     	sbfhq \$r48 = \$r48, \$r49;;

    1120:	f1 37 c5 f3 ff ff ff 00                         	sbfhq \$r49 = \$r49, 536870911 \(0x1fffffff\);;

    1128:	b2 bc ca 7d                                     	sbfsbo \$r50 = \$r50, \$r50;;

    112c:	f3 bf ce fd ff ff ff 00                         	sbfsbo \$r51 = \$r51, 536870911 \(0x1fffffff\).@;;

    1134:	34 4d cd 7d                                     	sbfsd \$r51 = \$r52, \$r52;;

    1138:	f5 47 d1 fd ff ff ff 00                         	sbfsd \$r52 = \$r53, 536870911 \(0x1fffffff\);;

    1140:	b5 7d d5 7d                                     	sbfshq \$r53 = \$r53, \$r54;;

    1144:	f6 7f d9 fd ff ff ff 00                         	sbfshq \$r54 = \$r54, 536870911 \(0x1fffffff\).@;;

    114c:	f7 6d dd 7d                                     	sbfswp \$r55 = \$r55, \$r55;;

    1150:	f8 67 e1 fd ff ff ff 00                         	sbfswp \$r56 = \$r56, 536870911 \(0x1fffffff\);;

    1158:	79 5e e1 7d                                     	sbfsw \$r56 = \$r57, \$r57;;

    115c:	fa 57 e5 fd ff ff ff 00                         	sbfsw \$r57 = \$r58, 536870911 \(0x1fffffff\);;

    1164:	fa be ea 7f                                     	sbfusbo \$r58 = \$r58, \$r59;;

    1168:	fb bf ee ff ff ff ff 00                         	sbfusbo \$r59 = \$r59, 536870911 \(0x1fffffff\).@;;

    1170:	3c 4f f1 7f                                     	sbfusd \$r60 = \$r60, \$r60;;

    1174:	fd 47 f5 ff ff ff ff 00                         	sbfusd \$r61 = \$r61, 536870911 \(0x1fffffff\);;

    117c:	be 7f f5 7f                                     	sbfushq \$r61 = \$r62, \$r62;;

    1180:	ff 7f f9 ff ff ff ff 00                         	sbfushq \$r62 = \$r63, 536870911 \(0x1fffffff\).@;;

    1188:	3f 60 fd 7f                                     	sbfuswp \$r63 = \$r63, \$r0;;

    118c:	c0 67 01 ff ff ff ff 00                         	sbfuswp \$r0 = \$r0, 536870911 \(0x1fffffff\);;

    1194:	41 50 05 7f                                     	sbfusw \$r1 = \$r1, \$r1;;

    1198:	c2 57 09 ff ff ff ff 00                         	sbfusw \$r2 = \$r2, 536870911 \(0x1fffffff\);;

    11a0:	c3 90 09 7d                                     	sbfuwd \$r2 = \$r3, \$r3;;

    11a4:	c4 97 0d fd ff ff ff 00                         	sbfuwd \$r3 = \$r4, 536870911 \(0x1fffffff\);;

    11ac:	44 81 11 7d                                     	sbfwd \$r4 = \$r4, \$r5;;

    11b0:	c5 87 15 fd ff ff ff 00                         	sbfwd \$r5 = \$r5, 536870911 \(0x1fffffff\);;

    11b8:	86 21 19 73                                     	sbfwp \$r6 = \$r6, \$r6;;

    11bc:	c7 2f 1d f3 ff ff ff 00                         	sbfwp \$r7 = \$r7, 536870911 \(0x1fffffff\).@;;

    11c4:	08 12 1d 73                                     	sbfw \$r7 = \$r8, \$r8;;

    11c8:	c9 17 21 f3 ff ff ff 00                         	sbfw \$r8 = \$r9, 536870911 \(0x1fffffff\);;

    11d0:	89 b2 26 77                                     	sbfx16bo \$r9 = \$r9, \$r10;;

    11d4:	ca b7 2a f7 ff ff ff 00                         	sbfx16bo \$r10 = \$r10, 536870911 \(0x1fffffff\);;

    11dc:	cb 42 2d 77                                     	sbfx16d \$r11 = \$r11, \$r11;;

    11e0:	cc 4f 31 f7 ff ff ff 00                         	sbfx16d \$r12 = \$r12, 536870911 \(0x1fffffff\).@;;

    11e8:	8d 73 35 77                                     	sbfx16hq \$r13 = \$r13, \$r14;;

    11ec:	cf 77 39 f7 ff ff ff 00                         	sbfx16hq \$r14 = \$r15, 536870911 \(0x1fffffff\);;

    11f4:	10 94 3d 77                                     	sbfx16uwd \$r15 = \$r16, \$r16;;

    11f8:	d1 97 41 f7 ff ff ff 00                         	sbfx16uwd \$r16 = \$r17, 536870911 \(0x1fffffff\);;

    1200:	91 84 45 77                                     	sbfx16wd \$r17 = \$r17, \$r18;;

    1204:	d2 87 49 f7 ff ff ff 00                         	sbfx16wd \$r18 = \$r18, 536870911 \(0x1fffffff\);;

    120c:	d3 64 4d 77                                     	sbfx16wp \$r19 = \$r19, \$r19;;

    1210:	d4 6f 51 f7 ff ff ff 00                         	sbfx16wp \$r20 = \$r20, 536870911 \(0x1fffffff\).@;;

    1218:	55 55 51 77                                     	sbfx16w \$r20 = \$r21, \$r21;;

    121c:	d6 57 55 f7 ff ff ff 00                         	sbfx16w \$r21 = \$r22, 536870911 \(0x1fffffff\);;

    1224:	d6 b5 5a 71                                     	sbfx2bo \$r22 = \$r22, \$r23;;

    1228:	d7 b7 5e f1 ff ff ff 00                         	sbfx2bo \$r23 = \$r23, 536870911 \(0x1fffffff\);;

    1230:	18 46 61 71                                     	sbfx2d \$r24 = \$r24, \$r24;;

    1234:	d9 4f 65 f1 ff ff ff 00                         	sbfx2d \$r25 = \$r25, 536870911 \(0x1fffffff\).@;;

    123c:	9a 76 65 71                                     	sbfx2hq \$r25 = \$r26, \$r26;;

    1240:	db 77 69 f1 ff ff ff 00                         	sbfx2hq \$r26 = \$r27, 536870911 \(0x1fffffff\);;

    1248:	1b 97 6d 71                                     	sbfx2uwd \$r27 = \$r27, \$r28;;

    124c:	dc 97 71 f1 ff ff ff 00                         	sbfx2uwd \$r28 = \$r28, 536870911 \(0x1fffffff\);;

    1254:	5d 87 75 71                                     	sbfx2wd \$r29 = \$r29, \$r29;;

    1258:	de 87 79 f1 ff ff ff 00                         	sbfx2wd \$r30 = \$r30, 536870911 \(0x1fffffff\);;

    1260:	df 67 79 71                                     	sbfx2wp \$r30 = \$r31, \$r31;;

    1264:	e0 6f 7d f1 ff ff ff 00                         	sbfx2wp \$r31 = \$r32, 536870911 \(0x1fffffff\).@;;

    126c:	60 58 81 71                                     	sbfx2w \$r32 = \$r32, \$r33;;

    1270:	e1 57 85 f1 ff ff ff 00                         	sbfx2w \$r33 = \$r33, 536870911 \(0x1fffffff\);;

    1278:	a2 48 89 79                                     	sbfx32d \$r34 = \$r34, \$r34;;

    127c:	e3 47 8d f9 ff ff ff 00                         	sbfx32d \$r35 = \$r35, 536870911 \(0x1fffffff\);;

    1284:	24 99 8d 79                                     	sbfx32uwd \$r35 = \$r36, \$r36;;

    1288:	e5 97 91 f9 ff ff ff 00                         	sbfx32uwd \$r36 = \$r37, 536870911 \(0x1fffffff\);;

    1290:	a5 89 95 79                                     	sbfx32wd \$r37 = \$r37, \$r38;;

    1294:	e6 87 99 f9 ff ff ff 00                         	sbfx32wd \$r38 = \$r38, 536870911 \(0x1fffffff\);;

    129c:	e7 59 9d 79                                     	sbfx32w \$r39 = \$r39, \$r39;;

    12a0:	e8 57 a1 f9 ff ff ff 00                         	sbfx32w \$r40 = \$r40, 536870911 \(0x1fffffff\);;

    12a8:	69 ba a2 73                                     	sbfx4bo \$r40 = \$r41, \$r41;;

    12ac:	ea bf a6 f3 ff ff ff 00                         	sbfx4bo \$r41 = \$r42, 536870911 \(0x1fffffff\).@;;

    12b4:	ea 4a a9 73                                     	sbfx4d \$r42 = \$r42, \$r43;;

    12b8:	eb 47 ad f3 ff ff ff 00                         	sbfx4d \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    12c0:	2c 7b b1 73                                     	sbfx4hq \$r44 = \$r44, \$r44;;

    12c4:	ed 7f b5 f3 ff ff ff 00                         	sbfx4hq \$r45 = \$r45, 536870911 \(0x1fffffff\).@;;

    12cc:	ae 9b b5 73                                     	sbfx4uwd \$r45 = \$r46, \$r46;;

    12d0:	ef 97 b9 f3 ff ff ff 00                         	sbfx4uwd \$r46 = \$r47, 536870911 \(0x1fffffff\);;

    12d8:	2f 8c bd 73                                     	sbfx4wd \$r47 = \$r47, \$r48;;

    12dc:	f0 87 c1 f3 ff ff ff 00                         	sbfx4wd \$r48 = \$r48, 536870911 \(0x1fffffff\);;

    12e4:	71 6c c5 73                                     	sbfx4wp \$r49 = \$r49, \$r49;;

    12e8:	f2 67 c9 f3 ff ff ff 00                         	sbfx4wp \$r50 = \$r50, 536870911 \(0x1fffffff\);;

    12f0:	f3 5c c9 73                                     	sbfx4w \$r50 = \$r51, \$r51;;

    12f4:	f4 57 cd f3 ff ff ff 00                         	sbfx4w \$r51 = \$r52, 536870911 \(0x1fffffff\);;

    12fc:	74 4d d1 7b                                     	sbfx64d \$r52 = \$r52, \$r53;;

    1300:	f5 4f d5 fb ff ff ff 00                         	sbfx64d \$r53 = \$r53, 536870911 \(0x1fffffff\).@;;

    1308:	b6 9d d9 7b                                     	sbfx64uwd \$r54 = \$r54, \$r54;;

    130c:	f7 97 dd fb ff ff ff 00                         	sbfx64uwd \$r55 = \$r55, 536870911 \(0x1fffffff\);;

    1314:	38 8e dd 7b                                     	sbfx64wd \$r55 = \$r56, \$r56;;

    1318:	f9 87 e1 fb ff ff ff 00                         	sbfx64wd \$r56 = \$r57, 536870911 \(0x1fffffff\);;

    1320:	b9 5e e5 7b                                     	sbfx64w \$r57 = \$r57, \$r58;;

    1324:	fa 57 e9 fb ff ff ff 00                         	sbfx64w \$r58 = \$r58, 536870911 \(0x1fffffff\);;

    132c:	fb be ee 75                                     	sbfx8bo \$r59 = \$r59, \$r59;;

    1330:	fc b7 f2 f5 ff ff ff 00                         	sbfx8bo \$r60 = \$r60, 536870911 \(0x1fffffff\);;

    1338:	7d 4f f1 75                                     	sbfx8d \$r60 = \$r61, \$r61;;

    133c:	fe 4f f5 f5 ff ff ff 00                         	sbfx8d \$r61 = \$r62, 536870911 \(0x1fffffff\).@;;

    1344:	fe 7f f9 75                                     	sbfx8hq \$r62 = \$r62, \$r63;;

    1348:	ff 77 fd f5 ff ff ff 00                         	sbfx8hq \$r63 = \$r63, 536870911 \(0x1fffffff\);;

    1350:	00 90 01 75                                     	sbfx8uwd \$r0 = \$r0, \$r0;;

    1354:	c1 97 05 f5 ff ff ff 00                         	sbfx8uwd \$r1 = \$r1, 536870911 \(0x1fffffff\);;

    135c:	82 80 05 75                                     	sbfx8wd \$r1 = \$r2, \$r2;;

    1360:	c3 87 09 f5 ff ff ff 00                         	sbfx8wd \$r2 = \$r3, 536870911 \(0x1fffffff\);;

    1368:	03 61 0d 75                                     	sbfx8wp \$r3 = \$r3, \$r4;;

    136c:	c4 6f 11 f5 ff ff ff 00                         	sbfx8wp \$r4 = \$r4, 536870911 \(0x1fffffff\).@;;

    1374:	45 51 15 75                                     	sbfx8w \$r5 = \$r5, \$r5;;

    1378:	c6 57 19 f5 ff ff ff 00                         	sbfx8w \$r6 = \$r6, 536870911 \(0x1fffffff\);;

    1380:	c7 ff 1a ee ff ff ff 87 ff ff ff 00             	sbmm8 \$r6 = \$r7, 2305843009213693951 \(0x1fffffffffffffff\);;

    138c:	07 02 1e 7e                                     	sbmm8 \$r7 = \$r7, \$r8;;

    1390:	08 f0 22 6e                                     	sbmm8 \$r8 = \$r8, -64 \(0xffffffc0\);;

    1394:	09 00 26 ee 00 00 80 07                         	sbmm8 \$r9 = \$r9, -8589934592 \(0xfffffffe00000000\);;

    139c:	ca ff 26 ef ff ff ff 87 ff ff ff 00             	sbmmt8 \$r9 = \$r10, 2305843009213693951 \(0x1fffffffffffffff\);;

    13a8:	ca 02 2a 7f                                     	sbmmt8 \$r10 = \$r10, \$r11;;

    13ac:	0b f0 2e 6f                                     	sbmmt8 \$r11 = \$r11, -64 \(0xffffffc0\);;

    13b0:	0c 00 32 ef 00 00 80 07                         	sbmmt8 \$r12 = \$r12, -8589934592 \(0xfffffffe00000000\);;

    13b8:	4d e3 3b 30                                     	sb \$r13\[\$r13\] = \$r14;;

    13bc:	ce ff 3d b0 ff ff ff 97 ff ff ff 10             	sb 2305843009213693951 \(0x1fffffffffffffff\)\[\$r14\] = \$r15;;

    13c8:	d0 43 43 b0 00 00 00 90 00 00 80 17             	sb.dlez \$r15\? -1125899906842624 \(0xfffc000000000000\)\[\$r16\] = \$r16;;

    13d4:	11 54 47 b0 00 00 80 17                         	sb.dgtz \$r16\? -8388608 \(0xff800000\)\[\$r17\] = \$r17;;

    13dc:	52 64 4b 30                                     	sb.odd \$r17\? \[\$r18\] = \$r18;;

    13e0:	12 f0 4d 30                                     	sb -64 \(0xffffffc0\)\[\$r18\] = \$r19;;

    13e4:	13 00 4d b0 00 00 80 17                         	sb -8589934592 \(0xfffffffe00000000\)\[\$r19\] = \$r19;;

    13ec:	14 00 e4 0f                                     	scall \$r20;;

    13f0:	ff 01 e0 0f                                     	scall 511 \(0x1ff\);;

    13f4:	14 f5 57 33                                     	sd.xs \$r20\[\$r20\] = \$r21;;

    13f8:	d5 ff 55 b3 ff ff ff 97 ff ff ff 10             	sd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r21\] = \$r21;;

    1404:	96 75 5b b3 00 00 00 90 00 00 80 17             	sd.even \$r22\? -1125899906842624 \(0xfffc000000000000\)\[\$r22\] = \$r22;;

    1410:	d7 85 5f b3 00 00 80 17                         	sd.wnez \$r23\? -8388608 \(0xff800000\)\[\$r23\] = \$r23;;

    1418:	18 96 63 33                                     	sd.weqz \$r24\? \[\$r24\] = \$r24;;

    141c:	19 f0 65 33                                     	sd -64 \(0xffffffc0\)\[\$r25\] = \$r25;;

    1420:	19 00 69 b3 00 00 80 17                         	sd -8589934592 \(0xfffffffe00000000\)\[\$r25\] = \$r26;;

    1428:	1a 07 c0 0f                                     	set \$mmc = \$r26;;

    142c:	da 00 c0 0f                                     	set \$ra = \$r26;;

    1430:	5b 00 c0 0f                                     	set \$ps = \$r27;;

    1434:	5b 00 c0 0f                                     	set \$ps = \$r27;;

    1438:	dc e6 73 31                                     	sh \$r27\[\$r28\] = \$r28;;

    143c:	dc ff 75 b1 ff ff ff 97 ff ff ff 10             	sh 2305843009213693951 \(0x1fffffffffffffff\)\[\$r28\] = \$r29;;

    1448:	5d a7 7b b1 00 00 00 90 00 00 80 17             	sh.wltz \$r29\? -1125899906842624 \(0xfffc000000000000\)\[\$r29\] = \$r30;;

    1454:	9e b7 7f b1 00 00 80 17                         	sh.wgez \$r30\? -8388608 \(0xff800000\)\[\$r30\] = \$r31;;

    145c:	df c7 83 31                                     	sh.wlez \$r31\? \[\$r31\] = \$r32;;

    1460:	20 f0 81 31                                     	sh -64 \(0xffffffc0\)\[\$r32\] = \$r32;;

    1464:	21 00 85 b1 00 00 80 17                         	sh -8589934592 \(0xfffffffe00000000\)\[\$r33\] = \$r33;;

    146c:	00 00 a4 0f                                     	sleep;;

    1470:	a2 f8 86 79                                     	sllbos \$r33 = \$r34, \$r34;;

    1474:	e3 e1 8a 79                                     	sllbos \$r34 = \$r35, 7 \(0x7\);;

    1478:	23 69 8e 79                                     	slld \$r35 = \$r35, \$r36;;

    147c:	e4 21 92 79                                     	slld \$r36 = \$r36, 7 \(0x7\);;

    1480:	65 99 96 79                                     	sllhqs \$r37 = \$r37, \$r37;;

    1484:	e6 51 9a 79                                     	sllhqs \$r38 = \$r38, 7 \(0x7\);;

    1488:	e7 89 9a 79                                     	sllwps \$r38 = \$r39, \$r39;;

    148c:	e8 41 9e 79                                     	sllwps \$r39 = \$r40, 7 \(0x7\);;

    1490:	68 7a a2 79                                     	sllw \$r40 = \$r40, \$r41;;

    1494:	e9 31 a6 79                                     	sllw \$r41 = \$r41, 7 \(0x7\);;

    1498:	aa fa aa 7c                                     	slsbos \$r42 = \$r42, \$r42;;

    149c:	eb e1 ae 7c                                     	slsbos \$r43 = \$r43, 7 \(0x7\);;

    14a0:	2c 6b ae 7c                                     	slsd \$r43 = \$r44, \$r44;;

    14a4:	ed 21 b2 7c                                     	slsd \$r44 = \$r45, 7 \(0x7\);;

    14a8:	ad 9b b6 7c                                     	slshqs \$r45 = \$r45, \$r46;;

    14ac:	ee 51 ba 7c                                     	slshqs \$r46 = \$r46, 7 \(0x7\);;

    14b0:	ef 8b be 7c                                     	slswps \$r47 = \$r47, \$r47;;

    14b4:	f0 41 c2 7c                                     	slswps \$r48 = \$r48, 7 \(0x7\);;

    14b8:	71 7c c2 7c                                     	slsw \$r48 = \$r49, \$r49;;

    14bc:	f2 31 c6 7c                                     	slsw \$r49 = \$r50, 7 \(0x7\);;

    14c0:	f2 fc ca 7d                                     	slusbos \$r50 = \$r50, \$r51;;

    14c4:	f3 e1 ce 7d                                     	slusbos \$r51 = \$r51, 7 \(0x7\);;

    14c8:	34 6d d2 7d                                     	slusd \$r52 = \$r52, \$r52;;

    14cc:	f5 21 d6 7d                                     	slusd \$r53 = \$r53, 7 \(0x7\);;

    14d0:	b6 9d d6 7d                                     	slushqs \$r53 = \$r54, \$r54;;

    14d4:	f7 51 da 7d                                     	slushqs \$r54 = \$r55, 7 \(0x7\);;

    14d8:	37 8e de 7d                                     	sluswps \$r55 = \$r55, \$r56;;

    14dc:	f8 41 e2 7d                                     	sluswps \$r56 = \$r56, 7 \(0x7\);;

    14e0:	79 7e e6 7d                                     	slusw \$r57 = \$r57, \$r57;;

    14e4:	fa 31 ea 7d                                     	slusw \$r58 = \$r58, 7 \(0x7\);;

    14e8:	bb fe f7 34                                     	so.xs \$r58\[\$r59\] = \$r60r61r62r63;;

    14ec:	fb ff 05 b4 ff ff ff 97 ff ff ff 10             	so 2305843009213693951 \(0x1fffffffffffffff\)\[\$r59\] = \$r0r1r2r3;;

    14f8:	fc 3e 1f b4 00 00 00 90 00 00 80 17             	so.u3 \$r59\? -1125899906842624 \(0xfffc000000000000\)\[\$r60\] = \$r4r5r6r7;;

    1504:	3c 4f 2f b4 00 00 80 17                         	so.mt \$r60\? -8388608 \(0xff800000\)\[\$r60\] = \$r8r9r10r11;;

    150c:	7d 5f 3f 34                                     	so.mf \$r61\? \[\$r61\] = \$r12r13r14r15;;

    1510:	7e df 47 b4 00 00 00 90 00 00 80 17             	so.wgtz \$r61\? -1125899906842624 \(0xfffc000000000000\)\[\$r62\] = \$r16r17r18r19;;

    151c:	be 0f 57 b4 00 00 80 17                         	so.dnez \$r62\? -8388608 \(0xff800000\)\[\$r62\] = \$r20r21r22r23;;

    1524:	ff 1f 67 34                                     	so.deqz \$r63\? \[\$r63\] = \$r24r25r26r27;;

    1528:	3f f0 75 34                                     	so -64 \(0xffffffc0\)\[\$r63\] = \$r28r29r30r31;;

    152c:	00 00 85 b4 00 00 80 17                         	so -8589934592 \(0xfffffffe00000000\)\[\$r0\] = \$r32r33r34r35;;

    1534:	00 e0 43 34                                     	sq \$r0\[\$r0\] = \$r16r17;;

    1538:	c1 ff 41 b4 ff ff ff 97 ff ff ff 10             	sq 2305843009213693951 \(0x1fffffffffffffff\)\[\$r1\] = \$r16r17;;

    1544:	41 20 4b b4 00 00 00 90 00 00 80 17             	sq.dltz \$r1\? -1125899906842624 \(0xfffc000000000000\)\[\$r1\] = \$r18r19;;

    1550:	82 30 4b b4 00 00 80 17                         	sq.dgez \$r2\? -8388608 \(0xff800000\)\[\$r2\] = \$r18r19;;

    1558:	83 40 53 34                                     	sq.dlez \$r2\? \[\$r3\] = \$r20r21;;

    155c:	03 f0 51 34                                     	sq -64 \(0xffffffc0\)\[\$r3\] = \$r20r21;;

    1560:	03 00 59 b4 00 00 80 17                         	sq -8589934592 \(0xfffffffe00000000\)\[\$r3\] = \$r22r23;;

    1568:	04 f1 12 7a                                     	srabos \$r4 = \$r4, \$r4;;

    156c:	c5 e1 16 7a                                     	srabos \$r5 = \$r5, 7 \(0x7\);;

    1570:	86 61 16 7a                                     	srad \$r5 = \$r6, \$r6;;

    1574:	c7 21 1a 7a                                     	srad \$r6 = \$r7, 7 \(0x7\);;

    1578:	07 92 1e 7a                                     	srahqs \$r7 = \$r7, \$r8;;

    157c:	c8 51 22 7a                                     	srahqs \$r8 = \$r8, 7 \(0x7\);;

    1580:	49 82 26 7a                                     	srawps \$r9 = \$r9, \$r9;;

    1584:	ca 41 2a 7a                                     	srawps \$r10 = \$r10, 7 \(0x7\);;

    1588:	cb 72 2a 7a                                     	sraw \$r10 = \$r11, \$r11;;

    158c:	cc 31 2e 7a                                     	sraw \$r11 = \$r12, 7 \(0x7\);;

    1590:	4d f3 32 7b                                     	srlbos \$r12 = \$r13, \$r13;;

    1594:	ce e1 3a 7b                                     	srlbos \$r14 = \$r14, 7 \(0x7\);;

    1598:	0f 64 3e 7b                                     	srld \$r15 = \$r15, \$r16;;

    159c:	d0 21 42 7b                                     	srld \$r16 = \$r16, 7 \(0x7\);;

    15a0:	51 94 46 7b                                     	srlhqs \$r17 = \$r17, \$r17;;

    15a4:	d2 51 4a 7b                                     	srlhqs \$r18 = \$r18, 7 \(0x7\);;

    15a8:	d3 84 4a 7b                                     	srlwps \$r18 = \$r19, \$r19;;

    15ac:	d4 41 4e 7b                                     	srlwps \$r19 = \$r20, 7 \(0x7\);;

    15b0:	54 75 52 7b                                     	srlw \$r20 = \$r20, \$r21;;

    15b4:	d5 31 56 7b                                     	srlw \$r21 = \$r21, 7 \(0x7\);;

    15b8:	96 f5 5a 78                                     	srsbos \$r22 = \$r22, \$r22;;

    15bc:	d7 e1 5e 78                                     	srsbos \$r23 = \$r23, 7 \(0x7\);;

    15c0:	18 66 5e 78                                     	srsd \$r23 = \$r24, \$r24;;

    15c4:	d9 21 62 78                                     	srsd \$r24 = \$r25, 7 \(0x7\);;

    15c8:	99 96 66 78                                     	srshqs \$r25 = \$r25, \$r26;;

    15cc:	da 51 6a 78                                     	srshqs \$r26 = \$r26, 7 \(0x7\);;

    15d0:	db 86 6e 78                                     	srswps \$r27 = \$r27, \$r27;;

    15d4:	dc 41 72 78                                     	srswps \$r28 = \$r28, 7 \(0x7\);;

    15d8:	5d 77 72 78                                     	srsw \$r28 = \$r29, \$r29;;

    15dc:	de 31 76 78                                     	srsw \$r29 = \$r30, 7 \(0x7\);;

    15e0:	00 00 a8 0f                                     	stop;;

    15e4:	de 67 78 7e                                     	stsud \$r30 = \$r30, \$r31;;

    15e8:	df 67 7c fe ff ff ff 00                         	stsud \$r31 = \$r31, 536870911 \(0x1fffffff\);;

    15f0:	20 b8 80 7e                                     	stsuhq \$r32 = \$r32, \$r32;;

    15f4:	e1 bf 84 fe ff ff ff 00                         	stsuhq \$r33 = \$r33, 536870911 \(0x1fffffff\).@;;

    15fc:	a2 a8 84 7e                                     	stsuwp \$r33 = \$r34, \$r34;;

    1600:	e3 a7 88 fe ff ff ff 00                         	stsuwp \$r34 = \$r35, 536870911 \(0x1fffffff\);;

    1608:	23 79 8c 7e                                     	stsuw \$r35 = \$r35, \$r36;;

    160c:	e4 77 90 fe ff ff ff 00                         	stsuw \$r36 = \$r36, 536870911 \(0x1fffffff\);;

    1614:	65 f9 97 32                                     	sw.xs \$r37\[\$r37\] = \$r37;;

    1618:	e6 ff 99 b2 ff ff ff 97 ff ff ff 10             	sw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r38\] = \$r38;;

    1624:	a7 59 9f b2 00 00 00 90 00 00 80 17             	sw.dgtz \$r38\? -1125899906842624 \(0xfffc000000000000\)\[\$r39\] = \$r39;;

    1630:	e8 69 a3 b2 00 00 80 17                         	sw.odd \$r39\? -8388608 \(0xff800000\)\[\$r40\] = \$r40;;

    1638:	29 7a a7 32                                     	sw.even \$r40\? \[\$r41\] = \$r41;;

    163c:	29 f0 a9 32                                     	sw -64 \(0xffffffc0\)\[\$r41\] = \$r42;;

    1640:	2a 00 a9 b2 00 00 80 17                         	sw -8589934592 \(0xfffffffe00000000\)\[\$r42\] = \$r42;;

    1648:	2b 70 af 68                                     	sxbd \$r43 = \$r43;;

    164c:	2c f0 af 68                                     	sxhd \$r43 = \$r44;;

    1650:	2c 50 b2 76                                     	sxlbhq \$r44 = \$r44;;

    1654:	2d 40 b6 76                                     	sxlhwp \$r45 = \$r45;;

    1658:	2e 50 b6 77                                     	sxmbhq \$r45 = \$r46;;

    165c:	2e 40 ba 77                                     	sxmhwp \$r46 = \$r46;;

    1660:	2f f0 bf 69                                     	sxwd \$r47 = \$r47;;

    1664:	2f 00 b4 0f                                     	syncgroup \$r47;;

    1668:	00 00 8c 0f                                     	tlbdinval;;

    166c:	00 00 90 0f                                     	tlbiinval;;

    1670:	00 00 84 0f                                     	tlbprobe;;

    1674:	00 00 80 0f                                     	tlbread;;

    1678:	00 00 88 0f                                     	tlbwrite;;

    167c:	30 00 b0 0f                                     	waitit \$r48;;

    1680:	70 00 b8 0f                                     	wfxl \$ps, \$r48;;

    1684:	b0 00 b8 0f                                     	wfxl \$pcr, \$r48;;

    1688:	71 00 b8 0f                                     	wfxl \$ps, \$r49;;

    168c:	71 00 bc 0f                                     	wfxm \$ps, \$r49;;

    1690:	b1 00 bc 0f                                     	wfxm \$pcr, \$r49;;

    1694:	b2 00 bc 0f                                     	wfxm \$pcr, \$r50;;

    1698:	32 80 9c 40                                     	xaccesso \$r36r37r38r39 = \$a0..a1, \$r50;;

    169c:	72 80 ac 40                                     	xaccesso \$r40r41r42r43 = \$a0..a3, \$r50;;

    16a0:	f3 80 bc 40                                     	xaccesso \$r44r45r46r47 = \$a0..a7, \$r51;;

    16a4:	f3 81 cc 40                                     	xaccesso \$r48r49r50r51 = \$a0..a15, \$r51;;

    16a8:	f3 83 dc 40                                     	xaccesso \$r52r53r54r55 = \$a0..a31, \$r51;;

    16ac:	f4 87 ec 40                                     	xaccesso \$r56r57r58r59 = \$a0..a63, \$r52;;

    16b0:	b4 80 00 41                                     	xaligno \$a0 = \$a2..a3, \$r52;;

    16b4:	74 81 00 41                                     	xaligno \$a0 = \$a4..a7, \$r52;;

    16b8:	f5 82 00 41                                     	xaligno \$a0 = \$a8..a15, \$r53;;

    16bc:	f5 85 04 41                                     	xaligno \$a1 = \$a16..a31, \$r53;;

    16c0:	f5 8b 04 41                                     	xaligno \$a1 = \$a32..a63, \$r53;;

    16c4:	f6 87 04 41                                     	xaligno \$a1 = \$a0..a63, \$r54;;

    16c8:	82 60 0b 47                                     	xandno \$a2 = \$a2, \$a2;;

    16cc:	c3 00 0f 47                                     	xando \$a3 = \$a3, \$a3;;

    16d0:	04 01 13 45                                     	xclampwo \$a4 = \$a4, \$a4;;

    16d4:	40 01 14 41                                     	xcopyo \$a5 = \$a5;;

    16d8:	00 01 05 47                                     	xcopyv \$a0a1a2a3 = \$a4a5a6a7;;

    16dc:	00 00 04 47                                     	xcopyx \$a0a1 = \$a0a1;;

    16e0:	86 41 17 47                                     	xeoro \$a5 = \$a6, \$a6;;

    16e4:	87 31 0a 44                                     	xffma44hw.rz \$a2a3 = \$a6, \$a7;;

    16e8:	c8 01 1e 45                                     	xfmaxhx \$a7 = \$a7, \$a8;;

    16ec:	09 02 21 45                                     	xfminhx \$a8 = \$a8, \$a9;;

    16f0:	04 c1 0b 44                                     	xfmma484hw.rna.s \$a2a3 = \$a4a5, \$a4a5;;

    16f4:	80 51 24 45                                     	xfnarrow44wh.rnz \$a9 = \$a6a7;;

    16f8:	b6 e2 27 41                                     	xfscalewo.ro.s \$a9 = \$a10, \$r54;;

    16fc:	ca 72 2b 47                                     	xiorno \$a10 = \$a10, \$a11;;

    1700:	0b 23 2f 47                                     	xioro \$a11 = \$a11, \$a12;;

    1704:	b7 ed 23 2a                                     	xlo.u.q0 \$a8a9a10a11 = \$r54\[\$r55\];;

    1708:	f7 fd 33 23                                     	xlo.us.xs \$a12 = \$r55\[\$r55\];;

    170c:	38 0e 37 a8 00 00 00 90 00 00 80 17             	xlo.dnez.q1 \$r56\? \$a12a13a14a15 = -1125899906842624 \(0xfffc000000000000\)\[\$r56\];;

    1718:	39 1e 4b a9 00 00 80 17                         	xlo.s.deqz.q2 \$r56\? \$a16a17a18a19 = -8388608 \(0xff800000\)\[\$r57\];;

    1720:	79 2e 5f 2a                                     	xlo.u.wnez.q3 \$r57\? \$a20a21a22a23 = \[\$r57\];;

    1724:	ba 3e 33 a3 00 00 00 90 00 00 80 17             	xlo.us.weqz \$r58\? \$a12 = -1125899906842624 \(0xfffc000000000000\)\[\$r58\];;

    1730:	bb 4e 37 a0 00 00 80 17                         	xlo.mt \$r58\? \$a13 = -8388608 \(0xff800000\)\[\$r59\];;

    1738:	fb 5e 37 21                                     	xlo.s.mf \$r59\? \$a13 = \[\$r59\];;

    173c:	3c 0f 13 ae 00 00 00 90 00 00 80 17             	xlo.u \$a4..a5, \$r60 = -1125899906842624 \(0xfffc000000000000\)\[\$r60\];;

    1748:	3d 1f 1b af 00 00 80 17                         	xlo.us.q \$a6..a7, \$r60 = -8388608 \(0xff800000\)\[\$r61\];;

    1750:	7d 2f 23 2c                                     	xlo.d \$a8..a9, \$r61 = \[\$r61\];;

    1754:	be 3f 27 ad 00 00 00 90 00 00 80 17             	xlo.s.w \$a8..a11, \$r62 = -1125899906842624 \(0xfffc000000000000\)\[\$r62\];;

    1760:	bf 4f 37 ae 00 00 80 17                         	xlo.u.h \$a12..a15, \$r62 = -8388608 \(0xff800000\)\[\$r63\];;

    1768:	ff 5f 47 2f                                     	xlo.us.b \$a16..a19, \$r63 = \[\$r63\];;

    176c:	00 00 4f ac 00 00 00 90 00 00 80 17             	xlo \$a16..a23, \$r0 = -1125899906842624 \(0xfffc000000000000\)\[\$r0\];;

    1778:	01 10 6f ad 00 00 80 17                         	xlo.s.q \$a24..a31, \$r0 = -8388608 \(0xff800000\)\[\$r1\];;

    1780:	41 20 8f 2e                                     	xlo.u.d \$a32..a39, \$r1 = \[\$r1\];;

    1784:	82 30 9f af 00 00 00 90 00 00 80 17             	xlo.us.w \$a32..a47, \$r2 = -1125899906842624 \(0xfffc000000000000\)\[\$r2\];;

    1790:	83 40 df ac 00 00 80 17                         	xlo.h \$a48..a63, \$r2 = -8388608 \(0xff800000\)\[\$r3\];;

    1798:	c3 50 1f 2d                                     	xlo.s.b \$a0..a15, \$r3 = \[\$r3\];;

    179c:	04 01 3f ae 00 00 00 90 00 00 80 17             	xlo.u \$a0..a31, \$r4 = -1125899906842624 \(0xfffc000000000000\)\[\$r4\];;

    17a8:	05 11 bf af 00 00 80 17                         	xlo.us.q \$a32..a63, \$r4 = -8388608 \(0xff800000\)\[\$r5\];;

    17b0:	45 21 3f 2c                                     	xlo.d \$a0..a31, \$r5 = \[\$r5\];;

    17b4:	86 31 7f ad 00 00 00 90 00 00 80 17             	xlo.s.w \$a0..a63, \$r6 = -1125899906842624 \(0xfffc000000000000\)\[\$r6\];;

    17c0:	87 41 7f ae 00 00 80 17                         	xlo.u.h \$a0..a63, \$r6 = -8388608 \(0xff800000\)\[\$r7\];;

    17c8:	c7 51 7f 2f                                     	xlo.us.b \$a0..a63, \$r7 = \[\$r7\];;

    17cc:	c8 ff 61 a8 ff ff ff 97 ff ff ff 10             	xlo.q0 \$a24a25a26a27 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r8\];;

    17d8:	08 f0 75 29                                     	xlo.s.q1 \$a28a29a30a31 = -64 \(0xffffffc0\)\[\$r8\];;

    17dc:	08 00 89 aa 00 00 80 17                         	xlo.u.q2 \$a32a33a34a35 = -8589934592 \(0xfffffffe00000000\)\[\$r8\];;

    17e4:	c9 ff 35 a3 ff ff ff 97 ff ff ff 10             	xlo.us \$a13 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r9\];;

    17f0:	09 f0 39 20                                     	xlo \$a14 = -64 \(0xffffffc0\)\[\$r9\];;

    17f4:	09 00 39 a1 00 00 80 17                         	xlo.s \$a14 = -8589934592 \(0xfffffffe00000000\)\[\$r9\];;

    17fc:	8f 03 18 43                                     	xmadd44bw0 \$a6a7 = \$a14, \$a15;;

    1800:	cf 03 24 43                                     	xmadd44bw1 \$a8a9 = \$a15, \$a15;;

    1804:	10 74 40 44                                     	xmaddifwo \$a16 = \$a16, \$a16;;

    1808:	51 04 22 43                                     	xmaddsu44bw0 \$a8a9 = \$a17, \$a17;;

    180c:	52 04 2e 43                                     	xmaddsu44bw1 \$a10a11 = \$a17, \$a18;;

    1810:	92 04 29 43                                     	xmaddu44bw0 \$a10a11 = \$a18, \$a18;;

    1814:	d3 04 35 43                                     	xmaddu44bw1 \$a12a13 = \$a19, \$a19;;

    1818:	8e 03 30 42                                     	xmma4164bw \$a12a13 = \$a14a15, \$a14a15;;

    181c:	d4 04 44 42                                     	xmma484bw \$a16a17 = \$a19, \$a20;;

    1820:	92 04 42 42                                     	xmmasu4164bw \$a16a17 = \$a18a19, \$a18a19;;

    1824:	14 05 56 42                                     	xmmasu484bw \$a20a21 = \$a20, \$a20;;

    1828:	96 05 51 42                                     	xmmau4164bw \$a20a21 = \$a22a23, \$a22a23;;

    182c:	55 05 65 42                                     	xmmau484bw \$a24a25 = \$a21, \$a21;;

    1830:	9a 06 63 42                                     	xmmaus4164bw \$a24a25 = \$a26a27, \$a26a27;;

    1834:	56 05 77 42                                     	xmmaus484bw \$a28a29 = \$a21, \$a22;;

    1838:	00 c0 28 40                                     	xmovefd \$r10 = \$a0_x;;

    183c:	80 85 f4 40                                     	xmovefo \$r60r61r62r63 = \$a22;;

    1840:	00 00 5c 40                                     	xmovefq \$r22r23 = \$a0_lo;;

    1844:	0a e0 01 73                                     	xmovetd \$a0_t = \$r10;;

    1848:	0a e0 01 70                                     	xmovetd \$a0_x = \$r10;;

    184c:	0b e0 01 71                                     	xmovetd \$a0_y = \$r11;;

    1850:	0b e0 01 72                                     	xmovetd \$a0_z = \$r11;;

    1854:	0b e3 01 74                                     	xmovetq \$a0_lo = \$r11, \$r12;;

    1858:	4c e3 01 75                                     	xmovetq \$a0_hi = \$r12, \$r13;;

    185c:	d7 85 59 44                                     	xmsbfifwo.rn.s \$a22 = \$a23, \$a23;;

    1860:	00 1a 95 47                                     	xcopyv.td \$a36a37a38a39 = \$a40a41a42a43;;

    1864:	18 16 5f 47                                     	xnando \$a23 = \$a24, \$a24;;

    1868:	59 56 63 47                                     	xneoro \$a24 = \$a25, \$a25;;

    186c:	9a 36 67 47                                     	xnioro \$a25 = \$a26, \$a26;;

    1870:	db 36 6b 47                                     	xnioro \$a26 = \$a27, \$a27;;

    1874:	1c 77 6f 47                                     	xiorno \$a27 = \$a28, \$a28;;

    1878:	00 e0 71 78                                     	xrecvo.f \$a28;;

    187c:	5d e7 76 47                                     	xsbmm8dq \$a29 = \$a29, \$a29;;

    1880:	9e f7 7a 47                                     	xsbmmt8dq \$a30 = \$a30, \$a30;;

    1884:	c0 e7 01 77                                     	xsendo.b \$a31;;

    1888:	c0 e7 7d 7e                                     	xsendrecvo.f.b \$a31, \$a31;;

    188c:	4e e3 83 35                                     	xso \$r13\[\$r14\] = \$a32;;

    1890:	ce ff 81 b5 ff ff ff 97 ff ff ff 10             	xso 2305843009213693951 \(0x1fffffffffffffff\)\[\$r14\] = \$a32;;

    189c:	cf 63 83 b5 00 00 00 90 00 00 80 17             	xso.mtc \$r15\? -1125899906842624 \(0xfffc000000000000\)\[\$r15\] = \$a32;;

    18a8:	10 74 87 b5 00 00 80 17                         	xso.mfc \$r16\? -8388608 \(0xff800000\)\[\$r16\] = \$a33;;

    18b0:	11 04 87 35                                     	xso.dnez \$r16\? \[\$r17\] = \$a33;;

    18b4:	11 f0 85 35                                     	xso -64 \(0xffffffc0\)\[\$r17\] = \$a33;;

    18b8:	11 00 89 b5 00 00 80 17                         	xso -8589934592 \(0xfffffffe00000000\)\[\$r17\] = \$a34;;

    18c0:	c0 ff 89 ee ff ff ff 87 ff ff ff 00             	xsplatdo \$a34 = 2305843009213693951 \(0x1fffffffffffffff\);;

    18cc:	3c 00 89 ee 00 00 00 00                         	xsplatdo \$a34 = -549755813888 \(0xffffff8000000000\);;

    18d4:	00 f0 8d 6e                                     	xsplatdo \$a35 = -4096 \(0xfffff000\);;

    18d8:	c0 18 b1 47                                     	xsplatov.td \$a44a45a46a47 = \$a35;;

    18dc:	c0 18 70 47                                     	xsplatox.zd \$a28a29 = \$a35;;

    18e0:	00 09 c1 46                                     	xsx48bw \$a48a49a50a51 = \$a36;;

    18e4:	00 0d 90 46                                     	xtrunc48wb \$a36 = \$a52a53a54a55;;

    18e8:	00 09 e5 46                                     	xzx48bw \$a56a57a58a59 = \$a36;;

    18ec:	12 70 4b 64                                     	zxbd \$r18 = \$r18;;

    18f0:	13 f0 4b 64                                     	zxhd \$r18 = \$r19;;

    18f4:	13 50 4e 74                                     	zxlbhq \$r19 = \$r19;;

    18f8:	14 40 52 74                                     	zxlhwp \$r20 = \$r20;;

    18fc:	15 50 52 75                                     	zxmbhq \$r20 = \$r21;;

    1900:	15 40 56 75                                     	zxmhwp \$r21 = \$r21;;

    1904:	16 f0 5b 65                                     	zxwd \$r22 = \$r22;;

