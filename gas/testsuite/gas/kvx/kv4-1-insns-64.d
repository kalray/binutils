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

      28:	c5 0f 11 f1 ff ff ff 00                         	abdd \$r4 = \$r5, 536870911 \(0x1fffffff\).@;;

      30:	85 31 15 71                                     	abdhq \$r5 = \$r5, \$r6;;

      34:	c6 37 19 f1 ff ff ff 00                         	abdhq \$r6 = \$r6, 536870911 \(0x1fffffff\);;

      3c:	c7 a1 1e 73                                     	abdsbo \$r7 = \$r7, \$r7;;

      40:	c8 af 22 f3 ff ff ff 00                         	abdsbo \$r8 = \$r8, 536870911 \(0x1fffffff\).@;;

      48:	49 02 21 70                                     	abdsd \$r8 = \$r9, \$r9;;

      4c:	ca 07 25 f0 ff ff ff 00                         	abdsd \$r9 = \$r10, 536870911 \(0x1fffffff\);;

      54:	ca 32 29 70                                     	abdshq \$r10 = \$r10, \$r11;;

      58:	cb 3f 2d f0 ff ff ff 00                         	abdshq \$r11 = \$r11, 536870911 \(0x1fffffff\).@;;

      60:	4c 23 31 70                                     	abdswp \$r12 = \$r12, \$r13;;

      64:	ce 27 35 f0 ff ff ff 00                         	abdswp \$r13 = \$r14, 536870911 \(0x1fffffff\);;

      6c:	cf 13 39 70                                     	abdsw \$r14 = \$r15, \$r15;;

      70:	d0 17 41 f0 ff ff ff 00                         	abdsw \$r16 = \$r16, 536870911 \(0x1fffffff\);;

      78:	51 c4 42 7f                                     	abdubo \$r16 = \$r17, \$r17;;

      7c:	d2 cf 46 ff ff ff ff 00                         	abdubo \$r17 = \$r18, 536870911 \(0x1fffffff\).@;;

      84:	d2 a4 49 7f                                     	abdud \$r18 = \$r18, \$r19;;

      88:	d3 a7 4d ff ff ff ff 00                         	abdud \$r19 = \$r19, 536870911 \(0x1fffffff\);;

      90:	14 f5 51 7f                                     	abduhq \$r20 = \$r20, \$r20;;

      94:	d5 ff 55 ff ff ff ff 00                         	abduhq \$r21 = \$r21, 536870911 \(0x1fffffff\).@;;

      9c:	96 e5 55 7f                                     	abduwp \$r21 = \$r22, \$r22;;

      a0:	d7 e7 59 ff ff ff ff 00                         	abduwp \$r22 = \$r23, 536870911 \(0x1fffffff\);;

      a8:	17 b6 5d 7f                                     	abduw \$r23 = \$r23, \$r24;;

      ac:	d8 b7 61 ff ff ff ff 00                         	abduw \$r24 = \$r24, 536870911 \(0x1fffffff\);;

      b4:	59 26 65 71                                     	abdwp \$r25 = \$r25, \$r25;;

      b8:	da 2f 69 f1 ff ff ff 00                         	abdwp \$r26 = \$r26, 536870911 \(0x1fffffff\).@;;

      c0:	db 16 69 71                                     	abdw \$r26 = \$r27, \$r27;;

      c4:	1c f0 6c 71                                     	abdw \$r27 = \$r28, -64 \(0xffffffc0\);;

      c8:	1c 00 70 f1 00 00 80 07                         	abdw \$r28 = \$r28, -8589934592 \(0xfffffffe00000000\);;

      d0:	1d a0 76 f2 00 00 00 00                         	absbo \$r29 = \$r29;;

      d8:	1e 00 74 61                                     	absd \$r29 = \$r30;;

      dc:	1e 30 79 f1 00 00 00 00                         	abshq \$r30 = \$r30;;

      e4:	1f a0 7e f3 00 00 00 00                         	abssbo \$r31 = \$r31;;

      ec:	20 00 7d f0 00 00 00 00                         	abssd \$r31 = \$r32;;

      f4:	20 30 81 f0 00 00 00 00                         	absshq \$r32 = \$r32;;

      fc:	21 20 85 f0 00 00 00 00                         	absswp \$r33 = \$r33;;

     104:	22 10 85 f0 00 00 00 00                         	abssw \$r33 = \$r34;;

     10c:	22 20 89 f1 00 00 00 00                         	abswp \$r34 = \$r34;;

     114:	23 00 8c 71                                     	absw \$r35 = \$r35;;

     118:	24 a0 8f bc 00 00 00 98 00 00 80 1f             	acswapd.v \$r35, -1125899906842624 \(0xfffc000000000000\)\[\$r36\] = \$r0r1;;

     124:	24 b0 93 bd 00 00 80 1f                         	acswapd.g \$r36, -8388608 \(0xff800000\)\[\$r36\] = \$r0r1;;

     12c:	a5 a0 97 3e                                     	acswapd.v.s \$r37, \[\$r37\] = \$r2r3;;

     130:	25 d0 0b bc 00 00 00 98 00 00 80 1f             	acswapq \$r2r3, -1125899906842624 \(0xfffc000000000000\)\[\$r37\] = \$r0r1r2r3;;

     13c:	26 c1 13 bd 00 00 80 1f                         	acswapq.v.g \$r4r5, -8388608 \(0xff800000\)\[\$r38\] = \$r4r5r6r7;;

     144:	26 d2 13 3e                                     	acswapq.s \$r4r5, \[\$r38\] = \$r8r9r10r11;;

     148:	a7 81 9b bc 00 00 00 98 00 00 80 1f             	acswapw.v \$r38, -1125899906842624 \(0xfffc000000000000\)\[\$r39\] = \$r6r7;;

     154:	a7 91 9f bd 00 00 80 1f                         	acswapw.g \$r39, -8388608 \(0xff800000\)\[\$r39\] = \$r6r7;;

     15c:	28 82 a3 3e                                     	acswapw.v.s \$r40, \[\$r40\] = \$r8r9;;

     160:	69 aa a2 70                                     	addbo \$r40 = \$r41, \$r41;;

     164:	ea a7 a6 f0 ff ff ff 00                         	addbo \$r41 = \$r42, 536870911 \(0x1fffffff\);;

     16c:	ea 9a a9 7e                                     	addcd.i \$r42 = \$r42, \$r43;;

     170:	eb 97 ad fe ff ff ff 00                         	addcd.i \$r43 = \$r43, 536870911 \(0x1fffffff\);;

     178:	2c 8b b1 7e                                     	addcd \$r44 = \$r44, \$r44;;

     17c:	ed 87 b5 fe ff ff ff 00                         	addcd \$r45 = \$r45, 536870911 \(0x1fffffff\);;

     184:	ee ff b4 e2 ff ff ff 87 ff ff ff 00             	addd \$r45 = \$r46, 2305843009213693951 \(0x1fffffffffffffff\);;

     190:	ee 0b b9 72                                     	addd \$r46 = \$r46, \$r47;;

     194:	2f f0 bc 62                                     	addd \$r47 = \$r47, -64 \(0xffffffc0\);;

     198:	30 00 c0 e2 00 00 80 07                         	addd \$r48 = \$r48, -8589934592 \(0xfffffffe00000000\);;

     1a0:	f1 0f c1 f2 ff ff ff 00                         	addd \$r48 = \$r49, 536870911 \(0x1fffffff\).@;;

     1a8:	b1 3c c5 72                                     	addhq \$r49 = \$r49, \$r50;;

     1ac:	f2 37 c9 f2 ff ff ff 00                         	addhq \$r50 = \$r50, 536870911 \(0x1fffffff\);;

     1b4:	b3 c0 cf 76                                     	addrbod \$r51 = \$r51;;

     1b8:	74 c0 cf 76                                     	addrhqd \$r51 = \$r52;;

     1bc:	34 c0 d3 76                                     	addrwpd \$r52 = \$r52;;

     1c0:	75 bd d6 7c                                     	addsbo \$r53 = \$r53, \$r53;;

     1c4:	f6 bf da fc ff ff ff 00                         	addsbo \$r54 = \$r54, 536870911 \(0x1fffffff\).@;;

     1cc:	f7 4d d9 7c                                     	addsd \$r54 = \$r55, \$r55;;

     1d0:	f8 47 dd fc ff ff ff 00                         	addsd \$r55 = \$r56, 536870911 \(0x1fffffff\);;

     1d8:	78 7e e1 7c                                     	addshq \$r56 = \$r56, \$r57;;

     1dc:	f9 7f e5 fc ff ff ff 00                         	addshq \$r57 = \$r57, 536870911 \(0x1fffffff\).@;;

     1e4:	ba 6e e9 7c                                     	addswp \$r58 = \$r58, \$r58;;

     1e8:	fb 67 ed fc ff ff ff 00                         	addswp \$r59 = \$r59, 536870911 \(0x1fffffff\);;

     1f0:	3c 5f ed 7c                                     	addsw \$r59 = \$r60, \$r60;;

     1f4:	fd 57 f1 fc ff ff ff 00                         	addsw \$r60 = \$r61, 536870911 \(0x1fffffff\);;

     1fc:	bd c0 f7 7a                                     	addurbod \$r61 = \$r61;;

     200:	7e c0 fb 7a                                     	addurhqd \$r62 = \$r62;;

     204:	3f c0 fb 7a                                     	addurwpd \$r62 = \$r63;;

     208:	3f b0 fe 7e                                     	addusbo \$r63 = \$r63, \$r0;;

     20c:	c0 bf 02 fe ff ff ff 00                         	addusbo \$r0 = \$r0, 536870911 \(0x1fffffff\).@;;

     214:	41 40 05 7e                                     	addusd \$r1 = \$r1, \$r1;;

     218:	c2 47 09 fe ff ff ff 00                         	addusd \$r2 = \$r2, 536870911 \(0x1fffffff\);;

     220:	c3 70 09 7e                                     	addushq \$r2 = \$r3, \$r3;;

     224:	c4 7f 0d fe ff ff ff 00                         	addushq \$r3 = \$r4, 536870911 \(0x1fffffff\).@;;

     22c:	44 61 11 7e                                     	adduswp \$r4 = \$r4, \$r5;;

     230:	c5 67 15 fe ff ff ff 00                         	adduswp \$r5 = \$r5, 536870911 \(0x1fffffff\);;

     238:	86 51 19 7e                                     	addusw \$r6 = \$r6, \$r6;;

     23c:	c7 57 1d fe ff ff ff 00                         	addusw \$r7 = \$r7, 536870911 \(0x1fffffff\);;

     244:	08 92 1d 7c                                     	adduwd \$r7 = \$r8, \$r8;;

     248:	c9 97 21 fc ff ff ff 00                         	adduwd \$r8 = \$r9, 536870911 \(0x1fffffff\);;

     250:	89 82 25 7c                                     	addwd \$r9 = \$r9, \$r10;;

     254:	ca 87 29 fc ff ff ff 00                         	addwd \$r10 = \$r10, 536870911 \(0x1fffffff\);;

     25c:	cb 22 2d 72                                     	addwp \$r11 = \$r11, \$r11;;

     260:	cc 2f 31 f2 ff ff ff 00                         	addwp \$r12 = \$r12, 536870911 \(0x1fffffff\).@;;

     268:	8d 13 35 72                                     	addw \$r13 = \$r13, \$r14;;

     26c:	0f f0 38 72                                     	addw \$r14 = \$r15, -64 \(0xffffffc0\);;

     270:	10 00 3c f2 00 00 80 07                         	addw \$r15 = \$r16, -8589934592 \(0xfffffffe00000000\);;

     278:	50 b4 42 76                                     	addx16bo \$r16 = \$r16, \$r17;;

     27c:	d1 b7 46 f6 ff ff ff 00                         	addx16bo \$r17 = \$r17, 536870911 \(0x1fffffff\);;

     284:	92 44 49 76                                     	addx16d \$r18 = \$r18, \$r18;;

     288:	d3 4f 4d f6 ff ff ff 00                         	addx16d \$r19 = \$r19, 536870911 \(0x1fffffff\).@;;

     290:	14 75 4d 76                                     	addx16hq \$r19 = \$r20, \$r20;;

     294:	d5 77 51 f6 ff ff ff 00                         	addx16hq \$r20 = \$r21, 536870911 \(0x1fffffff\);;

     29c:	95 95 55 76                                     	addx16uwd \$r21 = \$r21, \$r22;;

     2a0:	d6 97 59 f6 ff ff ff 00                         	addx16uwd \$r22 = \$r22, 536870911 \(0x1fffffff\);;

     2a8:	d7 85 5d 76                                     	addx16wd \$r23 = \$r23, \$r23;;

     2ac:	d8 87 61 f6 ff ff ff 00                         	addx16wd \$r24 = \$r24, 536870911 \(0x1fffffff\);;

     2b4:	59 66 61 76                                     	addx16wp \$r24 = \$r25, \$r25;;

     2b8:	da 6f 65 f6 ff ff ff 00                         	addx16wp \$r25 = \$r26, 536870911 \(0x1fffffff\).@;;

     2c0:	da 56 69 76                                     	addx16w \$r26 = \$r26, \$r27;;

     2c4:	db 57 6d f6 ff ff ff 00                         	addx16w \$r27 = \$r27, 536870911 \(0x1fffffff\);;

     2cc:	1c b7 72 70                                     	addx2bo \$r28 = \$r28, \$r28;;

     2d0:	dd b7 76 f0 ff ff ff 00                         	addx2bo \$r29 = \$r29, 536870911 \(0x1fffffff\);;

     2d8:	9e 47 75 70                                     	addx2d \$r29 = \$r30, \$r30;;

     2dc:	df 4f 79 f0 ff ff ff 00                         	addx2d \$r30 = \$r31, 536870911 \(0x1fffffff\).@;;

     2e4:	1f 78 7d 70                                     	addx2hq \$r31 = \$r31, \$r32;;

     2e8:	e0 77 81 f0 ff ff ff 00                         	addx2hq \$r32 = \$r32, 536870911 \(0x1fffffff\);;

     2f0:	61 98 85 70                                     	addx2uwd \$r33 = \$r33, \$r33;;

     2f4:	e2 97 89 f0 ff ff ff 00                         	addx2uwd \$r34 = \$r34, 536870911 \(0x1fffffff\);;

     2fc:	e3 88 89 70                                     	addx2wd \$r34 = \$r35, \$r35;;

     300:	e4 87 8d f0 ff ff ff 00                         	addx2wd \$r35 = \$r36, 536870911 \(0x1fffffff\);;

     308:	64 69 91 70                                     	addx2wp \$r36 = \$r36, \$r37;;

     30c:	e5 6f 95 f0 ff ff ff 00                         	addx2wp \$r37 = \$r37, 536870911 \(0x1fffffff\).@;;

     314:	a6 59 99 70                                     	addx2w \$r38 = \$r38, \$r38;;

     318:	e7 57 9d f0 ff ff ff 00                         	addx2w \$r39 = \$r39, 536870911 \(0x1fffffff\);;

     320:	28 4a 9d 78                                     	addx32d \$r39 = \$r40, \$r40;;

     324:	e9 47 a1 f8 ff ff ff 00                         	addx32d \$r40 = \$r41, 536870911 \(0x1fffffff\);;

     32c:	a9 9a a5 78                                     	addx32uwd \$r41 = \$r41, \$r42;;

     330:	ea 97 a9 f8 ff ff ff 00                         	addx32uwd \$r42 = \$r42, 536870911 \(0x1fffffff\);;

     338:	eb 8a ad 78                                     	addx32wd \$r43 = \$r43, \$r43;;

     33c:	ec 87 b1 f8 ff ff ff 00                         	addx32wd \$r44 = \$r44, 536870911 \(0x1fffffff\);;

     344:	6d 5b b1 78                                     	addx32w \$r44 = \$r45, \$r45;;

     348:	ee 57 b5 f8 ff ff ff 00                         	addx32w \$r45 = \$r46, 536870911 \(0x1fffffff\);;

     350:	ee bb ba 72                                     	addx4bo \$r46 = \$r46, \$r47;;

     354:	ef bf be f2 ff ff ff 00                         	addx4bo \$r47 = \$r47, 536870911 \(0x1fffffff\).@;;

     35c:	30 4c c1 72                                     	addx4d \$r48 = \$r48, \$r48;;

     360:	f1 47 c5 f2 ff ff ff 00                         	addx4d \$r49 = \$r49, 536870911 \(0x1fffffff\);;

     368:	b2 7c c5 72                                     	addx4hq \$r49 = \$r50, \$r50;;

     36c:	f3 7f c9 f2 ff ff ff 00                         	addx4hq \$r50 = \$r51, 536870911 \(0x1fffffff\).@;;

     374:	33 9d cd 72                                     	addx4uwd \$r51 = \$r51, \$r52;;

     378:	f4 97 d1 f2 ff ff ff 00                         	addx4uwd \$r52 = \$r52, 536870911 \(0x1fffffff\);;

     380:	75 8d d5 72                                     	addx4wd \$r53 = \$r53, \$r53;;

     384:	f6 87 d9 f2 ff ff ff 00                         	addx4wd \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     38c:	f7 6d d9 72                                     	addx4wp \$r54 = \$r55, \$r55;;

     390:	f8 67 dd f2 ff ff ff 00                         	addx4wp \$r55 = \$r56, 536870911 \(0x1fffffff\);;

     398:	78 5e e1 72                                     	addx4w \$r56 = \$r56, \$r57;;

     39c:	f9 57 e5 f2 ff ff ff 00                         	addx4w \$r57 = \$r57, 536870911 \(0x1fffffff\);;

     3a4:	ba 4e e9 7a                                     	addx64d \$r58 = \$r58, \$r58;;

     3a8:	fb 4f ed fa ff ff ff 00                         	addx64d \$r59 = \$r59, 536870911 \(0x1fffffff\).@;;

     3b0:	3c 9f ed 7a                                     	addx64uwd \$r59 = \$r60, \$r60;;

     3b4:	fd 97 f1 fa ff ff ff 00                         	addx64uwd \$r60 = \$r61, 536870911 \(0x1fffffff\);;

     3bc:	bd 8f f5 7a                                     	addx64wd \$r61 = \$r61, \$r62;;

     3c0:	fe 87 f9 fa ff ff ff 00                         	addx64wd \$r62 = \$r62, 536870911 \(0x1fffffff\);;

     3c8:	ff 5f fd 7a                                     	addx64w \$r63 = \$r63, \$r63;;

     3cc:	c0 57 01 fa ff ff ff 00                         	addx64w \$r0 = \$r0, 536870911 \(0x1fffffff\);;

     3d4:	41 b0 02 74                                     	addx8bo \$r0 = \$r1, \$r1;;

     3d8:	c2 b7 06 f4 ff ff ff 00                         	addx8bo \$r1 = \$r2, 536870911 \(0x1fffffff\);;

     3e0:	c2 40 09 74                                     	addx8d \$r2 = \$r2, \$r3;;

     3e4:	c3 4f 0d f4 ff ff ff 00                         	addx8d \$r3 = \$r3, 536870911 \(0x1fffffff\).@;;

     3ec:	04 71 11 74                                     	addx8hq \$r4 = \$r4, \$r4;;

     3f0:	c5 77 15 f4 ff ff ff 00                         	addx8hq \$r5 = \$r5, 536870911 \(0x1fffffff\);;

     3f8:	86 91 15 74                                     	addx8uwd \$r5 = \$r6, \$r6;;

     3fc:	c7 97 19 f4 ff ff ff 00                         	addx8uwd \$r6 = \$r7, 536870911 \(0x1fffffff\);;

     404:	07 82 1d 74                                     	addx8wd \$r7 = \$r7, \$r8;;

     408:	c8 87 21 f4 ff ff ff 00                         	addx8wd \$r8 = \$r8, 536870911 \(0x1fffffff\);;

     410:	49 62 25 74                                     	addx8wp \$r9 = \$r9, \$r9;;

     414:	ca 6f 29 f4 ff ff ff 00                         	addx8wp \$r10 = \$r10, 536870911 \(0x1fffffff\).@;;

     41c:	cb 52 29 74                                     	addx8w \$r10 = \$r11, \$r11;;

     420:	cc 57 2d f4 ff ff ff 00                         	addx8w \$r11 = \$r12, 536870911 \(0x1fffffff\);;

     428:	0c 70 37 bc 00 00 00 98 00 00 80 1f             	aladdd -1125899906842624 \(0xfffc000000000000\)\[\$r12\] = \$r13;;

     434:	0d 70 3b bd 00 00 80 1f                         	aladdd.g -8388608 \(0xff800000\)\[\$r13\] = \$r14;;

     43c:	0e 70 3f 3e                                     	aladdd.s \[\$r14\] = \$r15;;

     440:	0f 60 43 bc 00 00 00 98 00 00 80 1f             	aladdw -1125899906842624 \(0xfffc000000000000\)\[\$r15\] = \$r16;;

     44c:	10 60 43 bd 00 00 80 1f                         	aladdw.g -8388608 \(0xff800000\)\[\$r16\] = \$r16;;

     454:	11 60 47 3e                                     	aladdw.s \[\$r17\] = \$r17;;

     458:	12 30 47 bc 00 00 00 98 00 00 80 1f             	alclrd \$r17 = -1125899906842624 \(0xfffc000000000000\)\[\$r18\];;

     464:	12 30 4b bd 00 00 80 1f                         	alclrd.g \$r18 = -8388608 \(0xff800000\)\[\$r18\];;

     46c:	13 30 4f 3e                                     	alclrd.s \$r19 = \[\$r19\];;

     470:	14 20 4f bc 00 00 00 98 00 00 80 1f             	alclrw \$r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r20\];;

     47c:	14 20 53 bd 00 00 80 1f                         	alclrw.g \$r20 = -8388608 \(0xff800000\)\[\$r20\];;

     484:	15 20 57 3e                                     	alclrw.s \$r21 = \[\$r21\];;

     488:	16 10 57 bc 00 00 00 98 00 00 80 1f             	ald \$r21 = -1125899906842624 \(0xfffc000000000000\)\[\$r22\];;

     494:	16 10 5b bd 00 00 80 1f                         	ald.g \$r22 = -8388608 \(0xff800000\)\[\$r22\];;

     49c:	17 10 5f 3e                                     	ald.s \$r23 = \[\$r23\];;

     4a0:	18 00 5f bc 00 00 00 98 00 00 80 1f             	alw \$r23 = -1125899906842624 \(0xfffc000000000000\)\[\$r24\];;

     4ac:	18 00 63 bd 00 00 80 1f                         	alw.g \$r24 = -8388608 \(0xff800000\)\[\$r24\];;

     4b4:	19 00 67 3e                                     	alw.s \$r25 = \[\$r25\];;

     4b8:	da ff 64 e8 ff ff ff 87 ff ff ff 00             	andd \$r25 = \$r26, 2305843009213693951 \(0x1fffffffffffffff\);;

     4c4:	da 06 69 78                                     	andd \$r26 = \$r26, \$r27;;

     4c8:	1b f0 6c 68                                     	andd \$r27 = \$r27, -64 \(0xffffffc0\);;

     4cc:	1c 00 70 e8 00 00 80 07                         	andd \$r28 = \$r28, -8589934592 \(0xfffffffe00000000\);;

     4d4:	dd ff 70 e8 ff ff 07 00                         	andd \$r28 = \$r29, 536870911 \(0x1fffffff\);;

     4dc:	dd ff 74 ee ff ff ff 87 ff ff ff 00             	andnd \$r29 = \$r29, 2305843009213693951 \(0x1fffffffffffffff\);;

     4e8:	9e 07 79 7e                                     	andnd \$r30 = \$r30, \$r30;;

     4ec:	1f f0 7c 6e                                     	andnd \$r31 = \$r31, -64 \(0xffffffc0\);;

     4f0:	20 00 7c ee 00 00 80 07                         	andnd \$r31 = \$r32, -8589934592 \(0xfffffffe00000000\);;

     4f8:	e0 0f 81 fe ff ff ff 00                         	andnd \$r32 = \$r32, 536870911 \(0x1fffffff\).@;;

     500:	61 18 85 7e                                     	andnw \$r33 = \$r33, \$r33;;

     504:	22 f0 88 7e                                     	andnw \$r34 = \$r34, -64 \(0xffffffc0\);;

     508:	23 00 88 fe 00 00 80 07                         	andnw \$r34 = \$r35, -8589934592 \(0xfffffffe00000000\);;

     510:	a3 c0 8f 70                                     	andrbod \$r35 = \$r35;;

     514:	64 c0 93 70                                     	andrhqd \$r36 = \$r36;;

     518:	25 c0 93 70                                     	andrwpd \$r36 = \$r37;;

     51c:	a5 19 95 78                                     	andw \$r37 = \$r37, \$r38;;

     520:	26 f0 98 78                                     	andw \$r38 = \$r38, -64 \(0xffffffc0\);;

     524:	27 00 9c f8 00 00 80 07                         	andw \$r39 = \$r39, -8589934592 \(0xfffffffe00000000\);;

     52c:	27 50 a3 bc 00 00 00 98 00 00 80 1f             	asd -1125899906842624 \(0xfffc000000000000\)\[\$r39\] = \$r40;;

     538:	28 50 a3 bd 00 00 80 1f                         	asd.g -8388608 \(0xff800000\)\[\$r40\] = \$r40;;

     540:	29 50 a7 3e                                     	asd.s \[\$r41\] = \$r41;;

     544:	29 40 ab bc 00 00 00 98 00 00 80 1f             	asw -1125899906842624 \(0xfffc000000000000\)\[\$r41\] = \$r42;;

     550:	2a 40 ab bd 00 00 80 1f                         	asw.g -8388608 \(0xff800000\)\[\$r42\] = \$r42;;

     558:	2b 40 af 3e                                     	asw.s \[\$r43\] = \$r43;;

     55c:	2c fb ae 74                                     	avgbo \$r43 = \$r44, \$r44;;

     560:	ed f7 b2 f4 ff ff ff 00                         	avgbo \$r44 = \$r45, 536870911 \(0x1fffffff\);;

     568:	ad 9b b6 74                                     	avghq \$r45 = \$r45, \$r46;;

     56c:	ee 9f ba f4 ff ff ff 00                         	avghq \$r46 = \$r46, 536870911 \(0x1fffffff\).@;;

     574:	ef fb be 75                                     	avgrbo \$r47 = \$r47, \$r47;;

     578:	f0 f7 c2 f5 ff ff ff 00                         	avgrbo \$r48 = \$r48, 536870911 \(0x1fffffff\);;

     580:	71 9c c2 75                                     	avgrhq \$r48 = \$r49, \$r49;;

     584:	f2 9f c6 f5 ff ff ff 00                         	avgrhq \$r49 = \$r50, 536870911 \(0x1fffffff\).@;;

     58c:	f2 fc ca 77                                     	avgrubo \$r50 = \$r50, \$r51;;

     590:	f3 f7 ce f7 ff ff ff 00                         	avgrubo \$r51 = \$r51, 536870911 \(0x1fffffff\);;

     598:	34 9d d2 77                                     	avgruhq \$r52 = \$r52, \$r52;;

     59c:	f5 9f d6 f7 ff ff ff 00                         	avgruhq \$r53 = \$r53, 536870911 \(0x1fffffff\).@;;

     5a4:	b6 8d d6 77                                     	avgruwp \$r53 = \$r54, \$r54;;

     5a8:	f7 87 da f7 ff ff ff 00                         	avgruwp \$r54 = \$r55, 536870911 \(0x1fffffff\);;

     5b0:	37 7e de 77                                     	avgruw \$r55 = \$r55, \$r56;;

     5b4:	f8 77 e2 f7 ff ff ff 00                         	avgruw \$r56 = \$r56, 536870911 \(0x1fffffff\);;

     5bc:	79 8e e6 75                                     	avgrwp \$r57 = \$r57, \$r57;;

     5c0:	fa 8f ea f5 ff ff ff 00                         	avgrwp \$r58 = \$r58, 536870911 \(0x1fffffff\).@;;

     5c8:	fb 7e ea 75                                     	avgrw \$r58 = \$r59, \$r59;;

     5cc:	fc 77 ee f5 ff ff ff 00                         	avgrw \$r59 = \$r60, 536870911 \(0x1fffffff\);;

     5d4:	7c ff f2 76                                     	avgubo \$r60 = \$r60, \$r61;;

     5d8:	fd f7 f6 f6 ff ff ff 00                         	avgubo \$r61 = \$r61, 536870911 \(0x1fffffff\);;

     5e0:	be 9f fa 76                                     	avguhq \$r62 = \$r62, \$r62;;

     5e4:	ff 9f fe f6 ff ff ff 00                         	avguhq \$r63 = \$r63, 536870911 \(0x1fffffff\).@;;

     5ec:	00 80 fe 76                                     	avguwp \$r63 = \$r0, \$r0;;

     5f0:	c1 87 02 f6 ff ff ff 00                         	avguwp \$r0 = \$r1, 536870911 \(0x1fffffff\);;

     5f8:	81 70 06 76                                     	avguw \$r1 = \$r1, \$r2;;

     5fc:	c2 77 0a f6 ff ff ff 00                         	avguw \$r2 = \$r2, 536870911 \(0x1fffffff\);;

     604:	c3 80 0e 74                                     	avgwp \$r3 = \$r3, \$r3;;

     608:	c4 8f 12 f4 ff ff ff 00                         	avgwp \$r4 = \$r4, 536870911 \(0x1fffffff\).@;;

     610:	45 71 12 74                                     	avgw \$r4 = \$r5, \$r5;;

     614:	c6 77 16 f4 ff ff ff 00                         	avgw \$r5 = \$r6, 536870911 \(0x1fffffff\);;

     61c:	00 00 a0 0f                                     	await;;

     620:	00 00 ac 0f                                     	barrier;;

     624:	00 80 00 00                                     	break 0 \(0x0\);;

     628:	00 00 80 1f                                     	call fffffffffe000628 <main\+0xfffffffffe000628>;;

     62c:	06 20 1a 72                                     	cbsd \$r6 = \$r6;;

     630:	07 40 1e 72                                     	cbswp \$r7 = \$r7;;

     634:	08 30 1e 72                                     	cbsw \$r7 = \$r8;;

     638:	08 00 78 08                                     	cb.dnez \$r8\? ffffffffffff8638 <main\+0xffffffffffff8638>;;

     63c:	c9 71 23 6c                                     	clrf \$r8 = \$r9, 7 \(0x7\), 7 \(0x7\);;

     640:	09 20 26 71                                     	clsd \$r9 = \$r9;;

     644:	0a 40 2a 71                                     	clswp \$r10 = \$r10;;

     648:	0b 30 2a 71                                     	clsw \$r10 = \$r11;;

     64c:	0b 20 2e 70                                     	clzd \$r11 = \$r11;;

     650:	0c 40 32 70                                     	clzwp \$r12 = \$r12;;

     654:	0d 30 36 70                                     	clzw \$r13 = \$r13;;

     658:	ce d3 3a 70                                     	cmovebo.nez \$r14\? \$r14 = \$r15;;

     65c:	cf ff 42 e1 ff ff ff 87 ff ff ff 00             	cmoved.deqz \$r15\? \$r16 = 2305843009213693951 \(0x1fffffffffffffff\);;

     668:	50 04 42 72                                     	cmoved.dltz \$r16\? \$r16 = \$r17;;

     66c:	11 f0 46 63                                     	cmoved.dgez \$r17\? \$r17 = -64 \(0xffffffc0\);;

     670:	12 00 4a e4 00 00 80 07                         	cmoved.dlez \$r18\? \$r18 = -8589934592 \(0xfffffffe00000000\);;

     678:	d2 14 4e 79                                     	cmovehq.eqz \$r18\? \$r19 = \$r19;;

     67c:	13 15 52 72                                     	cmovewp.ltz \$r19\? \$r20 = \$r20;;

     680:	54 15 24 5b                                     	cmuldt \$r8r9 = \$r20, \$r21;;

     684:	55 15 2c 5f                                     	cmulghxdt \$r10r11 = \$r21, \$r21;;

     688:	96 15 2c 5d                                     	cmulglxdt \$r10r11 = \$r22, \$r22;;

     68c:	d6 15 34 5e                                     	cmulgmxdt \$r12r13 = \$r22, \$r23;;

     690:	d7 15 34 5c                                     	cmulxdt \$r12r13 = \$r23, \$r23;;

     694:	d8 ff 61 e0 ff ff ff 87 ff ff ff 00             	compd.ne \$r24 = \$r24, 2305843009213693951 \(0x1fffffffffffffff\);;

     6a0:	59 a6 61 71                                     	compd.eq \$r24 = \$r25, \$r25;;

     6a4:	1a f0 65 62                                     	compd.lt \$r25 = \$r26, -64 \(0xffffffc0\);;

     6a8:	1a 00 69 e3 00 00 80 07                         	compd.ge \$r26 = \$r26, -8589934592 \(0xfffffffe00000000\);;

     6b0:	db c6 6e 74                                     	compnbo.le \$r27 = \$r27, \$r27;;

     6b4:	dc c7 72 f5 ff ff ff 00                         	compnbo.gt \$r28 = \$r28, 536870911 \(0x1fffffff\);;

     6bc:	5d b7 73 76                                     	compnd.ltu \$r28 = \$r29, \$r29;;

     6c0:	de b7 77 f7 ff ff ff 00                         	compnd.geu \$r29 = \$r30, 536870911 \(0x1fffffff\);;

     6c8:	de f7 79 78                                     	compnhq.leu \$r30 = \$r30, \$r31;;

     6cc:	df ff 7d f9 ff ff ff 00                         	compnhq.gtu \$r31 = \$r31, 536870911 \(0x1fffffff\).@;;

     6d4:	20 e8 81 7a                                     	compnwp.all \$r32 = \$r32, \$r32;;

     6d8:	e1 e7 85 fb ff ff ff 00                         	compnwp.nall \$r33 = \$r33, 536870911 \(0x1fffffff\);;

     6e0:	a2 a8 87 7c                                     	compnw.any \$r33 = \$r34, \$r34;;

     6e4:	e3 a7 8b fd ff ff ff 00                         	compnw.none \$r34 = \$r35, 536870911 \(0x1fffffff\);;

     6ec:	23 d9 8d 70                                     	compuwd.ne \$r35 = \$r35, \$r36;;

     6f0:	e4 d7 91 f1 ff ff ff 00                         	compuwd.eq \$r36 = \$r36, 536870911 \(0x1fffffff\);;

     6f8:	65 c9 95 72                                     	compwd.lt \$r37 = \$r37, \$r37;;

     6fc:	e6 c7 99 f3 ff ff ff 00                         	compwd.ge \$r38 = \$r38, 536870911 \(0x1fffffff\);;

     704:	e7 b9 99 74                                     	compw.le \$r38 = \$r39, \$r39;;

     708:	e8 b7 9d f5 ff ff ff 00                         	compw.gt \$r39 = \$r40, 536870911 \(0x1fffffff\);;

     710:	28 00 a0 6a                                     	copyd \$r40 = \$r40;;

     714:	10 00 3d 34                                     	copyo \$r12r13r14r15 = \$r16r17r18r19;;

     718:	69 fa 38 5f                                     	copyq \$r14r15 = \$r41, \$r41;;

     71c:	2a 00 a4 7a                                     	copyw \$r41 = \$r42;;

     720:	ea 2a a8 59                                     	crcbellw \$r42 = \$r42, \$r43;;

     724:	eb 27 ac d9 ff ff ff 10                         	crcbellw \$r43 = \$r43, 536870911 \(0x1fffffff\);;

     72c:	2c 2b b0 58                                     	crcbelmw \$r44 = \$r44, \$r44;;

     730:	ed 27 b4 d8 ff ff ff 10                         	crcbelmw \$r45 = \$r45, 536870911 \(0x1fffffff\);;

     738:	ae 2b b4 5b                                     	crclellw \$r45 = \$r46, \$r46;;

     73c:	ef 27 b8 db ff ff ff 10                         	crclellw \$r46 = \$r47, 536870911 \(0x1fffffff\);;

     744:	2f 2c bc 5a                                     	crclelmw \$r47 = \$r47, \$r48;;

     748:	f0 27 c0 da ff ff ff 10                         	crclelmw \$r48 = \$r48, 536870911 \(0x1fffffff\);;

     750:	31 20 c6 73                                     	ctzd \$r49 = \$r49;;

     754:	32 40 c6 73                                     	ctzwp \$r49 = \$r50;;

     758:	32 30 ca 73                                     	ctzw \$r50 = \$r50;;

     75c:	00 00 8c 3c                                     	d1inval;;

     760:	f3 ec 3e 3c                                     	dflushl \$r51\[\$r51\];;

     764:	f3 ff 3c bc ff ff ff 9f ff ff ff 18             	dflushl 2305843009213693951 \(0x1fffffffffffffff\)\[\$r51\];;

     770:	34 f0 3c 3c                                     	dflushl -64 \(0xffffffc0\)\[\$r52\];;

     774:	34 00 3c bc 00 00 80 1f                         	dflushl -8589934592 \(0xfffffffe00000000\)\[\$r52\];;

     77c:	35 ed be 3c                                     	dflushsw.l1 \$r52, \$r53;;

     780:	75 fd 1e 3c                                     	dinvall.xs \$r53\[\$r53\];;

     784:	f6 ff 1c bc ff ff ff 9f ff ff ff 18             	dinvall 2305843009213693951 \(0x1fffffffffffffff\)\[\$r54\];;

     790:	36 f0 1c 3c                                     	dinvall -64 \(0xffffffc0\)\[\$r54\];;

     794:	36 00 1c bc 00 00 80 1f                         	dinvall -8589934592 \(0xfffffffe00000000\)\[\$r54\];;

     79c:	f7 ed 9e 3d                                     	dinvalsw.l2 \$r55, \$r55;;

     7a0:	10 24 38 52                                     	dot2suwdp \$r14r15 = \$r16r17, \$r16r17;;

     7a4:	38 2e dc 5e                                     	dot2suwd \$r55 = \$r56, \$r56;;

     7a8:	12 25 48 51                                     	dot2uwdp \$r18r19 = \$r18r19, \$r20r21;;

     7ac:	79 2e e0 5d                                     	dot2uwd \$r56 = \$r57, \$r57;;

     7b0:	96 25 50 50                                     	dot2wdp \$r20r21 = \$r22r23, \$r22r23;;

     7b4:	ba 2e e4 5c                                     	dot2wd \$r57 = \$r58, \$r58;;

     7b8:	98 26 60 53                                     	dot2wzp \$r24r25 = \$r24r25, \$r26r27;;

     7bc:	fb 2e e8 5f                                     	dot2w \$r58 = \$r59, \$r59;;

     7c0:	fc ee 2e 3c                                     	dpurgel \$r59\[\$r60\];;

     7c4:	fc ff 2c bc ff ff ff 9f ff ff ff 18             	dpurgel 2305843009213693951 \(0x1fffffffffffffff\)\[\$r60\];;

     7d0:	3c f0 2c 3c                                     	dpurgel -64 \(0xffffffc0\)\[\$r60\];;

     7d4:	3d 00 2c bc 00 00 80 1f                         	dpurgel -8589934592 \(0xfffffffe00000000\)\[\$r61\];;

     7dc:	7d ef ae 3c                                     	dpurgesw.l1 \$r61, \$r61;;

     7e0:	be ff 0e 3c                                     	dtouchl.xs \$r62\[\$r62\];;

     7e4:	fe ff 0c bc ff ff ff 9f ff ff ff 18             	dtouchl 2305843009213693951 \(0x1fffffffffffffff\)\[\$r62\];;

     7f0:	3f f0 0c 3c                                     	dtouchl -64 \(0xffffffc0\)\[\$r63\];;

     7f4:	3f 00 0c bc 00 00 80 1f                         	dtouchl -8589934592 \(0xfffffffe00000000\)\[\$r63\];;

     7fc:	00 00 00 00                                     	errop;;

     800:	c0 71 ff 68                                     	extfs \$r63 = \$r0, 7 \(0x7\), 7 \(0x7\);;

     804:	c0 71 03 64                                     	extfz \$r0 = \$r0, 7 \(0x7\), 7 \(0x7\);;

     808:	01 20 07 71                                     	fabsd \$r1 = \$r1;;

     80c:	02 20 07 77                                     	fabshq \$r1 = \$r2;;

     810:	02 20 0b 75                                     	fabswp \$r2 = \$r2;;

     814:	03 20 0f 73                                     	fabsw \$r3 = \$r3;;

     818:	1c 07 6b 5d                                     	fadddc.c.rn \$r26r27 = \$r28r29, \$r28r29;;

     81c:	1e 98 7b 5c                                     	fadddp.ru.s \$r30r31 = \$r30r31, \$r32r33;;

     820:	a2 28 83 5c                                     	fadddp.rd \$r32r33 = \$r34r35, \$r34r35;;

     824:	04 b1 0e 50                                     	faddd.rz.s \$r3 = \$r4, \$r4;;

     828:	a4 49 97 56                                     	faddho.rna \$r36r37 = \$r36r37, \$r38r39;;

     82c:	45 d1 12 52                                     	faddhq.rnz.s \$r4 = \$r5, \$r5;;

     830:	86 61 16 53                                     	faddwc.c.ro \$r5 = \$r6, \$r6;;

     834:	28 fa 9f 59                                     	faddwcp.c.s \$r38r39 = \$r40r41, \$r40r41;;

     838:	2a 0b af 58                                     	faddwq.rn \$r42r43 = \$r42r43, \$r44r45;;

     83c:	c7 91 1a 51                                     	faddwp.ru.s \$r6 = \$r7, \$r7;;

     840:	08 22 1e 51                                     	faddwp.rd \$r7 = \$r8, \$r8;;

     844:	ae bb b7 58                                     	faddwq.rz.s \$r44r45 = \$r46r47, \$r46r47;;

     848:	49 42 22 5c                                     	faddw.rna \$r8 = \$r9, \$r9;;

     84c:	30 58 27 71                                     	fcdivd.s \$r9 = \$r48r49;;

     850:	30 50 2b 75                                     	fcdivwp \$r10 = \$r48r49;;

     854:	32 58 2b 73                                     	fcdivw.s \$r10 = \$r50r51;;

     858:	cb 02 2b 78                                     	fcompd.one \$r10 = \$r11, \$r11;;

     85c:	cc 07 2f f9 ff ff ff 00                         	fcompd.ueq \$r11 = \$r12, 536870911 \(0x1fffffff\);;

     864:	4d 93 33 7a                                     	fcompnd.oeq \$r12 = \$r13, \$r13;;

     868:	ce 97 3b fb ff ff ff 00                         	fcompnd.une \$r14 = \$r14, 536870911 \(0x1fffffff\);;

     870:	0f 14 3f 7c                                     	fcompnhq.olt \$r15 = \$r15, \$r16;;

     874:	d0 1f 43 fd ff ff ff 00                         	fcompnhq.uge \$r16 = \$r16, 536870911 \(0x1fffffff\).@;;

     87c:	51 14 47 76                                     	fcompnwp.oge \$r17 = \$r17, \$r17;;

     880:	d2 17 4b f7 ff ff ff 00                         	fcompnwp.ult \$r18 = \$r18, 536870911 \(0x1fffffff\);;

     888:	d3 94 4b 70                                     	fcompnw.one \$r18 = \$r19, \$r19;;

     88c:	d4 97 4f f1 ff ff ff 00                         	fcompnw.ueq \$r19 = \$r20, 536870911 \(0x1fffffff\);;

     894:	54 05 53 72                                     	fcompw.oeq \$r20 = \$r20, \$r21;;

     898:	d5 07 57 f3 ff ff ff 00                         	fcompw.une \$r21 = \$r21, 536870911 \(0x1fffffff\);;

     8a0:	34 5d cf 5c                                     	fdot2wdp.rnz \$r50r51 = \$r52r53, \$r52r53;;

     8a4:	96 e5 59 5d                                     	fdot2wd.ro.s \$r22 = \$r22, \$r22;;

     8a8:	36 7e df 5d                                     	fdot2wzp \$r54r55 = \$r54r55, \$r56r57;;

     8ac:	d7 85 5d 5c                                     	fdot2w.rn.s \$r23 = \$r23, \$r23;;

     8b0:	00 00 fc 3c                                     	fence;;

     8b4:	b8 1e 62 47                                     	ffdmaswp.ru \$r24 = \$r56r57, \$r58r59;;

     8b8:	14 a6 ea 4f                                     	ffdmaswq.rd.s \$r58r59 = \$r20r21r22r23, \$r24r25r26r27;;

     8bc:	58 36 62 43                                     	ffdmasw.rz \$r24 = \$r24, \$r25;;

     8c0:	3c cf 65 42                                     	ffdmawp.rna.s \$r25 = \$r60r61, \$r60r61;;

     8c4:	1c 58 f9 46                                     	ffdmawq.rnz \$r62r63 = \$r28r29r30r31, \$r32r33r34r35;;

     8c8:	9a e6 65 40                                     	ffdmaw.ro.s \$r25 = \$r26, \$r26;;

     8cc:	3e 70 6a 44                                     	ffdmdawp \$r26 = \$r62r63, \$r0r1;;

     8d0:	24 8a 02 4c                                     	ffdmdawq.rn.s \$r0r1 = \$r36r37r38r39, \$r40r41r42r43;;

     8d4:	db 16 6e 40                                     	ffdmdaw.ru \$r27 = \$r27, \$r27;;

     8d8:	82 a0 72 46                                     	ffdmdswp.rd.s \$r28 = \$r2r3, \$r2r3;;

     8dc:	2c 3c 12 4e                                     	ffdmdswq.rz \$r4r5 = \$r44r45r46r47, \$r48r49r50r51;;

     8e0:	5c c7 72 42                                     	ffdmdsw.rna.s \$r28 = \$r28, \$r29;;

     8e4:	84 51 76 45                                     	ffdmsawp.rnz \$r29 = \$r4r5, \$r6r7;;

     8e8:	34 ee 1a 4d                                     	ffdmsawq.ro.s \$r6r7 = \$r52r53r54r55, \$r56r57r58r59;;

     8ec:	9e 77 76 41                                     	ffdmsaw \$r29 = \$r30, \$r30;;

     8f0:	08 82 79 43                                     	ffdmswp.rn.s \$r30 = \$r8r9, \$r8r9;;

     8f4:	3c 10 29 47                                     	ffdmswq.ru \$r10r11 = \$r60r61r62r63, \$r0r1r2r3;;

     8f8:	df a7 7d 41                                     	ffdmsw.rd.s \$r31 = \$r31, \$r31;;

     8fc:	20 38 80 44                                     	ffmad.rz \$r32 = \$r32, \$r32;;

     900:	0c c3 2b 5a                                     	ffmaho.rna.s \$r10r11 = \$r12r13, \$r12r13;;

     904:	61 58 85 53                                     	ffmahq.rnz \$r33 = \$r33, \$r33;;

     908:	a2 e8 3b 51                                     	ffmahwq.ro.s \$r14r15 = \$r34, \$r34;;

     90c:	e3 78 8a 58                                     	ffmahw \$r34 = \$r35, \$r35;;

     910:	10 84 39 4c                                     	ffmawcp.rn.s \$r14r15 = \$r16r17, \$r16r17;;

     914:	24 19 8d 49                                     	ffmawc.c.ru \$r35 = \$r36, \$r36;;

     918:	64 a9 4b 50                                     	ffmawdp.rd.s \$r18r19 = \$r36, \$r37;;

     91c:	a5 39 95 51                                     	ffmawd.rz \$r37 = \$r37, \$r38;;

     920:	e6 c9 98 42                                     	ffmawp.rna.s \$r38 = \$r38, \$r39;;

     924:	14 55 48 46                                     	ffmawq.rnz \$r18r19 = \$r20r21, \$r20r21;;

     928:	27 ea 9c 40                                     	ffmaw.ro.s \$r39 = \$r39, \$r40;;

     92c:	68 7a a0 45                                     	ffmsd \$r40 = \$r40, \$r41;;

     930:	16 86 5b 5b                                     	ffmsho.rn.s \$r22r23 = \$r22r23, \$r24r25;;

     934:	a9 1a a5 57                                     	ffmshq.ru \$r41 = \$r41, \$r42;;

     938:	aa aa 63 53                                     	ffmshwq.rd.s \$r24r25 = \$r42, \$r42;;

     93c:	eb 3a ae 5a                                     	ffmshw.rz \$r43 = \$r43, \$r43;;

     940:	1a c7 69 4e                                     	ffmswcp.rna.s \$r26r27 = \$r26r27, \$r28r29;;

     944:	2c 5b b1 4b                                     	ffmswc.c.rnz \$r44 = \$r44, \$r44;;

     948:	6d eb 73 52                                     	ffmswdp.ro.s \$r28r29 = \$r45, \$r45;;

     94c:	ae 7b b5 55                                     	ffmswd \$r45 = \$r46, \$r46;;

     950:	ef 8b b8 43                                     	ffmswp.rn.s \$r46 = \$r47, \$r47;;

     954:	1e 18 78 47                                     	ffmswq.ru \$r30r31 = \$r30r31, \$r32r33;;

     958:	30 ac bc 41                                     	ffmsw.rd.s \$r47 = \$r48, \$r48;;

     95c:	f1 31 c3 46                                     	fixedd.rz \$r48 = \$r49, 7 \(0x7\);;

     960:	f1 c1 c7 47                                     	fixedud.rna.s \$r49 = \$r49, 7 \(0x7\);;

     964:	f2 51 cb 4f                                     	fixeduwp.rnz \$r50 = \$r50, 7 \(0x7\);;

     968:	f3 e1 cb 4b                                     	fixeduw.ro.s \$r50 = \$r51, 7 \(0x7\);;

     96c:	f3 71 cf 4e                                     	fixedwp \$r51 = \$r51, 7 \(0x7\);;

     970:	f4 81 d3 4a                                     	fixedw.rn.s \$r52 = \$r52, 7 \(0x7\);;

     974:	f5 11 d3 44                                     	floatd.ru \$r52 = \$r53, 7 \(0x7\);;

     978:	f5 a1 d7 45                                     	floatud.rd.s \$r53 = \$r53, 7 \(0x7\);;

     97c:	f6 31 db 4d                                     	floatuwp.rz \$r54 = \$r54, 7 \(0x7\);;

     980:	f7 c1 db 49                                     	floatuw.rna.s \$r54 = \$r55, 7 \(0x7\);;

     984:	f7 51 df 4c                                     	floatwp.rnz \$r55 = \$r55, 7 \(0x7\);;

     988:	f8 e1 e3 48                                     	floatw.ro.s \$r56 = \$r56, 7 \(0x7\);;

     98c:	79 8e e3 71                                     	fmaxd \$r56 = \$r57, \$r57;;

     990:	ba 8e e7 77                                     	fmaxhq \$r57 = \$r58, \$r58;;

     994:	fb 8e eb 75                                     	fmaxwp \$r58 = \$r59, \$r59;;

     998:	3c 8f ef 73                                     	fmaxw \$r59 = \$r60, \$r60;;

     99c:	7d 8f f3 70                                     	fmind \$r60 = \$r61, \$r61;;

     9a0:	be 8f f7 76                                     	fminhq \$r61 = \$r62, \$r62;;

     9a4:	ff 8f fb 74                                     	fminwp \$r62 = \$r63, \$r63;;

     9a8:	00 80 ff 72                                     	fminw \$r63 = \$r0, \$r0;;

     9ac:	40 70 80 4c                                     	fmm212w \$r32r33 = \$r0, \$r1;;

     9b0:	22 89 8c 4c                                     	fmm222w.rn.s \$r34r35 = \$r34r35, \$r36r37;;

     9b4:	41 10 90 4e                                     	fmma212w.ru \$r36r37 = \$r1, \$r1;;

     9b8:	27 aa 9c 4e                                     	fmma222w.tn.rd.s \$r38r39 = \$r38r39, \$r40r41;;

     9bc:	82 30 a0 4f                                     	fmms212w.rz \$r40r41 = \$r2, \$r2;;

     9c0:	6a cb ac 4f                                     	fmms222w.nt.rna.s \$r42r43 = \$r42r43, \$r44r45;;

     9c4:	c3 50 09 58                                     	fmuld.rnz \$r2 = \$r3, \$r3;;

     9c8:	ae eb b7 55                                     	fmulho.ro.s \$r44r45 = \$r46r47, \$r46r47;;

     9cc:	04 71 0d 5b                                     	fmulhq \$r3 = \$r4, \$r4;;

     9d0:	44 81 c7 51                                     	fmulhwq.rn.s \$r48r49 = \$r4, \$r5;;

     9d4:	85 11 16 5f                                     	fmulhw.ru \$r5 = \$r5, \$r6;;

     9d8:	b2 ac c0 4a                                     	fmulwcp.rd.s \$r48r49 = \$r50r51, \$r50r51;;

     9dc:	c6 31 18 49                                     	fmulwc.c.rz \$r6 = \$r6, \$r7;;

     9e0:	c7 c1 d7 50                                     	fmulwdp.rna.s \$r52r53 = \$r7, \$r7;;

     9e4:	08 52 21 59                                     	fmulwd.rnz \$r8 = \$r8, \$r8;;

     9e8:	49 e2 25 5a                                     	fmulwp.ro.s \$r9 = \$r9, \$r9;;

     9ec:	b6 7d d7 5e                                     	fmulwq \$r52r53 = \$r54r55, \$r54r55;;

     9f0:	8a 82 2a 5e                                     	fmulw.rn.s \$r10 = \$r10, \$r10;;

     9f4:	38 61 2f 7c                                     	fnarrowdwp.ru \$r11 = \$r56r57;;

     9f8:	0b 6a 2f 78                                     	fnarrowdw.rd.s \$r11 = \$r11;;

     9fc:	38 63 33 7e                                     	fnarrowwhq.rz \$r12 = \$r56r57;;

     a00:	0d 6c 33 7a                                     	fnarrowwh.rna.s \$r12 = \$r13;;

     a04:	0e 20 37 70                                     	fnegd \$r13 = \$r14;;

     a08:	0f 20 3b 76                                     	fneghq \$r14 = \$r15;;

     a0c:	10 20 3f 74                                     	fnegwp \$r15 = \$r16;;

     a10:	10 20 43 72                                     	fnegw \$r16 = \$r16;;

     a14:	11 65 47 72                                     	frecw.rnz \$r17 = \$r17;;

     a18:	12 6e 47 73                                     	frsrw.ro.s \$r17 = \$r18;;

     a1c:	3a 7f eb 5f                                     	fsbfdc.c \$r58r59 = \$r58r59, \$r60r61;;

     a20:	be 8f f3 5e                                     	fsbfdp.rn.s \$r60r61 = \$r62r63, \$r62r63;;

     a24:	80 10 03 5e                                     	fsbfdp.ru \$r0r1 = \$r0r1, \$r2r3;;

     a28:	d2 a4 4a 54                                     	fsbfd.rd.s \$r18 = \$r18, \$r19;;

     a2c:	04 31 0f 57                                     	fsbfho.rz \$r2r3 = \$r4r5, \$r4r5;;

     a30:	13 c5 4e 56                                     	fsbfhq.rna.s \$r19 = \$r19, \$r20;;

     a34:	54 55 52 57                                     	fsbfwc.c.rnz \$r20 = \$r20, \$r21;;

     a38:	06 e2 1f 5b                                     	fsbfwcp.c.ro.s \$r6r7 = \$r6r7, \$r8r9;;

     a3c:	8a 72 27 5a                                     	fsbfwq \$r8r9 = \$r10r11, \$r10r11;;

     a40:	95 85 56 55                                     	fsbfwp.rn.s \$r21 = \$r21, \$r22;;

     a44:	d6 15 5a 55                                     	fsbfwp.ru \$r22 = \$r22, \$r23;;

     a48:	8c a3 37 5a                                     	fsbfwq.rd.s \$r12r13 = \$r12r13, \$r14r15;;

     a4c:	17 36 5e 5d                                     	fsbfw.rz \$r23 = \$r23, \$r24;;

     a50:	0e 58 63 70                                     	fsdivd.s \$r24 = \$r14r15;;

     a54:	10 50 63 74                                     	fsdivwp \$r24 = \$r16r17;;

     a58:	10 58 67 72                                     	fsdivw.s \$r25 = \$r16r17;;

     a5c:	19 40 67 70                                     	fsrecd \$r25 = \$r25;;

     a60:	1a 48 6b 74                                     	fsrecwp.s \$r26 = \$r26;;

     a64:	1b 40 6b 72                                     	fsrecw \$r26 = \$r27;;

     a68:	1b 20 6f 78                                     	fsrsrd \$r27 = \$r27;;

     a6c:	1c 20 73 7c                                     	fsrsrwp \$r28 = \$r28;;

     a70:	1d 20 73 7a                                     	fsrsrw \$r28 = \$r29;;

     a74:	1d 38 77 7c                                     	fwidenlhwp.s \$r29 = \$r29;;

     a78:	1e 30 7b 7a                                     	fwidenlhw \$r30 = \$r30;;

     a7c:	1f 38 7b 78                                     	fwidenlwd.s \$r30 = \$r31;;

     a80:	1f 30 7f 7d                                     	fwidenmhwp \$r31 = \$r31;;

     a84:	20 38 83 7b                                     	fwidenmhw.s \$r32 = \$r32;;

     a88:	21 30 83 79                                     	fwidenmwd \$r32 = \$r33;;

     a8c:	21 00 c4 0f                                     	get \$r33 = \$pc;;

     a90:	21 00 c4 0f                                     	get \$r33 = \$pc;;

     a94:	00 00 80 17                                     	goto fffffffffe000a94 <main\+0xfffffffffe000a94>;;

     a98:	a2 e8 5e 3c                                     	i1invals \$r34\[\$r34\];;

     a9c:	e2 ff 5c bc ff ff ff 9f ff ff ff 18             	i1invals 2305843009213693951 \(0x1fffffffffffffff\)\[\$r34\];;

     aa8:	23 f0 5c 3c                                     	i1invals -64 \(0xffffffc0\)\[\$r35\];;

     aac:	23 00 5c bc 00 00 80 1f                         	i1invals -8589934592 \(0xfffffffe00000000\)\[\$r35\];;

     ab4:	00 00 cc 3c                                     	i1inval;;

     ab8:	23 00 dc 0f                                     	icall \$r35;;

     abc:	24 00 cc 0f                                     	iget \$r36;;

     ac0:	24 00 d8 0f                                     	igoto \$r36;;

     ac4:	e5 71 93 60                                     	insf \$r36 = \$r37, 7 \(0x7\), 7 \(0x7\);;

     ac8:	e5 ff 94 ea ff ff ff 87 ff ff ff 00             	iord \$r37 = \$r37, 2305843009213693951 \(0x1fffffffffffffff\);;

     ad4:	a6 09 99 7a                                     	iord \$r38 = \$r38, \$r38;;

     ad8:	27 f0 9c 6a                                     	iord \$r39 = \$r39, -64 \(0xffffffc0\);;

     adc:	28 00 9c ea 00 00 80 07                         	iord \$r39 = \$r40, -8589934592 \(0xfffffffe00000000\);;

     ae4:	e8 0f a1 fa ff ff ff 00                         	iord \$r40 = \$r40, 536870911 \(0x1fffffff\).@;;

     aec:	e9 ff a4 ef ff ff ff 87 ff ff ff 00             	iornd \$r41 = \$r41, 2305843009213693951 \(0x1fffffffffffffff\);;

     af8:	aa 0a a5 7f                                     	iornd \$r41 = \$r42, \$r42;;

     afc:	2b f0 a8 6f                                     	iornd \$r42 = \$r43, -64 \(0xffffffc0\);;

     b00:	2b 00 ac ef 00 00 80 07                         	iornd \$r43 = \$r43, -8589934592 \(0xfffffffe00000000\);;

     b08:	ec ff b0 ef ff ff 07 00                         	iornd \$r44 = \$r44, 536870911 \(0x1fffffff\);;

     b10:	6d 1b b1 7f                                     	iornw \$r44 = \$r45, \$r45;;

     b14:	2e f0 b4 7f                                     	iornw \$r45 = \$r46, -64 \(0xffffffc0\);;

     b18:	2e 00 b8 ff 00 00 80 07                         	iornw \$r46 = \$r46, -8589934592 \(0xfffffffe00000000\);;

     b20:	af c0 bf 71                                     	iorrbod \$r47 = \$r47;;

     b24:	70 c0 bf 71                                     	iorrhqd \$r47 = \$r48;;

     b28:	30 c0 c3 71                                     	iorrwpd \$r48 = \$r48;;

     b2c:	71 1c c5 7a                                     	iorw \$r49 = \$r49, \$r49;;

     b30:	32 f0 c8 7a                                     	iorw \$r50 = \$r50, -64 \(0xffffffc0\);;

     b34:	33 00 c8 fa 00 00 80 07                         	iorw \$r50 = \$r51, -8589934592 \(0xfffffffe00000000\);;

     b3c:	33 6d ce 70                                     	landd \$r51 = \$r51, \$r52;;

     b40:	74 7d d2 70                                     	landw \$r52 = \$r52, \$r53;;

     b44:	f5 77 d6 f0 ff ff ff 00                         	landw \$r53 = \$r53, 536870911 \(0x1fffffff\);;

     b4c:	b6 fd da 24                                     	lbs.xs \$r54 = \$r54\[\$r54\];;

     b50:	f7 5d de a5 00 00 00 98 00 00 80 1f             	lbs.s.dgtz \$r55\? \$r55 = -1125899906842624 \(0xfffc000000000000\)\[\$r55\];;

     b5c:	38 6e e2 a6 00 00 80 1f                         	lbs.u.odd \$r56\? \$r56 = -8388608 \(0xff800000\)\[\$r56\];;

     b64:	79 7e e6 27                                     	lbs.us.even \$r57\? \$r57 = \[\$r57\];;

     b68:	fa ff e8 a4 ff ff ff 9f ff ff ff 18             	lbs \$r58 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r58\];;

     b74:	3b f0 e8 25                                     	lbs.s \$r58 = -64 \(0xffffffc0\)\[\$r59\];;

     b78:	3b 00 ec a6 00 00 80 1f                         	lbs.u \$r59 = -8589934592 \(0xfffffffe00000000\)\[\$r59\];;

     b80:	3c ef f2 23                                     	lbz.us \$r60 = \$r60\[\$r60\];;

     b84:	7d 8f f6 a0 00 00 00 98 00 00 80 1f             	lbz.wnez \$r61\? \$r61 = -1125899906842624 \(0xfffc000000000000\)\[\$r61\];;

     b90:	be 9f fa a1 00 00 80 1f                         	lbz.s.weqz \$r62\? \$r62 = -8388608 \(0xff800000\)\[\$r62\];;

     b98:	ff af fe 22                                     	lbz.u.wltz \$r63\? \$r63 = \[\$r63\];;

     b9c:	c0 ff 00 a3 ff ff ff 9f ff ff ff 18             	lbz.us \$r0 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r0\];;

     ba8:	01 f0 00 20                                     	lbz \$r0 = -64 \(0xffffffc0\)\[\$r1\];;

     bac:	01 00 04 a1 00 00 80 1f                         	lbz.s \$r1 = -8589934592 \(0xfffffffe00000000\)\[\$r1\];;

     bb4:	82 f0 0a 3a                                     	ld.u.xs \$r2 = \$r2\[\$r2\];;

     bb8:	c3 b0 0e bb 00 00 00 98 00 00 80 1f             	ld.us.wgez \$r3\? \$r3 = -1125899906842624 \(0xfffc000000000000\)\[\$r3\];;

     bc4:	04 c1 12 b8 00 00 80 1f                         	ld.wlez \$r4\? \$r4 = -8388608 \(0xff800000\)\[\$r4\];;

     bcc:	45 d1 16 39                                     	ld.s.wgtz \$r5\? \$r5 = \[\$r5\];;

     bd0:	c6 ff 18 ba ff ff ff 9f ff ff ff 18             	ld.u \$r6 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r6\];;

     bdc:	07 f0 18 3b                                     	ld.us \$r6 = -64 \(0xffffffc0\)\[\$r7\];;

     be0:	07 00 1c b8 00 00 80 1f                         	ld \$r7 = -8589934592 \(0xfffffffe00000000\)\[\$r7\];;

     be8:	08 e2 22 2d                                     	lhs.s \$r8 = \$r8\[\$r8\];;

     bec:	49 02 26 ae 00 00 00 98 00 00 80 1f             	lhs.u.dnez \$r9\? \$r9 = -1125899906842624 \(0xfffc000000000000\)\[\$r9\];;

     bf8:	8a 12 2a af 00 00 80 1f                         	lhs.us.deqz \$r10\? \$r10 = -8388608 \(0xff800000\)\[\$r10\];;

     c00:	cb 22 2e 2c                                     	lhs.dltz \$r11\? \$r11 = \[\$r11\];;

     c04:	cc ff 30 ad ff ff ff 9f ff ff ff 18             	lhs.s \$r12 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r12\];;

     c10:	0d f0 34 2e                                     	lhs.u \$r13 = -64 \(0xffffffc0\)\[\$r13\];;

     c14:	0e 00 38 af 00 00 80 1f                         	lhs.us \$r14 = -8589934592 \(0xfffffffe00000000\)\[\$r14\];;

     c1c:	d0 f3 3e 28                                     	lhz.xs \$r15 = \$r15\[\$r16\];;

     c20:	11 34 42 a9 00 00 00 98 00 00 80 1f             	lhz.s.dgez \$r16\? \$r16 = -1125899906842624 \(0xfffc000000000000\)\[\$r17\];;

     c2c:	52 44 46 aa 00 00 80 1f                         	lhz.u.dlez \$r17\? \$r17 = -8388608 \(0xff800000\)\[\$r18\];;

     c34:	93 54 4a 2b                                     	lhz.us.dgtz \$r18\? \$r18 = \[\$r19\];;

     c38:	d3 ff 4c a8 ff ff ff 9f ff ff ff 18             	lhz \$r19 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r19\];;

     c44:	14 f0 50 29                                     	lhz.s \$r20 = -64 \(0xffffffc0\)\[\$r20\];;

     c48:	15 00 50 aa 00 00 80 1f                         	lhz.u \$r20 = -8589934592 \(0xfffffffe00000000\)\[\$r21\];;

     c50:	95 65 56 71                                     	lnandd \$r21 = \$r21, \$r22;;

     c54:	d6 75 5a 71                                     	lnandw \$r22 = \$r22, \$r23;;

     c58:	d7 77 5e f1 ff ff ff 00                         	lnandw \$r23 = \$r23, 536870911 \(0x1fffffff\);;

     c60:	18 66 62 73                                     	lnord \$r24 = \$r24, \$r24;;

     c64:	59 76 66 73                                     	lnorw \$r25 = \$r25, \$r25;;

     c68:	da 77 6a f3 ff ff ff 00                         	lnorw \$r26 = \$r26, 536870911 \(0x1fffffff\);;

     c70:	1a 00 78 0f                                     	loopdo \$r26, ffffffffffff8c70 <main\+0xffffffffffff8c70>;;

     c74:	db 66 6e 72                                     	lord \$r27 = \$r27, \$r27;;

     c78:	1c 77 72 72                                     	lorw \$r28 = \$r28, \$r28;;

     c7c:	dd 77 76 f2 ff ff ff 00                         	lorw \$r29 = \$r29, 536870911 \(0x1fffffff\);;

     c84:	5e e7 16 3f                                     	lo.us \$r4r5r6r7 = \$r29\[\$r30\];;

     c88:	9e 07 2e bc 00 00 00 98 00 00 80 1f             	lo.u0 \$r30\? \$r8r9r10r11 = -1125899906842624 \(0xfffc000000000000\)\[\$r30\];;

     c94:	df 17 3e bd 00 00 80 1f                         	lo.s.u1 \$r31\? \$r12r13r14r15 = -8388608 \(0xff800000\)\[\$r31\];;

     c9c:	e0 27 4e 3e                                     	lo.u.u2 \$r31\? \$r16r17r18r19 = \[\$r32\];;

     ca0:	20 68 56 bf 00 00 00 98 00 00 80 1f             	lo.us.odd \$r32\? \$r20r21r22r23 = -1125899906842624 \(0xfffc000000000000\)\[\$r32\];;

     cac:	61 78 66 bc 00 00 80 1f                         	lo.even \$r33\? \$r24r25r26r27 = -8388608 \(0xff800000\)\[\$r33\];;

     cb4:	62 88 76 3d                                     	lo.s.wnez \$r33\? \$r28r29r30r31 = \[\$r34\];;

     cb8:	e2 ff 84 be ff ff ff 9f ff ff ff 18             	lo.u \$r32r33r34r35 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r34\];;

     cc4:	22 f0 94 3f                                     	lo.us \$r36r37r38r39 = -64 \(0xffffffc0\)\[\$r34\];;

     cc8:	23 00 a4 bc 00 00 80 1f                         	lo \$r40r41r42r43 = -8589934592 \(0xfffffffe00000000\)\[\$r35\];;

     cd0:	e3 f8 4a 3d                                     	lq.s.xs \$r18r19 = \$r35\[\$r35\];;

     cd4:	24 99 4a be 00 00 00 98 00 00 80 1f             	lq.u.weqz \$r36\? \$r18r19 = -1125899906842624 \(0xfffc000000000000\)\[\$r36\];;

     ce0:	25 a9 52 bf 00 00 80 1f                         	lq.us.wltz \$r36\? \$r20r21 = -8388608 \(0xff800000\)\[\$r37\];;

     ce8:	65 b9 52 3c                                     	lq.wgez \$r37\? \$r20r21 = \[\$r37\];;

     cec:	e6 ff 58 bd ff ff ff 9f ff ff ff 18             	lq.s \$r22r23 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r38\];;

     cf8:	26 f0 58 3e                                     	lq.u \$r22r23 = -64 \(0xffffffc0\)\[\$r38\];;

     cfc:	26 00 60 bf 00 00 80 1f                         	lq.us \$r24r25 = -8589934592 \(0xfffffffe00000000\)\[\$r38\];;

     d04:	e7 e9 9e 34                                     	lws \$r39 = \$r39\[\$r39\];;

     d08:	28 ca a2 b5 00 00 00 98 00 00 80 1f             	lws.s.wlez \$r40\? \$r40 = -1125899906842624 \(0xfffc000000000000\)\[\$r40\];;

     d14:	69 da a6 b6 00 00 80 1f                         	lws.u.wgtz \$r41\? \$r41 = -8388608 \(0xff800000\)\[\$r41\];;

     d1c:	aa 0a aa 37                                     	lws.us.dnez \$r42\? \$r42 = \[\$r42\];;

     d20:	eb ff ac b4 ff ff ff 9f ff ff ff 18             	lws \$r43 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r43\];;

     d2c:	2c f0 ac 35                                     	lws.s \$r43 = -64 \(0xffffffc0\)\[\$r44\];;

     d30:	2c 00 b0 b6 00 00 80 1f                         	lws.u \$r44 = -8589934592 \(0xfffffffe00000000\)\[\$r44\];;

     d38:	6d fb b6 33                                     	lwz.us.xs \$r45 = \$r45\[\$r45\];;

     d3c:	ae 1b ba b0 00 00 00 98 00 00 80 1f             	lwz.deqz \$r46\? \$r46 = -1125899906842624 \(0xfffc000000000000\)\[\$r46\];;

     d48:	ef 2b be b1 00 00 80 1f                         	lwz.s.dltz \$r47\? \$r47 = -8388608 \(0xff800000\)\[\$r47\];;

     d50:	30 3c c2 32                                     	lwz.u.dgez \$r48\? \$r48 = \[\$r48\];;

     d54:	f1 ff c4 b3 ff ff ff 9f ff ff ff 18             	lwz.us \$r49 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r49\];;

     d60:	32 f0 c4 30                                     	lwz \$r49 = -64 \(0xffffffc0\)\[\$r50\];;

     d64:	32 00 c8 b1 00 00 80 1f                         	lwz.s \$r50 = -8589934592 \(0xfffffffe00000000\)\[\$r50\];;

     d6c:	f3 1c 60 58                                     	madddt \$r24r25 = \$r51, \$r51;;

     d70:	34 0d cc 50                                     	maddd \$r51 = \$r52, \$r52;;

     d74:	f5 07 d0 d0 ff ff ff 10                         	maddd \$r52 = \$r53, 536870911 \(0x1fffffff\);;

     d7c:	b5 0d d4 52                                     	maddhq \$r53 = \$r53, \$r54;;

     d80:	f6 07 d8 d2 ff ff ff 10                         	maddhq \$r54 = \$r54, 536870911 \(0x1fffffff\);;

     d88:	f7 4d 68 50                                     	maddhwq \$r26r27 = \$r55, \$r55;;

     d8c:	1c 27 6c 51                                     	maddmwq \$r26r27 = \$r28r29, \$r28r29;;

     d90:	37 1e 78 5a                                     	maddsudt \$r30r31 = \$r55, \$r56;;

     d94:	38 4e 78 52                                     	maddsuhwq \$r30r31 = \$r56, \$r56;;

     d98:	a0 28 84 53                                     	maddsumwq \$r32r33 = \$r32r33, \$r34r35;;

     d9c:	79 0e 88 5a                                     	maddsuwdp \$r34r35 = \$r57, \$r57;;

     da0:	ba 3e e4 52                                     	maddsuwd \$r57 = \$r58, \$r58;;

     da4:	fb 37 e8 d2 ff ff ff 10                         	maddsuwd \$r58 = \$r59, 536870911 \(0x1fffffff\);;

     dac:	fb 1e 90 59                                     	maddudt \$r36r37 = \$r59, \$r59;;

     db0:	3c 4f 90 51                                     	madduhwq \$r36r37 = \$r60, \$r60;;

     db4:	26 2a 9c 52                                     	maddumwq \$r38r39 = \$r38r39, \$r40r41;;

     db8:	7c 0f a0 59                                     	madduwdp \$r40r41 = \$r60, \$r61;;

     dbc:	bd 3f f4 51                                     	madduwd \$r61 = \$r61, \$r62;;

     dc0:	fe 37 f8 d1 ff ff ff 10                         	madduwd \$r62 = \$r62, 536870911 \(0x1fffffff\);;

     dc8:	ff 1f a8 5b                                     	madduzdt \$r42r43 = \$r63, \$r63;;

     dcc:	3f 00 a8 58                                     	maddwdp \$r42r43 = \$r63, \$r0;;

     dd0:	40 30 00 50                                     	maddwd \$r0 = \$r0, \$r1;;

     dd4:	c1 37 04 d0 ff ff ff 10                         	maddwd \$r1 = \$r1, 536870911 \(0x1fffffff\);;

     ddc:	82 00 08 51                                     	maddwp \$r2 = \$r2, \$r2;;

     de0:	c3 07 0c d1 ff ff ff 10                         	maddwp \$r3 = \$r3, 536870911 \(0x1fffffff\);;

     de8:	ac 2b b4 50                                     	maddwq \$r44r45 = \$r44r45, \$r46r47;;

     dec:	04 31 0c 53                                     	maddw \$r3 = \$r4, \$r4;;

     df0:	c5 37 10 d3 ff ff ff 10                         	maddw \$r4 = \$r5, 536870911 \(0x1fffffff\);;

     df8:	c0 ff 14 e0 ff ff ff 87 ff ff ff 00             	make \$r5 = 2305843009213693951 \(0x1fffffffffffffff\);;

     e04:	3c 00 14 e0 00 00 00 00                         	make \$r5 = -549755813888 \(0xffffff8000000000\);;

     e0c:	00 f0 18 60                                     	make \$r6 = -4096 \(0xfffff000\);;

     e10:	c6 a1 1a 75                                     	maxbo \$r6 = \$r6, \$r7;;

     e14:	c7 af 1e f5 ff ff ff 00                         	maxbo \$r7 = \$r7, 536870911 \(0x1fffffff\).@;;

     e1c:	c8 ff 20 e5 ff ff ff 87 ff ff ff 00             	maxd \$r8 = \$r8, 2305843009213693951 \(0x1fffffffffffffff\);;

     e28:	49 02 21 75                                     	maxd \$r8 = \$r9, \$r9;;

     e2c:	0a f0 24 65                                     	maxd \$r9 = \$r10, -64 \(0xffffffc0\);;

     e30:	0a 00 28 e5 00 00 80 07                         	maxd \$r10 = \$r10, -8589934592 \(0xfffffffe00000000\);;

     e38:	cb ff 2c e5 ff ff 07 00                         	maxd \$r11 = \$r11, 536870911 \(0x1fffffff\);;

     e40:	0c 33 2d 75                                     	maxhq \$r11 = \$r12, \$r12;;

     e44:	cd 3f 35 f5 ff ff ff 00                         	maxhq \$r13 = \$r13, 536870911 \(0x1fffffff\).@;;

     e4c:	8e c0 3b 75                                     	maxrbod \$r14 = \$r14;;

     e50:	4f c0 3f 75                                     	maxrhqd \$r15 = \$r15;;

     e54:	10 c0 43 75                                     	maxrwpd \$r16 = \$r16;;

     e58:	51 a4 42 77                                     	maxubo \$r16 = \$r17, \$r17;;

     e5c:	d2 a7 46 f7 ff ff ff 00                         	maxubo \$r17 = \$r18, 536870911 \(0x1fffffff\);;

     e64:	d2 ff 48 e7 ff ff ff 87 ff ff ff 00             	maxud \$r18 = \$r18, 2305843009213693951 \(0x1fffffffffffffff\);;

     e70:	d3 04 4d 77                                     	maxud \$r19 = \$r19, \$r19;;

     e74:	14 f0 50 67                                     	maxud \$r20 = \$r20, -64 \(0xffffffc0\);;

     e78:	15 00 50 e7 00 00 80 07                         	maxud \$r20 = \$r21, -8589934592 \(0xfffffffe00000000\);;

     e80:	d5 0f 55 f7 ff ff ff 00                         	maxud \$r21 = \$r21, 536870911 \(0x1fffffff\).@;;

     e88:	96 35 59 77                                     	maxuhq \$r22 = \$r22, \$r22;;

     e8c:	d7 37 5d f7 ff ff ff 00                         	maxuhq \$r23 = \$r23, 536870911 \(0x1fffffff\);;

     e94:	98 c0 5f 79                                     	maxurbod \$r23 = \$r24;;

     e98:	58 c0 63 79                                     	maxurhqd \$r24 = \$r24;;

     e9c:	19 c0 67 79                                     	maxurwpd \$r25 = \$r25;;

     ea0:	9a 26 65 77                                     	maxuwp \$r25 = \$r26, \$r26;;

     ea4:	db 2f 69 f7 ff ff ff 00                         	maxuwp \$r26 = \$r27, 536870911 \(0x1fffffff\).@;;

     eac:	1b 17 6d 77                                     	maxuw \$r27 = \$r27, \$r28;;

     eb0:	1c f0 70 77                                     	maxuw \$r28 = \$r28, -64 \(0xffffffc0\);;

     eb4:	1d 00 74 f7 00 00 80 07                         	maxuw \$r29 = \$r29, -8589934592 \(0xfffffffe00000000\);;

     ebc:	9e 27 75 75                                     	maxwp \$r29 = \$r30, \$r30;;

     ec0:	df 27 79 f5 ff ff ff 00                         	maxwp \$r30 = \$r31, 536870911 \(0x1fffffff\);;

     ec8:	1f 18 7d 75                                     	maxw \$r31 = \$r31, \$r32;;

     ecc:	20 f0 80 75                                     	maxw \$r32 = \$r32, -64 \(0xffffffc0\);;

     ed0:	21 00 84 f5 00 00 80 07                         	maxw \$r33 = \$r33, -8589934592 \(0xfffffffe00000000\);;

     ed8:	a2 a8 86 74                                     	minbo \$r33 = \$r34, \$r34;;

     edc:	e3 af 8a f4 ff ff ff 00                         	minbo \$r34 = \$r35, 536870911 \(0x1fffffff\).@;;

     ee4:	e3 ff 8c e4 ff ff ff 87 ff ff ff 00             	mind \$r35 = \$r35, 2305843009213693951 \(0x1fffffffffffffff\);;

     ef0:	24 09 91 74                                     	mind \$r36 = \$r36, \$r36;;

     ef4:	25 f0 94 64                                     	mind \$r37 = \$r37, -64 \(0xffffffc0\);;

     ef8:	26 00 94 e4 00 00 80 07                         	mind \$r37 = \$r38, -8589934592 \(0xfffffffe00000000\);;

     f00:	e6 ff 98 e4 ff ff 07 00                         	mind \$r38 = \$r38, 536870911 \(0x1fffffff\);;

     f08:	e7 39 9d 74                                     	minhq \$r39 = \$r39, \$r39;;

     f0c:	e8 3f a1 f4 ff ff ff 00                         	minhq \$r40 = \$r40, 536870911 \(0x1fffffff\).@;;

     f14:	a9 c0 a3 74                                     	minrbod \$r40 = \$r41;;

     f18:	69 c0 a7 74                                     	minrhqd \$r41 = \$r41;;

     f1c:	2a c0 ab 74                                     	minrwpd \$r42 = \$r42;;

     f20:	eb aa aa 76                                     	minubo \$r42 = \$r43, \$r43;;

     f24:	ec a7 ae f6 ff ff ff 00                         	minubo \$r43 = \$r44, 536870911 \(0x1fffffff\);;

     f2c:	ec ff b0 e6 ff ff ff 87 ff ff ff 00             	minud \$r44 = \$r44, 2305843009213693951 \(0x1fffffffffffffff\);;

     f38:	6d 0b b5 76                                     	minud \$r45 = \$r45, \$r45;;

     f3c:	2e f0 b8 66                                     	minud \$r46 = \$r46, -64 \(0xffffffc0\);;

     f40:	2f 00 b8 e6 00 00 80 07                         	minud \$r46 = \$r47, -8589934592 \(0xfffffffe00000000\);;

     f48:	ef 0f bd f6 ff ff ff 00                         	minud \$r47 = \$r47, 536870911 \(0x1fffffff\).@;;

     f50:	30 3c c1 76                                     	minuhq \$r48 = \$r48, \$r48;;

     f54:	f1 37 c5 f6 ff ff ff 00                         	minuhq \$r49 = \$r49, 536870911 \(0x1fffffff\);;

     f5c:	b2 c0 c7 78                                     	minurbod \$r49 = \$r50;;

     f60:	72 c0 cb 78                                     	minurhqd \$r50 = \$r50;;

     f64:	33 c0 cf 78                                     	minurwpd \$r51 = \$r51;;

     f68:	34 2d cd 76                                     	minuwp \$r51 = \$r52, \$r52;;

     f6c:	f5 2f d1 f6 ff ff ff 00                         	minuwp \$r52 = \$r53, 536870911 \(0x1fffffff\).@;;

     f74:	b5 1d d5 76                                     	minuw \$r53 = \$r53, \$r54;;

     f78:	36 f0 d8 76                                     	minuw \$r54 = \$r54, -64 \(0xffffffc0\);;

     f7c:	37 00 dc f6 00 00 80 07                         	minuw \$r55 = \$r55, -8589934592 \(0xfffffffe00000000\);;

     f84:	38 2e dd 74                                     	minwp \$r55 = \$r56, \$r56;;

     f88:	f9 27 e1 f4 ff ff ff 00                         	minwp \$r56 = \$r57, 536870911 \(0x1fffffff\);;

     f90:	b9 1e e5 74                                     	minw \$r57 = \$r57, \$r58;;

     f94:	3a f0 e8 74                                     	minw \$r58 = \$r58, -64 \(0xffffffc0\);;

     f98:	3b 00 ec f4 00 00 80 07                         	minw \$r59 = \$r59, -8589934592 \(0xfffffffe00000000\);;

     fa0:	3b 1f b8 53                                     	mm212w \$r46r47 = \$r59, \$r60;;

     fa4:	3c 0f c0 5b                                     	mma212w \$r48r49 = \$r60, \$r60;;

     fa8:	7d 0f c0 5f                                     	mms212w \$r48r49 = \$r61, \$r61;;

     fac:	bd 1f c8 5c                                     	msbfdt \$r50r51 = \$r61, \$r62;;

     fb0:	fe 0f f8 54                                     	msbfd \$r62 = \$r62, \$r63;;

     fb4:	3f 00 fc 56                                     	msbfhq \$r63 = \$r63, \$r0;;

     fb8:	00 40 c8 54                                     	msbfhwq \$r50r51 = \$r0, \$r0;;

     fbc:	b4 2d d4 55                                     	msbfmwq \$r52r53 = \$r52r53, \$r54r55;;

     fc0:	41 10 d8 5e                                     	msbfsudt \$r54r55 = \$r1, \$r1;;

     fc4:	81 40 e0 56                                     	msbfsuhwq \$r56r57 = \$r1, \$r2;;

     fc8:	ba 2e e4 57                                     	msbfsumwq \$r56r57 = \$r58r59, \$r58r59;;

     fcc:	82 00 f0 5e                                     	msbfsuwdp \$r60r61 = \$r2, \$r2;;

     fd0:	c3 30 0c 56                                     	msbfsuwd \$r3 = \$r3, \$r3;;

     fd4:	c4 37 10 d6 ff ff ff 10                         	msbfsuwd \$r4 = \$r4, 536870911 \(0x1fffffff\);;

     fdc:	44 11 f0 5d                                     	msbfudt \$r60r61 = \$r4, \$r5;;

     fe0:	45 41 f8 55                                     	msbfuhwq \$r62r63 = \$r5, \$r5;;

     fe4:	00 20 fc 56                                     	msbfumwq \$r62r63 = \$r0r1, \$r0r1;;

     fe8:	86 01 08 5d                                     	msbfuwdp \$r2r3 = \$r6, \$r6;;

     fec:	c7 31 18 55                                     	msbfuwd \$r6 = \$r7, \$r7;;

     ff0:	c8 37 1c d5 ff ff ff 10                         	msbfuwd \$r7 = \$r8, 536870911 \(0x1fffffff\);;

     ff8:	08 12 08 5f                                     	msbfuzdt \$r2r3 = \$r8, \$r8;;

     ffc:	49 02 10 5c                                     	msbfwdp \$r4r5 = \$r9, \$r9;;

    1000:	8a 32 24 54                                     	msbfwd \$r9 = \$r10, \$r10;;

    1004:	cb 37 28 d4 ff ff ff 10                         	msbfwd \$r10 = \$r11, 536870911 \(0x1fffffff\);;

    100c:	0b 03 2c 55                                     	msbfwp \$r11 = \$r11, \$r12;;

    1010:	86 21 14 54                                     	msbfwq \$r4r5 = \$r6r7, \$r6r7;;

    1014:	4d 33 30 57                                     	msbfw \$r12 = \$r13, \$r13;;

    1018:	ce 37 38 d7 ff ff ff 10                         	msbfw \$r14 = \$r14, 536870911 \(0x1fffffff\);;

    1020:	cf 13 24 58                                     	muldt \$r8r9 = \$r15, \$r15;;

    1024:	10 14 40 54                                     	muld \$r16 = \$r16, \$r16;;

    1028:	d1 17 44 d4 ff ff ff 10                         	muld \$r17 = \$r17, 536870911 \(0x1fffffff\);;

    1030:	92 14 44 56                                     	mulhq \$r17 = \$r18, \$r18;;

    1034:	d3 17 48 d6 ff ff ff 10                         	mulhq \$r18 = \$r19, 536870911 \(0x1fffffff\);;

    103c:	d3 44 20 58                                     	mulhwq \$r8r9 = \$r19, \$r19;;

    1040:	0a 23 28 55                                     	mulmwq \$r10r11 = \$r10r11, \$r12r13;;

    1044:	14 15 34 5a                                     	mulsudt \$r12r13 = \$r20, \$r20;;

    1048:	54 45 38 5a                                     	mulsuhwq \$r14r15 = \$r20, \$r21;;

    104c:	10 24 38 57                                     	mulsumwq \$r14r15 = \$r16r17, \$r16r17;;

    1050:	55 15 48 52                                     	mulsuwdp \$r18r19 = \$r21, \$r21;;

    1054:	96 35 58 5a                                     	mulsuwd \$r22 = \$r22, \$r22;;

    1058:	d7 37 5c da ff ff ff 10                         	mulsuwd \$r23 = \$r23, 536870911 \(0x1fffffff\);;

    1060:	17 16 4c 59                                     	muludt \$r18r19 = \$r23, \$r24;;

    1064:	18 46 50 59                                     	muluhwq \$r20r21 = \$r24, \$r24;;

    1068:	96 25 50 56                                     	mulumwq \$r20r21 = \$r22r23, \$r22r23;;

    106c:	59 16 60 51                                     	muluwdp \$r24r25 = \$r25, \$r25;;

    1070:	9a 36 64 59                                     	muluwd \$r25 = \$r26, \$r26;;

    1074:	db 37 68 d9 ff ff ff 10                         	muluwd \$r26 = \$r27, 536870911 \(0x1fffffff\);;

    107c:	db 16 60 50                                     	mulwdp \$r24r25 = \$r27, \$r27;;

    1080:	1c 37 70 58                                     	mulwd \$r28 = \$r28, \$r28;;

    1084:	dd 37 74 d8 ff ff ff 10                         	mulwd \$r29 = \$r29, 536870911 \(0x1fffffff\);;

    108c:	9e 17 74 55                                     	mulwp \$r29 = \$r30, \$r30;;

    1090:	df 17 78 d5 ff ff ff 10                         	mulwp \$r30 = \$r31, 536870911 \(0x1fffffff\);;

    1098:	1a 27 68 54                                     	mulwq \$r26r27 = \$r26r27, \$r28r29;;

    109c:	1f 38 7c 5b                                     	mulw \$r31 = \$r31, \$r32;;

    10a0:	e0 37 80 db ff ff ff 10                         	mulw \$r32 = \$r32, 536870911 \(0x1fffffff\);;

    10a8:	e1 ff 84 e9 ff ff ff 87 ff ff ff 00             	nandd \$r33 = \$r33, 2305843009213693951 \(0x1fffffffffffffff\);;

    10b4:	a2 08 85 79                                     	nandd \$r33 = \$r34, \$r34;;

    10b8:	23 f0 88 69                                     	nandd \$r34 = \$r35, -64 \(0xffffffc0\);;

    10bc:	23 00 8c e9 00 00 80 07                         	nandd \$r35 = \$r35, -8589934592 \(0xfffffffe00000000\);;

    10c4:	e4 0f 91 f9 ff ff ff 00                         	nandd \$r36 = \$r36, 536870911 \(0x1fffffff\).@;;

    10cc:	65 19 91 79                                     	nandw \$r36 = \$r37, \$r37;;

    10d0:	26 f0 94 79                                     	nandw \$r37 = \$r38, -64 \(0xffffffc0\);;

    10d4:	26 00 98 f9 00 00 80 07                         	nandw \$r38 = \$r38, -8589934592 \(0xfffffffe00000000\);;

    10dc:	27 a0 9e f1 00 00 00 00                         	negbo \$r39 = \$r39;;

    10e4:	28 00 9c 63                                     	negd \$r39 = \$r40;;

    10e8:	28 30 a1 f3 00 00 00 00                         	neghq \$r40 = \$r40;;

    10f0:	29 b0 a6 fd 00 00 00 00                         	negsbo \$r41 = \$r41;;

    10f8:	2a 40 a5 fd 00 00 00 00                         	negsd \$r41 = \$r42;;

    1100:	2a 70 a9 fd 00 00 00 00                         	negshq \$r42 = \$r42;;

    1108:	2b 60 ad fd 00 00 00 00                         	negswp \$r43 = \$r43;;

    1110:	2c 50 ad fd 00 00 00 00                         	negsw \$r43 = \$r44;;

    1118:	2c 20 b1 f3 00 00 00 00                         	negwp \$r44 = \$r44;;

    1120:	2d 00 b4 73                                     	negw \$r45 = \$r45;;

    1124:	ee ff b4 eb ff ff ff 87 ff ff ff 00             	niord \$r45 = \$r46, 2305843009213693951 \(0x1fffffffffffffff\);;

    1130:	ee 0b b9 7b                                     	niord \$r46 = \$r46, \$r47;;

    1134:	2f f0 bc 6b                                     	niord \$r47 = \$r47, -64 \(0xffffffc0\);;

    1138:	30 00 c0 eb 00 00 80 07                         	niord \$r48 = \$r48, -8589934592 \(0xfffffffe00000000\);;

    1140:	f1 ff c0 eb ff ff 07 00                         	niord \$r48 = \$r49, 536870911 \(0x1fffffff\);;

    1148:	b1 1c c5 7b                                     	niorw \$r49 = \$r49, \$r50;;

    114c:	32 f0 c8 7b                                     	niorw \$r50 = \$r50, -64 \(0xffffffc0\);;

    1150:	33 00 cc fb 00 00 80 07                         	niorw \$r51 = \$r51, -8589934592 \(0xfffffffe00000000\);;

    1158:	00 f0 03 7f                                     	nop;;

    115c:	f4 ff cc eb ff ff ff 87 ff ff ff 00             	niord \$r51 = \$r52, 2305843009213693951 \(0x1fffffffffffffff\);;

    1168:	74 0d d1 7b                                     	niord \$r52 = \$r52, \$r53;;

    116c:	35 f0 d4 6b                                     	niord \$r53 = \$r53, -64 \(0xffffffc0\);;

    1170:	36 00 d8 eb 00 00 80 07                         	niord \$r54 = \$r54, -8589934592 \(0xfffffffe00000000\);;

    1178:	f7 0f d9 fb ff ff ff 00                         	niord \$r54 = \$r55, 536870911 \(0x1fffffff\).@;;

    1180:	37 1e dd 7b                                     	niorw \$r55 = \$r55, \$r56;;

    1184:	38 f0 e0 7b                                     	niorw \$r56 = \$r56, -64 \(0xffffffc0\);;

    1188:	39 00 e4 fb 00 00 80 07                         	niorw \$r57 = \$r57, -8589934592 \(0xfffffffe00000000\);;

    1190:	fa ff e4 6c                                     	notd \$r57 = \$r58;;

    1194:	fa ff e8 7c                                     	notw \$r58 = \$r58;;

    1198:	fb ff ec ed ff ff ff 87 ff ff ff 00             	nxord \$r59 = \$r59, 2305843009213693951 \(0x1fffffffffffffff\);;

    11a4:	3c 0f ed 7d                                     	nxord \$r59 = \$r60, \$r60;;

    11a8:	3d f0 f0 6d                                     	nxord \$r60 = \$r61, -64 \(0xffffffc0\);;

    11ac:	3d 00 f4 ed 00 00 80 07                         	nxord \$r61 = \$r61, -8589934592 \(0xfffffffe00000000\);;

    11b4:	fe ff f8 ed ff ff 07 00                         	nxord \$r62 = \$r62, 536870911 \(0x1fffffff\);;

    11bc:	ff 1f f9 7d                                     	nxorw \$r62 = \$r63, \$r63;;

    11c0:	00 f0 fc 7d                                     	nxorw \$r63 = \$r0, -64 \(0xffffffc0\);;

    11c4:	00 00 00 fd 00 00 80 07                         	nxorw \$r0 = \$r0, -8589934592 \(0xfffffffe00000000\);;

    11cc:	c1 ff 04 ea ff ff ff 87 ff ff ff 00             	iord \$r1 = \$r1, 2305843009213693951 \(0x1fffffffffffffff\);;

    11d8:	82 00 05 7a                                     	iord \$r1 = \$r2, \$r2;;

    11dc:	03 f0 08 6a                                     	iord \$r2 = \$r3, -64 \(0xffffffc0\);;

    11e0:	03 00 0c ea 00 00 80 07                         	iord \$r3 = \$r3, -8589934592 \(0xfffffffe00000000\);;

    11e8:	c4 0f 11 fa ff ff ff 00                         	iord \$r4 = \$r4, 536870911 \(0x1fffffff\).@;;

    11f0:	c5 ff 10 ef ff ff ff 87 ff ff ff 00             	iornd \$r4 = \$r5, 2305843009213693951 \(0x1fffffffffffffff\);;

    11fc:	85 01 15 7f                                     	iornd \$r5 = \$r5, \$r6;;

    1200:	06 f0 18 6f                                     	iornd \$r6 = \$r6, -64 \(0xffffffc0\);;

    1204:	07 00 1c ef 00 00 80 07                         	iornd \$r7 = \$r7, -8589934592 \(0xfffffffe00000000\);;

    120c:	c8 ff 1c ef ff ff 07 00                         	iornd \$r7 = \$r8, 536870911 \(0x1fffffff\);;

    1214:	48 12 21 7f                                     	iornw \$r8 = \$r8, \$r9;;

    1218:	09 f0 24 7f                                     	iornw \$r9 = \$r9, -64 \(0xffffffc0\);;

    121c:	0a 00 28 ff 00 00 80 07                         	iornw \$r10 = \$r10, -8589934592 \(0xfffffffe00000000\);;

    1224:	8b c0 2b 71                                     	iorrbod \$r10 = \$r11;;

    1228:	4b c0 2f 71                                     	iorrhqd \$r11 = \$r11;;

    122c:	0c c0 33 71                                     	iorrwpd \$r12 = \$r12;;

    1230:	8d 13 35 7a                                     	iorw \$r13 = \$r13, \$r14;;

    1234:	0f f0 38 7a                                     	iorw \$r14 = \$r15, -64 \(0xffffffc0\);;

    1238:	10 00 3c fa 00 00 80 07                         	iorw \$r15 = \$r16, -8589934592 \(0xfffffffe00000000\);;

    1240:	c0 ff 40 f0 ff ff ff 87 ff ff ff 00             	pcrel \$r16 = 2305843009213693951 \(0x1fffffffffffffff\);;

    124c:	3c 00 40 f0 00 00 00 00                         	pcrel \$r16 = -549755813888 \(0xffffff8000000000\);;

    1254:	00 f0 44 70                                     	pcrel \$r17 = -4096 \(0xfffff000\);;

    1258:	00 00 d0 0f                                     	ret;;

    125c:	00 00 d4 0f                                     	rfe;;

    1260:	91 84 46 7e                                     	rolwps \$r17 = \$r17, \$r18;;

    1264:	d2 41 4a 7e                                     	rolwps \$r18 = \$r18, 7 \(0x7\);;

    1268:	d3 74 4e 7e                                     	rolw \$r19 = \$r19, \$r19;;

    126c:	d4 31 52 7e                                     	rolw \$r20 = \$r20, 7 \(0x7\);;

    1270:	55 85 52 7f                                     	rorwps \$r20 = \$r21, \$r21;;

    1274:	d6 41 56 7f                                     	rorwps \$r21 = \$r22, 7 \(0x7\);;

    1278:	d6 75 5a 7f                                     	rorw \$r22 = \$r22, \$r23;;

    127c:	d7 31 5e 7f                                     	rorw \$r23 = \$r23, 7 \(0x7\);;

    1280:	18 07 c8 0f                                     	rswap \$r24 = \$mmc;;

    1284:	18 00 c8 0f                                     	rswap \$r24 = \$pc;;

    1288:	18 00 c8 0f                                     	rswap \$r24 = \$pc;;

    128c:	59 a6 66 71                                     	sbfbo \$r25 = \$r25, \$r25;;

    1290:	da af 6a f1 ff ff ff 00                         	sbfbo \$r26 = \$r26, 536870911 \(0x1fffffff\).@;;

    1298:	db 96 69 7f                                     	sbfcd.i \$r26 = \$r27, \$r27;;

    129c:	dc 97 6d ff ff ff ff 00                         	sbfcd.i \$r27 = \$r28, 536870911 \(0x1fffffff\);;

    12a4:	5c 87 71 7f                                     	sbfcd \$r28 = \$r28, \$r29;;

    12a8:	dd 87 75 ff ff ff ff 00                         	sbfcd \$r29 = \$r29, 536870911 \(0x1fffffff\);;

    12b0:	de ff 78 e3 ff ff ff 87 ff ff ff 00             	sbfd \$r30 = \$r30, 2305843009213693951 \(0x1fffffffffffffff\);;

    12bc:	df 07 79 73                                     	sbfd \$r30 = \$r31, \$r31;;

    12c0:	20 f0 7c 63                                     	sbfd \$r31 = \$r32, -64 \(0xffffffc0\);;

    12c4:	20 00 80 e3 00 00 80 07                         	sbfd \$r32 = \$r32, -8589934592 \(0xfffffffe00000000\);;

    12cc:	e1 ff 84 e3 ff ff 07 00                         	sbfd \$r33 = \$r33, 536870911 \(0x1fffffff\);;

    12d4:	a2 38 85 73                                     	sbfhq \$r33 = \$r34, \$r34;;

    12d8:	e3 3f 89 f3 ff ff ff 00                         	sbfhq \$r34 = \$r35, 536870911 \(0x1fffffff\).@;;

    12e0:	23 b9 8e 7d                                     	sbfsbo \$r35 = \$r35, \$r36;;

    12e4:	e4 b7 92 fd ff ff ff 00                         	sbfsbo \$r36 = \$r36, 536870911 \(0x1fffffff\);;

    12ec:	65 49 95 7d                                     	sbfsd \$r37 = \$r37, \$r37;;

    12f0:	e6 4f 99 fd ff ff ff 00                         	sbfsd \$r38 = \$r38, 536870911 \(0x1fffffff\).@;;

    12f8:	e7 79 99 7d                                     	sbfshq \$r38 = \$r39, \$r39;;

    12fc:	e8 77 9d fd ff ff ff 00                         	sbfshq \$r39 = \$r40, 536870911 \(0x1fffffff\);;

    1304:	68 6a a1 7d                                     	sbfswp \$r40 = \$r40, \$r41;;

    1308:	e9 6f a5 fd ff ff ff 00                         	sbfswp \$r41 = \$r41, 536870911 \(0x1fffffff\).@;;

    1310:	aa 5a a9 7d                                     	sbfsw \$r42 = \$r42, \$r42;;

    1314:	eb 57 ad fd ff ff ff 00                         	sbfsw \$r43 = \$r43, 536870911 \(0x1fffffff\);;

    131c:	2c bb ae 7f                                     	sbfusbo \$r43 = \$r44, \$r44;;

    1320:	ed b7 b2 ff ff ff ff 00                         	sbfusbo \$r44 = \$r45, 536870911 \(0x1fffffff\);;

    1328:	ad 4b b5 7f                                     	sbfusd \$r45 = \$r45, \$r46;;

    132c:	ee 4f b9 ff ff ff ff 00                         	sbfusd \$r46 = \$r46, 536870911 \(0x1fffffff\).@;;

    1334:	ef 7b bd 7f                                     	sbfushq \$r47 = \$r47, \$r47;;

    1338:	f0 77 c1 ff ff ff ff 00                         	sbfushq \$r48 = \$r48, 536870911 \(0x1fffffff\);;

    1340:	71 6c c1 7f                                     	sbfuswp \$r48 = \$r49, \$r49;;

    1344:	f2 6f c5 ff ff ff ff 00                         	sbfuswp \$r49 = \$r50, 536870911 \(0x1fffffff\).@;;

    134c:	f2 5c c9 7f                                     	sbfusw \$r50 = \$r50, \$r51;;

    1350:	f3 57 cd ff ff ff ff 00                         	sbfusw \$r51 = \$r51, 536870911 \(0x1fffffff\);;

    1358:	34 9d d1 7d                                     	sbfuwd \$r52 = \$r52, \$r52;;

    135c:	f5 97 d5 fd ff ff ff 00                         	sbfuwd \$r53 = \$r53, 536870911 \(0x1fffffff\);;

    1364:	b6 8d d5 7d                                     	sbfwd \$r53 = \$r54, \$r54;;

    1368:	f7 87 d9 fd ff ff ff 00                         	sbfwd \$r54 = \$r55, 536870911 \(0x1fffffff\);;

    1370:	37 2e dd 73                                     	sbfwp \$r55 = \$r55, \$r56;;

    1374:	f8 27 e1 f3 ff ff ff 00                         	sbfwp \$r56 = \$r56, 536870911 \(0x1fffffff\);;

    137c:	79 1e e5 73                                     	sbfw \$r57 = \$r57, \$r57;;

    1380:	3a f0 e8 73                                     	sbfw \$r58 = \$r58, -64 \(0xffffffc0\);;

    1384:	3b 00 e8 f3 00 00 80 07                         	sbfw \$r58 = \$r59, -8589934592 \(0xfffffffe00000000\);;

    138c:	3b bf ee 77                                     	sbfx16bo \$r59 = \$r59, \$r60;;

    1390:	fc bf f2 f7 ff ff ff 00                         	sbfx16bo \$r60 = \$r60, 536870911 \(0x1fffffff\).@;;

    1398:	7d 4f f5 77                                     	sbfx16d \$r61 = \$r61, \$r61;;

    139c:	fe 47 f9 f7 ff ff ff 00                         	sbfx16d \$r62 = \$r62, 536870911 \(0x1fffffff\);;

    13a4:	ff 7f f9 77                                     	sbfx16hq \$r62 = \$r63, \$r63;;

    13a8:	c0 7f fd f7 ff ff ff 00                         	sbfx16hq \$r63 = \$r0, 536870911 \(0x1fffffff\).@;;

    13b0:	40 90 01 77                                     	sbfx16uwd \$r0 = \$r0, \$r1;;

    13b4:	c1 97 05 f7 ff ff ff 00                         	sbfx16uwd \$r1 = \$r1, 536870911 \(0x1fffffff\);;

    13bc:	82 80 09 77                                     	sbfx16wd \$r2 = \$r2, \$r2;;

    13c0:	c3 87 0d f7 ff ff ff 00                         	sbfx16wd \$r3 = \$r3, 536870911 \(0x1fffffff\);;

    13c8:	04 61 0d 77                                     	sbfx16wp \$r3 = \$r4, \$r4;;

    13cc:	c5 67 11 f7 ff ff ff 00                         	sbfx16wp \$r4 = \$r5, 536870911 \(0x1fffffff\);;

    13d4:	85 51 15 77                                     	sbfx16w \$r5 = \$r5, \$r6;;

    13d8:	c6 57 19 f7 ff ff ff 00                         	sbfx16w \$r6 = \$r6, 536870911 \(0x1fffffff\);;

    13e0:	c7 b1 1e 71                                     	sbfx2bo \$r7 = \$r7, \$r7;;

    13e4:	c8 bf 22 f1 ff ff ff 00                         	sbfx2bo \$r8 = \$r8, 536870911 \(0x1fffffff\).@;;

    13ec:	49 42 21 71                                     	sbfx2d \$r8 = \$r9, \$r9;;

    13f0:	ca 47 25 f1 ff ff ff 00                         	sbfx2d \$r9 = \$r10, 536870911 \(0x1fffffff\);;

    13f8:	ca 72 29 71                                     	sbfx2hq \$r10 = \$r10, \$r11;;

    13fc:	cb 7f 2d f1 ff ff ff 00                         	sbfx2hq \$r11 = \$r11, 536870911 \(0x1fffffff\).@;;

    1404:	4c 93 31 71                                     	sbfx2uwd \$r12 = \$r12, \$r13;;

    1408:	ce 97 35 f1 ff ff ff 00                         	sbfx2uwd \$r13 = \$r14, 536870911 \(0x1fffffff\);;

    1410:	cf 83 39 71                                     	sbfx2wd \$r14 = \$r15, \$r15;;

    1414:	d0 87 41 f1 ff ff ff 00                         	sbfx2wd \$r16 = \$r16, 536870911 \(0x1fffffff\);;

    141c:	51 64 41 71                                     	sbfx2wp \$r16 = \$r17, \$r17;;

    1420:	d2 67 45 f1 ff ff ff 00                         	sbfx2wp \$r17 = \$r18, 536870911 \(0x1fffffff\);;

    1428:	d2 54 49 71                                     	sbfx2w \$r18 = \$r18, \$r19;;

    142c:	d3 57 4d f1 ff ff ff 00                         	sbfx2w \$r19 = \$r19, 536870911 \(0x1fffffff\);;

    1434:	14 45 51 79                                     	sbfx32d \$r20 = \$r20, \$r20;;

    1438:	d5 4f 55 f9 ff ff ff 00                         	sbfx32d \$r21 = \$r21, 536870911 \(0x1fffffff\).@;;

    1440:	96 95 55 79                                     	sbfx32uwd \$r21 = \$r22, \$r22;;

    1444:	d7 97 59 f9 ff ff ff 00                         	sbfx32uwd \$r22 = \$r23, 536870911 \(0x1fffffff\);;

    144c:	17 86 5d 79                                     	sbfx32wd \$r23 = \$r23, \$r24;;

    1450:	d8 87 61 f9 ff ff ff 00                         	sbfx32wd \$r24 = \$r24, 536870911 \(0x1fffffff\);;

    1458:	59 56 65 79                                     	sbfx32w \$r25 = \$r25, \$r25;;

    145c:	da 57 69 f9 ff ff ff 00                         	sbfx32w \$r26 = \$r26, 536870911 \(0x1fffffff\);;

    1464:	db b6 6a 73                                     	sbfx4bo \$r26 = \$r27, \$r27;;

    1468:	dc b7 6e f3 ff ff ff 00                         	sbfx4bo \$r27 = \$r28, 536870911 \(0x1fffffff\);;

    1470:	5c 47 71 73                                     	sbfx4d \$r28 = \$r28, \$r29;;

    1474:	dd 4f 75 f3 ff ff ff 00                         	sbfx4d \$r29 = \$r29, 536870911 \(0x1fffffff\).@;;

    147c:	9e 77 79 73                                     	sbfx4hq \$r30 = \$r30, \$r30;;

    1480:	df 77 7d f3 ff ff ff 00                         	sbfx4hq \$r31 = \$r31, 536870911 \(0x1fffffff\);;

    1488:	20 98 7d 73                                     	sbfx4uwd \$r31 = \$r32, \$r32;;

    148c:	e1 97 81 f3 ff ff ff 00                         	sbfx4uwd \$r32 = \$r33, 536870911 \(0x1fffffff\);;

    1494:	a1 88 85 73                                     	sbfx4wd \$r33 = \$r33, \$r34;;

    1498:	e2 87 89 f3 ff ff ff 00                         	sbfx4wd \$r34 = \$r34, 536870911 \(0x1fffffff\);;

    14a0:	e3 68 8d 73                                     	sbfx4wp \$r35 = \$r35, \$r35;;

    14a4:	e4 6f 91 f3 ff ff ff 00                         	sbfx4wp \$r36 = \$r36, 536870911 \(0x1fffffff\).@;;

    14ac:	65 59 91 73                                     	sbfx4w \$r36 = \$r37, \$r37;;

    14b0:	e6 57 95 f3 ff ff ff 00                         	sbfx4w \$r37 = \$r38, 536870911 \(0x1fffffff\);;

    14b8:	e6 49 99 7b                                     	sbfx64d \$r38 = \$r38, \$r39;;

    14bc:	e7 47 9d fb ff ff ff 00                         	sbfx64d \$r39 = \$r39, 536870911 \(0x1fffffff\);;

    14c4:	28 9a a1 7b                                     	sbfx64uwd \$r40 = \$r40, \$r40;;

    14c8:	e9 97 a5 fb ff ff ff 00                         	sbfx64uwd \$r41 = \$r41, 536870911 \(0x1fffffff\);;

    14d0:	aa 8a a5 7b                                     	sbfx64wd \$r41 = \$r42, \$r42;;

    14d4:	eb 87 a9 fb ff ff ff 00                         	sbfx64wd \$r42 = \$r43, 536870911 \(0x1fffffff\);;

    14dc:	2b 5b ad 7b                                     	sbfx64w \$r43 = \$r43, \$r44;;

    14e0:	ec 57 b1 fb ff ff ff 00                         	sbfx64w \$r44 = \$r44, 536870911 \(0x1fffffff\);;

    14e8:	6d bb b6 75                                     	sbfx8bo \$r45 = \$r45, \$r45;;

    14ec:	ee bf ba f5 ff ff ff 00                         	sbfx8bo \$r46 = \$r46, 536870911 \(0x1fffffff\).@;;

    14f4:	ef 4b b9 75                                     	sbfx8d \$r46 = \$r47, \$r47;;

    14f8:	f0 47 bd f5 ff ff ff 00                         	sbfx8d \$r47 = \$r48, 536870911 \(0x1fffffff\);;

    1500:	70 7c c1 75                                     	sbfx8hq \$r48 = \$r48, \$r49;;

    1504:	f1 7f c5 f5 ff ff ff 00                         	sbfx8hq \$r49 = \$r49, 536870911 \(0x1fffffff\).@;;

    150c:	b2 9c c9 75                                     	sbfx8uwd \$r50 = \$r50, \$r50;;

    1510:	f3 97 cd f5 ff ff ff 00                         	sbfx8uwd \$r51 = \$r51, 536870911 \(0x1fffffff\);;

    1518:	34 8d cd 75                                     	sbfx8wd \$r51 = \$r52, \$r52;;

    151c:	f5 87 d1 f5 ff ff ff 00                         	sbfx8wd \$r52 = \$r53, 536870911 \(0x1fffffff\);;

    1524:	b5 6d d5 75                                     	sbfx8wp \$r53 = \$r53, \$r54;;

    1528:	f6 67 d9 f5 ff ff ff 00                         	sbfx8wp \$r54 = \$r54, 536870911 \(0x1fffffff\);;

    1530:	f7 5d dd 75                                     	sbfx8w \$r55 = \$r55, \$r55;;

    1534:	f8 57 e1 f5 ff ff ff 00                         	sbfx8w \$r56 = \$r56, 536870911 \(0x1fffffff\);;

    153c:	f9 ff e2 ee ff ff ff 87 ff ff ff 00             	sbmm8 \$r56 = \$r57, 2305843009213693951 \(0x1fffffffffffffff\);;

    1548:	b9 0e e6 7e                                     	sbmm8 \$r57 = \$r57, \$r58;;

    154c:	3a f0 ea 6e                                     	sbmm8 \$r58 = \$r58, -64 \(0xffffffc0\);;

    1550:	3b 00 ee ee 00 00 80 07                         	sbmm8 \$r59 = \$r59, -8589934592 \(0xfffffffe00000000\);;

    1558:	fc 0f ee fe ff ff ff 00                         	sbmm8 \$r59 = \$r60, 536870911 \(0x1fffffff\).@;;

    1560:	fc ff f2 ef ff ff ff 87 ff ff ff 00             	sbmmt8 \$r60 = \$r60, 2305843009213693951 \(0x1fffffffffffffff\);;

    156c:	7d 0f f6 7f                                     	sbmmt8 \$r61 = \$r61, \$r61;;

    1570:	3e f0 fa 6f                                     	sbmmt8 \$r62 = \$r62, -64 \(0xffffffc0\);;

    1574:	3f 00 fa ef 00 00 80 07                         	sbmmt8 \$r62 = \$r63, -8589934592 \(0xfffffffe00000000\);;

    157c:	ff ff fe ef ff ff 07 00                         	sbmmt8 \$r63 = \$r63, 536870911 \(0x1fffffff\);;

    1584:	00 e0 03 30                                     	sb \$r0\[\$r0\] = \$r0;;

    1588:	c1 ff 05 b0 ff ff ff 9f ff ff ff 18             	sb 2305843009213693951 \(0x1fffffffffffffff\)\[\$r1\] = \$r1;;

    1594:	42 40 0b b0 00 00 00 98 00 00 80 1f             	sb.dlez \$r1\? -1125899906842624 \(0xfffc000000000000\)\[\$r2\] = \$r2;;

    15a0:	83 50 0f b0 00 00 80 1f                         	sb.dgtz \$r2\? -8388608 \(0xff800000\)\[\$r3\] = \$r3;;

    15a8:	c4 60 13 30                                     	sb.odd \$r3\? \[\$r4\] = \$r4;;

    15ac:	04 f0 15 30                                     	sb -64 \(0xffffffc0\)\[\$r4\] = \$r5;;

    15b0:	05 00 15 b0 00 00 80 1f                         	sb -8589934592 \(0xfffffffe00000000\)\[\$r5\] = \$r5;;

    15b8:	06 00 e4 0f                                     	scall \$r6;;

    15bc:	ff 01 e0 0f                                     	scall 511 \(0x1ff\);;

    15c0:	86 f1 1f 33                                     	sd.xs \$r6\[\$r6\] = \$r7;;

    15c4:	c7 ff 1d b3 ff ff ff 9f ff ff ff 18             	sd 2305843009213693951 \(0x1fffffffffffffff\)\[\$r7\] = \$r7;;

    15d0:	08 72 23 b3 00 00 00 98 00 00 80 1f             	sd.even \$r8\? -1125899906842624 \(0xfffc000000000000\)\[\$r8\] = \$r8;;

    15dc:	49 82 27 b3 00 00 80 1f                         	sd.wnez \$r9\? -8388608 \(0xff800000\)\[\$r9\] = \$r9;;

    15e4:	8a 92 2b 33                                     	sd.weqz \$r10\? \[\$r10\] = \$r10;;

    15e8:	0b f0 2d 33                                     	sd -64 \(0xffffffc0\)\[\$r11\] = \$r11;;

    15ec:	0b 00 31 b3 00 00 80 1f                         	sd -8589934592 \(0xfffffffe00000000\)\[\$r11\] = \$r12;;

    15f4:	0c 07 c0 0f                                     	set \$mmc = \$r12;;

    15f8:	cd 00 c0 0f                                     	set \$ra = \$r13;;

    15fc:	4d 00 c0 0f                                     	set \$ps = \$r13;;

    1600:	4e 00 c0 0f                                     	set \$ps = \$r14;;

    1604:	8f e3 3f 31                                     	sh \$r14\[\$r15\] = \$r15;;

    1608:	d0 ff 41 b1 ff ff ff 9f ff ff ff 18             	sh 2305843009213693951 \(0x1fffffffffffffff\)\[\$r16\] = \$r16;;

    1614:	11 a4 47 b1 00 00 00 98 00 00 80 1f             	sh.wltz \$r16\? -1125899906842624 \(0xfffc000000000000\)\[\$r17\] = \$r17;;

    1620:	52 b4 4b b1 00 00 80 1f                         	sh.wgez \$r17\? -8388608 \(0xff800000\)\[\$r18\] = \$r18;;

    1628:	93 c4 4f 31                                     	sh.wlez \$r18\? \[\$r19\] = \$r19;;

    162c:	13 f0 51 31                                     	sh -64 \(0xffffffc0\)\[\$r19\] = \$r20;;

    1630:	14 00 51 b1 00 00 80 1f                         	sh -8589934592 \(0xfffffffe00000000\)\[\$r20\] = \$r20;;

    1638:	00 00 a4 0f                                     	sleep;;

    163c:	55 f5 56 79                                     	sllbos \$r21 = \$r21, \$r21;;

    1640:	d6 e1 5a 79                                     	sllbos \$r22 = \$r22, 7 \(0x7\);;

    1644:	d7 65 5a 79                                     	slld \$r22 = \$r23, \$r23;;

    1648:	d8 21 5e 79                                     	slld \$r23 = \$r24, 7 \(0x7\);;

    164c:	58 96 62 79                                     	sllhqs \$r24 = \$r24, \$r25;;

    1650:	d9 51 66 79                                     	sllhqs \$r25 = \$r25, 7 \(0x7\);;

    1654:	9a 86 6a 79                                     	sllwps \$r26 = \$r26, \$r26;;

    1658:	db 41 6e 79                                     	sllwps \$r27 = \$r27, 7 \(0x7\);;

    165c:	1c 77 6e 79                                     	sllw \$r27 = \$r28, \$r28;;

    1660:	dd 31 72 79                                     	sllw \$r28 = \$r29, 7 \(0x7\);;

    1664:	9d f7 76 7c                                     	slsbos \$r29 = \$r29, \$r30;;

    1668:	de e1 7a 7c                                     	slsbos \$r30 = \$r30, 7 \(0x7\);;

    166c:	df 67 7e 7c                                     	slsd \$r31 = \$r31, \$r31;;

    1670:	e0 21 82 7c                                     	slsd \$r32 = \$r32, 7 \(0x7\);;

    1674:	61 98 82 7c                                     	slshqs \$r32 = \$r33, \$r33;;

    1678:	e2 51 86 7c                                     	slshqs \$r33 = \$r34, 7 \(0x7\);;

    167c:	e2 88 8a 7c                                     	slswps \$r34 = \$r34, \$r35;;

    1680:	e3 41 8e 7c                                     	slswps \$r35 = \$r35, 7 \(0x7\);;

    1684:	24 79 92 7c                                     	slsw \$r36 = \$r36, \$r36;;

    1688:	e5 31 96 7c                                     	slsw \$r37 = \$r37, 7 \(0x7\);;

    168c:	a6 f9 96 7d                                     	slusbos \$r37 = \$r38, \$r38;;

    1690:	e7 e1 9a 7d                                     	slusbos \$r38 = \$r39, 7 \(0x7\);;

    1694:	27 6a 9e 7d                                     	slusd \$r39 = \$r39, \$r40;;

    1698:	e8 21 a2 7d                                     	slusd \$r40 = \$r40, 7 \(0x7\);;

    169c:	69 9a a6 7d                                     	slushqs \$r41 = \$r41, \$r41;;

    16a0:	ea 51 aa 7d                                     	slushqs \$r42 = \$r42, 7 \(0x7\);;

    16a4:	eb 8a aa 7d                                     	sluswps \$r42 = \$r43, \$r43;;

    16a8:	ec 41 ae 7d                                     	sluswps \$r43 = \$r44, 7 \(0x7\);;

    16ac:	6c 7b b2 7d                                     	slusw \$r44 = \$r44, \$r45;;

    16b0:	ed 31 b6 7d                                     	slusw \$r45 = \$r45, 7 \(0x7\);;

    16b4:	ae fb b7 34                                     	so.xs \$r46\[\$r46\] = \$r44r45r46r47;;

    16b8:	ee ff c5 b4 ff ff ff 9f ff ff ff 18             	so 2305843009213693951 \(0x1fffffffffffffff\)\[\$r46\] = \$r48r49r50r51;;

    16c4:	ef 3b df b4 00 00 00 98 00 00 80 1f             	so.u3 \$r47\? -1125899906842624 \(0xfffc000000000000\)\[\$r47\] = \$r52r53r54r55;;

    16d0:	f0 4b ef b4 00 00 80 1f                         	so.mt \$r47\? -8388608 \(0xff800000\)\[\$r48\] = \$r56r57r58r59;;

    16d8:	30 5c ff 34                                     	so.mf \$r48\? \[\$r48\] = \$r60r61r62r63;;

    16dc:	71 dc 07 b4 00 00 00 98 00 00 80 1f             	so.wgtz \$r49\? -1125899906842624 \(0xfffc000000000000\)\[\$r49\] = \$r0r1r2r3;;

    16e8:	72 0c 17 b4 00 00 80 1f                         	so.dnez \$r49\? -8388608 \(0xff800000\)\[\$r50\] = \$r4r5r6r7;;

    16f0:	b2 1c 27 34                                     	so.deqz \$r50\? \[\$r50\] = \$r8r9r10r11;;

    16f4:	33 f0 35 34                                     	so -64 \(0xffffffc0\)\[\$r51\] = \$r12r13r14r15;;

    16f8:	33 00 45 b4 00 00 80 1f                         	so -8589934592 \(0xfffffffe00000000\)\[\$r51\] = \$r16r17r18r19;;

    1700:	f4 ec 73 34                                     	sq \$r51\[\$r52\] = \$r28r29;;

    1704:	f4 ff 79 b4 ff ff ff 9f ff ff ff 18             	sq 2305843009213693951 \(0x1fffffffffffffff\)\[\$r52\] = \$r30r31;;

    1710:	35 2d 7b b4 00 00 00 98 00 00 80 1f             	sq.dltz \$r52\? -1125899906842624 \(0xfffc000000000000\)\[\$r53\] = \$r30r31;;

    171c:	75 3d 83 b4 00 00 80 1f                         	sq.dgez \$r53\? -8388608 \(0xff800000\)\[\$r53\] = \$r32r33;;

    1724:	b6 4d 83 34                                     	sq.dlez \$r54\? \[\$r54\] = \$r32r33;;

    1728:	36 f0 89 34                                     	sq -64 \(0xffffffc0\)\[\$r54\] = \$r34r35;;

    172c:	37 00 89 b4 00 00 80 1f                         	sq -8589934592 \(0xfffffffe00000000\)\[\$r55\] = \$r34r35;;

    1734:	37 fe de 7a                                     	srabos \$r55 = \$r55, \$r56;;

    1738:	f8 e1 e2 7a                                     	srabos \$r56 = \$r56, 7 \(0x7\);;

    173c:	79 6e e6 7a                                     	srad \$r57 = \$r57, \$r57;;

    1740:	fa 21 ea 7a                                     	srad \$r58 = \$r58, 7 \(0x7\);;

    1744:	fb 9e ea 7a                                     	srahqs \$r58 = \$r59, \$r59;;

    1748:	fc 51 ee 7a                                     	srahqs \$r59 = \$r60, 7 \(0x7\);;

    174c:	7c 8f f2 7a                                     	srawps \$r60 = \$r60, \$r61;;

    1750:	fd 41 f6 7a                                     	srawps \$r61 = \$r61, 7 \(0x7\);;

    1754:	be 7f fa 7a                                     	sraw \$r62 = \$r62, \$r62;;

    1758:	ff 31 fe 7a                                     	sraw \$r63 = \$r63, 7 \(0x7\);;

    175c:	00 f0 fe 7b                                     	srlbos \$r63 = \$r0, \$r0;;

    1760:	c1 e1 02 7b                                     	srlbos \$r0 = \$r1, 7 \(0x7\);;

    1764:	81 60 06 7b                                     	srld \$r1 = \$r1, \$r2;;

    1768:	c2 21 0a 7b                                     	srld \$r2 = \$r2, 7 \(0x7\);;

    176c:	c3 90 0e 7b                                     	srlhqs \$r3 = \$r3, \$r3;;

    1770:	c4 51 12 7b                                     	srlhqs \$r4 = \$r4, 7 \(0x7\);;

    1774:	45 81 12 7b                                     	srlwps \$r4 = \$r5, \$r5;;

    1778:	c6 41 16 7b                                     	srlwps \$r5 = \$r6, 7 \(0x7\);;

    177c:	c6 71 1a 7b                                     	srlw \$r6 = \$r6, \$r7;;

    1780:	c7 31 1e 7b                                     	srlw \$r7 = \$r7, 7 \(0x7\);;

    1784:	08 f2 22 78                                     	srsbos \$r8 = \$r8, \$r8;;

    1788:	c9 e1 26 78                                     	srsbos \$r9 = \$r9, 7 \(0x7\);;

    178c:	8a 62 26 78                                     	srsd \$r9 = \$r10, \$r10;;

    1790:	cb 21 2a 78                                     	srsd \$r10 = \$r11, 7 \(0x7\);;

    1794:	0b 93 2e 78                                     	srshqs \$r11 = \$r11, \$r12;;

    1798:	cd 51 32 78                                     	srshqs \$r12 = \$r13, 7 \(0x7\);;

    179c:	8e 83 36 78                                     	srswps \$r13 = \$r14, \$r14;;

    17a0:	cf 41 3e 78                                     	srswps \$r15 = \$r15, 7 \(0x7\);;

    17a4:	10 74 42 78                                     	srsw \$r16 = \$r16, \$r16;;

    17a8:	d1 31 46 78                                     	srsw \$r17 = \$r17, 7 \(0x7\);;

    17ac:	00 00 a8 0f                                     	stop;;

    17b0:	92 a4 45 7e                                     	stsud \$r17 = \$r18, \$r18;;

    17b4:	d3 af 49 fe ff ff ff 00                         	stsud \$r18 = \$r19, 536870911 \(0x1fffffff\).@;;

    17bc:	13 f5 4d 7e                                     	stsuhq \$r19 = \$r19, \$r20;;

    17c0:	d4 f7 51 fe ff ff ff 00                         	stsuhq \$r20 = \$r20, 536870911 \(0x1fffffff\);;

    17c8:	55 e5 55 7e                                     	stsuwp \$r21 = \$r21, \$r21;;

    17cc:	d6 ef 59 fe ff ff ff 00                         	stsuwp \$r22 = \$r22, 536870911 \(0x1fffffff\).@;;

    17d4:	d7 b5 59 7e                                     	stsuw \$r22 = \$r23, \$r23;;

    17d8:	d8 b7 5d fe ff ff ff 00                         	stsuw \$r23 = \$r24, 536870911 \(0x1fffffff\);;

    17e0:	18 f6 67 32                                     	sw.xs \$r24\[\$r24\] = \$r25;;

    17e4:	d9 ff 65 b2 ff ff ff 9f ff ff ff 18             	sw 2305843009213693951 \(0x1fffffffffffffff\)\[\$r25\] = \$r25;;

    17f0:	9a 56 6b b2 00 00 00 98 00 00 80 1f             	sw.dgtz \$r26\? -1125899906842624 \(0xfffc000000000000\)\[\$r26\] = \$r26;;

    17fc:	db 66 6f b2 00 00 80 1f                         	sw.odd \$r27\? -8388608 \(0xff800000\)\[\$r27\] = \$r27;;

    1804:	1c 77 73 32                                     	sw.even \$r28\? \[\$r28\] = \$r28;;

    1808:	1d f0 75 32                                     	sw -64 \(0xffffffc0\)\[\$r29\] = \$r29;;

    180c:	1d 00 79 b2 00 00 80 1f                         	sw -8589934592 \(0xfffffffe00000000\)\[\$r29\] = \$r30;;

    1814:	1e 70 7b 68                                     	sxbd \$r30 = \$r30;;

    1818:	1f f0 7f 68                                     	sxhd \$r31 = \$r31;;

    181c:	20 50 7e 76                                     	sxlbhq \$r31 = \$r32;;

    1820:	20 40 82 76                                     	sxlhwp \$r32 = \$r32;;

    1824:	21 50 86 77                                     	sxmbhq \$r33 = \$r33;;

    1828:	22 40 86 77                                     	sxmhwp \$r33 = \$r34;;

    182c:	22 f0 8b 69                                     	sxwd \$r34 = \$r34;;

    1830:	23 00 b4 0f                                     	syncgroup \$r35;;

    1834:	00 00 8c 0f                                     	tlbdinval;;

    1838:	00 00 90 0f                                     	tlbiinval;;

    183c:	00 00 84 0f                                     	tlbprobe;;

    1840:	00 00 80 0f                                     	tlbread;;

    1844:	00 00 88 0f                                     	tlbwrite;;

    1848:	23 00 b0 0f                                     	waitit \$r35;;

    184c:	63 00 b8 0f                                     	wfxl \$ps, \$r35;;

    1850:	a4 00 b8 0f                                     	wfxl \$pcr, \$r36;;

    1854:	64 00 b8 0f                                     	wfxl \$ps, \$r36;;

    1858:	64 00 bc 0f                                     	wfxm \$ps, \$r36;;

    185c:	a5 00 bc 0f                                     	wfxm \$pcr, \$r37;;

    1860:	a5 00 bc 0f                                     	wfxm \$pcr, \$r37;;

    1864:	25 80 5c 00                                     	xaccesso \$r20r21r22r23 = \$a0..a1, \$r37;;

    1868:	66 80 6c 00                                     	xaccesso \$r24r25r26r27 = \$a0..a3, \$r38;;

    186c:	e6 80 7c 00                                     	xaccesso \$r28r29r30r31 = \$a0..a7, \$r38;;

    1870:	e6 81 8c 00                                     	xaccesso \$r32r33r34r35 = \$a0..a15, \$r38;;

    1874:	e7 83 9c 00                                     	xaccesso \$r36r37r38r39 = \$a0..a31, \$r39;;

    1878:	e7 87 ac 00                                     	xaccesso \$r40r41r42r43 = \$a0..a63, \$r39;;

    187c:	a7 80 00 01                                     	xaligno \$a0 = \$a2..a3, \$r39;;

    1880:	68 81 00 01                                     	xaligno \$a0 = \$a4..a7, \$r40;;

    1884:	e8 82 00 01                                     	xaligno \$a0 = \$a8..a15, \$r40;;

    1888:	e8 85 04 01                                     	xaligno \$a1 = \$a16..a31, \$r40;;

    188c:	e9 8b 04 01                                     	xaligno \$a1 = \$a32..a63, \$r41;;

    1890:	e9 87 04 01                                     	xaligno \$a1 = \$a0..a63, \$r41;;

    1894:	82 60 0b 07                                     	xandno \$a2 = \$a2, \$a2;;

    1898:	c3 00 0f 07                                     	xando \$a3 = \$a3, \$a3;;

    189c:	04 01 13 05                                     	xclampwo \$a4 = \$a4, \$a4;;

    18a0:	40 01 14 01                                     	xcopyo \$a5 = \$a5;;

    18a4:	00 01 05 07                                     	xcopyv \$a0a1a2a3 = \$a4a5a6a7;;

    18a8:	00 00 04 07                                     	xcopyx \$a0a1 = \$a0a1;;

    18ac:	46 c1 0a 04                                     	xffma44hw.rna.s \$a2a3 = \$a5, \$a6;;

    18b0:	87 01 1a 05                                     	xfmaxhx \$a6 = \$a6, \$a7;;

    18b4:	c8 01 1d 05                                     	xfminhx \$a7 = \$a7, \$a8;;

    18b8:	04 51 0b 04                                     	xfmma484hw.rnz \$a2a3 = \$a4a5, \$a4a5;;

    18bc:	80 e1 20 05                                     	xfnarrow44wh.ro.s \$a8 = \$a6a7;;

    18c0:	69 72 23 01                                     	xfscalewo \$a8 = \$a9, \$r41;;

    18c4:	89 22 27 07                                     	xioro \$a9 = \$a9, \$a10;;

    18c8:	aa ea 23 2a                                     	xlo.u.q0 \$a8a9a10a11 = \$r42\[\$r42\];;

    18cc:	ab fa 2b 23                                     	xlo.us.xs \$a10 = \$r42\[\$r43\];;

    18d0:	eb 0a 37 a8 00 00 00 98 00 00 80 1f             	xlo.dnez.q1 \$r43\? \$a12a13a14a15 = -1125899906842624 \(0xfffc000000000000\)\[\$r43\];;

    18dc:	2c 1b 4b a9 00 00 80 1f                         	xlo.s.deqz.q2 \$r44\? \$a16a17a18a19 = -8388608 \(0xff800000\)\[\$r44\];;

    18e4:	2d 2b 5f 2a                                     	xlo.u.wnez.q3 \$r44\? \$a20a21a22a23 = \[\$r45\];;

    18e8:	6d 3b 2b a3 00 00 00 98 00 00 80 1f             	xlo.us.weqz \$r45\? \$a10 = -1125899906842624 \(0xfffc000000000000\)\[\$r45\];;

    18f4:	ae 4b 2f a0 00 00 80 1f                         	xlo.mt \$r46\? \$a11 = -8388608 \(0xff800000\)\[\$r46\];;

    18fc:	af 5b 2f 21                                     	xlo.s.mf \$r46\? \$a11 = \[\$r47\];;

    1900:	ef 0b 13 ae 00 00 00 98 00 00 80 1f             	xlo.u \$a4..a5, \$r47 = -1125899906842624 \(0xfffc000000000000\)\[\$r47\];;

    190c:	30 1c 1b af 00 00 80 1f                         	xlo.us.q \$a6..a7, \$r48 = -8388608 \(0xff800000\)\[\$r48\];;

    1914:	31 2c 23 2c                                     	xlo.d \$a8..a9, \$r48 = \[\$r49\];;

    1918:	71 3c 27 ad 00 00 00 98 00 00 80 1f             	xlo.s.w \$a8..a11, \$r49 = -1125899906842624 \(0xfffc000000000000\)\[\$r49\];;

    1924:	b2 4c 37 ae 00 00 80 1f                         	xlo.u.h \$a12..a15, \$r50 = -8388608 \(0xff800000\)\[\$r50\];;

    192c:	b3 5c 47 2f                                     	xlo.us.b \$a16..a19, \$r50 = \[\$r51\];;

    1930:	f3 0c 4f ac 00 00 00 98 00 00 80 1f             	xlo \$a16..a23, \$r51 = -1125899906842624 \(0xfffc000000000000\)\[\$r51\];;

    193c:	34 1d 6f ad 00 00 80 1f                         	xlo.s.q \$a24..a31, \$r52 = -8388608 \(0xff800000\)\[\$r52\];;

    1944:	35 2d 8f 2e                                     	xlo.u.d \$a32..a39, \$r52 = \[\$r53\];;

    1948:	75 3d 9f af 00 00 00 98 00 00 80 1f             	xlo.us.w \$a32..a47, \$r53 = -1125899906842624 \(0xfffc000000000000\)\[\$r53\];;

    1954:	b6 4d df ac 00 00 80 1f                         	xlo.h \$a48..a63, \$r54 = -8388608 \(0xff800000\)\[\$r54\];;

    195c:	b7 5d 1f 2d                                     	xlo.s.b \$a0..a15, \$r54 = \[\$r55\];;

    1960:	f7 0d 3f ae 00 00 00 98 00 00 80 1f             	xlo.u \$a0..a31, \$r55 = -1125899906842624 \(0xfffc000000000000\)\[\$r55\];;

    196c:	38 1e bf af 00 00 80 1f                         	xlo.us.q \$a32..a63, \$r56 = -8388608 \(0xff800000\)\[\$r56\];;

    1974:	39 2e 3f 2c                                     	xlo.d \$a0..a31, \$r56 = \[\$r57\];;

    1978:	79 3e 7f ad 00 00 00 98 00 00 80 1f             	xlo.s.w \$a0..a63, \$r57 = -1125899906842624 \(0xfffc000000000000\)\[\$r57\];;

    1984:	ba 4e 7f ae 00 00 80 1f                         	xlo.u.h \$a0..a63, \$r58 = -8388608 \(0xff800000\)\[\$r58\];;

    198c:	bb 5e 7f 2f                                     	xlo.us.b \$a0..a63, \$r58 = \[\$r59\];;

    1990:	fb ff 61 a8 ff ff ff 9f ff ff ff 18             	xlo.q0 \$a24a25a26a27 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r59\];;

    199c:	3b f0 75 29                                     	xlo.s.q1 \$a28a29a30a31 = -64 \(0xffffffc0\)\[\$r59\];;

    19a0:	3c 00 89 aa 00 00 80 1f                         	xlo.u.q2 \$a32a33a34a35 = -8589934592 \(0xfffffffe00000000\)\[\$r60\];;

    19a8:	fc ff 2d a3 ff ff ff 9f ff ff ff 18             	xlo.us \$a11 = 2305843009213693951 \(0x1fffffffffffffff\)\[\$r60\];;

    19b4:	3c f0 31 20                                     	xlo \$a12 = -64 \(0xffffffc0\)\[\$r60\];;

    19b8:	3d 00 31 a1 00 00 80 1f                         	xlo.s \$a12 = -8589934592 \(0xfffffffe00000000\)\[\$r61\];;

    19c0:	0d 03 18 03                                     	xmadd44bw0 \$a6a7 = \$a12, \$a13;;

    19c4:	4d 03 24 03                                     	xmadd44bw1 \$a8a9 = \$a13, \$a13;;

    19c8:	8e 83 38 04                                     	xmaddifwo.rn.s \$a14 = \$a14, \$a14;;

    19cc:	cf 03 22 03                                     	xmaddsu44bw0 \$a8a9 = \$a15, \$a15;;

    19d0:	d0 03 2e 03                                     	xmaddsu44bw1 \$a10a11 = \$a15, \$a16;;

    19d4:	10 04 29 03                                     	xmaddu44bw0 \$a10a11 = \$a16, \$a16;;

    19d8:	51 04 35 03                                     	xmaddu44bw1 \$a12a13 = \$a17, \$a17;;

    19dc:	8e 03 30 02                                     	xmma4164bw \$a12a13 = \$a14a15, \$a14a15;;

    19e0:	52 04 44 02                                     	xmma484bw \$a16a17 = \$a17, \$a18;;

    19e4:	92 04 42 02                                     	xmmasu4164bw \$a16a17 = \$a18a19, \$a18a19;;

    19e8:	92 04 56 02                                     	xmmasu484bw \$a20a21 = \$a18, \$a18;;

    19ec:	96 05 51 02                                     	xmmau4164bw \$a20a21 = \$a22a23, \$a22a23;;

    19f0:	d3 04 65 02                                     	xmmau484bw \$a24a25 = \$a19, \$a19;;

    19f4:	9a 06 63 02                                     	xmmaus4164bw \$a24a25 = \$a26a27, \$a26a27;;

    19f8:	d4 04 77 02                                     	xmmaus484bw \$a28a29 = \$a19, \$a20;;

    19fc:	00 c0 f4 00                                     	xmovefd \$r61 = \$a0_x;;

    1a00:	00 85 b4 00                                     	xmovefo \$r44r45r46r47 = \$a20;;

    1a04:	00 00 94 00                                     	xmovefq \$r36r37 = \$a0_lo;;

    1a08:	3d e0 03 73                                     	xmovetd \$a0_t = \$r61;;

    1a0c:	3e e0 03 70                                     	xmovetd \$a0_x = \$r62;;

    1a10:	3e e0 03 71                                     	xmovetd \$a0_y = \$r62;;

    1a14:	3e e0 03 72                                     	xmovetd \$a0_z = \$r62;;

    1a18:	ff ef 03 74                                     	xmovetq \$a0_lo = \$r63, \$r63;;

    1a1c:	3f e0 03 75                                     	xmovetq \$a0_hi = \$r63, \$r0;;

    1a20:	55 15 51 04                                     	xmsbfifwo.ru \$a20 = \$a21, \$a21;;

    1a24:	00 1a 95 07                                     	xcopyv.td \$a36a37a38a39 = \$a40a41a42a43;;

    1a28:	96 15 57 07                                     	xnando \$a21 = \$a22, \$a22;;

    1a2c:	d7 35 5b 07                                     	xnoro \$a22 = \$a23, \$a23;;

    1a30:	18 56 5f 07                                     	xnxoro \$a23 = \$a24, \$a24;;

    1a34:	c0 ff 00 ec ff ff ff 87 ff ff ff 00             	xord \$r0 = \$r0, 2305843009213693951 \(0x1fffffffffffffff\);;

    1a40:	41 00 05 7c                                     	xord \$r1 = \$r1, \$r1;;

    1a44:	02 f0 08 6c                                     	xord \$r2 = \$r2, -64 \(0xffffffc0\);;

    1a48:	03 00 08 ec 00 00 80 07                         	xord \$r2 = \$r3, -8589934592 \(0xfffffffe00000000\);;

    1a50:	c3 ff 0c ec ff ff 07 00                         	xord \$r3 = \$r3, 536870911 \(0x1fffffff\);;

    1a58:	59 76 63 07                                     	xorno \$a24 = \$a25, \$a25;;

    1a5c:	9a 26 67 07                                     	xioro \$a25 = \$a26, \$a26;;

    1a60:	84 c0 13 72                                     	xorrbod \$r4 = \$r4;;

    1a64:	45 c0 13 72                                     	xorrhqd \$r4 = \$r5;;

    1a68:	05 c0 17 72                                     	xorrwpd \$r5 = \$r5;;

    1a6c:	86 11 19 7c                                     	xorw \$r6 = \$r6, \$r6;;

    1a70:	07 f0 1c 7c                                     	xorw \$r7 = \$r7, -64 \(0xffffffc0\);;

    1a74:	08 00 1c fc 00 00 80 07                         	xorw \$r7 = \$r8, -8589934592 \(0xfffffffe00000000\);;

    1a7c:	00 e0 6b 78                                     	xrecvo.f \$a26;;

    1a80:	db e6 6e 07                                     	xsbmm8dq \$a27 = \$a27, \$a27;;

    1a84:	1c f7 72 07                                     	xsbmmt8dq \$a28 = \$a28, \$a28;;

    1a88:	40 e7 03 77                                     	xsendo.b \$a29;;

    1a8c:	40 e7 77 7e                                     	xsendrecvo.f.b \$a29, \$a29;;

    1a90:	08 e2 7b 35                                     	xso \$r8\[\$r8\] = \$a30;;

    1a94:	c9 ff 79 b5 ff ff ff 9f ff ff ff 18             	xso 2305843009213693951 \(0x1fffffffffffffff\)\[\$r9\] = \$a30;;

    1aa0:	49 62 7b b5 00 00 00 98 00 00 80 1f             	xso.mtc \$r9\? -1125899906842624 \(0xfffc000000000000\)\[\$r9\] = \$a30;;

    1aac:	8a 72 7f b5 00 00 80 1f                         	xso.mfc \$r10\? -8388608 \(0xff800000\)\[\$r10\] = \$a31;;

    1ab4:	8b 02 7f 35                                     	xso.dnez \$r10\? \[\$r11\] = \$a31;;

    1ab8:	0b f0 7d 35                                     	xso -64 \(0xffffffc0\)\[\$r11\] = \$a31;;

    1abc:	0b 00 81 b5 00 00 80 1f                         	xso -8589934592 \(0xfffffffe00000000\)\[\$r11\] = \$a32;;

    1ac4:	c0 ff 81 ee ff ff ff 87 ff ff ff 00             	xsplatdo \$a32 = 2305843009213693951 \(0x1fffffffffffffff\);;

    1ad0:	3c 00 81 ee 00 00 00 00                         	xsplatdo \$a32 = -549755813888 \(0xffffff8000000000\);;

    1ad8:	00 f0 85 6e                                     	xsplatdo \$a33 = -4096 \(0xfffff000\);;

    1adc:	40 18 b1 07                                     	xsplatov.td \$a44a45a46a47 = \$a33;;

    1ae0:	40 18 70 07                                     	xsplatox.zd \$a28a29 = \$a33;;

    1ae4:	80 08 c1 06                                     	xsx48bw \$a48a49a50a51 = \$a34;;

    1ae8:	00 0d 88 06                                     	xtrunc48wb \$a34 = \$a52a53a54a55;;

    1aec:	e3 48 8b 07                                     	xxoro \$a34 = \$a35, \$a35;;

    1af0:	c0 08 e5 06                                     	xzx48bw \$a56a57a58a59 = \$a35;;

    1af4:	cc 3f 30 78                                     	zxbd \$r12 = \$r12;;

    1af8:	0d f0 37 64                                     	zxhd \$r13 = \$r13;;

    1afc:	0e 50 3a 74                                     	zxlbhq \$r14 = \$r14;;

    1b00:	0f 40 3e 74                                     	zxlhwp \$r15 = \$r15;;

    1b04:	10 50 42 75                                     	zxmbhq \$r16 = \$r16;;

    1b08:	11 40 42 75                                     	zxmhwp \$r16 = \$r17;;

    1b0c:	d1 ff 44 78                                     	zxwd \$r17 = \$r17;;

