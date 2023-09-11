	##-----------------------------------------------------------
	## Generating test.s from MDS
	## (c) Copyright 2010-2018 Kalray SA.
	##-----------------------------------------------------------

#	Option: '-m32'

##	target-core:	kv3-2

	.section .text

	.align 8
	.proc	main
	.global	main
main:
	abdbo $r0 = $r0r1.lo, $r0r1r2r3.x
	;;
	abdbo $r1 = $r0r1.hi, 536870911
	;;
	abdd $r0r1r2r3.y = $r2, 2305843009213693951
	;;
	abdd $r2r3.lo = $r0r1r2r3.z, $r3
	;;
	abdd $r2r3.hi = $r0r1r2r3.t, -64
	;;
	abdd $r4 = $r4r5.lo, -8589934592
	;;
	abdd $r4r5r6r7.x = $r5, 536870911.@
	;;
	abdhq $r4r5.hi = $r4r5r6r7.y, $r6
	;;
	abdhq $r6r7.lo = $r4r5r6r7.z, 536870911
	;;
	abdsbo $r7 = $r6r7.hi, $r4r5r6r7.t
	;;
	abdsbo $r8 = $r8r9.lo, 536870911.@
	;;
	abdsd $r8r9r10r11.x = $r9, $r8r9.hi
	;;
	abdsd $r8r9r10r11.y = $r10, 536870911
	;;
	abdshq $r10r11.lo = $r8r9r10r11.z, $r11
	;;
	abdshq $r10r11.hi = $r8r9r10r11.t, 536870911.@
	;;
	abdswp $r12 = $sp, $r13
	;;
	abdswp $tp = $r14, 536870911
	;;
	abdsw $fp = $r15, $rp
	;;
	abdsw $r16 = $r16r17.lo, 536870911
	;;
	abdubo $r16r17r18r19.x = $r17, $r16r17.hi
	;;
	abdubo $r16r17r18r19.y = $r18, 536870911.@
	;;
	abdud $r18r19.lo = $r16r17r18r19.z, $r19
	;;
	abdud $r18r19.hi = $r16r17r18r19.t, 536870911
	;;
	abduhq $r20 = $r20r21.lo, $r20r21r22r23.x
	;;
	abduhq $r21 = $r20r21.hi, 536870911.@
	;;
	abduwp $r20r21r22r23.y = $r22, $r22r23.lo
	;;
	abduwp $r20r21r22r23.z = $r23, 536870911
	;;
	abduw $r22r23.hi = $r20r21r22r23.t, $r24
	;;
	abduw $r24r25.lo = $r24r25r26r27.x, 536870911
	;;
	abdwp $r25 = $r24r25.hi, $r24r25r26r27.y
	;;
	abdwp $r26 = $r26r27.lo, 536870911.@
	;;
	abdw $r24r25r26r27.z = $r27, $r26r27.hi
	;;
	abdw $r24r25r26r27.t = $r28, -64
	;;
	abdw $r28r29.lo = $r28r29r30r31.x, -8589934592
	;;
	absbo $r29 = $r28r29.hi
	;;
	absd $r28r29r30r31.y = $r30
	;;
	abshq $r30r31.lo = $r28r29r30r31.z
	;;
	abssbo $r31 = $r30r31.hi
	;;
	abssd $r28r29r30r31.t = $r32
	;;
	absshq $r32r33.lo = $r32r33r34r35.x
	;;
	absswp $r33 = $r32r33.hi
	;;
	abssw $r32r33r34r35.y = $r34
	;;
	abswp $r34r35.lo = $r32r33r34r35.z
	;;
	absw $r35 = $r34r35.hi
	;;
	acswapd.v $r32r33r34r35.t, -1125899906842624[$r36] = $r0r1
	;;
	acswapd.g $r36r37.lo, -8388608[$r36r37r38r39.x] = $r0r1r2r3.lo
	;;
	acswapd.v.s $r37, [$r36r37.hi] = $r2r3
	;;
	acswapq $r0r1r2r3.hi, -1125899906842624[$r36r37r38r39.y] = $r0r1r2r3
	;;
	acswapq.v.g $r4r5, -8388608[$r38] = $r4r5r6r7
	;;
	acswapq.s $r4r5r6r7.lo, [$r38r39.lo] = $r8r9r10r11
	;;
	acswapw.v $r36r37r38r39.z, -1125899906842624[$r39] = $r6r7
	;;
	acswapw.g $r38r39.hi, -8388608[$r36r37r38r39.t] = $r4r5r6r7.hi
	;;
	acswapw.v.s $r40, [$r40r41.lo] = $r8r9
	;;
	addbo $r40r41r42r43.x = $r41, $r40r41.hi
	;;
	addbo $r40r41r42r43.y = $r42, 536870911
	;;
	addcd.i $r42r43.lo = $r40r41r42r43.z, $r43
	;;
	addcd.i $r42r43.hi = $r40r41r42r43.t, 536870911
	;;
	addcd $r44 = $r44r45.lo, $r44r45r46r47.x
	;;
	addcd $r45 = $r44r45.hi, 536870911
	;;
	addd $r44r45r46r47.y = $r46, 2305843009213693951
	;;
	addd $r46r47.lo = $r44r45r46r47.z, $r47
	;;
	addd $r46r47.hi = $r44r45r46r47.t, -64
	;;
	addd $r48 = $r48r49.lo, -8589934592
	;;
	addd $r48r49r50r51.x = $r49, 536870911.@
	;;
	addhq $r48r49.hi = $r48r49r50r51.y, $r50
	;;
	addhq $r50r51.lo = $r48r49r50r51.z, 536870911
	;;
	addrbod $r51 = $r50r51.hi
	;;
	addrhqd $r48r49r50r51.t = $r52
	;;
	addrwpd $r52r53.lo = $r52r53r54r55.x
	;;
	addsbo $r53 = $r52r53.hi, $r52r53r54r55.y
	;;
	addsbo $r54 = $r54r55.lo, 536870911.@
	;;
	addsd $r52r53r54r55.z = $r55, $r54r55.hi
	;;
	addsd $r52r53r54r55.t = $r56, 536870911
	;;
	addshq $r56r57.lo = $r56r57r58r59.x, $r57
	;;
	addshq $r56r57.hi = $r56r57r58r59.y, 536870911.@
	;;
	addswp $r58 = $r58r59.lo, $r56r57r58r59.z
	;;
	addswp $r59 = $r58r59.hi, 536870911
	;;
	addsw $r56r57r58r59.t = $r60, $r60r61.lo
	;;
	addsw $r60r61r62r63.x = $r61, 536870911
	;;
	addurbod $r60r61.hi = $r60r61r62r63.y
	;;
	addurhqd $r62 = $r62r63.lo
	;;
	addurwpd $r60r61r62r63.z = $r63
	;;
	addusbo $r62r63.hi = $r60r61r62r63.t, $r0
	;;
	addusbo $r0r1.lo = $r0r1r2r3.x, 536870911.@
	;;
	addusd $r1 = $r0r1.hi, $r0r1r2r3.y
	;;
	addusd $r2 = $r2r3.lo, 536870911
	;;
	addushq $r0r1r2r3.z = $r3, $r2r3.hi
	;;
	addushq $r0r1r2r3.t = $r4, 536870911.@
	;;
	adduswp $r4r5.lo = $r4r5r6r7.x, $r5
	;;
	adduswp $r4r5.hi = $r4r5r6r7.y, 536870911
	;;
	addusw $r6 = $r6r7.lo, $r4r5r6r7.z
	;;
	addusw $r7 = $r6r7.hi, 536870911
	;;
	adduwd $r4r5r6r7.t = $r8, $r8r9.lo
	;;
	adduwd $r8r9r10r11.x = $r9, 536870911
	;;
	addwd $r8r9.hi = $r8r9r10r11.y, $r10
	;;
	addwd $r10r11.lo = $r8r9r10r11.z, 536870911
	;;
	addwp $r11 = $r10r11.hi, $r8r9r10r11.t
	;;
	addwp $r12 = $sp, 536870911.@
	;;
	addw $r13 = $tp, $r14
	;;
	addw $fp = $r15, -64
	;;
	addw $rp = $r16, -8589934592
	;;
	addx16bo $r16r17.lo = $r16r17r18r19.x, $r17
	;;
	addx16bo $r16r17.hi = $r16r17r18r19.y, 536870911
	;;
	addx16d $r18 = $r18r19.lo, $r16r17r18r19.z
	;;
	addx16d $r19 = $r18r19.hi, 536870911.@
	;;
	addx16hq $r16r17r18r19.t = $r20, $r20r21.lo
	;;
	addx16hq $r20r21r22r23.x = $r21, 536870911
	;;
	addx16uwd $r20r21.hi = $r20r21r22r23.y, $r22
	;;
	addx16uwd $r22r23.lo = $r20r21r22r23.z, 536870911
	;;
	addx16wd $r23 = $r22r23.hi, $r20r21r22r23.t
	;;
	addx16wd $r24 = $r24r25.lo, 536870911
	;;
	addx16wp $r24r25r26r27.x = $r25, $r24r25.hi
	;;
	addx16wp $r24r25r26r27.y = $r26, 536870911.@
	;;
	addx16w $r26r27.lo = $r24r25r26r27.z, $r27
	;;
	addx16w $r26r27.hi = $r24r25r26r27.t, 536870911
	;;
	addx2bo $r28 = $r28r29.lo, $r28r29r30r31.x
	;;
	addx2bo $r29 = $r28r29.hi, 536870911
	;;
	addx2d $r28r29r30r31.y = $r30, $r30r31.lo
	;;
	addx2d $r28r29r30r31.z = $r31, 536870911.@
	;;
	addx2hq $r30r31.hi = $r28r29r30r31.t, $r32
	;;
	addx2hq $r32r33.lo = $r32r33r34r35.x, 536870911
	;;
	addx2uwd $r33 = $r32r33.hi, $r32r33r34r35.y
	;;
	addx2uwd $r34 = $r34r35.lo, 536870911
	;;
	addx2wd $r32r33r34r35.z = $r35, $r34r35.hi
	;;
	addx2wd $r32r33r34r35.t = $r36, 536870911
	;;
	addx2wp $r36r37.lo = $r36r37r38r39.x, $r37
	;;
	addx2wp $r36r37.hi = $r36r37r38r39.y, 536870911.@
	;;
	addx2w $r38 = $r38r39.lo, $r36r37r38r39.z
	;;
	addx2w $r39 = $r38r39.hi, 536870911
	;;
	addx32d $r36r37r38r39.t = $r40, $r40r41.lo
	;;
	addx32d $r40r41r42r43.x = $r41, 536870911
	;;
	addx32uwd $r40r41.hi = $r40r41r42r43.y, $r42
	;;
	addx32uwd $r42r43.lo = $r40r41r42r43.z, 536870911
	;;
	addx32wd $r43 = $r42r43.hi, $r40r41r42r43.t
	;;
	addx32wd $r44 = $r44r45.lo, 536870911
	;;
	addx32w $r44r45r46r47.x = $r45, $r44r45.hi
	;;
	addx32w $r44r45r46r47.y = $r46, 536870911
	;;
	addx4bo $r46r47.lo = $r44r45r46r47.z, $r47
	;;
	addx4bo $r46r47.hi = $r44r45r46r47.t, 536870911.@
	;;
	addx4d $r48 = $r48r49.lo, $r48r49r50r51.x
	;;
	addx4d $r49 = $r48r49.hi, 536870911
	;;
	addx4hq $r48r49r50r51.y = $r50, $r50r51.lo
	;;
	addx4hq $r48r49r50r51.z = $r51, 536870911.@
	;;
	addx4uwd $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	addx4uwd $r52r53.lo = $r52r53r54r55.x, 536870911
	;;
	addx4wd $r53 = $r52r53.hi, $r52r53r54r55.y
	;;
	addx4wd $r54 = $r54r55.lo, 536870911
	;;
	addx4wp $r52r53r54r55.z = $r55, $r54r55.hi
	;;
	addx4wp $r52r53r54r55.t = $r56, 536870911
	;;
	addx4w $r56r57.lo = $r56r57r58r59.x, $r57
	;;
	addx4w $r56r57.hi = $r56r57r58r59.y, 536870911
	;;
	addx64d $r58 = $r58r59.lo, $r56r57r58r59.z
	;;
	addx64d $r59 = $r58r59.hi, 536870911.@
	;;
	addx64uwd $r56r57r58r59.t = $r60, $r60r61.lo
	;;
	addx64uwd $r60r61r62r63.x = $r61, 536870911
	;;
	addx64wd $r60r61.hi = $r60r61r62r63.y, $r62
	;;
	addx64wd $r62r63.lo = $r60r61r62r63.z, 536870911
	;;
	addx64w $r63 = $r62r63.hi, $r60r61r62r63.t
	;;
	addx64w $r0 = $r0r1.lo, 536870911
	;;
	addx8bo $r0r1r2r3.x = $r1, $r0r1.hi
	;;
	addx8bo $r0r1r2r3.y = $r2, 536870911
	;;
	addx8d $r2r3.lo = $r0r1r2r3.z, $r3
	;;
	addx8d $r2r3.hi = $r0r1r2r3.t, 536870911.@
	;;
	addx8hq $r4 = $r4r5.lo, $r4r5r6r7.x
	;;
	addx8hq $r5 = $r4r5.hi, 536870911
	;;
	addx8uwd $r4r5r6r7.y = $r6, $r6r7.lo
	;;
	addx8uwd $r4r5r6r7.z = $r7, 536870911
	;;
	addx8wd $r6r7.hi = $r4r5r6r7.t, $r8
	;;
	addx8wd $r8r9.lo = $r8r9r10r11.x, 536870911
	;;
	addx8wp $r9 = $r8r9.hi, $r8r9r10r11.y
	;;
	addx8wp $r10 = $r10r11.lo, 536870911.@
	;;
	addx8w $r8r9r10r11.z = $r11, $r10r11.hi
	;;
	addx8w $r8r9r10r11.t = $r12, 536870911
	;;
	aladdd -1125899906842624[$sp] = $r13
	;;
	aladdd.g -8388608[$tp] = $r14
	;;
	aladdd.s [$fp] = $r15
	;;
	aladdw -1125899906842624[$rp] = $r16
	;;
	aladdw.g -8388608[$r16r17.lo] = $r16r17r18r19.x
	;;
	aladdw.s [$r17] = $r16r17.hi
	;;
	alclrd $r16r17r18r19.y = -1125899906842624[$r18]
	;;
	alclrd.g $r18r19.lo = -8388608[$r16r17r18r19.z]
	;;
	alclrd.s $r19 = [$r18r19.hi]
	;;
	alclrw $r16r17r18r19.t = -1125899906842624[$r20]
	;;
	alclrw.g $r20r21.lo = -8388608[$r20r21r22r23.x]
	;;
	alclrw.s $r21 = [$r20r21.hi]
	;;
	ald $r20r21r22r23.y = -1125899906842624[$r22]
	;;
	ald.g $r22r23.lo = -8388608[$r20r21r22r23.z]
	;;
	ald.s $r23 = [$r22r23.hi]
	;;
	alw $r20r21r22r23.t = -1125899906842624[$r24]
	;;
	alw.g $r24r25.lo = -8388608[$r24r25r26r27.x]
	;;
	alw.s $r25 = [$r24r25.hi]
	;;
	andd $r24r25r26r27.y = $r26, 2305843009213693951
	;;
	andd $r26r27.lo = $r24r25r26r27.z, $r27
	;;
	andd $r26r27.hi = $r24r25r26r27.t, -64
	;;
	andd $r28 = $r28r29.lo, -8589934592
	;;
	andd $r28r29r30r31.x = $r29, 536870911
	;;
	andnd $r28r29.hi = $r28r29r30r31.y, 2305843009213693951
	;;
	andnd $r30 = $r30r31.lo, $r28r29r30r31.z
	;;
	andnd $r31 = $r30r31.hi, -64
	;;
	andnd $r28r29r30r31.t = $r32, -8589934592
	;;
	andnd $r32r33.lo = $r32r33r34r35.x, 536870911.@
	;;
	andnw $r33 = $r32r33.hi, $r32r33r34r35.y
	;;
	andnw $r34 = $r34r35.lo, -64
	;;
	andnw $r32r33r34r35.z = $r35, -8589934592
	;;
	andrbod $r34r35.hi = $r32r33r34r35.t
	;;
	andrhqd $r36 = $r36r37.lo
	;;
	andrwpd $r36r37r38r39.x = $r37
	;;
	andw $r36r37.hi = $r36r37r38r39.y, $r38
	;;
	andw $r38r39.lo = $r36r37r38r39.z, -64
	;;
	andw $r39 = $r38r39.hi, -8589934592
	;;
	asd -1125899906842624[$r36r37r38r39.t] = $r40
	;;
	asd.g -8388608[$r40r41.lo] = $r40r41r42r43.x
	;;
	asd.s [$r41] = $r40r41.hi
	;;
	asw -1125899906842624[$r40r41r42r43.y] = $r42
	;;
	asw.g -8388608[$r42r43.lo] = $r40r41r42r43.z
	;;
	asw.s [$r43] = $r42r43.hi
	;;
	avgbo $r40r41r42r43.t = $r44, $r44r45.lo
	;;
	avgbo $r44r45r46r47.x = $r45, 536870911
	;;
	avghq $r44r45.hi = $r44r45r46r47.y, $r46
	;;
	avghq $r46r47.lo = $r44r45r46r47.z, 536870911.@
	;;
	avgrbo $r47 = $r46r47.hi, $r44r45r46r47.t
	;;
	avgrbo $r48 = $r48r49.lo, 536870911
	;;
	avgrhq $r48r49r50r51.x = $r49, $r48r49.hi
	;;
	avgrhq $r48r49r50r51.y = $r50, 536870911.@
	;;
	avgrubo $r50r51.lo = $r48r49r50r51.z, $r51
	;;
	avgrubo $r50r51.hi = $r48r49r50r51.t, 536870911
	;;
	avgruhq $r52 = $r52r53.lo, $r52r53r54r55.x
	;;
	avgruhq $r53 = $r52r53.hi, 536870911.@
	;;
	avgruwp $r52r53r54r55.y = $r54, $r54r55.lo
	;;
	avgruwp $r52r53r54r55.z = $r55, 536870911
	;;
	avgruw $r54r55.hi = $r52r53r54r55.t, $r56
	;;
	avgruw $r56r57.lo = $r56r57r58r59.x, 536870911
	;;
	avgrwp $r57 = $r56r57.hi, $r56r57r58r59.y
	;;
	avgrwp $r58 = $r58r59.lo, 536870911.@
	;;
	avgrw $r56r57r58r59.z = $r59, $r58r59.hi
	;;
	avgrw $r56r57r58r59.t = $r60, 536870911
	;;
	avgubo $r60r61.lo = $r60r61r62r63.x, $r61
	;;
	avgubo $r60r61.hi = $r60r61r62r63.y, 536870911
	;;
	avguhq $r62 = $r62r63.lo, $r60r61r62r63.z
	;;
	avguhq $r63 = $r62r63.hi, 536870911.@
	;;
	avguwp $r60r61r62r63.t = $r0, $r0r1.lo
	;;
	avguwp $r0r1r2r3.x = $r1, 536870911
	;;
	avguw $r0r1.hi = $r0r1r2r3.y, $r2
	;;
	avguw $r2r3.lo = $r0r1r2r3.z, 536870911
	;;
	avgwp $r3 = $r2r3.hi, $r0r1r2r3.t
	;;
	avgwp $r4 = $r4r5.lo, 536870911.@
	;;
	avgw $r4r5r6r7.x = $r5, $r4r5.hi
	;;
	avgw $r4r5r6r7.y = $r6, 536870911
	;;
	await
	;;
	barrier
	;;
	break 0
	;;
	call -33554432
	;;
	cbsd $r6r7.lo = $r4r5r6r7.z
	;;
	cbswp $r7 = $r6r7.hi
	;;
	cbsw $r4r5r6r7.t = $r8
	;;
	cb.dnez $r8r9.lo? -32768
	;;
	clrf $r8r9r10r11.x = $r9, 7, 7
	;;
	clsd $r8r9.hi = $r8r9r10r11.y
	;;
	clswp $r10 = $r10r11.lo
	;;
	clsw $r8r9r10r11.z = $r11
	;;
	clzd $r10r11.hi = $r8r9r10r11.t
	;;
	clzwp $r12 = $sp
	;;
	clzw $r13 = $tp
	;;
	cmovebo.nez $r14? $fp = $r15
	;;
	cmoved.deqz $rp? $r16 = 2305843009213693951
	;;
	cmoved.dltz $r16r17.lo? $r16r17r18r19.x = $r17
	;;
	cmoved.dgez $r16r17.hi? $r16r17r18r19.y = -64
	;;
	cmoved.dlez $r18? $r18r19.lo = -8589934592
	;;
	cmovehq.eqz $r16r17r18r19.z? $r19 = $r18r19.hi
	;;
	cmovewp.ltz $r16r17r18r19.t? $r20 = $r20r21.lo
	;;
	cmuldt $r8r9r10r11.lo = $r20r21r22r23.x, $r21
	;;
	cmulghxdt $r10r11 = $r20r21.hi, $r20r21r22r23.y
	;;
	cmulglxdt $r8r9r10r11.hi = $r22, $r22r23.lo
	;;
	cmulgmxdt $r12r13 = $r20r21r22r23.z, $r23
	;;
	cmulxdt $r12r13r14r15.lo = $r22r23.hi, $r20r21r22r23.t
	;;
	compd.ne $r24 = $r24r25.lo, 2305843009213693951
	;;
	compd.eq $r24r25r26r27.x = $r25, $r24r25.hi
	;;
	compd.lt $r24r25r26r27.y = $r26, -64
	;;
	compd.ge $r26r27.lo = $r24r25r26r27.z, -8589934592
	;;
	compnbo.le $r27 = $r26r27.hi, $r24r25r26r27.t
	;;
	compnbo.gt $r28 = $r28r29.lo, 536870911
	;;
	compnd.ltu $r28r29r30r31.x = $r29, $r28r29.hi
	;;
	compnd.geu $r28r29r30r31.y = $r30, 536870911
	;;
	compnhq.leu $r30r31.lo = $r28r29r30r31.z, $r31
	;;
	compnhq.gtu $r30r31.hi = $r28r29r30r31.t, 536870911.@
	;;
	compnwp.all $r32 = $r32r33.lo, $r32r33r34r35.x
	;;
	compnwp.nall $r33 = $r32r33.hi, 536870911
	;;
	compnw.any $r32r33r34r35.y = $r34, $r34r35.lo
	;;
	compnw.none $r32r33r34r35.z = $r35, 536870911
	;;
	compuwd.ne $r34r35.hi = $r32r33r34r35.t, $r36
	;;
	compuwd.eq $r36r37.lo = $r36r37r38r39.x, 536870911
	;;
	compwd.lt $r37 = $r36r37.hi, $r36r37r38r39.y
	;;
	compwd.ge $r38 = $r38r39.lo, 536870911
	;;
	compw.le $r36r37r38r39.z = $r39, $r38r39.hi
	;;
	compw.gt $r36r37r38r39.t = $r40, 536870911
	;;
	copyd $r40r41.lo = $r40r41r42r43.x
	;;
	copyo $r12r13r14r15 = $r16r17r18r19
	;;
	copyq $r14r15 = $r41, $r40r41.hi
	;;
	copyw $r40r41r42r43.y = $r42
	;;
	crcbellw $r42r43.lo = $r40r41r42r43.z, $r43
	;;
	crcbellw $r42r43.hi = $r40r41r42r43.t, 536870911
	;;
	crcbelmw $r44 = $r44r45.lo, $r44r45r46r47.x
	;;
	crcbelmw $r45 = $r44r45.hi, 536870911
	;;
	crclellw $r44r45r46r47.y = $r46, $r46r47.lo
	;;
	crclellw $r44r45r46r47.z = $r47, 536870911
	;;
	crclelmw $r46r47.hi = $r44r45r46r47.t, $r48
	;;
	crclelmw $r48r49.lo = $r48r49r50r51.x, 536870911
	;;
	ctzd $r49 = $r48r49.hi
	;;
	ctzwp $r48r49r50r51.y = $r50
	;;
	ctzw $r50r51.lo = $r48r49r50r51.z
	;;
	d1inval
	;;
	dflushl $r51[$r50r51.hi]
	;;
	dflushl 2305843009213693951[$r48r49r50r51.t]
	;;
	dflushl -64[$r52]
	;;
	dflushl -8589934592[$r52r53.lo]
	;;
	dflushsw.l1 $r52r53r54r55.x, $r53
	;;
	dinvall.xs $r52r53.hi[$r52r53r54r55.y]
	;;
	dinvall 2305843009213693951[$r54]
	;;
	dinvall -64[$r54r55.lo]
	;;
	dinvall -8589934592[$r52r53r54r55.z]
	;;
	dinvalsw.l2 $r55, $r54r55.hi
	;;
	dot2suwdp $r12r13r14r15.hi = $r16r17, $r16r17r18r19.lo
	;;
	dot2suwd $r52r53r54r55.t = $r56, $r56r57.lo
	;;
	dot2uwdp $r18r19 = $r16r17r18r19.hi, $r20r21
	;;
	dot2uwd $r56r57r58r59.x = $r57, $r56r57.hi
	;;
	dot2wdp $r20r21r22r23.lo = $r22r23, $r20r21r22r23.hi
	;;
	dot2wd $r56r57r58r59.y = $r58, $r58r59.lo
	;;
	dot2wzp $r24r25 = $r24r25r26r27.lo, $r26r27
	;;
	dot2w $r56r57r58r59.z = $r59, $r58r59.hi
	;;
	dpurgel $r56r57r58r59.t[$r60]
	;;
	dpurgel 2305843009213693951[$r60r61.lo]
	;;
	dpurgel -64[$r60r61r62r63.x]
	;;
	dpurgel -8589934592[$r61]
	;;
	dpurgesw.l1 $r60r61.hi, $r60r61r62r63.y
	;;
	dtouchl.xs $r62[$r62r63.lo]
	;;
	dtouchl 2305843009213693951[$r60r61r62r63.z]
	;;
	dtouchl -64[$r63]
	;;
	dtouchl -8589934592[$r62r63.hi]
	;;
	errop
	;;
	extfs $r60r61r62r63.t = $r0, 7, 7
	;;
	extfz $r0r1.lo = $r0r1r2r3.x, 7, 7
	;;
	fabsd $r1 = $r0r1.hi
	;;
	fabshq $r0r1r2r3.y = $r2
	;;
	fabswp $r2r3.lo = $r0r1r2r3.z
	;;
	fabsw $r3 = $r2r3.hi
	;;
	fadddc.c.rn $r24r25r26r27.hi = $r28r29, $r28r29r30r31.lo
	;;
	fadddc.ru.s $r30r31 = $r28r29r30r31.hi, $r32r33
	;;
	fadddp.rd $r32r33r34r35.lo = $r34r35, $r32r33r34r35.hi
	;;
	faddd.rz.s $r0r1r2r3.t = $r4, $r4r5.lo
	;;
	faddho.rna $r36r37 = $r36r37r38r39.lo, $r38r39
	;;
	faddhq.rnz.s $r4r5r6r7.x = $r5, $r4r5.hi
	;;
	faddwc.c.ro $r4r5r6r7.y = $r6, $r6r7.lo
	;;
	faddwcp.c.s $r36r37r38r39.hi = $r40r41, $r40r41r42r43.lo
	;;
	faddwcp.rn $r42r43 = $r40r41r42r43.hi, $r44r45
	;;
	faddwc.ru.s $r4r5r6r7.z = $r7, $r6r7.hi
	;;
	faddwp.rd $r4r5r6r7.t = $r8, $r8r9.lo
	;;
	faddwq.rz.s $r44r45r46r47.lo = $r46r47, $r44r45r46r47.hi
	;;
	faddw.rna $r8r9r10r11.x = $r9, $r8r9.hi
	;;
	fcdivd.s $r8r9r10r11.y = $r48r49
	;;
	fcdivwp $r10 = $r48r49r50r51.lo
	;;
	fcdivw.s $r10r11.lo = $r50r51
	;;
	fcompd.one $r8r9r10r11.z = $r11, $r10r11.hi
	;;
	fcompd.ueq $r8r9r10r11.t = $r12, 536870911
	;;
	fcompnd.oeq $sp = $r13, $tp
	;;
	fcompnd.une $r14 = $fp, 536870911
	;;
	fcompnhq.olt $r15 = $rp, $r16
	;;
	fcompnhq.uge $r16r17.lo = $r16r17r18r19.x, 536870911.@
	;;
	fcompnwp.oge $r17 = $r16r17.hi, $r16r17r18r19.y
	;;
	fcompnwp.ult $r18 = $r18r19.lo, 536870911
	;;
	fcompnw.one $r16r17r18r19.z = $r19, $r18r19.hi
	;;
	fcompnw.ueq $r16r17r18r19.t = $r20, 536870911
	;;
	fcompw.oeq $r20r21.lo = $r20r21r22r23.x, $r21
	;;
	fcompw.une $r20r21.hi = $r20r21r22r23.y, 536870911
	;;
	fdot2wdp.rnz $r48r49r50r51.hi = $r52r53, $r52r53r54r55.lo
	;;
	fdot2wd.ro.s $r22 = $r22r23.lo, $r20r21r22r23.z
	;;
	fdot2wzp $r54r55 = $r52r53r54r55.hi, $r56r57
	;;
	fdot2w.rn.s $r23 = $r22r23.hi, $r20r21r22r23.t
	;;
	fence
	;;
	ffdmaswp.ru $r24 = $r56r57r58r59.lo, $r58r59
	;;
	ffdmaswq.rd.s $r56r57r58r59.hi = $r20r21r22r23, $r24r25r26r27
	;;
	ffdmasw.rz $r24r25.lo = $r24r25r26r27.x, $r25
	;;
	ffdmawp.rna.s $r24r25.hi = $r60r61, $r60r61r62r63.lo
	;;
	ffdmawq.rnz $r62r63 = $r28r29r30r31, $r32r33r34r35
	;;
	ffdmaw.ro.s $r24r25r26r27.y = $r26, $r26r27.lo
	;;
	ffdmdawp $r24r25r26r27.z = $r60r61r62r63.hi, $r0r1
	;;
	ffdmdawq.rn.s $r0r1r2r3.lo = $r36r37r38r39, $r40r41r42r43
	;;
	ffdmdaw.ru $r27 = $r26r27.hi, $r24r25r26r27.t
	;;
	ffdmdswp.rd.s $r28 = $r2r3, $r0r1r2r3.hi
	;;
	ffdmdswq.rz $r4r5 = $r44r45r46r47, $r48r49r50r51
	;;
	ffdmdsw.rna.s $r28r29.lo = $r28r29r30r31.x, $r29
	;;
	ffdmsawp.rnz $r28r29.hi = $r4r5r6r7.lo, $r6r7
	;;
	ffdmsawq.ro.s $r4r5r6r7.hi = $r52r53r54r55, $r56r57r58r59
	;;
	ffdmsaw $r28r29r30r31.y = $r30, $r30r31.lo
	;;
	ffdmswp.rn.s $r28r29r30r31.z = $r8r9, $r8r9r10r11.lo
	;;
	ffdmswq.ru $r10r11 = $r60r61r62r63, $r0r1r2r3
	;;
	ffdmsw.rd.s $r31 = $r30r31.hi, $r28r29r30r31.t
	;;
	ffmad.rz $r32 = $r32r33.lo, $r32r33r34r35.x
	;;
	ffmaho.rna.s $r8r9r10r11.hi = $r12r13, $r12r13r14r15.lo
	;;
	ffmahq.rnz $r33 = $r32r33.hi, $r32r33r34r35.y
	;;
	ffmahwq.ro.s $r14r15 = $r34, $r34r35.lo
	;;
	ffmahw $r32r33r34r35.z = $r35, $r34r35.hi
	;;
	ffmawcp.rn.s $r12r13r14r15.hi = $r16r17, $r16r17r18r19.lo
	;;
	ffmawc.c.ru $r32r33r34r35.t = $r36, $r36r37.lo
	;;
	ffmawdp.rd.s $r18r19 = $r36r37r38r39.x, $r37
	;;
	ffmawd.rz $r36r37.hi = $r36r37r38r39.y, $r38
	;;
	ffmawp.rna.s $r38r39.lo = $r36r37r38r39.z, $r39
	;;
	ffmawq.rnz $r16r17r18r19.hi = $r20r21, $r20r21r22r23.lo
	;;
	ffmaw.ro.s $r38r39.hi = $r36r37r38r39.t, $r40
	;;
	ffmsd $r40r41.lo = $r40r41r42r43.x, $r41
	;;
	ffmsho.rn.s $r22r23 = $r20r21r22r23.hi, $r24r25
	;;
	ffmshq.ru $r40r41.hi = $r40r41r42r43.y, $r42
	;;
	ffmshwq.rd.s $r24r25r26r27.lo = $r42r43.lo, $r40r41r42r43.z
	;;
	ffmshw.rz $r43 = $r42r43.hi, $r40r41r42r43.t
	;;
	ffmswcp.rna.s $r26r27 = $r24r25r26r27.hi, $r28r29
	;;
	ffmswc.c.rnz $r44 = $r44r45.lo, $r44r45r46r47.x
	;;
	ffmswdp.ro.s $r28r29r30r31.lo = $r45, $r44r45.hi
	;;
	ffmswd $r44r45r46r47.y = $r46, $r46r47.lo
	;;
	ffmswp.rn.s $r44r45r46r47.z = $r47, $r46r47.hi
	;;
	ffmswq.ru $r30r31 = $r28r29r30r31.hi, $r32r33
	;;
	ffmsw.rd.s $r44r45r46r47.t = $r48, $r48r49.lo
	;;
	fixedd.rz $r48r49r50r51.x = $r49, 7
	;;
	fixedud.rna.s $r48r49.hi = $r48r49r50r51.y, 7
	;;
	fixeduwp.rnz $r50 = $r50r51.lo, 7
	;;
	fixeduw.ro.s $r48r49r50r51.z = $r51, 7
	;;
	fixedwp $r50r51.hi = $r48r49r50r51.t, 7
	;;
	fixedw.rn.s $r52 = $r52r53.lo, 7
	;;
	floatd.ru $r52r53r54r55.x = $r53, 7
	;;
	floatud.rd.s $r52r53.hi = $r52r53r54r55.y, 7
	;;
	floatuwp.rz $r54 = $r54r55.lo, 7
	;;
	floatuw.rna.s $r52r53r54r55.z = $r55, 7
	;;
	floatwp.rnz $r54r55.hi = $r52r53r54r55.t, 7
	;;
	floatw.ro.s $r56 = $r56r57.lo, 7
	;;
	fmaxd $r56r57r58r59.x = $r57, $r56r57.hi
	;;
	fmaxhq $r56r57r58r59.y = $r58, $r58r59.lo
	;;
	fmaxwp $r56r57r58r59.z = $r59, $r58r59.hi
	;;
	fmaxw $r56r57r58r59.t = $r60, $r60r61.lo
	;;
	fmind $r60r61r62r63.x = $r61, $r60r61.hi
	;;
	fminhq $r60r61r62r63.y = $r62, $r62r63.lo
	;;
	fminwp $r60r61r62r63.z = $r63, $r62r63.hi
	;;
	fminw $r60r61r62r63.t = $r0, $r0r1.lo
	;;
	fmm212w $r32r33r34r35.lo = $r0r1r2r3.x, $r1
	;;
	fmm222w.rn.s $r34r35 = $r32r33r34r35.hi, $r36r37
	;;
	fmma212w.ru $r36r37r38r39.lo = $r0r1.hi, $r0r1r2r3.y
	;;
	fmma222w.tn.rd.s $r38r39 = $r36r37r38r39.hi, $r40r41
	;;
	fmms212w.rz $r40r41r42r43.lo = $r2, $r2r3.lo
	;;
	fmms222w.nt.rna.s $r42r43 = $r40r41r42r43.hi, $r44r45
	;;
	fmuld.rnz $r0r1r2r3.z = $r3, $r2r3.hi
	;;
	fmulho.ro.s $r44r45r46r47.lo = $r46r47, $r44r45r46r47.hi
	;;
	fmulhq $r0r1r2r3.t = $r4, $r4r5.lo
	;;
	fmulhwq.rn.s $r48r49 = $r4r5r6r7.x, $r5
	;;
	fmulhw.ru $r4r5.hi = $r4r5r6r7.y, $r6
	;;
	fmulwcp.rd.s $r48r49r50r51.lo = $r50r51, $r48r49r50r51.hi
	;;
	fmulwc.c.rz $r6r7.lo = $r4r5r6r7.z, $r7
	;;
	fmulwdp.rna.s $r52r53 = $r6r7.hi, $r4r5r6r7.t
	;;
	fmulwd.rnz $r8 = $r8r9.lo, $r8r9r10r11.x
	;;
	fmulwp.ro.s $r9 = $r8r9.hi, $r8r9r10r11.y
	;;
	fmulwq $r52r53r54r55.lo = $r54r55, $r52r53r54r55.hi
	;;
	fmulw.rn.s $r10 = $r10r11.lo, $r8r9r10r11.z
	;;
	fnarrowdwp.ru $r11 = $r56r57
	;;
	fnarrowdw.rd.s $r10r11.hi = $r8r9r10r11.t
	;;
	fnarrowwhq.rz $r12 = $r56r57r58r59.lo
	;;
	fnarrowwh.rna.s $sp = $r13
	;;
	fnegd $tp = $r14
	;;
	fneghq $fp = $r15
	;;
	fnegwp $rp = $r16
	;;
	fnegw $r16r17.lo = $r16r17r18r19.x
	;;
	frecw.rnz $r17 = $r16r17.hi
	;;
	frsrw.ro.s $r16r17r18r19.y = $r18
	;;
	fsbfdc.c $r58r59 = $r56r57r58r59.hi, $r60r61
	;;
	fsbfdc.rn.s $r60r61r62r63.lo = $r62r63, $r60r61r62r63.hi
	;;
	fsbfdp.ru $r0r1 = $r0r1r2r3.lo, $r2r3
	;;
	fsbfd.rd.s $r18r19.lo = $r16r17r18r19.z, $r19
	;;
	fsbfho.rz $r0r1r2r3.hi = $r4r5, $r4r5r6r7.lo
	;;
	fsbfhq.rna.s $r18r19.hi = $r16r17r18r19.t, $r20
	;;
	fsbfwc.c.rnz $r20r21.lo = $r20r21r22r23.x, $r21
	;;
	fsbfwcp.c.ro.s $r6r7 = $r4r5r6r7.hi, $r8r9
	;;
	fsbfwcp $r8r9r10r11.lo = $r10r11, $r8r9r10r11.hi
	;;
	fsbfwc.rn.s $r20r21.hi = $r20r21r22r23.y, $r22
	;;
	fsbfwp.ru $r22r23.lo = $r20r21r22r23.z, $r23
	;;
	fsbfwq.rd.s $r12r13 = $r12r13r14r15.lo, $r14r15
	;;
	fsbfw.rz $r22r23.hi = $r20r21r22r23.t, $r24
	;;
	fsdivd.s $r24r25.lo = $r12r13r14r15.hi
	;;
	fsdivwp $r24r25r26r27.x = $r16r17
	;;
	fsdivw.s $r25 = $r16r17r18r19.lo
	;;
	fsrecd $r24r25.hi = $r24r25r26r27.y
	;;
	fsrecwp.s $r26 = $r26r27.lo
	;;
	fsrecw $r24r25r26r27.z = $r27
	;;
	fsrsrd $r26r27.hi = $r24r25r26r27.t
	;;
	fsrsrwp $r28 = $r28r29.lo
	;;
	fsrsrw $r28r29r30r31.x = $r29
	;;
	fwidenlhwp.s $r28r29.hi = $r28r29r30r31.y
	;;
	fwidenlhw $r30 = $r30r31.lo
	;;
	fwidenlwd.s $r28r29r30r31.z = $r31
	;;
	fwidenmhwp $r30r31.hi = $r28r29r30r31.t
	;;
	fwidenmhw.s $r32 = $r32r33.lo
	;;
	fwidenmwd $r32r33r34r35.x = $r33
	;;
	get $r32r33.hi = $pc
	;;
	get $r32r33r34r35.y = $pc
	;;
	goto -33554432
	;;
	i1invals $r34[$r34r35.lo]
	;;
	i1invals 2305843009213693951[$r32r33r34r35.z]
	;;
	i1invals -64[$r35]
	;;
	i1invals -8589934592[$r34r35.hi]
	;;
	i1inval
	;;
	icall $r32r33r34r35.t
	;;
	iget $r36
	;;
	igoto $r36r37.lo
	;;
	insf $r36r37r38r39.x = $r37, 7, 7
	;;
	iord $r36r37.hi = $r36r37r38r39.y, 2305843009213693951
	;;
	iord $r38 = $r38r39.lo, $r36r37r38r39.z
	;;
	iord $r39 = $r38r39.hi, -64
	;;
	iord $r36r37r38r39.t = $r40, -8589934592
	;;
	iord $r40r41.lo = $r40r41r42r43.x, 536870911.@
	;;
	iornd $r41 = $r40r41.hi, 2305843009213693951
	;;
	iornd $r40r41r42r43.y = $r42, $r42r43.lo
	;;
	iornd $r40r41r42r43.z = $r43, -64
	;;
	iornd $r42r43.hi = $r40r41r42r43.t, -8589934592
	;;
	iornd $r44 = $r44r45.lo, 536870911
	;;
	iornw $r44r45r46r47.x = $r45, $r44r45.hi
	;;
	iornw $r44r45r46r47.y = $r46, -64
	;;
	iornw $r46r47.lo = $r44r45r46r47.z, -8589934592
	;;
	iorrbod $r47 = $r46r47.hi
	;;
	iorrhqd $r44r45r46r47.t = $r48
	;;
	iorrwpd $r48r49.lo = $r48r49r50r51.x
	;;
	iorw $r49 = $r48r49.hi, $r48r49r50r51.y
	;;
	iorw $r50 = $r50r51.lo, -64
	;;
	iorw $r48r49r50r51.z = $r51, -8589934592
	;;
	landd $r50r51.hi = $r48r49r50r51.t, $r52
	;;
	landw $r52r53.lo = $r52r53r54r55.x, $r53
	;;
	landw $r52r53.hi = $r52r53r54r55.y, 536870911
	;;
	lbs.xs $r54 = $r54r55.lo[$r52r53r54r55.z]
	;;
	lbs.s.dgtz $r55? $r54r55.hi = -1125899906842624[$r52r53r54r55.t]
	;;
	lbs.u.odd $r56? $r56r57.lo = -8388608[$r56r57r58r59.x]
	;;
	lbs.us.even $r57? $r56r57.hi = [$r56r57r58r59.y]
	;;
	lbs $r58 = 2305843009213693951[$r58r59.lo]
	;;
	lbs.s $r56r57r58r59.z = -64[$r59]
	;;
	lbs.u $r58r59.hi = -8589934592[$r56r57r58r59.t]
	;;
	lbz.us $r60 = $r60r61.lo[$r60r61r62r63.x]
	;;
	lbz.wnez $r61? $r60r61.hi = -1125899906842624[$r60r61r62r63.y]
	;;
	lbz.s.weqz $r62? $r62r63.lo = -8388608[$r60r61r62r63.z]
	;;
	lbz.u.wltz $r63? $r62r63.hi = [$r60r61r62r63.t]
	;;
	lbz.us $r0 = 2305843009213693951[$r0r1.lo]
	;;
	lbz $r0r1r2r3.x = -64[$r1]
	;;
	lbz.s $r0r1.hi = -8589934592[$r0r1r2r3.y]
	;;
	ld.u.xs $r2 = $r2r3.lo[$r0r1r2r3.z]
	;;
	ld.us.wgez $r3? $r2r3.hi = -1125899906842624[$r0r1r2r3.t]
	;;
	ld.wlez $r4? $r4r5.lo = -8388608[$r4r5r6r7.x]
	;;
	ld.s.wgtz $r5? $r4r5.hi = [$r4r5r6r7.y]
	;;
	ld.u $r6 = 2305843009213693951[$r6r7.lo]
	;;
	ld.us $r4r5r6r7.z = -64[$r7]
	;;
	ld $r6r7.hi = -8589934592[$r4r5r6r7.t]
	;;
	lhs.s $r8 = $r8r9.lo[$r8r9r10r11.x]
	;;
	lhs.u.dnez $r9? $r8r9.hi = -1125899906842624[$r8r9r10r11.y]
	;;
	lhs.us.deqz $r10? $r10r11.lo = -8388608[$r8r9r10r11.z]
	;;
	lhs.dltz $r11? $r10r11.hi = [$r8r9r10r11.t]
	;;
	lhs.s $r12 = 2305843009213693951[$sp]
	;;
	lhs.u $r13 = -64[$tp]
	;;
	lhs.us $r14 = -8589934592[$fp]
	;;
	lhz.xs $r15 = $rp[$r16]
	;;
	lhz.s.dgez $r16r17.lo? $r16r17r18r19.x = -1125899906842624[$r17]
	;;
	lhz.u.dlez $r16r17.hi? $r16r17r18r19.y = -8388608[$r18]
	;;
	lhz.us.dgtz $r18r19.lo? $r16r17r18r19.z = [$r19]
	;;
	lhz $r18r19.hi = 2305843009213693951[$r16r17r18r19.t]
	;;
	lhz.s $r20 = -64[$r20r21.lo]
	;;
	lhz.u $r20r21r22r23.x = -8589934592[$r21]
	;;
	lnandd $r20r21.hi = $r20r21r22r23.y, $r22
	;;
	lnandw $r22r23.lo = $r20r21r22r23.z, $r23
	;;
	lnandw $r22r23.hi = $r20r21r22r23.t, 536870911
	;;
	lnord $r24 = $r24r25.lo, $r24r25r26r27.x
	;;
	lnorw $r25 = $r24r25.hi, $r24r25r26r27.y
	;;
	lnorw $r26 = $r26r27.lo, 536870911
	;;
	loopdo $r24r25r26r27.z, -32768
	;;
	lord $r27 = $r26r27.hi, $r24r25r26r27.t
	;;
	lorw $r28 = $r28r29.lo, $r28r29r30r31.x
	;;
	lorw $r29 = $r28r29.hi, 536870911
	;;
	lo.us $r4r5r6r7 = $r28r29r30r31.y[$r30]
	;;
	lo.u0 $r30r31.lo? $r8r9r10r11 = -1125899906842624[$r28r29r30r31.z]
	;;
	lo.s.u1 $r31? $r12r13r14r15 = -8388608[$r30r31.hi]
	;;
	lo.u.u2 $r28r29r30r31.t? $r16r17r18r19 = [$r32]
	;;
	lo.us.odd $r32r33.lo? $r20r21r22r23 = -1125899906842624[$r32r33r34r35.x]
	;;
	lo.even $r33? $r24r25r26r27 = -8388608[$r32r33.hi]
	;;
	lo.s.wnez $r32r33r34r35.y? $r28r29r30r31 = [$r34]
	;;
	lo.u $r32r33r34r35 = 2305843009213693951[$r34r35.lo]
	;;
	lo.us $r36r37r38r39 = -64[$r32r33r34r35.z]
	;;
	lo $r40r41r42r43 = -8589934592[$r35]
	;;
	lq.s.xs $r18r19 = $r34r35.hi[$r32r33r34r35.t]
	;;
	lq.u.weqz $r36? $r16r17r18r19.hi = -1125899906842624[$r36r37.lo]
	;;
	lq.us.wltz $r36r37r38r39.x? $r20r21 = -8388608[$r37]
	;;
	lq.wgez $r36r37.hi? $r20r21r22r23.lo = [$r36r37r38r39.y]
	;;
	lq.s $r22r23 = 2305843009213693951[$r38]
	;;
	lq.u $r20r21r22r23.hi = -64[$r38r39.lo]
	;;
	lq.us $r24r25 = -8589934592[$r36r37r38r39.z]
	;;
	lws $r39 = $r38r39.hi[$r36r37r38r39.t]
	;;
	lws.s.wlez $r40? $r40r41.lo = -1125899906842624[$r40r41r42r43.x]
	;;
	lws.u.wgtz $r41? $r40r41.hi = -8388608[$r40r41r42r43.y]
	;;
	lws.us.dnez $r42? $r42r43.lo = [$r40r41r42r43.z]
	;;
	lws $r43 = 2305843009213693951[$r42r43.hi]
	;;
	lws.s $r40r41r42r43.t = -64[$r44]
	;;
	lws.u $r44r45.lo = -8589934592[$r44r45r46r47.x]
	;;
	lwz.us.xs $r45 = $r44r45.hi[$r44r45r46r47.y]
	;;
	lwz.deqz $r46? $r46r47.lo = -1125899906842624[$r44r45r46r47.z]
	;;
	lwz.s.dltz $r47? $r46r47.hi = -8388608[$r44r45r46r47.t]
	;;
	lwz.u.dgez $r48? $r48r49.lo = [$r48r49r50r51.x]
	;;
	lwz.us $r49 = 2305843009213693951[$r48r49.hi]
	;;
	lwz $r48r49r50r51.y = -64[$r50]
	;;
	lwz.s $r50r51.lo = -8589934592[$r48r49r50r51.z]
	;;
	madddt $r24r25r26r27.lo = $r51, $r50r51.hi
	;;
	maddd $r48r49r50r51.t = $r52, $r52r53.lo
	;;
	maddd $r52r53r54r55.x = $r53, 536870911
	;;
	maddhq $r52r53.hi = $r52r53r54r55.y, $r54
	;;
	maddhq $r54r55.lo = $r52r53r54r55.z, 536870911
	;;
	maddhwq $r26r27 = $r55, $r54r55.hi
	;;
	maddmwq $r24r25r26r27.hi = $r28r29, $r28r29r30r31.lo
	;;
	maddsudt $r30r31 = $r52r53r54r55.t, $r56
	;;
	maddsuhwq $r28r29r30r31.hi = $r56r57.lo, $r56r57r58r59.x
	;;
	maddsumwq $r32r33 = $r32r33r34r35.lo, $r34r35
	;;
	maddsuwdp $r32r33r34r35.hi = $r57, $r56r57.hi
	;;
	maddsuwd $r56r57r58r59.y = $r58, $r58r59.lo
	;;
	maddsuwd $r56r57r58r59.z = $r59, 536870911
	;;
	maddudt $r36r37 = $r58r59.hi, $r56r57r58r59.t
	;;
	madduhwq $r36r37r38r39.lo = $r60, $r60r61.lo
	;;
	maddumwq $r38r39 = $r36r37r38r39.hi, $r40r41
	;;
	madduwdp $r40r41r42r43.lo = $r60r61r62r63.x, $r61
	;;
	madduwd $r60r61.hi = $r60r61r62r63.y, $r62
	;;
	madduwd $r62r63.lo = $r60r61r62r63.z, 536870911
	;;
	madduzdt $r42r43 = $r63, $r62r63.hi
	;;
	maddwdp $r40r41r42r43.hi = $r60r61r62r63.t, $r0
	;;
	maddwd $r0r1.lo = $r0r1r2r3.x, $r1
	;;
	maddwd $r0r1.hi = $r0r1r2r3.y, 536870911
	;;
	maddwp $r2 = $r2r3.lo, $r0r1r2r3.z
	;;
	maddwp $r3 = $r2r3.hi, 536870911
	;;
	maddwq $r44r45 = $r44r45r46r47.lo, $r46r47
	;;
	maddw $r0r1r2r3.t = $r4, $r4r5.lo
	;;
	maddw $r4r5r6r7.x = $r5, 536870911
	;;
	make $r4r5.hi = 2305843009213693951
	;;
	make $r4r5r6r7.y = -549755813888
	;;
	make $r6 = -4096
	;;
	maxbo $r6r7.lo = $r4r5r6r7.z, $r7
	;;
	maxbo $r6r7.hi = $r4r5r6r7.t, 536870911.@
	;;
	maxd $r8 = $r8r9.lo, 2305843009213693951
	;;
	maxd $r8r9r10r11.x = $r9, $r8r9.hi
	;;
	maxd $r8r9r10r11.y = $r10, -64
	;;
	maxd $r10r11.lo = $r8r9r10r11.z, -8589934592
	;;
	maxd $r11 = $r10r11.hi, 536870911
	;;
	maxhq $r8r9r10r11.t = $r12, $sp
	;;
	maxhq $r13 = $tp, 536870911.@
	;;
	maxrbod $r14 = $fp
	;;
	maxrhqd $r15 = $rp
	;;
	maxrwpd $r16 = $r16r17.lo
	;;
	maxubo $r16r17r18r19.x = $r17, $r16r17.hi
	;;
	maxubo $r16r17r18r19.y = $r18, 536870911
	;;
	maxud $r18r19.lo = $r16r17r18r19.z, 2305843009213693951
	;;
	maxud $r19 = $r18r19.hi, $r16r17r18r19.t
	;;
	maxud $r20 = $r20r21.lo, -64
	;;
	maxud $r20r21r22r23.x = $r21, -8589934592
	;;
	maxud $r20r21.hi = $r20r21r22r23.y, 536870911.@
	;;
	maxuhq $r22 = $r22r23.lo, $r20r21r22r23.z
	;;
	maxuhq $r23 = $r22r23.hi, 536870911
	;;
	maxurbod $r20r21r22r23.t = $r24
	;;
	maxurhqd $r24r25.lo = $r24r25r26r27.x
	;;
	maxurwpd $r25 = $r24r25.hi
	;;
	maxuwp $r24r25r26r27.y = $r26, $r26r27.lo
	;;
	maxuwp $r24r25r26r27.z = $r27, 536870911.@
	;;
	maxuw $r26r27.hi = $r24r25r26r27.t, $r28
	;;
	maxuw $r28r29.lo = $r28r29r30r31.x, -64
	;;
	maxuw $r29 = $r28r29.hi, -8589934592
	;;
	maxwp $r28r29r30r31.y = $r30, $r30r31.lo
	;;
	maxwp $r28r29r30r31.z = $r31, 536870911
	;;
	maxw $r30r31.hi = $r28r29r30r31.t, $r32
	;;
	maxw $r32r33.lo = $r32r33r34r35.x, -64
	;;
	maxw $r33 = $r32r33.hi, -8589934592
	;;
	minbo $r32r33r34r35.y = $r34, $r34r35.lo
	;;
	minbo $r32r33r34r35.z = $r35, 536870911.@
	;;
	mind $r34r35.hi = $r32r33r34r35.t, 2305843009213693951
	;;
	mind $r36 = $r36r37.lo, $r36r37r38r39.x
	;;
	mind $r37 = $r36r37.hi, -64
	;;
	mind $r36r37r38r39.y = $r38, -8589934592
	;;
	mind $r38r39.lo = $r36r37r38r39.z, 536870911
	;;
	minhq $r39 = $r38r39.hi, $r36r37r38r39.t
	;;
	minhq $r40 = $r40r41.lo, 536870911.@
	;;
	minrbod $r40r41r42r43.x = $r41
	;;
	minrhqd $r40r41.hi = $r40r41r42r43.y
	;;
	minrwpd $r42 = $r42r43.lo
	;;
	minubo $r40r41r42r43.z = $r43, $r42r43.hi
	;;
	minubo $r40r41r42r43.t = $r44, 536870911
	;;
	minud $r44r45.lo = $r44r45r46r47.x, 2305843009213693951
	;;
	minud $r45 = $r44r45.hi, $r44r45r46r47.y
	;;
	minud $r46 = $r46r47.lo, -64
	;;
	minud $r44r45r46r47.z = $r47, -8589934592
	;;
	minud $r46r47.hi = $r44r45r46r47.t, 536870911.@
	;;
	minuhq $r48 = $r48r49.lo, $r48r49r50r51.x
	;;
	minuhq $r49 = $r48r49.hi, 536870911
	;;
	minurbod $r48r49r50r51.y = $r50
	;;
	minurhqd $r50r51.lo = $r48r49r50r51.z
	;;
	minurwpd $r51 = $r50r51.hi
	;;
	minuwp $r48r49r50r51.t = $r52, $r52r53.lo
	;;
	minuwp $r52r53r54r55.x = $r53, 536870911.@
	;;
	minuw $r52r53.hi = $r52r53r54r55.y, $r54
	;;
	minuw $r54r55.lo = $r52r53r54r55.z, -64
	;;
	minuw $r55 = $r54r55.hi, -8589934592
	;;
	minwp $r52r53r54r55.t = $r56, $r56r57.lo
	;;
	minwp $r56r57r58r59.x = $r57, 536870911
	;;
	minw $r56r57.hi = $r56r57r58r59.y, $r58
	;;
	minw $r58r59.lo = $r56r57r58r59.z, -64
	;;
	minw $r59 = $r58r59.hi, -8589934592
	;;
	mm212w $r44r45r46r47.hi = $r56r57r58r59.t, $r60
	;;
	mma212w $r48r49 = $r60r61.lo, $r60r61r62r63.x
	;;
	mms212w $r48r49r50r51.lo = $r61, $r60r61.hi
	;;
	msbfdt $r50r51 = $r60r61r62r63.y, $r62
	;;
	msbfd $r62r63.lo = $r60r61r62r63.z, $r63
	;;
	msbfhq $r62r63.hi = $r60r61r62r63.t, $r0
	;;
	msbfhwq $r48r49r50r51.hi = $r0r1.lo, $r0r1r2r3.x
	;;
	msbfmwq $r52r53 = $r52r53r54r55.lo, $r54r55
	;;
	msbfsudt $r52r53r54r55.hi = $r1, $r0r1.hi
	;;
	msbfsuhwq $r56r57 = $r0r1r2r3.y, $r2
	;;
	msbfsumwq $r56r57r58r59.lo = $r58r59, $r56r57r58r59.hi
	;;
	msbfsuwdp $r60r61 = $r2r3.lo, $r0r1r2r3.z
	;;
	msbfsuwd $r3 = $r2r3.hi, $r0r1r2r3.t
	;;
	msbfsuwd $r4 = $r4r5.lo, 536870911
	;;
	msbfudt $r60r61r62r63.lo = $r4r5r6r7.x, $r5
	;;
	msbfuhwq $r62r63 = $r4r5.hi, $r4r5r6r7.y
	;;
	msbfumwq $r60r61r62r63.hi = $r0r1, $r0r1r2r3.lo
	;;
	msbfuwdp $r2r3 = $r6, $r6r7.lo
	;;
	msbfuwd $r4r5r6r7.z = $r7, $r6r7.hi
	;;
	msbfuwd $r4r5r6r7.t = $r8, 536870911
	;;
	msbfuzdt $r0r1r2r3.hi = $r8r9.lo, $r8r9r10r11.x
	;;
	msbfwdp $r4r5 = $r9, $r8r9.hi
	;;
	msbfwd $r8r9r10r11.y = $r10, $r10r11.lo
	;;
	msbfwd $r8r9r10r11.z = $r11, 536870911
	;;
	msbfwp $r10r11.hi = $r8r9r10r11.t, $r12
	;;
	msbfwq $r4r5r6r7.lo = $r6r7, $r4r5r6r7.hi
	;;
	msbfw $sp = $r13, $tp
	;;
	msbfw $r14 = $fp, 536870911
	;;
	muldt $r8r9 = $r15, $rp
	;;
	muld $r16 = $r16r17.lo, $r16r17r18r19.x
	;;
	muld $r17 = $r16r17.hi, 536870911
	;;
	mulhq $r16r17r18r19.y = $r18, $r18r19.lo
	;;
	mulhq $r16r17r18r19.z = $r19, 536870911
	;;
	mulhwq $r8r9r10r11.lo = $r18r19.hi, $r16r17r18r19.t
	;;
	mulmwq $r10r11 = $r8r9r10r11.hi, $r12r13
	;;
	mulsudt $r12r13r14r15.lo = $r20, $r20r21.lo
	;;
	mulsuhwq $r14r15 = $r20r21r22r23.x, $r21
	;;
	mulsumwq $r12r13r14r15.hi = $r16r17, $r16r17r18r19.lo
	;;
	mulsuwdp $r18r19 = $r20r21.hi, $r20r21r22r23.y
	;;
	mulsuwd $r22 = $r22r23.lo, $r20r21r22r23.z
	;;
	mulsuwd $r23 = $r22r23.hi, 536870911
	;;
	muludt $r16r17r18r19.hi = $r20r21r22r23.t, $r24
	;;
	muluhwq $r20r21 = $r24r25.lo, $r24r25r26r27.x
	;;
	mulumwq $r20r21r22r23.lo = $r22r23, $r20r21r22r23.hi
	;;
	muluwdp $r24r25 = $r25, $r24r25.hi
	;;
	muluwd $r24r25r26r27.y = $r26, $r26r27.lo
	;;
	muluwd $r24r25r26r27.z = $r27, 536870911
	;;
	mulwdp $r24r25r26r27.lo = $r26r27.hi, $r24r25r26r27.t
	;;
	mulwd $r28 = $r28r29.lo, $r28r29r30r31.x
	;;
	mulwd $r29 = $r28r29.hi, 536870911
	;;
	mulwp $r28r29r30r31.y = $r30, $r30r31.lo
	;;
	mulwp $r28r29r30r31.z = $r31, 536870911
	;;
	mulwq $r26r27 = $r24r25r26r27.hi, $r28r29
	;;
	mulw $r30r31.hi = $r28r29r30r31.t, $r32
	;;
	mulw $r32r33.lo = $r32r33r34r35.x, 536870911
	;;
	nandd $r33 = $r32r33.hi, 2305843009213693951
	;;
	nandd $r32r33r34r35.y = $r34, $r34r35.lo
	;;
	nandd $r32r33r34r35.z = $r35, -64
	;;
	nandd $r34r35.hi = $r32r33r34r35.t, -8589934592
	;;
	nandd $r36 = $r36r37.lo, 536870911.@
	;;
	nandw $r36r37r38r39.x = $r37, $r36r37.hi
	;;
	nandw $r36r37r38r39.y = $r38, -64
	;;
	nandw $r38r39.lo = $r36r37r38r39.z, -8589934592
	;;
	negbo $r39 = $r38r39.hi
	;;
	negd $r36r37r38r39.t = $r40
	;;
	neghq $r40r41.lo = $r40r41r42r43.x
	;;
	negsbo $r41 = $r40r41.hi
	;;
	negsd $r40r41r42r43.y = $r42
	;;
	negshq $r42r43.lo = $r40r41r42r43.z
	;;
	negswp $r43 = $r42r43.hi
	;;
	negsw $r40r41r42r43.t = $r44
	;;
	negwp $r44r45.lo = $r44r45r46r47.x
	;;
	negw $r45 = $r44r45.hi
	;;
	niord $r44r45r46r47.y = $r46, 2305843009213693951
	;;
	niord $r46r47.lo = $r44r45r46r47.z, $r47
	;;
	niord $r46r47.hi = $r44r45r46r47.t, -64
	;;
	niord $r48 = $r48r49.lo, -8589934592
	;;
	niord $r48r49r50r51.x = $r49, 536870911
	;;
	niorw $r48r49.hi = $r48r49r50r51.y, $r50
	;;
	niorw $r50r51.lo = $r48r49r50r51.z, -64
	;;
	niorw $r51 = $r50r51.hi, -8589934592
	;;
	nop
	;;
	nord $r48r49r50r51.t = $r52, 2305843009213693951
	;;
	nord $r52r53.lo = $r52r53r54r55.x, $r53
	;;
	nord $r52r53.hi = $r52r53r54r55.y, -64
	;;
	nord $r54 = $r54r55.lo, -8589934592
	;;
	nord $r52r53r54r55.z = $r55, 536870911.@
	;;
	norw $r54r55.hi = $r52r53r54r55.t, $r56
	;;
	norw $r56r57.lo = $r56r57r58r59.x, -64
	;;
	norw $r57 = $r56r57.hi, -8589934592
	;;
	notd $r56r57r58r59.y = $r58
	;;
	notw $r58r59.lo = $r56r57r58r59.z
	;;
	nxord $r59 = $r58r59.hi, 2305843009213693951
	;;
	nxord $r56r57r58r59.t = $r60, $r60r61.lo
	;;
	nxord $r60r61r62r63.x = $r61, -64
	;;
	nxord $r60r61.hi = $r60r61r62r63.y, -8589934592
	;;
	nxord $r62 = $r62r63.lo, 536870911
	;;
	nxorw $r60r61r62r63.z = $r63, $r62r63.hi
	;;
	nxorw $r60r61r62r63.t = $r0, -64
	;;
	nxorw $r0r1.lo = $r0r1r2r3.x, -8589934592
	;;
	ord $r1 = $r0r1.hi, 2305843009213693951
	;;
	ord $r0r1r2r3.y = $r2, $r2r3.lo
	;;
	ord $r0r1r2r3.z = $r3, -64
	;;
	ord $r2r3.hi = $r0r1r2r3.t, -8589934592
	;;
	ord $r4 = $r4r5.lo, 536870911.@
	;;
	ornd $r4r5r6r7.x = $r5, 2305843009213693951
	;;
	ornd $r4r5.hi = $r4r5r6r7.y, $r6
	;;
	ornd $r6r7.lo = $r4r5r6r7.z, -64
	;;
	ornd $r7 = $r6r7.hi, -8589934592
	;;
	ornd $r4r5r6r7.t = $r8, 536870911
	;;
	ornw $r8r9.lo = $r8r9r10r11.x, $r9
	;;
	ornw $r8r9.hi = $r8r9r10r11.y, -64
	;;
	ornw $r10 = $r10r11.lo, -8589934592
	;;
	orrbod $r8r9r10r11.z = $r11
	;;
	orrhqd $r10r11.hi = $r8r9r10r11.t
	;;
	orrwpd $r12 = $sp
	;;
	orw $r13 = $tp, $r14
	;;
	orw $fp = $r15, -64
	;;
	orw $rp = $r16, -8589934592
	;;
	pcrel $r16r17.lo = 2305843009213693951
	;;
	pcrel $r16r17r18r19.x = -549755813888
	;;
	pcrel $r17 = -4096
	;;
	ret
	;;
	rfe
	;;
	rolwps $r16r17.hi = $r16r17r18r19.y, $r18
	;;
	rolwps $r18r19.lo = $r16r17r18r19.z, 7
	;;
	rolw $r19 = $r18r19.hi, $r16r17r18r19.t
	;;
	rolw $r20 = $r20r21.lo, 7
	;;
	rorwps $r20r21r22r23.x = $r21, $r20r21.hi
	;;
	rorwps $r20r21r22r23.y = $r22, 7
	;;
	rorw $r22r23.lo = $r20r21r22r23.z, $r23
	;;
	rorw $r22r23.hi = $r20r21r22r23.t, 7
	;;
	rswap $r24 = $mmc
	;;
	rswap $r24r25.lo = $s0
	;;
	rswap $r24r25r26r27.x = $pc
	;;
	sbfbo $r25 = $r24r25.hi, $r24r25r26r27.y
	;;
	sbfbo $r26 = $r26r27.lo, 536870911.@
	;;
	sbfcd.i $r24r25r26r27.z = $r27, $r26r27.hi
	;;
	sbfcd.i $r24r25r26r27.t = $r28, 536870911
	;;
	sbfcd $r28r29.lo = $r28r29r30r31.x, $r29
	;;
	sbfcd $r28r29.hi = $r28r29r30r31.y, 536870911
	;;
	sbfd $r30 = $r30r31.lo, 2305843009213693951
	;;
	sbfd $r28r29r30r31.z = $r31, $r30r31.hi
	;;
	sbfd $r28r29r30r31.t = $r32, -64
	;;
	sbfd $r32r33.lo = $r32r33r34r35.x, -8589934592
	;;
	sbfd $r33 = $r32r33.hi, 536870911
	;;
	sbfhq $r32r33r34r35.y = $r34, $r34r35.lo
	;;
	sbfhq $r32r33r34r35.z = $r35, 536870911.@
	;;
	sbfsbo $r34r35.hi = $r32r33r34r35.t, $r36
	;;
	sbfsbo $r36r37.lo = $r36r37r38r39.x, 536870911
	;;
	sbfsd $r37 = $r36r37.hi, $r36r37r38r39.y
	;;
	sbfsd $r38 = $r38r39.lo, 536870911.@
	;;
	sbfshq $r36r37r38r39.z = $r39, $r38r39.hi
	;;
	sbfshq $r36r37r38r39.t = $r40, 536870911
	;;
	sbfswp $r40r41.lo = $r40r41r42r43.x, $r41
	;;
	sbfswp $r40r41.hi = $r40r41r42r43.y, 536870911.@
	;;
	sbfsw $r42 = $r42r43.lo, $r40r41r42r43.z
	;;
	sbfsw $r43 = $r42r43.hi, 536870911
	;;
	sbfusbo $r40r41r42r43.t = $r44, $r44r45.lo
	;;
	sbfusbo $r44r45r46r47.x = $r45, 536870911
	;;
	sbfusd $r44r45.hi = $r44r45r46r47.y, $r46
	;;
	sbfusd $r46r47.lo = $r44r45r46r47.z, 536870911.@
	;;
	sbfushq $r47 = $r46r47.hi, $r44r45r46r47.t
	;;
	sbfushq $r48 = $r48r49.lo, 536870911
	;;
	sbfuswp $r48r49r50r51.x = $r49, $r48r49.hi
	;;
	sbfuswp $r48r49r50r51.y = $r50, 536870911.@
	;;
	sbfusw $r50r51.lo = $r48r49r50r51.z, $r51
	;;
	sbfusw $r50r51.hi = $r48r49r50r51.t, 536870911
	;;
	sbfuwd $r52 = $r52r53.lo, $r52r53r54r55.x
	;;
	sbfuwd $r53 = $r52r53.hi, 536870911
	;;
	sbfwd $r52r53r54r55.y = $r54, $r54r55.lo
	;;
	sbfwd $r52r53r54r55.z = $r55, 536870911
	;;
	sbfwp $r54r55.hi = $r52r53r54r55.t, $r56
	;;
	sbfwp $r56r57.lo = $r56r57r58r59.x, 536870911
	;;
	sbfw $r57 = $r56r57.hi, $r56r57r58r59.y
	;;
	sbfw $r58 = $r58r59.lo, -64
	;;
	sbfw $r56r57r58r59.z = $r59, -8589934592
	;;
	sbfx16bo $r58r59.hi = $r56r57r58r59.t, $r60
	;;
	sbfx16bo $r60r61.lo = $r60r61r62r63.x, 536870911.@
	;;
	sbfx16d $r61 = $r60r61.hi, $r60r61r62r63.y
	;;
	sbfx16d $r62 = $r62r63.lo, 536870911
	;;
	sbfx16hq $r60r61r62r63.z = $r63, $r62r63.hi
	;;
	sbfx16hq $r60r61r62r63.t = $r0, 536870911.@
	;;
	sbfx16uwd $r0r1.lo = $r0r1r2r3.x, $r1
	;;
	sbfx16uwd $r0r1.hi = $r0r1r2r3.y, 536870911
	;;
	sbfx16wd $r2 = $r2r3.lo, $r0r1r2r3.z
	;;
	sbfx16wd $r3 = $r2r3.hi, 536870911
	;;
	sbfx16wp $r0r1r2r3.t = $r4, $r4r5.lo
	;;
	sbfx16wp $r4r5r6r7.x = $r5, 536870911
	;;
	sbfx16w $r4r5.hi = $r4r5r6r7.y, $r6
	;;
	sbfx16w $r6r7.lo = $r4r5r6r7.z, 536870911
	;;
	sbfx2bo $r7 = $r6r7.hi, $r4r5r6r7.t
	;;
	sbfx2bo $r8 = $r8r9.lo, 536870911.@
	;;
	sbfx2d $r8r9r10r11.x = $r9, $r8r9.hi
	;;
	sbfx2d $r8r9r10r11.y = $r10, 536870911
	;;
	sbfx2hq $r10r11.lo = $r8r9r10r11.z, $r11
	;;
	sbfx2hq $r10r11.hi = $r8r9r10r11.t, 536870911.@
	;;
	sbfx2uwd $r12 = $sp, $r13
	;;
	sbfx2uwd $tp = $r14, 536870911
	;;
	sbfx2wd $fp = $r15, $rp
	;;
	sbfx2wd $r16 = $r16r17.lo, 536870911
	;;
	sbfx2wp $r16r17r18r19.x = $r17, $r16r17.hi
	;;
	sbfx2wp $r16r17r18r19.y = $r18, 536870911
	;;
	sbfx2w $r18r19.lo = $r16r17r18r19.z, $r19
	;;
	sbfx2w $r18r19.hi = $r16r17r18r19.t, 536870911
	;;
	sbfx32d $r20 = $r20r21.lo, $r20r21r22r23.x
	;;
	sbfx32d $r21 = $r20r21.hi, 536870911.@
	;;
	sbfx32uwd $r20r21r22r23.y = $r22, $r22r23.lo
	;;
	sbfx32uwd $r20r21r22r23.z = $r23, 536870911
	;;
	sbfx32wd $r22r23.hi = $r20r21r22r23.t, $r24
	;;
	sbfx32wd $r24r25.lo = $r24r25r26r27.x, 536870911
	;;
	sbfx32w $r25 = $r24r25.hi, $r24r25r26r27.y
	;;
	sbfx32w $r26 = $r26r27.lo, 536870911
	;;
	sbfx4bo $r24r25r26r27.z = $r27, $r26r27.hi
	;;
	sbfx4bo $r24r25r26r27.t = $r28, 536870911
	;;
	sbfx4d $r28r29.lo = $r28r29r30r31.x, $r29
	;;
	sbfx4d $r28r29.hi = $r28r29r30r31.y, 536870911.@
	;;
	sbfx4hq $r30 = $r30r31.lo, $r28r29r30r31.z
	;;
	sbfx4hq $r31 = $r30r31.hi, 536870911
	;;
	sbfx4uwd $r28r29r30r31.t = $r32, $r32r33.lo
	;;
	sbfx4uwd $r32r33r34r35.x = $r33, 536870911
	;;
	sbfx4wd $r32r33.hi = $r32r33r34r35.y, $r34
	;;
	sbfx4wd $r34r35.lo = $r32r33r34r35.z, 536870911
	;;
	sbfx4wp $r35 = $r34r35.hi, $r32r33r34r35.t
	;;
	sbfx4wp $r36 = $r36r37.lo, 536870911.@
	;;
	sbfx4w $r36r37r38r39.x = $r37, $r36r37.hi
	;;
	sbfx4w $r36r37r38r39.y = $r38, 536870911
	;;
	sbfx64d $r38r39.lo = $r36r37r38r39.z, $r39
	;;
	sbfx64d $r38r39.hi = $r36r37r38r39.t, 536870911
	;;
	sbfx64uwd $r40 = $r40r41.lo, $r40r41r42r43.x
	;;
	sbfx64uwd $r41 = $r40r41.hi, 536870911
	;;
	sbfx64wd $r40r41r42r43.y = $r42, $r42r43.lo
	;;
	sbfx64wd $r40r41r42r43.z = $r43, 536870911
	;;
	sbfx64w $r42r43.hi = $r40r41r42r43.t, $r44
	;;
	sbfx64w $r44r45.lo = $r44r45r46r47.x, 536870911
	;;
	sbfx8bo $r45 = $r44r45.hi, $r44r45r46r47.y
	;;
	sbfx8bo $r46 = $r46r47.lo, 536870911.@
	;;
	sbfx8d $r44r45r46r47.z = $r47, $r46r47.hi
	;;
	sbfx8d $r44r45r46r47.t = $r48, 536870911
	;;
	sbfx8hq $r48r49.lo = $r48r49r50r51.x, $r49
	;;
	sbfx8hq $r48r49.hi = $r48r49r50r51.y, 536870911.@
	;;
	sbfx8uwd $r50 = $r50r51.lo, $r48r49r50r51.z
	;;
	sbfx8uwd $r51 = $r50r51.hi, 536870911
	;;
	sbfx8wd $r48r49r50r51.t = $r52, $r52r53.lo
	;;
	sbfx8wd $r52r53r54r55.x = $r53, 536870911
	;;
	sbfx8wp $r52r53.hi = $r52r53r54r55.y, $r54
	;;
	sbfx8wp $r54r55.lo = $r52r53r54r55.z, 536870911
	;;
	sbfx8w $r55 = $r54r55.hi, $r52r53r54r55.t
	;;
	sbfx8w $r56 = $r56r57.lo, 536870911
	;;
	sbmm8 $r56r57r58r59.x = $r57, 2305843009213693951
	;;
	sbmm8 $r56r57.hi = $r56r57r58r59.y, $r58
	;;
	sbmm8 $r58r59.lo = $r56r57r58r59.z, -64
	;;
	sbmm8 $r59 = $r58r59.hi, -8589934592
	;;
	sbmm8 $r56r57r58r59.t = $r60, 536870911.@
	;;
	sbmmt8 $r60r61.lo = $r60r61r62r63.x, 2305843009213693951
	;;
	sbmmt8 $r61 = $r60r61.hi, $r60r61r62r63.y
	;;
	sbmmt8 $r62 = $r62r63.lo, -64
	;;
	sbmmt8 $r60r61r62r63.z = $r63, -8589934592
	;;
	sbmmt8 $r62r63.hi = $r60r61r62r63.t, 536870911
	;;
	sb $r0[$r0r1.lo] = $r0r1r2r3.x
	;;
	sb 2305843009213693951[$r1] = $r0r1.hi
	;;
	sb.dlez $r0r1r2r3.y? -1125899906842624[$r2] = $r2r3.lo
	;;
	sb.dgtz $r0r1r2r3.z? -8388608[$r3] = $r2r3.hi
	;;
	sb.odd $r0r1r2r3.t? [$r4] = $r4r5.lo
	;;
	sb -64[$r4r5r6r7.x] = $r5
	;;
	sb -8589934592[$r4r5.hi] = $r4r5r6r7.y
	;;
	scall $r6
	;;
	scall 511
	;;
	sd.xs $r6r7.lo[$r4r5r6r7.z] = $r7
	;;
	sd 2305843009213693951[$r6r7.hi] = $r4r5r6r7.t
	;;
	sd.even $r8? -1125899906842624[$r8r9.lo] = $r8r9r10r11.x
	;;
	sd.wnez $r9? -8388608[$r8r9.hi] = $r8r9r10r11.y
	;;
	sd.weqz $r10? [$r10r11.lo] = $r8r9r10r11.z
	;;
	sd -64[$r11] = $r10r11.hi
	;;
	sd -8589934592[$r8r9r10r11.t] = $r12
	;;
	set $s28 = $sp
	;;
	set $ra = $r13
	;;
	set $ps = $tp
	;;
	set $ps = $r14
	;;
	sh $fp[$r15] = $rp
	;;
	sh 2305843009213693951[$r16] = $r16r17.lo
	;;
	sh.wltz $r16r17r18r19.x? -1125899906842624[$r17] = $r16r17.hi
	;;
	sh.wgez $r16r17r18r19.y? -8388608[$r18] = $r18r19.lo
	;;
	sh.wlez $r16r17r18r19.z? [$r19] = $r18r19.hi
	;;
	sh -64[$r16r17r18r19.t] = $r20
	;;
	sh -8589934592[$r20r21.lo] = $r20r21r22r23.x
	;;
	sleep
	;;
	sllbos $r21 = $r20r21.hi, $r20r21r22r23.y
	;;
	sllbos $r22 = $r22r23.lo, 7
	;;
	slld $r20r21r22r23.z = $r23, $r22r23.hi
	;;
	slld $r20r21r22r23.t = $r24, 7
	;;
	sllhqs $r24r25.lo = $r24r25r26r27.x, $r25
	;;
	sllhqs $r24r25.hi = $r24r25r26r27.y, 7
	;;
	sllwps $r26 = $r26r27.lo, $r24r25r26r27.z
	;;
	sllwps $r27 = $r26r27.hi, 7
	;;
	sllw $r24r25r26r27.t = $r28, $r28r29.lo
	;;
	sllw $r28r29r30r31.x = $r29, 7
	;;
	slsbos $r28r29.hi = $r28r29r30r31.y, $r30
	;;
	slsbos $r30r31.lo = $r28r29r30r31.z, 7
	;;
	slsd $r31 = $r30r31.hi, $r28r29r30r31.t
	;;
	slsd $r32 = $r32r33.lo, 7
	;;
	slshqs $r32r33r34r35.x = $r33, $r32r33.hi
	;;
	slshqs $r32r33r34r35.y = $r34, 7
	;;
	slswps $r34r35.lo = $r32r33r34r35.z, $r35
	;;
	slswps $r34r35.hi = $r32r33r34r35.t, 7
	;;
	slsw $r36 = $r36r37.lo, $r36r37r38r39.x
	;;
	slsw $r37 = $r36r37.hi, 7
	;;
	slusbos $r36r37r38r39.y = $r38, $r38r39.lo
	;;
	slusbos $r36r37r38r39.z = $r39, 7
	;;
	slusd $r38r39.hi = $r36r37r38r39.t, $r40
	;;
	slusd $r40r41.lo = $r40r41r42r43.x, 7
	;;
	slushqs $r41 = $r40r41.hi, $r40r41r42r43.y
	;;
	slushqs $r42 = $r42r43.lo, 7
	;;
	sluswps $r40r41r42r43.z = $r43, $r42r43.hi
	;;
	sluswps $r40r41r42r43.t = $r44, 7
	;;
	slusw $r44r45.lo = $r44r45r46r47.x, $r45
	;;
	slusw $r44r45.hi = $r44r45r46r47.y, 7
	;;
	so.xs $r46[$r46r47.lo] = $r44r45r46r47
	;;
	so 2305843009213693951[$r44r45r46r47.z] = $r48r49r50r51
	;;
	so.u3 $r47? -1125899906842624[$r46r47.hi] = $r52r53r54r55
	;;
	so.mt $r44r45r46r47.t? -8388608[$r48] = $r56r57r58r59
	;;
	so.mf $r48r49.lo? [$r48r49r50r51.x] = $r60r61r62r63
	;;
	so.wgtz $r49? -1125899906842624[$r48r49.hi] = $r0r1r2r3
	;;
	so.dnez $r48r49r50r51.y? -8388608[$r50] = $r4r5r6r7
	;;
	so.deqz $r50r51.lo? [$r48r49r50r51.z] = $r8r9r10r11
	;;
	so -64[$r51] = $r12r13r14r15
	;;
	so -8589934592[$r50r51.hi] = $r16r17r18r19
	;;
	sq $r48r49r50r51.t[$r52] = $r28r29r30r31.lo
	;;
	sq 2305843009213693951[$r52r53.lo] = $r30r31
	;;
	sq.dltz $r52r53r54r55.x? -1125899906842624[$r53] = $r28r29r30r31.hi
	;;
	sq.dgez $r52r53.hi? -8388608[$r52r53r54r55.y] = $r32r33
	;;
	sq.dlez $r54? [$r54r55.lo] = $r32r33r34r35.lo
	;;
	sq -64[$r52r53r54r55.z] = $r34r35
	;;
	sq -8589934592[$r55] = $r32r33r34r35.hi
	;;
	srabos $r54r55.hi = $r52r53r54r55.t, $r56
	;;
	srabos $r56r57.lo = $r56r57r58r59.x, 7
	;;
	srad $r57 = $r56r57.hi, $r56r57r58r59.y
	;;
	srad $r58 = $r58r59.lo, 7
	;;
	srahqs $r56r57r58r59.z = $r59, $r58r59.hi
	;;
	srahqs $r56r57r58r59.t = $r60, 7
	;;
	srawps $r60r61.lo = $r60r61r62r63.x, $r61
	;;
	srawps $r60r61.hi = $r60r61r62r63.y, 7
	;;
	sraw $r62 = $r62r63.lo, $r60r61r62r63.z
	;;
	sraw $r63 = $r62r63.hi, 7
	;;
	srlbos $r60r61r62r63.t = $r0, $r0r1.lo
	;;
	srlbos $r0r1r2r3.x = $r1, 7
	;;
	srld $r0r1.hi = $r0r1r2r3.y, $r2
	;;
	srld $r2r3.lo = $r0r1r2r3.z, 7
	;;
	srlhqs $r3 = $r2r3.hi, $r0r1r2r3.t
	;;
	srlhqs $r4 = $r4r5.lo, 7
	;;
	srlwps $r4r5r6r7.x = $r5, $r4r5.hi
	;;
	srlwps $r4r5r6r7.y = $r6, 7
	;;
	srlw $r6r7.lo = $r4r5r6r7.z, $r7
	;;
	srlw $r6r7.hi = $r4r5r6r7.t, 7
	;;
	srsbos $r8 = $r8r9.lo, $r8r9r10r11.x
	;;
	srsbos $r9 = $r8r9.hi, 7
	;;
	srsd $r8r9r10r11.y = $r10, $r10r11.lo
	;;
	srsd $r8r9r10r11.z = $r11, 7
	;;
	srshqs $r10r11.hi = $r8r9r10r11.t, $r12
	;;
	srshqs $sp = $r13, 7
	;;
	srswps $tp = $r14, $fp
	;;
	srswps $r15 = $rp, 7
	;;
	srsw $r16 = $r16r17.lo, $r16r17r18r19.x
	;;
	srsw $r17 = $r16r17.hi, 7
	;;
	stop
	;;
	stsud $r16r17r18r19.y = $r18, $r18r19.lo
	;;
	stsud $r16r17r18r19.z = $r19, 536870911.@
	;;
	stsuhq $r18r19.hi = $r16r17r18r19.t, $r20
	;;
	stsuhq $r20r21.lo = $r20r21r22r23.x, 536870911
	;;
	stsuwp $r21 = $r20r21.hi, $r20r21r22r23.y
	;;
	stsuwp $r22 = $r22r23.lo, 536870911.@
	;;
	stsuw $r20r21r22r23.z = $r23, $r22r23.hi
	;;
	stsuw $r20r21r22r23.t = $r24, 536870911
	;;
	sw.xs $r24r25.lo[$r24r25r26r27.x] = $r25
	;;
	sw 2305843009213693951[$r24r25.hi] = $r24r25r26r27.y
	;;
	sw.dgtz $r26? -1125899906842624[$r26r27.lo] = $r24r25r26r27.z
	;;
	sw.odd $r27? -8388608[$r26r27.hi] = $r24r25r26r27.t
	;;
	sw.even $r28? [$r28r29.lo] = $r28r29r30r31.x
	;;
	sw -64[$r29] = $r28r29.hi
	;;
	sw -8589934592[$r28r29r30r31.y] = $r30
	;;
	sxbd $r30r31.lo = $r28r29r30r31.z
	;;
	sxhd $r31 = $r30r31.hi
	;;
	sxlbhq $r28r29r30r31.t = $r32
	;;
	sxlhwp $r32r33.lo = $r32r33r34r35.x
	;;
	sxmbhq $r33 = $r32r33.hi
	;;
	sxmhwp $r32r33r34r35.y = $r34
	;;
	sxwd $r34r35.lo = $r32r33r34r35.z
	;;
	syncgroup $r35
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
	waitit $r34r35.hi
	;;
	wfxl $ps, $r32r33r34r35.t
	;;
	wfxl $pcr, $r36
	;;
	wfxl $s1, $r36r37.lo
	;;
	wfxm $s1, $r36r37r38r39.x
	;;
	wfxm $s2, $r37
	;;
	wfxm $pcr, $r36r37.hi
	;;
	xaccesso $r20r21r22r23 = $a0..a1, $r36r37r38r39.y
	;;
	xaccesso $r24r25r26r27 = $a0..a3, $r38
	;;
	xaccesso $r28r29r30r31 = $a0..a7, $r38r39.lo
	;;
	xaccesso $r32r33r34r35 = $a0..a15, $r36r37r38r39.z
	;;
	xaccesso $r36r37r38r39 = $a0..a31, $r39
	;;
	xaccesso $r40r41r42r43 = $a0..a63, $r38r39.hi
	;;
	xaligno $a0 = $a2..a3, $r36r37r38r39.t
	;;
	xaligno $a0a1.lo = $a4..a7, $r40
	;;
	xaligno $a0a1a2a3.x = $a8..a15, $r40r41.lo
	;;
	xaligno $a1 = $a16..a31, $r40r41r42r43.x
	;;
	xaligno $a0a1.hi = $a32..a63, $r41
	;;
	xaligno $a0a1a2a3.y = $a0..a63, $r40r41.hi
	;;
	xandno $a2 = $a2a3.lo, $a0a1a2a3.z
	;;
	xando $a3 = $a2a3.hi, $a0a1a2a3.t
	;;
	xclampwo $a4 = $a4a5.lo, $a4a5a6a7.x
	;;
	xcopyo $a5 = $a4a5.hi
	;;
	xcopyv $a0a1a2a3 = $a4a5a6a7
	;;
	xcopyx $a0a1 = $a0a1a2a3.lo
	;;
	xffma44hw.rna.s $a2a3 = $a4a5a6a7.y, $a6
	;;
	xfmaxhx $a6a7.lo = $a4a5a6a7.z, $a7
	;;
	xfminhx $a6a7.hi = $a4a5a6a7.t, $a8
	;;
	xfmma484hw.rnz $a0a1a2a3.hi = $a4a5, $a4a5a6a7.lo
	;;
	xfnarrow44wh.ro.s $a8a9.lo = $a6a7
	;;
	xfscalewo $a8a9a10a11.x = $a9, $r40r41r42r43.y
	;;
	xioro $a8a9.hi = $a8a9a10a11.y, $a10
	;;
	xlo.u.q0 $a8a9a10a11 = $r42[$r42r43.lo]
	;;
	xlo.us.xs $a10a11.lo = $r40r41r42r43.z[$r43]
	;;
	xlo.dnez.q1 $r42r43.hi? $a12a13a14a15 = -1125899906842624[$r40r41r42r43.t]
	;;
	xlo.s.deqz.q2 $r44? $a16a17a18a19 = -8388608[$r44r45.lo]
	;;
	xlo.u.wnez.q3 $r44r45r46r47.x? $a20a21a22a23 = [$r45]
	;;
	xlo.us.weqz $r44r45.hi? $a8a9a10a11.z = -1125899906842624[$r44r45r46r47.y]
	;;
	xlo.mt $r46? $a11 = -8388608[$r46r47.lo]
	;;
	xlo.s.mf $r44r45r46r47.z? $a10a11.hi = [$r47]
	;;
	xlo.u $a4..a5, $r46r47.hi = -1125899906842624[$r44r45r46r47.t]
	;;
	xlo.us.q $a6..a7, $r48 = -8388608[$r48r49.lo]
	;;
	xlo.d $a8..a9, $r48r49r50r51.x = [$r49]
	;;
	xlo.s.w $a8..a11, $r48r49.hi = -1125899906842624[$r48r49r50r51.y]
	;;
	xlo.u.h $a12..a15, $r50 = -8388608[$r50r51.lo]
	;;
	xlo.us.b $a16..a19, $r48r49r50r51.z = [$r51]
	;;
	xlo $a16..a23, $r50r51.hi = -1125899906842624[$r48r49r50r51.t]
	;;
	xlo.s.q $a24..a31, $r52 = -8388608[$r52r53.lo]
	;;
	xlo.u.d $a32..a39, $r52r53r54r55.x = [$r53]
	;;
	xlo.us.w $a32..a47, $r52r53.hi = -1125899906842624[$r52r53r54r55.y]
	;;
	xlo.h $a48..a63, $r54 = -8388608[$r54r55.lo]
	;;
	xlo.s.b $a0..a15, $r52r53r54r55.z = [$r55]
	;;
	xlo.u $a0..a31, $r54r55.hi = -1125899906842624[$r52r53r54r55.t]
	;;
	xlo.us.q $a32..a63, $r56 = -8388608[$r56r57.lo]
	;;
	xlo.d $a0..a31, $r56r57r58r59.x = [$r57]
	;;
	xlo.s.w $a0..a63, $r56r57.hi = -1125899906842624[$r56r57r58r59.y]
	;;
	xlo.u.h $a0..a63, $r58 = -8388608[$r58r59.lo]
	;;
	xlo.us.b $a0..a63, $r56r57r58r59.z = [$r59]
	;;
	xlo.q0 $a24a25a26a27 = 2305843009213693951[$r58r59.hi]
	;;
	xlo.s.q1 $a28a29a30a31 = -64[$r56r57r58r59.t]
	;;
	xlo.u.q2 $a32a33a34a35 = -8589934592[$r60]
	;;
	xlo.us $a8a9a10a11.t = 2305843009213693951[$r60r61.lo]
	;;
	xlo $a12 = -64[$r60r61r62r63.x]
	;;
	xlo.s $a12a13.lo = -8589934592[$r61]
	;;
	xmadd44bw0 $a4a5a6a7.hi = $a12a13a14a15.x, $a13
	;;
	xmadd44bw1 $a8a9 = $a12a13.hi, $a12a13a14a15.y
	;;
	xmaddifwo.rn.s $a14 = $a14a15.lo, $a12a13a14a15.z
	;;
	xmaddsu44bw0 $a8a9a10a11.lo = $a15, $a14a15.hi
	;;
	xmaddsu44bw1 $a10a11 = $a12a13a14a15.t, $a16
	;;
	xmaddu44bw0 $a8a9a10a11.hi = $a16a17.lo, $a16a17a18a19.x
	;;
	xmaddu44bw1 $a12a13 = $a17, $a16a17.hi
	;;
	xmma4164bw $a12a13a14a15.lo = $a14a15, $a12a13a14a15.hi
	;;
	xmma484bw $a16a17 = $a16a17a18a19.y, $a18
	;;
	xmmasu4164bw $a16a17a18a19.lo = $a18a19, $a16a17a18a19.hi
	;;
	xmmasu484bw $a20a21 = $a18a19.lo, $a16a17a18a19.z
	;;
	xmmau4164bw $a20a21a22a23.lo = $a22a23, $a20a21a22a23.hi
	;;
	xmmau484bw $a24a25 = $a19, $a18a19.hi
	;;
	xmmaus4164bw $a24a25a26a27.lo = $a26a27, $a24a25a26a27.hi
	;;
	xmmaus484bw $a28a29 = $a16a17a18a19.t, $a20
	;;
	xmovefd $r60r61.hi = $a0_x
	;;
	xmovefo $r44r45r46r47 = $a20a21.lo
	;;
	xmovefq $r36r37 = $a0_lo
	;;
	xmovetd $a0_t = $r60r61r62r63.y
	;;
	xmovetd $a0_x = $r62
	;;
	xmovetd $a0_y = $r62r63.lo
	;;
	xmovetd $a0_z = $r60r61r62r63.z
	;;
	xmovetq $a0_lo = $r63, $r62r63.hi
	;;
	xmovetq $a0_hi = $r60r61r62r63.t, $r0
	;;
	xmsbfifwo.ru $a20a21a22a23.x = $a21, $a20a21.hi
	;;
	xmt44d $a36a37a38a39 = $a40a41a42a43
	;;
	xnando $a20a21a22a23.y = $a22, $a22a23.lo
	;;
	xnoro $a20a21a22a23.z = $a23, $a22a23.hi
	;;
	xnxoro $a20a21a22a23.t = $a24, $a24a25.lo
	;;
	xord $r0r1.lo = $r0r1r2r3.x, 2305843009213693951
	;;
	xord $r1 = $r0r1.hi, $r0r1r2r3.y
	;;
	xord $r2 = $r2r3.lo, -64
	;;
	xord $r0r1r2r3.z = $r3, -8589934592
	;;
	xord $r2r3.hi = $r0r1r2r3.t, 536870911
	;;
	xorno $a24a25a26a27.x = $a25, $a24a25.hi
	;;
	xoro $a24a25a26a27.y = $a26, $a26a27.lo
	;;
	xorrbod $r4 = $r4r5.lo
	;;
	xorrhqd $r4r5r6r7.x = $r5
	;;
	xorrwpd $r4r5.hi = $r4r5r6r7.y
	;;
	xorw $r6 = $r6r7.lo, $r4r5r6r7.z
	;;
	xorw $r7 = $r6r7.hi, -64
	;;
	xorw $r4r5r6r7.t = $r8, -8589934592
	;;
	xrecvo.f $a24a25a26a27.z
	;;
	xsbmm8dq $a27 = $a26a27.hi, $a24a25a26a27.t
	;;
	xsbmmt8dq $a28 = $a28a29.lo, $a28a29a30a31.x
	;;
	xsendo.b $a29
	;;
	xsendrecvo.f.b $a28a29.hi, $a28a29a30a31.y
	;;
	xso $r8r9.lo[$r8r9r10r11.x] = $a30
	;;
	xso 2305843009213693951[$r9] = $a30a31.lo
	;;
	xso.mtc $r8r9.hi? -1125899906842624[$r8r9r10r11.y] = $a28a29a30a31.z
	;;
	xso.mfc $r10? -8388608[$r10r11.lo] = $a31
	;;
	xso.dnez $r8r9r10r11.z? [$r11] = $a30a31.hi
	;;
	xso -64[$r10r11.hi] = $a28a29a30a31.t
	;;
	xso -8589934592[$r8r9r10r11.t] = $a32
	;;
	xsplatdo $a32a33.lo = 2305843009213693951
	;;
	xsplatdo $a32a33a34a35.x = -549755813888
	;;
	xsplatdo $a33 = -4096
	;;
	xsplatov.td $a44a45a46a47 = $a32a33.hi
	;;
	xsplatox.zd $a28a29a30a31.lo = $a32a33a34a35.y
	;;
	xsx48bw $a48a49a50a51 = $a34
	;;
	xtrunc48wb $a34a35.lo = $a52a53a54a55
	;;
	xxoro $a32a33a34a35.z = $a35, $a34a35.hi
	;;
	xzx48bw $a56a57a58a59 = $a32a33a34a35.t
	;;
	zxbd $r12 = $sp
	;;
	zxhd $r13 = $tp
	;;
	zxlbhq $r14 = $fp
	;;
	zxlhwp $r15 = $rp
	;;
	zxmbhq $r16 = $r16r17.lo
	;;
	zxmhwp $r16r17r18r19.x = $r17
	;;
	zxwd $r16r17.hi = $r16r17r18r19.y
	;;
	.endp	main
	.section .text
