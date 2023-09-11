	##-----------------------------------------------------------
	## Generating test.s from MDS
	## (c) Copyright 2010-2018 Kalray SA.
	##-----------------------------------------------------------

#	Option: ''

##	target-core:	kv3-1

	.section .text

	.align 8
	.proc	main
	.global	main
main:
	abdd $r0 = $r0r1.lo, 2305843009213693951
	;;
	abdd $r0r1r2r3.x = $r1, $r0r1.hi
	;;
	abdd $r0r1r2r3.y = $r2, -64
	;;
	abdd $r2r3.lo = $r0r1r2r3.z, -8589934592
	;;
	abdd $r3 = $r2r3.hi, 536870911
	;;
	abdhq $r0r1r2r3.t = $r4, $r4r5.lo
	;;
	abdhq $r4r5r6r7.x = $r5, 536870911.@
	;;
	abdwp $r4r5.hi = $r4r5r6r7.y, $r6
	;;
	abdwp $r6r7.lo = $r4r5r6r7.z, 536870911
	;;
	abdw $r7 = $r6r7.hi, $r4r5r6r7.t
	;;
	abdw $r8 = $r8r9.lo, -64
	;;
	abdw $r8r9r10r11.x = $r9, -8589934592
	;;
	absd $r8r9.hi = $r8r9r10r11.y
	;;
	abshq $r10 = $r10r11.lo
	;;
	abswp $r8r9r10r11.z = $r11
	;;
	absw $r10r11.hi = $r8r9r10r11.t
	;;
	acswapd $r12[$sp] = $r0r1
	;;
	acswapd 2305843009213693951[$r13] = $r0r1r2r3.lo
	;;
	acswapd.dnez $tp? -1125899906842624[$r14] = $r2r3
	;;
	acswapd.deqz $fp? -8388608[$r15] = $r0r1r2r3.hi
	;;
	acswapd.dltz $rp? [$r16] = $r4r5
	;;
	acswapd -64[$r16r17.lo] = $r4r5r6r7.lo
	;;
	acswapd -8589934592[$r16r17r18r19.x] = $r6r7
	;;
	acswapw.xs $r17[$r16r17.hi] = $r4r5r6r7.hi
	;;
	acswapw 2305843009213693951[$r16r17r18r19.y] = $r8r9
	;;
	acswapw.dgez $r18? -1125899906842624[$r18r19.lo] = $r8r9r10r11.lo
	;;
	acswapw.dlez $r16r17r18r19.z? -8388608[$r19] = $r10r11
	;;
	acswapw.dgtz $r18r19.hi? [$r16r17r18r19.t] = $r8r9r10r11.hi
	;;
	acswapw -64[$r20] = $r12r13
	;;
	acswapw -8589934592[$r20r21.lo] = $r12r13r14r15.lo
	;;
	addcd.i $r20r21r22r23.x = $r21, $r20r21.hi
	;;
	addcd.i $r20r21r22r23.y = $r22, 536870911
	;;
	addcd $r22r23.lo = $r20r21r22r23.z, $r23
	;;
	addcd $r22r23.hi = $r20r21r22r23.t, 536870911
	;;
	addd $r24 = $r24r25.lo, 2305843009213693951
	;;
	addd $r24r25r26r27.x = $r25, $r24r25.hi
	;;
	addd $r24r25r26r27.y = $r26, -64
	;;
	addd $r26r27.lo = $r24r25r26r27.z, -8589934592
	;;
	addd $r27 = $r26r27.hi, 536870911.@
	;;
	addhcp.c $r24r25r26r27.t = $r28, $r28r29.lo
	;;
	addhcp.c $r28r29r30r31.x = $r29, 536870911
	;;
	addhq $r28r29.hi = $r28r29r30r31.y, $r30
	;;
	addhq $r30r31.lo = $r28r29r30r31.z, 536870911.@
	;;
	addsd $r31 = $r30r31.hi, 2305843009213693951
	;;
	addsd $r28r29r30r31.t = $r32, $r32r33.lo
	;;
	addsd $r32r33r34r35.x = $r33, -64
	;;
	addsd $r32r33.hi = $r32r33r34r35.y, -8589934592
	;;
	addshq $r34 = $r34r35.lo, $r32r33r34r35.z
	;;
	addshq $r35 = $r34r35.hi, 536870911
	;;
	addswp $r32r33r34r35.t = $r36, $r36r37.lo
	;;
	addswp $r36r37r38r39.x = $r37, 536870911.@
	;;
	addsw $r36r37.hi = $r36r37r38r39.y, $r38
	;;
	addsw $r38r39.lo = $r36r37r38r39.z, 536870911
	;;
	adduwd $r39 = $r38r39.hi, $r36r37r38r39.t
	;;
	adduwd $r40 = $r40r41.lo, 536870911
	;;
	addwc.c $r40r41r42r43.x = $r41, $r40r41.hi
	;;
	addwc.c $r40r41r42r43.y = $r42, 536870911.@
	;;
	addwd $r42r43.lo = $r40r41r42r43.z, $r43
	;;
	addwd $r42r43.hi = $r40r41r42r43.t, 536870911
	;;
	addwp $r44 = $r44r45.lo, $r44r45r46r47.x
	;;
	addwp $r45 = $r44r45.hi, 536870911.@
	;;
	addw $r44r45r46r47.y = $r46, $r46r47.lo
	;;
	addw $r44r45r46r47.z = $r47, -64
	;;
	addw $r46r47.hi = $r44r45r46r47.t, -8589934592
	;;
	addx16d $r48 = $r48r49.lo, $r48r49r50r51.x
	;;
	addx16d $r49 = $r48r49.hi, 536870911
	;;
	addx16hq $r48r49r50r51.y = $r50, $r50r51.lo
	;;
	addx16hq $r48r49r50r51.z = $r51, 536870911.@
	;;
	addx16uwd $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	addx16uwd $r52r53.lo = $r52r53r54r55.x, 536870911
	;;
	addx16wd $r53 = $r52r53.hi, $r52r53r54r55.y
	;;
	addx16wd $r54 = $r54r55.lo, 536870911
	;;
	addx16wp $r52r53r54r55.z = $r55, $r54r55.hi
	;;
	addx16wp $r52r53r54r55.t = $r56, 536870911
	;;
	addx16w $r56r57.lo = $r56r57r58r59.x, $r57
	;;
	addx16w $r56r57.hi = $r56r57r58r59.y, 536870911
	;;
	addx2d $r58 = $r58r59.lo, $r56r57r58r59.z
	;;
	addx2d $r59 = $r58r59.hi, 536870911.@
	;;
	addx2hq $r56r57r58r59.t = $r60, $r60r61.lo
	;;
	addx2hq $r60r61r62r63.x = $r61, 536870911
	;;
	addx2uwd $r60r61.hi = $r60r61r62r63.y, $r62
	;;
	addx2uwd $r62r63.lo = $r60r61r62r63.z, 536870911
	;;
	addx2wd $r63 = $r62r63.hi, $r60r61r62r63.t
	;;
	addx2wd $r0 = $r0r1.lo, 536870911
	;;
	addx2wp $r0r1r2r3.x = $r1, $r0r1.hi
	;;
	addx2wp $r0r1r2r3.y = $r2, 536870911.@
	;;
	addx2w $r2r3.lo = $r0r1r2r3.z, $r3
	;;
	addx2w $r2r3.hi = $r0r1r2r3.t, 536870911
	;;
	addx4d $r4 = $r4r5.lo, $r4r5r6r7.x
	;;
	addx4d $r5 = $r4r5.hi, 536870911
	;;
	addx4hq $r4r5r6r7.y = $r6, $r6r7.lo
	;;
	addx4hq $r4r5r6r7.z = $r7, 536870911.@
	;;
	addx4uwd $r6r7.hi = $r4r5r6r7.t, $r8
	;;
	addx4uwd $r8r9.lo = $r8r9r10r11.x, 536870911
	;;
	addx4wd $r9 = $r8r9.hi, $r8r9r10r11.y
	;;
	addx4wd $r10 = $r10r11.lo, 536870911
	;;
	addx4wp $r8r9r10r11.z = $r11, $r10r11.hi
	;;
	addx4wp $r8r9r10r11.t = $r12, 536870911
	;;
	addx4w $sp = $r13, $tp
	;;
	addx4w $r14 = $fp, 536870911
	;;
	addx8d $r15 = $rp, $r16
	;;
	addx8d $r16r17.lo = $r16r17r18r19.x, 536870911.@
	;;
	addx8hq $r17 = $r16r17.hi, $r16r17r18r19.y
	;;
	addx8hq $r18 = $r18r19.lo, 536870911
	;;
	addx8uwd $r16r17r18r19.z = $r19, $r18r19.hi
	;;
	addx8uwd $r16r17r18r19.t = $r20, 536870911
	;;
	addx8wd $r20r21.lo = $r20r21r22r23.x, $r21
	;;
	addx8wd $r20r21.hi = $r20r21r22r23.y, 536870911
	;;
	addx8wp $r22 = $r22r23.lo, $r20r21r22r23.z
	;;
	addx8wp $r23 = $r22r23.hi, 536870911.@
	;;
	addx8w $r20r21r22r23.t = $r24, $r24r25.lo
	;;
	addx8w $r24r25r26r27.x = $r25, 536870911
	;;
	aladdd $r24r25.hi[$r24r25r26r27.y] = $r26
	;;
	aladdd 2305843009213693951[$r26r27.lo] = $r24r25r26r27.z
	;;
	aladdd.odd $r27? -1125899906842624[$r26r27.hi] = $r24r25r26r27.t
	;;
	aladdd.even $r28? -8388608[$r28r29.lo] = $r28r29r30r31.x
	;;
	aladdd.wnez $r29? [$r28r29.hi] = $r28r29r30r31.y
	;;
	aladdd -64[$r30] = $r30r31.lo
	;;
	aladdd -8589934592[$r28r29r30r31.z] = $r31
	;;
	aladdw.xs $r30r31.hi[$r28r29r30r31.t] = $r32
	;;
	aladdw 2305843009213693951[$r32r33.lo] = $r32r33r34r35.x
	;;
	aladdw.weqz $r33? -1125899906842624[$r32r33.hi] = $r32r33r34r35.y
	;;
	aladdw.wltz $r34? -8388608[$r34r35.lo] = $r32r33r34r35.z
	;;
	aladdw.wgez $r35? [$r34r35.hi] = $r32r33r34r35.t
	;;
	aladdw -64[$r36] = $r36r37.lo
	;;
	aladdw -8589934592[$r36r37r38r39.x] = $r37
	;;
	alclrd $r36r37.hi = $r36r37r38r39.y[$r38]
	;;
	alclrd.wlez $r38r39.lo? $r36r37r38r39.z = -1125899906842624[$r39]
	;;
	alclrd.wgtz $r38r39.hi? $r36r37r38r39.t = -8388608[$r40]
	;;
	alclrd.dnez $r40r41.lo? $r40r41r42r43.x = [$r41]
	;;
	alclrd $r40r41.hi = 2305843009213693951[$r40r41r42r43.y]
	;;
	alclrd $r42 = -64[$r42r43.lo]
	;;
	alclrd $r40r41r42r43.z = -8589934592[$r43]
	;;
	alclrw.xs $r42r43.hi = $r40r41r42r43.t[$r44]
	;;
	alclrw.deqz $r44r45.lo? $r44r45r46r47.x = -1125899906842624[$r45]
	;;
	alclrw.dltz $r44r45.hi? $r44r45r46r47.y = -8388608[$r46]
	;;
	alclrw.dgez $r46r47.lo? $r44r45r46r47.z = [$r47]
	;;
	alclrw $r46r47.hi = 2305843009213693951[$r44r45r46r47.t]
	;;
	alclrw $r48 = -64[$r48r49.lo]
	;;
	alclrw $r48r49r50r51.x = -8589934592[$r49]
	;;
	aligno $r0r1r2r3 = $a0, $a1, 7
	;;
	aligno $r4r5r6r7 = $a0a1.lo, $a0a1.hi, $r48r49.hi
	;;
	aligno $r8r9r10r11 = $a0a1a2a3.y, $a0a1a2a3.x, 7
	;;
	aligno $r12r13r14r15 = $a3, $a2, $r48r49r50r51.y
	;;
	alignv $a0 = $a2a3.lo, $a2a3.hi, 7
	;;
	alignv $a0a1.lo = $a0a1a2a3.z, $a0a1a2a3.t, $r50
	;;
	alignv $a0a1a2a3.x = $a5, $a4, 7
	;;
	alignv $a1 = $a4a5.hi, $a4a5.lo, $r50r51.lo
	;;
	andd $r48r49r50r51.z = $r51, 2305843009213693951
	;;
	andd $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	andd $r52r53.lo = $r52r53r54r55.x, -64
	;;
	andd $r53 = $r52r53.hi, -8589934592
	;;
	andd $r52r53r54r55.y = $r54, 536870911
	;;
	andnd $r54r55.lo = $r52r53r54r55.z, 2305843009213693951
	;;
	andnd $r55 = $r54r55.hi, $r52r53r54r55.t
	;;
	andnd $r56 = $r56r57.lo, -64
	;;
	andnd $r56r57r58r59.x = $r57, -8589934592
	;;
	andnd $r56r57.hi = $r56r57r58r59.y, 536870911.@
	;;
	andnw $r58 = $r58r59.lo, $r56r57r58r59.z
	;;
	andnw $r59 = $r58r59.hi, -64
	;;
	andnw $r56r57r58r59.t = $r60, -8589934592
	;;
	andw $r60r61.lo = $r60r61r62r63.x, $r61
	;;
	andw $r60r61.hi = $r60r61r62r63.y, -64
	;;
	andw $r62 = $r62r63.lo, -8589934592
	;;
	avghq $r60r61r62r63.z = $r63, $r62r63.hi
	;;
	avghq $r60r61r62r63.t = $r0, 536870911
	;;
	avgrhq $r0r1.lo = $r0r1r2r3.x, $r1
	;;
	avgrhq $r0r1.hi = $r0r1r2r3.y, 536870911.@
	;;
	avgruhq $r2 = $r2r3.lo, $r0r1r2r3.z
	;;
	avgruhq $r3 = $r2r3.hi, 536870911
	;;
	avgruwp $r0r1r2r3.t = $r4, $r4r5.lo
	;;
	avgruwp $r4r5r6r7.x = $r5, 536870911.@
	;;
	avgruw $r4r5.hi = $r4r5r6r7.y, $r6
	;;
	avgruw $r6r7.lo = $r4r5r6r7.z, 536870911
	;;
	avgrwp $r7 = $r6r7.hi, $r4r5r6r7.t
	;;
	avgrwp $r8 = $r8r9.lo, 536870911
	;;
	avgrw $r8r9r10r11.x = $r9, $r8r9.hi
	;;
	avgrw $r8r9r10r11.y = $r10, 536870911
	;;
	avguhq $r10r11.lo = $r8r9r10r11.z, $r11
	;;
	avguhq $r10r11.hi = $r8r9r10r11.t, 536870911.@
	;;
	avguwp $r12 = $sp, $r13
	;;
	avguwp $tp = $r14, 536870911
	;;
	avguw $fp = $r15, $rp
	;;
	avguw $r16 = $r16r17.lo, 536870911
	;;
	avgwp $r16r17r18r19.x = $r17, $r16r17.hi
	;;
	avgwp $r16r17r18r19.y = $r18, 536870911.@
	;;
	avgw $r18r19.lo = $r16r17r18r19.z, $r19
	;;
	avgw $r18r19.hi = $r16r17r18r19.t, 536870911
	;;
	await
	;;
	barrier
	;;
	call -33554432
	;;
	cbsd $r20 = $r20r21.lo
	;;
	cbswp $r20r21r22r23.x = $r21
	;;
	cbsw $r20r21.hi = $r20r21r22r23.y
	;;
	cb.dlez $r22? -32768
	;;
	clrf $r22r23.lo = $r20r21r22r23.z, 7, 7
	;;
	clsd $r23 = $r22r23.hi
	;;
	clswp $r20r21r22r23.t = $r24
	;;
	clsw $r24r25.lo = $r24r25r26r27.x
	;;
	clzd $r25 = $r24r25.hi
	;;
	clzwp $r24r25r26r27.y = $r26
	;;
	clzw $r26r27.lo = $r24r25r26r27.z
	;;
	cmoved.dgtz $r27? $r26r27.hi = 2305843009213693951
	;;
	cmoved.odd $r24r25r26r27.t? $r28 = $r28r29.lo
	;;
	cmoved.even $r28r29r30r31.x? $r29 = -64
	;;
	cmoved.wnez $r28r29.hi? $r28r29r30r31.y = -8589934592
	;;
	cmovehq.nez $r30? $r30r31.lo = $r28r29r30r31.z
	;;
	cmovewp.eqz $r31? $r30r31.hi = $r28r29r30r31.t
	;;
	cmuldt $r14r15 = $r32, 2305843009213693951
	;;
	cmuldt $r12r13r14r15.hi = $r32r33.lo, $r32r33r34r35.x
	;;
	cmuldt $r16r17 = $r33, -64
	;;
	cmuldt $r16r17r18r19.lo = $r32r33.hi, -8589934592
	;;
	cmulghxdt $r18r19 = $r32r33r34r35.y, $r34
	;;
	cmulglxdt $r16r17r18r19.hi = $r34r35.lo, $r32r33r34r35.z
	;;
	cmulgmxdt $r20r21 = $r35, $r34r35.hi
	;;
	cmulxdt $r20r21r22r23.lo = $r32r33r34r35.t, $r36
	;;
	compd.ne $r36r37.lo = $r36r37r38r39.x, 2305843009213693951
	;;
	compd.eq $r37 = $r36r37.hi, $r36r37r38r39.y
	;;
	compd.lt $r38 = $r38r39.lo, -64
	;;
	compd.ge $r36r37r38r39.z = $r39, -8589934592
	;;
	compnhq.le $r38r39.hi = $r36r37r38r39.t, $r40
	;;
	compnhq.gt $r40r41.lo = $r40r41r42r43.x, 536870911
	;;
	compnwp.ltu $r41 = $r40r41.hi, $r40r41r42r43.y
	;;
	compnwp.geu $r42 = $r42r43.lo, 536870911.@
	;;
	compuwd.leu $r40r41r42r43.z = $r43, $r42r43.hi
	;;
	compuwd.gtu $r40r41r42r43.t = $r44, 536870911
	;;
	compwd.all $r44r45.lo = $r44r45r46r47.x, $r45
	;;
	compwd.nall $r44r45.hi = $r44r45r46r47.y, 536870911
	;;
	compw.any $r46 = $r46r47.lo, $r44r45r46r47.z
	;;
	compw.none $r47 = $r46r47.hi, 536870911
	;;
	convdhv0.rn.sat $a0_lo = $a0a1a2a3
	;;
	convdhv1.ru.satu $a0_hi = $a4a5a6a7
	;;
	convwbv0.rd.sat $a0_x = $a8a9a10a11
	;;
	convwbv1.rz.satu $a0_y = $a12a13a14a15
	;;
	convwbv2.rhu.sat $a0_z = $a16a17a18a19
	;;
	convwbv3.rn.satu $a0_t = $a20a21a22a23
	;;
	copyd $r44r45r46r47.t = $r48
	;;
	copyo $r16r17r18r19 = $r20r21r22r23
	;;
	copyq $r22r23 = $r48r49.lo, $r48r49r50r51.x
	;;
	copyw $r49 = $r48r49.hi
	;;
	crcbellw $r48r49r50r51.y = $r50, $r50r51.lo
	;;
	crcbellw $r48r49r50r51.z = $r51, 536870911
	;;
	crcbelmw $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	crcbelmw $r52r53.lo = $r52r53r54r55.x, 536870911
	;;
	crclellw $r53 = $r52r53.hi, $r52r53r54r55.y
	;;
	crclellw $r54 = $r54r55.lo, 536870911
	;;
	crclelmw $r52r53r54r55.z = $r55, $r54r55.hi
	;;
	crclelmw $r52r53r54r55.t = $r56, 536870911
	;;
	ctzd $r56r57.lo = $r56r57r58r59.x
	;;
	ctzwp $r57 = $r56r57.hi
	;;
	ctzw $r56r57r58r59.y = $r58
	;;
	d1inval
	;;
	dinvall 2305843009213693951[$r58r59.lo]
	;;
	dinvall.weqz $r56r57r58r59.z? -1125899906842624[$r59]
	;;
	dinvall.wltz $r58r59.hi? -8388608[$r56r57r58r59.t]
	;;
	dinvall.wgez $r60? [$r60r61.lo]
	;;
	dinvall $r60r61r62r63.x[$r61]
	;;
	dinvall -64[$r60r61.hi]
	;;
	dinvall -8589934592[$r60r61r62r63.y]
	;;
	dot2suwdp $r20r21r22r23.hi = $r24r25, $r24r25r26r27.lo
	;;
	dot2suwd $r62 = $r62r63.lo, 2305843009213693951
	;;
	dot2suwd $r60r61r62r63.z = $r63, $r62r63.hi
	;;
	dot2suwd $r60r61r62r63.t = $r0, -64
	;;
	dot2suwd $r0r1.lo = $r0r1r2r3.x, -8589934592
	;;
	dot2uwdp $r26r27 = $r24r25r26r27.hi, $r28r29
	;;
	dot2uwd $r1 = $r0r1.hi, 2305843009213693951
	;;
	dot2uwd $r0r1r2r3.y = $r2, $r2r3.lo
	;;
	dot2uwd $r0r1r2r3.z = $r3, -64
	;;
	dot2uwd $r2r3.hi = $r0r1r2r3.t, -8589934592
	;;
	dot2wdp $r28r29r30r31.lo = $r30r31, $r28r29r30r31.hi
	;;
	dot2wd $r4 = $r4r5.lo, 2305843009213693951
	;;
	dot2wd $r4r5r6r7.x = $r5, $r4r5.hi
	;;
	dot2wd $r4r5r6r7.y = $r6, -64
	;;
	dot2wd $r6r7.lo = $r4r5r6r7.z, -8589934592
	;;
	dot2wzp $r32r33 = $r32r33r34r35.lo, $r34r35
	;;
	dot2w $r7 = $r6r7.hi, 2305843009213693951
	;;
	dot2w $r4r5r6r7.t = $r8, $r8r9.lo
	;;
	dot2w $r8r9r10r11.x = $r9, -64
	;;
	dot2w $r8r9.hi = $r8r9r10r11.y, -8589934592
	;;
	dtouchl 2305843009213693951[$r10]
	;;
	dtouchl.wlez $r10r11.lo? -1125899906842624[$r8r9r10r11.z]
	;;
	dtouchl.wgtz $r11? -8388608[$r10r11.hi]
	;;
	dtouchl.dnez $r8r9r10r11.t? [$r12]
	;;
	dtouchl $sp[$r13]
	;;
	dtouchl -64[$tp]
	;;
	dtouchl -8589934592[$r14]
	;;
	dzerol 2305843009213693951[$fp]
	;;
	dzerol.deqz $r15? -1125899906842624[$rp]
	;;
	dzerol.dltz $r16? -8388608[$r16r17.lo]
	;;
	dzerol.dgez $r16r17r18r19.x? [$r17]
	;;
	dzerol $r16r17.hi[$r16r17r18r19.y]
	;;
	dzerol -64[$r18]
	;;
	dzerol -8589934592[$r18r19.lo]
	;;
	errop
	;;
	extfs $r16r17r18r19.z = $r19, 7, 7
	;;
	extfz $r18r19.hi = $r16r17r18r19.t, 7, 7
	;;
	fabsd $r20 = $r20r21.lo
	;;
	fabshq $r20r21r22r23.x = $r21
	;;
	fabswp $r20r21.hi = $r20r21r22r23.y
	;;
	fabsw $r22 = $r22r23.lo
	;;
	fadddc.c.rn $r32r33r34r35.hi = $r36r37, $r36r37r38r39.lo
	;;
	fadddc.ru.s $r38r39 = $r36r37r38r39.hi, $r40r41
	;;
	fadddp.rd $r40r41r42r43.lo = $r42r43, $r40r41r42r43.hi
	;;
	faddd $r20r21r22r23.z = $r23, 2305843009213693951
	;;
	faddd $r22r23.hi = $r20r21r22r23.t, -64
	;;
	faddd $r24 = $r24r25.lo, -8589934592
	;;
	faddd.rz.s $r24r25r26r27.x = $r25, $r24r25.hi
	;;
	faddhq $r24r25r26r27.y = $r26, 2305843009213693951
	;;
	faddhq $r26r27.lo = $r24r25r26r27.z, -64
	;;
	faddhq $r27 = $r26r27.hi, -8589934592
	;;
	faddhq.rna $r24r25r26r27.t = $r28, $r28r29.lo
	;;
	faddwc.c $r28r29r30r31.x = $r29, 2305843009213693951
	;;
	faddwc.c $r28r29.hi = $r28r29r30r31.y, -64
	;;
	faddwc.c $r30 = $r30r31.lo, -8589934592
	;;
	faddwc.c.rnz.s $r28r29r30r31.z = $r31, $r30r31.hi
	;;
	faddwcp.c.ro $r44r45 = $r44r45r46r47.lo, $r46r47
	;;
	faddwcp.s $r44r45r46r47.hi = $r48r49, $r48r49r50r51.lo
	;;
	faddwc.rn $r28r29r30r31.t = $r32, $r32r33.lo
	;;
	faddwp $r32r33r34r35.x = $r33, 2305843009213693951
	;;
	faddwp $r32r33.hi = $r32r33r34r35.y, -64
	;;
	faddwp $r34 = $r34r35.lo, -8589934592
	;;
	faddwp.ru.s $r32r33r34r35.z = $r35, $r34r35.hi
	;;
	faddwq.rd $r50r51 = $r48r49r50r51.hi, $r52r53
	;;
	faddw $r32r33r34r35.t = $r36, 2305843009213693951
	;;
	faddw $r36r37.lo = $r36r37r38r39.x, -64
	;;
	faddw $r37 = $r36r37.hi, -8589934592
	;;
	faddw.rz.s $r36r37r38r39.y = $r38, $r38r39.lo
	;;
	fcdivd $r36r37r38r39.z = $r52r53r54r55.lo
	;;
	fcdivwp.s $r39 = $r54r55
	;;
	fcdivw $r38r39.hi = $r52r53r54r55.hi
	;;
	fcompd.one $r36r37r38r39.t = $r40, $r40r41.lo
	;;
	fcompd.ueq $r40r41r42r43.x = $r41, 536870911
	;;
	fcompnhq.oeq $r40r41.hi = $r40r41r42r43.y, $r42
	;;
	fcompnhq.une $r42r43.lo = $r40r41r42r43.z, 536870911
	;;
	fcompnwp.olt $r43 = $r42r43.hi, $r40r41r42r43.t
	;;
	fcompnwp.uge $r44 = $r44r45.lo, 536870911.@
	;;
	fcompw.oge $r44r45r46r47.x = $r45, $r44r45.hi
	;;
	fcompw.ult $r44r45r46r47.y = $r46, 536870911
	;;
	fdot2wdp.rna.s $r56r57 = $r56r57r58r59.lo, $r58r59
	;;
	fdot2wd $r46r47.lo = $r44r45r46r47.z, 2305843009213693951
	;;
	fdot2wd $r47 = $r46r47.hi, -64
	;;
	fdot2wd $r44r45r46r47.t = $r48, -8589934592
	;;
	fdot2wd.rnz $r48r49.lo = $r48r49r50r51.x, $r49
	;;
	fdot2wzp.ro.s $r56r57r58r59.hi = $r60r61, $r60r61r62r63.lo
	;;
	fdot2w $r48r49.hi = $r48r49r50r51.y, 2305843009213693951
	;;
	fdot2w $r50 = $r50r51.lo, -64
	;;
	fdot2w $r48r49r50r51.z = $r51, -8589934592
	;;
	fdot2w $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	fence
	;;
	ffmad $r52r53.lo = $r52r53r54r55.x, 2305843009213693951
	;;
	ffmad $r53 = $r52r53.hi, -64
	;;
	ffmad $r52r53r54r55.y = $r54, -8589934592
	;;
	ffmad.rn.s $r54r55.lo = $r52r53r54r55.z, $r55
	;;
	ffmahq $r54r55.hi = $r52r53r54r55.t, 2305843009213693951
	;;
	ffmahq $r56 = $r56r57.lo, -64
	;;
	ffmahq $r56r57r58r59.x = $r57, -8589934592
	;;
	ffmahq.ru $r56r57.hi = $r56r57r58r59.y, $r58
	;;
	ffmahwq $r62r63 = $r58r59.lo, 2305843009213693951
	;;
	ffmahwq $r60r61r62r63.hi = $r56r57r58r59.z, -64
	;;
	ffmahwq $r0r1 = $r59, -8589934592
	;;
	ffmahwq.rd.s $r0r1r2r3.lo = $r58r59.hi, $r56r57r58r59.t
	;;
	ffmahw $r60 = $r60r61.lo, 2305843009213693951
	;;
	ffmahw $r60r61r62r63.x = $r61, -64
	;;
	ffmahw $r60r61.hi = $r60r61r62r63.y, -8589934592
	;;
	ffmahw.rz $r62 = $r62r63.lo, $r60r61r62r63.z
	;;
	ffmawdp $r2r3 = $r63, 2305843009213693951
	;;
	ffmawdp $r0r1r2r3.hi = $r62r63.hi, -64
	;;
	ffmawdp $r4r5 = $r60r61r62r63.t, -8589934592
	;;
	ffmawdp.rna.s $r4r5r6r7.lo = $r0, $r0r1.lo
	;;
	ffmawd $r0r1r2r3.x = $r1, 2305843009213693951
	;;
	ffmawd $r0r1.hi = $r0r1r2r3.y, -64
	;;
	ffmawd $r2 = $r2r3.lo, -8589934592
	;;
	ffmawd.rnz $r0r1r2r3.z = $r3, $r2r3.hi
	;;
	ffmawp $r0r1r2r3.t = $r4, 2305843009213693951
	;;
	ffmawp $r4r5.lo = $r4r5r6r7.x, -64
	;;
	ffmawp $r5 = $r4r5.hi, -8589934592
	;;
	ffmawp.ro.s $r4r5r6r7.y = $r6, $r6r7.lo
	;;
	ffmaw $r4r5r6r7.z = $r7, 2305843009213693951
	;;
	ffmaw $r6r7.hi = $r4r5r6r7.t, -64
	;;
	ffmaw $r8 = $r8r9.lo, -8589934592
	;;
	ffmaw $r8r9r10r11.x = $r9, $r8r9.hi
	;;
	ffmsd $r8r9r10r11.y = $r10, 2305843009213693951
	;;
	ffmsd $r10r11.lo = $r8r9r10r11.z, -64
	;;
	ffmsd $r11 = $r10r11.hi, -8589934592
	;;
	ffmsd.rn.s $r8r9r10r11.t = $r12, $sp
	;;
	ffmshq $r13 = $tp, 2305843009213693951
	;;
	ffmshq $r14 = $fp, -64
	;;
	ffmshq $r15 = $rp, -8589934592
	;;
	ffmshq.ru $r16 = $r16r17.lo, $r16r17r18r19.x
	;;
	ffmshwq $r6r7 = $r17, 2305843009213693951
	;;
	ffmshwq $r4r5r6r7.hi = $r16r17.hi, -64
	;;
	ffmshwq $r8r9 = $r16r17r18r19.y, -8589934592
	;;
	ffmshwq.rd.s $r8r9r10r11.lo = $r18, $r18r19.lo
	;;
	ffmshw $r16r17r18r19.z = $r19, 2305843009213693951
	;;
	ffmshw $r18r19.hi = $r16r17r18r19.t, -64
	;;
	ffmshw $r20 = $r20r21.lo, -8589934592
	;;
	ffmshw.rz $r20r21r22r23.x = $r21, $r20r21.hi
	;;
	ffmswdp $r10r11 = $r20r21r22r23.y, 2305843009213693951
	;;
	ffmswdp $r8r9r10r11.hi = $r22, -64
	;;
	ffmswdp $r12r13 = $r22r23.lo, -8589934592
	;;
	ffmswdp.rna.s $r12r13r14r15.lo = $r20r21r22r23.z, $r23
	;;
	ffmswd $r22r23.hi = $r20r21r22r23.t, 2305843009213693951
	;;
	ffmswd $r24 = $r24r25.lo, -64
	;;
	ffmswd $r24r25r26r27.x = $r25, -8589934592
	;;
	ffmswd.rnz $r24r25.hi = $r24r25r26r27.y, $r26
	;;
	ffmswp $r26r27.lo = $r24r25r26r27.z, 2305843009213693951
	;;
	ffmswp $r27 = $r26r27.hi, -64
	;;
	ffmswp $r24r25r26r27.t = $r28, -8589934592
	;;
	ffmswp.ro.s $r28r29.lo = $r28r29r30r31.x, $r29
	;;
	ffmsw $r28r29.hi = $r28r29r30r31.y, 2305843009213693951
	;;
	ffmsw $r30 = $r30r31.lo, -64
	;;
	ffmsw $r28r29r30r31.z = $r31, -8589934592
	;;
	ffmsw $r30r31.hi = $r28r29r30r31.t, $r32
	;;
	fixedd.rn.s $r32r33.lo = $r32r33r34r35.x, 7
	;;
	fixedud.ru $r33 = $r32r33.hi, 7
	;;
	fixeduwp.rd.s $r32r33r34r35.y = $r34, 7
	;;
	fixeduw.rz $r34r35.lo = $r32r33r34r35.z, 7
	;;
	fixedwp.rna.s $r35 = $r34r35.hi, 7
	;;
	fixedw.rnz $r32r33r34r35.t = $r36, 7
	;;
	floatd.ro.s $r36r37.lo = $r36r37r38r39.x, 7
	;;
	floatud $r37 = $r36r37.hi, 7
	;;
	floatuwp.rn.s $r36r37r38r39.y = $r38, 7
	;;
	floatuw.ru $r38r39.lo = $r36r37r38r39.z, 7
	;;
	floatwp.rd.s $r39 = $r38r39.hi, 7
	;;
	floatw.rz $r36r37r38r39.t = $r40, 7
	;;
	fmaxd $r40r41.lo = $r40r41r42r43.x, $r41
	;;
	fmaxhq $r40r41.hi = $r40r41r42r43.y, $r42
	;;
	fmaxwp $r42r43.lo = $r40r41r42r43.z, $r43
	;;
	fmaxw $r42r43.hi = $r40r41r42r43.t, $r44
	;;
	fmind $r44r45.lo = $r44r45r46r47.x, $r45
	;;
	fminhq $r44r45.hi = $r44r45r46r47.y, $r46
	;;
	fminwp $r46r47.lo = $r44r45r46r47.z, $r47
	;;
	fminw $r46r47.hi = $r44r45r46r47.t, $r48
	;;
	fmm212w.rna.s $r14r15 = $r48r49.lo, $r48r49r50r51.x
	;;
	fmma212w.rnz $r12r13r14r15.hi = $r49, $r48r49.hi
	;;
	fmma242hw0 $a0_lo = $a0a1, $a0a1.hi, $a0a1a2a3.y
	;;
	fmma242hw1 $a0_hi = $a0a1a2a3.lo, $a2, $a2a3.lo
	;;
	fmma242hw2 $a1_lo = $a2a3, $a0a1a2a3.z, $a3
	;;
	fmma242hw3 $a1_hi = $a0a1a2a3.hi, $a2a3.hi, $a0a1a2a3.t
	;;
	fmms212w.ro.s $r16r17 = $r48r49r50r51.y, $r50
	;;
	fmuld $r50r51.lo = $r48r49r50r51.z, 2305843009213693951
	;;
	fmuld $r51 = $r50r51.hi, -64
	;;
	fmuld $r48r49r50r51.t = $r52, -8589934592
	;;
	fmuld $r52r53.lo = $r52r53r54r55.x, $r53
	;;
	fmulhq $r52r53.hi = $r52r53r54r55.y, 2305843009213693951
	;;
	fmulhq $r54 = $r54r55.lo, -64
	;;
	fmulhq $r52r53r54r55.z = $r55, -8589934592
	;;
	fmulhq.rn.s $r54r55.hi = $r52r53r54r55.t, $r56
	;;
	fmulhwq $r16r17r18r19.lo = $r56r57.lo, 2305843009213693951
	;;
	fmulhwq $r18r19 = $r56r57r58r59.x, -64
	;;
	fmulhwq $r16r17r18r19.hi = $r57, -8589934592
	;;
	fmulhwq.ru $r20r21 = $r56r57.hi, $r56r57r58r59.y
	;;
	fmulhw $r58 = $r58r59.lo, 2305843009213693951
	;;
	fmulhw $r56r57r58r59.z = $r59, -64
	;;
	fmulhw $r58r59.hi = $r56r57r58r59.t, -8589934592
	;;
	fmulhw.rd.s $r60 = $r60r61.lo, $r60r61r62r63.x
	;;
	fmulwc.c $r61 = $r60r61.hi, 2305843009213693951
	;;
	fmulwc.c $r60r61r62r63.y = $r62, -64
	;;
	fmulwc.c $r62r63.lo = $r60r61r62r63.z, -8589934592
	;;
	fmulwc.c.rz $r63 = $r62r63.hi, $r60r61r62r63.t
	;;
	fmulwc $r0 = $r0r1.lo, 2305843009213693951
	;;
	fmulwc $r0r1r2r3.x = $r1, -64
	;;
	fmulwc $r0r1.hi = $r0r1r2r3.y, -8589934592
	;;
	fmulwc.rna.s $r2 = $r2r3.lo, $r0r1r2r3.z
	;;
	fmulwdc.c $r20r21r22r23.lo = $r3, 2305843009213693951
	;;
	fmulwdc.c $r22r23 = $r2r3.hi, -64
	;;
	fmulwdc.c $r20r21r22r23.hi = $r0r1r2r3.t, -8589934592
	;;
	fmulwdc.c.rnz $r24r25 = $r4, $r4r5.lo
	;;
	fmulwdc $r24r25r26r27.lo = $r4r5r6r7.x, 2305843009213693951
	;;
	fmulwdc $r26r27 = $r5, -64
	;;
	fmulwdc $r24r25r26r27.hi = $r4r5.hi, -8589934592
	;;
	fmulwdc.ro.s $r28r29 = $r4r5r6r7.y, $r6
	;;
	fmulwdp $r28r29r30r31.lo = $r6r7.lo, 2305843009213693951
	;;
	fmulwdp $r30r31 = $r4r5r6r7.z, -64
	;;
	fmulwdp $r28r29r30r31.hi = $r7, -8589934592
	;;
	fmulwdp $r32r33 = $r6r7.hi, $r4r5r6r7.t
	;;
	fmulwd $r8 = $r8r9.lo, 2305843009213693951
	;;
	fmulwd $r8r9r10r11.x = $r9, -64
	;;
	fmulwd $r8r9.hi = $r8r9r10r11.y, -8589934592
	;;
	fmulwd.rn.s $r10 = $r10r11.lo, $r8r9r10r11.z
	;;
	fmulwp $r11 = $r10r11.hi, 2305843009213693951
	;;
	fmulwp $r8r9r10r11.t = $r12, -64
	;;
	fmulwp $sp = $r13, -8589934592
	;;
	fmulwp.ru $tp = $r14, $fp
	;;
	fmulwq.rd.s $r32r33r34r35.lo = $r34r35, $r32r33r34r35.hi
	;;
	fmulw $r15 = $rp, 2305843009213693951
	;;
	fmulw $r16 = $r16r17.lo, -64
	;;
	fmulw $r16r17r18r19.x = $r17, -8589934592
	;;
	fmulw.rz $r16r17.hi = $r16r17r18r19.y, $r18
	;;
	fnarrow44wh.rna.s $a4 = $a4a5
	;;
	fnarrowdwp.rnz $r18r19.lo = $r36r37
	;;
	fnarrowdw.ro.s $r16r17r18r19.z = $r19
	;;
	fnarrowwhq $r18r19.hi = $r36r37r38r39.lo
	;;
	fnarrowwh.rn.s $r16r17r18r19.t = $r20
	;;
	fnegd $r20r21.lo = $r20r21r22r23.x
	;;
	fneghq $r21 = $r20r21.hi
	;;
	fnegwp $r20r21r22r23.y = $r22
	;;
	fnegw $r22r23.lo = $r20r21r22r23.z
	;;
	frecw.ru $r23 = $r22r23.hi
	;;
	frsrw.rd.s $r20r21r22r23.t = $r24
	;;
	fsbfdc.c.rz $r38r39 = $r36r37r38r39.hi, $r40r41
	;;
	fsbfdc.rna.s $r40r41r42r43.lo = $r42r43, $r40r41r42r43.hi
	;;
	fsbfdp.rnz $r44r45 = $r44r45r46r47.lo, $r46r47
	;;
	fsbfd $r24r25.lo = $r24r25r26r27.x, 2305843009213693951
	;;
	fsbfd $r25 = $r24r25.hi, -64
	;;
	fsbfd $r24r25r26r27.y = $r26, -8589934592
	;;
	fsbfd.ro.s $r26r27.lo = $r24r25r26r27.z, $r27
	;;
	fsbfhq $r26r27.hi = $r24r25r26r27.t, 2305843009213693951
	;;
	fsbfhq $r28 = $r28r29.lo, -64
	;;
	fsbfhq $r28r29r30r31.x = $r29, -8589934592
	;;
	fsbfhq $r28r29.hi = $r28r29r30r31.y, $r30
	;;
	fsbfwc.c $r30r31.lo = $r28r29r30r31.z, 2305843009213693951
	;;
	fsbfwc.c $r31 = $r30r31.hi, -64
	;;
	fsbfwc.c $r28r29r30r31.t = $r32, -8589934592
	;;
	fsbfwc.c.rn.s $r32r33.lo = $r32r33r34r35.x, $r33
	;;
	fsbfwcp.c.ru $r44r45r46r47.hi = $r48r49, $r48r49r50r51.lo
	;;
	fsbfwcp.rd.s $r50r51 = $r48r49r50r51.hi, $r52r53
	;;
	fsbfwc.rz $r32r33.hi = $r32r33r34r35.y, $r34
	;;
	fsbfwp $r34r35.lo = $r32r33r34r35.z, 2305843009213693951
	;;
	fsbfwp $r35 = $r34r35.hi, -64
	;;
	fsbfwp $r32r33r34r35.t = $r36, -8589934592
	;;
	fsbfwp.rna.s $r36r37.lo = $r36r37r38r39.x, $r37
	;;
	fsbfwq.rnz $r52r53r54r55.lo = $r54r55, $r52r53r54r55.hi
	;;
	fsbfw $r36r37.hi = $r36r37r38r39.y, 2305843009213693951
	;;
	fsbfw $r38 = $r38r39.lo, -64
	;;
	fsbfw $r36r37r38r39.z = $r39, -8589934592
	;;
	fsbfw.ro.s $r38r39.hi = $r36r37r38r39.t, $r40
	;;
	fscalewv $a4a5.lo = $a4a5a6a7.x
	;;
	fsdivd.s $r40r41.lo = $r56r57
	;;
	fsdivwp $r40r41r42r43.x = $r56r57r58r59.lo
	;;
	fsdivw.s $r41 = $r58r59
	;;
	fsrecd $r40r41.hi = $r40r41r42r43.y
	;;
	fsrecwp.s $r42 = $r42r43.lo
	;;
	fsrecw $r40r41r42r43.z = $r43
	;;
	fsrsrd $r42r43.hi = $r40r41r42r43.t
	;;
	fsrsrwp $r44 = $r44r45.lo
	;;
	fsrsrw $r44r45r46r47.x = $r45
	;;
	fwidenlhwp.s $r44r45.hi = $r44r45r46r47.y
	;;
	fwidenlhw $r46 = $r46r47.lo
	;;
	fwidenlwd.s $r44r45r46r47.z = $r47
	;;
	fwidenmhwp $r46r47.hi = $r44r45r46r47.t
	;;
	fwidenmhw.s $r48 = $r48r49.lo
	;;
	fwidenmwd $r48r49r50r51.x = $r49
	;;
	get $r48r49.hi = $pc
	;;
	get $r48r49r50r51.y = $pc
	;;
	goto -33554432
	;;
	i1invals 2305843009213693951[$r50]
	;;
	i1invals.dlez $r50r51.lo? -1125899906842624[$r48r49r50r51.z]
	;;
	i1invals.dgtz $r51? -8388608[$r50r51.hi]
	;;
	i1invals.odd $r48r49r50r51.t? [$r52]
	;;
	i1invals $r52r53.lo[$r52r53r54r55.x]
	;;
	i1invals -64[$r53]
	;;
	i1invals -8589934592[$r52r53.hi]
	;;
	i1inval
	;;
	icall $r52r53r54r55.y
	;;
	iget $r54
	;;
	igoto $r54r55.lo
	;;
	insf $r52r53r54r55.z = $r55, 7, 7
	;;
	iord $r54r55.hi = $r52r53r54r55.t, 2305843009213693951
	;;
	iord $r56 = $r56r57.lo, $r56r57r58r59.x
	;;
	iord $r57 = $r56r57.hi, -64
	;;
	iord $r56r57r58r59.y = $r58, -8589934592
	;;
	iord $r58r59.lo = $r56r57r58r59.z, 536870911
	;;
	iornd $r59 = $r58r59.hi, 2305843009213693951
	;;
	iornd $r56r57r58r59.t = $r60, $r60r61.lo
	;;
	iornd $r60r61r62r63.x = $r61, -64
	;;
	iornd $r60r61.hi = $r60r61r62r63.y, -8589934592
	;;
	iornd $r62 = $r62r63.lo, 536870911.@
	;;
	iornw $r60r61r62r63.z = $r63, $r62r63.hi
	;;
	iornw $r60r61r62r63.t = $r0, -64
	;;
	iornw $r0r1.lo = $r0r1r2r3.x, -8589934592
	;;
	iorw $r1 = $r0r1.hi, $r0r1r2r3.y
	;;
	iorw $r2 = $r2r3.lo, -64
	;;
	iorw $r0r1r2r3.z = $r3, -8589934592
	;;
	landd $r2r3.hi = $r0r1r2r3.t, $r4
	;;
	landd $r4r5.lo = $r4r5r6r7.x, 536870911
	;;
	landhq $r5 = $r4r5.hi, $r4r5r6r7.y
	;;
	landhq $r6 = $r6r7.lo, 536870911.@
	;;
	landwp $r4r5r6r7.z = $r7, $r6r7.hi
	;;
	landwp $r4r5r6r7.t = $r8, 536870911
	;;
	landw $r8r9.lo = $r8r9r10r11.x, $r9
	;;
	landw $r8r9.hi = $r8r9r10r11.y, 536870911
	;;
	lbs $r10 = $r10r11.lo[$r8r9r10r11.z]
	;;
	lbs.s.even $r11? $r10r11.hi = -1125899906842624[$r8r9r10r11.t]
	;;
	lbs.u.wnez $r12? $sp = -8388608[$r13]
	;;
	lbs.us.weqz $tp? $r14 = [$fp]
	;;
	lbs $r15 = 2305843009213693951[$rp]
	;;
	lbs.s $r16 = -64[$r16r17.lo]
	;;
	lbs.u $r16r17r18r19.x = -8589934592[$r17]
	;;
	lbz.us.xs $r16r17.hi = $r16r17r18r19.y[$r18]
	;;
	lbz.wltz $r18r19.lo? $r16r17r18r19.z = -1125899906842624[$r19]
	;;
	lbz.s.wgez $r18r19.hi? $r16r17r18r19.t = -8388608[$r20]
	;;
	lbz.u.wlez $r20r21.lo? $r20r21r22r23.x = [$r21]
	;;
	lbz.us $r20r21.hi = 2305843009213693951[$r20r21r22r23.y]
	;;
	lbz $r22 = -64[$r22r23.lo]
	;;
	lbz.s $r20r21r22r23.z = -8589934592[$r23]
	;;
	ld.u $r22r23.hi = $r20r21r22r23.t[$r24]
	;;
	ld.us.wgtz $r24r25.lo? $r24r25r26r27.x = -1125899906842624[$r25]
	;;
	ld.dnez $r24r25.hi? $r24r25r26r27.y = -8388608[$r26]
	;;
	ld.s.deqz $r26r27.lo? $r24r25r26r27.z = [$r27]
	;;
	ld.u $r26r27.hi = 2305843009213693951[$r24r25r26r27.t]
	;;
	ld.us $r28 = -64[$r28r29.lo]
	;;
	ld $r28r29r30r31.x = -8589934592[$r29]
	;;
	lhs.s.xs $r28r29.hi = $r28r29r30r31.y[$r30]
	;;
	lhs.u.dltz $r30r31.lo? $r28r29r30r31.z = -1125899906842624[$r31]
	;;
	lhs.us.dgez $r30r31.hi? $r28r29r30r31.t = -8388608[$r32]
	;;
	lhs.dlez $r32r33.lo? $r32r33r34r35.x = [$r33]
	;;
	lhs.s $r32r33.hi = 2305843009213693951[$r32r33r34r35.y]
	;;
	lhs.u $r34 = -64[$r34r35.lo]
	;;
	lhs.us $r32r33r34r35.z = -8589934592[$r35]
	;;
	lhz $r34r35.hi = $r32r33r34r35.t[$r36]
	;;
	lhz.s.dgtz $r36r37.lo? $r36r37r38r39.x = -1125899906842624[$r37]
	;;
	lhz.u.odd $r36r37.hi? $r36r37r38r39.y = -8388608[$r38]
	;;
	lhz.us.even $r38r39.lo? $r36r37r38r39.z = [$r39]
	;;
	lhz $r38r39.hi = 2305843009213693951[$r36r37r38r39.t]
	;;
	lhz.s $r40 = -64[$r40r41.lo]
	;;
	lhz.u $r40r41r42r43.x = -8589934592[$r41]
	;;
	lnandd $r40r41.hi = $r40r41r42r43.y, $r42
	;;
	lnandd $r42r43.lo = $r40r41r42r43.z, 536870911.@
	;;
	lnandhq $r43 = $r42r43.hi, $r40r41r42r43.t
	;;
	lnandhq $r44 = $r44r45.lo, 536870911
	;;
	lnandwp $r44r45r46r47.x = $r45, $r44r45.hi
	;;
	lnandwp $r44r45r46r47.y = $r46, 536870911.@
	;;
	lnandw $r46r47.lo = $r44r45r46r47.z, $r47
	;;
	lnandw $r46r47.hi = $r44r45r46r47.t, 536870911
	;;
	lnord $r48 = $r48r49.lo, $r48r49r50r51.x
	;;
	lnord $r49 = $r48r49.hi, 536870911
	;;
	lnorhq $r48r49r50r51.y = $r50, $r50r51.lo
	;;
	lnorhq $r48r49r50r51.z = $r51, 536870911.@
	;;
	lnorwp $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	lnorwp $r52r53.lo = $r52r53r54r55.x, 536870911
	;;
	lnorw $r53 = $r52r53.hi, $r52r53r54r55.y
	;;
	lnorw $r54 = $r54r55.lo, 536870911
	;;
	loopdo $r52r53r54r55.z, -32768
	;;
	lord $r55 = $r54r55.hi, $r52r53r54r55.t
	;;
	lord $r56 = $r56r57.lo, 536870911.@
	;;
	lorhq $r56r57r58r59.x = $r57, $r56r57.hi
	;;
	lorhq $r56r57r58r59.y = $r58, 536870911
	;;
	lorwp $r58r59.lo = $r56r57r58r59.z, $r59
	;;
	lorwp $r58r59.hi = $r56r57r58r59.t, 536870911.@
	;;
	lorw $r60 = $r60r61.lo, $r60r61r62r63.x
	;;
	lorw $r61 = $r60r61.hi, 536870911
	;;
	lo.us.xs $r24r25r26r27 = $r60r61r62r63.y[$r62]
	;;
	lo.wnez $r62r63.lo? $r28r29r30r31 = -1125899906842624[$r60r61r62r63.z]
	;;
	lo.s.weqz $r63? $r32r33r34r35 = -8388608[$r62r63.hi]
	;;
	lo.u.wltz $r60r61r62r63.t? $r36r37r38r39 = [$r0]
	;;
	lo.us $r40r41r42r43 = 2305843009213693951[$r0r1.lo]
	;;
	lo $r44r45r46r47 = -64[$r0r1r2r3.x]
	;;
	lo.s $r48r49r50r51 = -8589934592[$r1]
	;;
	lq.u $r56r57r58r59.hi = $r0r1.hi[$r0r1r2r3.y]
	;;
	lq.us.wgez $r2? $r60r61 = -1125899906842624[$r2r3.lo]
	;;
	lq.wlez $r0r1r2r3.z? $r60r61r62r63.lo = -8388608[$r3]
	;;
	lq.s.wgtz $r2r3.hi? $r62r63 = [$r0r1r2r3.t]
	;;
	lq.u $r60r61r62r63.hi = 2305843009213693951[$r4]
	;;
	lq.us $r0r1 = -64[$r4r5.lo]
	;;
	lq $r0r1r2r3.lo = -8589934592[$r4r5r6r7.x]
	;;
	lws.s.xs $r5 = $r4r5.hi[$r4r5r6r7.y]
	;;
	lws.u.dnez $r6? $r6r7.lo = -1125899906842624[$r4r5r6r7.z]
	;;
	lws.us.deqz $r7? $r6r7.hi = -8388608[$r4r5r6r7.t]
	;;
	lws.dltz $r8? $r8r9.lo = [$r8r9r10r11.x]
	;;
	lws.s $r9 = 2305843009213693951[$r8r9.hi]
	;;
	lws.u $r8r9r10r11.y = -64[$r10]
	;;
	lws.us $r10r11.lo = -8589934592[$r8r9r10r11.z]
	;;
	lwz $r11 = $r10r11.hi[$r8r9r10r11.t]
	;;
	lwz.s.dgez $r12? $sp = -1125899906842624[$r13]
	;;
	lwz.u.dlez $tp? $r14 = -8388608[$fp]
	;;
	lwz.us.dgtz $r15? $rp = [$r16]
	;;
	lwz $r16r17.lo = 2305843009213693951[$r16r17r18r19.x]
	;;
	lwz.s $r17 = -64[$r16r17.hi]
	;;
	lwz.u $r16r17r18r19.y = -8589934592[$r18]
	;;
	madddt $r2r3 = $r18r19.lo, 2305843009213693951
	;;
	madddt $r0r1r2r3.hi = $r16r17r18r19.z, $r19
	;;
	madddt $r4r5 = $r18r19.hi, -64
	;;
	madddt $r4r5r6r7.lo = $r16r17r18r19.t, -8589934592
	;;
	maddd $r20 = $r20r21.lo, 2305843009213693951
	;;
	maddd $r20r21r22r23.x = $r21, $r20r21.hi
	;;
	maddd $r20r21r22r23.y = $r22, -64
	;;
	maddd $r22r23.lo = $r20r21r22r23.z, -8589934592
	;;
	maddhq $r23 = $r22r23.hi, 2305843009213693951
	;;
	maddhq $r20r21r22r23.t = $r24, $r24r25.lo
	;;
	maddhq $r24r25r26r27.x = $r25, -64
	;;
	maddhq $r24r25.hi = $r24r25r26r27.y, -8589934592
	;;
	maddhwq $r6r7 = $r26, $r26r27.lo
	;;
	maddsudt $r4r5r6r7.hi = $r24r25r26r27.z, 2305843009213693951
	;;
	maddsudt $r8r9 = $r27, $r26r27.hi
	;;
	maddsudt $r8r9r10r11.lo = $r24r25r26r27.t, -64
	;;
	maddsudt $r10r11 = $r28, -8589934592
	;;
	maddsuhwq $r8r9r10r11.hi = $r28r29.lo, $r28r29r30r31.x
	;;
	maddsuwdp $r12r13 = $r29, $r28r29.hi
	;;
	maddsuwd $r28r29r30r31.y = $r30, $r30r31.lo
	;;
	maddsuwd $r28r29r30r31.z = $r31, 536870911
	;;
	maddudt $r12r13r14r15.lo = $r30r31.hi, 2305843009213693951
	;;
	maddudt $r14r15 = $r28r29r30r31.t, $r32
	;;
	maddudt $r12r13r14r15.hi = $r32r33.lo, -64
	;;
	maddudt $r16r17 = $r32r33r34r35.x, -8589934592
	;;
	madduhwq $r16r17r18r19.lo = $r33, $r32r33.hi
	;;
	madduwdp $r18r19 = $r32r33r34r35.y, $r34
	;;
	madduwd $r34r35.lo = $r32r33r34r35.z, $r35
	;;
	madduwd $r34r35.hi = $r32r33r34r35.t, 536870911
	;;
	madduzdt $r16r17r18r19.hi = $r36, 2305843009213693951
	;;
	madduzdt $r20r21 = $r36r37.lo, $r36r37r38r39.x
	;;
	madduzdt $r20r21r22r23.lo = $r37, -64
	;;
	madduzdt $r22r23 = $r36r37.hi, -8589934592
	;;
	maddwdp $r20r21r22r23.hi = $r36r37r38r39.y, $r38
	;;
	maddwd $r38r39.lo = $r36r37r38r39.z, $r39
	;;
	maddwd $r38r39.hi = $r36r37r38r39.t, 536870911
	;;
	maddwp $r40 = $r40r41.lo, 2305843009213693951
	;;
	maddwp $r40r41r42r43.x = $r41, $r40r41.hi
	;;
	maddwp $r40r41r42r43.y = $r42, -64
	;;
	maddwp $r42r43.lo = $r40r41r42r43.z, -8589934592
	;;
	maddw $r43 = $r42r43.hi, $r40r41r42r43.t
	;;
	maddw $r44 = $r44r45.lo, 536870911
	;;
	make $r44r45r46r47.x = 2305843009213693951
	;;
	make $r45 = -549755813888
	;;
	make $r44r45.hi = -4096
	;;
	maxd $r44r45r46r47.y = $r46, 2305843009213693951
	;;
	maxd $r46r47.lo = $r44r45r46r47.z, $r47
	;;
	maxd $r46r47.hi = $r44r45r46r47.t, -64
	;;
	maxd $r48 = $r48r49.lo, -8589934592
	;;
	maxd $r48r49r50r51.x = $r49, 536870911
	;;
	maxhq $r48r49.hi = $r48r49r50r51.y, $r50
	;;
	maxhq $r50r51.lo = $r48r49r50r51.z, 536870911.@
	;;
	maxud $r51 = $r50r51.hi, 2305843009213693951
	;;
	maxud $r48r49r50r51.t = $r52, $r52r53.lo
	;;
	maxud $r52r53r54r55.x = $r53, -64
	;;
	maxud $r52r53.hi = $r52r53r54r55.y, -8589934592
	;;
	maxud $r54 = $r54r55.lo, 536870911
	;;
	maxuhq $r52r53r54r55.z = $r55, $r54r55.hi
	;;
	maxuhq $r52r53r54r55.t = $r56, 536870911.@
	;;
	maxuwp $r56r57.lo = $r56r57r58r59.x, $r57
	;;
	maxuwp $r56r57.hi = $r56r57r58r59.y, 536870911
	;;
	maxuw $r58 = $r58r59.lo, $r56r57r58r59.z
	;;
	maxuw $r59 = $r58r59.hi, -64
	;;
	maxuw $r56r57r58r59.t = $r60, -8589934592
	;;
	maxwp $r60r61.lo = $r60r61r62r63.x, $r61
	;;
	maxwp $r60r61.hi = $r60r61r62r63.y, 536870911.@
	;;
	maxw $r62 = $r62r63.lo, $r60r61r62r63.z
	;;
	maxw $r63 = $r62r63.hi, -64
	;;
	maxw $r60r61r62r63.t = $r0, -8589934592
	;;
	mind $r0r1.lo = $r0r1r2r3.x, 2305843009213693951
	;;
	mind $r1 = $r0r1.hi, $r0r1r2r3.y
	;;
	mind $r2 = $r2r3.lo, -64
	;;
	mind $r0r1r2r3.z = $r3, -8589934592
	;;
	mind $r2r3.hi = $r0r1r2r3.t, 536870911
	;;
	minhq $r4 = $r4r5.lo, $r4r5r6r7.x
	;;
	minhq $r5 = $r4r5.hi, 536870911.@
	;;
	minud $r4r5r6r7.y = $r6, 2305843009213693951
	;;
	minud $r6r7.lo = $r4r5r6r7.z, $r7
	;;
	minud $r6r7.hi = $r4r5r6r7.t, -64
	;;
	minud $r8 = $r8r9.lo, -8589934592
	;;
	minud $r8r9r10r11.x = $r9, 536870911
	;;
	minuhq $r8r9.hi = $r8r9r10r11.y, $r10
	;;
	minuhq $r10r11.lo = $r8r9r10r11.z, 536870911.@
	;;
	minuwp $r11 = $r10r11.hi, $r8r9r10r11.t
	;;
	minuwp $r12 = $sp, 536870911
	;;
	minuw $r13 = $tp, $r14
	;;
	minuw $fp = $r15, -64
	;;
	minuw $rp = $r16, -8589934592
	;;
	minwp $r16r17.lo = $r16r17r18r19.x, $r17
	;;
	minwp $r16r17.hi = $r16r17r18r19.y, 536870911.@
	;;
	minw $r18 = $r18r19.lo, $r16r17r18r19.z
	;;
	minw $r19 = $r18r19.hi, -64
	;;
	minw $r16r17r18r19.t = $r20, -8589934592
	;;
	mm212w $r24r25 = $r20r21.lo, $r20r21r22r23.x
	;;
	mma212w $r24r25r26r27.lo = $r21, $r20r21.hi
	;;
	mma444hbd0 $a24a25a26a27 = $a28a29a30a31, $a5, $a4a5.hi
	;;
	mma444hbd1 $a32a33a34a35 = $a36a37a38a39, $a4a5a6a7.y, $a6
	;;
	mma444hd $a40a41a42a43 = $a44a45a46a47, $a6a7.lo, $a4a5a6a7.z
	;;
	mma444suhbd0 $a48a49a50a51 = $a52a53a54a55, $a7, $a6a7.hi
	;;
	mma444suhbd1 $a56a57a58a59 = $a60a61a62a63, $a4a5a6a7.t, $a8
	;;
	mma444suhd $a0a1a2a3 = $a4a5a6a7, $a8a9.lo, $a8a9a10a11.x
	;;
	mma444uhbd0 $a8a9a10a11 = $a12a13a14a15, $a9, $a8a9.hi
	;;
	mma444uhbd1 $a16a17a18a19 = $a20a21a22a23, $a8a9a10a11.y, $a10
	;;
	mma444uhd $a24a25a26a27 = $a28a29a30a31, $a10a11.lo, $a8a9a10a11.z
	;;
	mma444ushbd0 $a32a33a34a35 = $a36a37a38a39, $a11, $a10a11.hi
	;;
	mma444ushbd1 $a40a41a42a43 = $a44a45a46a47, $a8a9a10a11.t, $a12
	;;
	mma444ushd $a48a49a50a51 = $a52a53a54a55, $a12a13.lo, $a12a13a14a15.x
	;;
	mms212w $r26r27 = $r20r21r22r23.y, $r22
	;;
	movetq $a0.lo = $r22r23.lo, $r20r21r22r23.z
	;;
	movetq $a0.hi = $r23, $r22r23.hi
	;;
	msbfdt $r24r25r26r27.hi = $r20r21r22r23.t, $r24
	;;
	msbfd $r24r25.lo = $r24r25r26r27.x, $r25
	;;
	msbfhq $r24r25.hi = $r24r25r26r27.y, $r26
	;;
	msbfhwq $r28r29 = $r26r27.lo, $r24r25r26r27.z
	;;
	msbfsudt $r28r29r30r31.lo = $r27, $r26r27.hi
	;;
	msbfsuhwq $r30r31 = $r24r25r26r27.t, $r28
	;;
	msbfsuwdp $r28r29r30r31.hi = $r28r29.lo, $r28r29r30r31.x
	;;
	msbfsuwd $r29 = $r28r29.hi, $r28r29r30r31.y
	;;
	msbfsuwd $r30 = $r30r31.lo, 536870911
	;;
	msbfudt $r32r33 = $r28r29r30r31.z, $r31
	;;
	msbfuhwq $r32r33r34r35.lo = $r30r31.hi, $r28r29r30r31.t
	;;
	msbfuwdp $r34r35 = $r32, $r32r33.lo
	;;
	msbfuwd $r32r33r34r35.x = $r33, $r32r33.hi
	;;
	msbfuwd $r32r33r34r35.y = $r34, 536870911
	;;
	msbfuzdt $r32r33r34r35.hi = $r34r35.lo, $r32r33r34r35.z
	;;
	msbfwdp $r36r37 = $r35, $r34r35.hi
	;;
	msbfwd $r32r33r34r35.t = $r36, $r36r37.lo
	;;
	msbfwd $r36r37r38r39.x = $r37, 536870911
	;;
	msbfwp $r36r37.hi = $r36r37r38r39.y, $r38
	;;
	msbfw $r38r39.lo = $r36r37r38r39.z, $r39
	;;
	msbfw $r38r39.hi = $r36r37r38r39.t, 536870911
	;;
	muldt $r36r37r38r39.lo = $r40, 2305843009213693951
	;;
	muldt $r38r39 = $r40r41.lo, $r40r41r42r43.x
	;;
	muldt $r36r37r38r39.hi = $r41, -64
	;;
	muldt $r40r41 = $r40r41.hi, -8589934592
	;;
	muld $r40r41r42r43.y = $r42, 2305843009213693951
	;;
	muld $r42r43.lo = $r40r41r42r43.z, $r43
	;;
	muld $r42r43.hi = $r40r41r42r43.t, -64
	;;
	muld $r44 = $r44r45.lo, -8589934592
	;;
	mulhq $r44r45r46r47.x = $r45, 2305843009213693951
	;;
	mulhq $r44r45.hi = $r44r45r46r47.y, $r46
	;;
	mulhq $r46r47.lo = $r44r45r46r47.z, -64
	;;
	mulhq $r47 = $r46r47.hi, -8589934592
	;;
	mulhwq $r40r41r42r43.lo = $r44r45r46r47.t, $r48
	;;
	mulsudt $r42r43 = $r48r49.lo, 2305843009213693951
	;;
	mulsudt $r40r41r42r43.hi = $r48r49r50r51.x, $r49
	;;
	mulsudt $r44r45 = $r48r49.hi, -64
	;;
	mulsudt $r44r45r46r47.lo = $r48r49r50r51.y, -8589934592
	;;
	mulsuhwq $r46r47 = $r50, $r50r51.lo
	;;
	mulsuwdp $r44r45r46r47.hi = $r48r49r50r51.z, $r51
	;;
	mulsuwd $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	mulsuwd $r52r53.lo = $r52r53r54r55.x, 536870911
	;;
	muludt $r48r49 = $r53, 2305843009213693951
	;;
	muludt $r48r49r50r51.lo = $r52r53.hi, $r52r53r54r55.y
	;;
	muludt $r50r51 = $r54, -64
	;;
	muludt $r48r49r50r51.hi = $r54r55.lo, -8589934592
	;;
	muluhwq $r52r53 = $r52r53r54r55.z, $r55
	;;
	muluwdp $r52r53r54r55.lo = $r54r55.hi, $r52r53r54r55.t
	;;
	muluwd $r56 = $r56r57.lo, $r56r57r58r59.x
	;;
	muluwd $r57 = $r56r57.hi, 536870911
	;;
	mulwc.c $r56r57r58r59.y = $r58, $r58r59.lo
	;;
	mulwc $r56r57r58r59.z = $r59, 2305843009213693951
	;;
	mulwc $r58r59.hi = $r56r57r58r59.t, $r60
	;;
	mulwc $r60r61.lo = $r60r61r62r63.x, -64
	;;
	mulwc $r61 = $r60r61.hi, -8589934592
	;;
	mulwdc.c $r54r55 = $r60r61r62r63.y, $r62
	;;
	mulwdc $r52r53r54r55.hi = $r62r63.lo, $r60r61r62r63.z
	;;
	mulwdp $r56r57 = $r63, $r62r63.hi
	;;
	mulwd $r60r61r62r63.t = $r0, $r0r1.lo
	;;
	mulwd $r0r1r2r3.x = $r1, 536870911
	;;
	mulwp $r0r1.hi = $r0r1r2r3.y, 2305843009213693951
	;;
	mulwp $r2 = $r2r3.lo, $r0r1r2r3.z
	;;
	mulwp $r3 = $r2r3.hi, -64
	;;
	mulwp $r0r1r2r3.t = $r4, -8589934592
	;;
	mulwq $r56r57r58r59.lo = $r58r59, $r56r57r58r59.hi
	;;
	mulw $r4r5.lo = $r4r5r6r7.x, $r5
	;;
	mulw $r4r5.hi = $r4r5r6r7.y, 536870911
	;;
	nandd $r6 = $r6r7.lo, 2305843009213693951
	;;
	nandd $r4r5r6r7.z = $r7, $r6r7.hi
	;;
	nandd $r4r5r6r7.t = $r8, -64
	;;
	nandd $r8r9.lo = $r8r9r10r11.x, -8589934592
	;;
	nandd $r9 = $r8r9.hi, 536870911
	;;
	nandw $r8r9r10r11.y = $r10, $r10r11.lo
	;;
	nandw $r8r9r10r11.z = $r11, -64
	;;
	nandw $r10r11.hi = $r8r9r10r11.t, -8589934592
	;;
	negd $r12 = $sp
	;;
	neghq $r13 = $tp
	;;
	negwp $r14 = $fp
	;;
	negw $r15 = $rp
	;;
	niord $r16 = $r16r17.lo, 2305843009213693951
	;;
	niord $r16r17r18r19.x = $r17, $r16r17.hi
	;;
	niord $r16r17r18r19.y = $r18, -64
	;;
	niord $r18r19.lo = $r16r17r18r19.z, -8589934592
	;;
	niord $r19 = $r18r19.hi, 536870911.@
	;;
	niorw $r16r17r18r19.t = $r20, $r20r21.lo
	;;
	niorw $r20r21r22r23.x = $r21, -64
	;;
	niorw $r20r21.hi = $r20r21r22r23.y, -8589934592
	;;
	nop
	;;
	nord $r22 = $r22r23.lo, 2305843009213693951
	;;
	nord $r20r21r22r23.z = $r23, $r22r23.hi
	;;
	nord $r20r21r22r23.t = $r24, -64
	;;
	nord $r24r25.lo = $r24r25r26r27.x, -8589934592
	;;
	nord $r25 = $r24r25.hi, 536870911
	;;
	norw $r24r25r26r27.y = $r26, $r26r27.lo
	;;
	norw $r24r25r26r27.z = $r27, -64
	;;
	norw $r26r27.hi = $r24r25r26r27.t, -8589934592
	;;
	notd $r28 = $r28r29.lo
	;;
	notw $r28r29r30r31.x = $r29
	;;
	nxord $r28r29.hi = $r28r29r30r31.y, 2305843009213693951
	;;
	nxord $r30 = $r30r31.lo, $r28r29r30r31.z
	;;
	nxord $r31 = $r30r31.hi, -64
	;;
	nxord $r28r29r30r31.t = $r32, -8589934592
	;;
	nxord $r32r33.lo = $r32r33r34r35.x, 536870911.@
	;;
	nxorw $r33 = $r32r33.hi, $r32r33r34r35.y
	;;
	nxorw $r34 = $r34r35.lo, -64
	;;
	nxorw $r32r33r34r35.z = $r35, -8589934592
	;;
	ord $r34r35.hi = $r32r33r34r35.t, 2305843009213693951
	;;
	ord $r36 = $r36r37.lo, $r36r37r38r39.x
	;;
	ord $r37 = $r36r37.hi, -64
	;;
	ord $r36r37r38r39.y = $r38, -8589934592
	;;
	ord $r38r39.lo = $r36r37r38r39.z, 536870911
	;;
	ornd $r39 = $r38r39.hi, 2305843009213693951
	;;
	ornd $r36r37r38r39.t = $r40, $r40r41.lo
	;;
	ornd $r40r41r42r43.x = $r41, -64
	;;
	ornd $r40r41.hi = $r40r41r42r43.y, -8589934592
	;;
	ornd $r42 = $r42r43.lo, 536870911.@
	;;
	ornw $r40r41r42r43.z = $r43, $r42r43.hi
	;;
	ornw $r40r41r42r43.t = $r44, -64
	;;
	ornw $r44r45.lo = $r44r45r46r47.x, -8589934592
	;;
	orw $r45 = $r44r45.hi, $r44r45r46r47.y
	;;
	orw $r46 = $r46r47.lo, -64
	;;
	orw $r44r45r46r47.z = $r47, -8589934592
	;;
	pcrel $r46r47.hi = 2305843009213693951
	;;
	pcrel $r44r45r46r47.t = -549755813888
	;;
	pcrel $r48 = -4096
	;;
	ret
	;;
	rfe
	;;
	rolwps $r48r49.lo = $r48r49r50r51.x, $r49
	;;
	rolwps $r48r49.hi = $r48r49r50r51.y, 7
	;;
	rolw $r50 = $r50r51.lo, $r48r49r50r51.z
	;;
	rolw $r51 = $r50r51.hi, 7
	;;
	rorwps $r48r49r50r51.t = $r52, $r52r53.lo
	;;
	rorwps $r52r53r54r55.x = $r53, 7
	;;
	rorw $r52r53.hi = $r52r53r54r55.y, $r54
	;;
	rorw $r54r55.lo = $r52r53r54r55.z, 7
	;;
	rswap $r55 = $mmc
	;;
	rswap $r54r55.hi = $s0
	;;
	rswap $r52r53r54r55.t = $pc
	;;
	satdh $r56 = $r56r57.lo
	;;
	satdw $r56r57r58r59.x = $r57
	;;
	satd $r56r57.hi = $r56r57r58r59.y, $r58
	;;
	satd $r58r59.lo = $r56r57r58r59.z, 7
	;;
	sbfcd.i $r59 = $r58r59.hi, $r56r57r58r59.t
	;;
	sbfcd.i $r60 = $r60r61.lo, 536870911
	;;
	sbfcd $r60r61r62r63.x = $r61, $r60r61.hi
	;;
	sbfcd $r60r61r62r63.y = $r62, 536870911
	;;
	sbfd $r62r63.lo = $r60r61r62r63.z, 2305843009213693951
	;;
	sbfd $r63 = $r62r63.hi, $r60r61r62r63.t
	;;
	sbfd $r0 = $r0r1.lo, -64
	;;
	sbfd $r0r1r2r3.x = $r1, -8589934592
	;;
	sbfd $r0r1.hi = $r0r1r2r3.y, 536870911
	;;
	sbfhcp.c $r2 = $r2r3.lo, $r0r1r2r3.z
	;;
	sbfhcp.c $r3 = $r2r3.hi, 536870911.@
	;;
	sbfhq $r0r1r2r3.t = $r4, $r4r5.lo
	;;
	sbfhq $r4r5r6r7.x = $r5, 536870911
	;;
	sbfsd $r4r5.hi = $r4r5r6r7.y, 2305843009213693951
	;;
	sbfsd $r6 = $r6r7.lo, $r4r5r6r7.z
	;;
	sbfsd $r7 = $r6r7.hi, -64
	;;
	sbfsd $r4r5r6r7.t = $r8, -8589934592
	;;
	sbfshq $r8r9.lo = $r8r9r10r11.x, $r9
	;;
	sbfshq $r8r9.hi = $r8r9r10r11.y, 536870911.@
	;;
	sbfswp $r10 = $r10r11.lo, $r8r9r10r11.z
	;;
	sbfswp $r11 = $r10r11.hi, 536870911
	;;
	sbfsw $r8r9r10r11.t = $r12, $sp
	;;
	sbfsw $r13 = $tp, 536870911
	;;
	sbfuwd $r14 = $fp, $r15
	;;
	sbfuwd $rp = $r16, 536870911.@
	;;
	sbfwc.c $r16r17.lo = $r16r17r18r19.x, $r17
	;;
	sbfwc.c $r16r17.hi = $r16r17r18r19.y, 536870911
	;;
	sbfwd $r18 = $r18r19.lo, $r16r17r18r19.z
	;;
	sbfwd $r19 = $r18r19.hi, 536870911.@
	;;
	sbfwp $r16r17r18r19.t = $r20, $r20r21.lo
	;;
	sbfwp $r20r21r22r23.x = $r21, 536870911
	;;
	sbfw $r20r21.hi = $r20r21r22r23.y, $r22
	;;
	sbfw $r22r23.lo = $r20r21r22r23.z, -64
	;;
	sbfw $r23 = $r22r23.hi, -8589934592
	;;
	sbfx16d $r20r21r22r23.t = $r24, $r24r25.lo
	;;
	sbfx16d $r24r25r26r27.x = $r25, 536870911.@
	;;
	sbfx16hq $r24r25.hi = $r24r25r26r27.y, $r26
	;;
	sbfx16hq $r26r27.lo = $r24r25r26r27.z, 536870911
	;;
	sbfx16uwd $r27 = $r26r27.hi, $r24r25r26r27.t
	;;
	sbfx16uwd $r28 = $r28r29.lo, 536870911
	;;
	sbfx16wd $r28r29r30r31.x = $r29, $r28r29.hi
	;;
	sbfx16wd $r28r29r30r31.y = $r30, 536870911
	;;
	sbfx16wp $r30r31.lo = $r28r29r30r31.z, $r31
	;;
	sbfx16wp $r30r31.hi = $r28r29r30r31.t, 536870911.@
	;;
	sbfx16w $r32 = $r32r33.lo, $r32r33r34r35.x
	;;
	sbfx16w $r33 = $r32r33.hi, 536870911
	;;
	sbfx2d $r32r33r34r35.y = $r34, $r34r35.lo
	;;
	sbfx2d $r32r33r34r35.z = $r35, 536870911
	;;
	sbfx2hq $r34r35.hi = $r32r33r34r35.t, $r36
	;;
	sbfx2hq $r36r37.lo = $r36r37r38r39.x, 536870911.@
	;;
	sbfx2uwd $r37 = $r36r37.hi, $r36r37r38r39.y
	;;
	sbfx2uwd $r38 = $r38r39.lo, 536870911
	;;
	sbfx2wd $r36r37r38r39.z = $r39, $r38r39.hi
	;;
	sbfx2wd $r36r37r38r39.t = $r40, 536870911
	;;
	sbfx2wp $r40r41.lo = $r40r41r42r43.x, $r41
	;;
	sbfx2wp $r40r41.hi = $r40r41r42r43.y, 536870911
	;;
	sbfx2w $r42 = $r42r43.lo, $r40r41r42r43.z
	;;
	sbfx2w $r43 = $r42r43.hi, 536870911
	;;
	sbfx4d $r40r41r42r43.t = $r44, $r44r45.lo
	;;
	sbfx4d $r44r45r46r47.x = $r45, 536870911.@
	;;
	sbfx4hq $r44r45.hi = $r44r45r46r47.y, $r46
	;;
	sbfx4hq $r46r47.lo = $r44r45r46r47.z, 536870911
	;;
	sbfx4uwd $r47 = $r46r47.hi, $r44r45r46r47.t
	;;
	sbfx4uwd $r48 = $r48r49.lo, 536870911
	;;
	sbfx4wd $r48r49r50r51.x = $r49, $r48r49.hi
	;;
	sbfx4wd $r48r49r50r51.y = $r50, 536870911
	;;
	sbfx4wp $r50r51.lo = $r48r49r50r51.z, $r51
	;;
	sbfx4wp $r50r51.hi = $r48r49r50r51.t, 536870911.@
	;;
	sbfx4w $r52 = $r52r53.lo, $r52r53r54r55.x
	;;
	sbfx4w $r53 = $r52r53.hi, 536870911
	;;
	sbfx8d $r52r53r54r55.y = $r54, $r54r55.lo
	;;
	sbfx8d $r52r53r54r55.z = $r55, 536870911
	;;
	sbfx8hq $r54r55.hi = $r52r53r54r55.t, $r56
	;;
	sbfx8hq $r56r57.lo = $r56r57r58r59.x, 536870911.@
	;;
	sbfx8uwd $r57 = $r56r57.hi, $r56r57r58r59.y
	;;
	sbfx8uwd $r58 = $r58r59.lo, 536870911
	;;
	sbfx8wd $r56r57r58r59.z = $r59, $r58r59.hi
	;;
	sbfx8wd $r56r57r58r59.t = $r60, 536870911
	;;
	sbfx8wp $r60r61.lo = $r60r61r62r63.x, $r61
	;;
	sbfx8wp $r60r61.hi = $r60r61r62r63.y, 536870911
	;;
	sbfx8w $r62 = $r62r63.lo, $r60r61r62r63.z
	;;
	sbfx8w $r63 = $r62r63.hi, 536870911
	;;
	sbmm8 $r60r61r62r63.t = $r0, 2305843009213693951
	;;
	sbmm8 $r0r1.lo = $r0r1r2r3.x, $r1
	;;
	sbmm8 $r0r1.hi = $r0r1r2r3.y, -64
	;;
	sbmm8 $r2 = $r2r3.lo, -8589934592
	;;
	sbmm8 $r0r1r2r3.z = $r3, 536870911.@
	;;
	sbmmt8 $r2r3.hi = $r0r1r2r3.t, 2305843009213693951
	;;
	sbmmt8 $r4 = $r4r5.lo, $r4r5r6r7.x
	;;
	sbmmt8 $r5 = $r4r5.hi, -64
	;;
	sbmmt8 $r4r5r6r7.y = $r6, -8589934592
	;;
	sbmmt8 $r6r7.lo = $r4r5r6r7.z, 536870911
	;;
	sb.xs $r7[$r6r7.hi] = $r4r5r6r7.t
	;;
	sb 2305843009213693951[$r8] = $r8r9.lo
	;;
	sb.odd $r8r9r10r11.x? -1125899906842624[$r9] = $r8r9.hi
	;;
	sb.even $r8r9r10r11.y? -8388608[$r10] = $r10r11.lo
	;;
	sb.wnez $r8r9r10r11.z? [$r11] = $r10r11.hi
	;;
	sb -64[$r8r9r10r11.t] = $r12
	;;
	sb -8589934592[$sp] = $r13
	;;
	scall $tp
	;;
	scall 511
	;;
	sd $r14[$fp] = $r15
	;;
	sd 2305843009213693951[$rp] = $r16
	;;
	sd.weqz $r16r17.lo? -1125899906842624[$r16r17r18r19.x] = $r17
	;;
	sd.wltz $r16r17.hi? -8388608[$r16r17r18r19.y] = $r18
	;;
	sd.wgez $r18r19.lo? [$r16r17r18r19.z] = $r19
	;;
	sd -64[$r18r19.hi] = $r16r17r18r19.t
	;;
	sd -8589934592[$r20] = $r20r21.lo
	;;
	set $s28 = $r20r21r22r23.x
	;;
	set $ra = $r21
	;;
	set $ps = $r20r21.hi
	;;
	set $ps = $r20r21r22r23.y
	;;
	sh.xs $r22[$r22r23.lo] = $r20r21r22r23.z
	;;
	sh 2305843009213693951[$r23] = $r22r23.hi
	;;
	sh.wlez $r20r21r22r23.t? -1125899906842624[$r24] = $r24r25.lo
	;;
	sh.wgtz $r24r25r26r27.x? -8388608[$r25] = $r24r25.hi
	;;
	sh.dnez $r24r25r26r27.y? [$r26] = $r26r27.lo
	;;
	sh -64[$r24r25r26r27.z] = $r27
	;;
	sh -8589934592[$r26r27.hi] = $r24r25r26r27.t
	;;
	sleep
	;;
	slld $r28 = $r28r29.lo, $r28r29r30r31.x
	;;
	slld $r29 = $r28r29.hi, 7
	;;
	sllhqs $r28r29r30r31.y = $r30, $r30r31.lo
	;;
	sllhqs $r28r29r30r31.z = $r31, 7
	;;
	sllwps $r30r31.hi = $r28r29r30r31.t, $r32
	;;
	sllwps $r32r33.lo = $r32r33r34r35.x, 7
	;;
	sllw $r33 = $r32r33.hi, $r32r33r34r35.y
	;;
	sllw $r34 = $r34r35.lo, 7
	;;
	slsd $r32r33r34r35.z = $r35, $r34r35.hi
	;;
	slsd $r32r33r34r35.t = $r36, 7
	;;
	slshqs $r36r37.lo = $r36r37r38r39.x, $r37
	;;
	slshqs $r36r37.hi = $r36r37r38r39.y, 7
	;;
	slswps $r38 = $r38r39.lo, $r36r37r38r39.z
	;;
	slswps $r39 = $r38r39.hi, 7
	;;
	slsw $r36r37r38r39.t = $r40, $r40r41.lo
	;;
	slsw $r40r41r42r43.x = $r41, 7
	;;
	so $r40r41.hi[$r40r41r42r43.y] = $r52r53r54r55
	;;
	so 2305843009213693951[$r42] = $r56r57r58r59
	;;
	so.deqz $r42r43.lo? -1125899906842624[$r40r41r42r43.z] = $r60r61r62r63
	;;
	so.dltz $r43? -8388608[$r42r43.hi] = $r0r1r2r3
	;;
	so.dgez $r40r41r42r43.t? [$r44] = $r4r5r6r7
	;;
	so -64[$r44r45.lo] = $r8r9r10r11
	;;
	so -8589934592[$r44r45r46r47.x] = $r12r13r14r15
	;;
	sq.xs $r45[$r44r45.hi] = $r60r61
	;;
	sq 2305843009213693951[$r44r45r46r47.y] = $r60r61r62r63.lo
	;;
	sq.dlez $r46? -1125899906842624[$r46r47.lo] = $r62r63
	;;
	sq.dgtz $r44r45r46r47.z? -8388608[$r47] = $r60r61r62r63.hi
	;;
	sq.odd $r46r47.hi? [$r44r45r46r47.t] = $r0r1
	;;
	sq -64[$r48] = $r0r1r2r3.lo
	;;
	sq -8589934592[$r48r49.lo] = $r2r3
	;;
	srad $r48r49r50r51.x = $r49, $r48r49.hi
	;;
	srad $r48r49r50r51.y = $r50, 7
	;;
	srahqs $r50r51.lo = $r48r49r50r51.z, $r51
	;;
	srahqs $r50r51.hi = $r48r49r50r51.t, 7
	;;
	srawps $r52 = $r52r53.lo, $r52r53r54r55.x
	;;
	srawps $r53 = $r52r53.hi, 7
	;;
	sraw $r52r53r54r55.y = $r54, $r54r55.lo
	;;
	sraw $r52r53r54r55.z = $r55, 7
	;;
	srld $r54r55.hi = $r52r53r54r55.t, $r56
	;;
	srld $r56r57.lo = $r56r57r58r59.x, 7
	;;
	srlhqs $r57 = $r56r57.hi, $r56r57r58r59.y
	;;
	srlhqs $r58 = $r58r59.lo, 7
	;;
	srlwps $r56r57r58r59.z = $r59, $r58r59.hi
	;;
	srlwps $r56r57r58r59.t = $r60, 7
	;;
	srlw $r60r61.lo = $r60r61r62r63.x, $r61
	;;
	srlw $r60r61.hi = $r60r61r62r63.y, 7
	;;
	srsd $r62 = $r62r63.lo, $r60r61r62r63.z
	;;
	srsd $r63 = $r62r63.hi, 7
	;;
	srshqs $r60r61r62r63.t = $r0, $r0r1.lo
	;;
	srshqs $r0r1r2r3.x = $r1, 7
	;;
	srswps $r0r1.hi = $r0r1r2r3.y, $r2
	;;
	srswps $r2r3.lo = $r0r1r2r3.z, 7
	;;
	srsw $r3 = $r2r3.hi, $r0r1r2r3.t
	;;
	srsw $r4 = $r4r5.lo, 7
	;;
	stop
	;;
	stsud $r4r5r6r7.x = $r5, $r4r5.hi
	;;
	stsuw $r4r5r6r7.y = $r6, $r6r7.lo
	;;
	sw $r4r5r6r7.z[$r7] = $r6r7.hi
	;;
	sw 2305843009213693951[$r4r5r6r7.t] = $r8
	;;
	sw.even $r8r9.lo? -1125899906842624[$r8r9r10r11.x] = $r9
	;;
	sw.wnez $r8r9.hi? -8388608[$r8r9r10r11.y] = $r10
	;;
	sw.weqz $r10r11.lo? [$r8r9r10r11.z] = $r11
	;;
	sw -64[$r10r11.hi] = $r8r9r10r11.t
	;;
	sw -8589934592[$r12] = $sp
	;;
	sxbd $r13 = $tp
	;;
	sxhd $r14 = $fp
	;;
	sxlbhq $r15 = $rp
	;;
	sxlhwp $r16 = $r16r17.lo
	;;
	sxmbhq $r16r17r18r19.x = $r17
	;;
	sxmhwp $r16r17.hi = $r16r17r18r19.y
	;;
	sxwd $r18 = $r18r19.lo
	;;
	syncgroup $r16r17r18r19.z
	;;
	tlbdinval
	;;
	tlbiinval
	;;
	tlbprobe
	;;
	tlbread
	;;
	tlbwrite
	;;
	waitit $r19
	;;
	wfxl $ps, $r18r19.hi
	;;
	wfxl $pcr, $r16r17r18r19.t
	;;
	wfxl $s1, $r20
	;;
	wfxm $s1, $r20r21.lo
	;;
	wfxm $s2, $r20r21r22r23.x
	;;
	wfxm $pcr, $r21
	;;
	xcopyo $a13 = $a4a5a6a7.x
	;;
	xcopyo $a12a13.hi = $a4a5a6a7.y
	;;
	xlo.u.xs $a12a13a14a15.y = $r20r21.hi[$r20r21r22r23.y]
	;;
	xlo.us.wltz.q0 $r22? $a56a57a58a59 = -1125899906842624[$r22r23.lo]
	;;
	xlo.u.wgez.q1 $r20r21r22r23.z? $a60a61a62a63 = -8388608[$r23]
	;;
	xlo.us.wlez.q2 $r22r23.hi? $a0a1a2a3 = [$r20r21r22r23.t]
	;;
	xlo.u.wgtz $r24? $a14 = -1125899906842624[$r24r25.lo]
	;;
	xlo.us.dnez $r24r25r26r27.x? $a14a15.lo = -8388608[$r25]
	;;
	xlo.u.deqz $r24r25.hi? $a12a13a14a15.z = [$r24r25r26r27.y]
	;;
	xlo.us.q3 $a4a5a6a7 = $r26[$r26r27.lo]
	;;
	xlo.u.q0 $a8a9a10a11 = 2305843009213693951[$r24r25r26r27.z]
	;;
	xlo.us.q1 $a12a13a14a15 = -64[$r27]
	;;
	xlo.u.q2 $a16a17a18a19 = -8589934592[$r26r27.hi]
	;;
	xlo.us $a15 = 2305843009213693951[$r24r25r26r27.t]
	;;
	xlo.u $a14a15.hi = -64[$r28]
	;;
	xlo.us $a12a13a14a15.t = -8589934592[$r28r29.lo]
	;;
	xmma484bw $a4a5a6a7.lo = $a6a7, $a16, $a16a17.lo
	;;
	xmma484subw $a4a5a6a7.hi = $a8a9, $a16a17a18a19.x, $a17
	;;
	xmma484ubw $a8a9a10a11.lo = $a10a11, $a16a17.hi, $a16a17a18a19.y
	;;
	xmma484usbw $a8a9a10a11.hi = $a12a13, $a18, $a18a19.lo
	;;
	xmovefo $r16r17r18r19 = $a6
	;;
	xmovefo $r20r21r22r23 = $a7
	;;
	xmovetq $a1_lo = $r28r29r30r31.x, $r29
	;;
	xmovetq $a1_hi = $r28r29.hi, $r28r29r30r31.y
	;;
	xmt44d $a20a21a22a23 = $a24a25a26a27
	;;
	xord $r30 = $r30r31.lo, 2305843009213693951
	;;
	xord $r28r29r30r31.z = $r31, $r30r31.hi
	;;
	xord $r28r29r30r31.t = $r32, -64
	;;
	xord $r32r33.lo = $r32r33r34r35.x, -8589934592
	;;
	xord $r33 = $r32r33.hi, 536870911.@
	;;
	xorw $r32r33r34r35.y = $r34, $r34r35.lo
	;;
	xorw $r32r33r34r35.z = $r35, -64
	;;
	xorw $r34r35.hi = $r32r33r34r35.t, -8589934592
	;;
	xso.xs $r36[$r36r37.lo] = $a16a17a18a19.z
	;;
	xso 2305843009213693951[$r36r37r38r39.x] = $a19
	;;
	xso.dltz $r37? -1125899906842624[$r36r37.hi] = $a18a19.hi
	;;
	xso.dgez $r36r37r38r39.y? -8388608[$r38] = $a16a17a18a19.t
	;;
	xso.dlez $r38r39.lo? [$r36r37r38r39.z] = $a20
	;;
	xso -64[$r39] = $a20a21.lo
	;;
	xso -8589934592[$r38r39.hi] = $a20a21a22a23.x
	;;
	zxbd $r36r37r38r39.t = $r40
	;;
	zxhd $r40r41.lo = $r40r41r42r43.x
	;;
	zxwd $r41 = $r40r41.hi
	;;
	.endp	main
	.section .text
