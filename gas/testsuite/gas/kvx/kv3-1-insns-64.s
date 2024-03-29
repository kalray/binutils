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
	abdd $r0 = $r0r1.lo, 2305843009213693951 	#Opcode-kv3_v1-ABDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	abdd $r0r1r2r3.x = $r1, $r0r1.hi 	#Opcode-kv3_v1-ABDD_registerW_registerZ_registerY_simple
	;;
	abdd $r0r1r2r3.y = $r2, -64 	#Opcode-kv3_v1-ABDD_registerW_registerZ_signed10_simple
	;;
	abdd $r2r3.lo = $r0r1r2r3.z, -8589934592 	#Opcode-kv3_v1-ABDD_registerW_registerZ_upper27_lower10_double
	;;
	abdhq $r3 = $r2r3.hi, $r0r1r2r3.t 	#Opcode-kv3_v1-ABDHQ_registerW_registerZ_registerY_simple
	;;
	abdhq $r4 = $r4r5.lo, 536870911 	#Opcode-kv3_v1-ABDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdwp $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv3_v1-ABDWP_registerW_registerZ_registerY_simple
	;;
	abdwp $r4r5r6r7.y = $r6, 536870911.@ 	#Opcode-kv3_v1-ABDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdw $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v1-ABDW_registerW_registerZ_registerY_simple
	;;
	abdw $r6r7.hi = $r4r5r6r7.t, -64 	#Opcode-kv3_v1-ABDW_registerW_registerZ_signed10_simple
	;;
	abdw $r8 = $r8r9.lo, -8589934592 	#Opcode-kv3_v1-ABDW_registerW_registerZ_upper27_lower10_double
	;;
	absd $r8r9r10r11.x = $r9 	#Opcode-kv3_v1-ABSD_registerW_registerZ_simple
	;;
	abshq $r8r9.hi = $r8r9r10r11.y 	#Opcode-kv3_v1-ABSHQ_registerW_registerZ_double
	;;
	abswp $r10 = $r10r11.lo 	#Opcode-kv3_v1-ABSWP_registerW_registerZ_double
	;;
	absw $r8r9r10r11.z = $r11 	#Opcode-kv3_v1-ABSW_registerW_registerZ_simple
	;;
	acswapd $r10r11.hi[$r8r9r10r11.t] = $r0r1 	#Opcode-kv3_v1-ACSWAPD_doscale_registerY_registerZ_registerU_simple
	;;
	acswapd 2305843009213693951[$r12] = $r0r1r2r3.lo 	#Opcode-kv3_v1-ACSWAPD_extend27_upper27_lower10_registerZ_registerU_triple
	;;
	acswapd.dnez $sp? -1125899906842624[$r13] = $r2r3 	#Opcode-kv3_v1-ACSWAPD_lsucond_registerY_extend27_offset27_registerZ_registerU_triple
	;;
	acswapd.deqz $tp? -8388608[$r14] = $r0r1r2r3.hi 	#Opcode-kv3_v1-ACSWAPD_lsucond_registerY_offset27_registerZ_registerU_double
	;;
	acswapd.dltz $fp? [$r15] = $r4r5 	#Opcode-kv3_v1-ACSWAPD_lsucond_registerY_registerZ_registerU_simple
	;;
	acswapd -64[$rp] = $r4r5r6r7.lo 	#Opcode-kv3_v1-ACSWAPD_signed10_registerZ_registerU_simple
	;;
	acswapd -8589934592[$r16] = $r6r7 	#Opcode-kv3_v1-ACSWAPD_upper27_lower10_registerZ_registerU_double
	;;
	acswapw.xs $r16r17.lo[$r16r17r18r19.x] = $r4r5r6r7.hi 	#Opcode-kv3_v1-ACSWAPW_doscale_registerY_registerZ_registerU_simple
	;;
	acswapw 2305843009213693951[$r17] = $r8r9 	#Opcode-kv3_v1-ACSWAPW_extend27_upper27_lower10_registerZ_registerU_triple
	;;
	acswapw.dgez $r16r17.hi? -1125899906842624[$r16r17r18r19.y] = $r8r9r10r11.lo 	#Opcode-kv3_v1-ACSWAPW_lsucond_registerY_extend27_offset27_registerZ_registerU_triple
	;;
	acswapw.dlez $r18? -8388608[$r18r19.lo] = $r10r11 	#Opcode-kv3_v1-ACSWAPW_lsucond_registerY_offset27_registerZ_registerU_double
	;;
	acswapw.dgtz $r16r17r18r19.z? [$r19] = $r8r9r10r11.hi 	#Opcode-kv3_v1-ACSWAPW_lsucond_registerY_registerZ_registerU_simple
	;;
	acswapw -64[$r18r19.hi] = $r12r13 	#Opcode-kv3_v1-ACSWAPW_signed10_registerZ_registerU_simple
	;;
	acswapw -8589934592[$r16r17r18r19.t] = $r12r13r14r15.lo 	#Opcode-kv3_v1-ACSWAPW_upper27_lower10_registerZ_registerU_double
	;;
	addcd.i $r20 = $r20r21.lo, $r20r21r22r23.x 	#Opcode-kv3_v1-ADDCD.I_registerW_registerZ_registerY_simple
	;;
	addcd.i $r21 = $r20r21.hi, 536870911 	#Opcode-kv3_v1-ADDCD.I_registerW_registerZ_upper27_lower5_double
	;;
	addcd $r20r21r22r23.y = $r22, $r22r23.lo 	#Opcode-kv3_v1-ADDCD_registerW_registerZ_registerY_simple
	;;
	addcd $r20r21r22r23.z = $r23, 536870911 	#Opcode-kv3_v1-ADDCD_registerW_registerZ_upper27_lower5_double
	;;
	addd $r22r23.hi = $r20r21r22r23.t, 2305843009213693951 	#Opcode-kv3_v1-ADDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	addd $r24 = $r24r25.lo, $r24r25r26r27.x 	#Opcode-kv3_v1-ADDD_registerW_registerZ_registerY_simple
	;;
	addd $r25 = $r24r25.hi, -64 	#Opcode-kv3_v1-ADDD_registerW_registerZ_signed10_simple
	;;
	addd $r24r25r26r27.y = $r26, -8589934592 	#Opcode-kv3_v1-ADDD_registerW_registerZ_upper27_lower10_double
	;;
	addhcp.c $r26r27.lo = $r24r25r26r27.z, $r27 	#Opcode-kv3_v1-ADDHCP.C_registerW_registerZ_registerY_simple
	;;
	addhcp.c $r26r27.hi = $r24r25r26r27.t, 536870911 	#Opcode-kv3_v1-ADDHCP.C_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addhq $r28 = $r28r29.lo, $r28r29r30r31.x 	#Opcode-kv3_v1-ADDHQ_registerW_registerZ_registerY_simple
	;;
	addhq $r29 = $r28r29.hi, 536870911.@ 	#Opcode-kv3_v1-ADDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addsd $r28r29r30r31.y = $r30, 2305843009213693951 	#Opcode-kv3_v1-ADDSD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	addsd $r30r31.lo = $r28r29r30r31.z, $r31 	#Opcode-kv3_v1-ADDSD_registerW_registerZ_registerY_simple
	;;
	addsd $r30r31.hi = $r28r29r30r31.t, -64 	#Opcode-kv3_v1-ADDSD_registerW_registerZ_signed10_simple
	;;
	addsd $r32 = $r32r33.lo, -8589934592 	#Opcode-kv3_v1-ADDSD_registerW_registerZ_upper27_lower10_double
	;;
	addshq $r32r33r34r35.x = $r33, $r32r33.hi 	#Opcode-kv3_v1-ADDSHQ_registerW_registerZ_registerY_simple
	;;
	addshq $r32r33r34r35.y = $r34, 536870911 	#Opcode-kv3_v1-ADDSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addswp $r34r35.lo = $r32r33r34r35.z, $r35 	#Opcode-kv3_v1-ADDSWP_registerW_registerZ_registerY_simple
	;;
	addswp $r34r35.hi = $r32r33r34r35.t, 536870911.@ 	#Opcode-kv3_v1-ADDSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addsw $r36 = $r36r37.lo, $r36r37r38r39.x 	#Opcode-kv3_v1-ADDSW_registerW_registerZ_registerY_simple
	;;
	addsw $r37 = $r36r37.hi, 536870911 	#Opcode-kv3_v1-ADDSW_registerW_registerZ_upper27_lower5_double
	;;
	adduwd $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv3_v1-ADDUWD_registerW_registerZ_registerY_simple
	;;
	adduwd $r36r37r38r39.z = $r39, 536870911 	#Opcode-kv3_v1-ADDUWD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addwc.c $r38r39.hi = $r36r37r38r39.t, $r40 	#Opcode-kv3_v1-ADDWC.C_registerW_registerZ_registerY_simple
	;;
	addwc.c $r40r41.lo = $r40r41r42r43.x, 536870911.@ 	#Opcode-kv3_v1-ADDWC.C_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addwd $r41 = $r40r41.hi, $r40r41r42r43.y 	#Opcode-kv3_v1-ADDWD_registerW_registerZ_registerY_simple
	;;
	addwd $r42 = $r42r43.lo, 536870911 	#Opcode-kv3_v1-ADDWD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addwp $r40r41r42r43.z = $r43, $r42r43.hi 	#Opcode-kv3_v1-ADDWP_registerW_registerZ_registerY_simple
	;;
	addwp $r40r41r42r43.t = $r44, 536870911.@ 	#Opcode-kv3_v1-ADDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addw $r44r45.lo = $r44r45r46r47.x, $r45 	#Opcode-kv3_v1-ADDW_registerW_registerZ_registerY_simple
	;;
	addw $r44r45.hi = $r44r45r46r47.y, -64 	#Opcode-kv3_v1-ADDW_registerW_registerZ_signed10_simple
	;;
	addw $r46 = $r46r47.lo, -8589934592 	#Opcode-kv3_v1-ADDW_registerW_registerZ_upper27_lower10_double
	;;
	addx16d $r44r45r46r47.z = $r47, $r46r47.hi 	#Opcode-kv3_v1-ADDX16D_registerW_registerZ_registerY_simple
	;;
	addx16d $r44r45r46r47.t = $r48, 536870911 	#Opcode-kv3_v1-ADDX16D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16hq $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv3_v1-ADDX16HQ_registerW_registerZ_registerY_simple
	;;
	addx16hq $r48r49.hi = $r48r49r50r51.y, 536870911.@ 	#Opcode-kv3_v1-ADDX16HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16uwd $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v1-ADDX16UWD_registerW_registerZ_registerY_simple
	;;
	addx16uwd $r51 = $r50r51.hi, 536870911 	#Opcode-kv3_v1-ADDX16UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx16wd $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv3_v1-ADDX16WD_registerW_registerZ_registerY_simple
	;;
	addx16wd $r52r53r54r55.x = $r53, 536870911 	#Opcode-kv3_v1-ADDX16WD_registerW_registerZ_upper27_lower5_double
	;;
	addx16wp $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v1-ADDX16WP_registerW_registerZ_registerY_simple
	;;
	addx16wp $r54r55.lo = $r52r53r54r55.z, 536870911 	#Opcode-kv3_v1-ADDX16WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16w $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v1-ADDX16W_registerW_registerZ_registerY_simple
	;;
	addx16w $r56 = $r56r57.lo, 536870911 	#Opcode-kv3_v1-ADDX16W_registerW_registerZ_upper27_lower5_double
	;;
	addx2d $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv3_v1-ADDX2D_registerW_registerZ_registerY_simple
	;;
	addx2d $r56r57r58r59.y = $r58, 536870911.@ 	#Opcode-kv3_v1-ADDX2D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2hq $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv3_v1-ADDX2HQ_registerW_registerZ_registerY_simple
	;;
	addx2hq $r58r59.hi = $r56r57r58r59.t, 536870911 	#Opcode-kv3_v1-ADDX2HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2uwd $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv3_v1-ADDX2UWD_registerW_registerZ_registerY_simple
	;;
	addx2uwd $r61 = $r60r61.hi, 536870911 	#Opcode-kv3_v1-ADDX2UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx2wd $r60r61r62r63.y = $r62, $r62r63.lo 	#Opcode-kv3_v1-ADDX2WD_registerW_registerZ_registerY_simple
	;;
	addx2wd $r60r61r62r63.z = $r63, 536870911 	#Opcode-kv3_v1-ADDX2WD_registerW_registerZ_upper27_lower5_double
	;;
	addx2wp $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv3_v1-ADDX2WP_registerW_registerZ_registerY_simple
	;;
	addx2wp $r0r1.lo = $r0r1r2r3.x, 536870911.@ 	#Opcode-kv3_v1-ADDX2WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2w $r1 = $r0r1.hi, $r0r1r2r3.y 	#Opcode-kv3_v1-ADDX2W_registerW_registerZ_registerY_simple
	;;
	addx2w $r2 = $r2r3.lo, 536870911 	#Opcode-kv3_v1-ADDX2W_registerW_registerZ_upper27_lower5_double
	;;
	addx4d $r0r1r2r3.z = $r3, $r2r3.hi 	#Opcode-kv3_v1-ADDX4D_registerW_registerZ_registerY_simple
	;;
	addx4d $r0r1r2r3.t = $r4, 536870911 	#Opcode-kv3_v1-ADDX4D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4hq $r4r5.lo = $r4r5r6r7.x, $r5 	#Opcode-kv3_v1-ADDX4HQ_registerW_registerZ_registerY_simple
	;;
	addx4hq $r4r5.hi = $r4r5r6r7.y, 536870911.@ 	#Opcode-kv3_v1-ADDX4HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4uwd $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v1-ADDX4UWD_registerW_registerZ_registerY_simple
	;;
	addx4uwd $r7 = $r6r7.hi, 536870911 	#Opcode-kv3_v1-ADDX4UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx4wd $r4r5r6r7.t = $r8, $r8r9.lo 	#Opcode-kv3_v1-ADDX4WD_registerW_registerZ_registerY_simple
	;;
	addx4wd $r8r9r10r11.x = $r9, 536870911 	#Opcode-kv3_v1-ADDX4WD_registerW_registerZ_upper27_lower5_double
	;;
	addx4wp $r8r9.hi = $r8r9r10r11.y, $r10 	#Opcode-kv3_v1-ADDX4WP_registerW_registerZ_registerY_simple
	;;
	addx4wp $r10r11.lo = $r8r9r10r11.z, 536870911 	#Opcode-kv3_v1-ADDX4WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4w $r11 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv3_v1-ADDX4W_registerW_registerZ_registerY_simple
	;;
	addx4w $r12 = $sp, 536870911 	#Opcode-kv3_v1-ADDX4W_registerW_registerZ_upper27_lower5_double
	;;
	addx8d $r13 = $tp, $r14 	#Opcode-kv3_v1-ADDX8D_registerW_registerZ_registerY_simple
	;;
	addx8d $fp = $r15, 536870911.@ 	#Opcode-kv3_v1-ADDX8D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8hq $rp = $r16, $r16r17.lo 	#Opcode-kv3_v1-ADDX8HQ_registerW_registerZ_registerY_simple
	;;
	addx8hq $r16r17r18r19.x = $r17, 536870911 	#Opcode-kv3_v1-ADDX8HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8uwd $r16r17.hi = $r16r17r18r19.y, $r18 	#Opcode-kv3_v1-ADDX8UWD_registerW_registerZ_registerY_simple
	;;
	addx8uwd $r18r19.lo = $r16r17r18r19.z, 536870911 	#Opcode-kv3_v1-ADDX8UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx8wd $r19 = $r18r19.hi, $r16r17r18r19.t 	#Opcode-kv3_v1-ADDX8WD_registerW_registerZ_registerY_simple
	;;
	addx8wd $r20 = $r20r21.lo, 536870911 	#Opcode-kv3_v1-ADDX8WD_registerW_registerZ_upper27_lower5_double
	;;
	addx8wp $r20r21r22r23.x = $r21, $r20r21.hi 	#Opcode-kv3_v1-ADDX8WP_registerW_registerZ_registerY_simple
	;;
	addx8wp $r20r21r22r23.y = $r22, 536870911.@ 	#Opcode-kv3_v1-ADDX8WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8w $r22r23.lo = $r20r21r22r23.z, $r23 	#Opcode-kv3_v1-ADDX8W_registerW_registerZ_registerY_simple
	;;
	addx8w $r22r23.hi = $r20r21r22r23.t, 536870911 	#Opcode-kv3_v1-ADDX8W_registerW_registerZ_upper27_lower5_double
	;;
	aladdd $r24[$r24r25.lo] = $r24r25r26r27.x 	#Opcode-kv3_v1-ALADDD_doscale_registerY_registerZ_registerT_simple
	;;
	aladdd 2305843009213693951[$r25] = $r24r25.hi 	#Opcode-kv3_v1-ALADDD_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	aladdd.odd $r24r25r26r27.y? -1125899906842624[$r26] = $r26r27.lo 	#Opcode-kv3_v1-ALADDD_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	aladdd.even $r24r25r26r27.z? -8388608[$r27] = $r26r27.hi 	#Opcode-kv3_v1-ALADDD_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	aladdd.wnez $r24r25r26r27.t? [$r28] = $r28r29.lo 	#Opcode-kv3_v1-ALADDD_lsucond_registerY_registerZ_registerT_simple
	;;
	aladdd -64[$r28r29r30r31.x] = $r29 	#Opcode-kv3_v1-ALADDD_signed10_registerZ_registerT_simple
	;;
	aladdd -8589934592[$r28r29.hi] = $r28r29r30r31.y 	#Opcode-kv3_v1-ALADDD_upper27_lower10_registerZ_registerT_double
	;;
	aladdw.xs $r30[$r30r31.lo] = $r28r29r30r31.z 	#Opcode-kv3_v1-ALADDW_doscale_registerY_registerZ_registerT_simple
	;;
	aladdw 2305843009213693951[$r31] = $r30r31.hi 	#Opcode-kv3_v1-ALADDW_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	aladdw.weqz $r28r29r30r31.t? -1125899906842624[$r32] = $r32r33.lo 	#Opcode-kv3_v1-ALADDW_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	aladdw.wltz $r32r33r34r35.x? -8388608[$r33] = $r32r33.hi 	#Opcode-kv3_v1-ALADDW_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	aladdw.wgez $r32r33r34r35.y? [$r34] = $r34r35.lo 	#Opcode-kv3_v1-ALADDW_lsucond_registerY_registerZ_registerT_simple
	;;
	aladdw -64[$r32r33r34r35.z] = $r35 	#Opcode-kv3_v1-ALADDW_signed10_registerZ_registerT_simple
	;;
	aladdw -8589934592[$r34r35.hi] = $r32r33r34r35.t 	#Opcode-kv3_v1-ALADDW_upper27_lower10_registerZ_registerT_double
	;;
	alclrd $r36 = $r36r37.lo[$r36r37r38r39.x] 	#Opcode-kv3_v1-ALCLRD_doscale_registerW_registerY_registerZ_simple
	;;
	alclrd.wlez $r37? $r36r37.hi = -1125899906842624[$r36r37r38r39.y] 	#Opcode-kv3_v1-ALCLRD_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	alclrd.wgtz $r38? $r38r39.lo = -8388608[$r36r37r38r39.z] 	#Opcode-kv3_v1-ALCLRD_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	alclrd.dnez $r39? $r38r39.hi = [$r36r37r38r39.t] 	#Opcode-kv3_v1-ALCLRD_lsucond_registerY_registerW_registerZ_simple
	;;
	alclrd $r40 = 2305843009213693951[$r40r41.lo] 	#Opcode-kv3_v1-ALCLRD_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	alclrd $r40r41r42r43.x = -64[$r41] 	#Opcode-kv3_v1-ALCLRD_registerW_signed10_registerZ_simple
	;;
	alclrd $r40r41.hi = -8589934592[$r40r41r42r43.y] 	#Opcode-kv3_v1-ALCLRD_registerW_upper27_lower10_registerZ_double
	;;
	alclrw.xs $r42 = $r42r43.lo[$r40r41r42r43.z] 	#Opcode-kv3_v1-ALCLRW_doscale_registerW_registerY_registerZ_simple
	;;
	alclrw.deqz $r43? $r42r43.hi = -1125899906842624[$r40r41r42r43.t] 	#Opcode-kv3_v1-ALCLRW_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	alclrw.dltz $r44? $r44r45.lo = -8388608[$r44r45r46r47.x] 	#Opcode-kv3_v1-ALCLRW_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	alclrw.dgez $r45? $r44r45.hi = [$r44r45r46r47.y] 	#Opcode-kv3_v1-ALCLRW_lsucond_registerY_registerW_registerZ_simple
	;;
	alclrw $r46 = 2305843009213693951[$r46r47.lo] 	#Opcode-kv3_v1-ALCLRW_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	alclrw $r44r45r46r47.z = -64[$r47] 	#Opcode-kv3_v1-ALCLRW_registerW_signed10_registerZ_simple
	;;
	alclrw $r46r47.hi = -8589934592[$r44r45r46r47.t] 	#Opcode-kv3_v1-ALCLRW_registerW_upper27_lower10_registerZ_double
	;;
	aligno $r0r1r2r3 = $a0, $a1, 7 	#Opcode-kv3_v1-ALIGNO_registerN_registerBe_registerCo_byteshift_simple
	;;
	aligno $r4r5r6r7 = $a0a1.lo, $a0a1.hi, $r48 	#Opcode-kv3_v1-ALIGNO_registerN_registerBe_registerCo_registerZ_simple
	;;
	aligno $r8r9r10r11 = $a0a1a2a3.y, $a0a1a2a3.x, 7 	#Opcode-kv3_v1-ALIGNO_registerN_registerBo_registerCe_byteshift_simple
	;;
	aligno $r12r13r14r15 = $a3, $a2, $r48r49.lo 	#Opcode-kv3_v1-ALIGNO_registerN_registerBo_registerCe_registerZ_simple
	;;
	alignv $a0 = $a2a3.lo, $a2a3.hi, 7 	#Opcode-kv3_v1-ALIGNV_registerA_registerBe_registerCo_byteshift_simple
	;;
	alignv $a0a1.lo = $a0a1a2a3.z, $a0a1a2a3.t, $r48r49r50r51.x 	#Opcode-kv3_v1-ALIGNV_registerA_registerBe_registerCo_registerZ_simple
	;;
	alignv $a0a1a2a3.x = $a5, $a4, 7 	#Opcode-kv3_v1-ALIGNV_registerA_registerBo_registerCe_byteshift_simple
	;;
	alignv $a1 = $a4a5.hi, $a4a5.lo, $r49 	#Opcode-kv3_v1-ALIGNV_registerA_registerBo_registerCe_registerZ_simple
	;;
	andd $r48r49.hi = $r48r49r50r51.y, 2305843009213693951 	#Opcode-kv3_v1-ANDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	andd $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v1-ANDD_registerW_registerZ_registerY_simple
	;;
	andd $r51 = $r50r51.hi, -64 	#Opcode-kv3_v1-ANDD_registerW_registerZ_signed10_simple
	;;
	andd $r48r49r50r51.t = $r52, -8589934592 	#Opcode-kv3_v1-ANDD_registerW_registerZ_upper27_lower10_double
	;;
	andnd $r52r53.lo = $r52r53r54r55.x, 2305843009213693951 	#Opcode-kv3_v1-ANDND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	andnd $r53 = $r52r53.hi, $r52r53r54r55.y 	#Opcode-kv3_v1-ANDND_registerW_registerZ_registerY_simple
	;;
	andnd $r54 = $r54r55.lo, -64 	#Opcode-kv3_v1-ANDND_registerW_registerZ_signed10_simple
	;;
	andnd $r52r53r54r55.z = $r55, -8589934592 	#Opcode-kv3_v1-ANDND_registerW_registerZ_upper27_lower10_double
	;;
	andnw $r54r55.hi = $r52r53r54r55.t, $r56 	#Opcode-kv3_v1-ANDNW_registerW_registerZ_registerY_simple
	;;
	andnw $r56r57.lo = $r56r57r58r59.x, -64 	#Opcode-kv3_v1-ANDNW_registerW_registerZ_signed10_simple
	;;
	andnw $r57 = $r56r57.hi, -8589934592 	#Opcode-kv3_v1-ANDNW_registerW_registerZ_upper27_lower10_double
	;;
	andw $r56r57r58r59.y = $r58, $r58r59.lo 	#Opcode-kv3_v1-ANDW_registerW_registerZ_registerY_simple
	;;
	andw $r56r57r58r59.z = $r59, -64 	#Opcode-kv3_v1-ANDW_registerW_registerZ_signed10_simple
	;;
	andw $r58r59.hi = $r56r57r58r59.t, -8589934592 	#Opcode-kv3_v1-ANDW_registerW_registerZ_upper27_lower10_double
	;;
	avghq $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv3_v1-AVGHQ_registerW_registerZ_registerY_simple
	;;
	avghq $r61 = $r60r61.hi, 536870911 	#Opcode-kv3_v1-AVGHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrhq $r60r61r62r63.y = $r62, $r62r63.lo 	#Opcode-kv3_v1-AVGRHQ_registerW_registerZ_registerY_simple
	;;
	avgrhq $r60r61r62r63.z = $r63, 536870911.@ 	#Opcode-kv3_v1-AVGRHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruhq $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv3_v1-AVGRUHQ_registerW_registerZ_registerY_simple
	;;
	avgruhq $r0r1.lo = $r0r1r2r3.x, 536870911 	#Opcode-kv3_v1-AVGRUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruwp $r1 = $r0r1.hi, $r0r1r2r3.y 	#Opcode-kv3_v1-AVGRUWP_registerW_registerZ_registerY_simple
	;;
	avgruwp $r2 = $r2r3.lo, 536870911.@ 	#Opcode-kv3_v1-AVGRUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruw $r0r1r2r3.z = $r3, $r2r3.hi 	#Opcode-kv3_v1-AVGRUW_registerW_registerZ_registerY_simple
	;;
	avgruw $r0r1r2r3.t = $r4, 536870911 	#Opcode-kv3_v1-AVGRUW_registerW_registerZ_upper27_lower5_double
	;;
	avgrwp $r4r5.lo = $r4r5r6r7.x, $r5 	#Opcode-kv3_v1-AVGRWP_registerW_registerZ_registerY_simple
	;;
	avgrwp $r4r5.hi = $r4r5r6r7.y, 536870911 	#Opcode-kv3_v1-AVGRWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrw $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v1-AVGRW_registerW_registerZ_registerY_simple
	;;
	avgrw $r7 = $r6r7.hi, 536870911 	#Opcode-kv3_v1-AVGRW_registerW_registerZ_upper27_lower5_double
	;;
	avguhq $r4r5r6r7.t = $r8, $r8r9.lo 	#Opcode-kv3_v1-AVGUHQ_registerW_registerZ_registerY_simple
	;;
	avguhq $r8r9r10r11.x = $r9, 536870911.@ 	#Opcode-kv3_v1-AVGUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguwp $r8r9.hi = $r8r9r10r11.y, $r10 	#Opcode-kv3_v1-AVGUWP_registerW_registerZ_registerY_simple
	;;
	avguwp $r10r11.lo = $r8r9r10r11.z, 536870911 	#Opcode-kv3_v1-AVGUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguw $r11 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv3_v1-AVGUW_registerW_registerZ_registerY_simple
	;;
	avguw $r12 = $sp, 536870911 	#Opcode-kv3_v1-AVGUW_registerW_registerZ_upper27_lower5_double
	;;
	avgwp $r13 = $tp, $r14 	#Opcode-kv3_v1-AVGWP_registerW_registerZ_registerY_simple
	;;
	avgwp $fp = $r15, 536870911.@ 	#Opcode-kv3_v1-AVGWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgw $rp = $r16, $r16r17.lo 	#Opcode-kv3_v1-AVGW_registerW_registerZ_registerY_simple
	;;
	avgw $r16r17r18r19.x = $r17, 536870911 	#Opcode-kv3_v1-AVGW_registerW_registerZ_upper27_lower5_double
	;;
	await 	#Opcode-kv3_v1-AWAIT_simple
	;;
	barrier 	#Opcode-kv3_v1-BARRIER_simple
	;;
	call -33554432 	#Opcode-kv3_v1-CALL_pcrel27_simple
	;;
	cbsd $r16r17.hi = $r16r17r18r19.y 	#Opcode-kv3_v1-CBSD_registerW_registerZ_simple
	;;
	cbswp $r18 = $r18r19.lo 	#Opcode-kv3_v1-CBSWP_registerW_registerZ_simple
	;;
	cbsw $r16r17r18r19.z = $r19 	#Opcode-kv3_v1-CBSW_registerW_registerZ_simple
	;;
	cb.dlez $r18r19.hi? -32768 	#Opcode-kv3_v1-CB_branchcond_registerZ_pcrel17_simple
	;;
	clrf $r16r17r18r19.t = $r20, 7, 7 	#Opcode-kv3_v1-CLRF_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	clsd $r20r21.lo = $r20r21r22r23.x 	#Opcode-kv3_v1-CLSD_registerW_registerZ_simple
	;;
	clswp $r21 = $r20r21.hi 	#Opcode-kv3_v1-CLSWP_registerW_registerZ_simple
	;;
	clsw $r20r21r22r23.y = $r22 	#Opcode-kv3_v1-CLSW_registerW_registerZ_simple
	;;
	clzd $r22r23.lo = $r20r21r22r23.z 	#Opcode-kv3_v1-CLZD_registerW_registerZ_simple
	;;
	clzwp $r23 = $r22r23.hi 	#Opcode-kv3_v1-CLZWP_registerW_registerZ_simple
	;;
	clzw $r20r21r22r23.t = $r24 	#Opcode-kv3_v1-CLZW_registerW_registerZ_simple
	;;
	cmoved.dgtz $r24r25.lo? $r24r25r26r27.x = 2305843009213693951 	#Opcode-kv3_v1-CMOVED_scalarcond_registerZ_registerW_extend27_upper27_lower10_triple
	;;
	cmoved.odd $r25? $r24r25.hi = $r24r25r26r27.y 	#Opcode-kv3_v1-CMOVED_scalarcond_registerZ_registerW_registerY_simple
	;;
	cmoved.even $r26? $r26r27.lo = -64 	#Opcode-kv3_v1-CMOVED_scalarcond_registerZ_registerW_signed10_simple
	;;
	cmoved.wnez $r24r25r26r27.z? $r27 = -8589934592 	#Opcode-kv3_v1-CMOVED_scalarcond_registerZ_registerW_upper27_lower10_double
	;;
	cmovehq.nez $r26r27.hi? $r24r25r26r27.t = $r28 	#Opcode-kv3_v1-CMOVEHQ_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovehq.eqz $r28r29.lo? $r28r29r30r31.x = 536870911 	#Opcode-kv3_v1-CMOVEHQ_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmovewp.ltz $r29? $r28r29.hi = $r28r29r30r31.y 	#Opcode-kv3_v1-CMOVEWP_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovewp.gez $r30? $r30r31.lo = 536870911.@ 	#Opcode-kv3_v1-CMOVEWP_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmuldt $r14r15 = $r28r29r30r31.z, 2305843009213693951 	#Opcode-kv3_v1-CMULDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	cmuldt $r12r13r14r15.hi = $r31, $r30r31.hi 	#Opcode-kv3_v1-CMULDT_registerM_registerZ_registerY_simple
	;;
	cmuldt $r16r17 = $r28r29r30r31.t, -64 	#Opcode-kv3_v1-CMULDT_registerM_registerZ_signed10_simple
	;;
	cmuldt $r16r17r18r19.lo = $r32, -8589934592 	#Opcode-kv3_v1-CMULDT_registerM_registerZ_upper27_lower10_double
	;;
	cmulghxdt $r18r19 = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv3_v1-CMULGHXDT_registerM_registerZ_registerY_simple
	;;
	cmulglxdt $r16r17r18r19.hi = $r33, $r32r33.hi 	#Opcode-kv3_v1-CMULGLXDT_registerM_registerZ_registerY_simple
	;;
	cmulgmxdt $r20r21 = $r32r33r34r35.y, $r34 	#Opcode-kv3_v1-CMULGMXDT_registerM_registerZ_registerY_simple
	;;
	cmulxdt $r20r21r22r23.lo = $r34r35.lo, $r32r33r34r35.z 	#Opcode-kv3_v1-CMULXDT_registerM_registerZ_registerY_simple
	;;
	compd.ne $r35 = $r34r35.hi, 2305843009213693951 	#Opcode-kv3_v1-COMPD_comparison_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	compd.eq $r32r33r34r35.t = $r36, $r36r37.lo 	#Opcode-kv3_v1-COMPD_comparison_registerW_registerZ_registerY_simple
	;;
	compd.lt $r36r37r38r39.x = $r37, -64 	#Opcode-kv3_v1-COMPD_comparison_registerW_registerZ_signed10_simple
	;;
	compd.ge $r36r37.hi = $r36r37r38r39.y, -8589934592 	#Opcode-kv3_v1-COMPD_comparison_registerW_registerZ_upper27_lower10_double
	;;
	compnhq.le $r38 = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv3_v1-COMPNHQ_comparison_registerW_registerZ_registerY_simple
	;;
	compnhq.gt $r39 = $r38r39.hi, 536870911 	#Opcode-kv3_v1-COMPNHQ_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compnwp.ltu $r36r37r38r39.t = $r40, $r40r41.lo 	#Opcode-kv3_v1-COMPNWP_comparison_registerW_registerZ_registerY_simple
	;;
	compnwp.geu $r40r41r42r43.x = $r41, 536870911.@ 	#Opcode-kv3_v1-COMPNWP_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compuwd.leu $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv3_v1-COMPUWD_comparison_registerW_registerZ_registerY_simple
	;;
	compuwd.gtu $r42r43.lo = $r40r41r42r43.z, 536870911 	#Opcode-kv3_v1-COMPUWD_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compwd.all $r43 = $r42r43.hi, $r40r41r42r43.t 	#Opcode-kv3_v1-COMPWD_comparison_registerW_registerZ_registerY_simple
	;;
	compwd.nall $r44 = $r44r45.lo, 536870911 	#Opcode-kv3_v1-COMPWD_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compw.any $r44r45r46r47.x = $r45, $r44r45.hi 	#Opcode-kv3_v1-COMPW_comparison_registerW_registerZ_registerY_simple
	;;
	compw.none $r44r45r46r47.y = $r46, 536870911 	#Opcode-kv3_v1-COMPW_comparison_registerW_registerZ_upper27_lower5_double
	;;
	convdhv0.rn.sat $a0_lo = $a0a1a2a3 	#Opcode-kv3_v1-CONVDHV0_roundint_saturate_registerAE_registerBq_simple
	;;
	convdhv1.ru.satu $a0_hi = $a4a5a6a7 	#Opcode-kv3_v1-CONVDHV1_roundint_saturate_registerAO_registerBq_simple
	;;
	convwbv0.rd.sat $a0_x = $a8a9a10a11 	#Opcode-kv3_v1-CONVWBV0_roundint_saturate_registerAx_registerBq_simple
	;;
	convwbv1.rz.satu $a0_y = $a12a13a14a15 	#Opcode-kv3_v1-CONVWBV1_roundint_saturate_registerAy_registerBq_simple
	;;
	convwbv2.rhu.sat $a0_z = $a16a17a18a19 	#Opcode-kv3_v1-CONVWBV2_roundint_saturate_registerAz_registerBq_simple
	;;
	convwbv3.rn.satu $a0_t = $a20a21a22a23 	#Opcode-kv3_v1-CONVWBV3_roundint_saturate_registerAt_registerBq_simple
	;;
	copyd $r46r47.lo = $r44r45r46r47.z 	#Opcode-kv3_v1-COPYD_registerW_registerZ_simple
	;;
	copyo $r16r17r18r19 = $r20r21r22r23 	#Opcode-kv3_v1-COPYO_registerN_registerR_simple
	;;
	copyq $r22r23 = $r47, $r46r47.hi 	#Opcode-kv3_v1-COPYQ_registerM_registerZ_registerY_simple
	;;
	copyw $r44r45r46r47.t = $r48 	#Opcode-kv3_v1-COPYW_registerW_registerZ_simple
	;;
	crcbellw $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv3_v1-CRCBELLW_registerW_registerZ_registerY_simple
	;;
	crcbellw $r48r49.hi = $r48r49r50r51.y, 536870911 	#Opcode-kv3_v1-CRCBELLW_registerW_registerZ_upper27_lower5_double
	;;
	crcbelmw $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v1-CRCBELMW_registerW_registerZ_registerY_simple
	;;
	crcbelmw $r51 = $r50r51.hi, 536870911 	#Opcode-kv3_v1-CRCBELMW_registerW_registerZ_upper27_lower5_double
	;;
	crclellw $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv3_v1-CRCLELLW_registerW_registerZ_registerY_simple
	;;
	crclellw $r52r53r54r55.x = $r53, 536870911 	#Opcode-kv3_v1-CRCLELLW_registerW_registerZ_upper27_lower5_double
	;;
	crclelmw $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v1-CRCLELMW_registerW_registerZ_registerY_simple
	;;
	crclelmw $r54r55.lo = $r52r53r54r55.z, 536870911 	#Opcode-kv3_v1-CRCLELMW_registerW_registerZ_upper27_lower5_double
	;;
	ctzd $r55 = $r54r55.hi 	#Opcode-kv3_v1-CTZD_registerW_registerZ_simple
	;;
	ctzwp $r52r53r54r55.t = $r56 	#Opcode-kv3_v1-CTZWP_registerW_registerZ_simple
	;;
	ctzw $r56r57.lo = $r56r57r58r59.x 	#Opcode-kv3_v1-CTZW_registerW_registerZ_simple
	;;
	d1inval 	#Opcode-kv3_v1-D1INVAL_simple
	;;
	dinvall 2305843009213693951[$r57] 	#Opcode-kv3_v1-DINVALL_extend27_upper27_lower10_registerZ_triple
	;;
	dinvall.weqz $r56r57.hi? -1125899906842624[$r56r57r58r59.y] 	#Opcode-kv3_v1-DINVALL_lsucond_registerY_extend27_offset27_registerZ_triple
	;;
	dinvall.wltz $r58? -8388608[$r58r59.lo] 	#Opcode-kv3_v1-DINVALL_lsucond_registerY_offset27_registerZ_double
	;;
	dinvall.wgez $r56r57r58r59.z? [$r59] 	#Opcode-kv3_v1-DINVALL_lsucond_registerY_registerZ_simple
	;;
	dinvall $r58r59.hi[$r56r57r58r59.t] 	#Opcode-kv3_v1-DINVALL_registerY_registerZ_simple
	;;
	dinvall -64[$r60] 	#Opcode-kv3_v1-DINVALL_signed10_registerZ_simple
	;;
	dinvall -8589934592[$r60r61.lo] 	#Opcode-kv3_v1-DINVALL_upper27_lower10_registerZ_double
	;;
	dot2suwdp $r20r21r22r23.hi = $r24r25, $r24r25r26r27.lo 	#Opcode-kv3_v1-DOT2SUWDP_registerM_registerP_registerO_simple
	;;
	dot2suwd $r60r61r62r63.x = $r61, 2305843009213693951 	#Opcode-kv3_v1-DOT2SUWD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	dot2suwd $r60r61.hi = $r60r61r62r63.y, $r62 	#Opcode-kv3_v1-DOT2SUWD_registerW_registerZ_registerY_simple
	;;
	dot2suwd $r62r63.lo = $r60r61r62r63.z, -64 	#Opcode-kv3_v1-DOT2SUWD_registerW_registerZ_signed10_simple
	;;
	dot2suwd $r63 = $r62r63.hi, -8589934592 	#Opcode-kv3_v1-DOT2SUWD_registerW_registerZ_upper27_lower10_double
	;;
	dot2uwdp $r26r27 = $r24r25r26r27.hi, $r28r29 	#Opcode-kv3_v1-DOT2UWDP_registerM_registerP_registerO_simple
	;;
	dot2uwd $r60r61r62r63.t = $r0, 2305843009213693951 	#Opcode-kv3_v1-DOT2UWD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	dot2uwd $r0r1.lo = $r0r1r2r3.x, $r1 	#Opcode-kv3_v1-DOT2UWD_registerW_registerZ_registerY_simple
	;;
	dot2uwd $r0r1.hi = $r0r1r2r3.y, -64 	#Opcode-kv3_v1-DOT2UWD_registerW_registerZ_signed10_simple
	;;
	dot2uwd $r2 = $r2r3.lo, -8589934592 	#Opcode-kv3_v1-DOT2UWD_registerW_registerZ_upper27_lower10_double
	;;
	dot2wdp $r28r29r30r31.lo = $r30r31, $r28r29r30r31.hi 	#Opcode-kv3_v1-DOT2WDP_registerM_registerP_registerO_simple
	;;
	dot2wd $r0r1r2r3.z = $r3, 2305843009213693951 	#Opcode-kv3_v1-DOT2WD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	dot2wd $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv3_v1-DOT2WD_registerW_registerZ_registerY_simple
	;;
	dot2wd $r4r5.lo = $r4r5r6r7.x, -64 	#Opcode-kv3_v1-DOT2WD_registerW_registerZ_signed10_simple
	;;
	dot2wd $r5 = $r4r5.hi, -8589934592 	#Opcode-kv3_v1-DOT2WD_registerW_registerZ_upper27_lower10_double
	;;
	dot2wzp $r32r33 = $r32r33r34r35.lo, $r34r35 	#Opcode-kv3_v1-DOT2WZP_registerM_registerP_registerO_simple
	;;
	dot2w $r4r5r6r7.y = $r6, 2305843009213693951 	#Opcode-kv3_v1-DOT2W_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	dot2w $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v1-DOT2W_registerW_registerZ_registerY_simple
	;;
	dot2w $r6r7.hi = $r4r5r6r7.t, -64 	#Opcode-kv3_v1-DOT2W_registerW_registerZ_signed10_simple
	;;
	dot2w $r8 = $r8r9.lo, -8589934592 	#Opcode-kv3_v1-DOT2W_registerW_registerZ_upper27_lower10_double
	;;
	dtouchl 2305843009213693951[$r8r9r10r11.x] 	#Opcode-kv3_v1-DTOUCHL_extend27_upper27_lower10_registerZ_triple
	;;
	dtouchl.wlez $r9? -1125899906842624[$r8r9.hi] 	#Opcode-kv3_v1-DTOUCHL_lsucond_registerY_extend27_offset27_registerZ_triple
	;;
	dtouchl.wgtz $r8r9r10r11.y? -8388608[$r10] 	#Opcode-kv3_v1-DTOUCHL_lsucond_registerY_offset27_registerZ_double
	;;
	dtouchl.dnez $r10r11.lo? [$r8r9r10r11.z] 	#Opcode-kv3_v1-DTOUCHL_lsucond_registerY_registerZ_simple
	;;
	dtouchl $r11[$r10r11.hi] 	#Opcode-kv3_v1-DTOUCHL_registerY_registerZ_simple
	;;
	dtouchl -64[$r8r9r10r11.t] 	#Opcode-kv3_v1-DTOUCHL_signed10_registerZ_simple
	;;
	dtouchl -8589934592[$r12] 	#Opcode-kv3_v1-DTOUCHL_upper27_lower10_registerZ_double
	;;
	dzerol 2305843009213693951[$sp] 	#Opcode-kv3_v1-DZEROL_extend27_upper27_lower10_registerZ_triple
	;;
	dzerol.deqz $r13? -1125899906842624[$tp] 	#Opcode-kv3_v1-DZEROL_lsucond_registerY_extend27_offset27_registerZ_triple
	;;
	dzerol.dltz $r14? -8388608[$fp] 	#Opcode-kv3_v1-DZEROL_lsucond_registerY_offset27_registerZ_double
	;;
	dzerol.dgez $r15? [$rp] 	#Opcode-kv3_v1-DZEROL_lsucond_registerY_registerZ_simple
	;;
	dzerol $r16[$r16r17.lo] 	#Opcode-kv3_v1-DZEROL_registerY_registerZ_simple
	;;
	dzerol -64[$r16r17r18r19.x] 	#Opcode-kv3_v1-DZEROL_signed10_registerZ_simple
	;;
	dzerol -8589934592[$r17] 	#Opcode-kv3_v1-DZEROL_upper27_lower10_registerZ_double
	;;
	eord $r16r17.hi = $r16r17r18r19.y, 2305843009213693951 	#Opcode-kv3_v1-EORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	eord $r18 = $r18r19.lo, $r16r17r18r19.z 	#Opcode-kv3_v1-EORD_registerW_registerZ_registerY_simple
	;;
	eord $r19 = $r18r19.hi, -64 	#Opcode-kv3_v1-EORD_registerW_registerZ_signed10_simple
	;;
	eord $r16r17r18r19.t = $r20, -8589934592 	#Opcode-kv3_v1-EORD_registerW_registerZ_upper27_lower10_double
	;;
	eorw $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv3_v1-EORW_registerW_registerZ_registerY_simple
	;;
	eorw $r20r21.hi = $r20r21r22r23.y, -64 	#Opcode-kv3_v1-EORW_registerW_registerZ_signed10_simple
	;;
	eorw $r22 = $r22r23.lo, -8589934592 	#Opcode-kv3_v1-EORW_registerW_registerZ_upper27_lower10_double
	;;
	errop 	#Opcode-kv3_v1-ERROP_simple
	;;
	extfs $r20r21r22r23.z = $r23, 7, 7 	#Opcode-kv3_v1-EXTFS_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	extfz $r22r23.hi = $r20r21r22r23.t, 7, 7 	#Opcode-kv3_v1-EXTFZ_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	fabsd $r24 = $r24r25.lo 	#Opcode-kv3_v1-FABSD_registerW_registerZ_simple
	;;
	fabshq $r24r25r26r27.x = $r25 	#Opcode-kv3_v1-FABSHQ_registerW_registerZ_simple
	;;
	fabswp $r24r25.hi = $r24r25r26r27.y 	#Opcode-kv3_v1-FABSWP_registerW_registerZ_simple
	;;
	fabsw $r26 = $r26r27.lo 	#Opcode-kv3_v1-FABSW_registerW_registerZ_simple
	;;
	fadddc.c.rn $r32r33r34r35.hi = $r36r37, $r36r37r38r39.lo 	#Opcode-kv3_v1-FADDDC.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	fadddc.ru.s $r38r39 = $r36r37r38r39.hi, $r40r41 	#Opcode-kv3_v1-FADDDC_rounding_silent_registerM_registerP_registerO_simple
	;;
	fadddp.rd $r40r41r42r43.lo = $r42r43, $r40r41r42r43.hi 	#Opcode-kv3_v1-FADDDP_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddd $r24r25r26r27.z = $r27, 2305843009213693951 	#Opcode-kv3_v1-FADDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	faddd $r26r27.hi = $r24r25r26r27.t, -64 	#Opcode-kv3_v1-FADDD_registerW_registerZ_signed10_simple
	;;
	faddd $r28 = $r28r29.lo, -8589934592 	#Opcode-kv3_v1-FADDD_registerW_registerZ_upper27_lower10_double
	;;
	faddd.rz.s $r28r29r30r31.x = $r29, $r28r29.hi 	#Opcode-kv3_v1-FADDD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddhq $r28r29r30r31.y = $r30, 2305843009213693951 	#Opcode-kv3_v1-FADDHQ_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	faddhq $r30r31.lo = $r28r29r30r31.z, -64 	#Opcode-kv3_v1-FADDHQ_registerW_registerZ_signed10_simple
	;;
	faddhq $r31 = $r30r31.hi, -8589934592 	#Opcode-kv3_v1-FADDHQ_registerW_registerZ_upper27_lower10_double
	;;
	faddhq.rna $r28r29r30r31.t = $r32, $r32r33.lo 	#Opcode-kv3_v1-FADDHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwc.c $r32r33r34r35.x = $r33, 2305843009213693951 	#Opcode-kv3_v1-FADDWC.C_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	faddwc.c $r32r33.hi = $r32r33r34r35.y, -64 	#Opcode-kv3_v1-FADDWC.C_registerW_registerZ_signed10_simple
	;;
	faddwc.c $r34 = $r34r35.lo, -8589934592 	#Opcode-kv3_v1-FADDWC.C_registerW_registerZ_upper27_lower10_double
	;;
	faddwc.c.rnz.s $r32r33r34r35.z = $r35, $r34r35.hi 	#Opcode-kv3_v1-FADDWC.C_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwcp.c.ro $r44r45 = $r44r45r46r47.lo, $r46r47 	#Opcode-kv3_v1-FADDWCP.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddwcp.s $r44r45r46r47.hi = $r48r49, $r48r49r50r51.lo 	#Opcode-kv3_v1-FADDWCP_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddwc.rn $r32r33r34r35.t = $r36, $r36r37.lo 	#Opcode-kv3_v1-FADDWC_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwp $r36r37r38r39.x = $r37, 2305843009213693951 	#Opcode-kv3_v1-FADDWP_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	faddwp $r36r37.hi = $r36r37r38r39.y, -64 	#Opcode-kv3_v1-FADDWP_registerW_registerZ_signed10_simple
	;;
	faddwp $r38 = $r38r39.lo, -8589934592 	#Opcode-kv3_v1-FADDWP_registerW_registerZ_upper27_lower10_double
	;;
	faddwp.ru.s $r36r37r38r39.z = $r39, $r38r39.hi 	#Opcode-kv3_v1-FADDWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwq.rd $r50r51 = $r48r49r50r51.hi, $r52r53 	#Opcode-kv3_v1-FADDWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddw $r36r37r38r39.t = $r40, 2305843009213693951 	#Opcode-kv3_v1-FADDW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	faddw $r40r41.lo = $r40r41r42r43.x, -64 	#Opcode-kv3_v1-FADDW_registerW_registerZ_signed10_simple
	;;
	faddw $r41 = $r40r41.hi, -8589934592 	#Opcode-kv3_v1-FADDW_registerW_registerZ_upper27_lower10_double
	;;
	faddw.rz.s $r40r41r42r43.y = $r42, $r42r43.lo 	#Opcode-kv3_v1-FADDW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fcdivd $r40r41r42r43.z = $r52r53r54r55.lo 	#Opcode-kv3_v1-FCDIVD_silent2_registerW_registerP_simple
	;;
	fcdivwp.s $r43 = $r54r55 	#Opcode-kv3_v1-FCDIVWP_silent2_registerW_registerP_simple
	;;
	fcdivw $r42r43.hi = $r52r53r54r55.hi 	#Opcode-kv3_v1-FCDIVW_silent2_registerW_registerP_simple
	;;
	fcompd.one $r40r41r42r43.t = $r44, $r44r45.lo 	#Opcode-kv3_v1-FCOMPD_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompd.ueq $r44r45r46r47.x = $r45, 536870911 	#Opcode-kv3_v1-FCOMPD_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fcompnhq.oeq $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv3_v1-FCOMPNHQ_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnhq.une $r46r47.lo = $r44r45r46r47.z, 536870911 	#Opcode-kv3_v1-FCOMPNHQ_floatcomp_registerW_registerZ_upper27_lower5_splat32_double
	;;
	fcompnwp.olt $r47 = $r46r47.hi, $r44r45r46r47.t 	#Opcode-kv3_v1-FCOMPNWP_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnwp.uge $r48 = $r48r49.lo, 536870911.@ 	#Opcode-kv3_v1-FCOMPNWP_floatcomp_registerW_registerZ_upper27_lower5_splat32_double
	;;
	fcompw.oge $r48r49r50r51.x = $r49, $r48r49.hi 	#Opcode-kv3_v1-FCOMPW_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompw.ult $r48r49r50r51.y = $r50, 536870911 	#Opcode-kv3_v1-FCOMPW_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fdot2wdp.rna.s $r56r57 = $r56r57r58r59.lo, $r58r59 	#Opcode-kv3_v1-FDOT2WDP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fdot2wd $r50r51.lo = $r48r49r50r51.z, 2305843009213693951 	#Opcode-kv3_v1-FDOT2WD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fdot2wd $r51 = $r50r51.hi, -64 	#Opcode-kv3_v1-FDOT2WD_registerW_registerZ_signed10_simple
	;;
	fdot2wd $r48r49r50r51.t = $r52, -8589934592 	#Opcode-kv3_v1-FDOT2WD_registerW_registerZ_upper27_lower10_double
	;;
	fdot2wd.rnz $r52r53.lo = $r52r53r54r55.x, $r53 	#Opcode-kv3_v1-FDOT2WD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fdot2wzp.ro.s $r56r57r58r59.hi = $r60r61, $r60r61r62r63.lo 	#Opcode-kv3_v1-FDOT2WZP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fdot2w $r52r53.hi = $r52r53r54r55.y, 2305843009213693951 	#Opcode-kv3_v1-FDOT2W_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fdot2w $r54 = $r54r55.lo, -64 	#Opcode-kv3_v1-FDOT2W_registerW_registerZ_signed10_simple
	;;
	fdot2w $r52r53r54r55.z = $r55, -8589934592 	#Opcode-kv3_v1-FDOT2W_registerW_registerZ_upper27_lower10_double
	;;
	fdot2w $r54r55.hi = $r52r53r54r55.t, $r56 	#Opcode-kv3_v1-FDOT2W_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fence 	#Opcode-kv3_v1-FENCE_simple
	;;
	ffmad $r56r57.lo = $r56r57r58r59.x, 2305843009213693951 	#Opcode-kv3_v1-FFMAD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmad $r57 = $r56r57.hi, -64 	#Opcode-kv3_v1-FFMAD_registerW_registerZ_signed10_simple
	;;
	ffmad $r56r57r58r59.y = $r58, -8589934592 	#Opcode-kv3_v1-FFMAD_registerW_registerZ_upper27_lower10_double
	;;
	ffmad.rn.s $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv3_v1-FFMAD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmahq $r58r59.hi = $r56r57r58r59.t, 2305843009213693951 	#Opcode-kv3_v1-FFMAHQ_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmahq $r60 = $r60r61.lo, -64 	#Opcode-kv3_v1-FFMAHQ_registerW_registerZ_signed10_simple
	;;
	ffmahq $r60r61r62r63.x = $r61, -8589934592 	#Opcode-kv3_v1-FFMAHQ_registerW_registerZ_upper27_lower10_double
	;;
	ffmahq.ru $r60r61.hi = $r60r61r62r63.y, $r62 	#Opcode-kv3_v1-FFMAHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmahwq $r62r63 = $r62r63.lo, 2305843009213693951 	#Opcode-kv3_v1-FFMAHWQ_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	ffmahwq $r60r61r62r63.hi = $r60r61r62r63.z, -64 	#Opcode-kv3_v1-FFMAHWQ_registerM_registerZ_signed10_simple
	;;
	ffmahwq $r0r1 = $r63, -8589934592 	#Opcode-kv3_v1-FFMAHWQ_registerM_registerZ_upper27_lower10_double
	;;
	ffmahwq.rd.s $r0r1r2r3.lo = $r62r63.hi, $r60r61r62r63.t 	#Opcode-kv3_v1-FFMAHWQ_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmahw $r0 = $r0r1.lo, 2305843009213693951 	#Opcode-kv3_v1-FFMAHW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmahw $r0r1r2r3.x = $r1, -64 	#Opcode-kv3_v1-FFMAHW_registerW_registerZ_signed10_simple
	;;
	ffmahw $r0r1.hi = $r0r1r2r3.y, -8589934592 	#Opcode-kv3_v1-FFMAHW_registerW_registerZ_upper27_lower10_double
	;;
	ffmahw.rz $r2 = $r2r3.lo, $r0r1r2r3.z 	#Opcode-kv3_v1-FFMAHW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmawdp $r2r3 = $r3, 2305843009213693951 	#Opcode-kv3_v1-FFMAWDP_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	ffmawdp $r0r1r2r3.hi = $r2r3.hi, -64 	#Opcode-kv3_v1-FFMAWDP_registerM_registerZ_signed10_simple
	;;
	ffmawdp $r4r5 = $r0r1r2r3.t, -8589934592 	#Opcode-kv3_v1-FFMAWDP_registerM_registerZ_upper27_lower10_double
	;;
	ffmawdp.rna.s $r4r5r6r7.lo = $r4, $r4r5.lo 	#Opcode-kv3_v1-FFMAWDP_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmawd $r4r5r6r7.x = $r5, 2305843009213693951 	#Opcode-kv3_v1-FFMAWD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmawd $r4r5.hi = $r4r5r6r7.y, -64 	#Opcode-kv3_v1-FFMAWD_registerW_registerZ_signed10_simple
	;;
	ffmawd $r6 = $r6r7.lo, -8589934592 	#Opcode-kv3_v1-FFMAWD_registerW_registerZ_upper27_lower10_double
	;;
	ffmawd.rnz $r4r5r6r7.z = $r7, $r6r7.hi 	#Opcode-kv3_v1-FFMAWD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmawp $r4r5r6r7.t = $r8, 2305843009213693951 	#Opcode-kv3_v1-FFMAWP_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmawp $r8r9.lo = $r8r9r10r11.x, -64 	#Opcode-kv3_v1-FFMAWP_registerW_registerZ_signed10_simple
	;;
	ffmawp $r9 = $r8r9.hi, -8589934592 	#Opcode-kv3_v1-FFMAWP_registerW_registerZ_upper27_lower10_double
	;;
	ffmawp.ro.s $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv3_v1-FFMAWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmaw $r8r9r10r11.z = $r11, 2305843009213693951 	#Opcode-kv3_v1-FFMAW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmaw $r10r11.hi = $r8r9r10r11.t, -64 	#Opcode-kv3_v1-FFMAW_registerW_registerZ_signed10_simple
	;;
	ffmaw $r12 = $sp, -8589934592 	#Opcode-kv3_v1-FFMAW_registerW_registerZ_upper27_lower10_double
	;;
	ffmaw $r13 = $tp, $r14 	#Opcode-kv3_v1-FFMAW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmsd $fp = $r15, 2305843009213693951 	#Opcode-kv3_v1-FFMSD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmsd $rp = $r16, -64 	#Opcode-kv3_v1-FFMSD_registerW_registerZ_signed10_simple
	;;
	ffmsd $r16r17.lo = $r16r17r18r19.x, -8589934592 	#Opcode-kv3_v1-FFMSD_registerW_registerZ_upper27_lower10_double
	;;
	ffmsd.rn.s $r17 = $r16r17.hi, $r16r17r18r19.y 	#Opcode-kv3_v1-FFMSD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmshq $r18 = $r18r19.lo, 2305843009213693951 	#Opcode-kv3_v1-FFMSHQ_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmshq $r16r17r18r19.z = $r19, -64 	#Opcode-kv3_v1-FFMSHQ_registerW_registerZ_signed10_simple
	;;
	ffmshq $r18r19.hi = $r16r17r18r19.t, -8589934592 	#Opcode-kv3_v1-FFMSHQ_registerW_registerZ_upper27_lower10_double
	;;
	ffmshq.ru $r20 = $r20r21.lo, $r20r21r22r23.x 	#Opcode-kv3_v1-FFMSHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmshwq $r6r7 = $r21, 2305843009213693951 	#Opcode-kv3_v1-FFMSHWQ_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	ffmshwq $r4r5r6r7.hi = $r20r21.hi, -64 	#Opcode-kv3_v1-FFMSHWQ_registerM_registerZ_signed10_simple
	;;
	ffmshwq $r8r9 = $r20r21r22r23.y, -8589934592 	#Opcode-kv3_v1-FFMSHWQ_registerM_registerZ_upper27_lower10_double
	;;
	ffmshwq.rd.s $r8r9r10r11.lo = $r22, $r22r23.lo 	#Opcode-kv3_v1-FFMSHWQ_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmshw $r20r21r22r23.z = $r23, 2305843009213693951 	#Opcode-kv3_v1-FFMSHW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmshw $r22r23.hi = $r20r21r22r23.t, -64 	#Opcode-kv3_v1-FFMSHW_registerW_registerZ_signed10_simple
	;;
	ffmshw $r24 = $r24r25.lo, -8589934592 	#Opcode-kv3_v1-FFMSHW_registerW_registerZ_upper27_lower10_double
	;;
	ffmshw.rz $r24r25r26r27.x = $r25, $r24r25.hi 	#Opcode-kv3_v1-FFMSHW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmswdp $r10r11 = $r24r25r26r27.y, 2305843009213693951 	#Opcode-kv3_v1-FFMSWDP_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	ffmswdp $r8r9r10r11.hi = $r26, -64 	#Opcode-kv3_v1-FFMSWDP_registerM_registerZ_signed10_simple
	;;
	ffmswdp $r12r13 = $r26r27.lo, -8589934592 	#Opcode-kv3_v1-FFMSWDP_registerM_registerZ_upper27_lower10_double
	;;
	ffmswdp.rna.s $r12r13r14r15.lo = $r24r25r26r27.z, $r27 	#Opcode-kv3_v1-FFMSWDP_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmswd $r26r27.hi = $r24r25r26r27.t, 2305843009213693951 	#Opcode-kv3_v1-FFMSWD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmswd $r28 = $r28r29.lo, -64 	#Opcode-kv3_v1-FFMSWD_registerW_registerZ_signed10_simple
	;;
	ffmswd $r28r29r30r31.x = $r29, -8589934592 	#Opcode-kv3_v1-FFMSWD_registerW_registerZ_upper27_lower10_double
	;;
	ffmswd.rnz $r28r29.hi = $r28r29r30r31.y, $r30 	#Opcode-kv3_v1-FFMSWD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmswp $r30r31.lo = $r28r29r30r31.z, 2305843009213693951 	#Opcode-kv3_v1-FFMSWP_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmswp $r31 = $r30r31.hi, -64 	#Opcode-kv3_v1-FFMSWP_registerW_registerZ_signed10_simple
	;;
	ffmswp $r28r29r30r31.t = $r32, -8589934592 	#Opcode-kv3_v1-FFMSWP_registerW_registerZ_upper27_lower10_double
	;;
	ffmswp.ro.s $r32r33.lo = $r32r33r34r35.x, $r33 	#Opcode-kv3_v1-FFMSWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmsw $r32r33.hi = $r32r33r34r35.y, 2305843009213693951 	#Opcode-kv3_v1-FFMSW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ffmsw $r34 = $r34r35.lo, -64 	#Opcode-kv3_v1-FFMSW_registerW_registerZ_signed10_simple
	;;
	ffmsw $r32r33r34r35.z = $r35, -8589934592 	#Opcode-kv3_v1-FFMSW_registerW_registerZ_upper27_lower10_double
	;;
	ffmsw $r34r35.hi = $r32r33r34r35.t, $r36 	#Opcode-kv3_v1-FFMSW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fixedd.rn.s $r36r37.lo = $r36r37r38r39.x, 7 	#Opcode-kv3_v1-FIXEDD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixedud.ru $r37 = $r36r37.hi, 7 	#Opcode-kv3_v1-FIXEDUD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixeduwp.rd.s $r36r37r38r39.y = $r38, 7 	#Opcode-kv3_v1-FIXEDUWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixeduw.rz $r38r39.lo = $r36r37r38r39.z, 7 	#Opcode-kv3_v1-FIXEDUW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixedwp.rna.s $r39 = $r38r39.hi, 7 	#Opcode-kv3_v1-FIXEDWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixedw.rnz $r36r37r38r39.t = $r40, 7 	#Opcode-kv3_v1-FIXEDW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatd.ro.s $r40r41.lo = $r40r41r42r43.x, 7 	#Opcode-kv3_v1-FLOATD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatud $r41 = $r40r41.hi, 7 	#Opcode-kv3_v1-FLOATUD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatuwp.rn.s $r40r41r42r43.y = $r42, 7 	#Opcode-kv3_v1-FLOATUWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatuw.ru $r42r43.lo = $r40r41r42r43.z, 7 	#Opcode-kv3_v1-FLOATUW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatwp.rd.s $r43 = $r42r43.hi, 7 	#Opcode-kv3_v1-FLOATWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatw.rz $r40r41r42r43.t = $r44, 7 	#Opcode-kv3_v1-FLOATW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fmaxd $r44r45.lo = $r44r45r46r47.x, $r45 	#Opcode-kv3_v1-FMAXD_registerW_registerZ_registerY_simple
	;;
	fmaxhq $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv3_v1-FMAXHQ_registerW_registerZ_registerY_simple
	;;
	fmaxwp $r46r47.lo = $r44r45r46r47.z, $r47 	#Opcode-kv3_v1-FMAXWP_registerW_registerZ_registerY_simple
	;;
	fmaxw $r46r47.hi = $r44r45r46r47.t, $r48 	#Opcode-kv3_v1-FMAXW_registerW_registerZ_registerY_simple
	;;
	fmind $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv3_v1-FMIND_registerW_registerZ_registerY_simple
	;;
	fminhq $r48r49.hi = $r48r49r50r51.y, $r50 	#Opcode-kv3_v1-FMINHQ_registerW_registerZ_registerY_simple
	;;
	fminwp $r50r51.lo = $r48r49r50r51.z, $r51 	#Opcode-kv3_v1-FMINWP_registerW_registerZ_registerY_simple
	;;
	fminw $r50r51.hi = $r48r49r50r51.t, $r52 	#Opcode-kv3_v1-FMINW_registerW_registerZ_registerY_simple
	;;
	fmm212w.rna.s $r14r15 = $r52r53.lo, $r52r53r54r55.x 	#Opcode-kv3_v1-FMM212W_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmma212w.rnz $r12r13r14r15.hi = $r53, $r52r53.hi 	#Opcode-kv3_v1-FMMA212W_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmma242hw0 $a0_lo = $a0a1, $a0a1.hi, $a0a1a2a3.y 	#Opcode-kv3_v1-FMMA242HW0_registerA0_registerBp_registerC_registerD_simple
	;;
	fmma242hw1 $a0_hi = $a0a1a2a3.lo, $a2, $a2a3.lo 	#Opcode-kv3_v1-FMMA242HW1_registerA1_registerBp_registerC_registerD_simple
	;;
	fmma242hw2 $a1_lo = $a2a3, $a0a1a2a3.z, $a3 	#Opcode-kv3_v1-FMMA242HW2_registerA2_registerBp_registerC_registerD_simple
	;;
	fmma242hw3 $a1_hi = $a0a1a2a3.hi, $a2a3.hi, $a0a1a2a3.t 	#Opcode-kv3_v1-FMMA242HW3_registerA3_registerBp_registerC_registerD_simple
	;;
	fmms212w.ro.s $r16r17 = $r52r53r54r55.y, $r54 	#Opcode-kv3_v1-FMMS212W_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmuld $r54r55.lo = $r52r53r54r55.z, 2305843009213693951 	#Opcode-kv3_v1-FMULD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmuld $r55 = $r54r55.hi, -64 	#Opcode-kv3_v1-FMULD_registerW_registerZ_signed10_simple
	;;
	fmuld $r52r53r54r55.t = $r56, -8589934592 	#Opcode-kv3_v1-FMULD_registerW_registerZ_upper27_lower10_double
	;;
	fmuld $r56r57.lo = $r56r57r58r59.x, $r57 	#Opcode-kv3_v1-FMULD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulhq $r56r57.hi = $r56r57r58r59.y, 2305843009213693951 	#Opcode-kv3_v1-FMULHQ_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmulhq $r58 = $r58r59.lo, -64 	#Opcode-kv3_v1-FMULHQ_registerW_registerZ_signed10_simple
	;;
	fmulhq $r56r57r58r59.z = $r59, -8589934592 	#Opcode-kv3_v1-FMULHQ_registerW_registerZ_upper27_lower10_double
	;;
	fmulhq.rn.s $r58r59.hi = $r56r57r58r59.t, $r60 	#Opcode-kv3_v1-FMULHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulhwq $r16r17r18r19.lo = $r60r61.lo, 2305843009213693951 	#Opcode-kv3_v1-FMULHWQ_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	fmulhwq $r18r19 = $r60r61r62r63.x, -64 	#Opcode-kv3_v1-FMULHWQ_registerM_registerZ_signed10_simple
	;;
	fmulhwq $r16r17r18r19.hi = $r61, -8589934592 	#Opcode-kv3_v1-FMULHWQ_registerM_registerZ_upper27_lower10_double
	;;
	fmulhwq.ru $r20r21 = $r60r61.hi, $r60r61r62r63.y 	#Opcode-kv3_v1-FMULHWQ_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmulhw $r62 = $r62r63.lo, 2305843009213693951 	#Opcode-kv3_v1-FMULHW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmulhw $r60r61r62r63.z = $r63, -64 	#Opcode-kv3_v1-FMULHW_registerW_registerZ_signed10_simple
	;;
	fmulhw $r62r63.hi = $r60r61r62r63.t, -8589934592 	#Opcode-kv3_v1-FMULHW_registerW_registerZ_upper27_lower10_double
	;;
	fmulhw.rd.s $r0 = $r0r1.lo, $r0r1r2r3.x 	#Opcode-kv3_v1-FMULHW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwc.c $r1 = $r0r1.hi, 2305843009213693951 	#Opcode-kv3_v1-FMULWC.C_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmulwc.c $r0r1r2r3.y = $r2, -64 	#Opcode-kv3_v1-FMULWC.C_registerW_registerZ_signed10_simple
	;;
	fmulwc.c $r2r3.lo = $r0r1r2r3.z, -8589934592 	#Opcode-kv3_v1-FMULWC.C_registerW_registerZ_upper27_lower10_double
	;;
	fmulwc.c.rz $r3 = $r2r3.hi, $r0r1r2r3.t 	#Opcode-kv3_v1-FMULWC.C_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwc $r4 = $r4r5.lo, 2305843009213693951 	#Opcode-kv3_v1-FMULWC_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmulwc $r4r5r6r7.x = $r5, -64 	#Opcode-kv3_v1-FMULWC_registerW_registerZ_signed10_simple
	;;
	fmulwc $r4r5.hi = $r4r5r6r7.y, -8589934592 	#Opcode-kv3_v1-FMULWC_registerW_registerZ_upper27_lower10_double
	;;
	fmulwc.rna.s $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v1-FMULWC_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwdc.c $r20r21r22r23.lo = $r7, 2305843009213693951 	#Opcode-kv3_v1-FMULWDC.C_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	fmulwdc.c $r22r23 = $r6r7.hi, -64 	#Opcode-kv3_v1-FMULWDC.C_registerM_registerZ_signed10_simple
	;;
	fmulwdc.c $r20r21r22r23.hi = $r4r5r6r7.t, -8589934592 	#Opcode-kv3_v1-FMULWDC.C_registerM_registerZ_upper27_lower10_double
	;;
	fmulwdc.c.rnz $r24r25 = $r8, $r8r9.lo 	#Opcode-kv3_v1-FMULWDC.C_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmulwdc $r24r25r26r27.lo = $r8r9r10r11.x, 2305843009213693951 	#Opcode-kv3_v1-FMULWDC_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	fmulwdc $r26r27 = $r9, -64 	#Opcode-kv3_v1-FMULWDC_registerM_registerZ_signed10_simple
	;;
	fmulwdc $r24r25r26r27.hi = $r8r9.hi, -8589934592 	#Opcode-kv3_v1-FMULWDC_registerM_registerZ_upper27_lower10_double
	;;
	fmulwdc.ro.s $r28r29 = $r8r9r10r11.y, $r10 	#Opcode-kv3_v1-FMULWDC_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmulwdp $r28r29r30r31.lo = $r10r11.lo, 2305843009213693951 	#Opcode-kv3_v1-FMULWDP_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	fmulwdp $r30r31 = $r8r9r10r11.z, -64 	#Opcode-kv3_v1-FMULWDP_registerM_registerZ_signed10_simple
	;;
	fmulwdp $r28r29r30r31.hi = $r11, -8589934592 	#Opcode-kv3_v1-FMULWDP_registerM_registerZ_upper27_lower10_double
	;;
	fmulwdp $r32r33 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv3_v1-FMULWDP_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmulwd $r12 = $sp, 2305843009213693951 	#Opcode-kv3_v1-FMULWD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmulwd $r13 = $tp, -64 	#Opcode-kv3_v1-FMULWD_registerW_registerZ_signed10_simple
	;;
	fmulwd $r14 = $fp, -8589934592 	#Opcode-kv3_v1-FMULWD_registerW_registerZ_upper27_lower10_double
	;;
	fmulwd.rn.s $r15 = $rp, $r16 	#Opcode-kv3_v1-FMULWD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwp $r16r17.lo = $r16r17r18r19.x, 2305843009213693951 	#Opcode-kv3_v1-FMULWP_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmulwp $r17 = $r16r17.hi, -64 	#Opcode-kv3_v1-FMULWP_registerW_registerZ_signed10_simple
	;;
	fmulwp $r16r17r18r19.y = $r18, -8589934592 	#Opcode-kv3_v1-FMULWP_registerW_registerZ_upper27_lower10_double
	;;
	fmulwp.ru $r18r19.lo = $r16r17r18r19.z, $r19 	#Opcode-kv3_v1-FMULWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwq.rd.s $r32r33r34r35.lo = $r34r35, $r32r33r34r35.hi 	#Opcode-kv3_v1-FMULWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	fmulw $r18r19.hi = $r16r17r18r19.t, 2305843009213693951 	#Opcode-kv3_v1-FMULW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fmulw $r20 = $r20r21.lo, -64 	#Opcode-kv3_v1-FMULW_registerW_registerZ_signed10_simple
	;;
	fmulw $r20r21r22r23.x = $r21, -8589934592 	#Opcode-kv3_v1-FMULW_registerW_registerZ_upper27_lower10_double
	;;
	fmulw.rz $r20r21.hi = $r20r21r22r23.y, $r22 	#Opcode-kv3_v1-FMULW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fnarrow44wh.rna.s $a4 = $a4a5 	#Opcode-kv3_v1-FNARROW44WH_xrounding_silent2_registerA_registerBp_simple
	;;
	fnarrowdwp.rnz $r22r23.lo = $r36r37 	#Opcode-kv3_v1-FNARROWDWP_rounding2_silent2_registerW_registerP_simple
	;;
	fnarrowdw.ro.s $r20r21r22r23.z = $r23 	#Opcode-kv3_v1-FNARROWDW_rounding2_silent2_registerW_registerZ_simple
	;;
	fnarrowwhq $r22r23.hi = $r36r37r38r39.lo 	#Opcode-kv3_v1-FNARROWWHQ_rounding2_silent2_registerW_registerP_simple
	;;
	fnarrowwh.rn.s $r20r21r22r23.t = $r24 	#Opcode-kv3_v1-FNARROWWH_rounding2_silent2_registerW_registerZ_simple
	;;
	fnegd $r24r25.lo = $r24r25r26r27.x 	#Opcode-kv3_v1-FNEGD_registerW_registerZ_simple
	;;
	fneghq $r25 = $r24r25.hi 	#Opcode-kv3_v1-FNEGHQ_registerW_registerZ_simple
	;;
	fnegwp $r24r25r26r27.y = $r26 	#Opcode-kv3_v1-FNEGWP_registerW_registerZ_simple
	;;
	fnegw $r26r27.lo = $r24r25r26r27.z 	#Opcode-kv3_v1-FNEGW_registerW_registerZ_simple
	;;
	frecw.ru $r27 = $r26r27.hi 	#Opcode-kv3_v1-FRECW_rounding2_silent2_registerW_registerZ_simple
	;;
	frsrw.rd.s $r24r25r26r27.t = $r28 	#Opcode-kv3_v1-FRSRW_rounding2_silent2_registerW_registerZ_simple
	;;
	fsbfdc.c.rz $r38r39 = $r36r37r38r39.hi, $r40r41 	#Opcode-kv3_v1-FSBFDC.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfdc.rna.s $r40r41r42r43.lo = $r42r43, $r40r41r42r43.hi 	#Opcode-kv3_v1-FSBFDC_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfdp.rnz $r44r45 = $r44r45r46r47.lo, $r46r47 	#Opcode-kv3_v1-FSBFDP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfd $r28r29.lo = $r28r29r30r31.x, 2305843009213693951 	#Opcode-kv3_v1-FSBFD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fsbfd $r29 = $r28r29.hi, -64 	#Opcode-kv3_v1-FSBFD_registerW_registerZ_signed10_simple
	;;
	fsbfd $r28r29r30r31.y = $r30, -8589934592 	#Opcode-kv3_v1-FSBFD_registerW_registerZ_upper27_lower10_double
	;;
	fsbfd.ro.s $r30r31.lo = $r28r29r30r31.z, $r31 	#Opcode-kv3_v1-FSBFD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfhq $r30r31.hi = $r28r29r30r31.t, 2305843009213693951 	#Opcode-kv3_v1-FSBFHQ_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fsbfhq $r32 = $r32r33.lo, -64 	#Opcode-kv3_v1-FSBFHQ_registerW_registerZ_signed10_simple
	;;
	fsbfhq $r32r33r34r35.x = $r33, -8589934592 	#Opcode-kv3_v1-FSBFHQ_registerW_registerZ_upper27_lower10_double
	;;
	fsbfhq $r32r33.hi = $r32r33r34r35.y, $r34 	#Opcode-kv3_v1-FSBFHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwc.c $r34r35.lo = $r32r33r34r35.z, 2305843009213693951 	#Opcode-kv3_v1-FSBFWC.C_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fsbfwc.c $r35 = $r34r35.hi, -64 	#Opcode-kv3_v1-FSBFWC.C_registerW_registerZ_signed10_simple
	;;
	fsbfwc.c $r32r33r34r35.t = $r36, -8589934592 	#Opcode-kv3_v1-FSBFWC.C_registerW_registerZ_upper27_lower10_double
	;;
	fsbfwc.c.rn.s $r36r37.lo = $r36r37r38r39.x, $r37 	#Opcode-kv3_v1-FSBFWC.C_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwcp.c.ru $r44r45r46r47.hi = $r48r49, $r48r49r50r51.lo 	#Opcode-kv3_v1-FSBFWCP.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfwcp.rd.s $r50r51 = $r48r49r50r51.hi, $r52r53 	#Opcode-kv3_v1-FSBFWCP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfwc.rz $r36r37.hi = $r36r37r38r39.y, $r38 	#Opcode-kv3_v1-FSBFWC_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwp $r38r39.lo = $r36r37r38r39.z, 2305843009213693951 	#Opcode-kv3_v1-FSBFWP_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fsbfwp $r39 = $r38r39.hi, -64 	#Opcode-kv3_v1-FSBFWP_registerW_registerZ_signed10_simple
	;;
	fsbfwp $r36r37r38r39.t = $r40, -8589934592 	#Opcode-kv3_v1-FSBFWP_registerW_registerZ_upper27_lower10_double
	;;
	fsbfwp.rna.s $r40r41.lo = $r40r41r42r43.x, $r41 	#Opcode-kv3_v1-FSBFWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwq.rnz $r52r53r54r55.lo = $r54r55, $r52r53r54r55.hi 	#Opcode-kv3_v1-FSBFWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfw $r40r41.hi = $r40r41r42r43.y, 2305843009213693951 	#Opcode-kv3_v1-FSBFW_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	fsbfw $r42 = $r42r43.lo, -64 	#Opcode-kv3_v1-FSBFW_registerW_registerZ_signed10_simple
	;;
	fsbfw $r40r41r42r43.z = $r43, -8589934592 	#Opcode-kv3_v1-FSBFW_registerW_registerZ_upper27_lower10_double
	;;
	fsbfw.ro.s $r42r43.hi = $r40r41r42r43.t, $r44 	#Opcode-kv3_v1-FSBFW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fscalewv $a4a5.lo = $a4a5a6a7.x 	#Opcode-kv3_v1-FSCALEWV_xrounding_silent2_rectify_registerA_registerB_simple
	;;
	fsdivd.s $r44r45.lo = $r56r57 	#Opcode-kv3_v1-FSDIVD_silent2_registerW_registerP_simple
	;;
	fsdivwp $r44r45r46r47.x = $r56r57r58r59.lo 	#Opcode-kv3_v1-FSDIVWP_silent2_registerW_registerP_simple
	;;
	fsdivw.s $r45 = $r58r59 	#Opcode-kv3_v1-FSDIVW_silent2_registerW_registerP_simple
	;;
	fsrecd $r44r45.hi = $r44r45r46r47.y 	#Opcode-kv3_v1-FSRECD_silent2_registerW_registerZ_simple
	;;
	fsrecwp.s $r46 = $r46r47.lo 	#Opcode-kv3_v1-FSRECWP_silent2_registerW_registerZ_simple
	;;
	fsrecw $r44r45r46r47.z = $r47 	#Opcode-kv3_v1-FSRECW_silent2_registerW_registerZ_simple
	;;
	fsrsrd $r46r47.hi = $r44r45r46r47.t 	#Opcode-kv3_v1-FSRSRD_registerW_registerZ_simple
	;;
	fsrsrwp $r48 = $r48r49.lo 	#Opcode-kv3_v1-FSRSRWP_registerW_registerZ_simple
	;;
	fsrsrw $r48r49r50r51.x = $r49 	#Opcode-kv3_v1-FSRSRW_registerW_registerZ_simple
	;;
	fwidenlhwp.s $r48r49.hi = $r48r49r50r51.y 	#Opcode-kv3_v1-FWIDENLHWP_silent2_registerW_registerZ_simple
	;;
	fwidenlhw $r50 = $r50r51.lo 	#Opcode-kv3_v1-FWIDENLHW_silent2_registerW_registerZ_simple
	;;
	fwidenlwd.s $r48r49r50r51.z = $r51 	#Opcode-kv3_v1-FWIDENLWD_silent2_registerW_registerZ_simple
	;;
	fwidenmhwp $r50r51.hi = $r48r49r50r51.t 	#Opcode-kv3_v1-FWIDENMHWP_silent2_registerW_registerZ_simple
	;;
	fwidenmhw.s $r52 = $r52r53.lo 	#Opcode-kv3_v1-FWIDENMHW_silent2_registerW_registerZ_simple
	;;
	fwidenmwd $r52r53r54r55.x = $r53 	#Opcode-kv3_v1-FWIDENMWD_silent2_registerW_registerZ_simple
	;;
	get $r52r53.hi = $pc 	#Opcode-kv3_v1-GET_registerZ_systemS2_simple
	;;
	get $r52r53r54r55.y = $pc 	#Opcode-kv3_v1-GET_registerZ_systemS3_simple
	;;
	goto -33554432 	#Opcode-kv3_v1-GOTO_pcrel27_simple
	;;
	i1invals 2305843009213693951[$r54] 	#Opcode-kv3_v1-I1INVALS_extend27_upper27_lower10_registerZ_triple
	;;
	i1invals.dlez $r54r55.lo? -1125899906842624[$r52r53r54r55.z] 	#Opcode-kv3_v1-I1INVALS_lsucond_registerY_extend27_offset27_registerZ_triple
	;;
	i1invals.dgtz $r55? -8388608[$r54r55.hi] 	#Opcode-kv3_v1-I1INVALS_lsucond_registerY_offset27_registerZ_double
	;;
	i1invals.odd $r52r53r54r55.t? [$r56] 	#Opcode-kv3_v1-I1INVALS_lsucond_registerY_registerZ_simple
	;;
	i1invals $r56r57.lo[$r56r57r58r59.x] 	#Opcode-kv3_v1-I1INVALS_registerY_registerZ_simple
	;;
	i1invals -64[$r57] 	#Opcode-kv3_v1-I1INVALS_signed10_registerZ_simple
	;;
	i1invals -8589934592[$r56r57.hi] 	#Opcode-kv3_v1-I1INVALS_upper27_lower10_registerZ_double
	;;
	i1inval 	#Opcode-kv3_v1-I1INVAL_simple
	;;
	icall $r56r57r58r59.y 	#Opcode-kv3_v1-ICALL_registerZ_simple
	;;
	iget $r58 	#Opcode-kv3_v1-IGET_registerZ_simple
	;;
	igoto $r58r59.lo 	#Opcode-kv3_v1-IGOTO_registerZ_simple
	;;
	insf $r56r57r58r59.z = $r59, 7, 7 	#Opcode-kv3_v1-INSF_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	iord $r58r59.hi = $r56r57r58r59.t, 2305843009213693951 	#Opcode-kv3_v1-IORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	iord $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv3_v1-IORD_registerW_registerZ_registerY_simple
	;;
	iord $r61 = $r60r61.hi, -64 	#Opcode-kv3_v1-IORD_registerW_registerZ_signed10_simple
	;;
	iord $r60r61r62r63.y = $r62, -8589934592 	#Opcode-kv3_v1-IORD_registerW_registerZ_upper27_lower10_double
	;;
	iornd $r62r63.lo = $r60r61r62r63.z, 2305843009213693951 	#Opcode-kv3_v1-IORND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	iornd $r63 = $r62r63.hi, $r60r61r62r63.t 	#Opcode-kv3_v1-IORND_registerW_registerZ_registerY_simple
	;;
	iornd $r0 = $r0r1.lo, -64 	#Opcode-kv3_v1-IORND_registerW_registerZ_signed10_simple
	;;
	iornd $r0r1r2r3.x = $r1, -8589934592 	#Opcode-kv3_v1-IORND_registerW_registerZ_upper27_lower10_double
	;;
	iornw $r0r1.hi = $r0r1r2r3.y, $r2 	#Opcode-kv3_v1-IORNW_registerW_registerZ_registerY_simple
	;;
	iornw $r2r3.lo = $r0r1r2r3.z, -64 	#Opcode-kv3_v1-IORNW_registerW_registerZ_signed10_simple
	;;
	iornw $r3 = $r2r3.hi, -8589934592 	#Opcode-kv3_v1-IORNW_registerW_registerZ_upper27_lower10_double
	;;
	iorw $r0r1r2r3.t = $r4, $r4r5.lo 	#Opcode-kv3_v1-IORW_registerW_registerZ_registerY_simple
	;;
	iorw $r4r5r6r7.x = $r5, -64 	#Opcode-kv3_v1-IORW_registerW_registerZ_signed10_simple
	;;
	iorw $r4r5.hi = $r4r5r6r7.y, -8589934592 	#Opcode-kv3_v1-IORW_registerW_registerZ_upper27_lower10_double
	;;
	landd $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v1-LANDD_registerW_registerZ_registerY_simple
	;;
	landd $r7 = $r6r7.hi, 536870911 	#Opcode-kv3_v1-LANDD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	landhq $r4r5r6r7.t = $r8, $r8r9.lo 	#Opcode-kv3_v1-LANDHQ_registerW_registerZ_registerY_simple
	;;
	landhq $r8r9r10r11.x = $r9, 536870911.@ 	#Opcode-kv3_v1-LANDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	landwp $r8r9.hi = $r8r9r10r11.y, $r10 	#Opcode-kv3_v1-LANDWP_registerW_registerZ_registerY_simple
	;;
	landwp $r10r11.lo = $r8r9r10r11.z, 536870911 	#Opcode-kv3_v1-LANDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	landw $r11 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv3_v1-LANDW_registerW_registerZ_registerY_simple
	;;
	landw $r12 = $sp, 536870911 	#Opcode-kv3_v1-LANDW_registerW_registerZ_upper27_lower5_double
	;;
	lbs $r13 = $tp[$r14] 	#Opcode-kv3_v1-LBS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lbs.s.even $fp? $r15 = -1125899906842624[$rp] 	#Opcode-kv3_v1-LBS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lbs.u.wnez $r16? $r16r17.lo = -8388608[$r16r17r18r19.x] 	#Opcode-kv3_v1-LBS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lbs.us.weqz $r17? $r16r17.hi = [$r16r17r18r19.y] 	#Opcode-kv3_v1-LBS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lbs $r18 = 2305843009213693951[$r18r19.lo] 	#Opcode-kv3_v1-LBS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lbs.s $r16r17r18r19.z = -64[$r19] 	#Opcode-kv3_v1-LBS_variant_registerW_signed10_registerZ_simple
	;;
	lbs.u $r18r19.hi = -8589934592[$r16r17r18r19.t] 	#Opcode-kv3_v1-LBS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lbz.us.xs $r20 = $r20r21.lo[$r20r21r22r23.x] 	#Opcode-kv3_v1-LBZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lbz.wltz $r21? $r20r21.hi = -1125899906842624[$r20r21r22r23.y] 	#Opcode-kv3_v1-LBZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lbz.s.wgez $r22? $r22r23.lo = -8388608[$r20r21r22r23.z] 	#Opcode-kv3_v1-LBZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lbz.u.wlez $r23? $r22r23.hi = [$r20r21r22r23.t] 	#Opcode-kv3_v1-LBZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lbz.us $r24 = 2305843009213693951[$r24r25.lo] 	#Opcode-kv3_v1-LBZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lbz $r24r25r26r27.x = -64[$r25] 	#Opcode-kv3_v1-LBZ_variant_registerW_signed10_registerZ_simple
	;;
	lbz.s $r24r25.hi = -8589934592[$r24r25r26r27.y] 	#Opcode-kv3_v1-LBZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	ld.u $r26 = $r26r27.lo[$r24r25r26r27.z] 	#Opcode-kv3_v1-LD_variant_doscale_registerW_registerY_registerZ_simple
	;;
	ld.us.wgtz $r27? $r26r27.hi = -1125899906842624[$r24r25r26r27.t] 	#Opcode-kv3_v1-LD_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	ld.dnez $r28? $r28r29.lo = -8388608[$r28r29r30r31.x] 	#Opcode-kv3_v1-LD_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	ld.s.deqz $r29? $r28r29.hi = [$r28r29r30r31.y] 	#Opcode-kv3_v1-LD_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	ld.u $r30 = 2305843009213693951[$r30r31.lo] 	#Opcode-kv3_v1-LD_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	ld.us $r28r29r30r31.z = -64[$r31] 	#Opcode-kv3_v1-LD_variant_registerW_signed10_registerZ_simple
	;;
	ld $r30r31.hi = -8589934592[$r28r29r30r31.t] 	#Opcode-kv3_v1-LD_variant_registerW_upper27_lower10_registerZ_double
	;;
	lhs.s.xs $r32 = $r32r33.lo[$r32r33r34r35.x] 	#Opcode-kv3_v1-LHS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lhs.u.dltz $r33? $r32r33.hi = -1125899906842624[$r32r33r34r35.y] 	#Opcode-kv3_v1-LHS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lhs.us.dgez $r34? $r34r35.lo = -8388608[$r32r33r34r35.z] 	#Opcode-kv3_v1-LHS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lhs.dlez $r35? $r34r35.hi = [$r32r33r34r35.t] 	#Opcode-kv3_v1-LHS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lhs.s $r36 = 2305843009213693951[$r36r37.lo] 	#Opcode-kv3_v1-LHS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lhs.u $r36r37r38r39.x = -64[$r37] 	#Opcode-kv3_v1-LHS_variant_registerW_signed10_registerZ_simple
	;;
	lhs.us $r36r37.hi = -8589934592[$r36r37r38r39.y] 	#Opcode-kv3_v1-LHS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lhz $r38 = $r38r39.lo[$r36r37r38r39.z] 	#Opcode-kv3_v1-LHZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lhz.s.dgtz $r39? $r38r39.hi = -1125899906842624[$r36r37r38r39.t] 	#Opcode-kv3_v1-LHZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lhz.u.odd $r40? $r40r41.lo = -8388608[$r40r41r42r43.x] 	#Opcode-kv3_v1-LHZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lhz.us.even $r41? $r40r41.hi = [$r40r41r42r43.y] 	#Opcode-kv3_v1-LHZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lhz $r42 = 2305843009213693951[$r42r43.lo] 	#Opcode-kv3_v1-LHZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lhz.s $r40r41r42r43.z = -64[$r43] 	#Opcode-kv3_v1-LHZ_variant_registerW_signed10_registerZ_simple
	;;
	lhz.u $r42r43.hi = -8589934592[$r40r41r42r43.t] 	#Opcode-kv3_v1-LHZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	liord $r44 = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv3_v1-LIORD_registerW_registerZ_registerY_simple
	;;
	liord $r45 = $r44r45.hi, 536870911.@ 	#Opcode-kv3_v1-LIORD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	liorhq $r44r45r46r47.y = $r46, $r46r47.lo 	#Opcode-kv3_v1-LIORHQ_registerW_registerZ_registerY_simple
	;;
	liorhq $r44r45r46r47.z = $r47, 536870911 	#Opcode-kv3_v1-LIORHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	liorwp $r46r47.hi = $r44r45r46r47.t, $r48 	#Opcode-kv3_v1-LIORWP_registerW_registerZ_registerY_simple
	;;
	liorwp $r48r49.lo = $r48r49r50r51.x, 536870911.@ 	#Opcode-kv3_v1-LIORWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	liorw $r49 = $r48r49.hi, $r48r49r50r51.y 	#Opcode-kv3_v1-LIORW_registerW_registerZ_registerY_simple
	;;
	liorw $r50 = $r50r51.lo, 536870911 	#Opcode-kv3_v1-LIORW_registerW_registerZ_upper27_lower5_double
	;;
	lnandd $r48r49r50r51.z = $r51, $r50r51.hi 	#Opcode-kv3_v1-LNANDD_registerW_registerZ_registerY_simple
	;;
	lnandd $r48r49r50r51.t = $r52, 536870911 	#Opcode-kv3_v1-LNANDD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lnandhq $r52r53.lo = $r52r53r54r55.x, $r53 	#Opcode-kv3_v1-LNANDHQ_registerW_registerZ_registerY_simple
	;;
	lnandhq $r52r53.hi = $r52r53r54r55.y, 536870911.@ 	#Opcode-kv3_v1-LNANDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lnandwp $r54 = $r54r55.lo, $r52r53r54r55.z 	#Opcode-kv3_v1-LNANDWP_registerW_registerZ_registerY_simple
	;;
	lnandwp $r55 = $r54r55.hi, 536870911 	#Opcode-kv3_v1-LNANDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lnandw $r52r53r54r55.t = $r56, $r56r57.lo 	#Opcode-kv3_v1-LNANDW_registerW_registerZ_registerY_simple
	;;
	lnandw $r56r57r58r59.x = $r57, 536870911 	#Opcode-kv3_v1-LNANDW_registerW_registerZ_upper27_lower5_double
	;;
	lniord $r56r57.hi = $r56r57r58r59.y, $r58 	#Opcode-kv3_v1-LNIORD_registerW_registerZ_registerY_simple
	;;
	lniord $r58r59.lo = $r56r57r58r59.z, 536870911.@ 	#Opcode-kv3_v1-LNIORD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lniorhq $r59 = $r58r59.hi, $r56r57r58r59.t 	#Opcode-kv3_v1-LNIORHQ_registerW_registerZ_registerY_simple
	;;
	lniorhq $r60 = $r60r61.lo, 536870911 	#Opcode-kv3_v1-LNIORHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lniorwp $r60r61r62r63.x = $r61, $r60r61.hi 	#Opcode-kv3_v1-LNIORWP_registerW_registerZ_registerY_simple
	;;
	lniorwp $r60r61r62r63.y = $r62, 536870911.@ 	#Opcode-kv3_v1-LNIORWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lniorw $r62r63.lo = $r60r61r62r63.z, $r63 	#Opcode-kv3_v1-LNIORW_registerW_registerZ_registerY_simple
	;;
	lniorw $r62r63.hi = $r60r61r62r63.t, 536870911 	#Opcode-kv3_v1-LNIORW_registerW_registerZ_upper27_lower5_double
	;;
	lnord $r0 = $r0r1.lo, $r0r1r2r3.x 	#Opcode-kv3_v1-LNORD_registerW_registerZ_registerY_simple
	;;
	lnord $r1 = $r0r1.hi, 536870911 	#Opcode-kv3_v1-LNORD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lnorhq $r0r1r2r3.y = $r2, $r2r3.lo 	#Opcode-kv3_v1-LNORHQ_registerW_registerZ_registerY_simple
	;;
	lnorhq $r0r1r2r3.z = $r3, 536870911.@ 	#Opcode-kv3_v1-LNORHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lnorwp $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv3_v1-LNORWP_registerW_registerZ_registerY_simple
	;;
	lnorwp $r4r5.lo = $r4r5r6r7.x, 536870911 	#Opcode-kv3_v1-LNORWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lnorw $r5 = $r4r5.hi, $r4r5r6r7.y 	#Opcode-kv3_v1-LNORW_registerW_registerZ_registerY_simple
	;;
	lnorw $r6 = $r6r7.lo, 536870911 	#Opcode-kv3_v1-LNORW_registerW_registerZ_upper27_lower5_double
	;;
	loopdo $r4r5r6r7.z, -32768 	#Opcode-kv3_v1-LOOPDO_registerZ_pcrel17_simple
	;;
	lord $r7 = $r6r7.hi, $r4r5r6r7.t 	#Opcode-kv3_v1-LORD_registerW_registerZ_registerY_simple
	;;
	lord $r8 = $r8r9.lo, 536870911.@ 	#Opcode-kv3_v1-LORD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lorhq $r8r9r10r11.x = $r9, $r8r9.hi 	#Opcode-kv3_v1-LORHQ_registerW_registerZ_registerY_simple
	;;
	lorhq $r8r9r10r11.y = $r10, 536870911 	#Opcode-kv3_v1-LORHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lorwp $r10r11.lo = $r8r9r10r11.z, $r11 	#Opcode-kv3_v1-LORWP_registerW_registerZ_registerY_simple
	;;
	lorwp $r10r11.hi = $r8r9r10r11.t, 536870911.@ 	#Opcode-kv3_v1-LORWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	lorw $r12 = $sp, $r13 	#Opcode-kv3_v1-LORW_registerW_registerZ_registerY_simple
	;;
	lorw $tp = $r14, 536870911 	#Opcode-kv3_v1-LORW_registerW_registerZ_upper27_lower5_double
	;;
	lo.us.xs $r24r25r26r27 = $fp[$r15] 	#Opcode-kv3_v1-LO_variant_doscale_registerN_registerY_registerZ_simple
	;;
	lo.wnez $rp? $r28r29r30r31 = -1125899906842624[$r16] 	#Opcode-kv3_v1-LO_variant_lsucond_registerY_registerN_extend27_offset27_registerZ_triple
	;;
	lo.s.weqz $r16r17.lo? $r32r33r34r35 = -8388608[$r16r17r18r19.x] 	#Opcode-kv3_v1-LO_variant_lsucond_registerY_registerN_offset27_registerZ_double
	;;
	lo.u.wltz $r17? $r36r37r38r39 = [$r16r17.hi] 	#Opcode-kv3_v1-LO_variant_lsucond_registerY_registerN_registerZ_simple
	;;
	lo.us $r40r41r42r43 = 2305843009213693951[$r16r17r18r19.y] 	#Opcode-kv3_v1-LO_variant_registerN_extend27_upper27_lower10_registerZ_triple
	;;
	lo $r44r45r46r47 = -64[$r18] 	#Opcode-kv3_v1-LO_variant_registerN_signed10_registerZ_simple
	;;
	lo.s $r48r49r50r51 = -8589934592[$r18r19.lo] 	#Opcode-kv3_v1-LO_variant_registerN_upper27_lower10_registerZ_double
	;;
	lq.u $r56r57r58r59.hi = $r16r17r18r19.z[$r19] 	#Opcode-kv3_v1-LQ_variant_doscale_registerM_registerY_registerZ_simple
	;;
	lq.us.wgez $r18r19.hi? $r60r61 = -1125899906842624[$r16r17r18r19.t] 	#Opcode-kv3_v1-LQ_variant_lsucond_registerY_registerM_extend27_offset27_registerZ_triple
	;;
	lq.wlez $r20? $r60r61r62r63.lo = -8388608[$r20r21.lo] 	#Opcode-kv3_v1-LQ_variant_lsucond_registerY_registerM_offset27_registerZ_double
	;;
	lq.s.wgtz $r20r21r22r23.x? $r62r63 = [$r21] 	#Opcode-kv3_v1-LQ_variant_lsucond_registerY_registerM_registerZ_simple
	;;
	lq.u $r60r61r62r63.hi = 2305843009213693951[$r20r21.hi] 	#Opcode-kv3_v1-LQ_variant_registerM_extend27_upper27_lower10_registerZ_triple
	;;
	lq.us $r0r1 = -64[$r20r21r22r23.y] 	#Opcode-kv3_v1-LQ_variant_registerM_signed10_registerZ_simple
	;;
	lq $r0r1r2r3.lo = -8589934592[$r22] 	#Opcode-kv3_v1-LQ_variant_registerM_upper27_lower10_registerZ_double
	;;
	lws.s.xs $r22r23.lo = $r20r21r22r23.z[$r23] 	#Opcode-kv3_v1-LWS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lws.u.dnez $r22r23.hi? $r20r21r22r23.t = -1125899906842624[$r24] 	#Opcode-kv3_v1-LWS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lws.us.deqz $r24r25.lo? $r24r25r26r27.x = -8388608[$r25] 	#Opcode-kv3_v1-LWS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lws.dltz $r24r25.hi? $r24r25r26r27.y = [$r26] 	#Opcode-kv3_v1-LWS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lws.s $r26r27.lo = 2305843009213693951[$r24r25r26r27.z] 	#Opcode-kv3_v1-LWS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lws.u $r27 = -64[$r26r27.hi] 	#Opcode-kv3_v1-LWS_variant_registerW_signed10_registerZ_simple
	;;
	lws.us $r24r25r26r27.t = -8589934592[$r28] 	#Opcode-kv3_v1-LWS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lwz $r28r29.lo = $r28r29r30r31.x[$r29] 	#Opcode-kv3_v1-LWZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lwz.s.dgez $r28r29.hi? $r28r29r30r31.y = -1125899906842624[$r30] 	#Opcode-kv3_v1-LWZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lwz.u.dlez $r30r31.lo? $r28r29r30r31.z = -8388608[$r31] 	#Opcode-kv3_v1-LWZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lwz.us.dgtz $r30r31.hi? $r28r29r30r31.t = [$r32] 	#Opcode-kv3_v1-LWZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lwz $r32r33.lo = 2305843009213693951[$r32r33r34r35.x] 	#Opcode-kv3_v1-LWZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lwz.s $r33 = -64[$r32r33.hi] 	#Opcode-kv3_v1-LWZ_variant_registerW_signed10_registerZ_simple
	;;
	lwz.u $r32r33r34r35.y = -8589934592[$r34] 	#Opcode-kv3_v1-LWZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	madddt $r2r3 = $r34r35.lo, 2305843009213693951 	#Opcode-kv3_v1-MADDDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	madddt $r0r1r2r3.hi = $r32r33r34r35.z, $r35 	#Opcode-kv3_v1-MADDDT_registerM_registerZ_registerY_simple
	;;
	madddt $r4r5 = $r34r35.hi, -64 	#Opcode-kv3_v1-MADDDT_registerM_registerZ_signed10_simple
	;;
	madddt $r4r5r6r7.lo = $r32r33r34r35.t, -8589934592 	#Opcode-kv3_v1-MADDDT_registerM_registerZ_upper27_lower10_double
	;;
	maddd $r36 = $r36r37.lo, 2305843009213693951 	#Opcode-kv3_v1-MADDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maddd $r36r37r38r39.x = $r37, $r36r37.hi 	#Opcode-kv3_v1-MADDD_registerW_registerZ_registerY_simple
	;;
	maddd $r36r37r38r39.y = $r38, -64 	#Opcode-kv3_v1-MADDD_registerW_registerZ_signed10_simple
	;;
	maddd $r38r39.lo = $r36r37r38r39.z, -8589934592 	#Opcode-kv3_v1-MADDD_registerW_registerZ_upper27_lower10_double
	;;
	maddhq $r39 = $r38r39.hi, 2305843009213693951 	#Opcode-kv3_v1-MADDHQ_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maddhq $r36r37r38r39.t = $r40, $r40r41.lo 	#Opcode-kv3_v1-MADDHQ_registerW_registerZ_registerY_simple
	;;
	maddhq $r40r41r42r43.x = $r41, -64 	#Opcode-kv3_v1-MADDHQ_registerW_registerZ_signed10_simple
	;;
	maddhq $r40r41.hi = $r40r41r42r43.y, -8589934592 	#Opcode-kv3_v1-MADDHQ_registerW_registerZ_upper27_lower10_double
	;;
	maddhwq $r6r7 = $r42, $r42r43.lo 	#Opcode-kv3_v1-MADDHWQ_registerM_registerZ_registerY_simple
	;;
	maddsudt $r4r5r6r7.hi = $r40r41r42r43.z, 2305843009213693951 	#Opcode-kv3_v1-MADDSUDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	maddsudt $r8r9 = $r43, $r42r43.hi 	#Opcode-kv3_v1-MADDSUDT_registerM_registerZ_registerY_simple
	;;
	maddsudt $r8r9r10r11.lo = $r40r41r42r43.t, -64 	#Opcode-kv3_v1-MADDSUDT_registerM_registerZ_signed10_simple
	;;
	maddsudt $r10r11 = $r44, -8589934592 	#Opcode-kv3_v1-MADDSUDT_registerM_registerZ_upper27_lower10_double
	;;
	maddsuhwq $r8r9r10r11.hi = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv3_v1-MADDSUHWQ_registerM_registerZ_registerY_simple
	;;
	maddsuwdp $r12r13 = $r45, $r44r45.hi 	#Opcode-kv3_v1-MADDSUWDP_registerM_registerZ_registerY_simple
	;;
	maddsuwdp $r12r13r14r15.lo = $r44r45r46r47.y, 536870911 	#Opcode-kv3_v1-MADDSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	maddsuwd $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv3_v1-MADDSUWD_registerW_registerZ_registerY_simple
	;;
	maddsuwd $r47 = $r46r47.hi, 536870911 	#Opcode-kv3_v1-MADDSUWD_registerW_registerZ_upper27_lower5_double
	;;
	maddudt $r14r15 = $r44r45r46r47.t, 2305843009213693951 	#Opcode-kv3_v1-MADDUDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	maddudt $r12r13r14r15.hi = $r48, $r48r49.lo 	#Opcode-kv3_v1-MADDUDT_registerM_registerZ_registerY_simple
	;;
	maddudt $r16r17 = $r48r49r50r51.x, -64 	#Opcode-kv3_v1-MADDUDT_registerM_registerZ_signed10_simple
	;;
	maddudt $r16r17r18r19.lo = $r49, -8589934592 	#Opcode-kv3_v1-MADDUDT_registerM_registerZ_upper27_lower10_double
	;;
	madduhwq $r18r19 = $r48r49.hi, $r48r49r50r51.y 	#Opcode-kv3_v1-MADDUHWQ_registerM_registerZ_registerY_simple
	;;
	madduwdp $r16r17r18r19.hi = $r50, $r50r51.lo 	#Opcode-kv3_v1-MADDUWDP_registerM_registerZ_registerY_simple
	;;
	madduwdp $r20r21 = $r48r49r50r51.z, 536870911.@ 	#Opcode-kv3_v1-MADDUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	madduwd $r51 = $r50r51.hi, $r48r49r50r51.t 	#Opcode-kv3_v1-MADDUWD_registerW_registerZ_registerY_simple
	;;
	madduwd $r52 = $r52r53.lo, 536870911 	#Opcode-kv3_v1-MADDUWD_registerW_registerZ_upper27_lower5_double
	;;
	madduzdt $r20r21r22r23.lo = $r52r53r54r55.x, 2305843009213693951 	#Opcode-kv3_v1-MADDUZDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	madduzdt $r22r23 = $r53, $r52r53.hi 	#Opcode-kv3_v1-MADDUZDT_registerM_registerZ_registerY_simple
	;;
	madduzdt $r20r21r22r23.hi = $r52r53r54r55.y, -64 	#Opcode-kv3_v1-MADDUZDT_registerM_registerZ_signed10_simple
	;;
	madduzdt $r24r25 = $r54, -8589934592 	#Opcode-kv3_v1-MADDUZDT_registerM_registerZ_upper27_lower10_double
	;;
	maddwdp $r24r25r26r27.lo = $r54r55.lo, $r52r53r54r55.z 	#Opcode-kv3_v1-MADDWDP_registerM_registerZ_registerY_simple
	;;
	maddwdp $r26r27 = $r55, 536870911 	#Opcode-kv3_v1-MADDWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	maddwd $r54r55.hi = $r52r53r54r55.t, $r56 	#Opcode-kv3_v1-MADDWD_registerW_registerZ_registerY_simple
	;;
	maddwd $r56r57.lo = $r56r57r58r59.x, 536870911 	#Opcode-kv3_v1-MADDWD_registerW_registerZ_upper27_lower5_double
	;;
	maddwp $r57 = $r56r57.hi, 2305843009213693951 	#Opcode-kv3_v1-MADDWP_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maddwp $r56r57r58r59.y = $r58, $r58r59.lo 	#Opcode-kv3_v1-MADDWP_registerW_registerZ_registerY_simple
	;;
	maddwp $r56r57r58r59.z = $r59, -64 	#Opcode-kv3_v1-MADDWP_registerW_registerZ_signed10_simple
	;;
	maddwp $r58r59.hi = $r56r57r58r59.t, -8589934592 	#Opcode-kv3_v1-MADDWP_registerW_registerZ_upper27_lower10_double
	;;
	maddw $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv3_v1-MADDW_registerW_registerZ_registerY_simple
	;;
	maddw $r61 = $r60r61.hi, 536870911 	#Opcode-kv3_v1-MADDW_registerW_registerZ_upper27_lower5_double
	;;
	make $r60r61r62r63.y = 2305843009213693951 	#Opcode-kv3_v1-MAKE_registerW_extend27_upper27_lower10_triple
	;;
	make $r62 = -549755813888 	#Opcode-kv3_v1-MAKE_registerW_extend6_upper27_lower10_double
	;;
	make $r62r63.lo = -4096 	#Opcode-kv3_v1-MAKE_registerW_signed16_simple
	;;
	maxd $r60r61r62r63.z = $r63, 2305843009213693951 	#Opcode-kv3_v1-MAXD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maxd $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv3_v1-MAXD_registerW_registerZ_registerY_simple
	;;
	maxd $r0r1.lo = $r0r1r2r3.x, -64 	#Opcode-kv3_v1-MAXD_registerW_registerZ_signed10_simple
	;;
	maxd $r1 = $r0r1.hi, -8589934592 	#Opcode-kv3_v1-MAXD_registerW_registerZ_upper27_lower10_double
	;;
	maxhq $r0r1r2r3.y = $r2, $r2r3.lo 	#Opcode-kv3_v1-MAXHQ_registerW_registerZ_registerY_simple
	;;
	maxhq $r0r1r2r3.z = $r3, 536870911.@ 	#Opcode-kv3_v1-MAXHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxud $r2r3.hi = $r0r1r2r3.t, 2305843009213693951 	#Opcode-kv3_v1-MAXUD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maxud $r4 = $r4r5.lo, $r4r5r6r7.x 	#Opcode-kv3_v1-MAXUD_registerW_registerZ_registerY_simple
	;;
	maxud $r5 = $r4r5.hi, -64 	#Opcode-kv3_v1-MAXUD_registerW_registerZ_signed10_simple
	;;
	maxud $r4r5r6r7.y = $r6, -8589934592 	#Opcode-kv3_v1-MAXUD_registerW_registerZ_upper27_lower10_double
	;;
	maxuhq $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v1-MAXUHQ_registerW_registerZ_registerY_simple
	;;
	maxuhq $r6r7.hi = $r4r5r6r7.t, 536870911 	#Opcode-kv3_v1-MAXUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxuwp $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv3_v1-MAXUWP_registerW_registerZ_registerY_simple
	;;
	maxuwp $r9 = $r8r9.hi, 536870911.@ 	#Opcode-kv3_v1-MAXUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxuw $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv3_v1-MAXUW_registerW_registerZ_registerY_simple
	;;
	maxuw $r8r9r10r11.z = $r11, -64 	#Opcode-kv3_v1-MAXUW_registerW_registerZ_signed10_simple
	;;
	maxuw $r10r11.hi = $r8r9r10r11.t, -8589934592 	#Opcode-kv3_v1-MAXUW_registerW_registerZ_upper27_lower10_double
	;;
	maxwp $r12 = $sp, $r13 	#Opcode-kv3_v1-MAXWP_registerW_registerZ_registerY_simple
	;;
	maxwp $tp = $r14, 536870911 	#Opcode-kv3_v1-MAXWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxw $fp = $r15, $rp 	#Opcode-kv3_v1-MAXW_registerW_registerZ_registerY_simple
	;;
	maxw $r16 = $r16r17.lo, -64 	#Opcode-kv3_v1-MAXW_registerW_registerZ_signed10_simple
	;;
	maxw $r16r17r18r19.x = $r17, -8589934592 	#Opcode-kv3_v1-MAXW_registerW_registerZ_upper27_lower10_double
	;;
	mind $r16r17.hi = $r16r17r18r19.y, 2305843009213693951 	#Opcode-kv3_v1-MIND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	mind $r18 = $r18r19.lo, $r16r17r18r19.z 	#Opcode-kv3_v1-MIND_registerW_registerZ_registerY_simple
	;;
	mind $r19 = $r18r19.hi, -64 	#Opcode-kv3_v1-MIND_registerW_registerZ_signed10_simple
	;;
	mind $r16r17r18r19.t = $r20, -8589934592 	#Opcode-kv3_v1-MIND_registerW_registerZ_upper27_lower10_double
	;;
	minhq $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv3_v1-MINHQ_registerW_registerZ_registerY_simple
	;;
	minhq $r20r21.hi = $r20r21r22r23.y, 536870911.@ 	#Opcode-kv3_v1-MINHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minud $r22 = $r22r23.lo, 2305843009213693951 	#Opcode-kv3_v1-MINUD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	minud $r20r21r22r23.z = $r23, $r22r23.hi 	#Opcode-kv3_v1-MINUD_registerW_registerZ_registerY_simple
	;;
	minud $r20r21r22r23.t = $r24, -64 	#Opcode-kv3_v1-MINUD_registerW_registerZ_signed10_simple
	;;
	minud $r24r25.lo = $r24r25r26r27.x, -8589934592 	#Opcode-kv3_v1-MINUD_registerW_registerZ_upper27_lower10_double
	;;
	minuhq $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v1-MINUHQ_registerW_registerZ_registerY_simple
	;;
	minuhq $r26 = $r26r27.lo, 536870911 	#Opcode-kv3_v1-MINUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minuwp $r24r25r26r27.z = $r27, $r26r27.hi 	#Opcode-kv3_v1-MINUWP_registerW_registerZ_registerY_simple
	;;
	minuwp $r24r25r26r27.t = $r28, 536870911.@ 	#Opcode-kv3_v1-MINUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minuw $r28r29.lo = $r28r29r30r31.x, $r29 	#Opcode-kv3_v1-MINUW_registerW_registerZ_registerY_simple
	;;
	minuw $r28r29.hi = $r28r29r30r31.y, -64 	#Opcode-kv3_v1-MINUW_registerW_registerZ_signed10_simple
	;;
	minuw $r30 = $r30r31.lo, -8589934592 	#Opcode-kv3_v1-MINUW_registerW_registerZ_upper27_lower10_double
	;;
	minwp $r28r29r30r31.z = $r31, $r30r31.hi 	#Opcode-kv3_v1-MINWP_registerW_registerZ_registerY_simple
	;;
	minwp $r28r29r30r31.t = $r32, 536870911 	#Opcode-kv3_v1-MINWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minw $r32r33.lo = $r32r33r34r35.x, $r33 	#Opcode-kv3_v1-MINW_registerW_registerZ_registerY_simple
	;;
	minw $r32r33.hi = $r32r33r34r35.y, -64 	#Opcode-kv3_v1-MINW_registerW_registerZ_signed10_simple
	;;
	minw $r34 = $r34r35.lo, -8589934592 	#Opcode-kv3_v1-MINW_registerW_registerZ_upper27_lower10_double
	;;
	mm212w $r24r25r26r27.hi = $r32r33r34r35.z, $r35 	#Opcode-kv3_v1-MM212W_registerM_registerZ_registerY_simple
	;;
	mm212w $r28r29 = $r34r35.hi, 536870911.@ 	#Opcode-kv3_v1-MM212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mma212w $r28r29r30r31.lo = $r32r33r34r35.t, $r36 	#Opcode-kv3_v1-MMA212W_registerM_registerZ_registerY_simple
	;;
	mma212w $r30r31 = $r36r37.lo, 536870911 	#Opcode-kv3_v1-MMA212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mma444hbd0 $a24a25a26a27 = $a28a29a30a31, $a5, $a4a5.hi 	#Opcode-kv3_v1-MMA444HBD0_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444hbd1 $a32a33a34a35 = $a36a37a38a39, $a4a5a6a7.y, $a6 	#Opcode-kv3_v1-MMA444HBD1_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444hd $a40a41a42a43 = $a44a45a46a47, $a6a7.lo, $a4a5a6a7.z 	#Opcode-kv3_v1-MMA444HD_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444suhbd0 $a48a49a50a51 = $a52a53a54a55, $a7, $a6a7.hi 	#Opcode-kv3_v1-MMA444SUHBD0_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444suhbd1 $a56a57a58a59 = $a60a61a62a63, $a4a5a6a7.t, $a8 	#Opcode-kv3_v1-MMA444SUHBD1_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444suhd $a0a1a2a3 = $a4a5a6a7, $a8a9.lo, $a8a9a10a11.x 	#Opcode-kv3_v1-MMA444SUHD_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444uhbd0 $a8a9a10a11 = $a12a13a14a15, $a9, $a8a9.hi 	#Opcode-kv3_v1-MMA444UHBD0_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444uhbd1 $a16a17a18a19 = $a20a21a22a23, $a8a9a10a11.y, $a10 	#Opcode-kv3_v1-MMA444UHBD1_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444uhd $a24a25a26a27 = $a28a29a30a31, $a10a11.lo, $a8a9a10a11.z 	#Opcode-kv3_v1-MMA444UHD_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444ushbd0 $a32a33a34a35 = $a36a37a38a39, $a11, $a10a11.hi 	#Opcode-kv3_v1-MMA444USHBD0_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444ushbd1 $a40a41a42a43 = $a44a45a46a47, $a8a9a10a11.t, $a12 	#Opcode-kv3_v1-MMA444USHBD1_registerAq_registerBq_registerC_registerD_simple
	;;
	mma444ushd $a48a49a50a51 = $a52a53a54a55, $a12a13.lo, $a12a13a14a15.x 	#Opcode-kv3_v1-MMA444USHD_registerAq_registerBq_registerC_registerD_simple
	;;
	mms212w $r28r29r30r31.hi = $r36r37r38r39.x, $r37 	#Opcode-kv3_v1-MMS212W_registerM_registerZ_registerY_simple
	;;
	mms212w $r32r33 = $r36r37.hi, 536870911.@ 	#Opcode-kv3_v1-MMS212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	movetq $a0.lo = $r36r37r38r39.y, $r38 	#Opcode-kv3_v1-MOVETQ_registerAE_registerZ_registerY_simple
	;;
	movetq $a0.hi = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv3_v1-MOVETQ_registerAO_registerZ_registerY_simple
	;;
	msbfdt $r32r33r34r35.lo = $r39, $r38r39.hi 	#Opcode-kv3_v1-MSBFDT_registerM_registerZ_registerY_simple
	;;
	msbfd $r36r37r38r39.t = $r40, $r40r41.lo 	#Opcode-kv3_v1-MSBFD_registerW_registerZ_registerY_simple
	;;
	msbfd $r40r41r42r43.x = $r41, 536870911 	#Opcode-kv3_v1-MSBFD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfhq $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv3_v1-MSBFHQ_registerW_registerZ_registerY_simple
	;;
	msbfhq $r42r43.lo = $r40r41r42r43.z, 536870911.@ 	#Opcode-kv3_v1-MSBFHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfhwq $r34r35 = $r43, $r42r43.hi 	#Opcode-kv3_v1-MSBFHWQ_registerM_registerZ_registerY_simple
	;;
	msbfsudt $r32r33r34r35.hi = $r40r41r42r43.t, $r44 	#Opcode-kv3_v1-MSBFSUDT_registerM_registerZ_registerY_simple
	;;
	msbfsuhwq $r36r37 = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv3_v1-MSBFSUHWQ_registerM_registerZ_registerY_simple
	;;
	msbfsuwdp $r36r37r38r39.lo = $r45, $r44r45.hi 	#Opcode-kv3_v1-MSBFSUWDP_registerM_registerZ_registerY_simple
	;;
	msbfsuwdp $r38r39 = $r44r45r46r47.y, 536870911 	#Opcode-kv3_v1-MSBFSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfsuwd $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv3_v1-MSBFSUWD_registerW_registerZ_registerY_simple
	;;
	msbfsuwd $r47 = $r46r47.hi, 536870911 	#Opcode-kv3_v1-MSBFSUWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfudt $r36r37r38r39.hi = $r44r45r46r47.t, $r48 	#Opcode-kv3_v1-MSBFUDT_registerM_registerZ_registerY_simple
	;;
	msbfuhwq $r40r41 = $r48r49.lo, $r48r49r50r51.x 	#Opcode-kv3_v1-MSBFUHWQ_registerM_registerZ_registerY_simple
	;;
	msbfuwdp $r40r41r42r43.lo = $r49, $r48r49.hi 	#Opcode-kv3_v1-MSBFUWDP_registerM_registerZ_registerY_simple
	;;
	msbfuwdp $r42r43 = $r48r49r50r51.y, 536870911.@ 	#Opcode-kv3_v1-MSBFUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfuwd $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v1-MSBFUWD_registerW_registerZ_registerY_simple
	;;
	msbfuwd $r51 = $r50r51.hi, 536870911 	#Opcode-kv3_v1-MSBFUWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfuzdt $r40r41r42r43.hi = $r48r49r50r51.t, $r52 	#Opcode-kv3_v1-MSBFUZDT_registerM_registerZ_registerY_simple
	;;
	msbfwdp $r44r45 = $r52r53.lo, $r52r53r54r55.x 	#Opcode-kv3_v1-MSBFWDP_registerM_registerZ_registerY_simple
	;;
	msbfwdp $r44r45r46r47.lo = $r53, 536870911 	#Opcode-kv3_v1-MSBFWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfwd $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v1-MSBFWD_registerW_registerZ_registerY_simple
	;;
	msbfwd $r54r55.lo = $r52r53r54r55.z, 536870911 	#Opcode-kv3_v1-MSBFWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfwp $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v1-MSBFWP_registerW_registerZ_registerY_simple
	;;
	msbfwp $r56 = $r56r57.lo, 536870911.@ 	#Opcode-kv3_v1-MSBFWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfw $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv3_v1-MSBFW_registerW_registerZ_registerY_simple
	;;
	msbfw $r56r57r58r59.y = $r58, 536870911 	#Opcode-kv3_v1-MSBFW_registerW_registerZ_upper27_lower5_double
	;;
	muldt $r46r47 = $r58r59.lo, 2305843009213693951 	#Opcode-kv3_v1-MULDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	muldt $r44r45r46r47.hi = $r56r57r58r59.z, $r59 	#Opcode-kv3_v1-MULDT_registerM_registerZ_registerY_simple
	;;
	muldt $r48r49 = $r58r59.hi, -64 	#Opcode-kv3_v1-MULDT_registerM_registerZ_signed10_simple
	;;
	muldt $r48r49r50r51.lo = $r56r57r58r59.t, -8589934592 	#Opcode-kv3_v1-MULDT_registerM_registerZ_upper27_lower10_double
	;;
	muld $r60 = $r60r61.lo, 2305843009213693951 	#Opcode-kv3_v1-MULD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	muld $r60r61r62r63.x = $r61, $r60r61.hi 	#Opcode-kv3_v1-MULD_registerW_registerZ_registerY_simple
	;;
	muld $r60r61r62r63.y = $r62, -64 	#Opcode-kv3_v1-MULD_registerW_registerZ_signed10_simple
	;;
	muld $r62r63.lo = $r60r61r62r63.z, -8589934592 	#Opcode-kv3_v1-MULD_registerW_registerZ_upper27_lower10_double
	;;
	mulhq $r63 = $r62r63.hi, 2305843009213693951 	#Opcode-kv3_v1-MULHQ_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	mulhq $r60r61r62r63.t = $r0, $r0r1.lo 	#Opcode-kv3_v1-MULHQ_registerW_registerZ_registerY_simple
	;;
	mulhq $r0r1r2r3.x = $r1, -64 	#Opcode-kv3_v1-MULHQ_registerW_registerZ_signed10_simple
	;;
	mulhq $r0r1.hi = $r0r1r2r3.y, -8589934592 	#Opcode-kv3_v1-MULHQ_registerW_registerZ_upper27_lower10_double
	;;
	mulhwq $r50r51 = $r2, $r2r3.lo 	#Opcode-kv3_v1-MULHWQ_registerM_registerZ_registerY_simple
	;;
	mulsudt $r48r49r50r51.hi = $r0r1r2r3.z, 2305843009213693951 	#Opcode-kv3_v1-MULSUDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	mulsudt $r52r53 = $r3, $r2r3.hi 	#Opcode-kv3_v1-MULSUDT_registerM_registerZ_registerY_simple
	;;
	mulsudt $r52r53r54r55.lo = $r0r1r2r3.t, -64 	#Opcode-kv3_v1-MULSUDT_registerM_registerZ_signed10_simple
	;;
	mulsudt $r54r55 = $r4, -8589934592 	#Opcode-kv3_v1-MULSUDT_registerM_registerZ_upper27_lower10_double
	;;
	mulsuhwq $r52r53r54r55.hi = $r4r5.lo, $r4r5r6r7.x 	#Opcode-kv3_v1-MULSUHWQ_registerM_registerZ_registerY_simple
	;;
	mulsuwdp $r56r57 = $r5, $r4r5.hi 	#Opcode-kv3_v1-MULSUWDP_registerM_registerZ_registerY_simple
	;;
	mulsuwdp $r56r57r58r59.lo = $r4r5r6r7.y, 536870911 	#Opcode-kv3_v1-MULSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mulsuwd $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v1-MULSUWD_registerW_registerZ_registerY_simple
	;;
	mulsuwd $r7 = $r6r7.hi, 536870911 	#Opcode-kv3_v1-MULSUWD_registerW_registerZ_upper27_lower5_double
	;;
	muludt $r58r59 = $r4r5r6r7.t, 2305843009213693951 	#Opcode-kv3_v1-MULUDT_registerM_registerZ_extend27_upper27_lower10_triple
	;;
	muludt $r56r57r58r59.hi = $r8, $r8r9.lo 	#Opcode-kv3_v1-MULUDT_registerM_registerZ_registerY_simple
	;;
	muludt $r60r61 = $r8r9r10r11.x, -64 	#Opcode-kv3_v1-MULUDT_registerM_registerZ_signed10_simple
	;;
	muludt $r60r61r62r63.lo = $r9, -8589934592 	#Opcode-kv3_v1-MULUDT_registerM_registerZ_upper27_lower10_double
	;;
	muluhwq $r62r63 = $r8r9.hi, $r8r9r10r11.y 	#Opcode-kv3_v1-MULUHWQ_registerM_registerZ_registerY_simple
	;;
	muluwdp $r60r61r62r63.hi = $r10, $r10r11.lo 	#Opcode-kv3_v1-MULUWDP_registerM_registerZ_registerY_simple
	;;
	muluwdp $r0r1 = $r8r9r10r11.z, 536870911.@ 	#Opcode-kv3_v1-MULUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	muluwd $r11 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv3_v1-MULUWD_registerW_registerZ_registerY_simple
	;;
	muluwd $r12 = $sp, 536870911 	#Opcode-kv3_v1-MULUWD_registerW_registerZ_upper27_lower5_double
	;;
	mulwc.c $r13 = $tp, $r14 	#Opcode-kv3_v1-MULWC.C_registerW_registerZ_registerY_simple
	;;
	mulwc $fp = $r15, 2305843009213693951 	#Opcode-kv3_v1-MULWC_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	mulwc $rp = $r16, $r16r17.lo 	#Opcode-kv3_v1-MULWC_registerW_registerZ_registerY_simple
	;;
	mulwc $r16r17r18r19.x = $r17, -64 	#Opcode-kv3_v1-MULWC_registerW_registerZ_signed10_simple
	;;
	mulwc $r16r17.hi = $r16r17r18r19.y, -8589934592 	#Opcode-kv3_v1-MULWC_registerW_registerZ_upper27_lower10_double
	;;
	mulwdc.c $r0r1r2r3.lo = $r18, $r18r19.lo 	#Opcode-kv3_v1-MULWDC.C_registerM_registerZ_registerY_simple
	;;
	mulwdc $r2r3 = $r16r17r18r19.z, $r19 	#Opcode-kv3_v1-MULWDC_registerM_registerZ_registerY_simple
	;;
	mulwdp $r0r1r2r3.hi = $r18r19.hi, $r16r17r18r19.t 	#Opcode-kv3_v1-MULWDP_registerM_registerZ_registerY_simple
	;;
	mulwdp $r4r5 = $r20, 536870911 	#Opcode-kv3_v1-MULWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mulwd $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv3_v1-MULWD_registerW_registerZ_registerY_simple
	;;
	mulwd $r20r21.hi = $r20r21r22r23.y, 536870911 	#Opcode-kv3_v1-MULWD_registerW_registerZ_upper27_lower5_double
	;;
	mulwp $r22 = $r22r23.lo, 2305843009213693951 	#Opcode-kv3_v1-MULWP_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	mulwp $r20r21r22r23.z = $r23, $r22r23.hi 	#Opcode-kv3_v1-MULWP_registerW_registerZ_registerY_simple
	;;
	mulwp $r20r21r22r23.t = $r24, -64 	#Opcode-kv3_v1-MULWP_registerW_registerZ_signed10_simple
	;;
	mulwp $r24r25.lo = $r24r25r26r27.x, -8589934592 	#Opcode-kv3_v1-MULWP_registerW_registerZ_upper27_lower10_double
	;;
	mulwq $r4r5r6r7.lo = $r6r7, $r4r5r6r7.hi 	#Opcode-kv3_v1-MULWQ_registerM_registerP_registerO_simple
	;;
	mulw $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v1-MULW_registerW_registerZ_registerY_simple
	;;
	mulw $r26 = $r26r27.lo, 536870911 	#Opcode-kv3_v1-MULW_registerW_registerZ_upper27_lower5_double
	;;
	nandd $r24r25r26r27.z = $r27, 2305843009213693951 	#Opcode-kv3_v1-NANDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	nandd $r26r27.hi = $r24r25r26r27.t, $r28 	#Opcode-kv3_v1-NANDD_registerW_registerZ_registerY_simple
	;;
	nandd $r28r29.lo = $r28r29r30r31.x, -64 	#Opcode-kv3_v1-NANDD_registerW_registerZ_signed10_simple
	;;
	nandd $r29 = $r28r29.hi, -8589934592 	#Opcode-kv3_v1-NANDD_registerW_registerZ_upper27_lower10_double
	;;
	nandw $r28r29r30r31.y = $r30, $r30r31.lo 	#Opcode-kv3_v1-NANDW_registerW_registerZ_registerY_simple
	;;
	nandw $r28r29r30r31.z = $r31, -64 	#Opcode-kv3_v1-NANDW_registerW_registerZ_signed10_simple
	;;
	nandw $r30r31.hi = $r28r29r30r31.t, -8589934592 	#Opcode-kv3_v1-NANDW_registerW_registerZ_upper27_lower10_double
	;;
	negd $r32 = $r32r33.lo 	#Opcode-kv3_v1-NEGD_registerW_registerZ_simple
	;;
	neghq $r32r33r34r35.x = $r33 	#Opcode-kv3_v1-NEGHQ_registerW_registerZ_double
	;;
	negwp $r32r33.hi = $r32r33r34r35.y 	#Opcode-kv3_v1-NEGWP_registerW_registerZ_double
	;;
	negw $r34 = $r34r35.lo 	#Opcode-kv3_v1-NEGW_registerW_registerZ_simple
	;;
	neord $r32r33r34r35.z = $r35, 2305843009213693951 	#Opcode-kv3_v1-NEORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	neord $r34r35.hi = $r32r33r34r35.t, $r36 	#Opcode-kv3_v1-NEORD_registerW_registerZ_registerY_simple
	;;
	neord $r36r37.lo = $r36r37r38r39.x, -64 	#Opcode-kv3_v1-NEORD_registerW_registerZ_signed10_simple
	;;
	neord $r37 = $r36r37.hi, -8589934592 	#Opcode-kv3_v1-NEORD_registerW_registerZ_upper27_lower10_double
	;;
	neorw $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv3_v1-NEORW_registerW_registerZ_registerY_simple
	;;
	neorw $r36r37r38r39.z = $r39, -64 	#Opcode-kv3_v1-NEORW_registerW_registerZ_signed10_simple
	;;
	neorw $r38r39.hi = $r36r37r38r39.t, -8589934592 	#Opcode-kv3_v1-NEORW_registerW_registerZ_upper27_lower10_double
	;;
	niord $r40 = $r40r41.lo, 2305843009213693951 	#Opcode-kv3_v1-NIORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	niord $r40r41r42r43.x = $r41, $r40r41.hi 	#Opcode-kv3_v1-NIORD_registerW_registerZ_registerY_simple
	;;
	niord $r40r41r42r43.y = $r42, -64 	#Opcode-kv3_v1-NIORD_registerW_registerZ_signed10_simple
	;;
	niord $r42r43.lo = $r40r41r42r43.z, -8589934592 	#Opcode-kv3_v1-NIORD_registerW_registerZ_upper27_lower10_double
	;;
	niorw $r43 = $r42r43.hi, $r40r41r42r43.t 	#Opcode-kv3_v1-NIORW_registerW_registerZ_registerY_simple
	;;
	niorw $r44 = $r44r45.lo, -64 	#Opcode-kv3_v1-NIORW_registerW_registerZ_signed10_simple
	;;
	niorw $r44r45r46r47.x = $r45, -8589934592 	#Opcode-kv3_v1-NIORW_registerW_registerZ_upper27_lower10_double
	;;
	nop 	#Opcode-kv3_v1-NOP_simple
	;;
	nord $r44r45.hi = $r44r45r46r47.y, 2305843009213693951 	#Opcode-kv3_v1-NORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	nord $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv3_v1-NORD_registerW_registerZ_registerY_simple
	;;
	nord $r47 = $r46r47.hi, -64 	#Opcode-kv3_v1-NORD_registerW_registerZ_signed10_simple
	;;
	nord $r44r45r46r47.t = $r48, -8589934592 	#Opcode-kv3_v1-NORD_registerW_registerZ_upper27_lower10_double
	;;
	norw $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv3_v1-NORW_registerW_registerZ_registerY_simple
	;;
	norw $r48r49.hi = $r48r49r50r51.y, -64 	#Opcode-kv3_v1-NORW_registerW_registerZ_signed10_simple
	;;
	norw $r50 = $r50r51.lo, -8589934592 	#Opcode-kv3_v1-NORW_registerW_registerZ_upper27_lower10_double
	;;
	notd $r48r49r50r51.z = $r51 	#Opcode-kv3_v1-NOTD_registerW_registerZ_simple
	;;
	notw $r50r51.hi = $r48r49r50r51.t 	#Opcode-kv3_v1-NOTW_registerW_registerZ_simple
	;;
	nxord $r52 = $r52r53.lo, 2305843009213693951 	#Opcode-kv3_v1-NXORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	nxord $r52r53r54r55.x = $r53, $r52r53.hi 	#Opcode-kv3_v1-NXORD_registerW_registerZ_registerY_simple
	;;
	nxord $r52r53r54r55.y = $r54, -64 	#Opcode-kv3_v1-NXORD_registerW_registerZ_signed10_simple
	;;
	nxord $r54r55.lo = $r52r53r54r55.z, -8589934592 	#Opcode-kv3_v1-NXORD_registerW_registerZ_upper27_lower10_double
	;;
	nxorw $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v1-NXORW_registerW_registerZ_registerY_simple
	;;
	nxorw $r56 = $r56r57.lo, -64 	#Opcode-kv3_v1-NXORW_registerW_registerZ_signed10_simple
	;;
	nxorw $r56r57r58r59.x = $r57, -8589934592 	#Opcode-kv3_v1-NXORW_registerW_registerZ_upper27_lower10_double
	;;
	ord $r56r57.hi = $r56r57r58r59.y, 2305843009213693951 	#Opcode-kv3_v1-ORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ord $r58 = $r58r59.lo, $r56r57r58r59.z 	#Opcode-kv3_v1-ORD_registerW_registerZ_registerY_simple
	;;
	ord $r59 = $r58r59.hi, -64 	#Opcode-kv3_v1-ORD_registerW_registerZ_signed10_simple
	;;
	ord $r56r57r58r59.t = $r60, -8589934592 	#Opcode-kv3_v1-ORD_registerW_registerZ_upper27_lower10_double
	;;
	ornd $r60r61.lo = $r60r61r62r63.x, 2305843009213693951 	#Opcode-kv3_v1-ORND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ornd $r61 = $r60r61.hi, $r60r61r62r63.y 	#Opcode-kv3_v1-ORND_registerW_registerZ_registerY_simple
	;;
	ornd $r62 = $r62r63.lo, -64 	#Opcode-kv3_v1-ORND_registerW_registerZ_signed10_simple
	;;
	ornd $r60r61r62r63.z = $r63, -8589934592 	#Opcode-kv3_v1-ORND_registerW_registerZ_upper27_lower10_double
	;;
	ornw $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv3_v1-ORNW_registerW_registerZ_registerY_simple
	;;
	ornw $r0r1.lo = $r0r1r2r3.x, -64 	#Opcode-kv3_v1-ORNW_registerW_registerZ_signed10_simple
	;;
	ornw $r1 = $r0r1.hi, -8589934592 	#Opcode-kv3_v1-ORNW_registerW_registerZ_upper27_lower10_double
	;;
	orw $r0r1r2r3.y = $r2, $r2r3.lo 	#Opcode-kv3_v1-ORW_registerW_registerZ_registerY_simple
	;;
	orw $r0r1r2r3.z = $r3, -64 	#Opcode-kv3_v1-ORW_registerW_registerZ_signed10_simple
	;;
	orw $r2r3.hi = $r0r1r2r3.t, -8589934592 	#Opcode-kv3_v1-ORW_registerW_registerZ_upper27_lower10_double
	;;
	pcrel $r4 = 2305843009213693951 	#Opcode-kv3_v1-PCREL_registerW_extend27_upper27_lower10_triple
	;;
	pcrel $r4r5.lo = -549755813888 	#Opcode-kv3_v1-PCREL_registerW_extend6_upper27_lower10_double
	;;
	pcrel $r4r5r6r7.x = -4096 	#Opcode-kv3_v1-PCREL_registerW_signed16_simple
	;;
	ret 	#Opcode-kv3_v1-RET_simple
	;;
	rfe 	#Opcode-kv3_v1-RFE_simple
	;;
	rolwps $r5 = $r4r5.hi, $r4r5r6r7.y 	#Opcode-kv3_v1-ROLWPS_registerW_registerZ_registerY_simple
	;;
	rolwps $r6 = $r6r7.lo, 7 	#Opcode-kv3_v1-ROLWPS_registerW_registerZ_unsigned6_simple
	;;
	rolw $r4r5r6r7.z = $r7, $r6r7.hi 	#Opcode-kv3_v1-ROLW_registerW_registerZ_registerY_simple
	;;
	rolw $r4r5r6r7.t = $r8, 7 	#Opcode-kv3_v1-ROLW_registerW_registerZ_unsigned6_simple
	;;
	rorwps $r8r9.lo = $r8r9r10r11.x, $r9 	#Opcode-kv3_v1-RORWPS_registerW_registerZ_registerY_simple
	;;
	rorwps $r8r9.hi = $r8r9r10r11.y, 7 	#Opcode-kv3_v1-RORWPS_registerW_registerZ_unsigned6_simple
	;;
	rorw $r10 = $r10r11.lo, $r8r9r10r11.z 	#Opcode-kv3_v1-RORW_registerW_registerZ_registerY_simple
	;;
	rorw $r11 = $r10r11.hi, 7 	#Opcode-kv3_v1-RORW_registerW_registerZ_unsigned6_simple
	;;
	rswap $r8r9r10r11.t = $mmc 	#Opcode-kv3_v1-RSWAP_registerZ_systemAlone_simple
	;;
	rswap $r12 = $s0 	#Opcode-kv3_v1-RSWAP_registerZ_systemS3_simple
	;;
	rswap $sp = $pc 	#Opcode-kv3_v1-RSWAP_registerZ_systemS4_simple
	;;
	satdh $r13 = $tp 	#Opcode-kv3_v1-SATDH_registerW_registerZ_simple
	;;
	satdw $r14 = $fp 	#Opcode-kv3_v1-SATDW_registerW_registerZ_simple
	;;
	satd $r15 = $rp, $r16 	#Opcode-kv3_v1-SATD_registerW_registerZ_registerY_simple
	;;
	satd $r16r17.lo = $r16r17r18r19.x, 7 	#Opcode-kv3_v1-SATD_registerW_registerZ_unsigned6_simple
	;;
	sbfcd.i $r17 = $r16r17.hi, $r16r17r18r19.y 	#Opcode-kv3_v1-SBFCD.I_registerW_registerZ_registerY_simple
	;;
	sbfcd.i $r18 = $r18r19.lo, 536870911 	#Opcode-kv3_v1-SBFCD.I_registerW_registerZ_upper27_lower5_double
	;;
	sbfcd $r16r17r18r19.z = $r19, $r18r19.hi 	#Opcode-kv3_v1-SBFCD_registerW_registerZ_registerY_simple
	;;
	sbfcd $r16r17r18r19.t = $r20, 536870911 	#Opcode-kv3_v1-SBFCD_registerW_registerZ_upper27_lower5_double
	;;
	sbfd $r20r21.lo = $r20r21r22r23.x, 2305843009213693951 	#Opcode-kv3_v1-SBFD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbfd $r21 = $r20r21.hi, $r20r21r22r23.y 	#Opcode-kv3_v1-SBFD_registerW_registerZ_registerY_simple
	;;
	sbfd $r22 = $r22r23.lo, -64 	#Opcode-kv3_v1-SBFD_registerW_registerZ_signed10_simple
	;;
	sbfd $r20r21r22r23.z = $r23, -8589934592 	#Opcode-kv3_v1-SBFD_registerW_registerZ_upper27_lower10_double
	;;
	sbfhcp.c $r22r23.hi = $r20r21r22r23.t, $r24 	#Opcode-kv3_v1-SBFHCP.C_registerW_registerZ_registerY_simple
	;;
	sbfhcp.c $r24r25.lo = $r24r25r26r27.x, 536870911.@ 	#Opcode-kv3_v1-SBFHCP.C_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfhq $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v1-SBFHQ_registerW_registerZ_registerY_simple
	;;
	sbfhq $r26 = $r26r27.lo, 536870911 	#Opcode-kv3_v1-SBFHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsd $r24r25r26r27.z = $r27, 2305843009213693951 	#Opcode-kv3_v1-SBFSD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbfsd $r26r27.hi = $r24r25r26r27.t, $r28 	#Opcode-kv3_v1-SBFSD_registerW_registerZ_registerY_simple
	;;
	sbfsd $r28r29.lo = $r28r29r30r31.x, -64 	#Opcode-kv3_v1-SBFSD_registerW_registerZ_signed10_simple
	;;
	sbfsd $r29 = $r28r29.hi, -8589934592 	#Opcode-kv3_v1-SBFSD_registerW_registerZ_upper27_lower10_double
	;;
	sbfshq $r28r29r30r31.y = $r30, $r30r31.lo 	#Opcode-kv3_v1-SBFSHQ_registerW_registerZ_registerY_simple
	;;
	sbfshq $r28r29r30r31.z = $r31, 536870911.@ 	#Opcode-kv3_v1-SBFSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfswp $r30r31.hi = $r28r29r30r31.t, $r32 	#Opcode-kv3_v1-SBFSWP_registerW_registerZ_registerY_simple
	;;
	sbfswp $r32r33.lo = $r32r33r34r35.x, 536870911 	#Opcode-kv3_v1-SBFSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsw $r33 = $r32r33.hi, $r32r33r34r35.y 	#Opcode-kv3_v1-SBFSW_registerW_registerZ_registerY_simple
	;;
	sbfsw $r34 = $r34r35.lo, 536870911 	#Opcode-kv3_v1-SBFSW_registerW_registerZ_upper27_lower5_double
	;;
	sbfuwd $r32r33r34r35.z = $r35, $r34r35.hi 	#Opcode-kv3_v1-SBFUWD_registerW_registerZ_registerY_simple
	;;
	sbfuwd $r32r33r34r35.t = $r36, 536870911.@ 	#Opcode-kv3_v1-SBFUWD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfwc.c $r36r37.lo = $r36r37r38r39.x, $r37 	#Opcode-kv3_v1-SBFWC.C_registerW_registerZ_registerY_simple
	;;
	sbfwc.c $r36r37.hi = $r36r37r38r39.y, 536870911 	#Opcode-kv3_v1-SBFWC.C_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfwd $r38 = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv3_v1-SBFWD_registerW_registerZ_registerY_simple
	;;
	sbfwd $r39 = $r38r39.hi, 536870911.@ 	#Opcode-kv3_v1-SBFWD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfwp $r36r37r38r39.t = $r40, $r40r41.lo 	#Opcode-kv3_v1-SBFWP_registerW_registerZ_registerY_simple
	;;
	sbfwp $r40r41r42r43.x = $r41, 536870911 	#Opcode-kv3_v1-SBFWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfw $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv3_v1-SBFW_registerW_registerZ_registerY_simple
	;;
	sbfw $r42r43.lo = $r40r41r42r43.z, -64 	#Opcode-kv3_v1-SBFW_registerW_registerZ_signed10_simple
	;;
	sbfw $r43 = $r42r43.hi, -8589934592 	#Opcode-kv3_v1-SBFW_registerW_registerZ_upper27_lower10_double
	;;
	sbfx16d $r40r41r42r43.t = $r44, $r44r45.lo 	#Opcode-kv3_v1-SBFX16D_registerW_registerZ_registerY_simple
	;;
	sbfx16d $r44r45r46r47.x = $r45, 536870911.@ 	#Opcode-kv3_v1-SBFX16D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16hq $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv3_v1-SBFX16HQ_registerW_registerZ_registerY_simple
	;;
	sbfx16hq $r46r47.lo = $r44r45r46r47.z, 536870911 	#Opcode-kv3_v1-SBFX16HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16uwd $r47 = $r46r47.hi, $r44r45r46r47.t 	#Opcode-kv3_v1-SBFX16UWD_registerW_registerZ_registerY_simple
	;;
	sbfx16uwd $r48 = $r48r49.lo, 536870911 	#Opcode-kv3_v1-SBFX16UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx16wd $r48r49r50r51.x = $r49, $r48r49.hi 	#Opcode-kv3_v1-SBFX16WD_registerW_registerZ_registerY_simple
	;;
	sbfx16wd $r48r49r50r51.y = $r50, 536870911 	#Opcode-kv3_v1-SBFX16WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx16wp $r50r51.lo = $r48r49r50r51.z, $r51 	#Opcode-kv3_v1-SBFX16WP_registerW_registerZ_registerY_simple
	;;
	sbfx16wp $r50r51.hi = $r48r49r50r51.t, 536870911.@ 	#Opcode-kv3_v1-SBFX16WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16w $r52 = $r52r53.lo, $r52r53r54r55.x 	#Opcode-kv3_v1-SBFX16W_registerW_registerZ_registerY_simple
	;;
	sbfx16w $r53 = $r52r53.hi, 536870911 	#Opcode-kv3_v1-SBFX16W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2d $r52r53r54r55.y = $r54, $r54r55.lo 	#Opcode-kv3_v1-SBFX2D_registerW_registerZ_registerY_simple
	;;
	sbfx2d $r52r53r54r55.z = $r55, 536870911 	#Opcode-kv3_v1-SBFX2D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2hq $r54r55.hi = $r52r53r54r55.t, $r56 	#Opcode-kv3_v1-SBFX2HQ_registerW_registerZ_registerY_simple
	;;
	sbfx2hq $r56r57.lo = $r56r57r58r59.x, 536870911.@ 	#Opcode-kv3_v1-SBFX2HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2uwd $r57 = $r56r57.hi, $r56r57r58r59.y 	#Opcode-kv3_v1-SBFX2UWD_registerW_registerZ_registerY_simple
	;;
	sbfx2uwd $r58 = $r58r59.lo, 536870911 	#Opcode-kv3_v1-SBFX2UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2wd $r56r57r58r59.z = $r59, $r58r59.hi 	#Opcode-kv3_v1-SBFX2WD_registerW_registerZ_registerY_simple
	;;
	sbfx2wd $r56r57r58r59.t = $r60, 536870911 	#Opcode-kv3_v1-SBFX2WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2wp $r60r61.lo = $r60r61r62r63.x, $r61 	#Opcode-kv3_v1-SBFX2WP_registerW_registerZ_registerY_simple
	;;
	sbfx2wp $r60r61.hi = $r60r61r62r63.y, 536870911 	#Opcode-kv3_v1-SBFX2WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2w $r62 = $r62r63.lo, $r60r61r62r63.z 	#Opcode-kv3_v1-SBFX2W_registerW_registerZ_registerY_simple
	;;
	sbfx2w $r63 = $r62r63.hi, 536870911 	#Opcode-kv3_v1-SBFX2W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4d $r60r61r62r63.t = $r0, $r0r1.lo 	#Opcode-kv3_v1-SBFX4D_registerW_registerZ_registerY_simple
	;;
	sbfx4d $r0r1r2r3.x = $r1, 536870911.@ 	#Opcode-kv3_v1-SBFX4D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4hq $r0r1.hi = $r0r1r2r3.y, $r2 	#Opcode-kv3_v1-SBFX4HQ_registerW_registerZ_registerY_simple
	;;
	sbfx4hq $r2r3.lo = $r0r1r2r3.z, 536870911 	#Opcode-kv3_v1-SBFX4HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4uwd $r3 = $r2r3.hi, $r0r1r2r3.t 	#Opcode-kv3_v1-SBFX4UWD_registerW_registerZ_registerY_simple
	;;
	sbfx4uwd $r4 = $r4r5.lo, 536870911 	#Opcode-kv3_v1-SBFX4UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4wd $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv3_v1-SBFX4WD_registerW_registerZ_registerY_simple
	;;
	sbfx4wd $r4r5r6r7.y = $r6, 536870911 	#Opcode-kv3_v1-SBFX4WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4wp $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v1-SBFX4WP_registerW_registerZ_registerY_simple
	;;
	sbfx4wp $r6r7.hi = $r4r5r6r7.t, 536870911.@ 	#Opcode-kv3_v1-SBFX4WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4w $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv3_v1-SBFX4W_registerW_registerZ_registerY_simple
	;;
	sbfx4w $r9 = $r8r9.hi, 536870911 	#Opcode-kv3_v1-SBFX4W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8d $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv3_v1-SBFX8D_registerW_registerZ_registerY_simple
	;;
	sbfx8d $r8r9r10r11.z = $r11, 536870911 	#Opcode-kv3_v1-SBFX8D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8hq $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv3_v1-SBFX8HQ_registerW_registerZ_registerY_simple
	;;
	sbfx8hq $sp = $r13, 536870911.@ 	#Opcode-kv3_v1-SBFX8HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8uwd $tp = $r14, $fp 	#Opcode-kv3_v1-SBFX8UWD_registerW_registerZ_registerY_simple
	;;
	sbfx8uwd $r15 = $rp, 536870911 	#Opcode-kv3_v1-SBFX8UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8wd $r16 = $r16r17.lo, $r16r17r18r19.x 	#Opcode-kv3_v1-SBFX8WD_registerW_registerZ_registerY_simple
	;;
	sbfx8wd $r17 = $r16r17.hi, 536870911 	#Opcode-kv3_v1-SBFX8WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8wp $r16r17r18r19.y = $r18, $r18r19.lo 	#Opcode-kv3_v1-SBFX8WP_registerW_registerZ_registerY_simple
	;;
	sbfx8wp $r16r17r18r19.z = $r19, 536870911 	#Opcode-kv3_v1-SBFX8WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8w $r18r19.hi = $r16r17r18r19.t, $r20 	#Opcode-kv3_v1-SBFX8W_registerW_registerZ_registerY_simple
	;;
	sbfx8w $r20r21.lo = $r20r21r22r23.x, 536870911 	#Opcode-kv3_v1-SBFX8W_registerW_registerZ_upper27_lower5_double
	;;
	sbmm8 $r21 = $r20r21.hi, 2305843009213693951 	#Opcode-kv3_v1-SBMM8_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbmm8 $r20r21r22r23.y = $r22, $r22r23.lo 	#Opcode-kv3_v1-SBMM8_registerW_registerZ_registerY_simple
	;;
	sbmm8 $r20r21r22r23.z = $r23, -64 	#Opcode-kv3_v1-SBMM8_registerW_registerZ_signed10_simple
	;;
	sbmm8 $r22r23.hi = $r20r21r22r23.t, -8589934592 	#Opcode-kv3_v1-SBMM8_registerW_registerZ_upper27_lower10_double
	;;
	sbmmt8 $r24 = $r24r25.lo, 2305843009213693951 	#Opcode-kv3_v1-SBMMT8_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbmmt8 $r24r25r26r27.x = $r25, $r24r25.hi 	#Opcode-kv3_v1-SBMMT8_registerW_registerZ_registerY_simple
	;;
	sbmmt8 $r24r25r26r27.y = $r26, -64 	#Opcode-kv3_v1-SBMMT8_registerW_registerZ_signed10_simple
	;;
	sbmmt8 $r26r27.lo = $r24r25r26r27.z, -8589934592 	#Opcode-kv3_v1-SBMMT8_registerW_registerZ_upper27_lower10_double
	;;
	sb.xs $r27[$r26r27.hi] = $r24r25r26r27.t 	#Opcode-kv3_v1-SB_doscale_registerY_registerZ_registerT_simple
	;;
	sb 2305843009213693951[$r28] = $r28r29.lo 	#Opcode-kv3_v1-SB_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sb.odd $r28r29r30r31.x? -1125899906842624[$r29] = $r28r29.hi 	#Opcode-kv3_v1-SB_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sb.even $r28r29r30r31.y? -8388608[$r30] = $r30r31.lo 	#Opcode-kv3_v1-SB_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sb.wnez $r28r29r30r31.z? [$r31] = $r30r31.hi 	#Opcode-kv3_v1-SB_lsucond_registerY_registerZ_registerT_simple
	;;
	sb -64[$r28r29r30r31.t] = $r32 	#Opcode-kv3_v1-SB_signed10_registerZ_registerT_simple
	;;
	sb -8589934592[$r32r33.lo] = $r32r33r34r35.x 	#Opcode-kv3_v1-SB_upper27_lower10_registerZ_registerT_double
	;;
	scall $r33 	#Opcode-kv3_v1-SCALL_registerZ_simple
	;;
	scall 511 	#Opcode-kv3_v1-SCALL_sysnumber_simple
	;;
	sd $r32r33.hi[$r32r33r34r35.y] = $r34 	#Opcode-kv3_v1-SD_doscale_registerY_registerZ_registerT_simple
	;;
	sd 2305843009213693951[$r34r35.lo] = $r32r33r34r35.z 	#Opcode-kv3_v1-SD_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sd.weqz $r35? -1125899906842624[$r34r35.hi] = $r32r33r34r35.t 	#Opcode-kv3_v1-SD_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sd.wltz $r36? -8388608[$r36r37.lo] = $r36r37r38r39.x 	#Opcode-kv3_v1-SD_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sd.wgez $r37? [$r36r37.hi] = $r36r37r38r39.y 	#Opcode-kv3_v1-SD_lsucond_registerY_registerZ_registerT_simple
	;;
	sd -64[$r38] = $r38r39.lo 	#Opcode-kv3_v1-SD_signed10_registerZ_registerT_simple
	;;
	sd -8589934592[$r36r37r38r39.z] = $r39 	#Opcode-kv3_v1-SD_upper27_lower10_registerZ_registerT_double
	;;
	set $s28 = $r38r39.hi 	#Opcode-kv3_v1-SET_systemAlone_registerZ_simple
	;;
	set $ra = $r36r37r38r39.t 	#Opcode-kv3_v1-SET_systemRA_registerZ_simple
	;;
	set $ps = $r40 	#Opcode-kv3_v1-SET_systemT3_registerZ_simple
	;;
	set $ps = $r40r41.lo 	#Opcode-kv3_v1-SET_systemT4_registerZ_simple
	;;
	sh.xs $r40r41r42r43.x[$r41] = $r40r41.hi 	#Opcode-kv3_v1-SH_doscale_registerY_registerZ_registerT_simple
	;;
	sh 2305843009213693951[$r40r41r42r43.y] = $r42 	#Opcode-kv3_v1-SH_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sh.wlez $r42r43.lo? -1125899906842624[$r40r41r42r43.z] = $r43 	#Opcode-kv3_v1-SH_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sh.wgtz $r42r43.hi? -8388608[$r40r41r42r43.t] = $r44 	#Opcode-kv3_v1-SH_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sh.dnez $r44r45.lo? [$r44r45r46r47.x] = $r45 	#Opcode-kv3_v1-SH_lsucond_registerY_registerZ_registerT_simple
	;;
	sh -64[$r44r45.hi] = $r44r45r46r47.y 	#Opcode-kv3_v1-SH_signed10_registerZ_registerT_simple
	;;
	sh -8589934592[$r46] = $r46r47.lo 	#Opcode-kv3_v1-SH_upper27_lower10_registerZ_registerT_double
	;;
	sleep 	#Opcode-kv3_v1-SLEEP_simple
	;;
	slld $r44r45r46r47.z = $r47, $r46r47.hi 	#Opcode-kv3_v1-SLLD_registerW_registerZ_registerY_simple
	;;
	slld $r44r45r46r47.t = $r48, 7 	#Opcode-kv3_v1-SLLD_registerW_registerZ_unsigned6_simple
	;;
	sllhqs $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv3_v1-SLLHQS_registerW_registerZ_registerY_simple
	;;
	sllhqs $r48r49.hi = $r48r49r50r51.y, 7 	#Opcode-kv3_v1-SLLHQS_registerW_registerZ_unsigned6_simple
	;;
	sllwps $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v1-SLLWPS_registerW_registerZ_registerY_simple
	;;
	sllwps $r51 = $r50r51.hi, 7 	#Opcode-kv3_v1-SLLWPS_registerW_registerZ_unsigned6_simple
	;;
	sllw $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv3_v1-SLLW_registerW_registerZ_registerY_simple
	;;
	sllw $r52r53r54r55.x = $r53, 7 	#Opcode-kv3_v1-SLLW_registerW_registerZ_unsigned6_simple
	;;
	slsd $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v1-SLSD_registerW_registerZ_registerY_simple
	;;
	slsd $r54r55.lo = $r52r53r54r55.z, 7 	#Opcode-kv3_v1-SLSD_registerW_registerZ_unsigned6_simple
	;;
	slshqs $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v1-SLSHQS_registerW_registerZ_registerY_simple
	;;
	slshqs $r56 = $r56r57.lo, 7 	#Opcode-kv3_v1-SLSHQS_registerW_registerZ_unsigned6_simple
	;;
	slswps $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv3_v1-SLSWPS_registerW_registerZ_registerY_simple
	;;
	slswps $r56r57r58r59.y = $r58, 7 	#Opcode-kv3_v1-SLSWPS_registerW_registerZ_unsigned6_simple
	;;
	slsw $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv3_v1-SLSW_registerW_registerZ_registerY_simple
	;;
	slsw $r58r59.hi = $r56r57r58r59.t, 7 	#Opcode-kv3_v1-SLSW_registerW_registerZ_unsigned6_simple
	;;
	so $r60[$r60r61.lo] = $r52r53r54r55 	#Opcode-kv3_v1-SO_doscale_registerY_registerZ_registerV_simple
	;;
	so 2305843009213693951[$r60r61r62r63.x] = $r56r57r58r59 	#Opcode-kv3_v1-SO_extend27_upper27_lower10_registerZ_registerV_triple
	;;
	so.deqz $r61? -1125899906842624[$r60r61.hi] = $r60r61r62r63 	#Opcode-kv3_v1-SO_lsucond_registerY_extend27_offset27_registerZ_registerV_triple
	;;
	so.dltz $r60r61r62r63.y? -8388608[$r62] = $r0r1r2r3 	#Opcode-kv3_v1-SO_lsucond_registerY_offset27_registerZ_registerV_double
	;;
	so.dgez $r62r63.lo? [$r60r61r62r63.z] = $r4r5r6r7 	#Opcode-kv3_v1-SO_lsucond_registerY_registerZ_registerV_simple
	;;
	so -64[$r63] = $r8r9r10r11 	#Opcode-kv3_v1-SO_signed10_registerZ_registerV_simple
	;;
	so -8589934592[$r62r63.hi] = $r12r13r14r15 	#Opcode-kv3_v1-SO_upper27_lower10_registerZ_registerV_double
	;;
	sq.xs $r60r61r62r63.t[$r0] = $r8r9 	#Opcode-kv3_v1-SQ_doscale_registerY_registerZ_registerU_simple
	;;
	sq 2305843009213693951[$r0r1.lo] = $r8r9r10r11.lo 	#Opcode-kv3_v1-SQ_extend27_upper27_lower10_registerZ_registerU_triple
	;;
	sq.dlez $r0r1r2r3.x? -1125899906842624[$r1] = $r10r11 	#Opcode-kv3_v1-SQ_lsucond_registerY_extend27_offset27_registerZ_registerU_triple
	;;
	sq.dgtz $r0r1.hi? -8388608[$r0r1r2r3.y] = $r8r9r10r11.hi 	#Opcode-kv3_v1-SQ_lsucond_registerY_offset27_registerZ_registerU_double
	;;
	sq.odd $r2? [$r2r3.lo] = $r12r13 	#Opcode-kv3_v1-SQ_lsucond_registerY_registerZ_registerU_simple
	;;
	sq -64[$r0r1r2r3.z] = $r12r13r14r15.lo 	#Opcode-kv3_v1-SQ_signed10_registerZ_registerU_simple
	;;
	sq -8589934592[$r3] = $r14r15 	#Opcode-kv3_v1-SQ_upper27_lower10_registerZ_registerU_double
	;;
	srad $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv3_v1-SRAD_registerW_registerZ_registerY_simple
	;;
	srad $r4r5.lo = $r4r5r6r7.x, 7 	#Opcode-kv3_v1-SRAD_registerW_registerZ_unsigned6_simple
	;;
	srahqs $r5 = $r4r5.hi, $r4r5r6r7.y 	#Opcode-kv3_v1-SRAHQS_registerW_registerZ_registerY_simple
	;;
	srahqs $r6 = $r6r7.lo, 7 	#Opcode-kv3_v1-SRAHQS_registerW_registerZ_unsigned6_simple
	;;
	srawps $r4r5r6r7.z = $r7, $r6r7.hi 	#Opcode-kv3_v1-SRAWPS_registerW_registerZ_registerY_simple
	;;
	srawps $r4r5r6r7.t = $r8, 7 	#Opcode-kv3_v1-SRAWPS_registerW_registerZ_unsigned6_simple
	;;
	sraw $r8r9.lo = $r8r9r10r11.x, $r9 	#Opcode-kv3_v1-SRAW_registerW_registerZ_registerY_simple
	;;
	sraw $r8r9.hi = $r8r9r10r11.y, 7 	#Opcode-kv3_v1-SRAW_registerW_registerZ_unsigned6_simple
	;;
	srld $r10 = $r10r11.lo, $r8r9r10r11.z 	#Opcode-kv3_v1-SRLD_registerW_registerZ_registerY_simple
	;;
	srld $r11 = $r10r11.hi, 7 	#Opcode-kv3_v1-SRLD_registerW_registerZ_unsigned6_simple
	;;
	srlhqs $r8r9r10r11.t = $r12, $sp 	#Opcode-kv3_v1-SRLHQS_registerW_registerZ_registerY_simple
	;;
	srlhqs $r13 = $tp, 7 	#Opcode-kv3_v1-SRLHQS_registerW_registerZ_unsigned6_simple
	;;
	srlwps $r14 = $fp, $r15 	#Opcode-kv3_v1-SRLWPS_registerW_registerZ_registerY_simple
	;;
	srlwps $rp = $r16, 7 	#Opcode-kv3_v1-SRLWPS_registerW_registerZ_unsigned6_simple
	;;
	srlw $r16r17.lo = $r16r17r18r19.x, $r17 	#Opcode-kv3_v1-SRLW_registerW_registerZ_registerY_simple
	;;
	srlw $r16r17.hi = $r16r17r18r19.y, 7 	#Opcode-kv3_v1-SRLW_registerW_registerZ_unsigned6_simple
	;;
	srsd $r18 = $r18r19.lo, $r16r17r18r19.z 	#Opcode-kv3_v1-SRSD_registerW_registerZ_registerY_simple
	;;
	srsd $r19 = $r18r19.hi, 7 	#Opcode-kv3_v1-SRSD_registerW_registerZ_unsigned6_simple
	;;
	srshqs $r16r17r18r19.t = $r20, $r20r21.lo 	#Opcode-kv3_v1-SRSHQS_registerW_registerZ_registerY_simple
	;;
	srshqs $r20r21r22r23.x = $r21, 7 	#Opcode-kv3_v1-SRSHQS_registerW_registerZ_unsigned6_simple
	;;
	srswps $r20r21.hi = $r20r21r22r23.y, $r22 	#Opcode-kv3_v1-SRSWPS_registerW_registerZ_registerY_simple
	;;
	srswps $r22r23.lo = $r20r21r22r23.z, 7 	#Opcode-kv3_v1-SRSWPS_registerW_registerZ_unsigned6_simple
	;;
	srsw $r23 = $r22r23.hi, $r20r21r22r23.t 	#Opcode-kv3_v1-SRSW_registerW_registerZ_registerY_simple
	;;
	srsw $r24 = $r24r25.lo, 7 	#Opcode-kv3_v1-SRSW_registerW_registerZ_unsigned6_simple
	;;
	stop 	#Opcode-kv3_v1-STOP_simple
	;;
	stsud $r24r25r26r27.x = $r25, $r24r25.hi 	#Opcode-kv3_v1-STSUD_registerW_registerZ_registerY_simple
	;;
	stsuw $r24r25r26r27.y = $r26, $r26r27.lo 	#Opcode-kv3_v1-STSUW_registerW_registerZ_registerY_simple
	;;
	sw $r24r25r26r27.z[$r27] = $r26r27.hi 	#Opcode-kv3_v1-SW_doscale_registerY_registerZ_registerT_simple
	;;
	sw 2305843009213693951[$r24r25r26r27.t] = $r28 	#Opcode-kv3_v1-SW_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sw.even $r28r29.lo? -1125899906842624[$r28r29r30r31.x] = $r29 	#Opcode-kv3_v1-SW_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sw.wnez $r28r29.hi? -8388608[$r28r29r30r31.y] = $r30 	#Opcode-kv3_v1-SW_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sw.weqz $r30r31.lo? [$r28r29r30r31.z] = $r31 	#Opcode-kv3_v1-SW_lsucond_registerY_registerZ_registerT_simple
	;;
	sw -64[$r30r31.hi] = $r28r29r30r31.t 	#Opcode-kv3_v1-SW_signed10_registerZ_registerT_simple
	;;
	sw -8589934592[$r32] = $r32r33.lo 	#Opcode-kv3_v1-SW_upper27_lower10_registerZ_registerT_double
	;;
	sxbd $r32r33r34r35.x = $r33 	#Opcode-kv3_v1-SXBD_registerW_registerZ_simple
	;;
	sxhd $r32r33.hi = $r32r33r34r35.y 	#Opcode-kv3_v1-SXHD_registerW_registerZ_simple
	;;
	sxlbhq $r34 = $r34r35.lo 	#Opcode-kv3_v1-SXLBHQ_registerW_registerZ_simple
	;;
	sxlhwp $r32r33r34r35.z = $r35 	#Opcode-kv3_v1-SXLHWP_registerW_registerZ_simple
	;;
	sxmbhq $r34r35.hi = $r32r33r34r35.t 	#Opcode-kv3_v1-SXMBHQ_registerW_registerZ_simple
	;;
	sxmhwp $r36 = $r36r37.lo 	#Opcode-kv3_v1-SXMHWP_registerW_registerZ_simple
	;;
	sxwd $r36r37r38r39.x = $r37 	#Opcode-kv3_v1-SXWD_registerW_registerZ_simple
	;;
	syncgroup $r36r37.hi 	#Opcode-kv3_v1-SYNCGROUP_registerZ_simple
	;;
	tlbdinval 	#Opcode-kv3_v1-TLBDINVAL_simple
	;;
	tlbiinval 	#Opcode-kv3_v1-TLBIINVAL_simple
	;;
	tlbprobe 	#Opcode-kv3_v1-TLBPROBE_simple
	;;
	tlbread 	#Opcode-kv3_v1-TLBREAD_simple
	;;
	tlbwrite 	#Opcode-kv3_v1-TLBWRITE_simple
	;;
	waitit $r36r37r38r39.y 	#Opcode-kv3_v1-WAITIT_registerZ_simple
	;;
	wfxl $ps, $r38 	#Opcode-kv3_v1-WFXL_systemAlone_registerZ_simple
	;;
	wfxl $pcr, $r38r39.lo 	#Opcode-kv3_v1-WFXL_systemT2_registerZ_simple
	;;
	wfxl $s1, $r36r37r38r39.z 	#Opcode-kv3_v1-WFXL_systemT4_registerZ_simple
	;;
	wfxm $s1, $r39 	#Opcode-kv3_v1-WFXM_systemAlone_registerZ_simple
	;;
	wfxm $s2, $r38r39.hi 	#Opcode-kv3_v1-WFXM_systemT2_registerZ_simple
	;;
	wfxm $pcr, $r36r37r38r39.t 	#Opcode-kv3_v1-WFXM_systemT4_registerZ_simple
	;;
	xcopyo $a13 = $a4a5a6a7.x 	#Opcode-kv3_v1-XCOPYO_registerA_registerBe_simple
	;;
	xcopyo $a12a13.hi = $a4a5a6a7.y 	#Opcode-kv3_v1-XCOPYO_registerA_registerBo_simple
	;;
	xlo.u.xs $a12a13a14a15.y = $r40[$r40r41.lo] 	#Opcode-kv3_v1-XLO_speculate_doscale_registerA_registerY_registerZ_simple
	;;
	xlo.us.wltz.q0 $r40r41r42r43.x? $a56a57a58a59 = -1125899906842624[$r41] 	#Opcode-kv3_v1-XLO_speculate_lsucond_qindex_registerY_registerAq_extend27_offset27_registerZ_triple
	;;
	xlo.u.wgez.q1 $r40r41.hi? $a60a61a62a63 = -8388608[$r40r41r42r43.y] 	#Opcode-kv3_v1-XLO_speculate_lsucond_qindex_registerY_registerAq_offset27_registerZ_double
	;;
	xlo.us.wlez.q2 $r42? $a0a1a2a3 = [$r42r43.lo] 	#Opcode-kv3_v1-XLO_speculate_lsucond_qindex_registerY_registerAq_registerZ_simple
	;;
	xlo.u.wgtz $r40r41r42r43.z? $a14 = -1125899906842624[$r43] 	#Opcode-kv3_v1-XLO_speculate_lsucond_registerY_registerA_extend27_offset27_registerZ_triple
	;;
	xlo.us.dnez $r42r43.hi? $a14a15.lo = -8388608[$r40r41r42r43.t] 	#Opcode-kv3_v1-XLO_speculate_lsucond_registerY_registerA_offset27_registerZ_double
	;;
	xlo.u.deqz $r44? $a12a13a14a15.z = [$r44r45.lo] 	#Opcode-kv3_v1-XLO_speculate_lsucond_registerY_registerA_registerZ_simple
	;;
	xlo.us.q3 $a4a5a6a7 = $r44r45r46r47.x[$r45] 	#Opcode-kv3_v1-XLO_speculate_qindex_doscale_registerAq_registerY_registerZ_simple
	;;
	xlo.u.q0 $a8a9a10a11 = 2305843009213693951[$r44r45.hi] 	#Opcode-kv3_v1-XLO_speculate_qindex_registerAq_extend27_upper27_lower10_registerZ_triple
	;;
	xlo.us.q1 $a12a13a14a15 = -64[$r44r45r46r47.y] 	#Opcode-kv3_v1-XLO_speculate_qindex_registerAq_signed10_registerZ_simple
	;;
	xlo.u.q2 $a16a17a18a19 = -8589934592[$r46] 	#Opcode-kv3_v1-XLO_speculate_qindex_registerAq_upper27_lower10_registerZ_double
	;;
	xlo.us $a15 = 2305843009213693951[$r46r47.lo] 	#Opcode-kv3_v1-XLO_speculate_registerA_extend27_upper27_lower10_registerZ_triple
	;;
	xlo.u $a14a15.hi = -64[$r44r45r46r47.z] 	#Opcode-kv3_v1-XLO_speculate_registerA_signed10_registerZ_simple
	;;
	xlo.us $a12a13a14a15.t = -8589934592[$r47] 	#Opcode-kv3_v1-XLO_speculate_registerA_upper27_lower10_registerZ_double
	;;
	xmma484bw $a4a5a6a7.lo = $a6a7, $a16, $a16a17.lo 	#Opcode-kv3_v1-XMMA484BW_registerAp_registerBp_registerC_registerD_simple
	;;
	xmma484subw $a4a5a6a7.hi = $a8a9, $a16a17a18a19.x, $a17 	#Opcode-kv3_v1-XMMA484SUBW_registerAp_registerBp_registerC_registerD_simple
	;;
	xmma484ubw $a8a9a10a11.lo = $a10a11, $a16a17.hi, $a16a17a18a19.y 	#Opcode-kv3_v1-XMMA484UBW_registerAp_registerBp_registerC_registerD_simple
	;;
	xmma484usbw $a8a9a10a11.hi = $a12a13, $a18, $a18a19.lo 	#Opcode-kv3_v1-XMMA484USBW_registerAp_registerBp_registerC_registerD_simple
	;;
	xmovefo $r16r17r18r19 = $a6 	#Opcode-kv3_v1-XMOVEFO_registerN_registerBe_simple
	;;
	xmovefo $r20r21r22r23 = $a7 	#Opcode-kv3_v1-XMOVEFO_registerN_registerBo_simple
	;;
	xmovetq $a1_lo = $r46r47.hi, $r44r45r46r47.t 	#Opcode-kv3_v1-XMOVETQ_registerAE_registerZ_registerY_simple
	;;
	xmovetq $a1_hi = $r48, $r48r49.lo 	#Opcode-kv3_v1-XMOVETQ_registerAO_registerZ_registerY_simple
	;;
	xmt44d $a20a21a22a23 = $a24a25a26a27 	#Opcode-kv3_v1-XMT44D_registerAq_registerBq_simple
	;;
	xord $r48r49r50r51.x = $r49, 2305843009213693951 	#Opcode-kv3_v1-XORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	xord $r48r49.hi = $r48r49r50r51.y, $r50 	#Opcode-kv3_v1-XORD_registerW_registerZ_registerY_simple
	;;
	xord $r50r51.lo = $r48r49r50r51.z, -64 	#Opcode-kv3_v1-XORD_registerW_registerZ_signed10_simple
	;;
	xord $r51 = $r50r51.hi, -8589934592 	#Opcode-kv3_v1-XORD_registerW_registerZ_upper27_lower10_double
	;;
	xorw $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv3_v1-XORW_registerW_registerZ_registerY_simple
	;;
	xorw $r52r53r54r55.x = $r53, -64 	#Opcode-kv3_v1-XORW_registerW_registerZ_signed10_simple
	;;
	xorw $r52r53.hi = $r52r53r54r55.y, -8589934592 	#Opcode-kv3_v1-XORW_registerW_registerZ_upper27_lower10_double
	;;
	xso.xs $r54[$r54r55.lo] = $a16a17a18a19.z 	#Opcode-kv3_v1-XSO_doscale_registerY_registerZ_registerE_simple
	;;
	xso 2305843009213693951[$r52r53r54r55.z] = $a19 	#Opcode-kv3_v1-XSO_extend27_upper27_lower10_registerZ_registerE_triple
	;;
	xso.dltz $r55? -1125899906842624[$r54r55.hi] = $a18a19.hi 	#Opcode-kv3_v1-XSO_lsucond_registerY_extend27_offset27_registerZ_registerE_triple
	;;
	xso.dgez $r52r53r54r55.t? -8388608[$r56] = $a16a17a18a19.t 	#Opcode-kv3_v1-XSO_lsucond_registerY_offset27_registerZ_registerE_double
	;;
	xso.dlez $r56r57.lo? [$r56r57r58r59.x] = $a20 	#Opcode-kv3_v1-XSO_lsucond_registerY_registerZ_registerE_simple
	;;
	xso -64[$r57] = $a20a21.lo 	#Opcode-kv3_v1-XSO_signed10_registerZ_registerE_simple
	;;
	xso -8589934592[$r56r57.hi] = $a20a21a22a23.x 	#Opcode-kv3_v1-XSO_upper27_lower10_registerZ_registerE_double
	;;
	zxbd $r56r57r58r59.y = $r58 	#Opcode-kv3_v1-ZXBD_registerW_registerZ_simple
	;;
	zxhd $r58r59.lo = $r56r57r58r59.z 	#Opcode-kv3_v1-ZXHD_registerW_registerZ_simple
	;;
	zxwd $r59 = $r58r59.hi 	#Opcode-kv3_v1-ZXWD_registerW_registerZ_simple
	;;
	.endp	main
	.section .text

