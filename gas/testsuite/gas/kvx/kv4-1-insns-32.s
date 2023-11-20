	##-----------------------------------------------------------
	## Generating test.s from MDS
	## (c) Copyright 2010-2018 Kalray SA.
	##-----------------------------------------------------------

#	Option: '-m32'

##	target-core:	kv4-1

	.section .text

	.align 8
	.proc	main
	.global	main
main:
	abdbo $r0 = $r0r1.lo, $r0r1r2r3.x 	#Opcode-kv4_v1-ABDBO_registerW_registerZ_registerY_simple
	;;
	abdbo $r1 = $r0r1.hi, 536870911 	#Opcode-kv4_v1-ABDBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdd $r0r1r2r3.y = $r2, 2305843009213693951 	#Opcode-kv4_v1-ABDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	abdd $r2r3.lo = $r0r1r2r3.z, $r3 	#Opcode-kv4_v1-ABDD_registerW_registerZ_registerY_simple
	;;
	abdd $r2r3.hi = $r0r1r2r3.t, -64 	#Opcode-kv4_v1-ABDD_registerW_registerZ_signed10_simple
	;;
	abdd $r4 = $r4r5.lo, -8589934592 	#Opcode-kv4_v1-ABDD_registerW_registerZ_upper27_lower10_double
	;;
	abdhq $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv4_v1-ABDHQ_registerW_registerZ_registerY_simple
	;;
	abdhq $r4r5r6r7.y = $r6, 536870911.@ 	#Opcode-kv4_v1-ABDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdsbo $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv4_v1-ABDSBO_registerW_registerZ_registerY_simple
	;;
	abdsbo $r6r7.hi = $r4r5r6r7.t, 536870911 	#Opcode-kv4_v1-ABDSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdsd $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv4_v1-ABDSD_registerW_registerZ_registerY_simple
	;;
	abdsd $r9 = $r8r9.hi, 536870911.@ 	#Opcode-kv4_v1-ABDSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdshq $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv4_v1-ABDSHQ_registerW_registerZ_registerY_simple
	;;
	abdshq $r8r9r10r11.z = $r11, 536870911 	#Opcode-kv4_v1-ABDSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdswp $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv4_v1-ABDSWP_registerW_registerZ_registerY_simple
	;;
	abdswp $sp = $r13, 536870911.@ 	#Opcode-kv4_v1-ABDSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdsw $tp = $r14, $fp 	#Opcode-kv4_v1-ABDSW_registerW_registerZ_registerY_simple
	;;
	abdsw $r15 = $rp, 536870911 	#Opcode-kv4_v1-ABDSW_registerW_registerZ_upper27_lower5_double
	;;
	abdubo $r16 = $r16r17.lo, $r16r17r18r19.x 	#Opcode-kv4_v1-ABDUBO_registerW_registerZ_registerY_simple
	;;
	abdubo $r17 = $r16r17.hi, 536870911 	#Opcode-kv4_v1-ABDUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdud $r16r17r18r19.y = $r18, $r18r19.lo 	#Opcode-kv4_v1-ABDUD_registerW_registerZ_registerY_simple
	;;
	abdud $r16r17r18r19.z = $r19, 536870911.@ 	#Opcode-kv4_v1-ABDUD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abduhq $r18r19.hi = $r16r17r18r19.t, $r20 	#Opcode-kv4_v1-ABDUHQ_registerW_registerZ_registerY_simple
	;;
	abduhq $r20r21.lo = $r20r21r22r23.x, 536870911 	#Opcode-kv4_v1-ABDUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abduwp $r21 = $r20r21.hi, $r20r21r22r23.y 	#Opcode-kv4_v1-ABDUWP_registerW_registerZ_registerY_simple
	;;
	abduwp $r22 = $r22r23.lo, 536870911.@ 	#Opcode-kv4_v1-ABDUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abduw $r20r21r22r23.z = $r23, $r22r23.hi 	#Opcode-kv4_v1-ABDUW_registerW_registerZ_registerY_simple
	;;
	abduw $r20r21r22r23.t = $r24, 536870911 	#Opcode-kv4_v1-ABDUW_registerW_registerZ_upper27_lower5_double
	;;
	abdwp $r24r25.lo = $r24r25r26r27.x, $r25 	#Opcode-kv4_v1-ABDWP_registerW_registerZ_registerY_simple
	;;
	abdwp $r24r25.hi = $r24r25r26r27.y, 536870911 	#Opcode-kv4_v1-ABDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	abdw $r26 = $r26r27.lo, $r24r25r26r27.z 	#Opcode-kv4_v1-ABDW_registerW_registerZ_registerY_simple
	;;
	abdw $r27 = $r26r27.hi, 536870911 	#Opcode-kv4_v1-ABDW_registerW_registerZ_upper27_lower5_double
	;;
	absbo $r24r25r26r27.t = $r28 	#Opcode-kv4_v1-ABSBO_registerW_registerZ_double
	;;
	absd $r28r29.lo = $r28r29r30r31.x 	#Opcode-kv4_v1-ABSD_registerW_registerZ_simple
	;;
	abshq $r29 = $r28r29.hi 	#Opcode-kv4_v1-ABSHQ_registerW_registerZ_double
	;;
	abssbo $r28r29r30r31.y = $r30 	#Opcode-kv4_v1-ABSSBO_registerW_registerZ_double
	;;
	abssd $r30r31.lo = $r28r29r30r31.z 	#Opcode-kv4_v1-ABSSD_registerW_registerZ_double
	;;
	absshq $r31 = $r30r31.hi 	#Opcode-kv4_v1-ABSSHQ_registerW_registerZ_double
	;;
	absswp $r28r29r30r31.t = $r32 	#Opcode-kv4_v1-ABSSWP_registerW_registerZ_double
	;;
	abssw $r32r33.lo = $r32r33r34r35.x 	#Opcode-kv4_v1-ABSSW_registerW_registerZ_double
	;;
	abswp $r33 = $r32r33.hi 	#Opcode-kv4_v1-ABSWP_registerW_registerZ_double
	;;
	absw $r32r33r34r35.y = $r34 	#Opcode-kv4_v1-ABSW_registerW_registerZ_double
	;;
	acswapd.v $r34r35.lo, -1125899906842624[$r32r33r34r35.z] = $r0r1 	#Opcode-kv4_v1-ACSWAPD_boolcas_coherency_registerW_extend27_offset27_registerZ_registerO_triple
	;;
	acswapd.g $r35, -8388608[$r34r35.hi] = $r0r1r2r3.lo 	#Opcode-kv4_v1-ACSWAPD_boolcas_coherency_registerW_offset27_registerZ_registerO_double
	;;
	acswapd.v.s $r32r33r34r35.t, [$r36] = $r2r3 	#Opcode-kv4_v1-ACSWAPD_boolcas_coherency_registerW_registerZ_registerO_simple
	;;
	acswapq $r0r1r2r3.hi, -1125899906842624[$r36r37.lo] = $r0r1r2r3 	#Opcode-kv4_v1-ACSWAPQ_boolcas_coherency_registerM_extend27_offset27_registerZ_registerQ_triple
	;;
	acswapq.v.g $r4r5, -8388608[$r36r37r38r39.x] = $r4r5r6r7 	#Opcode-kv4_v1-ACSWAPQ_boolcas_coherency_registerM_offset27_registerZ_registerQ_double
	;;
	acswapq.s $r4r5r6r7.lo, [$r37] = $r8r9r10r11 	#Opcode-kv4_v1-ACSWAPQ_boolcas_coherency_registerM_registerZ_registerQ_simple
	;;
	acswapw.v $r36r37.hi, -1125899906842624[$r36r37r38r39.y] = $r6r7 	#Opcode-kv4_v1-ACSWAPW_boolcas_coherency_registerW_extend27_offset27_registerZ_registerO_triple
	;;
	acswapw.g $r38, -8388608[$r38r39.lo] = $r4r5r6r7.hi 	#Opcode-kv4_v1-ACSWAPW_boolcas_coherency_registerW_offset27_registerZ_registerO_double
	;;
	acswapw.v.s $r36r37r38r39.z, [$r39] = $r8r9 	#Opcode-kv4_v1-ACSWAPW_boolcas_coherency_registerW_registerZ_registerO_simple
	;;
	addbo $r38r39.hi = $r36r37r38r39.t, $r40 	#Opcode-kv4_v1-ADDBO_registerW_registerZ_registerY_simple
	;;
	addbo $r40r41.lo = $r40r41r42r43.x, 536870911.@ 	#Opcode-kv4_v1-ADDBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addcd.i $r41 = $r40r41.hi, $r40r41r42r43.y 	#Opcode-kv4_v1-ADDCD.I_registerW_registerZ_registerY_simple
	;;
	addcd.i $r42 = $r42r43.lo, 536870911 	#Opcode-kv4_v1-ADDCD.I_registerW_registerZ_upper27_lower5_double
	;;
	addcd $r40r41r42r43.z = $r43, $r42r43.hi 	#Opcode-kv4_v1-ADDCD_registerW_registerZ_registerY_simple
	;;
	addcd $r40r41r42r43.t = $r44, 536870911 	#Opcode-kv4_v1-ADDCD_registerW_registerZ_upper27_lower5_double
	;;
	addd $r44r45.lo = $r44r45r46r47.x, 2305843009213693951 	#Opcode-kv4_v1-ADDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	addd $r45 = $r44r45.hi, $r44r45r46r47.y 	#Opcode-kv4_v1-ADDD_registerW_registerZ_registerY_simple
	;;
	addd $r46 = $r46r47.lo, -64 	#Opcode-kv4_v1-ADDD_registerW_registerZ_signed10_simple
	;;
	addd $r44r45r46r47.z = $r47, -8589934592 	#Opcode-kv4_v1-ADDD_registerW_registerZ_upper27_lower10_double
	;;
	addhq $r46r47.hi = $r44r45r46r47.t, $r48 	#Opcode-kv4_v1-ADDHQ_registerW_registerZ_registerY_simple
	;;
	addhq $r48r49.lo = $r48r49r50r51.x, 536870911 	#Opcode-kv4_v1-ADDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addrbod $r49 = $r48r49.hi 	#Opcode-kv4_v1-ADDRBOD_registerW_registerZ_simple
	;;
	addrhqd $r48r49r50r51.y = $r50 	#Opcode-kv4_v1-ADDRHQD_registerW_registerZ_simple
	;;
	addrwpd $r50r51.lo = $r48r49r50r51.z 	#Opcode-kv4_v1-ADDRWPD_registerW_registerZ_simple
	;;
	addsbo $r51 = $r50r51.hi, $r48r49r50r51.t 	#Opcode-kv4_v1-ADDSBO_registerW_registerZ_registerY_simple
	;;
	addsbo $r52 = $r52r53.lo, 536870911.@ 	#Opcode-kv4_v1-ADDSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addsd $r52r53r54r55.x = $r53, $r52r53.hi 	#Opcode-kv4_v1-ADDSD_registerW_registerZ_registerY_simple
	;;
	addsd $r52r53r54r55.y = $r54, 536870911 	#Opcode-kv4_v1-ADDSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addshq $r54r55.lo = $r52r53r54r55.z, $r55 	#Opcode-kv4_v1-ADDSHQ_registerW_registerZ_registerY_simple
	;;
	addshq $r54r55.hi = $r52r53r54r55.t, 536870911.@ 	#Opcode-kv4_v1-ADDSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addswp $r56 = $r56r57.lo, $r56r57r58r59.x 	#Opcode-kv4_v1-ADDSWP_registerW_registerZ_registerY_simple
	;;
	addswp $r57 = $r56r57.hi, 536870911 	#Opcode-kv4_v1-ADDSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addsw $r56r57r58r59.y = $r58, $r58r59.lo 	#Opcode-kv4_v1-ADDSW_registerW_registerZ_registerY_simple
	;;
	addsw $r56r57r58r59.z = $r59, 536870911 	#Opcode-kv4_v1-ADDSW_registerW_registerZ_upper27_lower5_double
	;;
	addurbod $r58r59.hi = $r56r57r58r59.t 	#Opcode-kv4_v1-ADDURBOD_registerW_registerZ_simple
	;;
	addurhqd $r60 = $r60r61.lo 	#Opcode-kv4_v1-ADDURHQD_registerW_registerZ_simple
	;;
	addurwpd $r60r61r62r63.x = $r61 	#Opcode-kv4_v1-ADDURWPD_registerW_registerZ_simple
	;;
	addusbo $r60r61.hi = $r60r61r62r63.y, $r62 	#Opcode-kv4_v1-ADDUSBO_registerW_registerZ_registerY_simple
	;;
	addusbo $r62r63.lo = $r60r61r62r63.z, 536870911.@ 	#Opcode-kv4_v1-ADDUSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addusd $r63 = $r62r63.hi, $r60r61r62r63.t 	#Opcode-kv4_v1-ADDUSD_registerW_registerZ_registerY_simple
	;;
	addusd $r0 = $r0r1.lo, 536870911 	#Opcode-kv4_v1-ADDUSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addushq $r0r1r2r3.x = $r1, $r0r1.hi 	#Opcode-kv4_v1-ADDUSHQ_registerW_registerZ_registerY_simple
	;;
	addushq $r0r1r2r3.y = $r2, 536870911.@ 	#Opcode-kv4_v1-ADDUSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	adduswp $r2r3.lo = $r0r1r2r3.z, $r3 	#Opcode-kv4_v1-ADDUSWP_registerW_registerZ_registerY_simple
	;;
	adduswp $r2r3.hi = $r0r1r2r3.t, 536870911 	#Opcode-kv4_v1-ADDUSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addusw $r4 = $r4r5.lo, $r4r5r6r7.x 	#Opcode-kv4_v1-ADDUSW_registerW_registerZ_registerY_simple
	;;
	addusw $r5 = $r4r5.hi, 536870911 	#Opcode-kv4_v1-ADDUSW_registerW_registerZ_upper27_lower5_double
	;;
	adduwd $r4r5r6r7.y = $r6, $r6r7.lo 	#Opcode-kv4_v1-ADDUWD_registerW_registerZ_registerY_simple
	;;
	adduwd $r4r5r6r7.z = $r7, 536870911 	#Opcode-kv4_v1-ADDUWD_registerW_registerZ_upper27_lower5_double
	;;
	addwd $r6r7.hi = $r4r5r6r7.t, $r8 	#Opcode-kv4_v1-ADDWD_registerW_registerZ_registerY_simple
	;;
	addwd $r8r9.lo = $r8r9r10r11.x, 536870911 	#Opcode-kv4_v1-ADDWD_registerW_registerZ_upper27_lower5_double
	;;
	addwp $r9 = $r8r9.hi, $r8r9r10r11.y 	#Opcode-kv4_v1-ADDWP_registerW_registerZ_registerY_simple
	;;
	addwp $r10 = $r10r11.lo, 536870911.@ 	#Opcode-kv4_v1-ADDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addw $r8r9r10r11.z = $r11, $r10r11.hi 	#Opcode-kv4_v1-ADDW_registerW_registerZ_registerY_simple
	;;
	addw $r8r9r10r11.t = $r12, 536870911 	#Opcode-kv4_v1-ADDW_registerW_registerZ_upper27_lower5_double
	;;
	addx16bo $sp = $r13, $tp 	#Opcode-kv4_v1-ADDX16BO_registerW_registerZ_registerY_simple
	;;
	addx16bo $r14 = $fp, 536870911 	#Opcode-kv4_v1-ADDX16BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16d $r15 = $rp, $r16 	#Opcode-kv4_v1-ADDX16D_registerW_registerZ_registerY_simple
	;;
	addx16d $r16r17.lo = $r16r17r18r19.x, 536870911.@ 	#Opcode-kv4_v1-ADDX16D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16hq $r17 = $r16r17.hi, $r16r17r18r19.y 	#Opcode-kv4_v1-ADDX16HQ_registerW_registerZ_registerY_simple
	;;
	addx16hq $r18 = $r18r19.lo, 536870911 	#Opcode-kv4_v1-ADDX16HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16uwd $r16r17r18r19.z = $r19, $r18r19.hi 	#Opcode-kv4_v1-ADDX16UWD_registerW_registerZ_registerY_simple
	;;
	addx16uwd $r16r17r18r19.t = $r20, 536870911 	#Opcode-kv4_v1-ADDX16UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx16wd $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv4_v1-ADDX16WD_registerW_registerZ_registerY_simple
	;;
	addx16wd $r20r21.hi = $r20r21r22r23.y, 536870911 	#Opcode-kv4_v1-ADDX16WD_registerW_registerZ_upper27_lower5_double
	;;
	addx16wp $r22 = $r22r23.lo, $r20r21r22r23.z 	#Opcode-kv4_v1-ADDX16WP_registerW_registerZ_registerY_simple
	;;
	addx16wp $r23 = $r22r23.hi, 536870911.@ 	#Opcode-kv4_v1-ADDX16WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx16w $r20r21r22r23.t = $r24, $r24r25.lo 	#Opcode-kv4_v1-ADDX16W_registerW_registerZ_registerY_simple
	;;
	addx16w $r24r25r26r27.x = $r25, 536870911 	#Opcode-kv4_v1-ADDX16W_registerW_registerZ_upper27_lower5_double
	;;
	addx2bo $r24r25.hi = $r24r25r26r27.y, $r26 	#Opcode-kv4_v1-ADDX2BO_registerW_registerZ_registerY_simple
	;;
	addx2bo $r26r27.lo = $r24r25r26r27.z, 536870911 	#Opcode-kv4_v1-ADDX2BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2d $r27 = $r26r27.hi, $r24r25r26r27.t 	#Opcode-kv4_v1-ADDX2D_registerW_registerZ_registerY_simple
	;;
	addx2d $r28 = $r28r29.lo, 536870911.@ 	#Opcode-kv4_v1-ADDX2D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2hq $r28r29r30r31.x = $r29, $r28r29.hi 	#Opcode-kv4_v1-ADDX2HQ_registerW_registerZ_registerY_simple
	;;
	addx2hq $r28r29r30r31.y = $r30, 536870911 	#Opcode-kv4_v1-ADDX2HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2uwd $r30r31.lo = $r28r29r30r31.z, $r31 	#Opcode-kv4_v1-ADDX2UWD_registerW_registerZ_registerY_simple
	;;
	addx2uwd $r30r31.hi = $r28r29r30r31.t, 536870911 	#Opcode-kv4_v1-ADDX2UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx2wd $r32 = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv4_v1-ADDX2WD_registerW_registerZ_registerY_simple
	;;
	addx2wd $r33 = $r32r33.hi, 536870911 	#Opcode-kv4_v1-ADDX2WD_registerW_registerZ_upper27_lower5_double
	;;
	addx2wp $r32r33r34r35.y = $r34, $r34r35.lo 	#Opcode-kv4_v1-ADDX2WP_registerW_registerZ_registerY_simple
	;;
	addx2wp $r32r33r34r35.z = $r35, 536870911.@ 	#Opcode-kv4_v1-ADDX2WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx2w $r34r35.hi = $r32r33r34r35.t, $r36 	#Opcode-kv4_v1-ADDX2W_registerW_registerZ_registerY_simple
	;;
	addx2w $r36r37.lo = $r36r37r38r39.x, 536870911 	#Opcode-kv4_v1-ADDX2W_registerW_registerZ_upper27_lower5_double
	;;
	addx32d $r37 = $r36r37.hi, $r36r37r38r39.y 	#Opcode-kv4_v1-ADDX32D_registerW_registerZ_registerY_simple
	;;
	addx32d $r38 = $r38r39.lo, 536870911 	#Opcode-kv4_v1-ADDX32D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx32uwd $r36r37r38r39.z = $r39, $r38r39.hi 	#Opcode-kv4_v1-ADDX32UWD_registerW_registerZ_registerY_simple
	;;
	addx32uwd $r36r37r38r39.t = $r40, 536870911 	#Opcode-kv4_v1-ADDX32UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx32wd $r40r41.lo = $r40r41r42r43.x, $r41 	#Opcode-kv4_v1-ADDX32WD_registerW_registerZ_registerY_simple
	;;
	addx32wd $r40r41.hi = $r40r41r42r43.y, 536870911 	#Opcode-kv4_v1-ADDX32WD_registerW_registerZ_upper27_lower5_double
	;;
	addx32w $r42 = $r42r43.lo, $r40r41r42r43.z 	#Opcode-kv4_v1-ADDX32W_registerW_registerZ_registerY_simple
	;;
	addx32w $r43 = $r42r43.hi, 536870911 	#Opcode-kv4_v1-ADDX32W_registerW_registerZ_upper27_lower5_double
	;;
	addx4bo $r40r41r42r43.t = $r44, $r44r45.lo 	#Opcode-kv4_v1-ADDX4BO_registerW_registerZ_registerY_simple
	;;
	addx4bo $r44r45r46r47.x = $r45, 536870911.@ 	#Opcode-kv4_v1-ADDX4BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4d $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv4_v1-ADDX4D_registerW_registerZ_registerY_simple
	;;
	addx4d $r46r47.lo = $r44r45r46r47.z, 536870911 	#Opcode-kv4_v1-ADDX4D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4hq $r47 = $r46r47.hi, $r44r45r46r47.t 	#Opcode-kv4_v1-ADDX4HQ_registerW_registerZ_registerY_simple
	;;
	addx4hq $r48 = $r48r49.lo, 536870911.@ 	#Opcode-kv4_v1-ADDX4HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4uwd $r48r49r50r51.x = $r49, $r48r49.hi 	#Opcode-kv4_v1-ADDX4UWD_registerW_registerZ_registerY_simple
	;;
	addx4uwd $r48r49r50r51.y = $r50, 536870911 	#Opcode-kv4_v1-ADDX4UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx4wd $r50r51.lo = $r48r49r50r51.z, $r51 	#Opcode-kv4_v1-ADDX4WD_registerW_registerZ_registerY_simple
	;;
	addx4wd $r50r51.hi = $r48r49r50r51.t, 536870911 	#Opcode-kv4_v1-ADDX4WD_registerW_registerZ_upper27_lower5_double
	;;
	addx4wp $r52 = $r52r53.lo, $r52r53r54r55.x 	#Opcode-kv4_v1-ADDX4WP_registerW_registerZ_registerY_simple
	;;
	addx4wp $r53 = $r52r53.hi, 536870911 	#Opcode-kv4_v1-ADDX4WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx4w $r52r53r54r55.y = $r54, $r54r55.lo 	#Opcode-kv4_v1-ADDX4W_registerW_registerZ_registerY_simple
	;;
	addx4w $r52r53r54r55.z = $r55, 536870911 	#Opcode-kv4_v1-ADDX4W_registerW_registerZ_upper27_lower5_double
	;;
	addx64d $r54r55.hi = $r52r53r54r55.t, $r56 	#Opcode-kv4_v1-ADDX64D_registerW_registerZ_registerY_simple
	;;
	addx64d $r56r57.lo = $r56r57r58r59.x, 536870911.@ 	#Opcode-kv4_v1-ADDX64D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx64uwd $r57 = $r56r57.hi, $r56r57r58r59.y 	#Opcode-kv4_v1-ADDX64UWD_registerW_registerZ_registerY_simple
	;;
	addx64uwd $r58 = $r58r59.lo, 536870911 	#Opcode-kv4_v1-ADDX64UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx64wd $r56r57r58r59.z = $r59, $r58r59.hi 	#Opcode-kv4_v1-ADDX64WD_registerW_registerZ_registerY_simple
	;;
	addx64wd $r56r57r58r59.t = $r60, 536870911 	#Opcode-kv4_v1-ADDX64WD_registerW_registerZ_upper27_lower5_double
	;;
	addx64w $r60r61.lo = $r60r61r62r63.x, $r61 	#Opcode-kv4_v1-ADDX64W_registerW_registerZ_registerY_simple
	;;
	addx64w $r60r61.hi = $r60r61r62r63.y, 536870911 	#Opcode-kv4_v1-ADDX64W_registerW_registerZ_upper27_lower5_double
	;;
	addx8bo $r62 = $r62r63.lo, $r60r61r62r63.z 	#Opcode-kv4_v1-ADDX8BO_registerW_registerZ_registerY_simple
	;;
	addx8bo $r63 = $r62r63.hi, 536870911 	#Opcode-kv4_v1-ADDX8BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8d $r60r61r62r63.t = $r0, $r0r1.lo 	#Opcode-kv4_v1-ADDX8D_registerW_registerZ_registerY_simple
	;;
	addx8d $r0r1r2r3.x = $r1, 536870911.@ 	#Opcode-kv4_v1-ADDX8D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8hq $r0r1.hi = $r0r1r2r3.y, $r2 	#Opcode-kv4_v1-ADDX8HQ_registerW_registerZ_registerY_simple
	;;
	addx8hq $r2r3.lo = $r0r1r2r3.z, 536870911 	#Opcode-kv4_v1-ADDX8HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8uwd $r3 = $r2r3.hi, $r0r1r2r3.t 	#Opcode-kv4_v1-ADDX8UWD_registerW_registerZ_registerY_simple
	;;
	addx8uwd $r4 = $r4r5.lo, 536870911 	#Opcode-kv4_v1-ADDX8UWD_registerW_registerZ_upper27_lower5_double
	;;
	addx8wd $r4r5r6r7.x = $r5, $r4r5.hi 	#Opcode-kv4_v1-ADDX8WD_registerW_registerZ_registerY_simple
	;;
	addx8wd $r4r5r6r7.y = $r6, 536870911 	#Opcode-kv4_v1-ADDX8WD_registerW_registerZ_upper27_lower5_double
	;;
	addx8wp $r6r7.lo = $r4r5r6r7.z, $r7 	#Opcode-kv4_v1-ADDX8WP_registerW_registerZ_registerY_simple
	;;
	addx8wp $r6r7.hi = $r4r5r6r7.t, 536870911.@ 	#Opcode-kv4_v1-ADDX8WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	addx8w $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv4_v1-ADDX8W_registerW_registerZ_registerY_simple
	;;
	addx8w $r9 = $r8r9.hi, 536870911 	#Opcode-kv4_v1-ADDX8W_registerW_registerZ_upper27_lower5_double
	;;
	aladdd -1125899906842624[$r8r9r10r11.y] = $r10 	#Opcode-kv4_v1-ALADDD_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	aladdd.g -8388608[$r10r11.lo] = $r8r9r10r11.z 	#Opcode-kv4_v1-ALADDD_coherency_offset27_registerZ_registerT_double
	;;
	aladdd.s [$r11] = $r10r11.hi 	#Opcode-kv4_v1-ALADDD_coherency_registerZ_registerT_simple
	;;
	aladdw -1125899906842624[$r8r9r10r11.t] = $r12 	#Opcode-kv4_v1-ALADDW_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	aladdw.g -8388608[$sp] = $r13 	#Opcode-kv4_v1-ALADDW_coherency_offset27_registerZ_registerT_double
	;;
	aladdw.s [$tp] = $r14 	#Opcode-kv4_v1-ALADDW_coherency_registerZ_registerT_simple
	;;
	alclrd $fp = -1125899906842624[$r15] 	#Opcode-kv4_v1-ALCLRD_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	alclrd.g $rp = -8388608[$r16] 	#Opcode-kv4_v1-ALCLRD_coherency_registerW_offset27_registerZ_double
	;;
	alclrd.s $r16r17.lo = [$r16r17r18r19.x] 	#Opcode-kv4_v1-ALCLRD_coherency_registerW_registerZ_simple
	;;
	alclrw $r17 = -1125899906842624[$r16r17.hi] 	#Opcode-kv4_v1-ALCLRW_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	alclrw.g $r16r17r18r19.y = -8388608[$r18] 	#Opcode-kv4_v1-ALCLRW_coherency_registerW_offset27_registerZ_double
	;;
	alclrw.s $r18r19.lo = [$r16r17r18r19.z] 	#Opcode-kv4_v1-ALCLRW_coherency_registerW_registerZ_simple
	;;
	ald $r19 = -1125899906842624[$r18r19.hi] 	#Opcode-kv4_v1-ALD_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	ald.g $r16r17r18r19.t = -8388608[$r20] 	#Opcode-kv4_v1-ALD_coherency_registerW_offset27_registerZ_double
	;;
	ald.s $r20r21.lo = [$r20r21r22r23.x] 	#Opcode-kv4_v1-ALD_coherency_registerW_registerZ_simple
	;;
	alw $r21 = -1125899906842624[$r20r21.hi] 	#Opcode-kv4_v1-ALW_coherency_registerW_extend27_offset27_registerZ_triple
	;;
	alw.g $r20r21r22r23.y = -8388608[$r22] 	#Opcode-kv4_v1-ALW_coherency_registerW_offset27_registerZ_double
	;;
	alw.s $r22r23.lo = [$r20r21r22r23.z] 	#Opcode-kv4_v1-ALW_coherency_registerW_registerZ_simple
	;;
	andd $r23 = $r22r23.hi, 2305843009213693951 	#Opcode-kv4_v1-ANDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	andd $r20r21r22r23.t = $r24, $r24r25.lo 	#Opcode-kv4_v1-ANDD_registerW_registerZ_registerY_simple
	;;
	andd $r24r25r26r27.x = $r25, -64 	#Opcode-kv4_v1-ANDD_registerW_registerZ_signed10_simple
	;;
	andd $r24r25.hi = $r24r25r26r27.y, -8589934592 	#Opcode-kv4_v1-ANDD_registerW_registerZ_upper27_lower10_double
	;;
	andnd $r26 = $r26r27.lo, 2305843009213693951 	#Opcode-kv4_v1-ANDND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	andnd $r24r25r26r27.z = $r27, $r26r27.hi 	#Opcode-kv4_v1-ANDND_registerW_registerZ_registerY_simple
	;;
	andnd $r24r25r26r27.t = $r28, -64 	#Opcode-kv4_v1-ANDND_registerW_registerZ_signed10_simple
	;;
	andnd $r28r29.lo = $r28r29r30r31.x, -8589934592 	#Opcode-kv4_v1-ANDND_registerW_registerZ_upper27_lower10_double
	;;
	andnw $r29 = $r28r29.hi, $r28r29r30r31.y 	#Opcode-kv4_v1-ANDNW_registerW_registerZ_registerY_simple
	;;
	andnw $r30 = $r30r31.lo, 536870911 	#Opcode-kv4_v1-ANDNW_registerW_registerZ_upper27_lower5_double
	;;
	andrbod $r28r29r30r31.z = $r31 	#Opcode-kv4_v1-ANDRBOD_registerW_registerZ_simple
	;;
	andrhqd $r30r31.hi = $r28r29r30r31.t 	#Opcode-kv4_v1-ANDRHQD_registerW_registerZ_simple
	;;
	andrwpd $r32 = $r32r33.lo 	#Opcode-kv4_v1-ANDRWPD_registerW_registerZ_simple
	;;
	andw $r32r33r34r35.x = $r33, $r32r33.hi 	#Opcode-kv4_v1-ANDW_registerW_registerZ_registerY_simple
	;;
	andw $r32r33r34r35.y = $r34, 536870911 	#Opcode-kv4_v1-ANDW_registerW_registerZ_upper27_lower5_double
	;;
	asd -1125899906842624[$r34r35.lo] = $r32r33r34r35.z 	#Opcode-kv4_v1-ASD_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	asd.g -8388608[$r35] = $r34r35.hi 	#Opcode-kv4_v1-ASD_coherency_offset27_registerZ_registerT_double
	;;
	asd.s [$r32r33r34r35.t] = $r36 	#Opcode-kv4_v1-ASD_coherency_registerZ_registerT_simple
	;;
	asw -1125899906842624[$r36r37.lo] = $r36r37r38r39.x 	#Opcode-kv4_v1-ASW_coherency_extend27_offset27_registerZ_registerT_triple
	;;
	asw.g -8388608[$r37] = $r36r37.hi 	#Opcode-kv4_v1-ASW_coherency_offset27_registerZ_registerT_double
	;;
	asw.s [$r36r37r38r39.y] = $r38 	#Opcode-kv4_v1-ASW_coherency_registerZ_registerT_simple
	;;
	avgbo $r38r39.lo = $r36r37r38r39.z, $r39 	#Opcode-kv4_v1-AVGBO_registerW_registerZ_registerY_simple
	;;
	avgbo $r38r39.hi = $r36r37r38r39.t, 536870911 	#Opcode-kv4_v1-AVGBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avghq $r40 = $r40r41.lo, $r40r41r42r43.x 	#Opcode-kv4_v1-AVGHQ_registerW_registerZ_registerY_simple
	;;
	avghq $r41 = $r40r41.hi, 536870911.@ 	#Opcode-kv4_v1-AVGHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrbo $r40r41r42r43.y = $r42, $r42r43.lo 	#Opcode-kv4_v1-AVGRBO_registerW_registerZ_registerY_simple
	;;
	avgrbo $r40r41r42r43.z = $r43, 536870911 	#Opcode-kv4_v1-AVGRBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrhq $r42r43.hi = $r40r41r42r43.t, $r44 	#Opcode-kv4_v1-AVGRHQ_registerW_registerZ_registerY_simple
	;;
	avgrhq $r44r45.lo = $r44r45r46r47.x, 536870911.@ 	#Opcode-kv4_v1-AVGRHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrubo $r45 = $r44r45.hi, $r44r45r46r47.y 	#Opcode-kv4_v1-AVGRUBO_registerW_registerZ_registerY_simple
	;;
	avgrubo $r46 = $r46r47.lo, 536870911 	#Opcode-kv4_v1-AVGRUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruhq $r44r45r46r47.z = $r47, $r46r47.hi 	#Opcode-kv4_v1-AVGRUHQ_registerW_registerZ_registerY_simple
	;;
	avgruhq $r44r45r46r47.t = $r48, 536870911.@ 	#Opcode-kv4_v1-AVGRUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruwp $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv4_v1-AVGRUWP_registerW_registerZ_registerY_simple
	;;
	avgruwp $r48r49.hi = $r48r49r50r51.y, 536870911 	#Opcode-kv4_v1-AVGRUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgruw $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv4_v1-AVGRUW_registerW_registerZ_registerY_simple
	;;
	avgruw $r51 = $r50r51.hi, 536870911 	#Opcode-kv4_v1-AVGRUW_registerW_registerZ_upper27_lower5_double
	;;
	avgrwp $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv4_v1-AVGRWP_registerW_registerZ_registerY_simple
	;;
	avgrwp $r52r53r54r55.x = $r53, 536870911.@ 	#Opcode-kv4_v1-AVGRWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgrw $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv4_v1-AVGRW_registerW_registerZ_registerY_simple
	;;
	avgrw $r54r55.lo = $r52r53r54r55.z, 536870911 	#Opcode-kv4_v1-AVGRW_registerW_registerZ_upper27_lower5_double
	;;
	avgubo $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv4_v1-AVGUBO_registerW_registerZ_registerY_simple
	;;
	avgubo $r56 = $r56r57.lo, 536870911 	#Opcode-kv4_v1-AVGUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguhq $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv4_v1-AVGUHQ_registerW_registerZ_registerY_simple
	;;
	avguhq $r56r57r58r59.y = $r58, 536870911.@ 	#Opcode-kv4_v1-AVGUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguwp $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv4_v1-AVGUWP_registerW_registerZ_registerY_simple
	;;
	avguwp $r58r59.hi = $r56r57r58r59.t, 536870911 	#Opcode-kv4_v1-AVGUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avguw $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv4_v1-AVGUW_registerW_registerZ_registerY_simple
	;;
	avguw $r61 = $r60r61.hi, 536870911 	#Opcode-kv4_v1-AVGUW_registerW_registerZ_upper27_lower5_double
	;;
	avgwp $r60r61r62r63.y = $r62, $r62r63.lo 	#Opcode-kv4_v1-AVGWP_registerW_registerZ_registerY_simple
	;;
	avgwp $r60r61r62r63.z = $r63, 536870911.@ 	#Opcode-kv4_v1-AVGWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	avgw $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv4_v1-AVGW_registerW_registerZ_registerY_simple
	;;
	avgw $r0r1.lo = $r0r1r2r3.x, 536870911 	#Opcode-kv4_v1-AVGW_registerW_registerZ_upper27_lower5_double
	;;
	await 	#Opcode-kv4_v1-AWAIT_simple
	;;
	barrier 	#Opcode-kv4_v1-BARRIER_simple
	;;
	break 0 	#Opcode-kv4_v1-BREAK_brknumber_simple
	;;
	call -33554432 	#Opcode-kv4_v1-CALL_pcrel27_simple
	;;
	cbsd $r1 = $r0r1.hi 	#Opcode-kv4_v1-CBSD_registerW_registerZ_simple
	;;
	cbswp $r0r1r2r3.y = $r2 	#Opcode-kv4_v1-CBSWP_registerW_registerZ_simple
	;;
	cbsw $r2r3.lo = $r0r1r2r3.z 	#Opcode-kv4_v1-CBSW_registerW_registerZ_simple
	;;
	cb.dnez $r3? -32768 	#Opcode-kv4_v1-CB_branchcond_registerZ_pcrel17_simple
	;;
	clrf $r2r3.hi = $r0r1r2r3.t, 7, 7 	#Opcode-kv4_v1-CLRF_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	clsd $r4 = $r4r5.lo 	#Opcode-kv4_v1-CLSD_registerW_registerZ_simple
	;;
	clswp $r4r5r6r7.x = $r5 	#Opcode-kv4_v1-CLSWP_registerW_registerZ_simple
	;;
	clsw $r4r5.hi = $r4r5r6r7.y 	#Opcode-kv4_v1-CLSW_registerW_registerZ_simple
	;;
	clzd $r6 = $r6r7.lo 	#Opcode-kv4_v1-CLZD_registerW_registerZ_simple
	;;
	clzwp $r4r5r6r7.z = $r7 	#Opcode-kv4_v1-CLZWP_registerW_registerZ_simple
	;;
	clzw $r6r7.hi = $r4r5r6r7.t 	#Opcode-kv4_v1-CLZW_registerW_registerZ_simple
	;;
	cmovebo.nez $r8? $r8r9.lo = $r8r9r10r11.x 	#Opcode-kv4_v1-CMOVEBO_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovebo.eqz $r9? $r8r9.hi = 536870911 	#Opcode-kv4_v1-CMOVEBO_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmoved.deqz $r8r9r10r11.y? $r10 = 2305843009213693951 	#Opcode-kv4_v1-CMOVED_scalarcond_registerZ_registerW_extend27_upper27_lower10_triple
	;;
	cmoved.dltz $r10r11.lo? $r8r9r10r11.z = $r11 	#Opcode-kv4_v1-CMOVED_scalarcond_registerZ_registerW_registerY_simple
	;;
	cmoved.dgez $r10r11.hi? $r8r9r10r11.t = -64 	#Opcode-kv4_v1-CMOVED_scalarcond_registerZ_registerW_signed10_simple
	;;
	cmoved.dlez $r12? $sp = -8589934592 	#Opcode-kv4_v1-CMOVED_scalarcond_registerZ_registerW_upper27_lower10_double
	;;
	cmovehq.ltz $r13? $tp = $r14 	#Opcode-kv4_v1-CMOVEHQ_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovehq.gez $fp? $r15 = 536870911.@ 	#Opcode-kv4_v1-CMOVEHQ_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmovewp.lez $rp? $r16 = $r16r17.lo 	#Opcode-kv4_v1-CMOVEWP_simdcond_registerZ_registerW_registerY_simple
	;;
	cmovewp.gtz $r16r17r18r19.x? $r17 = 536870911 	#Opcode-kv4_v1-CMOVEWP_simdcond_registerZ_registerW_upper27_lower5_splat32_double
	;;
	cmuldt $r8r9r10r11.lo = $r16r17.hi, $r16r17r18r19.y 	#Opcode-kv4_v1-CMULDT_registerM_registerZ_registerY_simple
	;;
	cmulghxdt $r10r11 = $r18, $r18r19.lo 	#Opcode-kv4_v1-CMULGHXDT_registerM_registerZ_registerY_simple
	;;
	cmulglxdt $r8r9r10r11.hi = $r16r17r18r19.z, $r19 	#Opcode-kv4_v1-CMULGLXDT_registerM_registerZ_registerY_simple
	;;
	cmulgmxdt $r12r13 = $r18r19.hi, $r16r17r18r19.t 	#Opcode-kv4_v1-CMULGMXDT_registerM_registerZ_registerY_simple
	;;
	cmulxdt $r12r13r14r15.lo = $r20, $r20r21.lo 	#Opcode-kv4_v1-CMULXDT_registerM_registerZ_registerY_simple
	;;
	compd.ne $r20r21r22r23.x = $r21, 2305843009213693951 	#Opcode-kv4_v1-COMPD_comparison_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	compd.eq $r20r21.hi = $r20r21r22r23.y, $r22 	#Opcode-kv4_v1-COMPD_comparison_registerW_registerZ_registerY_simple
	;;
	compd.lt $r22r23.lo = $r20r21r22r23.z, -64 	#Opcode-kv4_v1-COMPD_comparison_registerW_registerZ_signed10_simple
	;;
	compd.ge $r23 = $r22r23.hi, -8589934592 	#Opcode-kv4_v1-COMPD_comparison_registerW_registerZ_upper27_lower10_double
	;;
	compnbo.le $r20r21r22r23.t = $r24, $r24r25.lo 	#Opcode-kv4_v1-COMPNBO_comparison_registerW_registerZ_registerY_simple
	;;
	compnbo.gt $r24r25r26r27.x = $r25, 536870911.@ 	#Opcode-kv4_v1-COMPNBO_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compnd.ltu $r24r25.hi = $r24r25r26r27.y, $r26 	#Opcode-kv4_v1-COMPND_comparison_registerW_registerZ_registerY_simple
	;;
	compnd.geu $r26r27.lo = $r24r25r26r27.z, 536870911 	#Opcode-kv4_v1-COMPND_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compnhq.leu $r27 = $r26r27.hi, $r24r25r26r27.t 	#Opcode-kv4_v1-COMPNHQ_comparison_registerW_registerZ_registerY_simple
	;;
	compnhq.gtu $r28 = $r28r29.lo, 536870911 	#Opcode-kv4_v1-COMPNHQ_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compnwp.all $r28r29r30r31.x = $r29, $r28r29.hi 	#Opcode-kv4_v1-COMPNWP_comparison_registerW_registerZ_registerY_simple
	;;
	compnwp.nall $r28r29r30r31.y = $r30, 536870911.@ 	#Opcode-kv4_v1-COMPNWP_comparison_registerW_registerZ_upper27_lower5_splat32_double
	;;
	compnw.any $r30r31.lo = $r28r29r30r31.z, $r31 	#Opcode-kv4_v1-COMPNW_comparison_registerW_registerZ_registerY_simple
	;;
	compnw.none $r30r31.hi = $r28r29r30r31.t, 536870911 	#Opcode-kv4_v1-COMPNW_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compuwd.ne $r32 = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv4_v1-COMPUWD_comparison_registerW_registerZ_registerY_simple
	;;
	compuwd.eq $r33 = $r32r33.hi, 536870911 	#Opcode-kv4_v1-COMPUWD_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compwd.lt $r32r33r34r35.y = $r34, $r34r35.lo 	#Opcode-kv4_v1-COMPWD_comparison_registerW_registerZ_registerY_simple
	;;
	compwd.ge $r32r33r34r35.z = $r35, 536870911 	#Opcode-kv4_v1-COMPWD_comparison_registerW_registerZ_upper27_lower5_double
	;;
	compw.le $r34r35.hi = $r32r33r34r35.t, $r36 	#Opcode-kv4_v1-COMPW_comparison_registerW_registerZ_registerY_simple
	;;
	compw.gt $r36r37.lo = $r36r37r38r39.x, 536870911 	#Opcode-kv4_v1-COMPW_comparison_registerW_registerZ_upper27_lower5_double
	;;
	copyd $r37 = $r36r37.hi 	#Opcode-kv4_v1-COPYD_registerW_registerZ_simple
	;;
	copyo $r12r13r14r15 = $r16r17r18r19 	#Opcode-kv4_v1-COPYO_registerN_registerR_simple
	;;
	copyq $r14r15 = $r36r37r38r39.y, $r38 	#Opcode-kv4_v1-COPYQ_registerM_registerZ_registerY_simple
	;;
	copyw $r38r39.lo = $r36r37r38r39.z 	#Opcode-kv4_v1-COPYW_registerW_registerZ_simple
	;;
	crcbellw $r39 = $r38r39.hi, $r36r37r38r39.t 	#Opcode-kv4_v1-CRCBELLW_registerW_registerZ_registerY_simple
	;;
	crcbellw $r40 = $r40r41.lo, 536870911 	#Opcode-kv4_v1-CRCBELLW_registerW_registerZ_upper27_lower5_double
	;;
	crcbelmw $r40r41r42r43.x = $r41, $r40r41.hi 	#Opcode-kv4_v1-CRCBELMW_registerW_registerZ_registerY_simple
	;;
	crcbelmw $r40r41r42r43.y = $r42, 536870911 	#Opcode-kv4_v1-CRCBELMW_registerW_registerZ_upper27_lower5_double
	;;
	crclellw $r42r43.lo = $r40r41r42r43.z, $r43 	#Opcode-kv4_v1-CRCLELLW_registerW_registerZ_registerY_simple
	;;
	crclellw $r42r43.hi = $r40r41r42r43.t, 536870911 	#Opcode-kv4_v1-CRCLELLW_registerW_registerZ_upper27_lower5_double
	;;
	crclelmw $r44 = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv4_v1-CRCLELMW_registerW_registerZ_registerY_simple
	;;
	crclelmw $r45 = $r44r45.hi, 536870911 	#Opcode-kv4_v1-CRCLELMW_registerW_registerZ_upper27_lower5_double
	;;
	ctzd $r44r45r46r47.y = $r46 	#Opcode-kv4_v1-CTZD_registerW_registerZ_simple
	;;
	ctzwp $r46r47.lo = $r44r45r46r47.z 	#Opcode-kv4_v1-CTZWP_registerW_registerZ_simple
	;;
	ctzw $r47 = $r46r47.hi 	#Opcode-kv4_v1-CTZW_registerW_registerZ_simple
	;;
	d1inval 	#Opcode-kv4_v1-D1INVAL_simple
	;;
	dflushl $r44r45r46r47.t[$r48] 	#Opcode-kv4_v1-DFLUSHL_doscale_registerY_registerZ_simple
	;;
	dflushl 2305843009213693951[$r48r49.lo] 	#Opcode-kv4_v1-DFLUSHL_extend27_upper27_lower10_registerZ_triple
	;;
	dflushl -64[$r48r49r50r51.x] 	#Opcode-kv4_v1-DFLUSHL_signed10_registerZ_simple
	;;
	dflushl -8589934592[$r49] 	#Opcode-kv4_v1-DFLUSHL_upper27_lower10_registerZ_double
	;;
	dflushsw.l1 $r48r49.hi, $r48r49r50r51.y 	#Opcode-kv4_v1-DFLUSHSW_cachelev_registerY_registerZ_simple
	;;
	dinvall.xs $r50[$r50r51.lo] 	#Opcode-kv4_v1-DINVALL_doscale_registerY_registerZ_simple
	;;
	dinvall 2305843009213693951[$r48r49r50r51.z] 	#Opcode-kv4_v1-DINVALL_extend27_upper27_lower10_registerZ_triple
	;;
	dinvall -64[$r51] 	#Opcode-kv4_v1-DINVALL_signed10_registerZ_simple
	;;
	dinvall -8589934592[$r50r51.hi] 	#Opcode-kv4_v1-DINVALL_upper27_lower10_registerZ_double
	;;
	dinvalsw.l2 $r48r49r50r51.t, $r52 	#Opcode-kv4_v1-DINVALSW_cachelev_registerY_registerZ_simple
	;;
	dpurgel $r52r53.lo[$r52r53r54r55.x] 	#Opcode-kv4_v1-DPURGEL_doscale_registerY_registerZ_simple
	;;
	dpurgel 2305843009213693951[$r53] 	#Opcode-kv4_v1-DPURGEL_extend27_upper27_lower10_registerZ_triple
	;;
	dpurgel -64[$r52r53.hi] 	#Opcode-kv4_v1-DPURGEL_signed10_registerZ_simple
	;;
	dpurgel -8589934592[$r52r53r54r55.y] 	#Opcode-kv4_v1-DPURGEL_upper27_lower10_registerZ_double
	;;
	dpurgesw.l1 $r54, $r54r55.lo 	#Opcode-kv4_v1-DPURGESW_cachelev_registerY_registerZ_simple
	;;
	dtouchl.xs $r52r53r54r55.z[$r55] 	#Opcode-kv4_v1-DTOUCHL_doscale_registerY_registerZ_simple
	;;
	dtouchl 2305843009213693951[$r54r55.hi] 	#Opcode-kv4_v1-DTOUCHL_extend27_upper27_lower10_registerZ_triple
	;;
	dtouchl -64[$r52r53r54r55.t] 	#Opcode-kv4_v1-DTOUCHL_signed10_registerZ_simple
	;;
	dtouchl -8589934592[$r56] 	#Opcode-kv4_v1-DTOUCHL_upper27_lower10_registerZ_double
	;;
	eord $r56r57.lo = $r56r57r58r59.x, 2305843009213693951 	#Opcode-kv4_v1-EORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	eord $r57 = $r56r57.hi, $r56r57r58r59.y 	#Opcode-kv4_v1-EORD_registerW_registerZ_registerY_simple
	;;
	eord $r58 = $r58r59.lo, -64 	#Opcode-kv4_v1-EORD_registerW_registerZ_signed10_simple
	;;
	eord $r56r57r58r59.z = $r59, -8589934592 	#Opcode-kv4_v1-EORD_registerW_registerZ_upper27_lower10_double
	;;
	eorrbod $r58r59.hi = $r56r57r58r59.t 	#Opcode-kv4_v1-EORRBOD_registerW_registerZ_simple
	;;
	eorrhqd $r60 = $r60r61.lo 	#Opcode-kv4_v1-EORRHQD_registerW_registerZ_simple
	;;
	eorrwpd $r60r61r62r63.x = $r61 	#Opcode-kv4_v1-EORRWPD_registerW_registerZ_simple
	;;
	eorw $r60r61.hi = $r60r61r62r63.y, $r62 	#Opcode-kv4_v1-EORW_registerW_registerZ_registerY_simple
	;;
	eorw $r62r63.lo = $r60r61r62r63.z, 536870911 	#Opcode-kv4_v1-EORW_registerW_registerZ_upper27_lower5_double
	;;
	errop 	#Opcode-kv4_v1-ERROP_simple
	;;
	extfs $r63 = $r62r63.hi, 7, 7 	#Opcode-kv4_v1-EXTFS_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	extfz $r60r61r62r63.t = $r0, 7, 7 	#Opcode-kv4_v1-EXTFZ_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	fabsd $r0r1.lo = $r0r1r2r3.x 	#Opcode-kv4_v1-FABSD_registerW_registerZ_simple
	;;
	fabshq $r1 = $r0r1.hi 	#Opcode-kv4_v1-FABSHQ_registerW_registerZ_simple
	;;
	fabswp $r0r1r2r3.y = $r2 	#Opcode-kv4_v1-FABSWP_registerW_registerZ_simple
	;;
	fabsw $r2r3.lo = $r0r1r2r3.z 	#Opcode-kv4_v1-FABSW_registerW_registerZ_simple
	;;
	faddd.rn $r3 = $r2r3.hi, $r0r1r2r3.t 	#Opcode-kv4_v1-FADDD_rounding1_registerW_registerZ_registerY_simple
	;;
	faddhq.ru $r4 = $r4r5.lo, $r4r5r6r7.x 	#Opcode-kv4_v1-FADDHQ_rounding1_registerW_registerZ_registerY_simple
	;;
	faddwc.rd $r5 = $r4r5.hi, $r4r5r6r7.y 	#Opcode-kv4_v1-FADDWC_rounding1_registerW_registerZ_registerY_simple
	;;
	faddwp.rz $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv4_v1-FADDWP_rounding1_registerW_registerZ_registerY_simple
	;;
	faddw.rna $r7 = $r6r7.hi, $r4r5r6r7.t 	#Opcode-kv4_v1-FADDW_rounding1_registerW_registerZ_registerY_simple
	;;
	fcompd.one $r8 = $r8r9.lo, $r8r9r10r11.x 	#Opcode-kv4_v1-FCOMPD_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompd.ueq $r9 = $r8r9.hi, 536870911 	#Opcode-kv4_v1-FCOMPD_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fcompnd.oeq $r8r9r10r11.y = $r10, $r10r11.lo 	#Opcode-kv4_v1-FCOMPND_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnd.une $r8r9r10r11.z = $r11, 536870911 	#Opcode-kv4_v1-FCOMPND_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fcompnhq.olt $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv4_v1-FCOMPNHQ_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnhq.uge $sp = $r13, 536870911 	#Opcode-kv4_v1-FCOMPNHQ_floatcomp_registerW_registerZ_upper27_lower5_splat32_double
	;;
	fcompnwp.oge $tp = $r14, $fp 	#Opcode-kv4_v1-FCOMPNWP_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnwp.ult $r15 = $rp, 536870911.@ 	#Opcode-kv4_v1-FCOMPNWP_floatcomp_registerW_registerZ_upper27_lower5_splat32_double
	;;
	fcompnw.one $r16 = $r16r17.lo, $r16r17r18r19.x 	#Opcode-kv4_v1-FCOMPNW_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompnw.ueq $r17 = $r16r17.hi, 536870911 	#Opcode-kv4_v1-FCOMPNW_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fcompw.oeq $r16r17r18r19.y = $r18, $r18r19.lo 	#Opcode-kv4_v1-FCOMPW_floatcomp_registerW_registerZ_registerY_simple
	;;
	fcompw.une $r16r17r18r19.z = $r19, 536870911 	#Opcode-kv4_v1-FCOMPW_floatcomp_registerW_registerZ_upper27_lower5_double
	;;
	fence 	#Opcode-kv4_v1-FENCE_accesses_simple
	;;
	ffmad.rnz $r18r19.hi = $r16r17r18r19.t, $r20 	#Opcode-kv4_v1-FFMAD_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmahq.ro $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv4_v1-FFMAHQ_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmawc $r20r21.hi = $r20r21r22r23.y, $r22 	#Opcode-kv4_v1-FFMAWC_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmawp.rn $r22r23.lo = $r20r21r22r23.z, $r23 	#Opcode-kv4_v1-FFMAWP_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmaw.ru $r22r23.hi = $r20r21r22r23.t, $r24 	#Opcode-kv4_v1-FFMAW_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmsd.rd $r24r25.lo = $r24r25r26r27.x, $r25 	#Opcode-kv4_v1-FFMSD_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmshq.rz $r24r25.hi = $r24r25r26r27.y, $r26 	#Opcode-kv4_v1-FFMSHQ_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmswc.rna $r26r27.lo = $r24r25r26r27.z, $r27 	#Opcode-kv4_v1-FFMSWC_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmswp.rnz $r26r27.hi = $r24r25r26r27.t, $r28 	#Opcode-kv4_v1-FFMSWP_rounding1_registerW_registerZ_registerY_simple
	;;
	ffmsw.ro $r28r29.lo = $r28r29r30r31.x, $r29 	#Opcode-kv4_v1-FFMSW_rounding1_registerW_registerZ_registerY_simple
	;;
	fixedd $r28r29.hi = $r28r29r30r31.y 	#Opcode-kv4_v1-FIXEDD_rounding1_registerW_registerZ_simple
	;;
	fixedud.rn $r30 = $r30r31.lo 	#Opcode-kv4_v1-FIXEDUD_rounding1_registerW_registerZ_simple
	;;
	fixeduwp.ru $r28r29r30r31.z = $r31 	#Opcode-kv4_v1-FIXEDUWP_rounding1_registerW_registerZ_simple
	;;
	fixeduw.rd $r30r31.hi = $r28r29r30r31.t 	#Opcode-kv4_v1-FIXEDUW_rounding1_registerW_registerZ_simple
	;;
	fixedwp.rz $r32 = $r32r33.lo 	#Opcode-kv4_v1-FIXEDWP_rounding1_registerW_registerZ_simple
	;;
	fixedw.rna $r32r33r34r35.x = $r33 	#Opcode-kv4_v1-FIXEDW_rounding1_registerW_registerZ_simple
	;;
	floatd.rnz $r32r33.hi = $r32r33r34r35.y 	#Opcode-kv4_v1-FLOATD_rounding1_registerW_registerZ_simple
	;;
	floatud.ro $r34 = $r34r35.lo 	#Opcode-kv4_v1-FLOATUD_rounding1_registerW_registerZ_simple
	;;
	floatuwp $r32r33r34r35.z = $r35 	#Opcode-kv4_v1-FLOATUWP_rounding1_registerW_registerZ_simple
	;;
	floatuw.rn $r34r35.hi = $r32r33r34r35.t 	#Opcode-kv4_v1-FLOATUW_rounding1_registerW_registerZ_simple
	;;
	floatwp.ru $r36 = $r36r37.lo 	#Opcode-kv4_v1-FLOATWP_rounding1_registerW_registerZ_simple
	;;
	floatw.rd $r36r37r38r39.x = $r37 	#Opcode-kv4_v1-FLOATW_rounding1_registerW_registerZ_simple
	;;
	fmaxd $r36r37.hi = $r36r37r38r39.y, $r38 	#Opcode-kv4_v1-FMAXD_registerW_registerZ_registerY_simple
	;;
	fmaxhq $r38r39.lo = $r36r37r38r39.z, $r39 	#Opcode-kv4_v1-FMAXHQ_registerW_registerZ_registerY_simple
	;;
	fmaxwp $r38r39.hi = $r36r37r38r39.t, $r40 	#Opcode-kv4_v1-FMAXWP_registerW_registerZ_registerY_simple
	;;
	fmaxw $r40r41.lo = $r40r41r42r43.x, $r41 	#Opcode-kv4_v1-FMAXW_registerW_registerZ_registerY_simple
	;;
	fmind $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv4_v1-FMIND_registerW_registerZ_registerY_simple
	;;
	fminhq $r42r43.lo = $r40r41r42r43.z, $r43 	#Opcode-kv4_v1-FMINHQ_registerW_registerZ_registerY_simple
	;;
	fminwp $r42r43.hi = $r40r41r42r43.t, $r44 	#Opcode-kv4_v1-FMINWP_registerW_registerZ_registerY_simple
	;;
	fminw $r44r45.lo = $r44r45r46r47.x, $r45 	#Opcode-kv4_v1-FMINW_registerW_registerZ_registerY_simple
	;;
	fmuld.rz $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv4_v1-FMULD_rounding1_registerW_registerZ_registerY_simple
	;;
	fmulhq.rna $r46r47.lo = $r44r45r46r47.z, $r47 	#Opcode-kv4_v1-FMULHQ_rounding1_registerW_registerZ_registerY_simple
	;;
	fmulwc.rnz $r46r47.hi = $r44r45r46r47.t, $r48 	#Opcode-kv4_v1-FMULWC_rounding1_registerW_registerZ_registerY_simple
	;;
	fmulwp.ro $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv4_v1-FMULWP_rounding1_registerW_registerZ_registerY_simple
	;;
	fmulw $r48r49.hi = $r48r49r50r51.y, $r50 	#Opcode-kv4_v1-FMULW_rounding1_registerW_registerZ_registerY_simple
	;;
	fnarrowdwp.rn $r50r51.lo = $r12r13r14r15.hi 	#Opcode-kv4_v1-FNARROWDWP_rounding1_registerW_registerP_simple
	;;
	fnarrowdw.ru $r48r49r50r51.z = $r51 	#Opcode-kv4_v1-FNARROWDW_rounding1_registerW_registerZ_simple
	;;
	fnarrowwhq.rd $r50r51.hi = $r16r17 	#Opcode-kv4_v1-FNARROWWHQ_rounding1_registerW_registerP_simple
	;;
	fnarrowwh.rz $r48r49r50r51.t = $r52 	#Opcode-kv4_v1-FNARROWWH_rounding1_registerW_registerZ_simple
	;;
	fnegd $r52r53.lo = $r52r53r54r55.x 	#Opcode-kv4_v1-FNEGD_registerW_registerZ_simple
	;;
	fneghq $r53 = $r52r53.hi 	#Opcode-kv4_v1-FNEGHQ_registerW_registerZ_simple
	;;
	fnegwp $r52r53r54r55.y = $r54 	#Opcode-kv4_v1-FNEGWP_registerW_registerZ_simple
	;;
	fnegw $r54r55.lo = $r52r53r54r55.z 	#Opcode-kv4_v1-FNEGW_registerW_registerZ_simple
	;;
	frecw.rna $r55 = $r54r55.hi 	#Opcode-kv4_v1-FRECW_rounding1_registerW_registerZ_simple
	;;
	frsrw.rnz $r52r53r54r55.t = $r56 	#Opcode-kv4_v1-FRSRW_rounding1_registerW_registerZ_simple
	;;
	fsbfd.ro $r56r57.lo = $r56r57r58r59.x, $r57 	#Opcode-kv4_v1-FSBFD_rounding1_registerW_registerZ_registerY_simple
	;;
	fsbfhq $r56r57.hi = $r56r57r58r59.y, $r58 	#Opcode-kv4_v1-FSBFHQ_rounding1_registerW_registerZ_registerY_simple
	;;
	fsbfwc.rn $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv4_v1-FSBFWC_rounding1_registerW_registerZ_registerY_simple
	;;
	fsbfwp.ru $r58r59.hi = $r56r57r58r59.t, $r60 	#Opcode-kv4_v1-FSBFWP_rounding1_registerW_registerZ_registerY_simple
	;;
	fsbfw.rd $r60r61.lo = $r60r61r62r63.x, $r61 	#Opcode-kv4_v1-FSBFW_rounding1_registerW_registerZ_registerY_simple
	;;
	fsrecd $r60r61.hi = $r60r61r62r63.y 	#Opcode-kv4_v1-FSRECD_registerW_registerZ_simple
	;;
	fsrecwp $r62 = $r62r63.lo 	#Opcode-kv4_v1-FSRECWP_registerW_registerZ_simple
	;;
	fsrecw $r60r61r62r63.z = $r63 	#Opcode-kv4_v1-FSRECW_registerW_registerZ_simple
	;;
	fsrsrd $r62r63.hi = $r60r61r62r63.t 	#Opcode-kv4_v1-FSRSRD_registerW_registerZ_simple
	;;
	fsrsrwp $r0 = $r0r1.lo 	#Opcode-kv4_v1-FSRSRWP_registerW_registerZ_simple
	;;
	fsrsrw $r0r1r2r3.x = $r1 	#Opcode-kv4_v1-FSRSRW_registerW_registerZ_simple
	;;
	fwidenlhwp $r0r1.hi = $r0r1r2r3.y 	#Opcode-kv4_v1-FWIDENLHWP_registerW_registerZ_simple
	;;
	fwidenlhw $r2 = $r2r3.lo 	#Opcode-kv4_v1-FWIDENLHW_registerW_registerZ_simple
	;;
	fwidenlwd $r0r1r2r3.z = $r3 	#Opcode-kv4_v1-FWIDENLWD_registerW_registerZ_simple
	;;
	fwidenmhwp $r2r3.hi = $r0r1r2r3.t 	#Opcode-kv4_v1-FWIDENMHWP_registerW_registerZ_simple
	;;
	fwidenmhw $r4 = $r4r5.lo 	#Opcode-kv4_v1-FWIDENMHW_registerW_registerZ_simple
	;;
	fwidenmwd $r4r5r6r7.x = $r5 	#Opcode-kv4_v1-FWIDENMWD_registerW_registerZ_simple
	;;
	get $r4r5.hi = $pc 	#Opcode-kv4_v1-GET_registerZ_systemS2_simple
	;;
	get $r4r5r6r7.y = $pc 	#Opcode-kv4_v1-GET_registerZ_systemS3_simple
	;;
	goto -33554432 	#Opcode-kv4_v1-GOTO_pcrel27_simple
	;;
	i1invals $r6[$r6r7.lo] 	#Opcode-kv4_v1-I1INVALS_doscale_registerY_registerZ_simple
	;;
	i1invals 2305843009213693951[$r4r5r6r7.z] 	#Opcode-kv4_v1-I1INVALS_extend27_upper27_lower10_registerZ_triple
	;;
	i1invals -64[$r7] 	#Opcode-kv4_v1-I1INVALS_signed10_registerZ_simple
	;;
	i1invals -8589934592[$r6r7.hi] 	#Opcode-kv4_v1-I1INVALS_upper27_lower10_registerZ_double
	;;
	i1inval 	#Opcode-kv4_v1-I1INVAL_simple
	;;
	icall $r4r5r6r7.t 	#Opcode-kv4_v1-ICALL_registerZ_simple
	;;
	iget $r8 	#Opcode-kv4_v1-IGET_registerZ_simple
	;;
	igoto $r8r9.lo 	#Opcode-kv4_v1-IGOTO_registerZ_simple
	;;
	insf $r8r9r10r11.x = $r9, 7, 7 	#Opcode-kv4_v1-INSF_registerW_registerZ_stopbit2_stopbit4_startbit_simple
	;;
	iord $r8r9.hi = $r8r9r10r11.y, 2305843009213693951 	#Opcode-kv4_v1-IORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	iord $r10 = $r10r11.lo, $r8r9r10r11.z 	#Opcode-kv4_v1-IORD_registerW_registerZ_registerY_simple
	;;
	iord $r11 = $r10r11.hi, -64 	#Opcode-kv4_v1-IORD_registerW_registerZ_signed10_simple
	;;
	iord $r8r9r10r11.t = $r12, -8589934592 	#Opcode-kv4_v1-IORD_registerW_registerZ_upper27_lower10_double
	;;
	iornd $sp = $r13, 2305843009213693951 	#Opcode-kv4_v1-IORND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	iornd $tp = $r14, $fp 	#Opcode-kv4_v1-IORND_registerW_registerZ_registerY_simple
	;;
	iornd $r15 = $rp, -64 	#Opcode-kv4_v1-IORND_registerW_registerZ_signed10_simple
	;;
	iornd $r16 = $r16r17.lo, -8589934592 	#Opcode-kv4_v1-IORND_registerW_registerZ_upper27_lower10_double
	;;
	iornw $r16r17r18r19.x = $r17, $r16r17.hi 	#Opcode-kv4_v1-IORNW_registerW_registerZ_registerY_simple
	;;
	iornw $r16r17r18r19.y = $r18, 536870911 	#Opcode-kv4_v1-IORNW_registerW_registerZ_upper27_lower5_double
	;;
	iorrbod $r18r19.lo = $r16r17r18r19.z 	#Opcode-kv4_v1-IORRBOD_registerW_registerZ_simple
	;;
	iorrhqd $r19 = $r18r19.hi 	#Opcode-kv4_v1-IORRHQD_registerW_registerZ_simple
	;;
	iorrwpd $r16r17r18r19.t = $r20 	#Opcode-kv4_v1-IORRWPD_registerW_registerZ_simple
	;;
	iorw $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv4_v1-IORW_registerW_registerZ_registerY_simple
	;;
	iorw $r20r21.hi = $r20r21r22r23.y, 536870911 	#Opcode-kv4_v1-IORW_registerW_registerZ_upper27_lower5_double
	;;
	landd $r22 = $r22r23.lo, $r20r21r22r23.z 	#Opcode-kv4_v1-LANDD_registerW_registerZ_registerY_simple
	;;
	landw $r23 = $r22r23.hi, $r20r21r22r23.t 	#Opcode-kv4_v1-LANDW_registerW_registerZ_registerY_simple
	;;
	landw $r24 = $r24r25.lo, 536870911 	#Opcode-kv4_v1-LANDW_registerW_registerZ_upper27_lower5_double
	;;
	lbs.xs $r24r25r26r27.x = $r25[$r24r25.hi] 	#Opcode-kv4_v1-LBS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lbs.s.dgtz $r24r25r26r27.y? $r26 = -1125899906842624[$r26r27.lo] 	#Opcode-kv4_v1-LBS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lbs.u.odd $r24r25r26r27.z? $r27 = -8388608[$r26r27.hi] 	#Opcode-kv4_v1-LBS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lbs.us.even $r24r25r26r27.t? $r28 = [$r28r29.lo] 	#Opcode-kv4_v1-LBS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lbs $r28r29r30r31.x = 2305843009213693951[$r29] 	#Opcode-kv4_v1-LBS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lbs.s $r28r29.hi = -64[$r28r29r30r31.y] 	#Opcode-kv4_v1-LBS_variant_registerW_signed10_registerZ_simple
	;;
	lbs.u $r30 = -8589934592[$r30r31.lo] 	#Opcode-kv4_v1-LBS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lbz.us $r28r29r30r31.z = $r31[$r30r31.hi] 	#Opcode-kv4_v1-LBZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lbz.wnez $r28r29r30r31.t? $r32 = -1125899906842624[$r32r33.lo] 	#Opcode-kv4_v1-LBZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lbz.s.weqz $r32r33r34r35.x? $r33 = -8388608[$r32r33.hi] 	#Opcode-kv4_v1-LBZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lbz.u.wltz $r32r33r34r35.y? $r34 = [$r34r35.lo] 	#Opcode-kv4_v1-LBZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lbz.us $r32r33r34r35.z = 2305843009213693951[$r35] 	#Opcode-kv4_v1-LBZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lbz $r34r35.hi = -64[$r32r33r34r35.t] 	#Opcode-kv4_v1-LBZ_variant_registerW_signed10_registerZ_simple
	;;
	lbz.s $r36 = -8589934592[$r36r37.lo] 	#Opcode-kv4_v1-LBZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	ld.u.xs $r36r37r38r39.x = $r37[$r36r37.hi] 	#Opcode-kv4_v1-LD_variant_doscale_registerW_registerY_registerZ_simple
	;;
	ld.us.wgez $r36r37r38r39.y? $r38 = -1125899906842624[$r38r39.lo] 	#Opcode-kv4_v1-LD_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	ld.wlez $r36r37r38r39.z? $r39 = -8388608[$r38r39.hi] 	#Opcode-kv4_v1-LD_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	ld.s.wgtz $r36r37r38r39.t? $r40 = [$r40r41.lo] 	#Opcode-kv4_v1-LD_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	ld.u $r40r41r42r43.x = 2305843009213693951[$r41] 	#Opcode-kv4_v1-LD_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	ld.us $r40r41.hi = -64[$r40r41r42r43.y] 	#Opcode-kv4_v1-LD_variant_registerW_signed10_registerZ_simple
	;;
	ld $r42 = -8589934592[$r42r43.lo] 	#Opcode-kv4_v1-LD_variant_registerW_upper27_lower10_registerZ_double
	;;
	lhs.s $r40r41r42r43.z = $r43[$r42r43.hi] 	#Opcode-kv4_v1-LHS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lhs.u.dnez $r40r41r42r43.t? $r44 = -1125899906842624[$r44r45.lo] 	#Opcode-kv4_v1-LHS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lhs.us.deqz $r44r45r46r47.x? $r45 = -8388608[$r44r45.hi] 	#Opcode-kv4_v1-LHS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lhs.dltz $r44r45r46r47.y? $r46 = [$r46r47.lo] 	#Opcode-kv4_v1-LHS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lhs.s $r44r45r46r47.z = 2305843009213693951[$r47] 	#Opcode-kv4_v1-LHS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lhs.u $r46r47.hi = -64[$r44r45r46r47.t] 	#Opcode-kv4_v1-LHS_variant_registerW_signed10_registerZ_simple
	;;
	lhs.us $r48 = -8589934592[$r48r49.lo] 	#Opcode-kv4_v1-LHS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lhz.xs $r48r49r50r51.x = $r49[$r48r49.hi] 	#Opcode-kv4_v1-LHZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lhz.s.dgez $r48r49r50r51.y? $r50 = -1125899906842624[$r50r51.lo] 	#Opcode-kv4_v1-LHZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lhz.u.dlez $r48r49r50r51.z? $r51 = -8388608[$r50r51.hi] 	#Opcode-kv4_v1-LHZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lhz.us.dgtz $r48r49r50r51.t? $r52 = [$r52r53.lo] 	#Opcode-kv4_v1-LHZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lhz $r52r53r54r55.x = 2305843009213693951[$r53] 	#Opcode-kv4_v1-LHZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lhz.s $r52r53.hi = -64[$r52r53r54r55.y] 	#Opcode-kv4_v1-LHZ_variant_registerW_signed10_registerZ_simple
	;;
	lhz.u $r54 = -8589934592[$r54r55.lo] 	#Opcode-kv4_v1-LHZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	liord $r52r53r54r55.z = $r55, $r54r55.hi 	#Opcode-kv4_v1-LIORD_registerW_registerZ_registerY_simple
	;;
	liorw $r52r53r54r55.t = $r56, $r56r57.lo 	#Opcode-kv4_v1-LIORW_registerW_registerZ_registerY_simple
	;;
	liorw $r56r57r58r59.x = $r57, 536870911 	#Opcode-kv4_v1-LIORW_registerW_registerZ_upper27_lower5_double
	;;
	lnandd $r56r57.hi = $r56r57r58r59.y, $r58 	#Opcode-kv4_v1-LNANDD_registerW_registerZ_registerY_simple
	;;
	lnandw $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv4_v1-LNANDW_registerW_registerZ_registerY_simple
	;;
	lnandw $r58r59.hi = $r56r57r58r59.t, 536870911 	#Opcode-kv4_v1-LNANDW_registerW_registerZ_upper27_lower5_double
	;;
	lniord $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv4_v1-LNIORD_registerW_registerZ_registerY_simple
	;;
	lniorw $r61 = $r60r61.hi, $r60r61r62r63.y 	#Opcode-kv4_v1-LNIORW_registerW_registerZ_registerY_simple
	;;
	lniorw $r62 = $r62r63.lo, 536870911 	#Opcode-kv4_v1-LNIORW_registerW_registerZ_upper27_lower5_double
	;;
	lnord $r60r61r62r63.z = $r63, $r62r63.hi 	#Opcode-kv4_v1-LNORD_registerW_registerZ_registerY_simple
	;;
	lnorw $r60r61r62r63.t = $r0, $r0r1.lo 	#Opcode-kv4_v1-LNORW_registerW_registerZ_registerY_simple
	;;
	lnorw $r0r1r2r3.x = $r1, 536870911 	#Opcode-kv4_v1-LNORW_registerW_registerZ_upper27_lower5_double
	;;
	loopdo $r0r1.hi, -32768 	#Opcode-kv4_v1-LOOPDO_registerZ_pcrel17_simple
	;;
	lord $r0r1r2r3.y = $r2, $r2r3.lo 	#Opcode-kv4_v1-LORD_registerW_registerZ_registerY_simple
	;;
	lorw $r0r1r2r3.z = $r3, $r2r3.hi 	#Opcode-kv4_v1-LORW_registerW_registerZ_registerY_simple
	;;
	lorw $r0r1r2r3.t = $r4, 536870911 	#Opcode-kv4_v1-LORW_registerW_registerZ_upper27_lower5_double
	;;
	lo.us $r20r21r22r23 = $r4r5.lo[$r4r5r6r7.x] 	#Opcode-kv4_v1-LO_variant_doscale_registerN_registerY_registerZ_simple
	;;
	lo.u0 $r5? $r24r25r26r27 = -1125899906842624[$r4r5.hi] 	#Opcode-kv4_v1-LO_variant_lsomask_registerY_registerN_extend27_offset27_registerZ_triple
	;;
	lo.s.u1 $r4r5r6r7.y? $r28r29r30r31 = -8388608[$r6] 	#Opcode-kv4_v1-LO_variant_lsomask_registerY_registerN_offset27_registerZ_double
	;;
	lo.u.u2 $r6r7.lo? $r32r33r34r35 = [$r4r5r6r7.z] 	#Opcode-kv4_v1-LO_variant_lsomask_registerY_registerN_registerZ_simple
	;;
	lo.us.odd $r7? $r36r37r38r39 = -1125899906842624[$r6r7.hi] 	#Opcode-kv4_v1-LO_variant_lsucond_registerY_registerN_extend27_offset27_registerZ_triple
	;;
	lo.even $r4r5r6r7.t? $r40r41r42r43 = -8388608[$r8] 	#Opcode-kv4_v1-LO_variant_lsucond_registerY_registerN_offset27_registerZ_double
	;;
	lo.s.wnez $r8r9.lo? $r44r45r46r47 = [$r8r9r10r11.x] 	#Opcode-kv4_v1-LO_variant_lsucond_registerY_registerN_registerZ_simple
	;;
	lo.u $r48r49r50r51 = 2305843009213693951[$r9] 	#Opcode-kv4_v1-LO_variant_registerN_extend27_upper27_lower10_registerZ_triple
	;;
	lo.us $r52r53r54r55 = -64[$r8r9.hi] 	#Opcode-kv4_v1-LO_variant_registerN_signed10_registerZ_simple
	;;
	lo $r56r57r58r59 = -8589934592[$r8r9r10r11.y] 	#Opcode-kv4_v1-LO_variant_registerN_upper27_lower10_registerZ_double
	;;
	lq.s.xs $r16r17r18r19.lo = $r10[$r10r11.lo] 	#Opcode-kv4_v1-LQ_variant_doscale_registerM_registerY_registerZ_simple
	;;
	lq.u.weqz $r8r9r10r11.z? $r18r19 = -1125899906842624[$r11] 	#Opcode-kv4_v1-LQ_variant_lsucond_registerY_registerM_extend27_offset27_registerZ_triple
	;;
	lq.us.wltz $r10r11.hi? $r16r17r18r19.hi = -8388608[$r8r9r10r11.t] 	#Opcode-kv4_v1-LQ_variant_lsucond_registerY_registerM_offset27_registerZ_double
	;;
	lq.wgez $r12? $r20r21 = [$sp] 	#Opcode-kv4_v1-LQ_variant_lsucond_registerY_registerM_registerZ_simple
	;;
	lq.s $r20r21r22r23.lo = 2305843009213693951[$r13] 	#Opcode-kv4_v1-LQ_variant_registerM_extend27_upper27_lower10_registerZ_triple
	;;
	lq.u $r22r23 = -64[$tp] 	#Opcode-kv4_v1-LQ_variant_registerM_signed10_registerZ_simple
	;;
	lq.us $r20r21r22r23.hi = -8589934592[$r14] 	#Opcode-kv4_v1-LQ_variant_registerM_upper27_lower10_registerZ_double
	;;
	lws $fp = $r15[$rp] 	#Opcode-kv4_v1-LWS_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lws.s.wlez $r16? $r16r17.lo = -1125899906842624[$r16r17r18r19.x] 	#Opcode-kv4_v1-LWS_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lws.u.wgtz $r17? $r16r17.hi = -8388608[$r16r17r18r19.y] 	#Opcode-kv4_v1-LWS_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lws.us.dnez $r18? $r18r19.lo = [$r16r17r18r19.z] 	#Opcode-kv4_v1-LWS_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lws $r19 = 2305843009213693951[$r18r19.hi] 	#Opcode-kv4_v1-LWS_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lws.s $r16r17r18r19.t = -64[$r20] 	#Opcode-kv4_v1-LWS_variant_registerW_signed10_registerZ_simple
	;;
	lws.u $r20r21.lo = -8589934592[$r20r21r22r23.x] 	#Opcode-kv4_v1-LWS_variant_registerW_upper27_lower10_registerZ_double
	;;
	lwz.us.xs $r21 = $r20r21.hi[$r20r21r22r23.y] 	#Opcode-kv4_v1-LWZ_variant_doscale_registerW_registerY_registerZ_simple
	;;
	lwz.deqz $r22? $r22r23.lo = -1125899906842624[$r20r21r22r23.z] 	#Opcode-kv4_v1-LWZ_variant_lsucond_registerY_registerW_extend27_offset27_registerZ_triple
	;;
	lwz.s.dltz $r23? $r22r23.hi = -8388608[$r20r21r22r23.t] 	#Opcode-kv4_v1-LWZ_variant_lsucond_registerY_registerW_offset27_registerZ_double
	;;
	lwz.u.dgez $r24? $r24r25.lo = [$r24r25r26r27.x] 	#Opcode-kv4_v1-LWZ_variant_lsucond_registerY_registerW_registerZ_simple
	;;
	lwz.us $r25 = 2305843009213693951[$r24r25.hi] 	#Opcode-kv4_v1-LWZ_variant_registerW_extend27_upper27_lower10_registerZ_triple
	;;
	lwz $r24r25r26r27.y = -64[$r26] 	#Opcode-kv4_v1-LWZ_variant_registerW_signed10_registerZ_simple
	;;
	lwz.s $r26r27.lo = -8589934592[$r24r25r26r27.z] 	#Opcode-kv4_v1-LWZ_variant_registerW_upper27_lower10_registerZ_double
	;;
	madddt $r24r25 = $r27, $r26r27.hi 	#Opcode-kv4_v1-MADDDT_registerM_registerZ_registerY_simple
	;;
	maddd $r24r25r26r27.t = $r28, $r28r29.lo 	#Opcode-kv4_v1-MADDD_registerW_registerZ_registerY_simple
	;;
	maddd $r28r29r30r31.x = $r29, 536870911 	#Opcode-kv4_v1-MADDD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maddhq $r28r29.hi = $r28r29r30r31.y, $r30 	#Opcode-kv4_v1-MADDHQ_registerW_registerZ_registerY_simple
	;;
	maddhq $r30r31.lo = $r28r29r30r31.z, 536870911.@ 	#Opcode-kv4_v1-MADDHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maddhwq $r24r25r26r27.lo = $r31, $r30r31.hi 	#Opcode-kv4_v1-MADDHWQ_registerM_registerZ_registerY_simple
	;;
	maddsudt $r26r27 = $r28r29r30r31.t, $r32 	#Opcode-kv4_v1-MADDSUDT_registerM_registerZ_registerY_simple
	;;
	maddsuhwq $r24r25r26r27.hi = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv4_v1-MADDSUHWQ_registerM_registerZ_registerY_simple
	;;
	maddsuwdp $r28r29 = $r33, $r32r33.hi 	#Opcode-kv4_v1-MADDSUWDP_registerM_registerZ_registerY_simple
	;;
	maddsuwdp $r28r29r30r31.lo = $r32r33r34r35.y, 536870911 	#Opcode-kv4_v1-MADDSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	maddsuwd $r34 = $r34r35.lo, $r32r33r34r35.z 	#Opcode-kv4_v1-MADDSUWD_registerW_registerZ_registerY_simple
	;;
	maddsuwd $r35 = $r34r35.hi, 536870911 	#Opcode-kv4_v1-MADDSUWD_registerW_registerZ_upper27_lower5_double
	;;
	maddudt $r30r31 = $r32r33r34r35.t, $r36 	#Opcode-kv4_v1-MADDUDT_registerM_registerZ_registerY_simple
	;;
	madduhwq $r28r29r30r31.hi = $r36r37.lo, $r36r37r38r39.x 	#Opcode-kv4_v1-MADDUHWQ_registerM_registerZ_registerY_simple
	;;
	madduwdp $r32r33 = $r37, $r36r37.hi 	#Opcode-kv4_v1-MADDUWDP_registerM_registerZ_registerY_simple
	;;
	madduwdp $r32r33r34r35.lo = $r36r37r38r39.y, 536870911.@ 	#Opcode-kv4_v1-MADDUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	madduwd $r38 = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv4_v1-MADDUWD_registerW_registerZ_registerY_simple
	;;
	madduwd $r39 = $r38r39.hi, 536870911 	#Opcode-kv4_v1-MADDUWD_registerW_registerZ_upper27_lower5_double
	;;
	madduzdt $r34r35 = $r36r37r38r39.t, $r40 	#Opcode-kv4_v1-MADDUZDT_registerM_registerZ_registerY_simple
	;;
	maddwdp $r32r33r34r35.hi = $r40r41.lo, $r40r41r42r43.x 	#Opcode-kv4_v1-MADDWDP_registerM_registerZ_registerY_simple
	;;
	maddwdp $r36r37 = $r41, 536870911 	#Opcode-kv4_v1-MADDWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	maddwd $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv4_v1-MADDWD_registerW_registerZ_registerY_simple
	;;
	maddwd $r42r43.lo = $r40r41r42r43.z, 536870911 	#Opcode-kv4_v1-MADDWD_registerW_registerZ_upper27_lower5_double
	;;
	maddwp $r43 = $r42r43.hi, $r40r41r42r43.t 	#Opcode-kv4_v1-MADDWP_registerW_registerZ_registerY_simple
	;;
	maddwp $r44 = $r44r45.lo, 536870911.@ 	#Opcode-kv4_v1-MADDWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maddw $r44r45r46r47.x = $r45, $r44r45.hi 	#Opcode-kv4_v1-MADDW_registerW_registerZ_registerY_simple
	;;
	maddw $r44r45r46r47.y = $r46, 536870911 	#Opcode-kv4_v1-MADDW_registerW_registerZ_upper27_lower5_double
	;;
	make $r46r47.lo = 2305843009213693951 	#Opcode-kv4_v1-MAKE_registerW_extend27_upper27_lower10_triple
	;;
	make $r44r45r46r47.z = -549755813888 	#Opcode-kv4_v1-MAKE_registerW_extend6_upper27_lower10_double
	;;
	make $r47 = -4096 	#Opcode-kv4_v1-MAKE_registerW_signed16_simple
	;;
	maxbo $r46r47.hi = $r44r45r46r47.t, $r48 	#Opcode-kv4_v1-MAXBO_registerW_registerZ_registerY_simple
	;;
	maxbo $r48r49.lo = $r48r49r50r51.x, 536870911 	#Opcode-kv4_v1-MAXBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxd $r49 = $r48r49.hi, 2305843009213693951 	#Opcode-kv4_v1-MAXD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maxd $r48r49r50r51.y = $r50, $r50r51.lo 	#Opcode-kv4_v1-MAXD_registerW_registerZ_registerY_simple
	;;
	maxd $r48r49r50r51.z = $r51, -64 	#Opcode-kv4_v1-MAXD_registerW_registerZ_signed10_simple
	;;
	maxd $r50r51.hi = $r48r49r50r51.t, -8589934592 	#Opcode-kv4_v1-MAXD_registerW_registerZ_upper27_lower10_double
	;;
	maxhq $r52 = $r52r53.lo, $r52r53r54r55.x 	#Opcode-kv4_v1-MAXHQ_registerW_registerZ_registerY_simple
	;;
	maxhq $r53 = $r52r53.hi, 536870911.@ 	#Opcode-kv4_v1-MAXHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxrbod $r52r53r54r55.y = $r54 	#Opcode-kv4_v1-MAXRBOD_registerW_registerZ_simple
	;;
	maxrhqd $r54r55.lo = $r52r53r54r55.z 	#Opcode-kv4_v1-MAXRHQD_registerW_registerZ_simple
	;;
	maxrwpd $r55 = $r54r55.hi 	#Opcode-kv4_v1-MAXRWPD_registerW_registerZ_simple
	;;
	maxubo $r52r53r54r55.t = $r56, $r56r57.lo 	#Opcode-kv4_v1-MAXUBO_registerW_registerZ_registerY_simple
	;;
	maxubo $r56r57r58r59.x = $r57, 536870911 	#Opcode-kv4_v1-MAXUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxud $r56r57.hi = $r56r57r58r59.y, 2305843009213693951 	#Opcode-kv4_v1-MAXUD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	maxud $r58 = $r58r59.lo, $r56r57r58r59.z 	#Opcode-kv4_v1-MAXUD_registerW_registerZ_registerY_simple
	;;
	maxud $r59 = $r58r59.hi, -64 	#Opcode-kv4_v1-MAXUD_registerW_registerZ_signed10_simple
	;;
	maxud $r56r57r58r59.t = $r60, -8589934592 	#Opcode-kv4_v1-MAXUD_registerW_registerZ_upper27_lower10_double
	;;
	maxuhq $r60r61.lo = $r60r61r62r63.x, $r61 	#Opcode-kv4_v1-MAXUHQ_registerW_registerZ_registerY_simple
	;;
	maxuhq $r60r61.hi = $r60r61r62r63.y, 536870911.@ 	#Opcode-kv4_v1-MAXUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxurbod $r62 = $r62r63.lo 	#Opcode-kv4_v1-MAXURBOD_registerW_registerZ_simple
	;;
	maxurhqd $r60r61r62r63.z = $r63 	#Opcode-kv4_v1-MAXURHQD_registerW_registerZ_simple
	;;
	maxurwpd $r62r63.hi = $r60r61r62r63.t 	#Opcode-kv4_v1-MAXURWPD_registerW_registerZ_simple
	;;
	maxuwp $r0 = $r0r1.lo, $r0r1r2r3.x 	#Opcode-kv4_v1-MAXUWP_registerW_registerZ_registerY_simple
	;;
	maxuwp $r1 = $r0r1.hi, 536870911 	#Opcode-kv4_v1-MAXUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxuw $r0r1r2r3.y = $r2, $r2r3.lo 	#Opcode-kv4_v1-MAXUW_registerW_registerZ_registerY_simple
	;;
	maxuw $r0r1r2r3.z = $r3, 536870911 	#Opcode-kv4_v1-MAXUW_registerW_registerZ_upper27_lower5_double
	;;
	maxwp $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv4_v1-MAXWP_registerW_registerZ_registerY_simple
	;;
	maxwp $r4r5.lo = $r4r5r6r7.x, 536870911.@ 	#Opcode-kv4_v1-MAXWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	maxw $r5 = $r4r5.hi, $r4r5r6r7.y 	#Opcode-kv4_v1-MAXW_registerW_registerZ_registerY_simple
	;;
	maxw $r6 = $r6r7.lo, 536870911 	#Opcode-kv4_v1-MAXW_registerW_registerZ_upper27_lower5_double
	;;
	minbo $r4r5r6r7.z = $r7, $r6r7.hi 	#Opcode-kv4_v1-MINBO_registerW_registerZ_registerY_simple
	;;
	minbo $r4r5r6r7.t = $r8, 536870911 	#Opcode-kv4_v1-MINBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mind $r8r9.lo = $r8r9r10r11.x, 2305843009213693951 	#Opcode-kv4_v1-MIND_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	mind $r9 = $r8r9.hi, $r8r9r10r11.y 	#Opcode-kv4_v1-MIND_registerW_registerZ_registerY_simple
	;;
	mind $r10 = $r10r11.lo, -64 	#Opcode-kv4_v1-MIND_registerW_registerZ_signed10_simple
	;;
	mind $r8r9r10r11.z = $r11, -8589934592 	#Opcode-kv4_v1-MIND_registerW_registerZ_upper27_lower10_double
	;;
	minhq $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv4_v1-MINHQ_registerW_registerZ_registerY_simple
	;;
	minhq $sp = $r13, 536870911.@ 	#Opcode-kv4_v1-MINHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minrbod $tp = $r14 	#Opcode-kv4_v1-MINRBOD_registerW_registerZ_simple
	;;
	minrhqd $fp = $r15 	#Opcode-kv4_v1-MINRHQD_registerW_registerZ_simple
	;;
	minrwpd $rp = $r16 	#Opcode-kv4_v1-MINRWPD_registerW_registerZ_simple
	;;
	minubo $r16r17.lo = $r16r17r18r19.x, $r17 	#Opcode-kv4_v1-MINUBO_registerW_registerZ_registerY_simple
	;;
	minubo $r16r17.hi = $r16r17r18r19.y, 536870911 	#Opcode-kv4_v1-MINUBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minud $r18 = $r18r19.lo, 2305843009213693951 	#Opcode-kv4_v1-MINUD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	minud $r16r17r18r19.z = $r19, $r18r19.hi 	#Opcode-kv4_v1-MINUD_registerW_registerZ_registerY_simple
	;;
	minud $r16r17r18r19.t = $r20, -64 	#Opcode-kv4_v1-MINUD_registerW_registerZ_signed10_simple
	;;
	minud $r20r21.lo = $r20r21r22r23.x, -8589934592 	#Opcode-kv4_v1-MINUD_registerW_registerZ_upper27_lower10_double
	;;
	minuhq $r21 = $r20r21.hi, $r20r21r22r23.y 	#Opcode-kv4_v1-MINUHQ_registerW_registerZ_registerY_simple
	;;
	minuhq $r22 = $r22r23.lo, 536870911.@ 	#Opcode-kv4_v1-MINUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minurbod $r20r21r22r23.z = $r23 	#Opcode-kv4_v1-MINURBOD_registerW_registerZ_simple
	;;
	minurhqd $r22r23.hi = $r20r21r22r23.t 	#Opcode-kv4_v1-MINURHQD_registerW_registerZ_simple
	;;
	minurwpd $r24 = $r24r25.lo 	#Opcode-kv4_v1-MINURWPD_registerW_registerZ_simple
	;;
	minuwp $r24r25r26r27.x = $r25, $r24r25.hi 	#Opcode-kv4_v1-MINUWP_registerW_registerZ_registerY_simple
	;;
	minuwp $r24r25r26r27.y = $r26, 536870911 	#Opcode-kv4_v1-MINUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minuw $r26r27.lo = $r24r25r26r27.z, $r27 	#Opcode-kv4_v1-MINUW_registerW_registerZ_registerY_simple
	;;
	minuw $r26r27.hi = $r24r25r26r27.t, 536870911 	#Opcode-kv4_v1-MINUW_registerW_registerZ_upper27_lower5_double
	;;
	minwp $r28 = $r28r29.lo, $r28r29r30r31.x 	#Opcode-kv4_v1-MINWP_registerW_registerZ_registerY_simple
	;;
	minwp $r29 = $r28r29.hi, 536870911.@ 	#Opcode-kv4_v1-MINWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	minw $r28r29r30r31.y = $r30, $r30r31.lo 	#Opcode-kv4_v1-MINW_registerW_registerZ_registerY_simple
	;;
	minw $r28r29r30r31.z = $r31, 536870911 	#Opcode-kv4_v1-MINW_registerW_registerZ_upper27_lower5_double
	;;
	mm212w $r36r37r38r39.lo = $r30r31.hi, $r28r29r30r31.t 	#Opcode-kv4_v1-MM212W_registerM_registerZ_registerY_simple
	;;
	mm212w $r38r39 = $r32, 536870911 	#Opcode-kv4_v1-MM212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mma212w $r36r37r38r39.hi = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv4_v1-MMA212W_registerM_registerZ_registerY_simple
	;;
	mma212w $r40r41 = $r33, 536870911.@ 	#Opcode-kv4_v1-MMA212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mms212w $r40r41r42r43.lo = $r32r33.hi, $r32r33r34r35.y 	#Opcode-kv4_v1-MMS212W_registerM_registerZ_registerY_simple
	;;
	mms212w $r42r43 = $r34, 536870911 	#Opcode-kv4_v1-MMS212W_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfdt $r40r41r42r43.hi = $r34r35.lo, $r32r33r34r35.z 	#Opcode-kv4_v1-MSBFDT_registerM_registerZ_registerY_simple
	;;
	msbfd $r35 = $r34r35.hi, $r32r33r34r35.t 	#Opcode-kv4_v1-MSBFD_registerW_registerZ_registerY_simple
	;;
	msbfd $r36 = $r36r37.lo, 536870911.@ 	#Opcode-kv4_v1-MSBFD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfhq $r36r37r38r39.x = $r37, $r36r37.hi 	#Opcode-kv4_v1-MSBFHQ_registerW_registerZ_registerY_simple
	;;
	msbfhq $r36r37r38r39.y = $r38, 536870911 	#Opcode-kv4_v1-MSBFHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfhwq $r44r45 = $r38r39.lo, $r36r37r38r39.z 	#Opcode-kv4_v1-MSBFHWQ_registerM_registerZ_registerY_simple
	;;
	msbfsudt $r44r45r46r47.lo = $r39, $r38r39.hi 	#Opcode-kv4_v1-MSBFSUDT_registerM_registerZ_registerY_simple
	;;
	msbfsuhwq $r46r47 = $r36r37r38r39.t, $r40 	#Opcode-kv4_v1-MSBFSUHWQ_registerM_registerZ_registerY_simple
	;;
	msbfsuwdp $r44r45r46r47.hi = $r40r41.lo, $r40r41r42r43.x 	#Opcode-kv4_v1-MSBFSUWDP_registerM_registerZ_registerY_simple
	;;
	msbfsuwdp $r48r49 = $r41, 536870911.@ 	#Opcode-kv4_v1-MSBFSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfsuwd $r40r41.hi = $r40r41r42r43.y, $r42 	#Opcode-kv4_v1-MSBFSUWD_registerW_registerZ_registerY_simple
	;;
	msbfsuwd $r42r43.lo = $r40r41r42r43.z, 536870911 	#Opcode-kv4_v1-MSBFSUWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfudt $r48r49r50r51.lo = $r43, $r42r43.hi 	#Opcode-kv4_v1-MSBFUDT_registerM_registerZ_registerY_simple
	;;
	msbfuhwq $r50r51 = $r40r41r42r43.t, $r44 	#Opcode-kv4_v1-MSBFUHWQ_registerM_registerZ_registerY_simple
	;;
	msbfuwdp $r48r49r50r51.hi = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv4_v1-MSBFUWDP_registerM_registerZ_registerY_simple
	;;
	msbfuwdp $r52r53 = $r45, 536870911 	#Opcode-kv4_v1-MSBFUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfuwd $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv4_v1-MSBFUWD_registerW_registerZ_registerY_simple
	;;
	msbfuwd $r46r47.lo = $r44r45r46r47.z, 536870911 	#Opcode-kv4_v1-MSBFUWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfuzdt $r52r53r54r55.lo = $r47, $r46r47.hi 	#Opcode-kv4_v1-MSBFUZDT_registerM_registerZ_registerY_simple
	;;
	msbfwdp $r54r55 = $r44r45r46r47.t, $r48 	#Opcode-kv4_v1-MSBFWDP_registerM_registerZ_registerY_simple
	;;
	msbfwdp $r52r53r54r55.hi = $r48r49.lo, 536870911.@ 	#Opcode-kv4_v1-MSBFWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	msbfwd $r48r49r50r51.x = $r49, $r48r49.hi 	#Opcode-kv4_v1-MSBFWD_registerW_registerZ_registerY_simple
	;;
	msbfwd $r48r49r50r51.y = $r50, 536870911 	#Opcode-kv4_v1-MSBFWD_registerW_registerZ_upper27_lower5_double
	;;
	msbfwp $r50r51.lo = $r48r49r50r51.z, $r51 	#Opcode-kv4_v1-MSBFWP_registerW_registerZ_registerY_simple
	;;
	msbfwp $r50r51.hi = $r48r49r50r51.t, 536870911 	#Opcode-kv4_v1-MSBFWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	msbfw $r52 = $r52r53.lo, $r52r53r54r55.x 	#Opcode-kv4_v1-MSBFW_registerW_registerZ_registerY_simple
	;;
	msbfw $r53 = $r52r53.hi, 536870911 	#Opcode-kv4_v1-MSBFW_registerW_registerZ_upper27_lower5_double
	;;
	muldt $r56r57 = $r52r53r54r55.y, $r54 	#Opcode-kv4_v1-MULDT_registerM_registerZ_registerY_simple
	;;
	muld $r54r55.lo = $r52r53r54r55.z, $r55 	#Opcode-kv4_v1-MULD_registerW_registerZ_registerY_simple
	;;
	muld $r54r55.hi = $r52r53r54r55.t, 536870911.@ 	#Opcode-kv4_v1-MULD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mulhq $r56 = $r56r57.lo, $r56r57r58r59.x 	#Opcode-kv4_v1-MULHQ_registerW_registerZ_registerY_simple
	;;
	mulhq $r57 = $r56r57.hi, 536870911 	#Opcode-kv4_v1-MULHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mulhwq $r56r57r58r59.lo = $r56r57r58r59.y, $r58 	#Opcode-kv4_v1-MULHWQ_registerM_registerZ_registerY_simple
	;;
	mulmwq $r58r59 = $r56r57r58r59.hi, $r60r61 	#Opcode-kv4_v1-MULMWQ_registerM_registerP_registerO_simple
	;;
	mulsudt $r60r61r62r63.lo = $r58r59.lo, $r56r57r58r59.z 	#Opcode-kv4_v1-MULSUDT_registerM_registerZ_registerY_simple
	;;
	mulsuhwq $r62r63 = $r59, $r58r59.hi 	#Opcode-kv4_v1-MULSUHWQ_registerM_registerZ_registerY_simple
	;;
	mulsumwq $r60r61r62r63.hi = $r0r1, $r0r1r2r3.lo 	#Opcode-kv4_v1-MULSUMWQ_registerM_registerP_registerO_simple
	;;
	mulsuwdp $r2r3 = $r56r57r58r59.t, $r60 	#Opcode-kv4_v1-MULSUWDP_registerM_registerZ_registerY_simple
	;;
	mulsuwdp $r0r1r2r3.hi = $r60r61.lo, 536870911.@ 	#Opcode-kv4_v1-MULSUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mulsuwd $r60r61r62r63.x = $r61, $r60r61.hi 	#Opcode-kv4_v1-MULSUWD_registerW_registerZ_registerY_simple
	;;
	mulsuwd $r60r61r62r63.y = $r62, 536870911 	#Opcode-kv4_v1-MULSUWD_registerW_registerZ_upper27_lower5_double
	;;
	muludt $r4r5 = $r62r63.lo, $r60r61r62r63.z 	#Opcode-kv4_v1-MULUDT_registerM_registerZ_registerY_simple
	;;
	muluhwq $r4r5r6r7.lo = $r63, $r62r63.hi 	#Opcode-kv4_v1-MULUHWQ_registerM_registerZ_registerY_simple
	;;
	mulumwq $r6r7 = $r4r5r6r7.hi, $r8r9 	#Opcode-kv4_v1-MULUMWQ_registerM_registerP_registerO_simple
	;;
	muluwdp $r8r9r10r11.lo = $r60r61r62r63.t, $r0 	#Opcode-kv4_v1-MULUWDP_registerM_registerZ_registerY_simple
	;;
	muluwdp $r10r11 = $r0r1.lo, 536870911 	#Opcode-kv4_v1-MULUWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	muluwd $r0r1r2r3.x = $r1, $r0r1.hi 	#Opcode-kv4_v1-MULUWD_registerW_registerZ_registerY_simple
	;;
	muluwd $r0r1r2r3.y = $r2, 536870911 	#Opcode-kv4_v1-MULUWD_registerW_registerZ_upper27_lower5_double
	;;
	mulwdp $r8r9r10r11.hi = $r2r3.lo, $r0r1r2r3.z 	#Opcode-kv4_v1-MULWDP_registerM_registerZ_registerY_simple
	;;
	mulwdp $r12r13 = $r3, 536870911.@ 	#Opcode-kv4_v1-MULWDP_registerM_registerZ_upper27_lower5_splat32_double
	;;
	mulwd $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv4_v1-MULWD_registerW_registerZ_registerY_simple
	;;
	mulwd $r4r5.lo = $r4r5r6r7.x, 536870911 	#Opcode-kv4_v1-MULWD_registerW_registerZ_upper27_lower5_double
	;;
	mulwp $r5 = $r4r5.hi, $r4r5r6r7.y 	#Opcode-kv4_v1-MULWP_registerW_registerZ_registerY_simple
	;;
	mulwp $r6 = $r6r7.lo, 536870911 	#Opcode-kv4_v1-MULWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	mulwq $r12r13r14r15.lo = $r14r15, $r12r13r14r15.hi 	#Opcode-kv4_v1-MULWQ_registerM_registerP_registerO_simple
	;;
	mulw $r4r5r6r7.z = $r7, $r6r7.hi 	#Opcode-kv4_v1-MULW_registerW_registerZ_registerY_simple
	;;
	mulw $r4r5r6r7.t = $r8, 536870911 	#Opcode-kv4_v1-MULW_registerW_registerZ_upper27_lower5_double
	;;
	nandd $r8r9.lo = $r8r9r10r11.x, 2305843009213693951 	#Opcode-kv4_v1-NANDD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	nandd $r9 = $r8r9.hi, $r8r9r10r11.y 	#Opcode-kv4_v1-NANDD_registerW_registerZ_registerY_simple
	;;
	nandd $r10 = $r10r11.lo, -64 	#Opcode-kv4_v1-NANDD_registerW_registerZ_signed10_simple
	;;
	nandd $r8r9r10r11.z = $r11, -8589934592 	#Opcode-kv4_v1-NANDD_registerW_registerZ_upper27_lower10_double
	;;
	nandw $r10r11.hi = $r8r9r10r11.t, $r12 	#Opcode-kv4_v1-NANDW_registerW_registerZ_registerY_simple
	;;
	nandw $sp = $r13, 536870911 	#Opcode-kv4_v1-NANDW_registerW_registerZ_upper27_lower5_double
	;;
	negbo $tp = $r14 	#Opcode-kv4_v1-NEGBO_registerW_registerZ_double
	;;
	negd $fp = $r15 	#Opcode-kv4_v1-NEGD_registerW_registerZ_simple
	;;
	neghq $rp = $r16 	#Opcode-kv4_v1-NEGHQ_registerW_registerZ_double
	;;
	negsbo $r16r17.lo = $r16r17r18r19.x 	#Opcode-kv4_v1-NEGSBO_registerW_registerZ_double
	;;
	negsd $r17 = $r16r17.hi 	#Opcode-kv4_v1-NEGSD_registerW_registerZ_double
	;;
	negshq $r16r17r18r19.y = $r18 	#Opcode-kv4_v1-NEGSHQ_registerW_registerZ_double
	;;
	negswp $r18r19.lo = $r16r17r18r19.z 	#Opcode-kv4_v1-NEGSWP_registerW_registerZ_double
	;;
	negsw $r19 = $r18r19.hi 	#Opcode-kv4_v1-NEGSW_registerW_registerZ_double
	;;
	negwp $r16r17r18r19.t = $r20 	#Opcode-kv4_v1-NEGWP_registerW_registerZ_double
	;;
	negw $r20r21.lo = $r20r21r22r23.x 	#Opcode-kv4_v1-NEGW_registerW_registerZ_double
	;;
	neord $r21 = $r20r21.hi, 2305843009213693951 	#Opcode-kv4_v1-NEORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	neord $r20r21r22r23.y = $r22, $r22r23.lo 	#Opcode-kv4_v1-NEORD_registerW_registerZ_registerY_simple
	;;
	neord $r20r21r22r23.z = $r23, -64 	#Opcode-kv4_v1-NEORD_registerW_registerZ_signed10_simple
	;;
	neord $r22r23.hi = $r20r21r22r23.t, -8589934592 	#Opcode-kv4_v1-NEORD_registerW_registerZ_upper27_lower10_double
	;;
	neorw $r24 = $r24r25.lo, $r24r25r26r27.x 	#Opcode-kv4_v1-NEORW_registerW_registerZ_registerY_simple
	;;
	neorw $r25 = $r24r25.hi, 536870911 	#Opcode-kv4_v1-NEORW_registerW_registerZ_upper27_lower5_double
	;;
	niord $r24r25r26r27.y = $r26, 2305843009213693951 	#Opcode-kv4_v1-NIORD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	niord $r26r27.lo = $r24r25r26r27.z, $r27 	#Opcode-kv4_v1-NIORD_registerW_registerZ_registerY_simple
	;;
	niord $r26r27.hi = $r24r25r26r27.t, -64 	#Opcode-kv4_v1-NIORD_registerW_registerZ_signed10_simple
	;;
	niord $r28 = $r28r29.lo, -8589934592 	#Opcode-kv4_v1-NIORD_registerW_registerZ_upper27_lower10_double
	;;
	niorw $r28r29r30r31.x = $r29, $r28r29.hi 	#Opcode-kv4_v1-NIORW_registerW_registerZ_registerY_simple
	;;
	niorw $r28r29r30r31.y = $r30, 536870911 	#Opcode-kv4_v1-NIORW_registerW_registerZ_upper27_lower5_double
	;;
	nop 	#Opcode-kv4_v1-NOP_simple
	;;
	notd $r30r31.lo = $r28r29r30r31.z 	#Opcode-kv4_v1-NOTD_registerW_registerZ_simple
	;;
	notw $r31 = $r30r31.hi 	#Opcode-kv4_v1-NOTW_registerW_registerZ_double
	;;
	pcrel $r28r29r30r31.t = 2305843009213693951 	#Opcode-kv4_v1-PCREL_registerW_extend27_upper27_lower10_triple
	;;
	pcrel $r32 = -549755813888 	#Opcode-kv4_v1-PCREL_registerW_extend6_upper27_lower10_double
	;;
	pcrel $r32r33.lo = -4096 	#Opcode-kv4_v1-PCREL_registerW_signed16_simple
	;;
	ret 	#Opcode-kv4_v1-RET_simple
	;;
	rfe 	#Opcode-kv4_v1-RFE_simple
	;;
	rolwps $r32r33r34r35.x = $r33, $r32r33.hi 	#Opcode-kv4_v1-ROLWPS_registerW_registerZ_registerY_simple
	;;
	rolwps $r32r33r34r35.y = $r34, 7 	#Opcode-kv4_v1-ROLWPS_registerW_registerZ_unsigned6_simple
	;;
	rolw $r34r35.lo = $r32r33r34r35.z, $r35 	#Opcode-kv4_v1-ROLW_registerW_registerZ_registerY_simple
	;;
	rolw $r34r35.hi = $r32r33r34r35.t, 7 	#Opcode-kv4_v1-ROLW_registerW_registerZ_unsigned6_simple
	;;
	rorwps $r36 = $r36r37.lo, $r36r37r38r39.x 	#Opcode-kv4_v1-RORWPS_registerW_registerZ_registerY_simple
	;;
	rorwps $r37 = $r36r37.hi, 7 	#Opcode-kv4_v1-RORWPS_registerW_registerZ_unsigned6_simple
	;;
	rorw $r36r37r38r39.y = $r38, $r38r39.lo 	#Opcode-kv4_v1-RORW_registerW_registerZ_registerY_simple
	;;
	rorw $r36r37r38r39.z = $r39, 7 	#Opcode-kv4_v1-RORW_registerW_registerZ_unsigned6_simple
	;;
	rswap $r38r39.hi = $mmc 	#Opcode-kv4_v1-RSWAP_registerZ_systemAlone_simple
	;;
	rswap $r36r37r38r39.t = $s0 	#Opcode-kv4_v1-RSWAP_registerZ_systemS3_simple
	;;
	rswap $r40 = $pc 	#Opcode-kv4_v1-RSWAP_registerZ_systemS4_simple
	;;
	sbfbo $r40r41.lo = $r40r41r42r43.x, $r41 	#Opcode-kv4_v1-SBFBO_registerW_registerZ_registerY_simple
	;;
	sbfbo $r40r41.hi = $r40r41r42r43.y, 536870911.@ 	#Opcode-kv4_v1-SBFBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfcd.i $r42 = $r42r43.lo, $r40r41r42r43.z 	#Opcode-kv4_v1-SBFCD.I_registerW_registerZ_registerY_simple
	;;
	sbfcd.i $r43 = $r42r43.hi, 536870911 	#Opcode-kv4_v1-SBFCD.I_registerW_registerZ_upper27_lower5_double
	;;
	sbfcd $r40r41r42r43.t = $r44, $r44r45.lo 	#Opcode-kv4_v1-SBFCD_registerW_registerZ_registerY_simple
	;;
	sbfcd $r44r45r46r47.x = $r45, 536870911 	#Opcode-kv4_v1-SBFCD_registerW_registerZ_upper27_lower5_double
	;;
	sbfd $r44r45.hi = $r44r45r46r47.y, 2305843009213693951 	#Opcode-kv4_v1-SBFD_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbfd $r46 = $r46r47.lo, $r44r45r46r47.z 	#Opcode-kv4_v1-SBFD_registerW_registerZ_registerY_simple
	;;
	sbfd $r47 = $r46r47.hi, -64 	#Opcode-kv4_v1-SBFD_registerW_registerZ_signed10_simple
	;;
	sbfd $r44r45r46r47.t = $r48, -8589934592 	#Opcode-kv4_v1-SBFD_registerW_registerZ_upper27_lower10_double
	;;
	sbfhq $r48r49.lo = $r48r49r50r51.x, $r49 	#Opcode-kv4_v1-SBFHQ_registerW_registerZ_registerY_simple
	;;
	sbfhq $r48r49.hi = $r48r49r50r51.y, 536870911 	#Opcode-kv4_v1-SBFHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsbo $r50 = $r50r51.lo, $r48r49r50r51.z 	#Opcode-kv4_v1-SBFSBO_registerW_registerZ_registerY_simple
	;;
	sbfsbo $r51 = $r50r51.hi, 536870911.@ 	#Opcode-kv4_v1-SBFSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsd $r48r49r50r51.t = $r52, $r52r53.lo 	#Opcode-kv4_v1-SBFSD_registerW_registerZ_registerY_simple
	;;
	sbfsd $r52r53r54r55.x = $r53, 536870911 	#Opcode-kv4_v1-SBFSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfshq $r52r53.hi = $r52r53r54r55.y, $r54 	#Opcode-kv4_v1-SBFSHQ_registerW_registerZ_registerY_simple
	;;
	sbfshq $r54r55.lo = $r52r53r54r55.z, 536870911.@ 	#Opcode-kv4_v1-SBFSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfswp $r55 = $r54r55.hi, $r52r53r54r55.t 	#Opcode-kv4_v1-SBFSWP_registerW_registerZ_registerY_simple
	;;
	sbfswp $r56 = $r56r57.lo, 536870911 	#Opcode-kv4_v1-SBFSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfsw $r56r57r58r59.x = $r57, $r56r57.hi 	#Opcode-kv4_v1-SBFSW_registerW_registerZ_registerY_simple
	;;
	sbfsw $r56r57r58r59.y = $r58, 536870911 	#Opcode-kv4_v1-SBFSW_registerW_registerZ_upper27_lower5_double
	;;
	sbfusbo $r58r59.lo = $r56r57r58r59.z, $r59 	#Opcode-kv4_v1-SBFUSBO_registerW_registerZ_registerY_simple
	;;
	sbfusbo $r58r59.hi = $r56r57r58r59.t, 536870911.@ 	#Opcode-kv4_v1-SBFUSBO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfusd $r60 = $r60r61.lo, $r60r61r62r63.x 	#Opcode-kv4_v1-SBFUSD_registerW_registerZ_registerY_simple
	;;
	sbfusd $r61 = $r60r61.hi, 536870911 	#Opcode-kv4_v1-SBFUSD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfushq $r60r61r62r63.y = $r62, $r62r63.lo 	#Opcode-kv4_v1-SBFUSHQ_registerW_registerZ_registerY_simple
	;;
	sbfushq $r60r61r62r63.z = $r63, 536870911.@ 	#Opcode-kv4_v1-SBFUSHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfuswp $r62r63.hi = $r60r61r62r63.t, $r0 	#Opcode-kv4_v1-SBFUSWP_registerW_registerZ_registerY_simple
	;;
	sbfuswp $r0r1.lo = $r0r1r2r3.x, 536870911 	#Opcode-kv4_v1-SBFUSWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfusw $r1 = $r0r1.hi, $r0r1r2r3.y 	#Opcode-kv4_v1-SBFUSW_registerW_registerZ_registerY_simple
	;;
	sbfusw $r2 = $r2r3.lo, 536870911 	#Opcode-kv4_v1-SBFUSW_registerW_registerZ_upper27_lower5_double
	;;
	sbfuwd $r0r1r2r3.z = $r3, $r2r3.hi 	#Opcode-kv4_v1-SBFUWD_registerW_registerZ_registerY_simple
	;;
	sbfuwd $r0r1r2r3.t = $r4, 536870911 	#Opcode-kv4_v1-SBFUWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfwd $r4r5.lo = $r4r5r6r7.x, $r5 	#Opcode-kv4_v1-SBFWD_registerW_registerZ_registerY_simple
	;;
	sbfwd $r4r5.hi = $r4r5r6r7.y, 536870911 	#Opcode-kv4_v1-SBFWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfwp $r6 = $r6r7.lo, $r4r5r6r7.z 	#Opcode-kv4_v1-SBFWP_registerW_registerZ_registerY_simple
	;;
	sbfwp $r7 = $r6r7.hi, 536870911.@ 	#Opcode-kv4_v1-SBFWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfw $r4r5r6r7.t = $r8, $r8r9.lo 	#Opcode-kv4_v1-SBFW_registerW_registerZ_registerY_simple
	;;
	sbfw $r8r9r10r11.x = $r9, 536870911 	#Opcode-kv4_v1-SBFW_registerW_registerZ_upper27_lower5_double
	;;
	sbfx16bo $r8r9.hi = $r8r9r10r11.y, $r10 	#Opcode-kv4_v1-SBFX16BO_registerW_registerZ_registerY_simple
	;;
	sbfx16bo $r10r11.lo = $r8r9r10r11.z, 536870911 	#Opcode-kv4_v1-SBFX16BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16d $r11 = $r10r11.hi, $r8r9r10r11.t 	#Opcode-kv4_v1-SBFX16D_registerW_registerZ_registerY_simple
	;;
	sbfx16d $r12 = $sp, 536870911.@ 	#Opcode-kv4_v1-SBFX16D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16hq $r13 = $tp, $r14 	#Opcode-kv4_v1-SBFX16HQ_registerW_registerZ_registerY_simple
	;;
	sbfx16hq $fp = $r15, 536870911 	#Opcode-kv4_v1-SBFX16HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16uwd $rp = $r16, $r16r17.lo 	#Opcode-kv4_v1-SBFX16UWD_registerW_registerZ_registerY_simple
	;;
	sbfx16uwd $r16r17r18r19.x = $r17, 536870911 	#Opcode-kv4_v1-SBFX16UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx16wd $r16r17.hi = $r16r17r18r19.y, $r18 	#Opcode-kv4_v1-SBFX16WD_registerW_registerZ_registerY_simple
	;;
	sbfx16wd $r18r19.lo = $r16r17r18r19.z, 536870911 	#Opcode-kv4_v1-SBFX16WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx16wp $r19 = $r18r19.hi, $r16r17r18r19.t 	#Opcode-kv4_v1-SBFX16WP_registerW_registerZ_registerY_simple
	;;
	sbfx16wp $r20 = $r20r21.lo, 536870911.@ 	#Opcode-kv4_v1-SBFX16WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx16w $r20r21r22r23.x = $r21, $r20r21.hi 	#Opcode-kv4_v1-SBFX16W_registerW_registerZ_registerY_simple
	;;
	sbfx16w $r20r21r22r23.y = $r22, 536870911 	#Opcode-kv4_v1-SBFX16W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2bo $r22r23.lo = $r20r21r22r23.z, $r23 	#Opcode-kv4_v1-SBFX2BO_registerW_registerZ_registerY_simple
	;;
	sbfx2bo $r22r23.hi = $r20r21r22r23.t, 536870911 	#Opcode-kv4_v1-SBFX2BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2d $r24 = $r24r25.lo, $r24r25r26r27.x 	#Opcode-kv4_v1-SBFX2D_registerW_registerZ_registerY_simple
	;;
	sbfx2d $r25 = $r24r25.hi, 536870911.@ 	#Opcode-kv4_v1-SBFX2D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2hq $r24r25r26r27.y = $r26, $r26r27.lo 	#Opcode-kv4_v1-SBFX2HQ_registerW_registerZ_registerY_simple
	;;
	sbfx2hq $r24r25r26r27.z = $r27, 536870911 	#Opcode-kv4_v1-SBFX2HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2uwd $r26r27.hi = $r24r25r26r27.t, $r28 	#Opcode-kv4_v1-SBFX2UWD_registerW_registerZ_registerY_simple
	;;
	sbfx2uwd $r28r29.lo = $r28r29r30r31.x, 536870911 	#Opcode-kv4_v1-SBFX2UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2wd $r29 = $r28r29.hi, $r28r29r30r31.y 	#Opcode-kv4_v1-SBFX2WD_registerW_registerZ_registerY_simple
	;;
	sbfx2wd $r30 = $r30r31.lo, 536870911 	#Opcode-kv4_v1-SBFX2WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx2wp $r28r29r30r31.z = $r31, $r30r31.hi 	#Opcode-kv4_v1-SBFX2WP_registerW_registerZ_registerY_simple
	;;
	sbfx2wp $r28r29r30r31.t = $r32, 536870911.@ 	#Opcode-kv4_v1-SBFX2WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx2w $r32r33.lo = $r32r33r34r35.x, $r33 	#Opcode-kv4_v1-SBFX2W_registerW_registerZ_registerY_simple
	;;
	sbfx2w $r32r33.hi = $r32r33r34r35.y, 536870911 	#Opcode-kv4_v1-SBFX2W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx32d $r34 = $r34r35.lo, $r32r33r34r35.z 	#Opcode-kv4_v1-SBFX32D_registerW_registerZ_registerY_simple
	;;
	sbfx32d $r35 = $r34r35.hi, 536870911 	#Opcode-kv4_v1-SBFX32D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx32uwd $r32r33r34r35.t = $r36, $r36r37.lo 	#Opcode-kv4_v1-SBFX32UWD_registerW_registerZ_registerY_simple
	;;
	sbfx32uwd $r36r37r38r39.x = $r37, 536870911 	#Opcode-kv4_v1-SBFX32UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx32wd $r36r37.hi = $r36r37r38r39.y, $r38 	#Opcode-kv4_v1-SBFX32WD_registerW_registerZ_registerY_simple
	;;
	sbfx32wd $r38r39.lo = $r36r37r38r39.z, 536870911 	#Opcode-kv4_v1-SBFX32WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx32w $r39 = $r38r39.hi, $r36r37r38r39.t 	#Opcode-kv4_v1-SBFX32W_registerW_registerZ_registerY_simple
	;;
	sbfx32w $r40 = $r40r41.lo, 536870911 	#Opcode-kv4_v1-SBFX32W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4bo $r40r41r42r43.x = $r41, $r40r41.hi 	#Opcode-kv4_v1-SBFX4BO_registerW_registerZ_registerY_simple
	;;
	sbfx4bo $r40r41r42r43.y = $r42, 536870911.@ 	#Opcode-kv4_v1-SBFX4BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4d $r42r43.lo = $r40r41r42r43.z, $r43 	#Opcode-kv4_v1-SBFX4D_registerW_registerZ_registerY_simple
	;;
	sbfx4d $r42r43.hi = $r40r41r42r43.t, 536870911 	#Opcode-kv4_v1-SBFX4D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4hq $r44 = $r44r45.lo, $r44r45r46r47.x 	#Opcode-kv4_v1-SBFX4HQ_registerW_registerZ_registerY_simple
	;;
	sbfx4hq $r45 = $r44r45.hi, 536870911.@ 	#Opcode-kv4_v1-SBFX4HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4uwd $r44r45r46r47.y = $r46, $r46r47.lo 	#Opcode-kv4_v1-SBFX4UWD_registerW_registerZ_registerY_simple
	;;
	sbfx4uwd $r44r45r46r47.z = $r47, 536870911 	#Opcode-kv4_v1-SBFX4UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4wd $r46r47.hi = $r44r45r46r47.t, $r48 	#Opcode-kv4_v1-SBFX4WD_registerW_registerZ_registerY_simple
	;;
	sbfx4wd $r48r49.lo = $r48r49r50r51.x, 536870911 	#Opcode-kv4_v1-SBFX4WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx4wp $r49 = $r48r49.hi, $r48r49r50r51.y 	#Opcode-kv4_v1-SBFX4WP_registerW_registerZ_registerY_simple
	;;
	sbfx4wp $r50 = $r50r51.lo, 536870911 	#Opcode-kv4_v1-SBFX4WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx4w $r48r49r50r51.z = $r51, $r50r51.hi 	#Opcode-kv4_v1-SBFX4W_registerW_registerZ_registerY_simple
	;;
	sbfx4w $r48r49r50r51.t = $r52, 536870911 	#Opcode-kv4_v1-SBFX4W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx64d $r52r53.lo = $r52r53r54r55.x, $r53 	#Opcode-kv4_v1-SBFX64D_registerW_registerZ_registerY_simple
	;;
	sbfx64d $r52r53.hi = $r52r53r54r55.y, 536870911.@ 	#Opcode-kv4_v1-SBFX64D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx64uwd $r54 = $r54r55.lo, $r52r53r54r55.z 	#Opcode-kv4_v1-SBFX64UWD_registerW_registerZ_registerY_simple
	;;
	sbfx64uwd $r55 = $r54r55.hi, 536870911 	#Opcode-kv4_v1-SBFX64UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx64wd $r52r53r54r55.t = $r56, $r56r57.lo 	#Opcode-kv4_v1-SBFX64WD_registerW_registerZ_registerY_simple
	;;
	sbfx64wd $r56r57r58r59.x = $r57, 536870911 	#Opcode-kv4_v1-SBFX64WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx64w $r56r57.hi = $r56r57r58r59.y, $r58 	#Opcode-kv4_v1-SBFX64W_registerW_registerZ_registerY_simple
	;;
	sbfx64w $r58r59.lo = $r56r57r58r59.z, 536870911 	#Opcode-kv4_v1-SBFX64W_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8bo $r59 = $r58r59.hi, $r56r57r58r59.t 	#Opcode-kv4_v1-SBFX8BO_registerW_registerZ_registerY_simple
	;;
	sbfx8bo $r60 = $r60r61.lo, 536870911 	#Opcode-kv4_v1-SBFX8BO_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8d $r60r61r62r63.x = $r61, $r60r61.hi 	#Opcode-kv4_v1-SBFX8D_registerW_registerZ_registerY_simple
	;;
	sbfx8d $r60r61r62r63.y = $r62, 536870911.@ 	#Opcode-kv4_v1-SBFX8D_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8hq $r62r63.lo = $r60r61r62r63.z, $r63 	#Opcode-kv4_v1-SBFX8HQ_registerW_registerZ_registerY_simple
	;;
	sbfx8hq $r62r63.hi = $r60r61r62r63.t, 536870911 	#Opcode-kv4_v1-SBFX8HQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8uwd $r0 = $r0r1.lo, $r0r1r2r3.x 	#Opcode-kv4_v1-SBFX8UWD_registerW_registerZ_registerY_simple
	;;
	sbfx8uwd $r1 = $r0r1.hi, 536870911 	#Opcode-kv4_v1-SBFX8UWD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8wd $r0r1r2r3.y = $r2, $r2r3.lo 	#Opcode-kv4_v1-SBFX8WD_registerW_registerZ_registerY_simple
	;;
	sbfx8wd $r0r1r2r3.z = $r3, 536870911 	#Opcode-kv4_v1-SBFX8WD_registerW_registerZ_upper27_lower5_double
	;;
	sbfx8wp $r2r3.hi = $r0r1r2r3.t, $r4 	#Opcode-kv4_v1-SBFX8WP_registerW_registerZ_registerY_simple
	;;
	sbfx8wp $r4r5.lo = $r4r5r6r7.x, 536870911.@ 	#Opcode-kv4_v1-SBFX8WP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	sbfx8w $r5 = $r4r5.hi, $r4r5r6r7.y 	#Opcode-kv4_v1-SBFX8W_registerW_registerZ_registerY_simple
	;;
	sbfx8w $r6 = $r6r7.lo, 536870911 	#Opcode-kv4_v1-SBFX8W_registerW_registerZ_upper27_lower5_double
	;;
	sbmm8 $r4r5r6r7.z = $r7, 2305843009213693951 	#Opcode-kv4_v1-SBMM8_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbmm8 $r6r7.hi = $r4r5r6r7.t, $r8 	#Opcode-kv4_v1-SBMM8_registerW_registerZ_registerY_simple
	;;
	sbmm8 $r8r9.lo = $r8r9r10r11.x, -64 	#Opcode-kv4_v1-SBMM8_registerW_registerZ_signed10_simple
	;;
	sbmm8 $r9 = $r8r9.hi, -8589934592 	#Opcode-kv4_v1-SBMM8_registerW_registerZ_upper27_lower10_double
	;;
	sbmmt8 $r8r9r10r11.y = $r10, 2305843009213693951 	#Opcode-kv4_v1-SBMMT8_registerW_registerZ_extend27_upper27_lower10_triple
	;;
	sbmmt8 $r10r11.lo = $r8r9r10r11.z, $r11 	#Opcode-kv4_v1-SBMMT8_registerW_registerZ_registerY_simple
	;;
	sbmmt8 $r10r11.hi = $r8r9r10r11.t, -64 	#Opcode-kv4_v1-SBMMT8_registerW_registerZ_signed10_simple
	;;
	sbmmt8 $r12 = $sp, -8589934592 	#Opcode-kv4_v1-SBMMT8_registerW_registerZ_upper27_lower10_double
	;;
	sb $r13[$tp] = $r14 	#Opcode-kv4_v1-SB_doscale_registerY_registerZ_registerT_simple
	;;
	sb 2305843009213693951[$fp] = $r15 	#Opcode-kv4_v1-SB_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sb.dlez $rp? -1125899906842624[$r16] = $r16r17.lo 	#Opcode-kv4_v1-SB_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sb.dgtz $r16r17r18r19.x? -8388608[$r17] = $r16r17.hi 	#Opcode-kv4_v1-SB_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sb.odd $r16r17r18r19.y? [$r18] = $r18r19.lo 	#Opcode-kv4_v1-SB_lsucond_registerY_registerZ_registerT_simple
	;;
	sb -64[$r16r17r18r19.z] = $r19 	#Opcode-kv4_v1-SB_signed10_registerZ_registerT_simple
	;;
	sb -8589934592[$r18r19.hi] = $r16r17r18r19.t 	#Opcode-kv4_v1-SB_upper27_lower10_registerZ_registerT_double
	;;
	scall $r20 	#Opcode-kv4_v1-SCALL_registerZ_simple
	;;
	scall 511 	#Opcode-kv4_v1-SCALL_sysnumber_simple
	;;
	sd.xs $r20r21.lo[$r20r21r22r23.x] = $r21 	#Opcode-kv4_v1-SD_doscale_registerY_registerZ_registerT_simple
	;;
	sd 2305843009213693951[$r20r21.hi] = $r20r21r22r23.y 	#Opcode-kv4_v1-SD_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sd.even $r22? -1125899906842624[$r22r23.lo] = $r20r21r22r23.z 	#Opcode-kv4_v1-SD_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sd.wnez $r23? -8388608[$r22r23.hi] = $r20r21r22r23.t 	#Opcode-kv4_v1-SD_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sd.weqz $r24? [$r24r25.lo] = $r24r25r26r27.x 	#Opcode-kv4_v1-SD_lsucond_registerY_registerZ_registerT_simple
	;;
	sd -64[$r25] = $r24r25.hi 	#Opcode-kv4_v1-SD_signed10_registerZ_registerT_simple
	;;
	sd -8589934592[$r24r25r26r27.y] = $r26 	#Opcode-kv4_v1-SD_upper27_lower10_registerZ_registerT_double
	;;
	set $s28 = $r26r27.lo 	#Opcode-kv4_v1-SET_systemAlone_registerZ_simple
	;;
	set $ra = $r24r25r26r27.z 	#Opcode-kv4_v1-SET_systemRA_registerZ_simple
	;;
	set $ps = $r27 	#Opcode-kv4_v1-SET_systemT3_registerZ_simple
	;;
	set $ps = $r26r27.hi 	#Opcode-kv4_v1-SET_systemT4_registerZ_simple
	;;
	sh $r24r25r26r27.t[$r28] = $r28r29.lo 	#Opcode-kv4_v1-SH_doscale_registerY_registerZ_registerT_simple
	;;
	sh 2305843009213693951[$r28r29r30r31.x] = $r29 	#Opcode-kv4_v1-SH_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sh.wltz $r28r29.hi? -1125899906842624[$r28r29r30r31.y] = $r30 	#Opcode-kv4_v1-SH_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sh.wgez $r30r31.lo? -8388608[$r28r29r30r31.z] = $r31 	#Opcode-kv4_v1-SH_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sh.wlez $r30r31.hi? [$r28r29r30r31.t] = $r32 	#Opcode-kv4_v1-SH_lsucond_registerY_registerZ_registerT_simple
	;;
	sh -64[$r32r33.lo] = $r32r33r34r35.x 	#Opcode-kv4_v1-SH_signed10_registerZ_registerT_simple
	;;
	sh -8589934592[$r33] = $r32r33.hi 	#Opcode-kv4_v1-SH_upper27_lower10_registerZ_registerT_double
	;;
	sleep 	#Opcode-kv4_v1-SLEEP_simple
	;;
	sllbos $r32r33r34r35.y = $r34, $r34r35.lo 	#Opcode-kv4_v1-SLLBOS_registerW_registerZ_registerY_simple
	;;
	sllbos $r32r33r34r35.z = $r35, 7 	#Opcode-kv4_v1-SLLBOS_registerW_registerZ_unsigned6_simple
	;;
	slld $r34r35.hi = $r32r33r34r35.t, $r36 	#Opcode-kv4_v1-SLLD_registerW_registerZ_registerY_simple
	;;
	slld $r36r37.lo = $r36r37r38r39.x, 7 	#Opcode-kv4_v1-SLLD_registerW_registerZ_unsigned6_simple
	;;
	sllhqs $r37 = $r36r37.hi, $r36r37r38r39.y 	#Opcode-kv4_v1-SLLHQS_registerW_registerZ_registerY_simple
	;;
	sllhqs $r38 = $r38r39.lo, 7 	#Opcode-kv4_v1-SLLHQS_registerW_registerZ_unsigned6_simple
	;;
	sllwps $r36r37r38r39.z = $r39, $r38r39.hi 	#Opcode-kv4_v1-SLLWPS_registerW_registerZ_registerY_simple
	;;
	sllwps $r36r37r38r39.t = $r40, 7 	#Opcode-kv4_v1-SLLWPS_registerW_registerZ_unsigned6_simple
	;;
	sllw $r40r41.lo = $r40r41r42r43.x, $r41 	#Opcode-kv4_v1-SLLW_registerW_registerZ_registerY_simple
	;;
	sllw $r40r41.hi = $r40r41r42r43.y, 7 	#Opcode-kv4_v1-SLLW_registerW_registerZ_unsigned6_simple
	;;
	slsbos $r42 = $r42r43.lo, $r40r41r42r43.z 	#Opcode-kv4_v1-SLSBOS_registerW_registerZ_registerY_simple
	;;
	slsbos $r43 = $r42r43.hi, 7 	#Opcode-kv4_v1-SLSBOS_registerW_registerZ_unsigned6_simple
	;;
	slsd $r40r41r42r43.t = $r44, $r44r45.lo 	#Opcode-kv4_v1-SLSD_registerW_registerZ_registerY_simple
	;;
	slsd $r44r45r46r47.x = $r45, 7 	#Opcode-kv4_v1-SLSD_registerW_registerZ_unsigned6_simple
	;;
	slshqs $r44r45.hi = $r44r45r46r47.y, $r46 	#Opcode-kv4_v1-SLSHQS_registerW_registerZ_registerY_simple
	;;
	slshqs $r46r47.lo = $r44r45r46r47.z, 7 	#Opcode-kv4_v1-SLSHQS_registerW_registerZ_unsigned6_simple
	;;
	slswps $r47 = $r46r47.hi, $r44r45r46r47.t 	#Opcode-kv4_v1-SLSWPS_registerW_registerZ_registerY_simple
	;;
	slswps $r48 = $r48r49.lo, 7 	#Opcode-kv4_v1-SLSWPS_registerW_registerZ_unsigned6_simple
	;;
	slsw $r48r49r50r51.x = $r49, $r48r49.hi 	#Opcode-kv4_v1-SLSW_registerW_registerZ_registerY_simple
	;;
	slsw $r48r49r50r51.y = $r50, 7 	#Opcode-kv4_v1-SLSW_registerW_registerZ_unsigned6_simple
	;;
	slusbos $r50r51.lo = $r48r49r50r51.z, $r51 	#Opcode-kv4_v1-SLUSBOS_registerW_registerZ_registerY_simple
	;;
	slusbos $r50r51.hi = $r48r49r50r51.t, 7 	#Opcode-kv4_v1-SLUSBOS_registerW_registerZ_unsigned6_simple
	;;
	slusd $r52 = $r52r53.lo, $r52r53r54r55.x 	#Opcode-kv4_v1-SLUSD_registerW_registerZ_registerY_simple
	;;
	slusd $r53 = $r52r53.hi, 7 	#Opcode-kv4_v1-SLUSD_registerW_registerZ_unsigned6_simple
	;;
	slushqs $r52r53r54r55.y = $r54, $r54r55.lo 	#Opcode-kv4_v1-SLUSHQS_registerW_registerZ_registerY_simple
	;;
	slushqs $r52r53r54r55.z = $r55, 7 	#Opcode-kv4_v1-SLUSHQS_registerW_registerZ_unsigned6_simple
	;;
	sluswps $r54r55.hi = $r52r53r54r55.t, $r56 	#Opcode-kv4_v1-SLUSWPS_registerW_registerZ_registerY_simple
	;;
	sluswps $r56r57.lo = $r56r57r58r59.x, 7 	#Opcode-kv4_v1-SLUSWPS_registerW_registerZ_unsigned6_simple
	;;
	slusw $r57 = $r56r57.hi, $r56r57r58r59.y 	#Opcode-kv4_v1-SLUSW_registerW_registerZ_registerY_simple
	;;
	slusw $r58 = $r58r59.lo, 7 	#Opcode-kv4_v1-SLUSW_registerW_registerZ_unsigned6_simple
	;;
	so.xs $r56r57r58r59.z[$r59] = $r60r61r62r63 	#Opcode-kv4_v1-SO_doscale_registerY_registerZ_registerV_simple
	;;
	so 2305843009213693951[$r58r59.hi] = $r0r1r2r3 	#Opcode-kv4_v1-SO_extend27_upper27_lower10_registerZ_registerV_triple
	;;
	so.u3 $r56r57r58r59.t? -1125899906842624[$r60] = $r4r5r6r7 	#Opcode-kv4_v1-SO_lsomask_registerY_extend27_offset27_registerZ_registerV_triple
	;;
	so.mt $r60r61.lo? -8388608[$r60r61r62r63.x] = $r8r9r10r11 	#Opcode-kv4_v1-SO_lsomask_registerY_offset27_registerZ_registerV_double
	;;
	so.mf $r61? [$r60r61.hi] = $r12r13r14r15 	#Opcode-kv4_v1-SO_lsomask_registerY_registerZ_registerV_simple
	;;
	so.wgtz $r60r61r62r63.y? -1125899906842624[$r62] = $r16r17r18r19 	#Opcode-kv4_v1-SO_lsucond_registerY_extend27_offset27_registerZ_registerV_triple
	;;
	so.dnez $r62r63.lo? -8388608[$r60r61r62r63.z] = $r20r21r22r23 	#Opcode-kv4_v1-SO_lsucond_registerY_offset27_registerZ_registerV_double
	;;
	so.deqz $r63? [$r62r63.hi] = $r24r25r26r27 	#Opcode-kv4_v1-SO_lsucond_registerY_registerZ_registerV_simple
	;;
	so -64[$r60r61r62r63.t] = $r28r29r30r31 	#Opcode-kv4_v1-SO_signed10_registerZ_registerV_simple
	;;
	so -8589934592[$r0] = $r32r33r34r35 	#Opcode-kv4_v1-SO_upper27_lower10_registerZ_registerV_double
	;;
	sq $r0r1.lo[$r0r1r2r3.x] = $r16r17 	#Opcode-kv4_v1-SQ_doscale_registerY_registerZ_registerU_simple
	;;
	sq 2305843009213693951[$r1] = $r16r17r18r19.lo 	#Opcode-kv4_v1-SQ_extend27_upper27_lower10_registerZ_registerU_triple
	;;
	sq.dltz $r0r1.hi? -1125899906842624[$r0r1r2r3.y] = $r18r19 	#Opcode-kv4_v1-SQ_lsucond_registerY_extend27_offset27_registerZ_registerU_triple
	;;
	sq.dgez $r2? -8388608[$r2r3.lo] = $r16r17r18r19.hi 	#Opcode-kv4_v1-SQ_lsucond_registerY_offset27_registerZ_registerU_double
	;;
	sq.dlez $r0r1r2r3.z? [$r3] = $r20r21 	#Opcode-kv4_v1-SQ_lsucond_registerY_registerZ_registerU_simple
	;;
	sq -64[$r2r3.hi] = $r20r21r22r23.lo 	#Opcode-kv4_v1-SQ_signed10_registerZ_registerU_simple
	;;
	sq -8589934592[$r0r1r2r3.t] = $r22r23 	#Opcode-kv4_v1-SQ_upper27_lower10_registerZ_registerU_double
	;;
	srabos $r4 = $r4r5.lo, $r4r5r6r7.x 	#Opcode-kv4_v1-SRABOS_registerW_registerZ_registerY_simple
	;;
	srabos $r5 = $r4r5.hi, 7 	#Opcode-kv4_v1-SRABOS_registerW_registerZ_unsigned6_simple
	;;
	srad $r4r5r6r7.y = $r6, $r6r7.lo 	#Opcode-kv4_v1-SRAD_registerW_registerZ_registerY_simple
	;;
	srad $r4r5r6r7.z = $r7, 7 	#Opcode-kv4_v1-SRAD_registerW_registerZ_unsigned6_simple
	;;
	srahqs $r6r7.hi = $r4r5r6r7.t, $r8 	#Opcode-kv4_v1-SRAHQS_registerW_registerZ_registerY_simple
	;;
	srahqs $r8r9.lo = $r8r9r10r11.x, 7 	#Opcode-kv4_v1-SRAHQS_registerW_registerZ_unsigned6_simple
	;;
	srawps $r9 = $r8r9.hi, $r8r9r10r11.y 	#Opcode-kv4_v1-SRAWPS_registerW_registerZ_registerY_simple
	;;
	srawps $r10 = $r10r11.lo, 7 	#Opcode-kv4_v1-SRAWPS_registerW_registerZ_unsigned6_simple
	;;
	sraw $r8r9r10r11.z = $r11, $r10r11.hi 	#Opcode-kv4_v1-SRAW_registerW_registerZ_registerY_simple
	;;
	sraw $r8r9r10r11.t = $r12, 7 	#Opcode-kv4_v1-SRAW_registerW_registerZ_unsigned6_simple
	;;
	srlbos $sp = $r13, $tp 	#Opcode-kv4_v1-SRLBOS_registerW_registerZ_registerY_simple
	;;
	srlbos $r14 = $fp, 7 	#Opcode-kv4_v1-SRLBOS_registerW_registerZ_unsigned6_simple
	;;
	srld $r15 = $rp, $r16 	#Opcode-kv4_v1-SRLD_registerW_registerZ_registerY_simple
	;;
	srld $r16r17.lo = $r16r17r18r19.x, 7 	#Opcode-kv4_v1-SRLD_registerW_registerZ_unsigned6_simple
	;;
	srlhqs $r17 = $r16r17.hi, $r16r17r18r19.y 	#Opcode-kv4_v1-SRLHQS_registerW_registerZ_registerY_simple
	;;
	srlhqs $r18 = $r18r19.lo, 7 	#Opcode-kv4_v1-SRLHQS_registerW_registerZ_unsigned6_simple
	;;
	srlwps $r16r17r18r19.z = $r19, $r18r19.hi 	#Opcode-kv4_v1-SRLWPS_registerW_registerZ_registerY_simple
	;;
	srlwps $r16r17r18r19.t = $r20, 7 	#Opcode-kv4_v1-SRLWPS_registerW_registerZ_unsigned6_simple
	;;
	srlw $r20r21.lo = $r20r21r22r23.x, $r21 	#Opcode-kv4_v1-SRLW_registerW_registerZ_registerY_simple
	;;
	srlw $r20r21.hi = $r20r21r22r23.y, 7 	#Opcode-kv4_v1-SRLW_registerW_registerZ_unsigned6_simple
	;;
	srsbos $r22 = $r22r23.lo, $r20r21r22r23.z 	#Opcode-kv4_v1-SRSBOS_registerW_registerZ_registerY_simple
	;;
	srsbos $r23 = $r22r23.hi, 7 	#Opcode-kv4_v1-SRSBOS_registerW_registerZ_unsigned6_simple
	;;
	srsd $r20r21r22r23.t = $r24, $r24r25.lo 	#Opcode-kv4_v1-SRSD_registerW_registerZ_registerY_simple
	;;
	srsd $r24r25r26r27.x = $r25, 7 	#Opcode-kv4_v1-SRSD_registerW_registerZ_unsigned6_simple
	;;
	srshqs $r24r25.hi = $r24r25r26r27.y, $r26 	#Opcode-kv4_v1-SRSHQS_registerW_registerZ_registerY_simple
	;;
	srshqs $r26r27.lo = $r24r25r26r27.z, 7 	#Opcode-kv4_v1-SRSHQS_registerW_registerZ_unsigned6_simple
	;;
	srswps $r27 = $r26r27.hi, $r24r25r26r27.t 	#Opcode-kv4_v1-SRSWPS_registerW_registerZ_registerY_simple
	;;
	srswps $r28 = $r28r29.lo, 7 	#Opcode-kv4_v1-SRSWPS_registerW_registerZ_unsigned6_simple
	;;
	srsw $r28r29r30r31.x = $r29, $r28r29.hi 	#Opcode-kv4_v1-SRSW_registerW_registerZ_registerY_simple
	;;
	srsw $r28r29r30r31.y = $r30, 7 	#Opcode-kv4_v1-SRSW_registerW_registerZ_unsigned6_simple
	;;
	stop 	#Opcode-kv4_v1-STOP_simple
	;;
	stsud $r30r31.lo = $r28r29r30r31.z, $r31 	#Opcode-kv4_v1-STSUD_registerW_registerZ_registerY_simple
	;;
	stsud $r30r31.hi = $r28r29r30r31.t, 536870911 	#Opcode-kv4_v1-STSUD_registerW_registerZ_upper27_lower5_splat32_double
	;;
	stsuhq $r32 = $r32r33.lo, $r32r33r34r35.x 	#Opcode-kv4_v1-STSUHQ_registerW_registerZ_registerY_simple
	;;
	stsuhq $r33 = $r32r33.hi, 536870911.@ 	#Opcode-kv4_v1-STSUHQ_registerW_registerZ_upper27_lower5_splat32_double
	;;
	stsuwp $r32r33r34r35.y = $r34, $r34r35.lo 	#Opcode-kv4_v1-STSUWP_registerW_registerZ_registerY_simple
	;;
	stsuwp $r32r33r34r35.z = $r35, 536870911 	#Opcode-kv4_v1-STSUWP_registerW_registerZ_upper27_lower5_splat32_double
	;;
	stsuw $r34r35.hi = $r32r33r34r35.t, $r36 	#Opcode-kv4_v1-STSUW_registerW_registerZ_registerY_simple
	;;
	stsuw $r36r37.lo = $r36r37r38r39.x, 536870911 	#Opcode-kv4_v1-STSUW_registerW_registerZ_upper27_lower5_double
	;;
	sw.xs $r37[$r36r37.hi] = $r36r37r38r39.y 	#Opcode-kv4_v1-SW_doscale_registerY_registerZ_registerT_simple
	;;
	sw 2305843009213693951[$r38] = $r38r39.lo 	#Opcode-kv4_v1-SW_extend27_upper27_lower10_registerZ_registerT_triple
	;;
	sw.dgtz $r36r37r38r39.z? -1125899906842624[$r39] = $r38r39.hi 	#Opcode-kv4_v1-SW_lsucond_registerY_extend27_offset27_registerZ_registerT_triple
	;;
	sw.odd $r36r37r38r39.t? -8388608[$r40] = $r40r41.lo 	#Opcode-kv4_v1-SW_lsucond_registerY_offset27_registerZ_registerT_double
	;;
	sw.even $r40r41r42r43.x? [$r41] = $r40r41.hi 	#Opcode-kv4_v1-SW_lsucond_registerY_registerZ_registerT_simple
	;;
	sw -64[$r40r41r42r43.y] = $r42 	#Opcode-kv4_v1-SW_signed10_registerZ_registerT_simple
	;;
	sw -8589934592[$r42r43.lo] = $r40r41r42r43.z 	#Opcode-kv4_v1-SW_upper27_lower10_registerZ_registerT_double
	;;
	sxbd $r43 = $r42r43.hi 	#Opcode-kv4_v1-SXBD_registerW_registerZ_simple
	;;
	sxhd $r40r41r42r43.t = $r44 	#Opcode-kv4_v1-SXHD_registerW_registerZ_simple
	;;
	sxlbhq $r44r45.lo = $r44r45r46r47.x 	#Opcode-kv4_v1-SXLBHQ_registerW_registerZ_simple
	;;
	sxlhwp $r45 = $r44r45.hi 	#Opcode-kv4_v1-SXLHWP_registerW_registerZ_simple
	;;
	sxmbhq $r44r45r46r47.y = $r46 	#Opcode-kv4_v1-SXMBHQ_registerW_registerZ_simple
	;;
	sxmhwp $r46r47.lo = $r44r45r46r47.z 	#Opcode-kv4_v1-SXMHWP_registerW_registerZ_simple
	;;
	sxwd $r47 = $r46r47.hi 	#Opcode-kv4_v1-SXWD_registerW_registerZ_simple
	;;
	syncgroup $r44r45r46r47.t 	#Opcode-kv4_v1-SYNCGROUP_registerZ_simple
	;;
	tlbdinval 	#Opcode-kv4_v1-TLBDINVAL_simple
	;;
	tlbiinval 	#Opcode-kv4_v1-TLBIINVAL_simple
	;;
	tlbprobe 	#Opcode-kv4_v1-TLBPROBE_simple
	;;
	tlbread 	#Opcode-kv4_v1-TLBREAD_simple
	;;
	tlbwrite 	#Opcode-kv4_v1-TLBWRITE_simple
	;;
	waitit $r48 	#Opcode-kv4_v1-WAITIT_registerZ_simple
	;;
	wfxl $ps, $r48r49.lo 	#Opcode-kv4_v1-WFXL_systemAlone_registerZ_simple
	;;
	wfxl $pcr, $r48r49r50r51.x 	#Opcode-kv4_v1-WFXL_systemT2_registerZ_simple
	;;
	wfxl $s1, $r49 	#Opcode-kv4_v1-WFXL_systemT4_registerZ_simple
	;;
	wfxm $s1, $r48r49.hi 	#Opcode-kv4_v1-WFXM_systemAlone_registerZ_simple
	;;
	wfxm $s2, $r48r49r50r51.y 	#Opcode-kv4_v1-WFXM_systemT2_registerZ_simple
	;;
	wfxm $pcr, $r50 	#Opcode-kv4_v1-WFXM_systemT4_registerZ_simple
	;;
	xaccesso $r36r37r38r39 = $a0..a1, $r50r51.lo 	#Opcode-kv4_v1-XACCESSO_registerN_registerCg_registerZ_simple
	;;
	xaccesso $r40r41r42r43 = $a0..a3, $r48r49r50r51.z 	#Opcode-kv4_v1-XACCESSO_registerN_registerCh_registerZ_simple
	;;
	xaccesso $r44r45r46r47 = $a0..a7, $r51 	#Opcode-kv4_v1-XACCESSO_registerN_registerCi_registerZ_simple
	;;
	xaccesso $r48r49r50r51 = $a0..a15, $r50r51.hi 	#Opcode-kv4_v1-XACCESSO_registerN_registerCj_registerZ_simple
	;;
	xaccesso $r52r53r54r55 = $a0..a31, $r48r49r50r51.t 	#Opcode-kv4_v1-XACCESSO_registerN_registerCk_registerZ_simple
	;;
	xaccesso $r56r57r58r59 = $a0..a63, $r52 	#Opcode-kv4_v1-XACCESSO_registerN_registerCl_registerZ_simple
	;;
	xaligno $a0 = $a2..a3, $r52r53.lo 	#Opcode-kv4_v1-XALIGNO_registerA_registerCg_registerZ_simple
	;;
	xaligno $a0a1.lo = $a4..a7, $r52r53r54r55.x 	#Opcode-kv4_v1-XALIGNO_registerA_registerCh_registerZ_simple
	;;
	xaligno $a0a1a2a3.x = $a8..a15, $r53 	#Opcode-kv4_v1-XALIGNO_registerA_registerCi_registerZ_simple
	;;
	xaligno $a1 = $a16..a31, $r52r53.hi 	#Opcode-kv4_v1-XALIGNO_registerA_registerCj_registerZ_simple
	;;
	xaligno $a0a1.hi = $a32..a63, $r52r53r54r55.y 	#Opcode-kv4_v1-XALIGNO_registerA_registerCk_registerZ_simple
	;;
	xaligno $a0a1a2a3.y = $a0..a63, $r54 	#Opcode-kv4_v1-XALIGNO_registerA_registerCl_registerZ_simple
	;;
	xandno $a2 = $a2a3.lo, $a0a1a2a3.z 	#Opcode-kv4_v1-XANDNO_registerA_registerB_registerC_simple
	;;
	xando $a3 = $a2a3.hi, $a0a1a2a3.t 	#Opcode-kv4_v1-XANDO_registerA_registerB_registerC_simple
	;;
	xclampwo $a4 = $a4a5.lo, $a4a5a6a7.x 	#Opcode-kv4_v1-XCLAMPWO_registerA_registerC_registerD_simple
	;;
	xcopyo $a5 = $a4a5.hi 	#Opcode-kv4_v1-XCOPYO_registerA_registerC_simple
	;;
	xcopyv $a0a1a2a3 = $a4a5a6a7 	#Opcode-kv4_v1-XCOPYV_shuffleV_registerAq_registerCq_simple
	;;
	xcopyx $a0a1 = $a0a1a2a3.lo 	#Opcode-kv4_v1-XCOPYX_shuffleX_registerAp_registerCp_simple
	;;
	xeoro $a4a5a6a7.y = $a6, $a6a7.lo 	#Opcode-kv4_v1-XEORO_registerA_registerB_registerC_simple
	;;
	xffma44hw.rz $a2a3 = $a4a5a6a7.z, $a7 	#Opcode-kv4_v1-XFFMA44HW_rounding_silent_registerAp_registerC_registerD_simple
	;;
	xfmaxhx $a6a7.hi = $a4a5a6a7.t, $a8 	#Opcode-kv4_v1-XFMAXHX_registerA_registerC_registerD_simple
	;;
	xfminhx $a8a9.lo = $a8a9a10a11.x, $a9 	#Opcode-kv4_v1-XFMINHX_registerA_registerC_registerD_simple
	;;
	xfmma484hw.rna.s $a0a1a2a3.hi = $a4a5, $a4a5a6a7.lo 	#Opcode-kv4_v1-XFMMA484HW_rounding_silent_registerAp_registerCp_registerDp_simple
	;;
	xfnarrow44wh.rnz $a8a9.hi = $a6a7 	#Opcode-kv4_v1-XFNARROW44WH_rounding_silent_registerA_registerCp_simple
	;;
	xfscalewo.ro.s $a8a9a10a11.y = $a10, $r54r55.lo 	#Opcode-kv4_v1-XFSCALEWO_rounding_silent_registerA_registerC_registerZ_simple
	;;
	xiorno $a10a11.lo = $a8a9a10a11.z, $a11 	#Opcode-kv4_v1-XIORNO_registerA_registerB_registerC_simple
	;;
	xioro $a10a11.hi = $a8a9a10a11.t, $a12 	#Opcode-kv4_v1-XIORO_registerA_registerB_registerC_simple
	;;
	xlo.u.q0 $a8a9a10a11 = $r52r53r54r55.z[$r55] 	#Opcode-kv4_v1-XLO_variant_doscale_qindex_registerAq_registerY_registerZ_simple
	;;
	xlo.us.xs $a12a13.lo = $r54r55.hi[$r52r53r54r55.t] 	#Opcode-kv4_v1-XLO_variant_doscale_registerA_registerY_registerZ_simple
	;;
	xlo.dnez.q1 $r56? $a12a13a14a15 = -1125899906842624[$r56r57.lo] 	#Opcode-kv4_v1-XLO_variant_lsumask_qindex_registerY_registerAq_extend27_offset27_registerZ_triple
	;;
	xlo.s.deqz.q2 $r56r57r58r59.x? $a16a17a18a19 = -8388608[$r57] 	#Opcode-kv4_v1-XLO_variant_lsumask_qindex_registerY_registerAq_offset27_registerZ_double
	;;
	xlo.u.wnez.q3 $r56r57.hi? $a20a21a22a23 = [$r56r57r58r59.y] 	#Opcode-kv4_v1-XLO_variant_lsumask_qindex_registerY_registerAq_registerZ_simple
	;;
	xlo.us.weqz $r58? $a12a13a14a15.x = -1125899906842624[$r58r59.lo] 	#Opcode-kv4_v1-XLO_variant_lsumask_registerY_registerA_extend27_offset27_registerZ_triple
	;;
	xlo.mt $r56r57r58r59.z? $a13 = -8388608[$r59] 	#Opcode-kv4_v1-XLO_variant_lsumask_registerY_registerA_offset27_registerZ_double
	;;
	xlo.s.mf $r58r59.hi? $a12a13.hi = [$r56r57r58r59.t] 	#Opcode-kv4_v1-XLO_variant_lsumask_registerY_registerA_registerZ_simple
	;;
	xlo.u $a4..a5, $r60 = -1125899906842624[$r60r61.lo] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAg_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.us.q $a6..a7, $r60r61r62r63.x = -8388608[$r61] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAg_registerY_offset27_registerZ_double
	;;
	xlo.d $a8..a9, $r60r61.hi = [$r60r61r62r63.y] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAg_registerY_registerZ_simple
	;;
	xlo.s.w $a8..a11, $r62 = -1125899906842624[$r62r63.lo] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAh_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.u.h $a12..a15, $r60r61r62r63.z = -8388608[$r63] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAh_registerY_offset27_registerZ_double
	;;
	xlo.us.b $a16..a19, $r62r63.hi = [$r60r61r62r63.t] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAh_registerY_registerZ_simple
	;;
	xlo $a16..a23, $r0 = -1125899906842624[$r0r1.lo] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAi_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.s.q $a24..a31, $r0r1r2r3.x = -8388608[$r1] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAi_registerY_offset27_registerZ_double
	;;
	xlo.u.d $a32..a39, $r0r1.hi = [$r0r1r2r3.y] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAi_registerY_registerZ_simple
	;;
	xlo.us.w $a32..a47, $r2 = -1125899906842624[$r2r3.lo] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAj_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.h $a48..a63, $r0r1r2r3.z = -8388608[$r3] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAj_registerY_offset27_registerZ_double
	;;
	xlo.s.b $a0..a15, $r2r3.hi = [$r0r1r2r3.t] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAj_registerY_registerZ_simple
	;;
	xlo.u $a0..a31, $r4 = -1125899906842624[$r4r5.lo] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAk_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.us.q $a32..a63, $r4r5r6r7.x = -8388608[$r5] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAk_registerY_offset27_registerZ_double
	;;
	xlo.d $a0..a31, $r4r5.hi = [$r4r5r6r7.y] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAk_registerY_registerZ_simple
	;;
	xlo.s.w $a0..a63, $r6 = -1125899906842624[$r6r7.lo] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAl_registerY_extend27_offset27_registerZ_triple
	;;
	xlo.u.h $a0..a63, $r4r5r6r7.z = -8388608[$r7] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAl_registerY_offset27_registerZ_double
	;;
	xlo.us.b $a0..a63, $r6r7.hi = [$r4r5r6r7.t] 	#Opcode-kv4_v1-XLO_variant_lsupack_registerAl_registerY_registerZ_simple
	;;
	xlo.q0 $a24a25a26a27 = 2305843009213693951[$r8] 	#Opcode-kv4_v1-XLO_variant_qindex_registerAq_extend27_upper27_lower10_registerZ_triple
	;;
	xlo.s.q1 $a28a29a30a31 = -64[$r8r9.lo] 	#Opcode-kv4_v1-XLO_variant_qindex_registerAq_signed10_registerZ_simple
	;;
	xlo.u.q2 $a32a33a34a35 = -8589934592[$r8r9r10r11.x] 	#Opcode-kv4_v1-XLO_variant_qindex_registerAq_upper27_lower10_registerZ_double
	;;
	xlo.us $a12a13a14a15.y = 2305843009213693951[$r9] 	#Opcode-kv4_v1-XLO_variant_registerA_extend27_upper27_lower10_registerZ_triple
	;;
	xlo $a14 = -64[$r8r9.hi] 	#Opcode-kv4_v1-XLO_variant_registerA_signed10_registerZ_simple
	;;
	xlo.s $a14a15.lo = -8589934592[$r8r9r10r11.y] 	#Opcode-kv4_v1-XLO_variant_registerA_upper27_lower10_registerZ_double
	;;
	xmadd44bw0 $a4a5a6a7.hi = $a12a13a14a15.z, $a15 	#Opcode-kv4_v1-XMADD44BW0_registerAp_registerC_registerD_simple
	;;
	xmadd44bw1 $a8a9 = $a14a15.hi, $a12a13a14a15.t 	#Opcode-kv4_v1-XMADD44BW1_registerAp_registerC_registerD_simple
	;;
	xmaddifwo $a16 = $a16a17.lo, $a16a17a18a19.x 	#Opcode-kv4_v1-XMADDIFWO_rounding_silent_registerA_registerC_registerD_simple
	;;
	xmaddsu44bw0 $a8a9a10a11.lo = $a17, $a16a17.hi 	#Opcode-kv4_v1-XMADDSU44BW0_registerAp_registerC_registerD_simple
	;;
	xmaddsu44bw1 $a10a11 = $a16a17a18a19.y, $a18 	#Opcode-kv4_v1-XMADDSU44BW1_registerAp_registerC_registerD_simple
	;;
	xmaddu44bw0 $a8a9a10a11.hi = $a18a19.lo, $a16a17a18a19.z 	#Opcode-kv4_v1-XMADDU44BW0_registerAp_registerC_registerD_simple
	;;
	xmaddu44bw1 $a12a13 = $a19, $a18a19.hi 	#Opcode-kv4_v1-XMADDU44BW1_registerAp_registerC_registerD_simple
	;;
	xmma4164bw $a12a13a14a15.lo = $a14a15, $a12a13a14a15.hi 	#Opcode-kv4_v1-XMMA4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmma484bw $a16a17 = $a16a17a18a19.t, $a20 	#Opcode-kv4_v1-XMMA484BW_registerAp_registerC_registerD_simple
	;;
	xmmasu4164bw $a16a17a18a19.lo = $a18a19, $a16a17a18a19.hi 	#Opcode-kv4_v1-XMMASU4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmmasu484bw $a20a21 = $a20a21.lo, $a20a21a22a23.x 	#Opcode-kv4_v1-XMMASU484BW_registerAp_registerC_registerD_simple
	;;
	xmmau4164bw $a20a21a22a23.lo = $a22a23, $a20a21a22a23.hi 	#Opcode-kv4_v1-XMMAU4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmmau484bw $a24a25 = $a21, $a20a21.hi 	#Opcode-kv4_v1-XMMAU484BW_registerAp_registerC_registerD_simple
	;;
	xmmaus4164bw $a24a25a26a27.lo = $a26a27, $a24a25a26a27.hi 	#Opcode-kv4_v1-XMMAUS4164BW_registerAp_registerCp_registerDp_simple
	;;
	xmmaus484bw $a28a29 = $a20a21a22a23.y, $a22 	#Opcode-kv4_v1-XMMAUS484BW_registerAp_registerC_registerD_simple
	;;
	xmovefd $r10 = $a0_x 	#Opcode-kv4_v1-XMOVEFD_registerW_registerCc_qselectC_simple
	;;
	xmovefo $r60r61r62r63 = $a22a23.lo 	#Opcode-kv4_v1-XMOVEFO_registerN_registerC_simple
	;;
	xmovefq $r20r21r22r23.hi = $a0_lo 	#Opcode-kv4_v1-XMOVEFQ_registerM_registerCb_hselectC_simple
	;;
	xmovetd $a0_t = $r10r11.lo 	#Opcode-kv4_v1-XMOVETD_registerAt_registerZ_simple
	;;
	xmovetd $a0_x = $r8r9r10r11.z 	#Opcode-kv4_v1-XMOVETD_registerAx_registerZ_simple
	;;
	xmovetd $a0_y = $r11 	#Opcode-kv4_v1-XMOVETD_registerAy_registerZ_simple
	;;
	xmovetd $a0_z = $r10r11.hi 	#Opcode-kv4_v1-XMOVETD_registerAz_registerZ_simple
	;;
	xmovetq $a0_lo = $r8r9r10r11.t, $r12 	#Opcode-kv4_v1-XMOVETQ_registerAE_registerZ_registerY_simple
	;;
	xmovetq $a0_hi = $sp, $r13 	#Opcode-kv4_v1-XMOVETQ_registerAO_registerZ_registerY_simple
	;;
	xmsbfifwo.rn.s $a20a21a22a23.z = $a23, $a22a23.hi 	#Opcode-kv4_v1-XMSBFIFWO_rounding_silent_registerA_registerC_registerD_simple
	;;
	xmt44d $a36a37a38a39 = $a40a41a42a43 	#Opcode-kv4_v1-XMT44D_registerAq_registerCq_simple
	;;
	xnando $a20a21a22a23.t = $a24, $a24a25.lo 	#Opcode-kv4_v1-XNANDO_registerA_registerB_registerC_simple
	;;
	xneoro $a24a25a26a27.x = $a25, $a24a25.hi 	#Opcode-kv4_v1-XNEORO_registerA_registerB_registerC_simple
	;;
	xnioro $a24a25a26a27.y = $a26, $a26a27.lo 	#Opcode-kv4_v1-XNIORO_registerA_registerB_registerC_simple
	;;
	xnoro $a24a25a26a27.z = $a27, $a26a27.hi 	#Opcode-kv4_v1-XNORO_registerA_registerB_registerC_simple
	;;
	xorno $a24a25a26a27.t = $a28, $a28a29.lo 	#Opcode-kv4_v1-XORNO_registerA_registerB_registerC_simple
	;;
	xrecvo.f $a28a29a30a31.x 	#Opcode-kv4_v1-XRECVO_rchannel_registerA_simple
	;;
	xsbmm8dq $a29 = $a28a29.hi, $a28a29a30a31.y 	#Opcode-kv4_v1-XSBMM8DQ_registerA_registerB_registerC_simple
	;;
	xsbmmt8dq $a30 = $a30a31.lo, $a28a29a30a31.z 	#Opcode-kv4_v1-XSBMMT8DQ_registerA_registerB_registerC_simple
	;;
	xsendo.b $a31 	#Opcode-kv4_v1-XSENDO_schannel_registerC_simple
	;;
	xsendrecvo.f.b $a30a31.hi, $a28a29a30a31.t 	#Opcode-kv4_v1-XSENDRECVO_schannel_rchannel_registerC_registerA_simple
	;;
	xso $tp[$r14] = $a32 	#Opcode-kv4_v1-XSO_doscale_registerY_registerZ_registerE_simple
	;;
	xso 2305843009213693951[$fp] = $a32a33.lo 	#Opcode-kv4_v1-XSO_extend27_upper27_lower10_registerZ_registerE_triple
	;;
	xso.mtc $r15? -1125899906842624[$rp] = $a32a33a34a35.x 	#Opcode-kv4_v1-XSO_lsumask_registerY_extend27_offset27_registerZ_registerE_triple
	;;
	xso.mfc $r16? -8388608[$r16r17.lo] = $a33 	#Opcode-kv4_v1-XSO_lsumask_registerY_offset27_registerZ_registerE_double
	;;
	xso.dnez $r16r17r18r19.x? [$r17] = $a32a33.hi 	#Opcode-kv4_v1-XSO_lsumask_registerY_registerZ_registerE_simple
	;;
	xso -64[$r16r17.hi] = $a32a33a34a35.y 	#Opcode-kv4_v1-XSO_signed10_registerZ_registerE_simple
	;;
	xso -8589934592[$r16r17r18r19.y] = $a34 	#Opcode-kv4_v1-XSO_upper27_lower10_registerZ_registerE_double
	;;
	xsplatdo $a34a35.lo = 2305843009213693951 	#Opcode-kv4_v1-XSPLATDO_registerA_extend27_upper27_lower10_triple
	;;
	xsplatdo $a32a33a34a35.z = -549755813888 	#Opcode-kv4_v1-XSPLATDO_registerA_extend6_upper27_lower10_double
	;;
	xsplatdo $a35 = -4096 	#Opcode-kv4_v1-XSPLATDO_registerA_signed16_simple
	;;
	xsplatov.td $a44a45a46a47 = $a34a35.hi 	#Opcode-kv4_v1-XSPLATOV_shuffleV_registerAq_registerC_simple
	;;
	xsplatox.zd $a28a29a30a31.lo = $a32a33a34a35.t 	#Opcode-kv4_v1-XSPLATOX_shuffleX_registerAp_registerC_simple
	;;
	xsx48bw $a48a49a50a51 = $a36 	#Opcode-kv4_v1-XSX48BW_registerAq_registerC_simple
	;;
	xtrunc48wb $a36a37.lo = $a52a53a54a55 	#Opcode-kv4_v1-XTRUNC48WB_registerA_registerCq_simple
	;;
	xzx48bw $a56a57a58a59 = $a36a37a38a39.x 	#Opcode-kv4_v1-XZX48BW_registerAq_registerC_simple
	;;
	zxbd $r18 = $r18r19.lo 	#Opcode-kv4_v1-ZXBD_registerW_registerZ_simple
	;;
	zxhd $r16r17r18r19.z = $r19 	#Opcode-kv4_v1-ZXHD_registerW_registerZ_simple
	;;
	zxlbhq $r18r19.hi = $r16r17r18r19.t 	#Opcode-kv4_v1-ZXLBHQ_registerW_registerZ_simple
	;;
	zxlhwp $r20 = $r20r21.lo 	#Opcode-kv4_v1-ZXLHWP_registerW_registerZ_simple
	;;
	zxmbhq $r20r21r22r23.x = $r21 	#Opcode-kv4_v1-ZXMBHQ_registerW_registerZ_simple
	;;
	zxmhwp $r20r21.hi = $r20r21r22r23.y 	#Opcode-kv4_v1-ZXMHWP_registerW_registerZ_simple
	;;
	zxwd $r22 = $r22r23.lo 	#Opcode-kv4_v1-ZXWD_registerW_registerZ_simple
	;;
	.endp	main
	.section .text
