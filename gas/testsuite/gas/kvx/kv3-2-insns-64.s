	##-----------------------------------------------------------
	## Generating test.s from MDS
	## (c) Copyright 2010-2018 Kalray SA.
	##-----------------------------------------------------------

#	Option: ''

##	target-core:	kv3-2

	.section .text

	.align 8
	.proc	main
	.global	main
main:
	abdbo $r0 = $r0r1.lo, $r0r1r2r3.x 	#Opcode-kv3_v2-ABDBO_registerW_registerZ_registerY_simple
	;;
	abdbo $r1 = $r0r1.hi, 536870911 	#Opcode-kv3_v2-ABDBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdd $r0r1r2r3.y = $r2, 2305843009213693951 	#Opcode-kv3_v2-ABDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	abdd $r2r3.lo = $r0r1r2r3.z, $r3 	#Opcode-kv3_v2-ABDD_registerW_registerZ_registerY_simple
	;;
	abdd $r2r3.hi = $r0r1r2r3.t, -64 	#Opcode-kv3_v2-ABDD_registerW_registerZ_signed10_simple
	;;
	abdd $r4 = $r4r5.lo, -8589934592 	#Opcode-kv3_v2-ABDD_registerW_registerZ_upper27_lower10_double
	;;
	abdhq $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv3_v2-ABDHQ_registerW_registerZ_registerY_simple
	;;
	abdhq $r4r5r6r7.y = $r6, 536870911.@ 	#Opcode-kv3_v2-ABDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdsbo $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v2-ABDSBO_registerW_registerZ_registerY_simple
	;;
	abdsbo $r6r7.hi = $r4r5r6r7.t, 536870911 	#Opcode-kv3_v2-ABDSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdsd $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv3_v2-ABDSD_registerW_registerZ_registerY_simple
	;;
	abdsd $r9 = $r8r9.hi, 536870911.@ 	#Opcode-kv3_v2-ABDSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdshq $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv3_v2-ABDSHQ_registerW_registerZ_registerY_simple
	;;
	abdshq $r8r9r10r11.z = $r11, 536870911 	#Opcode-kv3_v2-ABDSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdswp $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv3_v2-ABDSWP_registerW_registerZ_registerY_simple
	;;
	abdswp $sp = $r13, 536870911.@ 	#Opcode-kv3_v2-ABDSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdsw $tp = $r14, $fp 	#Opcode-kv3_v2-ABDSW_registerW_registerZ_registerY_simple
	;;
	abdsw $r15 = $rp, 536870911 	#Opcode-kv3_v2-ABDSW_registerW_registerZ_upper27_lower5_double
	;;
	abdubo $r16 = $r16r17.lo, $r16r17r18r19.x 	#Opcode-kv3_v2-ABDUBO_registerW_registerZ_registerY_simple
	;;
	abdubo $r17 = $r16r17.hi, 536870911 	#Opcode-kv3_v2-ABDUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdud $r16r17r18r19.y = $r18, $r18r19.lo 	#Opcode-kv3_v2-ABDUD_registerW_registerZ_registerY_simple
	;;
	abdud $r16r17r18r19.z = $r19, 536870911.@ 	#Opcode-kv3_v2-ABDUD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abduhq $r18r19.hi = $r16r17r18r19.t, $r20 	#Opcode-kv3_v2-ABDUHQ_registerW_registerZ_registerY_simple
	;;
	abduhq $r20r21.lo = $r20r21r22r23.x, 536870911 	#Opcode-kv3_v2-ABDUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abduwp $r21 = $r20r21.hi, $r20r21r22r23.y 	#Opcode-kv3_v2-ABDUWP_registerW_registerZ_registerY_simple
	;;
	abduwp $r22 = $r22r23.lo, 536870911.@ 	#Opcode-kv3_v2-ABDUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abduw $r20r21r22r23.z = $r23, $r22r23.hi 	#Opcode-kv3_v2-ABDUW_registerW_registerZ_registerY_simple
	;;
	abduw $r20r21r22r23.t = $r24, 536870911 	#Opcode-kv3_v2-ABDUW_registerW_registerZ_upper27_lower5_double
	;;
	abdwp $r24r25.lo = $r24r25r26r27.x, $r25 	#Opcode-kv3_v2-ABDWP_registerW_registerZ_registerY_simple
	;;
	abdwp $r24r25.hi = $r24r25r26r27.y, 536870911 	#Opcode-kv3_v2-ABDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdw $r26 = $r26r27.lo, $r24r25r26r27.z 	#Opcode-kv3_v2-ABDW_registerW_registerZ_registerY_simple
	;;
	abdw $r27 = $r26r27.hi, -64 	#Opcode-kv3_v2-ABDW_registerW_registerZ_signed10_simple
	;;
	abdw $r24r25r26r27.t = $r28, -8589934592 	#Opcode-kv3_v2-ABDW_registerW_registerZ_upper27_lower10_double
	;;
	absbo $r28r29.lo = $r28r29r30r31.x 	#Opcode-kv3_v2-ABSBO_registerW_registerZ_double
	;;
	absd $r29 = $r28r29.hi 	#Opcode-kv3_v2-ABSD_registerW_registerZ_simple
	;;
	abshq $r28r29r30r31.y = $r30 	#Opcode-kv3_v2-ABSHQ_registerW_registerZ_double
	;;
	abssbo $r30r31.lo = $r28r29r30r31.z 	#Opcode-kv3_v2-ABSSBO_registerW_registerZ_double
	;;
	abssd $r31 = $r30r31.hi 	#Opcode-kv3_v2-ABSSD_registerW_registerZ_double
	;;
	absshq $r28r29r30r31.t = $r32 	#Opcode-kv3_v2-ABSSHQ_registerW_registerZ_double
	;;
	absswp $r32r33.lo = $r32r33r34r35.x 	#Opcode-kv3_v2-ABSSWP_registerW_registerZ_double
	;;
	abssw $r33 = $r32r33.hi 	#Opcode-kv3_v2-ABSSW_registerW_registerZ_double
	;;
	abswp $r32r33r34r35.y = $r34 	#Opcode-kv3_v2-ABSWP_registerW_registerZ_double
	;;
	absw $r34r35.lo = $r32r33r34r35.z 	#Opcode-kv3_v2-ABSW_registerW_registerZ_simple
	;;
	acswapd.v $r35, -1125899906842624[$r34r35.hi] = $r0r1 	#Opcode-kv3_v2-ACSWAPD_boolcas_coherency_registerW_extend27_offset27_registerZ_registerO_triple
	;;
	acswapd.g $r32r33r34r35.t, -8388608[$r36] = $r0r1r2r3.lo 	#Opcode-kv3_v2-ACSWAPD_boolcas_coherency_registerW_offset27_registerZ_registerO_double
	;;
	acswapd.v.s $r36r37.lo, [$r36r37r38r39.x] = $r2r3 	#Opcode-kv3_v2-ACSWAPD_boolcas_coherency_registerW_registerZ_registerO_simple
	;;
	acswapq $r0r1r2r3.hi, -1125899906842624[$r37] = $r0r1r2r3 	#Opcode-kv3_v2-ACSWAPQ_boolcas_coherency_registerM_extend27_offset27_registerZ_registerQ_triple
	;;
	acswapq.v.g $r4r5, -8388608[$r36r37.hi] = $r4r5r6r7 	#Opcode-kv3_v2-ACSWAPQ_boolcas_coherency_registerM_offset27_registerZ_registerQ_double
	;;
	acswapq.s $r4r5r6r7.lo, [$r36r37r38r39.y] = $r8r9r10r11 	#Opcode-kv3_v2-ACSWAPQ_boolcas_coherency_registerM_registerZ_registerQ_simple
	;;
	acswapw.v $r38, -1125899906842624[$r38r39.lo] = $r6r7 	#Opcode-kv3_v2-ACSWAPW_boolcas_coherency_registerW_extend27_offset27_registerZ_registerO_triple
	;;
	acswapw.g $r36r37r38r39.z, -8388608[$r39] = $r4r5r6r7.hi 	#Opcode-kv3_v2-ACSWAPW_boolcas_coherency_registerW_offset27_registerZ_registerO_double
	;;
	acswapw.v.s $r38r39.hi, [$r36r37r38r39.t] = $r8r9 	#Opcode-kv3_v2-ACSWAPW_boolcas_coherency_registerW_registerZ_registerO_simple
	;;
	addbo $r40 = $r40r41.lo, $r40r41r42r43.x 	#Opcode-kv3_v2-ADDBO_registerW_registerZ_registerY_simple
	;;
	addbo $r41 = $r40r41.hi, 536870911.@ 	#Opcode-kv3_v2-ADDBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addcd.i $r40r41r42r43.y = $r42, $r42r43.lo 	#Opcode-kv3_v2-ADDCD.I_registerW_registerZ_registerY_simple
	;;
	addcd.i $r40r41r42r43.z = $r43, 536870911 	#Opcode-kv3_v2-ADDCD.I_registerW_registerZ_upper27_lower5_double
	;;
	addcd $r42r43.hi = $r40r41r42r43.t, $r44 	#Opcode-kv3_v2-ADDCD_registerW_registerZ_registerY_simple
	;;
	addcd $r44r45.lo = $r44r45r46r47.x, 536870911 	#Opcode-kv3_v2-ADDCD_registerW_registerZ_upper27_lower5_double
	;;
	addd $r45 = $r44r45.hi, 2305843009213693951 	#Opcode-kv3_v2-ADDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	addd $r44r45r46r47.y = $r46, $r46r47.lo 	#Opcode-kv3_v2-ADDD_registerW_registerZ_registerY_simple
	;;
	addd $r44r45r46r47.z = $r47, -64 	#Opcode-kv3_v2-ADDD_registerW_registerZ_signed10_simple
	;;
	addd $r46r47.hi = $r44r45r46r47.t, -8589934592 	#Opcode-kv3_v2-ADDD_registerW_registerZ_upper27_lower10_double
	;;
	addhq $r48 = $r48r49.lo, $r48r49r50r51.x 	#Opcode-kv3_v2-ADDHQ_registerW_registerZ_registerY_simple
	;;
	addhq $r49 = $r48r49.hi, 536870911 	#Opcode-kv3_v2-ADDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addrbod $r48r49r50r51.y = $r50 	#Opcode-kv3_v2-ADDRBOD_registerW_registerZ_simple
	;;
	addrhqd $r50r51.lo = $r48r49r50r51.z 	#Opcode-kv3_v2-ADDRHQD_registerW_registerZ_simple
	;;
	addrwpd $r51 = $r50r51.hi 	#Opcode-kv3_v2-ADDRWPD_registerW_registerZ_simple
	;;
	addsbo $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv3_v2-ADDSBO_registerW_registerZ_registerY_simple
	;;
	addsbo $r52r53r54r55.x = $r53, 536870911.@ 	#Opcode-kv3_v2-ADDSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addsd $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v2-ADDSD_registerW_registerZ_registerY_simple
	;;
	addsd $r54r55.lo = $r52r53r54r55.z, 536870911 	#Opcode-kv3_v2-ADDSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addshq $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v2-ADDSHQ_registerW_registerZ_registerY_simple
	;;
	addshq $r56 = $r56r57.lo, 536870911.@ 	#Opcode-kv3_v2-ADDSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addswp $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv3_v2-ADDSWP_registerW_registerZ_registerY_simple
	;;
	addswp $r56r57r58r59.y = $r58, 536870911 	#Opcode-kv3_v2-ADDSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addsw $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv3_v2-ADDSW_registerW_registerZ_registerY_simple
	;;
	addsw $r58r59.hi = $r56r57r58r59.t, 536870911 	#Opcode-kv3_v2-ADDSW_registerW_registerZ_upper27_lower5_double
	;;
	addurbod $r60 = $r60r61.lo 	#Opcode-kv3_v2-ADDURBOD_registerW_registerZ_simple
	;;
	addurhqd $r60r61r62r63.x = $r61 	#Opcode-kv3_v2-ADDURHQD_registerW_registerZ_simple
	;;
	addurwpd $r60r61.hi = $r60r61r62r63.y 	#Opcode-kv3_v2-ADDURWPD_registerW_registerZ_simple
	;;
	addusbo $r62 = $r62r63.lo, $r60r61r62r63.z 	#Opcode-kv3_v2-ADDUSBO_registerW_registerZ_registerY_simple
	;;
	addusbo $r63 = $r62r63.hi, 536870911.@ 	#Opcode-kv3_v2-ADDUSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addusd $r60r61r62r63.t = $r0, $r0r1.lo 	#Opcode-kv3_v2-ADDUSD_registerW_registerZ_registerY_simple
	;;
	addusd $r0r1r2r3.x = $r1, 536870911 	#Opcode-kv3_v2-ADDUSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addushq $r0r1.hi = $r0r1r2r3.y, $r2 	#Opcode-kv3_v2-ADDUSHQ_registerW_registerZ_registerY_simple
	;;
	addushq $r2r3.lo = $r0r1r2r3.z, 536870911.@ 	#Opcode-kv3_v2-ADDUSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	adduswp $r3 = $r2r3.hi, $r0r1r2r3.t 	#Opcode-kv3_v2-ADDUSWP_registerW_registerZ_registerY_simple
	;;
	adduswp $r4 = $r4r5.lo, 536870911 	#Opcode-kv3_v2-ADDUSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addusw $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv3_v2-ADDUSW_registerW_registerZ_registerY_simple
	;;
	addusw $r4r5r6r7.y = $r6, 536870911 	#Opcode-kv3_v2-ADDUSW_registerW_registerZ_upper27_lower5_double
	;;
	adduwd $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v2-ADDUWD_registerW_registerZ_registerY_simple
	;;
	adduwd $r6r7.hi = $r4r5r6r7.t, 536870911 	#Opcode-kv3_v2-ADDUWD_registerW_registerZ_upper27_lower5_double
	;;
	addwd $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv3_v2-ADDWD_registerW_registerZ_registerY_simple
	;;
	addwd $r9 = $r8r9.hi, 536870911 	#Opcode-kv3_v2-ADDWD_registerW_registerZ_upper27_lower5_double
	;;
	addwp $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv3_v2-ADDWP_registerW_registerZ_registerY_simple
	;;
	addwp $r8r9r10r11.z = $r11, 536870911.@ 	#Opcode-kv3_v2-ADDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addw $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv3_v2-ADDW_registerW_registerZ_registerY_simple
	;;
	addw $sp = $r13, -64 	#Opcode-kv3_v2-ADDW_registerW_registerZ_signed10_simple
	;;
	addw $tp = $r14, -8589934592 	#Opcode-kv3_v2-ADDW_registerW_registerZ_upper27_lower10_double
	;;
	addx16bo $fp = $r15, $rp 	#Opcode-kv3_v2-ADDX16BO_registerW_registerZ_registerY_simple
	;;
	addx16bo $r16 = $r16r17.lo, 536870911 	#Opcode-kv3_v2-ADDX16BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16d $r16r17r18r19.x = $r17, $r16r17.hi 	#Opcode-kv3_v2-ADDX16D_registerW_registerZ_registerY_simple
	;;
	addx16d $r16r17r18r19.y = $r18, 536870911.@ 	#Opcode-kv3_v2-ADDX16D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16hq $r18r19.lo = $r16r17r18r19.z, $r19 	#Opcode-kv3_v2-ADDX16HQ_registerW_registerZ_registerY_simple
	;;
	addx16hq $r18r19.hi = $r16r17r18r19.t, 536870911 	#Opcode-kv3_v2-ADDX16HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16uwd $r20 = $r20r21.lo, $r20r21r22r23.x 	#Opcode-kv3_v2-ADDX16UWD_registerW_registerZ_registerY_simple
	;;
	addx16uwd $r21 = $r20r21.hi, 536870911 	#Opcode-kv3_v2-ADDX16UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx16wd $r20r21r22r23.y = $r22, $r22r23.lo 	#Opcode-kv3_v2-ADDX16WD_registerW_registerZ_registerY_simple
	;;
	addx16wd $r20r21r22r23.z = $r23, 536870911 	#Opcode-kv3_v2-ADDX16WD_registerW_registerZ_upper27_lower5_double
	;;
	addx16wp $r22r23.hi = $r20r21r22r23.t, $r24 	#Opcode-kv3_v2-ADDX16WP_registerW_registerZ_registerY_simple
	;;
	addx16wp $r24r25.lo = $r24r25r26r27.x, 536870911.@ 	#Opcode-kv3_v2-ADDX16WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16w $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v2-ADDX16W_registerW_registerZ_registerY_simple
	;;
	addx16w $r26 = $r26r27.lo, 536870911 	#Opcode-kv3_v2-ADDX16W_registerW_registerZ_upper27_lower5_double
	;;
	addx2bo $r24r25r26r27.z = $r27, $r26r27.hi 	#Opcode-kv3_v2-ADDX2BO_registerW_registerZ_registerY_simple
	;;
	addx2bo $r24r25r26r27.t = $r28, 536870911 	#Opcode-kv3_v2-ADDX2BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2d $r28r29.lo = $r28r29r30r31.x, $r29 	#Opcode-kv3_v2-ADDX2D_registerW_registerZ_registerY_simple
	;;
	addx2d $r28r29.hi = $r28r29r30r31.y, 536870911.@ 	#Opcode-kv3_v2-ADDX2D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2hq $r30 = $r30r31.lo, $r28r29r30r31.z 	#Opcode-kv3_v2-ADDX2HQ_registerW_registerZ_registerY_simple
	;;
	addx2hq $r31 = $r30r31.hi, 536870911 	#Opcode-kv3_v2-ADDX2HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2uwd $r28r29r30r31.t = $r32, $r32r33.lo 	#Opcode-kv3_v2-ADDX2UWD_registerW_registerZ_registerY_simple
	;;
	addx2uwd $r32r33r34r35.x = $r33, 536870911 	#Opcode-kv3_v2-ADDX2UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx2wd $r32r33.hi = $r32r33r34r35.y, $r34 	#Opcode-kv3_v2-ADDX2WD_registerW_registerZ_registerY_simple
	;;
	addx2wd $r34r35.lo = $r32r33r34r35.z, 536870911 	#Opcode-kv3_v2-ADDX2WD_registerW_registerZ_upper27_lower5_double
	;;
	addx2wp $r35 = $r34r35.hi, $r32r33r34r35.t 	#Opcode-kv3_v2-ADDX2WP_registerW_registerZ_registerY_simple
	;;
	addx2wp $r36 = $r36r37.lo, 536870911.@ 	#Opcode-kv3_v2-ADDX2WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2w $r36r37r38r39.x = $r37, $r36r37.hi 	#Opcode-kv3_v2-ADDX2W_registerW_registerZ_registerY_simple
	;;
	addx2w $r36r37r38r39.y = $r38, 536870911 	#Opcode-kv3_v2-ADDX2W_registerW_registerZ_upper27_lower5_double
	;;
	addx32d $r38r39.lo = $r36r37r38r39.z, $r39 	#Opcode-kv3_v2-ADDX32D_registerW_registerZ_registerY_simple
	;;
	addx32d $r38r39.hi = $r36r37r38r39.t, 536870911 	#Opcode-kv3_v2-ADDX32D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx32uwd $r40 = $r40r41.lo, $r40r41r42r43.x 	#Opcode-kv3_v2-ADDX32UWD_registerW_registerZ_registerY_simple
	;;
	addx32uwd $r41 = $r40r41.hi, 536870911 	#Opcode-kv3_v2-ADDX32UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx32wd $r40r41r42r43.y = $r42, $r42r43.lo 	#Opcode-kv3_v2-ADDX32WD_registerW_registerZ_registerY_simple
	;;
	addx32wd $r40r41r42r43.z = $r43, 536870911 	#Opcode-kv3_v2-ADDX32WD_registerW_registerZ_upper27_lower5_double
	;;
	addx32w $r42r43.hi = $r40r41r42r43.t, $r44 	#Opcode-kv3_v2-ADDX32W_registerW_registerZ_registerY_simple
	;;
	addx32w $r44r45.lo = $r44r45r46r47.x, 536870911 	#Opcode-kv3_v2-ADDX32W_registerW_registerZ_upper27_lower5_double
	;;
	addx4bo $r45 = $r44r45.hi, $r44r45r46r47.y 	#Opcode-kv3_v2-ADDX4BO_registerW_registerZ_registerY_simple
	;;
	addx4bo $r46 = $r46r47.lo, 536870911.@ 	#Opcode-kv3_v2-ADDX4BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4d $r44r45r46r47.z = $r47, $r46r47.hi 	#Opcode-kv3_v2-ADDX4D_registerW_registerZ_registerY_simple
	;;
	addx4d $r44r45r46r47.t = $r48, 536870911 	#Opcode-kv3_v2-ADDX4D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4hq $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv3_v2-ADDX4HQ_registerW_registerZ_registerY_simple
	;;
	addx4hq $r48r49.hi = $r48r49r50r51.y, 536870911.@ 	#Opcode-kv3_v2-ADDX4HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4uwd $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v2-ADDX4UWD_registerW_registerZ_registerY_simple
	;;
	addx4uwd $r51 = $r50r51.hi, 536870911 	#Opcode-kv3_v2-ADDX4UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx4wd $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv3_v2-ADDX4WD_registerW_registerZ_registerY_simple
	;;
	addx4wd $r52r53r54r55.x = $r53, 536870911 	#Opcode-kv3_v2-ADDX4WD_registerW_registerZ_upper27_lower5_double
	;;
	addx4wp $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v2-ADDX4WP_registerW_registerZ_registerY_simple
	;;
	addx4wp $r54r55.lo = $r52r53r54r55.z, 536870911 	#Opcode-kv3_v2-ADDX4WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4w $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v2-ADDX4W_registerW_registerZ_registerY_simple
	;;
	addx4w $r56 = $r56r57.lo, 536870911 	#Opcode-kv3_v2-ADDX4W_registerW_registerZ_upper27_lower5_double
	;;
	addx64d $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv3_v2-ADDX64D_registerW_registerZ_registerY_simple
	;;
	addx64d $r56r57r58r59.y = $r58, 536870911.@ 	#Opcode-kv3_v2-ADDX64D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx64uwd $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv3_v2-ADDX64UWD_registerW_registerZ_registerY_simple
	;;
	addx64uwd $r58r59.hi = $r56r57r58r59.t, 536870911 	#Opcode-kv3_v2-ADDX64UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx64wd $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv3_v2-ADDX64WD_registerW_registerZ_registerY_simple
	;;
	addx64wd $r61 = $r60r61.hi, 536870911 	#Opcode-kv3_v2-ADDX64WD_registerW_registerZ_upper27_lower5_double
	;;
	addx64w $r60r61r62r63.y = $r62, $r62r63.lo 	#Opcode-kv3_v2-ADDX64W_registerW_registerZ_registerY_simple
	;;
	addx64w $r60r61r62r63.z = $r63, 536870911 	#Opcode-kv3_v2-ADDX64W_registerW_registerZ_upper27_lower5_double
	;;
	addx8bo $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv3_v2-ADDX8BO_registerW_registerZ_registerY_simple
	;;
	addx8bo $r0r1.lo = $r0r1r2r3.x, 536870911 	#Opcode-kv3_v2-ADDX8BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8d $r1 = $r0r1.hi, $r0r1r2r3.y 	#Opcode-kv3_v2-ADDX8D_registerW_registerZ_registerY_simple
	;;
	addx8d $r2 = $r2r3.lo, 536870911.@ 	#Opcode-kv3_v2-ADDX8D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8hq $r0r1r2r3.z = $r3, $r2r3.hi 	#Opcode-kv3_v2-ADDX8HQ_registerW_registerZ_registerY_simple
	;;
	addx8hq $r0r1r2r3.t = $r4, 536870911 	#Opcode-kv3_v2-ADDX8HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8uwd $r4r5.lo = $r4r5r6r7.x, $r5 	#Opcode-kv3_v2-ADDX8UWD_registerW_registerZ_registerY_simple
	;;
	addx8uwd $r4r5.hi = $r4r5r6r7.y, 536870911 	#Opcode-kv3_v2-ADDX8UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx8wd $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v2-ADDX8WD_registerW_registerZ_registerY_simple
	;;
	addx8wd $r7 = $r6r7.hi, 536870911 	#Opcode-kv3_v2-ADDX8WD_registerW_registerZ_upper27_lower5_double
	;;
	addx8wp $r4r5r6r7.t = $r8, $r8r9.lo 	#Opcode-kv3_v2-ADDX8WP_registerW_registerZ_registerY_simple
	;;
	addx8wp $r8r9r10r11.x = $r9, 536870911.@ 	#Opcode-kv3_v2-ADDX8WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8w $r8r9.hi = $r8r9r10r11.y, $r10 	#Opcode-kv3_v2-ADDX8W_registerW_registerZ_registerY_simple
	;;
	addx8w $r10r11.lo = $r8r9r10r11.z, 536870911 	#Opcode-kv3_v2-ADDX8W_registerW_registerZ_upper27_lower5_double
	;;
	aladdd -1125899906842624[$r11] = $r10r11.hi 	#Opcode-kv3_v2-ALADDD_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	aladdd.g -8388608[$r8r9r10r11.t] = $r12 	#Opcode-kv3_v2-ALADDD_coherency_offset27_registerZ_registerT_double
	;;
	aladdd.s [$sp] = $r13 	#Opcode-kv3_v2-ALADDD_coherency_registerZ_registerT_simple
	;;
	aladdw -1125899906842624[$tp] = $r14 	#Opcode-kv3_v2-ALADDW_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	aladdw.g -8388608[$fp] = $r15 	#Opcode-kv3_v2-ALADDW_coherency_offset27_registerZ_registerT_double
	;;
	aladdw.s [$rp] = $r16 	#Opcode-kv3_v2-ALADDW_coherency_registerZ_registerT_simple
	;;
	alclrd $r16r17.lo = -1125899906842624[$r16r17r18r19.x] 	#Opcode-kv3_v2-ALCLRD_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	alclrd.g $r17 = -8388608[$r16r17.hi] 	#Opcode-kv3_v2-ALCLRD_coherency_registerW_offset27_registerZ_double
	;;
	alclrd.s $r16r17r18r19.y = [$r18] 	#Opcode-kv3_v2-ALCLRD_coherency_registerW_registerZ_simple
	;;
	alclrw $r18r19.lo = -1125899906842624[$r16r17r18r19.z] 	#Opcode-kv3_v2-ALCLRW_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	alclrw.g $r19 = -8388608[$r18r19.hi] 	#Opcode-kv3_v2-ALCLRW_coherency_registerW_offset27_registerZ_double
	;;
	alclrw.s $r16r17r18r19.t = [$r20] 	#Opcode-kv3_v2-ALCLRW_coherency_registerW_registerZ_simple
	;;
	ald $r20r21.lo = -1125899906842624[$r20r21r22r23.x] 	#Opcode-kv3_v2-ALD_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	ald.g $r21 = -8388608[$r20r21.hi] 	#Opcode-kv3_v2-ALD_coherency_registerW_offset27_registerZ_double
	;;
	ald.s $r20r21r22r23.y = [$r22] 	#Opcode-kv3_v2-ALD_coherency_registerW_registerZ_simple
	;;
	alw $r22r23.lo = -1125899906842624[$r20r21r22r23.z] 	#Opcode-kv3_v2-ALW_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	alw.g $r23 = -8388608[$r22r23.hi] 	#Opcode-kv3_v2-ALW_coherency_registerW_offset27_registerZ_double
	;;
	alw.s $r20r21r22r23.t = [$r24] 	#Opcode-kv3_v2-ALW_coherency_registerW_registerZ_simple
	;;
	andd $r24r25.lo = $r24r25r26r27.x, 2305843009213693951 	#Opcode-kv3_v2-ANDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	andd $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v2-ANDD_registerW_registerZ_registerY_simple
	;;
	andd $r26 = $r26r27.lo, -64 	#Opcode-kv3_v2-ANDD_registerW_registerZ_signed10_simple
	;;
	andd $r24r25r26r27.z = $r27, -8589934592 	#Opcode-kv3_v2-ANDD_registerW_registerZ_upper27_lower10_double
	;;
	andnd $r26r27.hi = $r24r25r26r27.t, 2305843009213693951 	#Opcode-kv3_v2-ANDND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	andnd $r28 = $r28r29.lo, $r28r29r30r31.x 	#Opcode-kv3_v2-ANDND_registerW_registerZ_registerY_simple
	;;
	andnd $r29 = $r28r29.hi, -64 	#Opcode-kv3_v2-ANDND_registerW_registerZ_signed10_simple
	;;
	andnd $r28r29r30r31.y = $r30, -8589934592 	#Opcode-kv3_v2-ANDND_registerW_registerZ_upper27_lower10_double
	;;
	andnw $r30r31.lo = $r28r29r30r31.z, $r31 	#Opcode-kv3_v2-ANDNW_registerW_registerZ_registerY_simple
	;;
	andnw $r30r31.hi = $r28r29r30r31.t, -64 	#Opcode-kv3_v2-ANDNW_registerW_registerZ_signed10_simple
	;;
	andnw $r32 = $r32r33.lo, -8589934592 	#Opcode-kv3_v2-ANDNW_registerW_registerZ_upper27_lower10_double
	;;
	andrbod $r32r33r34r35.x = $r33 	#Opcode-kv3_v2-ANDRBOD_registerW_registerZ_simple
	;;
	andrhqd $r32r33.hi = $r32r33r34r35.y 	#Opcode-kv3_v2-ANDRHQD_registerW_registerZ_simple
	;;
	andrwpd $r34 = $r34r35.lo 	#Opcode-kv3_v2-ANDRWPD_registerW_registerZ_simple
	;;
	andw $r32r33r34r35.z = $r35, $r34r35.hi 	#Opcode-kv3_v2-ANDW_registerW_registerZ_registerY_simple
	;;
	andw $r32r33r34r35.t = $r36, -64 	#Opcode-kv3_v2-ANDW_registerW_registerZ_signed10_simple
	;;
	andw $r36r37.lo = $r36r37r38r39.x, -8589934592 	#Opcode-kv3_v2-ANDW_registerW_registerZ_upper27_lower10_double
	;;
	asd -1125899906842624[$r37] = $r36r37.hi 	#Opcode-kv3_v2-ASD_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	asd.g -8388608[$r36r37r38r39.y] = $r38 	#Opcode-kv3_v2-ASD_coherency_offset27_registerZ_registerT_double
	;;
	asd.s [$r38r39.lo] = $r36r37r38r39.z 	#Opcode-kv3_v2-ASD_coherency_registerZ_registerT_simple
	;;
	asw -1125899906842624[$r39] = $r38r39.hi 	#Opcode-kv3_v2-ASW_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	asw.g -8388608[$r36r37r38r39.t] = $r40 	#Opcode-kv3_v2-ASW_coherency_offset27_registerZ_registerT_double
	;;
	asw.s [$r40r41.lo] = $r40r41r42r43.x 	#Opcode-kv3_v2-ASW_coherency_registerZ_registerT_simple
	;;
	avgbo $r41 = $r40r41.hi, $r40r41r42r43.y 	#Opcode-kv3_v2-AVGBO_registerW_registerZ_registerY_simple
	;;
	avgbo $r42 = $r42r43.lo, 536870911 	#Opcode-kv3_v2-AVGBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avghq $r40r41r42r43.z = $r43, $r42r43.hi 	#Opcode-kv3_v2-AVGHQ_registerW_registerZ_registerY_simple
	;;
	avghq $r40r41r42r43.t = $r44, 536870911.@ 	#Opcode-kv3_v2-AVGHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrbo $r44r45.lo = $r44r45r46r47.x, $r45 	#Opcode-kv3_v2-AVGRBO_registerW_registerZ_registerY_simple
	;;
	avgrbo $r44r45.hi = $r44r45r46r47.y, 536870911 	#Opcode-kv3_v2-AVGRBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrhq $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv3_v2-AVGRHQ_registerW_registerZ_registerY_simple
	;;
	avgrhq $r47 = $r46r47.hi, 536870911.@ 	#Opcode-kv3_v2-AVGRHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrubo $r44r45r46r47.t = $r48, $r48r49.lo 	#Opcode-kv3_v2-AVGRUBO_registerW_registerZ_registerY_simple
	;;
	avgrubo $r48r49r50r51.x = $r49, 536870911 	#Opcode-kv3_v2-AVGRUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruhq $r48r49.hi = $r48r49r50r51.y, $r50 	#Opcode-kv3_v2-AVGRUHQ_registerW_registerZ_registerY_simple
	;;
	avgruhq $r50r51.lo = $r48r49r50r51.z, 536870911.@ 	#Opcode-kv3_v2-AVGRUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruwp $r51 = $r50r51.hi, $r48r49r50r51.t 	#Opcode-kv3_v2-AVGRUWP_registerW_registerZ_registerY_simple
	;;
	avgruwp $r52 = $r52r53.lo, 536870911 	#Opcode-kv3_v2-AVGRUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruw $r52r53r54r55.x = $r53, $r52r53.hi 	#Opcode-kv3_v2-AVGRUW_registerW_registerZ_registerY_simple
	;;
	avgruw $r52r53r54r55.y = $r54, 536870911 	#Opcode-kv3_v2-AVGRUW_registerW_registerZ_upper27_lower5_double
	;;
	avgrwp $r54r55.lo = $r52r53r54r55.z, $r55 	#Opcode-kv3_v2-AVGRWP_registerW_registerZ_registerY_simple
	;;
	avgrwp $r54r55.hi = $r52r53r54r55.t, 536870911.@ 	#Opcode-kv3_v2-AVGRWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrw $r56 = $r56r57.lo, $r56r57r58r59.x 	#Opcode-kv3_v2-AVGRW_registerW_registerZ_registerY_simple
	;;
	avgrw $r57 = $r56r57.hi, 536870911 	#Opcode-kv3_v2-AVGRW_registerW_registerZ_upper27_lower5_double
	;;
	avgubo $r56r57r58r59.y = $r58, $r58r59.lo 	#Opcode-kv3_v2-AVGUBO_registerW_registerZ_registerY_simple
	;;
	avgubo $r56r57r58r59.z = $r59, 536870911 	#Opcode-kv3_v2-AVGUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguhq $r58r59.hi = $r56r57r58r59.t, $r60 	#Opcode-kv3_v2-AVGUHQ_registerW_registerZ_registerY_simple
	;;
	avguhq $r60r61.lo = $r60r61r62r63.x, 536870911.@ 	#Opcode-kv3_v2-AVGUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguwp $r61 = $r60r61.hi, $r60r61r62r63.y 	#Opcode-kv3_v2-AVGUWP_registerW_registerZ_registerY_simple
	;;
	avguwp $r62 = $r62r63.lo, 536870911 	#Opcode-kv3_v2-AVGUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguw $r60r61r62r63.z = $r63, $r62r63.hi 	#Opcode-kv3_v2-AVGUW_registerW_registerZ_registerY_simple
	;;
	avguw $r60r61r62r63.t = $r0, 536870911 	#Opcode-kv3_v2-AVGUW_registerW_registerZ_upper27_lower5_double
	;;
	avgwp $r0r1.lo = $r0r1r2r3.x, $r1 	#Opcode-kv3_v2-AVGWP_registerW_registerZ_registerY_simple
	;;
	avgwp $r0r1.hi = $r0r1r2r3.y, 536870911.@ 	#Opcode-kv3_v2-AVGWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgw $r2 = $r2r3.lo, $r0r1r2r3.z 	#Opcode-kv3_v2-AVGW_registerW_registerZ_registerY_simple
	;;
	avgw $r3 = $r2r3.hi, 536870911 	#Opcode-kv3_v2-AVGW_registerW_registerZ_upper27_lower5_double
	;;
	await 	#Opcode-kv3_v2-AWAIT_simple
	;;
	barrier 	#Opcode-kv3_v2-BARRIER_simple
	;;
	break 0 	#Opcode-kv3_v2-BREAK_brknumber_simple
	;;
	call -33554432 	#Opcode-kv3_v2-CALL_pcrel27_simple
	;;
	cbsd $r0r1r2r3.t = $r4 	#Opcode-kv3_v2-CBSD_registerW_registerZ_simple
	;;
	cbswp $r4r5.lo = $r4r5r6r7.x 	#Opcode-kv3_v2-CBSWP_registerW_registerZ_simple
	;;
	cbsw $r5 = $r4r5.hi 	#Opcode-kv3_v2-CBSW_registerW_registerZ_simple
	;;
	cb.dnez $r4r5r6r7.y? -32768 	#Opcode-kv3_v2-CB_branchcond_registerZ_pcrel17_simple
	;;
	clrf $r6 = $r6r7.lo, 7, 7 	#Opcode-kv3_v2-CLRF_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	clsd $r4r5r6r7.z = $r7 	#Opcode-kv3_v2-CLSD_registerW_registerZ_simple
	;;
	clswp $r6r7.hi = $r4r5r6r7.t 	#Opcode-kv3_v2-CLSWP_registerW_registerZ_simple
	;;
	clsw $r8 = $r8r9.lo 	#Opcode-kv3_v2-CLSW_registerW_registerZ_simple
	;;
	clzd $r8r9r10r11.x = $r9 	#Opcode-kv3_v2-CLZD_registerW_registerZ_simple
	;;
	clzwp $r8r9.hi = $r8r9r10r11.y 	#Opcode-kv3_v2-CLZWP_registerW_registerZ_simple
	;;
	clzw $r10 = $r10r11.lo 	#Opcode-kv3_v2-CLZW_registerW_registerZ_simple
	;;
	cmovebo.nez $r8r9r10r11.z? $r11 = $r10r11.hi 	#Opcode-kv3_v2-CMOVEBO_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovebo.eqz $r8r9r10r11.t? $r12 = 536870911 	#Opcode-kv3_v2-CMOVEBO_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmoved.deqz $sp? $r13 = 2305843009213693951 	#Opcode-kv3_v2-CMOVED_scalarcond_registerZ_registerW_extend27_upper27_lower10_triple
	;;
	cmoved.dltz $tp? $r14 = $fp 	#Opcode-kv3_v2-CMOVED_scalarcond_registerZ_registerW_registerY_simple
	;;
	cmoved.dgez $r15? $rp = -64 	#Opcode-kv3_v2-CMOVED_scalarcond_registerZ_registerW_signed10_simple
	;;
	cmoved.dlez $r16? $r16r17.lo = -8589934592 	#Opcode-kv3_v2-CMOVED_scalarcond_registerZ_registerW_upper27_lower10_double
	;;
	cmovehq.ltz $r16r17r18r19.x? $r17 = $r16r17.hi 	#Opcode-kv3_v2-CMOVEHQ_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovehq.gez $r16r17r18r19.y? $r18 = 536870911.@ 	#Opcode-kv3_v2-CMOVEHQ_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmovewp.lez $r18r19.lo? $r16r17r18r19.z = $r19 	#Opcode-kv3_v2-CMOVEWP_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovewp.gtz $r18r19.hi? $r16r17r18r19.t = 536870911 	#Opcode-kv3_v2-CMOVEWP_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmuldt $r8r9r10r11.lo = $r20, $r20r21.lo 	#Opcode-kv3_v2-CMULDT_registerM_registerZ_registerY_simple
	;;
	cmulghxdt $r10r11 = $r20r21r22r23.x, $r21 	#Opcode-kv3_v2-CMULGHXDT_registerM_registerZ_registerY_simple
	;;
	cmulglxdt $r8r9r10r11.hi = $r20r21.hi, $r20r21r22r23.y 	#Opcode-kv3_v2-CMULGLXDT_registerM_registerZ_registerY_simple
	;;
	cmulgmxdt $r12r13 = $r22, $r22r23.lo 	#Opcode-kv3_v2-CMULGMXDT_registerM_registerZ_registerY_simple
	;;
	cmulxdt $r12r13r14r15.lo = $r20r21r22r23.z, $r23 	#Opcode-kv3_v2-CMULXDT_registerM_registerZ_registerY_simple
	;;
	compd.ne $r22r23.hi = $r20r21r22r23.t, 2305843009213693951 	#Opcode-kv3_v2-COMPD_comparison_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	compd.eq $r24 = $r24r25.lo, $r24r25r26r27.x 	#Opcode-kv3_v2-COMPD_comparison_registerW_registerZ_registerY_simple
	;;
	compd.lt $r25 = $r24r25.hi, -64 	#Opcode-kv3_v2-COMPD_comparison_registerW_registerZ_signed10_simple
	;;
	compd.ge $r24r25r26r27.y = $r26, -8589934592 	#Opcode-kv3_v2-COMPD_comparison_registerW_registerZ_upper27_lower10_double
	;;
	compnbo.le $r26r27.lo = $r24r25r26r27.z, $r27 	#Opcode-kv3_v2-COMPNBO_comparison_registerW_registerZ_registerY_simple
	;;
	compnbo.gt $r26r27.hi = $r24r25r26r27.t, 536870911.@ 	#Opcode-kv3_v2-COMPNBO_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compnd.ltu $r28 = $r28r29.lo, $r28r29r30r31.x 	#Opcode-kv3_v2-COMPND_comparison_registerW_registerZ_registerY_simple
	;;
	compnd.geu $r29 = $r28r29.hi, 536870911 	#Opcode-kv3_v2-COMPND_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compnhq.leu $r28r29r30r31.y = $r30, $r30r31.lo 	#Opcode-kv3_v2-COMPNHQ_comparison_registerW_registerZ_registerY_simple
	;;
	compnhq.gtu $r28r29r30r31.z = $r31, 536870911 	#Opcode-kv3_v2-COMPNHQ_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compnwp.all $r30r31.hi = $r28r29r30r31.t, $r32 	#Opcode-kv3_v2-COMPNWP_comparison_registerW_registerZ_registerY_simple
	;;
	compnwp.nall $r32r33.lo = $r32r33r34r35.x, 536870911.@ 	#Opcode-kv3_v2-COMPNWP_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compnw.any $r33 = $r32r33.hi, $r32r33r34r35.y 	#Opcode-kv3_v2-COMPNW_comparison_registerW_registerZ_registerY_simple
	;;
	compnw.none $r34 = $r34r35.lo, 536870911 	#Opcode-kv3_v2-COMPNW_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compuwd.ne $r32r33r34r35.z = $r35, $r34r35.hi 	#Opcode-kv3_v2-COMPUWD_comparison_registerW_registerZ_registerY_simple
	;;
	compuwd.eq $r32r33r34r35.t = $r36, 536870911 	#Opcode-kv3_v2-COMPUWD_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compwd.lt $r36r37.lo = $r36r37r38r39.x, $r37 	#Opcode-kv3_v2-COMPWD_comparison_registerW_registerZ_registerY_simple
	;;
	compwd.ge $r36r37.hi = $r36r37r38r39.y, 536870911 	#Opcode-kv3_v2-COMPWD_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compw.le $r38 = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv3_v2-COMPW_comparison_registerW_registerZ_registerY_simple
	;;
	compw.gt $r39 = $r38r39.hi, 536870911 	#Opcode-kv3_v2-COMPW_comparison_registerW_registerZ_upper27_lower5_double
	;;
	copyd $r36r37r38r39.t = $r40 	#Opcode-kv3_v2-COPYD_registerW_registerZ_simple
	;;
	copyo $r12r13r14r15 = $r16r17r18r19 	#Opcode-kv3_v2-COPYO_registerN_registerR_simple
	;;
	copyq $r14r15 = $r40r41.lo, $r40r41r42r43.x 	#Opcode-kv3_v2-COPYQ_registerM_registerZ_registerY_simple
	;;
	copyw $r41 = $r40r41.hi 	#Opcode-kv3_v2-COPYW_registerW_registerZ_simple
	;;
	crcbellw $r40r41r42r43.y = $r42, $r42r43.lo 	#Opcode-kv3_v2-CRCBELLW_registerW_registerZ_registerY_simple
	;;
	crcbellw $r40r41r42r43.z = $r43, 536870911 	#Opcode-kv3_v2-CRCBELLW_registerW_registerZ_upper27_lower5_double
	;;
	crcbelmw $r42r43.hi = $r40r41r42r43.t, $r44 	#Opcode-kv3_v2-CRCBELMW_registerW_registerZ_registerY_simple
	;;
	crcbelmw $r44r45.lo = $r44r45r46r47.x, 536870911 	#Opcode-kv3_v2-CRCBELMW_registerW_registerZ_upper27_lower5_double
	;;
	crclellw $r45 = $r44r45.hi, $r44r45r46r47.y 	#Opcode-kv3_v2-CRCLELLW_registerW_registerZ_registerY_simple
	;;
	crclellw $r46 = $r46r47.lo, 536870911 	#Opcode-kv3_v2-CRCLELLW_registerW_registerZ_upper27_lower5_double
	;;
	crclelmw $r44r45r46r47.z = $r47, $r46r47.hi 	#Opcode-kv3_v2-CRCLELMW_registerW_registerZ_registerY_simple
	;;
	crclelmw $r44r45r46r47.t = $r48, 536870911 	#Opcode-kv3_v2-CRCLELMW_registerW_registerZ_upper27_lower5_double
	;;
	ctzd $r48r49.lo = $r48r49r50r51.x 	#Opcode-kv3_v2-CTZD_registerW_registerZ_simple
	;;
	ctzwp $r49 = $r48r49.hi 	#Opcode-kv3_v2-CTZWP_registerW_registerZ_simple
	;;
	ctzw $r48r49r50r51.y = $r50 	#Opcode-kv3_v2-CTZW_registerW_registerZ_simple
	;;
	d1inval 	#Opcode-kv3_v2-D1INVAL_simple
	;;
	dflushl $r50r51.lo[$r48r49r50r51.z] 	#Opcode-kv3_v2-DFLUSHL_doscale_registerY_registerZ_simple
	;;
	dflushl 2305843009213693951[$r51] 	#Opcode-kv3_v2-DFLUSHL_extend27_upper27_lower10_registerZ_triple
	;;
	dflushl -64[$r50r51.hi] 	#Opcode-kv3_v2-DFLUSHL_signed10_registerZ_simple
	;;
	dflushl -8589934592[$r48r49r50r51.t] 	#Opcode-kv3_v2-DFLUSHL_upper27_lower10_registerZ_double
	;;
	dflushsw.l1 $r52, $r52r53.lo 	#Opcode-kv3_v2-DFLUSHSW_cachelev_registerY_registerZ_simple
	;;
	dinvall.xs $r52r53r54r55.x[$r53] 	#Opcode-kv3_v2-DINVALL_doscale_registerY_registerZ_simple
	;;
	dinvall 2305843009213693951[$r52r53.hi] 	#Opcode-kv3_v2-DINVALL_extend27_upper27_lower10_registerZ_triple
	;;
	dinvall -64[$r52r53r54r55.y] 	#Opcode-kv3_v2-DINVALL_signed10_registerZ_simple
	;;
	dinvall -8589934592[$r54] 	#Opcode-kv3_v2-DINVALL_upper27_lower10_registerZ_double
	;;
	dinvalsw.l2 $r54r55.lo, $r52r53r54r55.z 	#Opcode-kv3_v2-DINVALSW_cachelev_registerY_registerZ_simple
	;;
	dot2suwdp $r12r13r14r15.hi = $r16r17, $r16r17r18r19.lo 	#Opcode-kv3_v2-DOT2SUWDP_registerM_registerP_registerO_simple
	;;
	dot2suwd $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v2-DOT2SUWD_registerW_registerZ_registerY_simple
	;;
	dot2uwdp $r18r19 = $r16r17r18r19.hi, $r20r21 	#Opcode-kv3_v2-DOT2UWDP_registerM_registerP_registerO_simple
	;;
	dot2uwd $r56 = $r56r57.lo, $r56r57r58r59.x 	#Opcode-kv3_v2-DOT2UWD_registerW_registerZ_registerY_simple
	;;
	dot2wdp $r20r21r22r23.lo = $r22r23, $r20r21r22r23.hi 	#Opcode-kv3_v2-DOT2WDP_registerM_registerP_registerO_simple
	;;
	dot2wd $r57 = $r56r57.hi, $r56r57r58r59.y 	#Opcode-kv3_v2-DOT2WD_registerW_registerZ_registerY_simple
	;;
	dot2wzp $r24r25 = $r24r25r26r27.lo, $r26r27 	#Opcode-kv3_v2-DOT2WZP_registerM_registerP_registerO_simple
	;;
	dot2w $r58 = $r58r59.lo, $r56r57r58r59.z 	#Opcode-kv3_v2-DOT2W_registerW_registerZ_registerY_simple
	;;
	dpurgel $r59[$r58r59.hi] 	#Opcode-kv3_v2-DPURGEL_doscale_registerY_registerZ_simple
	;;
	dpurgel 2305843009213693951[$r56r57r58r59.t] 	#Opcode-kv3_v2-DPURGEL_extend27_upper27_lower10_registerZ_triple
	;;
	dpurgel -64[$r60] 	#Opcode-kv3_v2-DPURGEL_signed10_registerZ_simple
	;;
	dpurgel -8589934592[$r60r61.lo] 	#Opcode-kv3_v2-DPURGEL_upper27_lower10_registerZ_double
	;;
	dpurgesw.l1 $r60r61r62r63.x, $r61 	#Opcode-kv3_v2-DPURGESW_cachelev_registerY_registerZ_simple
	;;
	dtouchl.xs $r60r61.hi[$r60r61r62r63.y] 	#Opcode-kv3_v2-DTOUCHL_doscale_registerY_registerZ_simple
	;;
	dtouchl 2305843009213693951[$r62] 	#Opcode-kv3_v2-DTOUCHL_extend27_upper27_lower10_registerZ_triple
	;;
	dtouchl -64[$r62r63.lo] 	#Opcode-kv3_v2-DTOUCHL_signed10_registerZ_simple
	;;
	dtouchl -8589934592[$r60r61r62r63.z] 	#Opcode-kv3_v2-DTOUCHL_upper27_lower10_registerZ_double
	;;
	eord $r63 = $r62r63.hi, 2305843009213693951 	#Opcode-kv3_v2-EORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	eord $r60r61r62r63.t = $r0, $r0r1.lo 	#Opcode-kv3_v2-EORD_registerW_registerZ_registerY_simple
	;;
	eord $r0r1r2r3.x = $r1, -64 	#Opcode-kv3_v2-EORD_registerW_registerZ_signed10_simple
	;;
	eord $r0r1.hi = $r0r1r2r3.y, -8589934592 	#Opcode-kv3_v2-EORD_registerW_registerZ_upper27_lower10_double
	;;
	eorrbod $r2 = $r2r3.lo 	#Opcode-kv3_v2-EORRBOD_registerW_registerZ_simple
	;;
	eorrhqd $r0r1r2r3.z = $r3 	#Opcode-kv3_v2-EORRHQD_registerW_registerZ_simple
	;;
	eorrwpd $r2r3.hi = $r0r1r2r3.t 	#Opcode-kv3_v2-EORRWPD_registerW_registerZ_simple
	;;
	eorw $r4 = $r4r5.lo, $r4r5r6r7.x 	#Opcode-kv3_v2-EORW_registerW_registerZ_registerY_simple
	;;
	eorw $r5 = $r4r5.hi, -64 	#Opcode-kv3_v2-EORW_registerW_registerZ_signed10_simple
	;;
	eorw $r4r5r6r7.y = $r6, -8589934592 	#Opcode-kv3_v2-EORW_registerW_registerZ_upper27_lower10_double
	;;
	errop 	#Opcode-kv3_v2-ERROP_simple
	;;
	extfs $r6r7.lo = $r4r5r6r7.z, 7, 7 	#Opcode-kv3_v2-EXTFS_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	extfz $r7 = $r6r7.hi, 7, 7 	#Opcode-kv3_v2-EXTFZ_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	fabsd $r4r5r6r7.t = $r8 	#Opcode-kv3_v2-FABSD_registerW_registerZ_simple
	;;
	fabshq $r8r9.lo = $r8r9r10r11.x 	#Opcode-kv3_v2-FABSHQ_registerW_registerZ_simple
	;;
	fabswp $r9 = $r8r9.hi 	#Opcode-kv3_v2-FABSWP_registerW_registerZ_simple
	;;
	fabsw $r8r9r10r11.y = $r10 	#Opcode-kv3_v2-FABSW_registerW_registerZ_simple
	;;
	fadddc.c.rn $r24r25r26r27.hi = $r28r29, $r28r29r30r31.lo 	#Opcode-kv3_v2-FADDDC.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	fadddc.ru.s $r30r31 = $r28r29r30r31.hi, $r32r33 	#Opcode-kv3_v2-FADDDC_rounding_silent_registerM_registerP_registerO_simple
	;;
	fadddp.rd $r32r33r34r35.lo = $r34r35, $r32r33r34r35.hi 	#Opcode-kv3_v2-FADDDP_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddd.rz.s $r10r11.lo = $r8r9r10r11.z, $r11 	#Opcode-kv3_v2-FADDD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddho.rna $r36r37 = $r36r37r38r39.lo, $r38r39 	#Opcode-kv3_v2-FADDHO_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddhq.rnz.s $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv3_v2-FADDHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwc.c.ro $sp = $r13, $tp 	#Opcode-kv3_v2-FADDWC.C_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwcp.c.s $r36r37r38r39.hi = $r40r41, $r40r41r42r43.lo 	#Opcode-kv3_v2-FADDWCP.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddwcp.rn $r42r43 = $r40r41r42r43.hi, $r44r45 	#Opcode-kv3_v2-FADDWCP_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddwc.ru.s $r14 = $fp, $r15 	#Opcode-kv3_v2-FADDWC_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwp.rd $rp = $r16, $r16r17.lo 	#Opcode-kv3_v2-FADDWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	faddwq.rz.s $r44r45r46r47.lo = $r46r47, $r44r45r46r47.hi 	#Opcode-kv3_v2-FADDWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	faddw.rna $r16r17r18r19.x = $r17, $r16r17.hi 	#Opcode-kv3_v2-FADDW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fcdivd.s $r16r17r18r19.y = $r48r49 	#Opcode-kv3_v2-FCDIVD_silent2_registerW_registerP_simple
	;;
	fcdivwp $r18 = $r48r49r50r51.lo 	#Opcode-kv3_v2-FCDIVWP_silent2_registerW_registerP_simple
	;;
	fcdivw.s $r18r19.lo = $r50r51 	#Opcode-kv3_v2-FCDIVW_silent2_registerW_registerP_simple
	;;
	fcompd.one $r16r17r18r19.z = $r19, $r18r19.hi 	#Opcode-kv3_v2-FCOMPD_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompd.ueq $r16r17r18r19.t = $r20, 536870911 	#Opcode-kv3_v2-FCOMPD_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fcompnd.oeq $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv3_v2-FCOMPND_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnd.une $r20r21.hi = $r20r21r22r23.y, 536870911 	#Opcode-kv3_v2-FCOMPND_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fcompnhq.olt $r22 = $r22r23.lo, $r20r21r22r23.z 	#Opcode-kv3_v2-FCOMPNHQ_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnhq.uge $r23 = $r22r23.hi, 536870911 	#Opcode-kv3_v2-FCOMPNHQ_floatcomp_registerW_registerZ_upper27_lower5_splat32_double
	;;
	fcompnwp.oge $r20r21r22r23.t = $r24, $r24r25.lo 	#Opcode-kv3_v2-FCOMPNWP_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnwp.ult $r24r25r26r27.x = $r25, 536870911.@ 	#Opcode-kv3_v2-FCOMPNWP_floatcomp_registerW_registerZ_upper27_lower5_splat32_double
	;;
	fcompnw.one $r24r25.hi = $r24r25r26r27.y, $r26 	#Opcode-kv3_v2-FCOMPNW_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnw.ueq $r26r27.lo = $r24r25r26r27.z, 536870911 	#Opcode-kv3_v2-FCOMPNW_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fcompw.oeq $r27 = $r26r27.hi, $r24r25r26r27.t 	#Opcode-kv3_v2-FCOMPW_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompw.une $r28 = $r28r29.lo, 536870911 	#Opcode-kv3_v2-FCOMPW_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fdot2wdp.rnz $r48r49r50r51.hi = $r52r53, $r52r53r54r55.lo 	#Opcode-kv3_v2-FDOT2WDP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fdot2wd.ro.s $r28r29r30r31.x = $r29, $r28r29.hi 	#Opcode-kv3_v2-FDOT2WD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fdot2wzp $r54r55 = $r52r53r54r55.hi, $r56r57 	#Opcode-kv3_v2-FDOT2WZP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fdot2w.rn.s $r28r29r30r31.y = $r30, $r30r31.lo 	#Opcode-kv3_v2-FDOT2W_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fence 	#Opcode-kv3_v2-FENCE_accesses_simple
	;;
	ffdmaswp.ru $r28r29r30r31.z = $r56r57r58r59.lo, $r58r59 	#Opcode-kv3_v2-FFDMASWP_rounding_silent_registerW_registerP_registerO_simple
	;;
	ffdmaswq.rd.s $r56r57r58r59.hi = $r20r21r22r23, $r24r25r26r27 	#Opcode-kv3_v2-FFDMASWQ_rounding_silent_registerM_registerR_registerQ_simple
	;;
	ffdmasw.rz $r31 = $r30r31.hi, $r28r29r30r31.t 	#Opcode-kv3_v2-FFDMASW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffdmawp.rna.s $r32 = $r60r61, $r60r61r62r63.lo 	#Opcode-kv3_v2-FFDMAWP_rounding_silent_registerW_registerP_registerO_simple
	;;
	ffdmawq.rnz $r62r63 = $r28r29r30r31, $r32r33r34r35 	#Opcode-kv3_v2-FFDMAWQ_rounding_silent_registerM_registerR_registerQ_simple
	;;
	ffdmaw.ro.s $r32r33.lo = $r32r33r34r35.x, $r33 	#Opcode-kv3_v2-FFDMAW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffdmdawp $r32r33.hi = $r60r61r62r63.hi, $r0r1 	#Opcode-kv3_v2-FFDMDAWP_rounding_silent_registerW_registerP_registerO_simple
	;;
	ffdmdawq.rn.s $r0r1r2r3.lo = $r36r37r38r39, $r40r41r42r43 	#Opcode-kv3_v2-FFDMDAWQ_rounding_silent_registerM_registerR_registerQ_simple
	;;
	ffdmdaw.ru $r32r33r34r35.y = $r34, $r34r35.lo 	#Opcode-kv3_v2-FFDMDAW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffdmdswp.rd.s $r32r33r34r35.z = $r2r3, $r0r1r2r3.hi 	#Opcode-kv3_v2-FFDMDSWP_rounding_silent_registerW_registerP_registerO_simple
	;;
	ffdmdswq.rz $r4r5 = $r44r45r46r47, $r48r49r50r51 	#Opcode-kv3_v2-FFDMDSWQ_rounding_silent_registerM_registerR_registerQ_simple
	;;
	ffdmdsw.rna.s $r35 = $r34r35.hi, $r32r33r34r35.t 	#Opcode-kv3_v2-FFDMDSW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffdmsawp.rnz $r36 = $r4r5r6r7.lo, $r6r7 	#Opcode-kv3_v2-FFDMSAWP_rounding_silent_registerW_registerP_registerO_simple
	;;
	ffdmsawq.ro.s $r4r5r6r7.hi = $r52r53r54r55, $r56r57r58r59 	#Opcode-kv3_v2-FFDMSAWQ_rounding_silent_registerM_registerR_registerQ_simple
	;;
	ffdmsaw $r36r37.lo = $r36r37r38r39.x, $r37 	#Opcode-kv3_v2-FFDMSAW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffdmswp.rn.s $r36r37.hi = $r8r9, $r8r9r10r11.lo 	#Opcode-kv3_v2-FFDMSWP_rounding_silent_registerW_registerP_registerO_simple
	;;
	ffdmswq.ru $r10r11 = $r60r61r62r63, $r0r1r2r3 	#Opcode-kv3_v2-FFDMSWQ_rounding_silent_registerM_registerR_registerQ_simple
	;;
	ffdmsw.rd.s $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv3_v2-FFDMSW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmad.rz $r36r37r38r39.z = $r39, $r38r39.hi 	#Opcode-kv3_v2-FFMAD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmaho.rna.s $r8r9r10r11.hi = $r12r13, $r12r13r14r15.lo 	#Opcode-kv3_v2-FFMAHO_rounding_silent_registerM_registerP_registerO_simple
	;;
	ffmahq.rnz $r36r37r38r39.t = $r40, $r40r41.lo 	#Opcode-kv3_v2-FFMAHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmahwq.ro.s $r14r15 = $r40r41r42r43.x, $r41 	#Opcode-kv3_v2-FFMAHWQ_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmahw $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv3_v2-FFMAHW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmawcp.rn.s $r12r13r14r15.hi = $r16r17, $r16r17r18r19.lo 	#Opcode-kv3_v2-FFMAWCP_conjugate_rounding_silent_registerM_registerP_registerO_simple
	;;
	ffmawc.c.ru $r42r43.lo = $r40r41r42r43.z, $r43 	#Opcode-kv3_v2-FFMAWC_conjugate_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmawdp.rd.s $r18r19 = $r42r43.hi, $r40r41r42r43.t 	#Opcode-kv3_v2-FFMAWDP_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmawd.rz $r44 = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv3_v2-FFMAWD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmawp.rna.s $r45 = $r44r45.hi, $r44r45r46r47.y 	#Opcode-kv3_v2-FFMAWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmawq.rnz $r16r17r18r19.hi = $r20r21, $r20r21r22r23.lo 	#Opcode-kv3_v2-FFMAWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	ffmaw.ro.s $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv3_v2-FFMAW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmsd $r47 = $r46r47.hi, $r44r45r46r47.t 	#Opcode-kv3_v2-FFMSD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmsho.rn.s $r22r23 = $r20r21r22r23.hi, $r24r25 	#Opcode-kv3_v2-FFMSHO_rounding_silent_registerM_registerP_registerO_simple
	;;
	ffmshq.ru $r48 = $r48r49.lo, $r48r49r50r51.x 	#Opcode-kv3_v2-FFMSHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmshwq.rd.s $r24r25r26r27.lo = $r49, $r48r49.hi 	#Opcode-kv3_v2-FFMSHWQ_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmshw.rz $r48r49r50r51.y = $r50, $r50r51.lo 	#Opcode-kv3_v2-FFMSHW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmswcp.rna.s $r26r27 = $r24r25r26r27.hi, $r28r29 	#Opcode-kv3_v2-FFMSWCP_conjugate_rounding_silent_registerM_registerP_registerO_simple
	;;
	ffmswc.c.rnz $r48r49r50r51.z = $r51, $r50r51.hi 	#Opcode-kv3_v2-FFMSWC_conjugate_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmswdp.ro.s $r28r29r30r31.lo = $r48r49r50r51.t, $r52 	#Opcode-kv3_v2-FFMSWDP_rounding_silent_registerM_registerZ_registerY_simple
	;;
	ffmswd $r52r53.lo = $r52r53r54r55.x, $r53 	#Opcode-kv3_v2-FFMSWD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmswp.rn.s $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v2-FFMSWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	ffmswq.ru $r30r31 = $r28r29r30r31.hi, $r32r33 	#Opcode-kv3_v2-FFMSWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	ffmsw.rd.s $r54r55.lo = $r52r53r54r55.z, $r55 	#Opcode-kv3_v2-FFMSW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fixedd.rz $r54r55.hi = $r52r53r54r55.t, 7 	#Opcode-kv3_v2-FIXEDD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixedud.rna.s $r56 = $r56r57.lo, 7 	#Opcode-kv3_v2-FIXEDUD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixeduwp.rnz $r56r57r58r59.x = $r57, 7 	#Opcode-kv3_v2-FIXEDUWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixeduw.ro.s $r56r57.hi = $r56r57r58r59.y, 7 	#Opcode-kv3_v2-FIXEDUW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixedwp $r58 = $r58r59.lo, 7 	#Opcode-kv3_v2-FIXEDWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fixedw.rn.s $r56r57r58r59.z = $r59, 7 	#Opcode-kv3_v2-FIXEDW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatd.ru $r58r59.hi = $r56r57r58r59.t, 7 	#Opcode-kv3_v2-FLOATD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatud.rd.s $r60 = $r60r61.lo, 7 	#Opcode-kv3_v2-FLOATUD_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatuwp.rz $r60r61r62r63.x = $r61, 7 	#Opcode-kv3_v2-FLOATUWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatuw.rna.s $r60r61.hi = $r60r61r62r63.y, 7 	#Opcode-kv3_v2-FLOATUW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatwp.rnz $r62 = $r62r63.lo, 7 	#Opcode-kv3_v2-FLOATWP_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	floatw.ro.s $r60r61r62r63.z = $r63, 7 	#Opcode-kv3_v2-FLOATW_rounding_silent_registerW_registerZ_unsigned6_simple
	;;
	fmaxd $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv3_v2-FMAXD_registerW_registerZ_registerY_simple
	;;
	fmaxhq $r0r1.lo = $r0r1r2r3.x, $r1 	#Opcode-kv3_v2-FMAXHQ_registerW_registerZ_registerY_simple
	;;
	fmaxwp $r0r1.hi = $r0r1r2r3.y, $r2 	#Opcode-kv3_v2-FMAXWP_registerW_registerZ_registerY_simple
	;;
	fmaxw $r2r3.lo = $r0r1r2r3.z, $r3 	#Opcode-kv3_v2-FMAXW_registerW_registerZ_registerY_simple
	;;
	fmind $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv3_v2-FMIND_registerW_registerZ_registerY_simple
	;;
	fminhq $r4r5.lo = $r4r5r6r7.x, $r5 	#Opcode-kv3_v2-FMINHQ_registerW_registerZ_registerY_simple
	;;
	fminwp $r4r5.hi = $r4r5r6r7.y, $r6 	#Opcode-kv3_v2-FMINWP_registerW_registerZ_registerY_simple
	;;
	fminw $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v2-FMINW_registerW_registerZ_registerY_simple
	;;
	fmm212w $r32r33r34r35.lo = $r6r7.hi, $r4r5r6r7.t 	#Opcode-kv3_v2-FMM212W_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmm222w.rn.s $r34r35 = $r32r33r34r35.hi, $r36r37 	#Opcode-kv3_v2-FMM222W_multransm_multransl_rounding_silent_registerM_registerP_registerO_simple
	;;
	fmma212w.ru $r36r37r38r39.lo = $r8, $r8r9.lo 	#Opcode-kv3_v2-FMMA212W_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmma222w.tn.rd.s $r38r39 = $r36r37r38r39.hi, $r40r41 	#Opcode-kv3_v2-FMMA222W_multransm_multransl_rounding_silent_registerM_registerP_registerO_simple
	;;
	fmms212w.rz $r40r41r42r43.lo = $r8r9r10r11.x, $r9 	#Opcode-kv3_v2-FMMS212W_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmms222w.nt.rna.s $r42r43 = $r40r41r42r43.hi, $r44r45 	#Opcode-kv3_v2-FMMS222W_multransm_multransl_rounding_silent_registerM_registerP_registerO_simple
	;;
	fmuld.rnz $r8r9.hi = $r8r9r10r11.y, $r10 	#Opcode-kv3_v2-FMULD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulho.ro.s $r44r45r46r47.lo = $r46r47, $r44r45r46r47.hi 	#Opcode-kv3_v2-FMULHO_rounding_silent_registerM_registerP_registerO_simple
	;;
	fmulhq $r10r11.lo = $r8r9r10r11.z, $r11 	#Opcode-kv3_v2-FMULHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulhwq.rn.s $r48r49 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv3_v2-FMULHWQ_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmulhw.ru $r12 = $sp, $r13 	#Opcode-kv3_v2-FMULHW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwcp.rd.s $r48r49r50r51.lo = $r50r51, $r48r49r50r51.hi 	#Opcode-kv3_v2-FMULWCP_conjugate_rounding_silent_registerM_registerP_registerO_simple
	;;
	fmulwc.c.rz $tp = $r14, $fp 	#Opcode-kv3_v2-FMULWC_conjugate_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwdp.rna.s $r52r53 = $r15, $rp 	#Opcode-kv3_v2-FMULWDP_rounding_silent_registerM_registerZ_registerY_simple
	;;
	fmulwd.rnz $r16 = $r16r17.lo, $r16r17r18r19.x 	#Opcode-kv3_v2-FMULWD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwp.ro.s $r17 = $r16r17.hi, $r16r17r18r19.y 	#Opcode-kv3_v2-FMULWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fmulwq $r52r53r54r55.lo = $r54r55, $r52r53r54r55.hi 	#Opcode-kv3_v2-FMULWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	fmulw.rn.s $r18 = $r18r19.lo, $r16r17r18r19.z 	#Opcode-kv3_v2-FMULW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fnarrowdwp.ru $r19 = $r56r57 	#Opcode-kv3_v2-FNARROWDWP_rounding2_silent2_registerW_registerP_simple
	;;
	fnarrowdw.rd.s $r18r19.hi = $r16r17r18r19.t 	#Opcode-kv3_v2-FNARROWDW_rounding2_silent2_registerW_registerZ_simple
	;;
	fnarrowwhq.rz $r20 = $r56r57r58r59.lo 	#Opcode-kv3_v2-FNARROWWHQ_rounding2_silent2_registerW_registerP_simple
	;;
	fnarrowwh.rna.s $r20r21.lo = $r20r21r22r23.x 	#Opcode-kv3_v2-FNARROWWH_rounding2_silent2_registerW_registerZ_simple
	;;
	fnegd $r21 = $r20r21.hi 	#Opcode-kv3_v2-FNEGD_registerW_registerZ_simple
	;;
	fneghq $r20r21r22r23.y = $r22 	#Opcode-kv3_v2-FNEGHQ_registerW_registerZ_simple
	;;
	fnegwp $r22r23.lo = $r20r21r22r23.z 	#Opcode-kv3_v2-FNEGWP_registerW_registerZ_simple
	;;
	fnegw $r23 = $r22r23.hi 	#Opcode-kv3_v2-FNEGW_registerW_registerZ_simple
	;;
	frecw.rnz $r20r21r22r23.t = $r24 	#Opcode-kv3_v2-FRECW_rounding2_silent2_registerW_registerZ_simple
	;;
	frsrw.ro.s $r24r25.lo = $r24r25r26r27.x 	#Opcode-kv3_v2-FRSRW_rounding2_silent2_registerW_registerZ_simple
	;;
	fsbfdc.c $r58r59 = $r56r57r58r59.hi, $r60r61 	#Opcode-kv3_v2-FSBFDC.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfdc.rn.s $r60r61r62r63.lo = $r62r63, $r60r61r62r63.hi 	#Opcode-kv3_v2-FSBFDC_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfdp.ru $r0r1 = $r0r1r2r3.lo, $r2r3 	#Opcode-kv3_v2-FSBFDP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfd.rd.s $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v2-FSBFD_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfho.rz $r0r1r2r3.hi = $r4r5, $r4r5r6r7.lo 	#Opcode-kv3_v2-FSBFHO_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfhq.rna.s $r26 = $r26r27.lo, $r24r25r26r27.z 	#Opcode-kv3_v2-FSBFHQ_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwc.c.rnz $r27 = $r26r27.hi, $r24r25r26r27.t 	#Opcode-kv3_v2-FSBFWC.C_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwcp.c.ro.s $r6r7 = $r4r5r6r7.hi, $r8r9 	#Opcode-kv3_v2-FSBFWCP.C_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfwcp $r8r9r10r11.lo = $r10r11, $r8r9r10r11.hi 	#Opcode-kv3_v2-FSBFWCP_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfwc.rn.s $r28 = $r28r29.lo, $r28r29r30r31.x 	#Opcode-kv3_v2-FSBFWC_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwp.ru $r29 = $r28r29.hi, $r28r29r30r31.y 	#Opcode-kv3_v2-FSBFWP_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsbfwq.rd.s $r12r13 = $r12r13r14r15.lo, $r14r15 	#Opcode-kv3_v2-FSBFWQ_rounding_silent_registerM_registerP_registerO_simple
	;;
	fsbfw.rz $r30 = $r30r31.lo, $r28r29r30r31.z 	#Opcode-kv3_v2-FSBFW_rounding_silent_registerW_registerZ_registerY_simple
	;;
	fsdivd.s $r31 = $r12r13r14r15.hi 	#Opcode-kv3_v2-FSDIVD_silent2_registerW_registerP_simple
	;;
	fsdivwp $r30r31.hi = $r16r17 	#Opcode-kv3_v2-FSDIVWP_silent2_registerW_registerP_simple
	;;
	fsdivw.s $r28r29r30r31.t = $r16r17r18r19.lo 	#Opcode-kv3_v2-FSDIVW_silent2_registerW_registerP_simple
	;;
	fsrecd $r32 = $r32r33.lo 	#Opcode-kv3_v2-FSRECD_silent2_registerW_registerZ_simple
	;;
	fsrecwp.s $r32r33r34r35.x = $r33 	#Opcode-kv3_v2-FSRECWP_silent2_registerW_registerZ_simple
	;;
	fsrecw $r32r33.hi = $r32r33r34r35.y 	#Opcode-kv3_v2-FSRECW_silent2_registerW_registerZ_simple
	;;
	fsrsrd $r34 = $r34r35.lo 	#Opcode-kv3_v2-FSRSRD_registerW_registerZ_simple
	;;
	fsrsrwp $r32r33r34r35.z = $r35 	#Opcode-kv3_v2-FSRSRWP_registerW_registerZ_simple
	;;
	fsrsrw $r34r35.hi = $r32r33r34r35.t 	#Opcode-kv3_v2-FSRSRW_registerW_registerZ_simple
	;;
	fwidenlhwp.s $r36 = $r36r37.lo 	#Opcode-kv3_v2-FWIDENLHWP_silent2_registerW_registerZ_simple
	;;
	fwidenlhw $r36r37r38r39.x = $r37 	#Opcode-kv3_v2-FWIDENLHW_silent2_registerW_registerZ_simple
	;;
	fwidenlwd.s $r36r37.hi = $r36r37r38r39.y 	#Opcode-kv3_v2-FWIDENLWD_silent2_registerW_registerZ_simple
	;;
	fwidenmhwp $r38 = $r38r39.lo 	#Opcode-kv3_v2-FWIDENMHWP_silent2_registerW_registerZ_simple
	;;
	fwidenmhw.s $r36r37r38r39.z = $r39 	#Opcode-kv3_v2-FWIDENMHW_silent2_registerW_registerZ_simple
	;;
	fwidenmwd $r38r39.hi = $r36r37r38r39.t 	#Opcode-kv3_v2-FWIDENMWD_silent2_registerW_registerZ_simple
	;;
	get $r40 = $pc 	#Opcode-kv3_v2-GET_registerZ_systemS2_simple
	;;
	get $r40r41.lo = $pc 	#Opcode-kv3_v2-GET_registerZ_systemS3_simple
	;;
	goto -33554432 	#Opcode-kv3_v2-GOTO_pcrel27_simple
	;;
	i1invals $r40r41r42r43.x[$r41] 	#Opcode-kv3_v2-I1INVALS_doscale_registerY_registerZ_simple
	;;
	i1invals 2305843009213693951[$r40r41.hi] 	#Opcode-kv3_v2-I1INVALS_extend27_upper27_lower10_registerZ_triple
	;;
	i1invals -64[$r40r41r42r43.y] 	#Opcode-kv3_v2-I1INVALS_signed10_registerZ_simple
	;;
	i1invals -8589934592[$r42] 	#Opcode-kv3_v2-I1INVALS_upper27_lower10_registerZ_double
	;;
	i1inval 	#Opcode-kv3_v2-I1INVAL_simple
	;;
	icall $r42r43.lo 	#Opcode-kv3_v2-ICALL_registerZ_simple
	;;
	iget $r40r41r42r43.z 	#Opcode-kv3_v2-IGET_registerZ_simple
	;;
	igoto $r43 	#Opcode-kv3_v2-IGOTO_registerZ_simple
	;;
	insf $r42r43.hi = $r40r41r42r43.t, 7, 7 	#Opcode-kv3_v2-INSF_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	iord $r44 = $r44r45.lo, 2305843009213693951 	#Opcode-kv3_v2-IORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	iord $r44r45r46r47.x = $r45, $r44r45.hi 	#Opcode-kv3_v2-IORD_registerW_registerZ_registerY_simple
	;;
	iord $r44r45r46r47.y = $r46, -64 	#Opcode-kv3_v2-IORD_registerW_registerZ_signed10_simple
	;;
	iord $r46r47.lo = $r44r45r46r47.z, -8589934592 	#Opcode-kv3_v2-IORD_registerW_registerZ_upper27_lower10_double
	;;
	iornd $r47 = $r46r47.hi, 2305843009213693951 	#Opcode-kv3_v2-IORND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	iornd $r44r45r46r47.t = $r48, $r48r49.lo 	#Opcode-kv3_v2-IORND_registerW_registerZ_registerY_simple
	;;
	iornd $r48r49r50r51.x = $r49, -64 	#Opcode-kv3_v2-IORND_registerW_registerZ_signed10_simple
	;;
	iornd $r48r49.hi = $r48r49r50r51.y, -8589934592 	#Opcode-kv3_v2-IORND_registerW_registerZ_upper27_lower10_double
	;;
	iornw $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v2-IORNW_registerW_registerZ_registerY_simple
	;;
	iornw $r51 = $r50r51.hi, -64 	#Opcode-kv3_v2-IORNW_registerW_registerZ_signed10_simple
	;;
	iornw $r48r49r50r51.t = $r52, -8589934592 	#Opcode-kv3_v2-IORNW_registerW_registerZ_upper27_lower10_double
	;;
	iorrbod $r52r53.lo = $r52r53r54r55.x 	#Opcode-kv3_v2-IORRBOD_registerW_registerZ_simple
	;;
	iorrhqd $r53 = $r52r53.hi 	#Opcode-kv3_v2-IORRHQD_registerW_registerZ_simple
	;;
	iorrwpd $r52r53r54r55.y = $r54 	#Opcode-kv3_v2-IORRWPD_registerW_registerZ_simple
	;;
	iorw $r54r55.lo = $r52r53r54r55.z, $r55 	#Opcode-kv3_v2-IORW_registerW_registerZ_registerY_simple
	;;
	iorw $r54r55.hi = $r52r53r54r55.t, -64 	#Opcode-kv3_v2-IORW_registerW_registerZ_signed10_simple
	;;
	iorw $r56 = $r56r57.lo, -8589934592 	#Opcode-kv3_v2-IORW_registerW_registerZ_upper27_lower10_double
	;;
	landd $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv3_v2-LANDD_registerW_registerZ_registerY_simple
	;;
	landw $r56r57r58r59.y = $r58, $r58r59.lo 	#Opcode-kv3_v2-LANDW_registerW_registerZ_registerY_simple
	;;
	landw $r56r57r58r59.z = $r59, 536870911 	#Opcode-kv3_v2-LANDW_registerW_registerZ_upper27_lower5_double
	;;
	lbs.xs $r58r59.hi = $r56r57r58r59.t[$r60] 	#Opcode-kv3_v2-LBS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lbs.s.dgtz $r60r61.lo? $r60r61r62r63.x = -1125899906842624[$r61] 	#Opcode-kv3_v2-LBS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lbs.u.odd $r60r61.hi? $r60r61r62r63.y = -8388608[$r62] 	#Opcode-kv3_v2-LBS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lbs.us.even $r62r63.lo? $r60r61r62r63.z = [$r63] 	#Opcode-kv3_v2-LBS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lbs $r62r63.hi = 2305843009213693951[$r60r61r62r63.t] 	#Opcode-kv3_v2-LBS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lbs.s $r0 = -64[$r0r1.lo] 	#Opcode-kv3_v2-LBS_variant_registerW_signed10_registerZ_simple
	;;
	lbs.u $r0r1r2r3.x = -8589934592[$r1] 	#Opcode-kv3_v2-LBS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lbz.us $r0r1.hi = $r0r1r2r3.y[$r2] 	#Opcode-kv3_v2-LBZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lbz.wnez $r2r3.lo? $r0r1r2r3.z = -1125899906842624[$r3] 	#Opcode-kv3_v2-LBZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lbz.s.weqz $r2r3.hi? $r0r1r2r3.t = -8388608[$r4] 	#Opcode-kv3_v2-LBZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lbz.u.wltz $r4r5.lo? $r4r5r6r7.x = [$r5] 	#Opcode-kv3_v2-LBZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lbz.us $r4r5.hi = 2305843009213693951[$r4r5r6r7.y] 	#Opcode-kv3_v2-LBZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lbz $r6 = -64[$r6r7.lo] 	#Opcode-kv3_v2-LBZ_variant_registerW_signed10_registerZ_simple
	;;
	lbz.s $r4r5r6r7.z = -8589934592[$r7] 	#Opcode-kv3_v2-LBZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	ld.u.xs $r6r7.hi = $r4r5r6r7.t[$r8] 	#Opcode-kv3_v2-LD_variant_doscale_registerW_registerY_registerZ_simple
	;;
	ld.us.wgez $r8r9.lo? $r8r9r10r11.x = -1125899906842624[$r9] 	#Opcode-kv3_v2-LD_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	ld.wlez $r8r9.hi? $r8r9r10r11.y = -8388608[$r10] 	#Opcode-kv3_v2-LD_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	ld.s.wgtz $r10r11.lo? $r8r9r10r11.z = [$r11] 	#Opcode-kv3_v2-LD_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	ld.u $r10r11.hi = 2305843009213693951[$r8r9r10r11.t] 	#Opcode-kv3_v2-LD_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	ld.us $r12 = -64[$sp] 	#Opcode-kv3_v2-LD_variant_registerW_signed10_registerZ_simple
	;;
	ld $r13 = -8589934592[$tp] 	#Opcode-kv3_v2-LD_variant_registerW_upper27_lower10_registerZ_double
	;;
	lhs.s $r14 = $fp[$r15] 	#Opcode-kv3_v2-LHS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lhs.u.dnez $rp? $r16 = -1125899906842624[$r16r17.lo] 	#Opcode-kv3_v2-LHS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lhs.us.deqz $r16r17r18r19.x? $r17 = -8388608[$r16r17.hi] 	#Opcode-kv3_v2-LHS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lhs.dltz $r16r17r18r19.y? $r18 = [$r18r19.lo] 	#Opcode-kv3_v2-LHS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lhs.s $r16r17r18r19.z = 2305843009213693951[$r19] 	#Opcode-kv3_v2-LHS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lhs.u $r18r19.hi = -64[$r16r17r18r19.t] 	#Opcode-kv3_v2-LHS_variant_registerW_signed10_registerZ_simple
	;;
	lhs.us $r20 = -8589934592[$r20r21.lo] 	#Opcode-kv3_v2-LHS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lhz.xs $r20r21r22r23.x = $r21[$r20r21.hi] 	#Opcode-kv3_v2-LHZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lhz.s.dgez $r20r21r22r23.y? $r22 = -1125899906842624[$r22r23.lo] 	#Opcode-kv3_v2-LHZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lhz.u.dlez $r20r21r22r23.z? $r23 = -8388608[$r22r23.hi] 	#Opcode-kv3_v2-LHZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lhz.us.dgtz $r20r21r22r23.t? $r24 = [$r24r25.lo] 	#Opcode-kv3_v2-LHZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lhz $r24r25r26r27.x = 2305843009213693951[$r25] 	#Opcode-kv3_v2-LHZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lhz.s $r24r25.hi = -64[$r24r25r26r27.y] 	#Opcode-kv3_v2-LHZ_variant_registerW_signed10_registerZ_simple
	;;
	lhz.u $r26 = -8589934592[$r26r27.lo] 	#Opcode-kv3_v2-LHZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	liord $r24r25r26r27.z = $r27, $r26r27.hi 	#Opcode-kv3_v2-LIORD_registerW_registerZ_registerY_simple
	;;
	liorw $r24r25r26r27.t = $r28, $r28r29.lo 	#Opcode-kv3_v2-LIORW_registerW_registerZ_registerY_simple
	;;
	liorw $r28r29r30r31.x = $r29, 536870911 	#Opcode-kv3_v2-LIORW_registerW_registerZ_upper27_lower5_double
	;;
	lnandd $r28r29.hi = $r28r29r30r31.y, $r30 	#Opcode-kv3_v2-LNANDD_registerW_registerZ_registerY_simple
	;;
	lnandw $r30r31.lo = $r28r29r30r31.z, $r31 	#Opcode-kv3_v2-LNANDW_registerW_registerZ_registerY_simple
	;;
	lnandw $r30r31.hi = $r28r29r30r31.t, 536870911 	#Opcode-kv3_v2-LNANDW_registerW_registerZ_upper27_lower5_double
	;;
	lniord $r32 = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv3_v2-LNIORD_registerW_registerZ_registerY_simple
	;;
	lniorw $r33 = $r32r33.hi, $r32r33r34r35.y 	#Opcode-kv3_v2-LNIORW_registerW_registerZ_registerY_simple
	;;
	lniorw $r34 = $r34r35.lo, 536870911 	#Opcode-kv3_v2-LNIORW_registerW_registerZ_upper27_lower5_double
	;;
	lnord $r32r33r34r35.z = $r35, $r34r35.hi 	#Opcode-kv3_v2-LNORD_registerW_registerZ_registerY_simple
	;;
	lnorw $r32r33r34r35.t = $r36, $r36r37.lo 	#Opcode-kv3_v2-LNORW_registerW_registerZ_registerY_simple
	;;
	lnorw $r36r37r38r39.x = $r37, 536870911 	#Opcode-kv3_v2-LNORW_registerW_registerZ_upper27_lower5_double
	;;
	loopdo $r36r37.hi, -32768 	#Opcode-kv3_v2-LOOPDO_registerZ_pcrel17_simple
	;;
	lord $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv3_v2-LORD_registerW_registerZ_registerY_simple
	;;
	lorw $r36r37r38r39.z = $r39, $r38r39.hi 	#Opcode-kv3_v2-LORW_registerW_registerZ_registerY_simple
	;;
	lorw $r36r37r38r39.t = $r40, 536870911 	#Opcode-kv3_v2-LORW_registerW_registerZ_upper27_lower5_double
	;;
	lo.us $r4r5r6r7 = $r40r41.lo[$r40r41r42r43.x] 	#Opcode-kv3_v2-LO_variant_doscale_registerN_registerY_registerZ_simple
	;;
	lo.u0 $r41? $r8r9r10r11 = -1125899906842624[$r40r41.hi] 	#Opcode-kv3_v2-LO_variant_lsomask_registerY_registerN_extend27_offset27_registerZ_triple
	;;
	lo.s.u1 $r40r41r42r43.y? $r12r13r14r15 = -8388608[$r42] 	#Opcode-kv3_v2-LO_variant_lsomask_registerY_registerN_offset27_registerZ_double
	;;
	lo.u.u2 $r42r43.lo? $r16r17r18r19 = [$r40r41r42r43.z] 	#Opcode-kv3_v2-LO_variant_lsomask_registerY_registerN_registerZ_simple
	;;
	lo.us.odd $r43? $r20r21r22r23 = -1125899906842624[$r42r43.hi] 	#Opcode-kv3_v2-LO_variant_lsucond_registerY_registerN_extend27_offset27_registerZ_triple
	;;
	lo.even $r40r41r42r43.t? $r24r25r26r27 = -8388608[$r44] 	#Opcode-kv3_v2-LO_variant_lsucond_registerY_registerN_offset27_registerZ_double
	;;
	lo.s.wnez $r44r45.lo? $r28r29r30r31 = [$r44r45r46r47.x] 	#Opcode-kv3_v2-LO_variant_lsucond_registerY_registerN_registerZ_simple
	;;
	lo.u $r32r33r34r35 = 2305843009213693951[$r45] 	#Opcode-kv3_v2-LO_variant_registerN_extend27_upper27_lower10_registerZ_triple
	;;
	lo.us $r36r37r38r39 = -64[$r44r45.hi] 	#Opcode-kv3_v2-LO_variant_registerN_signed10_registerZ_simple
	;;
	lo $r40r41r42r43 = -8589934592[$r44r45r46r47.y] 	#Opcode-kv3_v2-LO_variant_registerN_upper27_lower10_registerZ_double
	;;
	lq.s.xs $r18r19 = $r46[$r46r47.lo] 	#Opcode-kv3_v2-LQ_variant_doscale_registerM_registerY_registerZ_simple
	;;
	lq.u.weqz $r44r45r46r47.z? $r16r17r18r19.hi = -1125899906842624[$r47] 	#Opcode-kv3_v2-LQ_variant_lsucond_registerY_registerM_extend27_offset27_registerZ_triple
	;;
	lq.us.wltz $r46r47.hi? $r20r21 = -8388608[$r44r45r46r47.t] 	#Opcode-kv3_v2-LQ_variant_lsucond_registerY_registerM_offset27_registerZ_double
	;;
	lq.wgez $r48? $r20r21r22r23.lo = [$r48r49.lo] 	#Opcode-kv3_v2-LQ_variant_lsucond_registerY_registerM_registerZ_simple
	;;
	lq.s $r22r23 = 2305843009213693951[$r48r49r50r51.x] 	#Opcode-kv3_v2-LQ_variant_registerM_extend27_upper27_lower10_registerZ_triple
	;;
	lq.u $r20r21r22r23.hi = -64[$r49] 	#Opcode-kv3_v2-LQ_variant_registerM_signed10_registerZ_simple
	;;
	lq.us $r24r25 = -8589934592[$r48r49.hi] 	#Opcode-kv3_v2-LQ_variant_registerM_upper27_lower10_registerZ_double
	;;
	lws $r48r49r50r51.y = $r50[$r50r51.lo] 	#Opcode-kv3_v2-LWS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lws.s.wlez $r48r49r50r51.z? $r51 = -1125899906842624[$r50r51.hi] 	#Opcode-kv3_v2-LWS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lws.u.wgtz $r48r49r50r51.t? $r52 = -8388608[$r52r53.lo] 	#Opcode-kv3_v2-LWS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lws.us.dnez $r52r53r54r55.x? $r53 = [$r52r53.hi] 	#Opcode-kv3_v2-LWS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lws $r52r53r54r55.y = 2305843009213693951[$r54] 	#Opcode-kv3_v2-LWS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lws.s $r54r55.lo = -64[$r52r53r54r55.z] 	#Opcode-kv3_v2-LWS_variant_registerW_signed10_registerZ_simple
	;;
	lws.u $r55 = -8589934592[$r54r55.hi] 	#Opcode-kv3_v2-LWS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lwz.us.xs $r52r53r54r55.t = $r56[$r56r57.lo] 	#Opcode-kv3_v2-LWZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lwz.deqz $r56r57r58r59.x? $r57 = -1125899906842624[$r56r57.hi] 	#Opcode-kv3_v2-LWZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lwz.s.dltz $r56r57r58r59.y? $r58 = -8388608[$r58r59.lo] 	#Opcode-kv3_v2-LWZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lwz.u.dgez $r56r57r58r59.z? $r59 = [$r58r59.hi] 	#Opcode-kv3_v2-LWZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lwz.us $r56r57r58r59.t = 2305843009213693951[$r60] 	#Opcode-kv3_v2-LWZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lwz $r60r61.lo = -64[$r60r61r62r63.x] 	#Opcode-kv3_v2-LWZ_variant_registerW_signed10_registerZ_simple
	;;
	lwz.s $r61 = -8589934592[$r60r61.hi] 	#Opcode-kv3_v2-LWZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	madddt $r24r25r26r27.lo = $r60r61r62r63.y, $r62 	#Opcode-kv3_v2-MADDDT_registerM_registerZ_registerY_simple
	;;
	maddd $r62r63.lo = $r60r61r62r63.z, $r63 	#Opcode-kv3_v2-MADDD_registerW_registerZ_registerY_simple
	;;
	maddd $r62r63.hi = $r60r61r62r63.t, 536870911 	#Opcode-kv3_v2-MADDD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maddhq $r0 = $r0r1.lo, $r0r1r2r3.x 	#Opcode-kv3_v2-MADDHQ_registerW_registerZ_registerY_simple
	;;
	maddhq $r1 = $r0r1.hi, 536870911.@ 	#Opcode-kv3_v2-MADDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maddhwq $r26r27 = $r0r1r2r3.y, $r2 	#Opcode-kv3_v2-MADDHWQ_registerM_registerZ_registerY_simple
	;;
	maddmwq $r24r25r26r27.hi = $r28r29, $r28r29r30r31.lo 	#Opcode-kv3_v2-MADDMWQ_registerM_registerP_registerO_simple
	;;
	maddsudt $r30r31 = $r2r3.lo, $r0r1r2r3.z 	#Opcode-kv3_v2-MADDSUDT_registerM_registerZ_registerY_simple
	;;
	maddsuhwq $r28r29r30r31.hi = $r3, $r2r3.hi 	#Opcode-kv3_v2-MADDSUHWQ_registerM_registerZ_registerY_simple
	;;
	maddsumwq $r32r33 = $r32r33r34r35.lo, $r34r35 	#Opcode-kv3_v2-MADDSUMWQ_registerM_registerP_registerO_simple
	;;
	maddsuwdp $r32r33r34r35.hi = $r0r1r2r3.t, $r4 	#Opcode-kv3_v2-MADDSUWDP_registerM_registerZ_registerY_simple
	;;
	maddsuwdp $r36r37 = $r4r5.lo, 536870911 	#Opcode-kv3_v2-MADDSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	maddsuwd $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv3_v2-MADDSUWD_registerW_registerZ_registerY_simple
	;;
	maddsuwd $r4r5r6r7.y = $r6, 536870911 	#Opcode-kv3_v2-MADDSUWD_registerW_registerZ_upper27_lower5_double
	;;
	maddudt $r36r37r38r39.lo = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v2-MADDUDT_registerM_registerZ_registerY_simple
	;;
	madduhwq $r38r39 = $r7, $r6r7.hi 	#Opcode-kv3_v2-MADDUHWQ_registerM_registerZ_registerY_simple
	;;
	maddumwq $r36r37r38r39.hi = $r40r41, $r40r41r42r43.lo 	#Opcode-kv3_v2-MADDUMWQ_registerM_registerP_registerO_simple
	;;
	madduwdp $r42r43 = $r4r5r6r7.t, $r8 	#Opcode-kv3_v2-MADDUWDP_registerM_registerZ_registerY_simple
	;;
	madduwdp $r40r41r42r43.hi = $r8r9.lo, 536870911.@ 	#Opcode-kv3_v2-MADDUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	madduwd $r8r9r10r11.x = $r9, $r8r9.hi 	#Opcode-kv3_v2-MADDUWD_registerW_registerZ_registerY_simple
	;;
	madduwd $r8r9r10r11.y = $r10, 536870911 	#Opcode-kv3_v2-MADDUWD_registerW_registerZ_upper27_lower5_double
	;;
	madduzdt $r44r45 = $r10r11.lo, $r8r9r10r11.z 	#Opcode-kv3_v2-MADDUZDT_registerM_registerZ_registerY_simple
	;;
	maddwdp $r44r45r46r47.lo = $r11, $r10r11.hi 	#Opcode-kv3_v2-MADDWDP_registerM_registerZ_registerY_simple
	;;
	maddwdp $r46r47 = $r8r9r10r11.t, 536870911 	#Opcode-kv3_v2-MADDWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	maddwd $r12 = $sp, $r13 	#Opcode-kv3_v2-MADDWD_registerW_registerZ_registerY_simple
	;;
	maddwd $tp = $r14, 536870911 	#Opcode-kv3_v2-MADDWD_registerW_registerZ_upper27_lower5_double
	;;
	maddwp $fp = $r15, $rp 	#Opcode-kv3_v2-MADDWP_registerW_registerZ_registerY_simple
	;;
	maddwp $r16 = $r16r17.lo, 536870911.@ 	#Opcode-kv3_v2-MADDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maddwq $r44r45r46r47.hi = $r48r49, $r48r49r50r51.lo 	#Opcode-kv3_v2-MADDWQ_registerM_registerP_registerO_simple
	;;
	maddw $r16r17r18r19.x = $r17, $r16r17.hi 	#Opcode-kv3_v2-MADDW_registerW_registerZ_registerY_simple
	;;
	maddw $r16r17r18r19.y = $r18, 536870911 	#Opcode-kv3_v2-MADDW_registerW_registerZ_upper27_lower5_double
	;;
	make $r18r19.lo = 2305843009213693951 	#Opcode-kv3_v2-MAKE_registerW_extend27_upper27_lower10_triple
	;;
	make $r16r17r18r19.z = -549755813888 	#Opcode-kv3_v2-MAKE_registerW_extend6_upper27_lower10_double
	;;
	make $r19 = -4096 	#Opcode-kv3_v2-MAKE_registerW_signed16_simple
	;;
	maxbo $r18r19.hi = $r16r17r18r19.t, $r20 	#Opcode-kv3_v2-MAXBO_registerW_registerZ_registerY_simple
	;;
	maxbo $r20r21.lo = $r20r21r22r23.x, 536870911 	#Opcode-kv3_v2-MAXBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxd $r21 = $r20r21.hi, 2305843009213693951 	#Opcode-kv3_v2-MAXD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maxd $r20r21r22r23.y = $r22, $r22r23.lo 	#Opcode-kv3_v2-MAXD_registerW_registerZ_registerY_simple
	;;
	maxd $r20r21r22r23.z = $r23, -64 	#Opcode-kv3_v2-MAXD_registerW_registerZ_signed10_simple
	;;
	maxd $r22r23.hi = $r20r21r22r23.t, -8589934592 	#Opcode-kv3_v2-MAXD_registerW_registerZ_upper27_lower10_double
	;;
	maxhq $r24 = $r24r25.lo, $r24r25r26r27.x 	#Opcode-kv3_v2-MAXHQ_registerW_registerZ_registerY_simple
	;;
	maxhq $r25 = $r24r25.hi, 536870911.@ 	#Opcode-kv3_v2-MAXHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxrbod $r24r25r26r27.y = $r26 	#Opcode-kv3_v2-MAXRBOD_registerW_registerZ_simple
	;;
	maxrhqd $r26r27.lo = $r24r25r26r27.z 	#Opcode-kv3_v2-MAXRHQD_registerW_registerZ_simple
	;;
	maxrwpd $r27 = $r26r27.hi 	#Opcode-kv3_v2-MAXRWPD_registerW_registerZ_simple
	;;
	maxubo $r24r25r26r27.t = $r28, $r28r29.lo 	#Opcode-kv3_v2-MAXUBO_registerW_registerZ_registerY_simple
	;;
	maxubo $r28r29r30r31.x = $r29, 536870911 	#Opcode-kv3_v2-MAXUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxud $r28r29.hi = $r28r29r30r31.y, 2305843009213693951 	#Opcode-kv3_v2-MAXUD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maxud $r30 = $r30r31.lo, $r28r29r30r31.z 	#Opcode-kv3_v2-MAXUD_registerW_registerZ_registerY_simple
	;;
	maxud $r31 = $r30r31.hi, -64 	#Opcode-kv3_v2-MAXUD_registerW_registerZ_signed10_simple
	;;
	maxud $r28r29r30r31.t = $r32, -8589934592 	#Opcode-kv3_v2-MAXUD_registerW_registerZ_upper27_lower10_double
	;;
	maxuhq $r32r33.lo = $r32r33r34r35.x, $r33 	#Opcode-kv3_v2-MAXUHQ_registerW_registerZ_registerY_simple
	;;
	maxuhq $r32r33.hi = $r32r33r34r35.y, 536870911.@ 	#Opcode-kv3_v2-MAXUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxurbod $r34 = $r34r35.lo 	#Opcode-kv3_v2-MAXURBOD_registerW_registerZ_simple
	;;
	maxurhqd $r32r33r34r35.z = $r35 	#Opcode-kv3_v2-MAXURHQD_registerW_registerZ_simple
	;;
	maxurwpd $r34r35.hi = $r32r33r34r35.t 	#Opcode-kv3_v2-MAXURWPD_registerW_registerZ_simple
	;;
	maxuwp $r36 = $r36r37.lo, $r36r37r38r39.x 	#Opcode-kv3_v2-MAXUWP_registerW_registerZ_registerY_simple
	;;
	maxuwp $r37 = $r36r37.hi, 536870911 	#Opcode-kv3_v2-MAXUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxuw $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv3_v2-MAXUW_registerW_registerZ_registerY_simple
	;;
	maxuw $r36r37r38r39.z = $r39, -64 	#Opcode-kv3_v2-MAXUW_registerW_registerZ_signed10_simple
	;;
	maxuw $r38r39.hi = $r36r37r38r39.t, -8589934592 	#Opcode-kv3_v2-MAXUW_registerW_registerZ_upper27_lower10_double
	;;
	maxwp $r40 = $r40r41.lo, $r40r41r42r43.x 	#Opcode-kv3_v2-MAXWP_registerW_registerZ_registerY_simple
	;;
	maxwp $r41 = $r40r41.hi, 536870911.@ 	#Opcode-kv3_v2-MAXWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxw $r40r41r42r43.y = $r42, $r42r43.lo 	#Opcode-kv3_v2-MAXW_registerW_registerZ_registerY_simple
	;;
	maxw $r40r41r42r43.z = $r43, -64 	#Opcode-kv3_v2-MAXW_registerW_registerZ_signed10_simple
	;;
	maxw $r42r43.hi = $r40r41r42r43.t, -8589934592 	#Opcode-kv3_v2-MAXW_registerW_registerZ_upper27_lower10_double
	;;
	minbo $r44 = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv3_v2-MINBO_registerW_registerZ_registerY_simple
	;;
	minbo $r45 = $r44r45.hi, 536870911 	#Opcode-kv3_v2-MINBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mind $r44r45r46r47.y = $r46, 2305843009213693951 	#Opcode-kv3_v2-MIND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	mind $r46r47.lo = $r44r45r46r47.z, $r47 	#Opcode-kv3_v2-MIND_registerW_registerZ_registerY_simple
	;;
	mind $r46r47.hi = $r44r45r46r47.t, -64 	#Opcode-kv3_v2-MIND_registerW_registerZ_signed10_simple
	;;
	mind $r48 = $r48r49.lo, -8589934592 	#Opcode-kv3_v2-MIND_registerW_registerZ_upper27_lower10_double
	;;
	minhq $r48r49r50r51.x = $r49, $r48r49.hi 	#Opcode-kv3_v2-MINHQ_registerW_registerZ_registerY_simple
	;;
	minhq $r48r49r50r51.y = $r50, 536870911.@ 	#Opcode-kv3_v2-MINHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minrbod $r50r51.lo = $r48r49r50r51.z 	#Opcode-kv3_v2-MINRBOD_registerW_registerZ_simple
	;;
	minrhqd $r51 = $r50r51.hi 	#Opcode-kv3_v2-MINRHQD_registerW_registerZ_simple
	;;
	minrwpd $r48r49r50r51.t = $r52 	#Opcode-kv3_v2-MINRWPD_registerW_registerZ_simple
	;;
	minubo $r52r53.lo = $r52r53r54r55.x, $r53 	#Opcode-kv3_v2-MINUBO_registerW_registerZ_registerY_simple
	;;
	minubo $r52r53.hi = $r52r53r54r55.y, 536870911 	#Opcode-kv3_v2-MINUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minud $r54 = $r54r55.lo, 2305843009213693951 	#Opcode-kv3_v2-MINUD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	minud $r52r53r54r55.z = $r55, $r54r55.hi 	#Opcode-kv3_v2-MINUD_registerW_registerZ_registerY_simple
	;;
	minud $r52r53r54r55.t = $r56, -64 	#Opcode-kv3_v2-MINUD_registerW_registerZ_signed10_simple
	;;
	minud $r56r57.lo = $r56r57r58r59.x, -8589934592 	#Opcode-kv3_v2-MINUD_registerW_registerZ_upper27_lower10_double
	;;
	minuhq $r57 = $r56r57.hi, $r56r57r58r59.y 	#Opcode-kv3_v2-MINUHQ_registerW_registerZ_registerY_simple
	;;
	minuhq $r58 = $r58r59.lo, 536870911.@ 	#Opcode-kv3_v2-MINUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minurbod $r56r57r58r59.z = $r59 	#Opcode-kv3_v2-MINURBOD_registerW_registerZ_simple
	;;
	minurhqd $r58r59.hi = $r56r57r58r59.t 	#Opcode-kv3_v2-MINURHQD_registerW_registerZ_simple
	;;
	minurwpd $r60 = $r60r61.lo 	#Opcode-kv3_v2-MINURWPD_registerW_registerZ_simple
	;;
	minuwp $r60r61r62r63.x = $r61, $r60r61.hi 	#Opcode-kv3_v2-MINUWP_registerW_registerZ_registerY_simple
	;;
	minuwp $r60r61r62r63.y = $r62, 536870911 	#Opcode-kv3_v2-MINUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minuw $r62r63.lo = $r60r61r62r63.z, $r63 	#Opcode-kv3_v2-MINUW_registerW_registerZ_registerY_simple
	;;
	minuw $r62r63.hi = $r60r61r62r63.t, -64 	#Opcode-kv3_v2-MINUW_registerW_registerZ_signed10_simple
	;;
	minuw $r0 = $r0r1.lo, -8589934592 	#Opcode-kv3_v2-MINUW_registerW_registerZ_upper27_lower10_double
	;;
	minwp $r0r1r2r3.x = $r1, $r0r1.hi 	#Opcode-kv3_v2-MINWP_registerW_registerZ_registerY_simple
	;;
	minwp $r0r1r2r3.y = $r2, 536870911.@ 	#Opcode-kv3_v2-MINWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minw $r2r3.lo = $r0r1r2r3.z, $r3 	#Opcode-kv3_v2-MINW_registerW_registerZ_registerY_simple
	;;
	minw $r2r3.hi = $r0r1r2r3.t, -64 	#Opcode-kv3_v2-MINW_registerW_registerZ_signed10_simple
	;;
	minw $r4 = $r4r5.lo, -8589934592 	#Opcode-kv3_v2-MINW_registerW_registerZ_upper27_lower10_double
	;;
	mm212w $r50r51 = $r4r5r6r7.x, $r5 	#Opcode-kv3_v2-MM212W_registerM_registerZ_registerY_simple
	;;
	mm212w $r48r49r50r51.hi = $r4r5.hi, 536870911 	#Opcode-kv3_v2-MM212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mma212w $r52r53 = $r4r5r6r7.y, $r6 	#Opcode-kv3_v2-MMA212W_registerM_registerZ_registerY_simple
	;;
	mma212w $r52r53r54r55.lo = $r6r7.lo, 536870911.@ 	#Opcode-kv3_v2-MMA212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mms212w $r54r55 = $r4r5r6r7.z, $r7 	#Opcode-kv3_v2-MMS212W_registerM_registerZ_registerY_simple
	;;
	mms212w $r52r53r54r55.hi = $r6r7.hi, 536870911 	#Opcode-kv3_v2-MMS212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfdt $r56r57 = $r4r5r6r7.t, $r8 	#Opcode-kv3_v2-MSBFDT_registerM_registerZ_registerY_simple
	;;
	msbfd $r8r9.lo = $r8r9r10r11.x, $r9 	#Opcode-kv3_v2-MSBFD_registerW_registerZ_registerY_simple
	;;
	msbfd $r8r9.hi = $r8r9r10r11.y, 536870911.@ 	#Opcode-kv3_v2-MSBFD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfhq $r10 = $r10r11.lo, $r8r9r10r11.z 	#Opcode-kv3_v2-MSBFHQ_registerW_registerZ_registerY_simple
	;;
	msbfhq $r11 = $r10r11.hi, 536870911 	#Opcode-kv3_v2-MSBFHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfhwq $r56r57r58r59.lo = $r8r9r10r11.t, $r12 	#Opcode-kv3_v2-MSBFHWQ_registerM_registerZ_registerY_simple
	;;
	msbfmwq $r58r59 = $r56r57r58r59.hi, $r60r61 	#Opcode-kv3_v2-MSBFMWQ_registerM_registerP_registerO_simple
	;;
	msbfsudt $r60r61r62r63.lo = $sp, $r13 	#Opcode-kv3_v2-MSBFSUDT_registerM_registerZ_registerY_simple
	;;
	msbfsuhwq $r62r63 = $tp, $r14 	#Opcode-kv3_v2-MSBFSUHWQ_registerM_registerZ_registerY_simple
	;;
	msbfsumwq $r60r61r62r63.hi = $r0r1, $r0r1r2r3.lo 	#Opcode-kv3_v2-MSBFSUMWQ_registerM_registerP_registerO_simple
	;;
	msbfsuwdp $r2r3 = $fp, $r15 	#Opcode-kv3_v2-MSBFSUWDP_registerM_registerZ_registerY_simple
	;;
	msbfsuwdp $r0r1r2r3.hi = $rp, 536870911.@ 	#Opcode-kv3_v2-MSBFSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfsuwd $r16 = $r16r17.lo, $r16r17r18r19.x 	#Opcode-kv3_v2-MSBFSUWD_registerW_registerZ_registerY_simple
	;;
	msbfsuwd $r17 = $r16r17.hi, 536870911 	#Opcode-kv3_v2-MSBFSUWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfudt $r4r5 = $r16r17r18r19.y, $r18 	#Opcode-kv3_v2-MSBFUDT_registerM_registerZ_registerY_simple
	;;
	msbfuhwq $r4r5r6r7.lo = $r18r19.lo, $r16r17r18r19.z 	#Opcode-kv3_v2-MSBFUHWQ_registerM_registerZ_registerY_simple
	;;
	msbfumwq $r6r7 = $r4r5r6r7.hi, $r8r9 	#Opcode-kv3_v2-MSBFUMWQ_registerM_registerP_registerO_simple
	;;
	msbfuwdp $r8r9r10r11.lo = $r19, $r18r19.hi 	#Opcode-kv3_v2-MSBFUWDP_registerM_registerZ_registerY_simple
	;;
	msbfuwdp $r10r11 = $r16r17r18r19.t, 536870911 	#Opcode-kv3_v2-MSBFUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfuwd $r20 = $r20r21.lo, $r20r21r22r23.x 	#Opcode-kv3_v2-MSBFUWD_registerW_registerZ_registerY_simple
	;;
	msbfuwd $r21 = $r20r21.hi, 536870911 	#Opcode-kv3_v2-MSBFUWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfuzdt $r8r9r10r11.hi = $r20r21r22r23.y, $r22 	#Opcode-kv3_v2-MSBFUZDT_registerM_registerZ_registerY_simple
	;;
	msbfwdp $r12r13 = $r22r23.lo, $r20r21r22r23.z 	#Opcode-kv3_v2-MSBFWDP_registerM_registerZ_registerY_simple
	;;
	msbfwdp $r12r13r14r15.lo = $r23, 536870911.@ 	#Opcode-kv3_v2-MSBFWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfwd $r22r23.hi = $r20r21r22r23.t, $r24 	#Opcode-kv3_v2-MSBFWD_registerW_registerZ_registerY_simple
	;;
	msbfwd $r24r25.lo = $r24r25r26r27.x, 536870911 	#Opcode-kv3_v2-MSBFWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfwp $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v2-MSBFWP_registerW_registerZ_registerY_simple
	;;
	msbfwp $r26 = $r26r27.lo, 536870911 	#Opcode-kv3_v2-MSBFWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfwq $r14r15 = $r12r13r14r15.hi, $r16r17 	#Opcode-kv3_v2-MSBFWQ_registerM_registerP_registerO_simple
	;;
	msbfw $r24r25r26r27.z = $r27, $r26r27.hi 	#Opcode-kv3_v2-MSBFW_registerW_registerZ_registerY_simple
	;;
	msbfw $r24r25r26r27.t = $r28, 536870911 	#Opcode-kv3_v2-MSBFW_registerW_registerZ_upper27_lower5_double
	;;
	muldt $r16r17r18r19.lo = $r28r29.lo, $r28r29r30r31.x 	#Opcode-kv3_v2-MULDT_registerM_registerZ_registerY_simple
	;;
	muld $r29 = $r28r29.hi, $r28r29r30r31.y 	#Opcode-kv3_v2-MULD_registerW_registerZ_registerY_simple
	;;
	muld $r30 = $r30r31.lo, 536870911.@ 	#Opcode-kv3_v2-MULD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mulhq $r28r29r30r31.z = $r31, $r30r31.hi 	#Opcode-kv3_v2-MULHQ_registerW_registerZ_registerY_simple
	;;
	mulhq $r28r29r30r31.t = $r32, 536870911 	#Opcode-kv3_v2-MULHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mulhwq $r18r19 = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv3_v2-MULHWQ_registerM_registerZ_registerY_simple
	;;
	mulmwq $r16r17r18r19.hi = $r20r21, $r20r21r22r23.lo 	#Opcode-kv3_v2-MULMWQ_registerM_registerP_registerO_simple
	;;
	mulsudt $r22r23 = $r33, $r32r33.hi 	#Opcode-kv3_v2-MULSUDT_registerM_registerZ_registerY_simple
	;;
	mulsuhwq $r20r21r22r23.hi = $r32r33r34r35.y, $r34 	#Opcode-kv3_v2-MULSUHWQ_registerM_registerZ_registerY_simple
	;;
	mulsumwq $r24r25 = $r24r25r26r27.lo, $r26r27 	#Opcode-kv3_v2-MULSUMWQ_registerM_registerP_registerO_simple
	;;
	mulsuwdp $r24r25r26r27.hi = $r34r35.lo, $r32r33r34r35.z 	#Opcode-kv3_v2-MULSUWDP_registerM_registerZ_registerY_simple
	;;
	mulsuwdp $r28r29 = $r35, 536870911.@ 	#Opcode-kv3_v2-MULSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mulsuwd $r34r35.hi = $r32r33r34r35.t, $r36 	#Opcode-kv3_v2-MULSUWD_registerW_registerZ_registerY_simple
	;;
	mulsuwd $r36r37.lo = $r36r37r38r39.x, 536870911 	#Opcode-kv3_v2-MULSUWD_registerW_registerZ_upper27_lower5_double
	;;
	muludt $r28r29r30r31.lo = $r37, $r36r37.hi 	#Opcode-kv3_v2-MULUDT_registerM_registerZ_registerY_simple
	;;
	muluhwq $r30r31 = $r36r37r38r39.y, $r38 	#Opcode-kv3_v2-MULUHWQ_registerM_registerZ_registerY_simple
	;;
	mulumwq $r28r29r30r31.hi = $r32r33, $r32r33r34r35.lo 	#Opcode-kv3_v2-MULUMWQ_registerM_registerP_registerO_simple
	;;
	muluwdp $r34r35 = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv3_v2-MULUWDP_registerM_registerZ_registerY_simple
	;;
	muluwdp $r32r33r34r35.hi = $r39, 536870911 	#Opcode-kv3_v2-MULUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	muluwd $r38r39.hi = $r36r37r38r39.t, $r40 	#Opcode-kv3_v2-MULUWD_registerW_registerZ_registerY_simple
	;;
	muluwd $r40r41.lo = $r40r41r42r43.x, 536870911 	#Opcode-kv3_v2-MULUWD_registerW_registerZ_upper27_lower5_double
	;;
	mulwdp $r36r37 = $r41, $r40r41.hi 	#Opcode-kv3_v2-MULWDP_registerM_registerZ_registerY_simple
	;;
	mulwdp $r36r37r38r39.lo = $r40r41r42r43.y, 536870911.@ 	#Opcode-kv3_v2-MULWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mulwd $r42 = $r42r43.lo, $r40r41r42r43.z 	#Opcode-kv3_v2-MULWD_registerW_registerZ_registerY_simple
	;;
	mulwd $r43 = $r42r43.hi, 536870911 	#Opcode-kv3_v2-MULWD_registerW_registerZ_upper27_lower5_double
	;;
	mulwp $r40r41r42r43.t = $r44, $r44r45.lo 	#Opcode-kv3_v2-MULWP_registerW_registerZ_registerY_simple
	;;
	mulwp $r44r45r46r47.x = $r45, 536870911 	#Opcode-kv3_v2-MULWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mulwq $r38r39 = $r36r37r38r39.hi, $r40r41 	#Opcode-kv3_v2-MULWQ_registerM_registerP_registerO_simple
	;;
	mulw $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv3_v2-MULW_registerW_registerZ_registerY_simple
	;;
	mulw $r46r47.lo = $r44r45r46r47.z, 536870911 	#Opcode-kv3_v2-MULW_registerW_registerZ_upper27_lower5_double
	;;
	nandd $r47 = $r46r47.hi, 2305843009213693951 	#Opcode-kv3_v2-NANDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	nandd $r44r45r46r47.t = $r48, $r48r49.lo 	#Opcode-kv3_v2-NANDD_registerW_registerZ_registerY_simple
	;;
	nandd $r48r49r50r51.x = $r49, -64 	#Opcode-kv3_v2-NANDD_registerW_registerZ_signed10_simple
	;;
	nandd $r48r49.hi = $r48r49r50r51.y, -8589934592 	#Opcode-kv3_v2-NANDD_registerW_registerZ_upper27_lower10_double
	;;
	nandw $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v2-NANDW_registerW_registerZ_registerY_simple
	;;
	nandw $r51 = $r50r51.hi, -64 	#Opcode-kv3_v2-NANDW_registerW_registerZ_signed10_simple
	;;
	nandw $r48r49r50r51.t = $r52, -8589934592 	#Opcode-kv3_v2-NANDW_registerW_registerZ_upper27_lower10_double
	;;
	negbo $r52r53.lo = $r52r53r54r55.x 	#Opcode-kv3_v2-NEGBO_registerW_registerZ_double
	;;
	negd $r53 = $r52r53.hi 	#Opcode-kv3_v2-NEGD_registerW_registerZ_simple
	;;
	neghq $r52r53r54r55.y = $r54 	#Opcode-kv3_v2-NEGHQ_registerW_registerZ_double
	;;
	negsbo $r54r55.lo = $r52r53r54r55.z 	#Opcode-kv3_v2-NEGSBO_registerW_registerZ_double
	;;
	negsd $r55 = $r54r55.hi 	#Opcode-kv3_v2-NEGSD_registerW_registerZ_double
	;;
	negshq $r52r53r54r55.t = $r56 	#Opcode-kv3_v2-NEGSHQ_registerW_registerZ_double
	;;
	negswp $r56r57.lo = $r56r57r58r59.x 	#Opcode-kv3_v2-NEGSWP_registerW_registerZ_double
	;;
	negsw $r57 = $r56r57.hi 	#Opcode-kv3_v2-NEGSW_registerW_registerZ_double
	;;
	negwp $r56r57r58r59.y = $r58 	#Opcode-kv3_v2-NEGWP_registerW_registerZ_double
	;;
	negw $r58r59.lo = $r56r57r58r59.z 	#Opcode-kv3_v2-NEGW_registerW_registerZ_simple
	;;
	neord $r59 = $r58r59.hi, 2305843009213693951 	#Opcode-kv3_v2-NEORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	neord $r56r57r58r59.t = $r60, $r60r61.lo 	#Opcode-kv3_v2-NEORD_registerW_registerZ_registerY_simple
	;;
	neord $r60r61r62r63.x = $r61, -64 	#Opcode-kv3_v2-NEORD_registerW_registerZ_signed10_simple
	;;
	neord $r60r61.hi = $r60r61r62r63.y, -8589934592 	#Opcode-kv3_v2-NEORD_registerW_registerZ_upper27_lower10_double
	;;
	neorw $r62 = $r62r63.lo, $r60r61r62r63.z 	#Opcode-kv3_v2-NEORW_registerW_registerZ_registerY_simple
	;;
	neorw $r63 = $r62r63.hi, -64 	#Opcode-kv3_v2-NEORW_registerW_registerZ_signed10_simple
	;;
	neorw $r60r61r62r63.t = $r0, -8589934592 	#Opcode-kv3_v2-NEORW_registerW_registerZ_upper27_lower10_double
	;;
	niord $r0r1.lo = $r0r1r2r3.x, 2305843009213693951 	#Opcode-kv3_v2-NIORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	niord $r1 = $r0r1.hi, $r0r1r2r3.y 	#Opcode-kv3_v2-NIORD_registerW_registerZ_registerY_simple
	;;
	niord $r2 = $r2r3.lo, -64 	#Opcode-kv3_v2-NIORD_registerW_registerZ_signed10_simple
	;;
	niord $r0r1r2r3.z = $r3, -8589934592 	#Opcode-kv3_v2-NIORD_registerW_registerZ_upper27_lower10_double
	;;
	niorw $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv3_v2-NIORW_registerW_registerZ_registerY_simple
	;;
	niorw $r4r5.lo = $r4r5r6r7.x, -64 	#Opcode-kv3_v2-NIORW_registerW_registerZ_signed10_simple
	;;
	niorw $r5 = $r4r5.hi, -8589934592 	#Opcode-kv3_v2-NIORW_registerW_registerZ_upper27_lower10_double
	;;
	nop 	#Opcode-kv3_v2-NOP_simple
	;;
	nord $r4r5r6r7.y = $r6, 2305843009213693951 	#Opcode-kv3_v2-NORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	nord $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v2-NORD_registerW_registerZ_registerY_simple
	;;
	nord $r6r7.hi = $r4r5r6r7.t, -64 	#Opcode-kv3_v2-NORD_registerW_registerZ_signed10_simple
	;;
	nord $r8 = $r8r9.lo, -8589934592 	#Opcode-kv3_v2-NORD_registerW_registerZ_upper27_lower10_double
	;;
	norw $r8r9r10r11.x = $r9, $r8r9.hi 	#Opcode-kv3_v2-NORW_registerW_registerZ_registerY_simple
	;;
	norw $r8r9r10r11.y = $r10, -64 	#Opcode-kv3_v2-NORW_registerW_registerZ_signed10_simple
	;;
	norw $r10r11.lo = $r8r9r10r11.z, -8589934592 	#Opcode-kv3_v2-NORW_registerW_registerZ_upper27_lower10_double
	;;
	notd $r11 = $r10r11.hi 	#Opcode-kv3_v2-NOTD_registerW_registerZ_simple
	;;
	notw $r8r9r10r11.t = $r12 	#Opcode-kv3_v2-NOTW_registerW_registerZ_simple
	;;
	nxord $sp = $r13, 2305843009213693951 	#Opcode-kv3_v2-NXORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	nxord $tp = $r14, $fp 	#Opcode-kv3_v2-NXORD_registerW_registerZ_registerY_simple
	;;
	nxord $r15 = $rp, -64 	#Opcode-kv3_v2-NXORD_registerW_registerZ_signed10_simple
	;;
	nxord $r16 = $r16r17.lo, -8589934592 	#Opcode-kv3_v2-NXORD_registerW_registerZ_upper27_lower10_double
	;;
	nxorw $r16r17r18r19.x = $r17, $r16r17.hi 	#Opcode-kv3_v2-NXORW_registerW_registerZ_registerY_simple
	;;
	nxorw $r16r17r18r19.y = $r18, -64 	#Opcode-kv3_v2-NXORW_registerW_registerZ_signed10_simple
	;;
	nxorw $r18r19.lo = $r16r17r18r19.z, -8589934592 	#Opcode-kv3_v2-NXORW_registerW_registerZ_upper27_lower10_double
	;;
	ord $r19 = $r18r19.hi, 2305843009213693951 	#Opcode-kv3_v2-ORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ord $r16r17r18r19.t = $r20, $r20r21.lo 	#Opcode-kv3_v2-ORD_registerW_registerZ_registerY_simple
	;;
	ord $r20r21r22r23.x = $r21, -64 	#Opcode-kv3_v2-ORD_registerW_registerZ_signed10_simple
	;;
	ord $r20r21.hi = $r20r21r22r23.y, -8589934592 	#Opcode-kv3_v2-ORD_registerW_registerZ_upper27_lower10_double
	;;
	ornd $r22 = $r22r23.lo, 2305843009213693951 	#Opcode-kv3_v2-ORND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	ornd $r20r21r22r23.z = $r23, $r22r23.hi 	#Opcode-kv3_v2-ORND_registerW_registerZ_registerY_simple
	;;
	ornd $r20r21r22r23.t = $r24, -64 	#Opcode-kv3_v2-ORND_registerW_registerZ_signed10_simple
	;;
	ornd $r24r25.lo = $r24r25r26r27.x, -8589934592 	#Opcode-kv3_v2-ORND_registerW_registerZ_upper27_lower10_double
	;;
	ornw $r25 = $r24r25.hi, $r24r25r26r27.y 	#Opcode-kv3_v2-ORNW_registerW_registerZ_registerY_simple
	;;
	ornw $r26 = $r26r27.lo, -64 	#Opcode-kv3_v2-ORNW_registerW_registerZ_signed10_simple
	;;
	ornw $r24r25r26r27.z = $r27, -8589934592 	#Opcode-kv3_v2-ORNW_registerW_registerZ_upper27_lower10_double
	;;
	orrbod $r26r27.hi = $r24r25r26r27.t 	#Opcode-kv3_v2-ORRBOD_registerW_registerZ_simple
	;;
	orrhqd $r28 = $r28r29.lo 	#Opcode-kv3_v2-ORRHQD_registerW_registerZ_simple
	;;
	orrwpd $r28r29r30r31.x = $r29 	#Opcode-kv3_v2-ORRWPD_registerW_registerZ_simple
	;;
	orw $r28r29.hi = $r28r29r30r31.y, $r30 	#Opcode-kv3_v2-ORW_registerW_registerZ_registerY_simple
	;;
	orw $r30r31.lo = $r28r29r30r31.z, -64 	#Opcode-kv3_v2-ORW_registerW_registerZ_signed10_simple
	;;
	orw $r31 = $r30r31.hi, -8589934592 	#Opcode-kv3_v2-ORW_registerW_registerZ_upper27_lower10_double
	;;
	pcrel $r28r29r30r31.t = 2305843009213693951 	#Opcode-kv3_v2-PCREL_registerW_extend27_upper27_lower10_triple
	;;
	pcrel $r32 = -549755813888 	#Opcode-kv3_v2-PCREL_registerW_extend6_upper27_lower10_double
	;;
	pcrel $r32r33.lo = -4096 	#Opcode-kv3_v2-PCREL_registerW_signed16_simple
	;;
	ret 	#Opcode-kv3_v2-RET_simple
	;;
	rfe 	#Opcode-kv3_v2-RFE_simple
	;;
	rolwps $r32r33r34r35.x = $r33, $r32r33.hi 	#Opcode-kv3_v2-ROLWPS_registerW_registerZ_registerY_simple
	;;
	rolwps $r32r33r34r35.y = $r34, 7 	#Opcode-kv3_v2-ROLWPS_registerW_registerZ_unsigned6_simple
	;;
	rolw $r34r35.lo = $r32r33r34r35.z, $r35 	#Opcode-kv3_v2-ROLW_registerW_registerZ_registerY_simple
	;;
	rolw $r34r35.hi = $r32r33r34r35.t, 7 	#Opcode-kv3_v2-ROLW_registerW_registerZ_unsigned6_simple
	;;
	rorwps $r36 = $r36r37.lo, $r36r37r38r39.x 	#Opcode-kv3_v2-RORWPS_registerW_registerZ_registerY_simple
	;;
	rorwps $r37 = $r36r37.hi, 7 	#Opcode-kv3_v2-RORWPS_registerW_registerZ_unsigned6_simple
	;;
	rorw $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv3_v2-RORW_registerW_registerZ_registerY_simple
	;;
	rorw $r36r37r38r39.z = $r39, 7 	#Opcode-kv3_v2-RORW_registerW_registerZ_unsigned6_simple
	;;
	rswap $r38r39.hi = $mmc 	#Opcode-kv3_v2-RSWAP_registerZ_systemAlone_simple
	;;
	rswap $r36r37r38r39.t = $s0 	#Opcode-kv3_v2-RSWAP_registerZ_systemS3_simple
	;;
	rswap $r40 = $pc 	#Opcode-kv3_v2-RSWAP_registerZ_systemS4_simple
	;;
	sbfbo $r40r41.lo = $r40r41r42r43.x, $r41 	#Opcode-kv3_v2-SBFBO_registerW_registerZ_registerY_simple
	;;
	sbfbo $r40r41.hi = $r40r41r42r43.y, 536870911.@ 	#Opcode-kv3_v2-SBFBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfcd.i $r42 = $r42r43.lo, $r40r41r42r43.z 	#Opcode-kv3_v2-SBFCD.I_registerW_registerZ_registerY_simple
	;;
	sbfcd.i $r43 = $r42r43.hi, 536870911 	#Opcode-kv3_v2-SBFCD.I_registerW_registerZ_upper27_lower5_double
	;;
	sbfcd $r40r41r42r43.t = $r44, $r44r45.lo 	#Opcode-kv3_v2-SBFCD_registerW_registerZ_registerY_simple
	;;
	sbfcd $r44r45r46r47.x = $r45, 536870911 	#Opcode-kv3_v2-SBFCD_registerW_registerZ_upper27_lower5_double
	;;
	sbfd $r44r45.hi = $r44r45r46r47.y, 2305843009213693951 	#Opcode-kv3_v2-SBFD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbfd $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv3_v2-SBFD_registerW_registerZ_registerY_simple
	;;
	sbfd $r47 = $r46r47.hi, -64 	#Opcode-kv3_v2-SBFD_registerW_registerZ_signed10_simple
	;;
	sbfd $r44r45r46r47.t = $r48, -8589934592 	#Opcode-kv3_v2-SBFD_registerW_registerZ_upper27_lower10_double
	;;
	sbfhq $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv3_v2-SBFHQ_registerW_registerZ_registerY_simple
	;;
	sbfhq $r48r49.hi = $r48r49r50r51.y, 536870911 	#Opcode-kv3_v2-SBFHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsbo $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv3_v2-SBFSBO_registerW_registerZ_registerY_simple
	;;
	sbfsbo $r51 = $r50r51.hi, 536870911.@ 	#Opcode-kv3_v2-SBFSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsd $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv3_v2-SBFSD_registerW_registerZ_registerY_simple
	;;
	sbfsd $r52r53r54r55.x = $r53, 536870911 	#Opcode-kv3_v2-SBFSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfshq $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv3_v2-SBFSHQ_registerW_registerZ_registerY_simple
	;;
	sbfshq $r54r55.lo = $r52r53r54r55.z, 536870911.@ 	#Opcode-kv3_v2-SBFSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfswp $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv3_v2-SBFSWP_registerW_registerZ_registerY_simple
	;;
	sbfswp $r56 = $r56r57.lo, 536870911 	#Opcode-kv3_v2-SBFSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsw $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv3_v2-SBFSW_registerW_registerZ_registerY_simple
	;;
	sbfsw $r56r57r58r59.y = $r58, 536870911 	#Opcode-kv3_v2-SBFSW_registerW_registerZ_upper27_lower5_double
	;;
	sbfusbo $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv3_v2-SBFUSBO_registerW_registerZ_registerY_simple
	;;
	sbfusbo $r58r59.hi = $r56r57r58r59.t, 536870911.@ 	#Opcode-kv3_v2-SBFUSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfusd $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv3_v2-SBFUSD_registerW_registerZ_registerY_simple
	;;
	sbfusd $r61 = $r60r61.hi, 536870911 	#Opcode-kv3_v2-SBFUSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfushq $r60r61r62r63.y = $r62, $r62r63.lo 	#Opcode-kv3_v2-SBFUSHQ_registerW_registerZ_registerY_simple
	;;
	sbfushq $r60r61r62r63.z = $r63, 536870911.@ 	#Opcode-kv3_v2-SBFUSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfuswp $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv3_v2-SBFUSWP_registerW_registerZ_registerY_simple
	;;
	sbfuswp $r0r1.lo = $r0r1r2r3.x, 536870911 	#Opcode-kv3_v2-SBFUSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfusw $r1 = $r0r1.hi, $r0r1r2r3.y 	#Opcode-kv3_v2-SBFUSW_registerW_registerZ_registerY_simple
	;;
	sbfusw $r2 = $r2r3.lo, 536870911 	#Opcode-kv3_v2-SBFUSW_registerW_registerZ_upper27_lower5_double
	;;
	sbfuwd $r0r1r2r3.z = $r3, $r2r3.hi 	#Opcode-kv3_v2-SBFUWD_registerW_registerZ_registerY_simple
	;;
	sbfuwd $r0r1r2r3.t = $r4, 536870911 	#Opcode-kv3_v2-SBFUWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfwd $r4r5.lo = $r4r5r6r7.x, $r5 	#Opcode-kv3_v2-SBFWD_registerW_registerZ_registerY_simple
	;;
	sbfwd $r4r5.hi = $r4r5r6r7.y, 536870911 	#Opcode-kv3_v2-SBFWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfwp $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv3_v2-SBFWP_registerW_registerZ_registerY_simple
	;;
	sbfwp $r7 = $r6r7.hi, 536870911.@ 	#Opcode-kv3_v2-SBFWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfw $r4r5r6r7.t = $r8, $r8r9.lo 	#Opcode-kv3_v2-SBFW_registerW_registerZ_registerY_simple
	;;
	sbfw $r8r9r10r11.x = $r9, -64 	#Opcode-kv3_v2-SBFW_registerW_registerZ_signed10_simple
	;;
	sbfw $r8r9.hi = $r8r9r10r11.y, -8589934592 	#Opcode-kv3_v2-SBFW_registerW_registerZ_upper27_lower10_double
	;;
	sbfx16bo $r10 = $r10r11.lo, $r8r9r10r11.z 	#Opcode-kv3_v2-SBFX16BO_registerW_registerZ_registerY_simple
	;;
	sbfx16bo $r11 = $r10r11.hi, 536870911 	#Opcode-kv3_v2-SBFX16BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16d $r8r9r10r11.t = $r12, $sp 	#Opcode-kv3_v2-SBFX16D_registerW_registerZ_registerY_simple
	;;
	sbfx16d $r13 = $tp, 536870911.@ 	#Opcode-kv3_v2-SBFX16D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16hq $r14 = $fp, $r15 	#Opcode-kv3_v2-SBFX16HQ_registerW_registerZ_registerY_simple
	;;
	sbfx16hq $rp = $r16, 536870911 	#Opcode-kv3_v2-SBFX16HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16uwd $r16r17.lo = $r16r17r18r19.x, $r17 	#Opcode-kv3_v2-SBFX16UWD_registerW_registerZ_registerY_simple
	;;
	sbfx16uwd $r16r17.hi = $r16r17r18r19.y, 536870911 	#Opcode-kv3_v2-SBFX16UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx16wd $r18 = $r18r19.lo, $r16r17r18r19.z 	#Opcode-kv3_v2-SBFX16WD_registerW_registerZ_registerY_simple
	;;
	sbfx16wd $r19 = $r18r19.hi, 536870911 	#Opcode-kv3_v2-SBFX16WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx16wp $r16r17r18r19.t = $r20, $r20r21.lo 	#Opcode-kv3_v2-SBFX16WP_registerW_registerZ_registerY_simple
	;;
	sbfx16wp $r20r21r22r23.x = $r21, 536870911.@ 	#Opcode-kv3_v2-SBFX16WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16w $r20r21.hi = $r20r21r22r23.y, $r22 	#Opcode-kv3_v2-SBFX16W_registerW_registerZ_registerY_simple
	;;
	sbfx16w $r22r23.lo = $r20r21r22r23.z, 536870911 	#Opcode-kv3_v2-SBFX16W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2bo $r23 = $r22r23.hi, $r20r21r22r23.t 	#Opcode-kv3_v2-SBFX2BO_registerW_registerZ_registerY_simple
	;;
	sbfx2bo $r24 = $r24r25.lo, 536870911 	#Opcode-kv3_v2-SBFX2BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2d $r24r25r26r27.x = $r25, $r24r25.hi 	#Opcode-kv3_v2-SBFX2D_registerW_registerZ_registerY_simple
	;;
	sbfx2d $r24r25r26r27.y = $r26, 536870911.@ 	#Opcode-kv3_v2-SBFX2D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2hq $r26r27.lo = $r24r25r26r27.z, $r27 	#Opcode-kv3_v2-SBFX2HQ_registerW_registerZ_registerY_simple
	;;
	sbfx2hq $r26r27.hi = $r24r25r26r27.t, 536870911 	#Opcode-kv3_v2-SBFX2HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2uwd $r28 = $r28r29.lo, $r28r29r30r31.x 	#Opcode-kv3_v2-SBFX2UWD_registerW_registerZ_registerY_simple
	;;
	sbfx2uwd $r29 = $r28r29.hi, 536870911 	#Opcode-kv3_v2-SBFX2UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2wd $r28r29r30r31.y = $r30, $r30r31.lo 	#Opcode-kv3_v2-SBFX2WD_registerW_registerZ_registerY_simple
	;;
	sbfx2wd $r28r29r30r31.z = $r31, 536870911 	#Opcode-kv3_v2-SBFX2WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2wp $r30r31.hi = $r28r29r30r31.t, $r32 	#Opcode-kv3_v2-SBFX2WP_registerW_registerZ_registerY_simple
	;;
	sbfx2wp $r32r33.lo = $r32r33r34r35.x, 536870911.@ 	#Opcode-kv3_v2-SBFX2WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2w $r33 = $r32r33.hi, $r32r33r34r35.y 	#Opcode-kv3_v2-SBFX2W_registerW_registerZ_registerY_simple
	;;
	sbfx2w $r34 = $r34r35.lo, 536870911 	#Opcode-kv3_v2-SBFX2W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx32d $r32r33r34r35.z = $r35, $r34r35.hi 	#Opcode-kv3_v2-SBFX32D_registerW_registerZ_registerY_simple
	;;
	sbfx32d $r32r33r34r35.t = $r36, 536870911 	#Opcode-kv3_v2-SBFX32D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx32uwd $r36r37.lo = $r36r37r38r39.x, $r37 	#Opcode-kv3_v2-SBFX32UWD_registerW_registerZ_registerY_simple
	;;
	sbfx32uwd $r36r37.hi = $r36r37r38r39.y, 536870911 	#Opcode-kv3_v2-SBFX32UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx32wd $r38 = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv3_v2-SBFX32WD_registerW_registerZ_registerY_simple
	;;
	sbfx32wd $r39 = $r38r39.hi, 536870911 	#Opcode-kv3_v2-SBFX32WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx32w $r36r37r38r39.t = $r40, $r40r41.lo 	#Opcode-kv3_v2-SBFX32W_registerW_registerZ_registerY_simple
	;;
	sbfx32w $r40r41r42r43.x = $r41, 536870911 	#Opcode-kv3_v2-SBFX32W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4bo $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv3_v2-SBFX4BO_registerW_registerZ_registerY_simple
	;;
	sbfx4bo $r42r43.lo = $r40r41r42r43.z, 536870911.@ 	#Opcode-kv3_v2-SBFX4BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4d $r43 = $r42r43.hi, $r40r41r42r43.t 	#Opcode-kv3_v2-SBFX4D_registerW_registerZ_registerY_simple
	;;
	sbfx4d $r44 = $r44r45.lo, 536870911 	#Opcode-kv3_v2-SBFX4D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4hq $r44r45r46r47.x = $r45, $r44r45.hi 	#Opcode-kv3_v2-SBFX4HQ_registerW_registerZ_registerY_simple
	;;
	sbfx4hq $r44r45r46r47.y = $r46, 536870911.@ 	#Opcode-kv3_v2-SBFX4HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4uwd $r46r47.lo = $r44r45r46r47.z, $r47 	#Opcode-kv3_v2-SBFX4UWD_registerW_registerZ_registerY_simple
	;;
	sbfx4uwd $r46r47.hi = $r44r45r46r47.t, 536870911 	#Opcode-kv3_v2-SBFX4UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4wd $r48 = $r48r49.lo, $r48r49r50r51.x 	#Opcode-kv3_v2-SBFX4WD_registerW_registerZ_registerY_simple
	;;
	sbfx4wd $r49 = $r48r49.hi, 536870911 	#Opcode-kv3_v2-SBFX4WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4wp $r48r49r50r51.y = $r50, $r50r51.lo 	#Opcode-kv3_v2-SBFX4WP_registerW_registerZ_registerY_simple
	;;
	sbfx4wp $r48r49r50r51.z = $r51, 536870911 	#Opcode-kv3_v2-SBFX4WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4w $r50r51.hi = $r48r49r50r51.t, $r52 	#Opcode-kv3_v2-SBFX4W_registerW_registerZ_registerY_simple
	;;
	sbfx4w $r52r53.lo = $r52r53r54r55.x, 536870911 	#Opcode-kv3_v2-SBFX4W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx64d $r53 = $r52r53.hi, $r52r53r54r55.y 	#Opcode-kv3_v2-SBFX64D_registerW_registerZ_registerY_simple
	;;
	sbfx64d $r54 = $r54r55.lo, 536870911.@ 	#Opcode-kv3_v2-SBFX64D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx64uwd $r52r53r54r55.z = $r55, $r54r55.hi 	#Opcode-kv3_v2-SBFX64UWD_registerW_registerZ_registerY_simple
	;;
	sbfx64uwd $r52r53r54r55.t = $r56, 536870911 	#Opcode-kv3_v2-SBFX64UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx64wd $r56r57.lo = $r56r57r58r59.x, $r57 	#Opcode-kv3_v2-SBFX64WD_registerW_registerZ_registerY_simple
	;;
	sbfx64wd $r56r57.hi = $r56r57r58r59.y, 536870911 	#Opcode-kv3_v2-SBFX64WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx64w $r58 = $r58r59.lo, $r56r57r58r59.z 	#Opcode-kv3_v2-SBFX64W_registerW_registerZ_registerY_simple
	;;
	sbfx64w $r59 = $r58r59.hi, 536870911 	#Opcode-kv3_v2-SBFX64W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8bo $r56r57r58r59.t = $r60, $r60r61.lo 	#Opcode-kv3_v2-SBFX8BO_registerW_registerZ_registerY_simple
	;;
	sbfx8bo $r60r61r62r63.x = $r61, 536870911 	#Opcode-kv3_v2-SBFX8BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8d $r60r61.hi = $r60r61r62r63.y, $r62 	#Opcode-kv3_v2-SBFX8D_registerW_registerZ_registerY_simple
	;;
	sbfx8d $r62r63.lo = $r60r61r62r63.z, 536870911.@ 	#Opcode-kv3_v2-SBFX8D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8hq $r63 = $r62r63.hi, $r60r61r62r63.t 	#Opcode-kv3_v2-SBFX8HQ_registerW_registerZ_registerY_simple
	;;
	sbfx8hq $r0 = $r0r1.lo, 536870911 	#Opcode-kv3_v2-SBFX8HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8uwd $r0r1r2r3.x = $r1, $r0r1.hi 	#Opcode-kv3_v2-SBFX8UWD_registerW_registerZ_registerY_simple
	;;
	sbfx8uwd $r0r1r2r3.y = $r2, 536870911 	#Opcode-kv3_v2-SBFX8UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8wd $r2r3.lo = $r0r1r2r3.z, $r3 	#Opcode-kv3_v2-SBFX8WD_registerW_registerZ_registerY_simple
	;;
	sbfx8wd $r2r3.hi = $r0r1r2r3.t, 536870911 	#Opcode-kv3_v2-SBFX8WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8wp $r4 = $r4r5.lo, $r4r5r6r7.x 	#Opcode-kv3_v2-SBFX8WP_registerW_registerZ_registerY_simple
	;;
	sbfx8wp $r5 = $r4r5.hi, 536870911.@ 	#Opcode-kv3_v2-SBFX8WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8w $r4r5r6r7.y = $r6, $r6r7.lo 	#Opcode-kv3_v2-SBFX8W_registerW_registerZ_registerY_simple
	;;
	sbfx8w $r4r5r6r7.z = $r7, 536870911 	#Opcode-kv3_v2-SBFX8W_registerW_registerZ_upper27_lower5_double
	;;
	sbmm8 $r6r7.hi = $r4r5r6r7.t, 2305843009213693951 	#Opcode-kv3_v2-SBMM8_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbmm8 $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv3_v2-SBMM8_registerW_registerZ_registerY_simple
	;;
	sbmm8 $r9 = $r8r9.hi, -64 	#Opcode-kv3_v2-SBMM8_registerW_registerZ_signed10_simple
	;;
	sbmm8 $r8r9r10r11.y = $r10, -8589934592 	#Opcode-kv3_v2-SBMM8_registerW_registerZ_upper27_lower10_double
	;;
	sbmmt8 $r10r11.lo = $r8r9r10r11.z, 2305843009213693951 	#Opcode-kv3_v2-SBMMT8_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbmmt8 $r11 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv3_v2-SBMMT8_registerW_registerZ_registerY_simple
	;;
	sbmmt8 $r12 = $sp, -64 	#Opcode-kv3_v2-SBMMT8_registerW_registerZ_signed10_simple
	;;
	sbmmt8 $r13 = $tp, -8589934592 	#Opcode-kv3_v2-SBMMT8_registerW_registerZ_upper27_lower10_double
	;;
	sb $r14[$fp] = $r15 	#Opcode-kv3_v2-SB_doscale_registerY_registerZ_registerT_simple
	;;
	sb 2305843009213693951[$rp] = $r16 	#Opcode-kv3_v2-SB_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sb.dlez $r16r17.lo? -1125899906842624[$r16r17r18r19.x] = $r17 	#Opcode-kv3_v2-SB_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sb.dgtz $r16r17.hi? -8388608[$r16r17r18r19.y] = $r18 	#Opcode-kv3_v2-SB_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sb.odd $r18r19.lo? [$r16r17r18r19.z] = $r19 	#Opcode-kv3_v2-SB_lsucond_registerY_registerZ_registerT_simple
	;;
	sb -64[$r18r19.hi] = $r16r17r18r19.t 	#Opcode-kv3_v2-SB_signed10_registerZ_registerT_simple
	;;
	sb -8589934592[$r20] = $r20r21.lo 	#Opcode-kv3_v2-SB_upper27_lower10_registerZ_registerT_double
	;;
	scall $r20r21r22r23.x 	#Opcode-kv3_v2-SCALL_registerZ_simple
	;;
	scall 511 	#Opcode-kv3_v2-SCALL_sysnumber_simple
	;;
	sd.xs $r21[$r20r21.hi] = $r20r21r22r23.y 	#Opcode-kv3_v2-SD_doscale_registerY_registerZ_registerT_simple
	;;
	sd 2305843009213693951[$r22] = $r22r23.lo 	#Opcode-kv3_v2-SD_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sd.even $r20r21r22r23.z? -1125899906842624[$r23] = $r22r23.hi 	#Opcode-kv3_v2-SD_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sd.wnez $r20r21r22r23.t? -8388608[$r24] = $r24r25.lo 	#Opcode-kv3_v2-SD_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sd.weqz $r24r25r26r27.x? [$r25] = $r24r25.hi 	#Opcode-kv3_v2-SD_lsucond_registerY_registerZ_registerT_simple
	;;
	sd -64[$r24r25r26r27.y] = $r26 	#Opcode-kv3_v2-SD_signed10_registerZ_registerT_simple
	;;
	sd -8589934592[$r26r27.lo] = $r24r25r26r27.z 	#Opcode-kv3_v2-SD_upper27_lower10_registerZ_registerT_double
	;;
	set $s28 = $r27 	#Opcode-kv3_v2-SET_systemAlone_registerZ_simple
	;;
	set $ra = $r26r27.hi 	#Opcode-kv3_v2-SET_systemRA_registerZ_simple
	;;
	set $ps = $r24r25r26r27.t 	#Opcode-kv3_v2-SET_systemT3_registerZ_simple
	;;
	set $ps = $r28 	#Opcode-kv3_v2-SET_systemT4_registerZ_simple
	;;
	sh $r28r29.lo[$r28r29r30r31.x] = $r29 	#Opcode-kv3_v2-SH_doscale_registerY_registerZ_registerT_simple
	;;
	sh 2305843009213693951[$r28r29.hi] = $r28r29r30r31.y 	#Opcode-kv3_v2-SH_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sh.wltz $r30? -1125899906842624[$r30r31.lo] = $r28r29r30r31.z 	#Opcode-kv3_v2-SH_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sh.wgez $r31? -8388608[$r30r31.hi] = $r28r29r30r31.t 	#Opcode-kv3_v2-SH_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sh.wlez $r32? [$r32r33.lo] = $r32r33r34r35.x 	#Opcode-kv3_v2-SH_lsucond_registerY_registerZ_registerT_simple
	;;
	sh -64[$r33] = $r32r33.hi 	#Opcode-kv3_v2-SH_signed10_registerZ_registerT_simple
	;;
	sh -8589934592[$r32r33r34r35.y] = $r34 	#Opcode-kv3_v2-SH_upper27_lower10_registerZ_registerT_double
	;;
	sleep 	#Opcode-kv3_v2-SLEEP_simple
	;;
	sllbos $r34r35.lo = $r32r33r34r35.z, $r35 	#Opcode-kv3_v2-SLLBOS_registerW_registerZ_registerY_simple
	;;
	sllbos $r34r35.hi = $r32r33r34r35.t, 7 	#Opcode-kv3_v2-SLLBOS_registerW_registerZ_unsigned6_simple
	;;
	slld $r36 = $r36r37.lo, $r36r37r38r39.x 	#Opcode-kv3_v2-SLLD_registerW_registerZ_registerY_simple
	;;
	slld $r37 = $r36r37.hi, 7 	#Opcode-kv3_v2-SLLD_registerW_registerZ_unsigned6_simple
	;;
	sllhqs $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv3_v2-SLLHQS_registerW_registerZ_registerY_simple
	;;
	sllhqs $r36r37r38r39.z = $r39, 7 	#Opcode-kv3_v2-SLLHQS_registerW_registerZ_unsigned6_simple
	;;
	sllwps $r38r39.hi = $r36r37r38r39.t, $r40 	#Opcode-kv3_v2-SLLWPS_registerW_registerZ_registerY_simple
	;;
	sllwps $r40r41.lo = $r40r41r42r43.x, 7 	#Opcode-kv3_v2-SLLWPS_registerW_registerZ_unsigned6_simple
	;;
	sllw $r41 = $r40r41.hi, $r40r41r42r43.y 	#Opcode-kv3_v2-SLLW_registerW_registerZ_registerY_simple
	;;
	sllw $r42 = $r42r43.lo, 7 	#Opcode-kv3_v2-SLLW_registerW_registerZ_unsigned6_simple
	;;
	slsbos $r40r41r42r43.z = $r43, $r42r43.hi 	#Opcode-kv3_v2-SLSBOS_registerW_registerZ_registerY_simple
	;;
	slsbos $r40r41r42r43.t = $r44, 7 	#Opcode-kv3_v2-SLSBOS_registerW_registerZ_unsigned6_simple
	;;
	slsd $r44r45.lo = $r44r45r46r47.x, $r45 	#Opcode-kv3_v2-SLSD_registerW_registerZ_registerY_simple
	;;
	slsd $r44r45.hi = $r44r45r46r47.y, 7 	#Opcode-kv3_v2-SLSD_registerW_registerZ_unsigned6_simple
	;;
	slshqs $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv3_v2-SLSHQS_registerW_registerZ_registerY_simple
	;;
	slshqs $r47 = $r46r47.hi, 7 	#Opcode-kv3_v2-SLSHQS_registerW_registerZ_unsigned6_simple
	;;
	slswps $r44r45r46r47.t = $r48, $r48r49.lo 	#Opcode-kv3_v2-SLSWPS_registerW_registerZ_registerY_simple
	;;
	slswps $r48r49r50r51.x = $r49, 7 	#Opcode-kv3_v2-SLSWPS_registerW_registerZ_unsigned6_simple
	;;
	slsw $r48r49.hi = $r48r49r50r51.y, $r50 	#Opcode-kv3_v2-SLSW_registerW_registerZ_registerY_simple
	;;
	slsw $r50r51.lo = $r48r49r50r51.z, 7 	#Opcode-kv3_v2-SLSW_registerW_registerZ_unsigned6_simple
	;;
	slusbos $r51 = $r50r51.hi, $r48r49r50r51.t 	#Opcode-kv3_v2-SLUSBOS_registerW_registerZ_registerY_simple
	;;
	slusbos $r52 = $r52r53.lo, 7 	#Opcode-kv3_v2-SLUSBOS_registerW_registerZ_unsigned6_simple
	;;
	slusd $r52r53r54r55.x = $r53, $r52r53.hi 	#Opcode-kv3_v2-SLUSD_registerW_registerZ_registerY_simple
	;;
	slusd $r52r53r54r55.y = $r54, 7 	#Opcode-kv3_v2-SLUSD_registerW_registerZ_unsigned6_simple
	;;
	slushqs $r54r55.lo = $r52r53r54r55.z, $r55 	#Opcode-kv3_v2-SLUSHQS_registerW_registerZ_registerY_simple
	;;
	slushqs $r54r55.hi = $r52r53r54r55.t, 7 	#Opcode-kv3_v2-SLUSHQS_registerW_registerZ_unsigned6_simple
	;;
	sluswps $r56 = $r56r57.lo, $r56r57r58r59.x 	#Opcode-kv3_v2-SLUSWPS_registerW_registerZ_registerY_simple
	;;
	sluswps $r57 = $r56r57.hi, 7 	#Opcode-kv3_v2-SLUSWPS_registerW_registerZ_unsigned6_simple
	;;
	slusw $r56r57r58r59.y = $r58, $r58r59.lo 	#Opcode-kv3_v2-SLUSW_registerW_registerZ_registerY_simple
	;;
	slusw $r56r57r58r59.z = $r59, 7 	#Opcode-kv3_v2-SLUSW_registerW_registerZ_unsigned6_simple
	;;
	so.xs $r58r59.hi[$r56r57r58r59.t] = $r44r45r46r47 	#Opcode-kv3_v2-SO_doscale_registerY_registerZ_registerV_simple
	;;
	so 2305843009213693951[$r60] = $r48r49r50r51 	#Opcode-kv3_v2-SO_extend27_upper27_lower10_registerZ_registerV_triple
	;;
	so.u3 $r60r61.lo? -1125899906842624[$r60r61r62r63.x] = $r52r53r54r55 	#Opcode-kv3_v2-SO_lsomask_registerY_extend27_offset27_registerZ_registerV_triple
	;;
	so.mt $r61? -8388608[$r60r61.hi] = $r56r57r58r59 	#Opcode-kv3_v2-SO_lsomask_registerY_offset27_registerZ_registerV_double
	;;
	so.mf $r60r61r62r63.y? [$r62] = $r60r61r62r63 	#Opcode-kv3_v2-SO_lsomask_registerY_registerZ_registerV_simple
	;;
	so.wgtz $r62r63.lo? -1125899906842624[$r60r61r62r63.z] = $r0r1r2r3 	#Opcode-kv3_v2-SO_lsucond_registerY_extend27_offset27_registerZ_registerV_triple
	;;
	so.dnez $r63? -8388608[$r62r63.hi] = $r4r5r6r7 	#Opcode-kv3_v2-SO_lsucond_registerY_offset27_registerZ_registerV_double
	;;
	so.deqz $r60r61r62r63.t? [$r0] = $r8r9r10r11 	#Opcode-kv3_v2-SO_lsucond_registerY_registerZ_registerV_simple
	;;
	so -64[$r0r1.lo] = $r12r13r14r15 	#Opcode-kv3_v2-SO_signed10_registerZ_registerV_simple
	;;
	so -8589934592[$r0r1r2r3.x] = $r16r17r18r19 	#Opcode-kv3_v2-SO_upper27_lower10_registerZ_registerV_double
	;;
	sq $r1[$r0r1.hi] = $r40r41r42r43.lo 	#Opcode-kv3_v2-SQ_doscale_registerY_registerZ_registerU_simple
	;;
	sq 2305843009213693951[$r0r1r2r3.y] = $r42r43 	#Opcode-kv3_v2-SQ_extend27_upper27_lower10_registerZ_registerU_triple
	;;
	sq.dltz $r2? -1125899906842624[$r2r3.lo] = $r40r41r42r43.hi 	#Opcode-kv3_v2-SQ_lsucond_registerY_extend27_offset27_registerZ_registerU_triple
	;;
	sq.dgez $r0r1r2r3.z? -8388608[$r3] = $r44r45 	#Opcode-kv3_v2-SQ_lsucond_registerY_offset27_registerZ_registerU_double
	;;
	sq.dlez $r2r3.hi? [$r0r1r2r3.t] = $r44r45r46r47.lo 	#Opcode-kv3_v2-SQ_lsucond_registerY_registerZ_registerU_simple
	;;
	sq -64[$r4] = $r46r47 	#Opcode-kv3_v2-SQ_signed10_registerZ_registerU_simple
	;;
	sq -8589934592[$r4r5.lo] = $r44r45r46r47.hi 	#Opcode-kv3_v2-SQ_upper27_lower10_registerZ_registerU_double
	;;
	srabos $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv3_v2-SRABOS_registerW_registerZ_registerY_simple
	;;
	srabos $r4r5r6r7.y = $r6, 7 	#Opcode-kv3_v2-SRABOS_registerW_registerZ_unsigned6_simple
	;;
	srad $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv3_v2-SRAD_registerW_registerZ_registerY_simple
	;;
	srad $r6r7.hi = $r4r5r6r7.t, 7 	#Opcode-kv3_v2-SRAD_registerW_registerZ_unsigned6_simple
	;;
	srahqs $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv3_v2-SRAHQS_registerW_registerZ_registerY_simple
	;;
	srahqs $r9 = $r8r9.hi, 7 	#Opcode-kv3_v2-SRAHQS_registerW_registerZ_unsigned6_simple
	;;
	srawps $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv3_v2-SRAWPS_registerW_registerZ_registerY_simple
	;;
	srawps $r8r9r10r11.z = $r11, 7 	#Opcode-kv3_v2-SRAWPS_registerW_registerZ_unsigned6_simple
	;;
	sraw $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv3_v2-SRAW_registerW_registerZ_registerY_simple
	;;
	sraw $sp = $r13, 7 	#Opcode-kv3_v2-SRAW_registerW_registerZ_unsigned6_simple
	;;
	srlbos $tp = $r14, $fp 	#Opcode-kv3_v2-SRLBOS_registerW_registerZ_registerY_simple
	;;
	srlbos $r15 = $rp, 7 	#Opcode-kv3_v2-SRLBOS_registerW_registerZ_unsigned6_simple
	;;
	srld $r16 = $r16r17.lo, $r16r17r18r19.x 	#Opcode-kv3_v2-SRLD_registerW_registerZ_registerY_simple
	;;
	srld $r17 = $r16r17.hi, 7 	#Opcode-kv3_v2-SRLD_registerW_registerZ_unsigned6_simple
	;;
	srlhqs $r16r17r18r19.y = $r18, $r18r19.lo 	#Opcode-kv3_v2-SRLHQS_registerW_registerZ_registerY_simple
	;;
	srlhqs $r16r17r18r19.z = $r19, 7 	#Opcode-kv3_v2-SRLHQS_registerW_registerZ_unsigned6_simple
	;;
	srlwps $r18r19.hi = $r16r17r18r19.t, $r20 	#Opcode-kv3_v2-SRLWPS_registerW_registerZ_registerY_simple
	;;
	srlwps $r20r21.lo = $r20r21r22r23.x, 7 	#Opcode-kv3_v2-SRLWPS_registerW_registerZ_unsigned6_simple
	;;
	srlw $r21 = $r20r21.hi, $r20r21r22r23.y 	#Opcode-kv3_v2-SRLW_registerW_registerZ_registerY_simple
	;;
	srlw $r22 = $r22r23.lo, 7 	#Opcode-kv3_v2-SRLW_registerW_registerZ_unsigned6_simple
	;;
	srsbos $r20r21r22r23.z = $r23, $r22r23.hi 	#Opcode-kv3_v2-SRSBOS_registerW_registerZ_registerY_simple
	;;
	srsbos $r20r21r22r23.t = $r24, 7 	#Opcode-kv3_v2-SRSBOS_registerW_registerZ_unsigned6_simple
	;;
	srsd $r24r25.lo = $r24r25r26r27.x, $r25 	#Opcode-kv3_v2-SRSD_registerW_registerZ_registerY_simple
	;;
	srsd $r24r25.hi = $r24r25r26r27.y, 7 	#Opcode-kv3_v2-SRSD_registerW_registerZ_unsigned6_simple
	;;
	srshqs $r26 = $r26r27.lo, $r24r25r26r27.z 	#Opcode-kv3_v2-SRSHQS_registerW_registerZ_registerY_simple
	;;
	srshqs $r27 = $r26r27.hi, 7 	#Opcode-kv3_v2-SRSHQS_registerW_registerZ_unsigned6_simple
	;;
	srswps $r24r25r26r27.t = $r28, $r28r29.lo 	#Opcode-kv3_v2-SRSWPS_registerW_registerZ_registerY_simple
	;;
	srswps $r28r29r30r31.x = $r29, 7 	#Opcode-kv3_v2-SRSWPS_registerW_registerZ_unsigned6_simple
	;;
	srsw $r28r29.hi = $r28r29r30r31.y, $r30 	#Opcode-kv3_v2-SRSW_registerW_registerZ_registerY_simple
	;;
	srsw $r30r31.lo = $r28r29r30r31.z, 7 	#Opcode-kv3_v2-SRSW_registerW_registerZ_unsigned6_simple
	;;
	stop 	#Opcode-kv3_v2-STOP_simple
	;;
	stsud $r31 = $r30r31.hi, $r28r29r30r31.t 	#Opcode-kv3_v2-STSUD_registerW_registerZ_registerY_simple
	;;
	stsud $r32 = $r32r33.lo, 536870911 	#Opcode-kv3_v2-STSUD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	stsuhq $r32r33r34r35.x = $r33, $r32r33.hi 	#Opcode-kv3_v2-STSUHQ_registerW_registerZ_registerY_simple
	;;
	stsuhq $r32r33r34r35.y = $r34, 536870911.@ 	#Opcode-kv3_v2-STSUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	stsuwp $r34r35.lo = $r32r33r34r35.z, $r35 	#Opcode-kv3_v2-STSUWP_registerW_registerZ_registerY_simple
	;;
	stsuwp $r34r35.hi = $r32r33r34r35.t, 536870911 	#Opcode-kv3_v2-STSUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	stsuw $r36 = $r36r37.lo, $r36r37r38r39.x 	#Opcode-kv3_v2-STSUW_registerW_registerZ_registerY_simple
	;;
	stsuw $r37 = $r36r37.hi, 536870911 	#Opcode-kv3_v2-STSUW_registerW_registerZ_upper27_lower5_double
	;;
	sw.xs $r36r37r38r39.y[$r38] = $r38r39.lo 	#Opcode-kv3_v2-SW_doscale_registerY_registerZ_registerT_simple
	;;
	sw 2305843009213693951[$r36r37r38r39.z] = $r39 	#Opcode-kv3_v2-SW_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sw.dgtz $r38r39.hi? -1125899906842624[$r36r37r38r39.t] = $r40 	#Opcode-kv3_v2-SW_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sw.odd $r40r41.lo? -8388608[$r40r41r42r43.x] = $r41 	#Opcode-kv3_v2-SW_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sw.even $r40r41.hi? [$r40r41r42r43.y] = $r42 	#Opcode-kv3_v2-SW_lsucond_registerY_registerZ_registerT_simple
	;;
	sw -64[$r42r43.lo] = $r40r41r42r43.z 	#Opcode-kv3_v2-SW_signed10_registerZ_registerT_simple
	;;
	sw -8589934592[$r43] = $r42r43.hi 	#Opcode-kv3_v2-SW_upper27_lower10_registerZ_registerT_double
	;;
	sxbd $r40r41r42r43.t = $r44 	#Opcode-kv3_v2-SXBD_registerW_registerZ_simple
	;;
	sxhd $r44r45.lo = $r44r45r46r47.x 	#Opcode-kv3_v2-SXHD_registerW_registerZ_simple
	;;
	sxlbhq $r45 = $r44r45.hi 	#Opcode-kv3_v2-SXLBHQ_registerW_registerZ_simple
	;;
	sxlhwp $r44r45r46r47.y = $r46 	#Opcode-kv3_v2-SXLHWP_registerW_registerZ_simple
	;;
	sxmbhq $r46r47.lo = $r44r45r46r47.z 	#Opcode-kv3_v2-SXMBHQ_registerW_registerZ_simple
	;;
	sxmhwp $r47 = $r46r47.hi 	#Opcode-kv3_v2-SXMHWP_registerW_registerZ_simple
	;;
	sxwd $r44r45r46r47.t = $r48 	#Opcode-kv3_v2-SXWD_registerW_registerZ_simple
	;;
	syncgroup $r48r49.lo 	#Opcode-kv3_v2-SYNCGROUP_registerZ_simple
	;;
	tlbdinval 	#Opcode-kv3_v2-TLBDINVAL_simple
	;;
	tlbiinval 	#Opcode-kv3_v2-TLBIINVAL_simple
	;;
	tlbprobe 	#Opcode-kv3_v2-TLBPROBE_simple
	;;
	tlbread 	#Opcode-kv3_v2-TLBREAD_simple
	;;
	tlbwrite 	#Opcode-kv3_v2-TLBWRITE_simple
	;;
	waitit $r48r49r50r51.x 	#Opcode-kv3_v2-WAITIT_registerZ_simple
	;;
	wfxl $ps, $r49 	#Opcode-kv3_v2-WFXL_systemAlone_registerZ_simple
	;;
	wfxl $pcr, $r48r49.hi 	#Opcode-kv3_v2-WFXL_systemT2_registerZ_simple
	;;
	wfxl $s1, $r48r49r50r51.y 	#Opcode-kv3_v2-WFXL_systemT4_registerZ_simple
	;;
	wfxm $s1, $r50 	#Opcode-kv3_v2-WFXM_systemAlone_registerZ_simple
	;;
	wfxm $s2, $r50r51.lo 	#Opcode-kv3_v2-WFXM_systemT2_registerZ_simple
	;;
	wfxm $pcr, $r48r49r50r51.z 	#Opcode-kv3_v2-WFXM_systemT4_registerZ_simple
	;;
	xaccesso $r20r21r22r23 = $a0..a1, $r51 	#Opcode-kv3_v2-XACCESSO_registerN_registerCg_registerZ_simple
	;;
	xaccesso $r24r25r26r27 = $a0..a3, $r50r51.hi 	#Opcode-kv3_v2-XACCESSO_registerN_registerCh_registerZ_simple
	;;
	xaccesso $r28r29r30r31 = $a0..a7, $r48r49r50r51.t 	#Opcode-kv3_v2-XACCESSO_registerN_registerCi_registerZ_simple
	;;
	xaccesso $r32r33r34r35 = $a0..a15, $r52 	#Opcode-kv3_v2-XACCESSO_registerN_registerCj_registerZ_simple
	;;
	xaccesso $r36r37r38r39 = $a0..a31, $r52r53.lo 	#Opcode-kv3_v2-XACCESSO_registerN_registerCk_registerZ_simple
	;;
	xaccesso $r40r41r42r43 = $a0..a63, $r52r53r54r55.x 	#Opcode-kv3_v2-XACCESSO_registerN_registerCl_registerZ_simple
	;;
	xaligno $a0 = $a2..a3, $r53 	#Opcode-kv3_v2-XALIGNO_registerA_registerCg_registerZ_simple
	;;
	xaligno $a0a1.lo = $a4..a7, $r52r53.hi 	#Opcode-kv3_v2-XALIGNO_registerA_registerCh_registerZ_simple
	;;
	xaligno $a0a1a2a3.x = $a8..a15, $r52r53r54r55.y 	#Opcode-kv3_v2-XALIGNO_registerA_registerCi_registerZ_simple
	;;
	xaligno $a1 = $a16..a31, $r54 	#Opcode-kv3_v2-XALIGNO_registerA_registerCj_registerZ_simple
	;;
	xaligno $a0a1.hi = $a32..a63, $r54r55.lo 	#Opcode-kv3_v2-XALIGNO_registerA_registerCk_registerZ_simple
	;;
	xaligno $a0a1a2a3.y = $a0..a63, $r52r53r54r55.z 	#Opcode-kv3_v2-XALIGNO_registerA_registerCl_registerZ_simple
	;;
	xandno $a2 = $a2a3.lo, $a0a1a2a3.z 	#Opcode-kv3_v2-XANDNO_registerA_registerB_registerC_simple
	;;
	xando $a3 = $a2a3.hi, $a0a1a2a3.t 	#Opcode-kv3_v2-XANDO_registerA_registerB_registerC_simple
	;;
	xclampwo $a4 = $a4a5.lo, $a4a5a6a7.x 	#Opcode-kv3_v2-XCLAMPWO_registerA_registerC_registerD_simple
	;;
	xcopyo $a5 = $a4a5.hi 	#Opcode-kv3_v2-XCOPYO_registerA_registerC_simple
	;;
	xcopyv $a0a1a2a3 = $a4a5a6a7 	#Opcode-kv3_v2-XCOPYV_shuffleV_registerAq_registerCq_simple
	;;
	xcopyx $a0a1 = $a0a1a2a3.lo 	#Opcode-kv3_v2-XCOPYX_shuffleX_registerAp_registerCp_simple
	;;
	xeoro $a4a5a6a7.y = $a6, $a6a7.lo 	#Opcode-kv3_v2-XEORO_registerA_registerB_registerC_simple
	;;
	xffma44hw.rna.s $a2a3 = $a4a5a6a7.z, $a7 	#Opcode-kv3_v2-XFFMA44HW_rounding_silent_registerAp_registerC_registerD_simple
	;;
	xfmaxhx $a6a7.hi = $a4a5a6a7.t, $a8 	#Opcode-kv3_v2-XFMAXHX_registerA_registerC_registerD_simple
	;;
	xfminhx $a8a9.lo = $a8a9a10a11.x, $a9 	#Opcode-kv3_v2-XFMINHX_registerA_registerC_registerD_simple
	;;
	xfmma484hw.rnz $a0a1a2a3.hi = $a4a5, $a4a5a6a7.lo 	#Opcode-kv3_v2-XFMMA484HW_rounding_silent_registerAp_registerCp_registerDp_simple
	;;
	xfnarrow44wh.ro.s $a8a9.hi = $a6a7 	#Opcode-kv3_v2-XFNARROW44WH_rounding_silent_registerA_registerCp_simple
	;;
	xfscalewo $a8a9a10a11.y = $a10, $r55 	#Opcode-kv3_v2-XFSCALEWO_rounding_silent_registerA_registerC_registerZ_simple
	;;
	xiorno $a10a11.lo = $a8a9a10a11.z, $a11 	#Opcode-kv3_v2-XIORNO_registerA_registerB_registerC_simple
	;;
	xioro $a10a11.hi = $a8a9a10a11.t, $a12 	#Opcode-kv3_v2-XIORO_registerA_registerB_registerC_simple
	;;
	xlo.u.q0 $a8a9a10a11 = $r54r55.hi[$r52r53r54r55.t] 	#Opcode-kv3_v2-XLO_variant_doscale_qindex_registerAq_registerY_registerZ_simple
	;;
	xlo.us.xs $a12a13.lo = $r56[$r56r57.lo] 	#Opcode-kv3_v2-XLO_variant_doscale_registerA_registerY_registerZ_simple
	;;
	xlo.dnez.q1 $r56r57r58r59.x? $a12a13a14a15 = -1125899906842624[$r57] 	#Opcode-kv3_v2-XLO_variant_lsumask_qindex_registerY_registerAq_extend27_offset27_registerZ_triple
	;;
	xlo.s.deqz.q2 $r56r57.hi? $a16a17a18a19 = -8388608[$r56r57r58r59.y] 	#Opcode-kv3_v2-XLO_variant_lsumask_qindex_registerY_registerAq_offset27_registerZ_double
	;;
	xlo.u.wnez.q3 $r58? $a20a21a22a23 = [$r58r59.lo] 	#Opcode-kv3_v2-XLO_variant_lsumask_qindex_registerY_registerAq_registerZ_simple
	;;
	xlo.us.weqz $r56r57r58r59.z? $a12a13a14a15.x = -1125899906842624[$r59] 	#Opcode-kv3_v2-XLO_variant_lsumask_registerY_registerA_extend27_offset27_registerZ_triple
	;;
	xlo.mt $r58r59.hi? $a13 = -8388608[$r56r57r58r59.t] 	#Opcode-kv3_v2-XLO_variant_lsumask_registerY_registerA_offset27_registerZ_double
	;;
	xlo.s.mf $r60? $a12a13.hi = [$r60r61.lo] 	#Opcode-kv3_v2-XLO_variant_lsumask_registerY_registerA_registerZ_simple
	;;
	xlo.u $a4..a5, $r60r61r62r63.x = -1125899906842624[$r61] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAg_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.us.q $a6..a7, $r60r61.hi = -8388608[$r60r61r62r63.y] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAg_registerY_offset27_registerZ_double
	;;
	xlo.d $a8..a9, $r62 = [$r62r63.lo] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAg_registerY_registerZ_simple
	;;
	xlo.s.w $a8..a11, $r60r61r62r63.z = -1125899906842624[$r63] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAh_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.u.h $a12..a15, $r62r63.hi = -8388608[$r60r61r62r63.t] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAh_registerY_offset27_registerZ_double
	;;
	xlo.us.b $a16..a19, $r0 = [$r0r1.lo] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAh_registerY_registerZ_simple
	;;
	xlo $a16..a23, $r0r1r2r3.x = -1125899906842624[$r1] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAi_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.s.q $a24..a31, $r0r1.hi = -8388608[$r0r1r2r3.y] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAi_registerY_offset27_registerZ_double
	;;
	xlo.u.d $a32..a39, $r2 = [$r2r3.lo] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAi_registerY_registerZ_simple
	;;
	xlo.us.w $a32..a47, $r0r1r2r3.z = -1125899906842624[$r3] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAj_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.h $a48..a63, $r2r3.hi = -8388608[$r0r1r2r3.t] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAj_registerY_offset27_registerZ_double
	;;
	xlo.s.b $a0..a15, $r4 = [$r4r5.lo] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAj_registerY_registerZ_simple
	;;
	xlo.u $a0..a31, $r4r5r6r7.x = -1125899906842624[$r5] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAk_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.us.q $a32..a63, $r4r5.hi = -8388608[$r4r5r6r7.y] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAk_registerY_offset27_registerZ_double
	;;
	xlo.d $a0..a31, $r6 = [$r6r7.lo] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAk_registerY_registerZ_simple
	;;
	xlo.s.w $a0..a63, $r4r5r6r7.z = -1125899906842624[$r7] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAl_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.u.h $a0..a63, $r6r7.hi = -8388608[$r4r5r6r7.t] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAl_registerY_offset27_registerZ_double
	;;
	xlo.us.b $a0..a63, $r8 = [$r8r9.lo] 	#Opcode-kv3_v2-XLO_variant_lsupack_registerAl_registerY_registerZ_simple
	;;
	xlo.q0 $a24a25a26a27 = 2305843009213693951[$r8r9r10r11.x] 	#Opcode-kv3_v2-XLO_variant_qindex_registerAq_extend27_upper27_lower10_registerZ_triple
	;;
	xlo.s.q1 $a28a29a30a31 = -64[$r9] 	#Opcode-kv3_v2-XLO_variant_qindex_registerAq_signed10_registerZ_simple
	;;
	xlo.u.q2 $a32a33a34a35 = -8589934592[$r8r9.hi] 	#Opcode-kv3_v2-XLO_variant_qindex_registerAq_upper27_lower10_registerZ_double
	;;
	xlo.us $a12a13a14a15.y = 2305843009213693951[$r8r9r10r11.y] 	#Opcode-kv3_v2-XLO_variant_registerA_extend27_upper27_lower10_registerZ_triple
	;;
	xlo $a14 = -64[$r10] 	#Opcode-kv3_v2-XLO_variant_registerA_signed10_registerZ_simple
	;;
	xlo.s $a14a15.lo = -8589934592[$r10r11.lo] 	#Opcode-kv3_v2-XLO_variant_registerA_upper27_lower10_registerZ_double
	;;
	xmadd44bw0 $a4a5a6a7.hi = $a12a13a14a15.z, $a15 	#Opcode-kv3_v2-XMADD44BW0_registerAp_registerC_registerD_simple
	;;
	xmadd44bw1 $a8a9 = $a14a15.hi, $a12a13a14a15.t 	#Opcode-kv3_v2-XMADD44BW1_registerAp_registerC_registerD_simple
	;;
	xmaddifwo.rn.s $a16 = $a16a17.lo, $a16a17a18a19.x 	#Opcode-kv3_v2-XMADDIFWO_rounding_silent_registerA_registerC_registerD_simple
	;;
	xmaddsu44bw0 $a8a9a10a11.lo = $a17, $a16a17.hi 	#Opcode-kv3_v2-XMADDSU44BW0_registerAp_registerC_registerD_simple
	;;
	xmaddsu44bw1 $a10a11 = $a16a17a18a19.y, $a18 	#Opcode-kv3_v2-XMADDSU44BW1_registerAp_registerC_registerD_simple
	;;
	xmaddu44bw0 $a8a9a10a11.hi = $a18a19.lo, $a16a17a18a19.z 	#Opcode-kv3_v2-XMADDU44BW0_registerAp_registerC_registerD_simple
	;;
	xmaddu44bw1 $a12a13 = $a19, $a18a19.hi 	#Opcode-kv3_v2-XMADDU44BW1_registerAp_registerC_registerD_simple
	;;
	xmma4164bw $a12a13a14a15.lo = $a14a15, $a12a13a14a15.hi 	#Opcode-kv3_v2-XMMA4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmma484bw $a16a17 = $a16a17a18a19.t, $a20 	#Opcode-kv3_v2-XMMA484BW_registerAp_registerC_registerD_simple
	;;
	xmmasu4164bw $a16a17a18a19.lo = $a18a19, $a16a17a18a19.hi 	#Opcode-kv3_v2-XMMASU4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmmasu484bw $a20a21 = $a20a21.lo, $a20a21a22a23.x 	#Opcode-kv3_v2-XMMASU484BW_registerAp_registerC_registerD_simple
	;;
	xmmau4164bw $a20a21a22a23.lo = $a22a23, $a20a21a22a23.hi 	#Opcode-kv3_v2-XMMAU4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmmau484bw $a24a25 = $a21, $a20a21.hi 	#Opcode-kv3_v2-XMMAU484BW_registerAp_registerC_registerD_simple
	;;
	xmmaus4164bw $a24a25a26a27.lo = $a26a27, $a24a25a26a27.hi 	#Opcode-kv3_v2-XMMAUS4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmmaus484bw $a28a29 = $a20a21a22a23.y, $a22 	#Opcode-kv3_v2-XMMAUS484BW_registerAp_registerC_registerD_simple
	;;
	xmovefd $r8r9r10r11.z = $a0_x 	#Opcode-kv3_v2-XMOVEFD_registerW_registerCc_qselectC_simple
	;;
	xmovefo $r44r45r46r47 = $a22a23.lo 	#Opcode-kv3_v2-XMOVEFO_registerN_registerC_simple
	;;
	xmovefq $r48r49 = $a0_lo 	#Opcode-kv3_v2-XMOVEFQ_registerM_registerCb_hselectC_simple
	;;
	xmovetd $a0_t = $r11 	#Opcode-kv3_v2-XMOVETD_registerAt_registerZ_simple
	;;
	xmovetd $a0_x = $r10r11.hi 	#Opcode-kv3_v2-XMOVETD_registerAx_registerZ_simple
	;;
	xmovetd $a0_y = $r8r9r10r11.t 	#Opcode-kv3_v2-XMOVETD_registerAy_registerZ_simple
	;;
	xmovetd $a0_z = $r12 	#Opcode-kv3_v2-XMOVETD_registerAz_registerZ_simple
	;;
	xmovetq $a0_lo = $sp, $r13 	#Opcode-kv3_v2-XMOVETQ_registerAE_registerZ_registerY_simple
	;;
	xmovetq $a0_hi = $tp, $r14 	#Opcode-kv3_v2-XMOVETQ_registerAO_registerZ_registerY_simple
	;;
	xmsbfifwo.ru $a20a21a22a23.z = $a23, $a22a23.hi 	#Opcode-kv3_v2-XMSBFIFWO_rounding_silent_registerA_registerC_registerD_simple
	;;
	xmt44d $a36a37a38a39 = $a40a41a42a43 	#Opcode-kv3_v2-XMT44D_registerAq_registerCq_simple
	;;
	xnando $a20a21a22a23.t = $a24, $a24a25.lo 	#Opcode-kv3_v2-XNANDO_registerA_registerB_registerC_simple
	;;
	xneoro $a24a25a26a27.x = $a25, $a24a25.hi 	#Opcode-kv3_v2-XNEORO_registerA_registerB_registerC_simple
	;;
	xnioro $a24a25a26a27.y = $a26, $a26a27.lo 	#Opcode-kv3_v2-XNIORO_registerA_registerB_registerC_simple
	;;
	xnoro $a24a25a26a27.z = $a27, $a26a27.hi 	#Opcode-kv3_v2-XNORO_registerA_registerB_registerC_simple
	;;
	xnxoro $a24a25a26a27.t = $a28, $a28a29.lo 	#Opcode-kv3_v2-XNXORO_registerA_registerB_registerC_simple
	;;
	xord $fp = $r15, 2305843009213693951 	#Opcode-kv3_v2-XORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	xord $rp = $r16, $r16r17.lo 	#Opcode-kv3_v2-XORD_registerW_registerZ_registerY_simple
	;;
	xord $r16r17r18r19.x = $r17, -64 	#Opcode-kv3_v2-XORD_registerW_registerZ_signed10_simple
	;;
	xord $r16r17.hi = $r16r17r18r19.y, -8589934592 	#Opcode-kv3_v2-XORD_registerW_registerZ_upper27_lower10_double
	;;
	xorno $a28a29a30a31.x = $a29, $a28a29.hi 	#Opcode-kv3_v2-XORNO_registerA_registerB_registerC_simple
	;;
	xoro $a28a29a30a31.y = $a30, $a30a31.lo 	#Opcode-kv3_v2-XORO_registerA_registerB_registerC_simple
	;;
	xorrbod $r18 = $r18r19.lo 	#Opcode-kv3_v2-XORRBOD_registerW_registerZ_simple
	;;
	xorrhqd $r16r17r18r19.z = $r19 	#Opcode-kv3_v2-XORRHQD_registerW_registerZ_simple
	;;
	xorrwpd $r18r19.hi = $r16r17r18r19.t 	#Opcode-kv3_v2-XORRWPD_registerW_registerZ_simple
	;;
	xorw $r20 = $r20r21.lo, $r20r21r22r23.x 	#Opcode-kv3_v2-XORW_registerW_registerZ_registerY_simple
	;;
	xorw $r21 = $r20r21.hi, -64 	#Opcode-kv3_v2-XORW_registerW_registerZ_signed10_simple
	;;
	xorw $r20r21r22r23.y = $r22, -8589934592 	#Opcode-kv3_v2-XORW_registerW_registerZ_upper27_lower10_double
	;;
	xrecvo.f $a28a29a30a31.z 	#Opcode-kv3_v2-XRECVO_rchannel_registerA_simple
	;;
	xsbmm8dq $a31 = $a30a31.hi, $a28a29a30a31.t 	#Opcode-kv3_v2-XSBMM8DQ_registerA_registerB_registerC_simple
	;;
	xsbmmt8dq $a32 = $a32a33.lo, $a32a33a34a35.x 	#Opcode-kv3_v2-XSBMMT8DQ_registerA_registerB_registerC_simple
	;;
	xsendo.b $a33 	#Opcode-kv3_v2-XSENDO_schannel_registerC_simple
	;;
	xsendrecvo.f.b $a32a33.hi, $a32a33a34a35.y 	#Opcode-kv3_v2-XSENDRECVO_schannel_rchannel_registerC_registerA_simple
	;;
	xso $r22r23.lo[$r20r21r22r23.z] = $a34 	#Opcode-kv3_v2-XSO_doscale_registerY_registerZ_registerE_simple
	;;
	xso 2305843009213693951[$r23] = $a34a35.lo 	#Opcode-kv3_v2-XSO_extend27_upper27_lower10_registerZ_registerE_triple
	;;
	xso.mtc $r22r23.hi? -1125899906842624[$r20r21r22r23.t] = $a32a33a34a35.z 	#Opcode-kv3_v2-XSO_lsumask_registerY_extend27_offset27_registerZ_registerE_triple
	;;
	xso.mfc $r24? -8388608[$r24r25.lo] = $a35 	#Opcode-kv3_v2-XSO_lsumask_registerY_offset27_registerZ_registerE_double
	;;
	xso.dnez $r24r25r26r27.x? [$r25] = $a34a35.hi 	#Opcode-kv3_v2-XSO_lsumask_registerY_registerZ_registerE_simple
	;;
	xso -64[$r24r25.hi] = $a32a33a34a35.t 	#Opcode-kv3_v2-XSO_signed10_registerZ_registerE_simple
	;;
	xso -8589934592[$r24r25r26r27.y] = $a36 	#Opcode-kv3_v2-XSO_upper27_lower10_registerZ_registerE_double
	;;
	xsplatdo $a36a37.lo = 2305843009213693951 	#Opcode-kv3_v2-XSPLATDO_registerA_extend27_upper27_lower10_triple
	;;
	xsplatdo $a36a37a38a39.x = -549755813888 	#Opcode-kv3_v2-XSPLATDO_registerA_extend6_upper27_lower10_double
	;;
	xsplatdo $a37 = -4096 	#Opcode-kv3_v2-XSPLATDO_registerA_signed16_simple
	;;
	xsplatov.td $a44a45a46a47 = $a36a37.hi 	#Opcode-kv3_v2-XSPLATOV_shuffleV_registerAq_registerC_simple
	;;
	xsplatox.zd $a28a29a30a31.lo = $a36a37a38a39.y 	#Opcode-kv3_v2-XSPLATOX_shuffleX_registerAp_registerC_simple
	;;
	xsx48bw $a48a49a50a51 = $a38 	#Opcode-kv3_v2-XSX48BW_registerAq_registerC_simple
	;;
	xtrunc48wb $a38a39.lo = $a52a53a54a55 	#Opcode-kv3_v2-XTRUNC48WB_registerA_registerCq_simple
	;;
	xxoro $a36a37a38a39.z = $a39, $a38a39.hi 	#Opcode-kv3_v2-XXORO_registerA_registerB_registerC_simple
	;;
	xzx48bw $a56a57a58a59 = $a36a37a38a39.t 	#Opcode-kv3_v2-XZX48BW_registerAq_registerC_simple
	;;
	zxbd $r26 = $r26r27.lo 	#Opcode-kv3_v2-ZXBD_registerW_registerZ_simple
	;;
	zxhd $r24r25r26r27.z = $r27 	#Opcode-kv3_v2-ZXHD_registerW_registerZ_simple
	;;
	zxlbhq $r26r27.hi = $r24r25r26r27.t 	#Opcode-kv3_v2-ZXLBHQ_registerW_registerZ_simple
	;;
	zxlhwp $r28 = $r28r29.lo 	#Opcode-kv3_v2-ZXLHWP_registerW_registerZ_simple
	;;
	zxmbhq $r28r29r30r31.x = $r29 	#Opcode-kv3_v2-ZXMBHQ_registerW_registerZ_simple
	;;
	zxmhwp $r28r29.hi = $r28r29r30r31.y 	#Opcode-kv3_v2-ZXMHWP_registerW_registerZ_simple
	;;
	zxwd $r30 = $r30r31.lo 	#Opcode-kv3_v2-ZXWD_registerW_registerZ_simple
	;;
	.endp	main
	.section .text
