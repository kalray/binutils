/* KVX assembler/disassembler support.

   Copyright (C) 2009-2023 Free Software Foundation, Inc.
   Contributed by Kalray SA.

   This file is part of GNU Binutils.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the license, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; see the file COPYING3. If not,
   see <http://www.gnu.org/licenses/>.  */


#ifndef OPCODE_KVX_H
#define OPCODE_KVX_H

#define KVX_NUMCORES 3
#define KVX_MAXSYLLABLES 3
#define KVX_MAXOPERANDS 7
#define KVX_MAXBUNDLEISSUE 8
#define KVX_MAXBUNDLEWORDS 16


/*
 * The following macros are provided for compatibility with old
 * code.  They should not be used in new code.
 */


/***********************************************/
/*       DATA TYPES                            */
/***********************************************/

/*  Operand definition -- used in building     */
/*  format table                               */

enum kvx_rel {
  /* Absolute relocation. */
  KVX_REL_ABS,
  /* PC relative relocation. */
  KVX_REL_PC,
  /* GP relative relocation. */
  KVX_REL_GP,
  /* TP relative relocation. */
  KVX_REL_TP,
  /* GOT relative relocation. */
  KVX_REL_GOT,
  /* BASE load address relative relocation. */
  KVX_REL_BASE,
};

struct kvx_reloc {
  /* Size in bits. */
  int bitsize;
  /* Type of relative relocation. */
  enum kvx_rel relative;
  /* Number of BFD relocations. */
  int reloc_nb;
  /* List of BFD relocations. */
  unsigned int relocs[];
};

struct kvx_bitfield {
  /* Number of bits.  */
  int size;
  /* Offset in abstract value.  */
  int from_offset;
  /* Offset in encoded value.  */
  int to_offset;
};

struct kvx_operand {
  /* Operand type name.  */
  const char *tname;
  /* Type of operand.  */
  int type;
  /* Width of the operand. */
  int width;
  /* Encoded value shift. */
  int shift;
  /* Encoded value bias.  */
  int bias;
  /* Can be SIGNED|CANEXTEND|BITMASK|WRAPPED.  */
  int flags;
  /* Number of registers.  */
  int reg_nb;
  /* Valid registers for this operand (if no register get null pointer).  */
  int *regs;
  /* Number of relocations.  */
  int reloc_nb;
  /* List of relocations that can be applied to this operand.  */
  struct kvx_reloc **relocs;
  /* Number of given bitfields.  */
  int bitfields;
  /* Bitfields in most to least significant order.  */
  struct kvx_bitfield bfield[];
};

struct kvx_pseudo_relocs
{
  enum
  {
    S32_LO5_UP27,
    S37_LO10_UP27,
    S43_LO10_UP27_EX6,
    S64_LO10_UP27_EX27,
    S16,
    S32,
    S64,
  } reloc_type;

  int bitsize;

  /* Used when pseudo func should expand to different relocations
     based on the 32/64 bits mode.
     Enum values should match the kvx_arch_size var set by -m32
   */
  enum
  {
    PSEUDO_ALL = 0,
    PSEUDO_32_ONLY = 32,
    PSEUDO_64_ONLY = 64,
  } avail_modes;

  /* set to 1 when pseudo func does not take an argument */
  int has_no_arg;

  bfd_reloc_code_real_type reloc_lo5, reloc_lo10, reloc_up27, reloc_ex;
  bfd_reloc_code_real_type single;
  struct kvx_reloc *kreloc;
};

typedef struct symbol symbolS;

struct pseudo_func
{
  const char *name;

  symbolS *sym;
  struct kvx_pseudo_relocs pseudo_relocs;
};

/* some flags for kvx_operand                                 */
/* kvxSIGNED    : is this operand treated as signed ?         */
/* kvxCANEXTEND : can this operand have an extension          */
/* kvxBITMASK   : this operand is a bit mask */
/* kvxWRAPPED   : this operand can accept signed and unsigned integer ranges */


#define kvxSIGNED    1
#define kvxCANEXTEND 2
#define kvxBITMASK   4
#define kvxWRAPPED   8

#define kvxOPCODE_FLAG_UNDEF 0

#define kvxOPCODE_FLAG_IMMX0 1
#define kvxOPCODE_FLAG_IMMX1 2
#define kvxOPCODE_FLAG_BCU 4
#define kvxOPCODE_FLAG_ALU 8
#define kvxOPCODE_FLAG_LSU 16
#define kvxOPCODE_FLAG_MAU 32
#define kvxOPCODE_FLAG_MODE64 64
#define kvxOPCODE_FLAG_MODE32 128
/* Opcode definition.  */

struct kvx_codeword {
  /* The opcode.  */
  unsigned opcode;
  /* Disassembly mask.  */
  unsigned mask;
  /* Target dependent flags.  */
  unsigned flags;
};

struct kvxopc {
  /* asm name */
  const char  *as_op;
  /* 32 bits code words. */
  struct kvx_codeword codewords[KVX_MAXSYLLABLES];
  /* Number of words in codewords[].  */
  int wordcount;
  /* coding size in case of variable length.  */
  unsigned coding_size;
  /* Bundling class.  */
  int bundling;
  /* Reservation class.  */
  int reservation;
  /* 0 terminated.  */
  struct kvx_operand *format[KVX_MAXOPERANDS + 1];
  /* Resource class.  */
  const char *rclass;
  /* Formating string.  */
  const char *fmtstring;
};

struct kvx_core_info {
  struct kvxopc *optab;
  const char *name;
  const int *resources;
  int elf_core;
  struct pseudo_func *pseudo_funcs;
  int nb_pseudo_funcs;
  int **reservation_table_table;
  int reservation_table_lines;
  int resource_max;
  char **resource_names;
};

struct kvx_Register {
  int id;
  const char *name;
};

extern const int kvx_kv3_v1_reservation_table_lines;
extern const int *kvx_kv3_v1_reservation_table_table[];
extern const char *kvx_kv3_v1_resource_names[];

extern const int kvx_kv3_v1_resources[];
extern struct kvxopc kvx_kv3_v1_optab[];
extern const struct kvx_core_info kvx_kv3_v1_core_info;
extern const int kvx_kv3_v2_reservation_table_lines;
extern const int *kvx_kv3_v2_reservation_table_table[];
extern const char *kvx_kv3_v2_resource_names[];

extern const int kvx_kv3_v2_resources[];
extern struct kvxopc kvx_kv3_v2_optab[];
extern const struct kvx_core_info kvx_kv3_v2_core_info;
extern const int kvx_kv4_v1_reservation_table_lines;
extern const int *kvx_kv4_v1_reservation_table_table[];
extern const char *kvx_kv4_v1_resource_names[];

extern const int kvx_kv4_v1_resources[];
extern struct kvxopc kvx_kv4_v1_optab[];
extern const struct kvx_core_info kvx_kv4_v1_core_info;
extern const struct kvx_core_info *kvx_core_info_table[];
extern const char ***kvx_modifiers_table[];
extern const struct kvx_Register *kvx_registers_table[];
extern const int *kvx_regfiles_table[];

#define KVX_REGFILE_FIRST_GPR 0
#define KVX_REGFILE_LAST_GPR 1
#define KVX_REGFILE_DEC_GPR 2
#define KVX_REGFILE_FIRST_PGR 3
#define KVX_REGFILE_LAST_PGR 4
#define KVX_REGFILE_DEC_PGR 5
#define KVX_REGFILE_FIRST_QGR 6
#define KVX_REGFILE_LAST_QGR 7
#define KVX_REGFILE_DEC_QGR 8
#define KVX_REGFILE_FIRST_SFR 9
#define KVX_REGFILE_LAST_SFR 10
#define KVX_REGFILE_DEC_SFR 11
#define KVX_REGFILE_FIRST_X16R 12
#define KVX_REGFILE_LAST_X16R 13
#define KVX_REGFILE_DEC_X16R 14
#define KVX_REGFILE_FIRST_X2R 15
#define KVX_REGFILE_LAST_X2R 16
#define KVX_REGFILE_DEC_X2R 17
#define KVX_REGFILE_FIRST_X32R 18
#define KVX_REGFILE_LAST_X32R 19
#define KVX_REGFILE_DEC_X32R 20
#define KVX_REGFILE_FIRST_X4R 21
#define KVX_REGFILE_LAST_X4R 22
#define KVX_REGFILE_DEC_X4R 23
#define KVX_REGFILE_FIRST_X64R 24
#define KVX_REGFILE_LAST_X64R 25
#define KVX_REGFILE_DEC_X64R 26
#define KVX_REGFILE_FIRST_X8R 27
#define KVX_REGFILE_LAST_X8R 28
#define KVX_REGFILE_DEC_X8R 29
#define KVX_REGFILE_FIRST_XBR 30
#define KVX_REGFILE_LAST_XBR 31
#define KVX_REGFILE_DEC_XBR 32
#define KVX_REGFILE_FIRST_XCR 33
#define KVX_REGFILE_LAST_XCR 34
#define KVX_REGFILE_DEC_XCR 35
#define KVX_REGFILE_FIRST_XMR 36
#define KVX_REGFILE_LAST_XMR 37
#define KVX_REGFILE_DEC_XMR 38
#define KVX_REGFILE_FIRST_XTR 39
#define KVX_REGFILE_LAST_XTR 40
#define KVX_REGFILE_DEC_XTR 41
#define KVX_REGFILE_FIRST_XVR 42
#define KVX_REGFILE_LAST_XVR 43
#define KVX_REGFILE_DEC_XVR 44
#define KVX_REGFILE_REGISTERS 45
#define KVX_REGFILE_DEC_REGISTERS 46


extern int kvx_kv3_v1_regfiles[];
extern const char **kvx_kv3_v1_modifiers[];
extern struct kvx_Register kvx_kv3_v1_registers[];

extern int kvx_kv3_v1_dec_registers[];

enum Method_kvx_kv3_v1_enum {
  Immediate_kv3_v1_pcrel17 = 1,
  Immediate_kv3_v1_pcrel27 = 2,
  Immediate_kv3_v1_signed10 = 3,
  Immediate_kv3_v1_signed16 = 4,
  Immediate_kv3_v1_signed27 = 5,
  Immediate_kv3_v1_signed37 = 6,
  Immediate_kv3_v1_signed43 = 7,
  Immediate_kv3_v1_signed54 = 8,
  Immediate_kv3_v1_sysnumber = 9,
  Immediate_kv3_v1_unsigned6 = 10,
  Immediate_kv3_v1_wrapped32 = 11,
  Immediate_kv3_v1_wrapped64 = 12,
  Modifier_kv3_v1_column = 13,
  Modifier_kv3_v1_comparison = 14,
  Modifier_kv3_v1_doscale = 15,
  Modifier_kv3_v1_exunum = 16,
  Modifier_kv3_v1_floatcomp = 17,
  Modifier_kv3_v1_qindex = 18,
  Modifier_kv3_v1_rectify = 19,
  Modifier_kv3_v1_rounding = 20,
  Modifier_kv3_v1_roundint = 21,
  Modifier_kv3_v1_saturate = 22,
  Modifier_kv3_v1_scalarcond = 23,
  Modifier_kv3_v1_silent = 24,
  Modifier_kv3_v1_simplecond = 25,
  Modifier_kv3_v1_speculate = 26,
  Modifier_kv3_v1_splat32 = 27,
  Modifier_kv3_v1_variant = 28,
  RegClass_kv3_v1_aloneReg = 29,
  RegClass_kv3_v1_blockReg = 30,
  RegClass_kv3_v1_blockReg0M4 = 31,
  RegClass_kv3_v1_blockReg1M4 = 32,
  RegClass_kv3_v1_blockReg2M4 = 33,
  RegClass_kv3_v1_blockReg3M4 = 34,
  RegClass_kv3_v1_blockRegE = 35,
  RegClass_kv3_v1_blockRegO = 36,
  RegClass_kv3_v1_buffer16Reg = 37,
  RegClass_kv3_v1_buffer2Reg = 38,
  RegClass_kv3_v1_buffer32Reg = 39,
  RegClass_kv3_v1_buffer4Reg = 40,
  RegClass_kv3_v1_buffer64Reg = 41,
  RegClass_kv3_v1_buffer8Reg = 42,
  RegClass_kv3_v1_coproReg = 43,
  RegClass_kv3_v1_coproReg0M4 = 44,
  RegClass_kv3_v1_coproReg1M4 = 45,
  RegClass_kv3_v1_coproReg2M4 = 46,
  RegClass_kv3_v1_coproReg3M4 = 47,
  RegClass_kv3_v1_matrixReg = 48,
  RegClass_kv3_v1_onlyfxReg = 49,
  RegClass_kv3_v1_onlygetReg = 50,
  RegClass_kv3_v1_onlyraReg = 51,
  RegClass_kv3_v1_onlysetReg = 52,
  RegClass_kv3_v1_onlyswapReg = 53,
  RegClass_kv3_v1_pairedReg = 54,
  RegClass_kv3_v1_quadReg = 55,
  RegClass_kv3_v1_singleReg = 56,
  RegClass_kv3_v1_systemReg = 57,
  RegClass_kv3_v1_tileReg = 58,
  RegClass_kv3_v1_vectorReg = 59,
  RegClass_kv3_v1_vectorRegE = 60,
  RegClass_kv3_v1_vectorRegO = 61,
  RegClass_kv3_v1_xworddReg = 62,
  RegClass_kv3_v1_xwordoReg = 63,
  RegClass_kv3_v1_xwordqReg = 64,
  RegClass_kv3_v1_xwordvReg = 65,
  RegClass_kv3_v1_xwordxReg = 66,
  Instruction_kv3_v1_abdd = 67,
  Instruction_kv3_v1_abdhq = 68,
  Instruction_kv3_v1_abdw = 69,
  Instruction_kv3_v1_abdwp = 70,
  Instruction_kv3_v1_absd = 71,
  Instruction_kv3_v1_abshq = 72,
  Instruction_kv3_v1_absw = 73,
  Instruction_kv3_v1_abswp = 74,
  Instruction_kv3_v1_acswapd = 75,
  Instruction_kv3_v1_acswapw = 76,
  Instruction_kv3_v1_addcd = 77,
  Instruction_kv3_v1_addcd_i = 78,
  Instruction_kv3_v1_addd = 79,
  Instruction_kv3_v1_addhcp_c = 80,
  Instruction_kv3_v1_addhq = 81,
  Instruction_kv3_v1_addsd = 82,
  Instruction_kv3_v1_addshq = 83,
  Instruction_kv3_v1_addsw = 84,
  Instruction_kv3_v1_addswp = 85,
  Instruction_kv3_v1_adduwd = 86,
  Instruction_kv3_v1_addw = 87,
  Instruction_kv3_v1_addwc_c = 88,
  Instruction_kv3_v1_addwd = 89,
  Instruction_kv3_v1_addwp = 90,
  Instruction_kv3_v1_addx16d = 91,
  Instruction_kv3_v1_addx16hq = 92,
  Instruction_kv3_v1_addx16uwd = 93,
  Instruction_kv3_v1_addx16w = 94,
  Instruction_kv3_v1_addx16wd = 95,
  Instruction_kv3_v1_addx16wp = 96,
  Instruction_kv3_v1_addx2d = 97,
  Instruction_kv3_v1_addx2hq = 98,
  Instruction_kv3_v1_addx2uwd = 99,
  Instruction_kv3_v1_addx2w = 100,
  Instruction_kv3_v1_addx2wd = 101,
  Instruction_kv3_v1_addx2wp = 102,
  Instruction_kv3_v1_addx4d = 103,
  Instruction_kv3_v1_addx4hq = 104,
  Instruction_kv3_v1_addx4uwd = 105,
  Instruction_kv3_v1_addx4w = 106,
  Instruction_kv3_v1_addx4wd = 107,
  Instruction_kv3_v1_addx4wp = 108,
  Instruction_kv3_v1_addx8d = 109,
  Instruction_kv3_v1_addx8hq = 110,
  Instruction_kv3_v1_addx8uwd = 111,
  Instruction_kv3_v1_addx8w = 112,
  Instruction_kv3_v1_addx8wd = 113,
  Instruction_kv3_v1_addx8wp = 114,
  Instruction_kv3_v1_aladdd = 115,
  Instruction_kv3_v1_aladdw = 116,
  Instruction_kv3_v1_alclrd = 117,
  Instruction_kv3_v1_alclrw = 118,
  Instruction_kv3_v1_aligno = 119,
  Instruction_kv3_v1_alignv = 120,
  Instruction_kv3_v1_andd = 121,
  Instruction_kv3_v1_andnd = 122,
  Instruction_kv3_v1_andnw = 123,
  Instruction_kv3_v1_andw = 124,
  Instruction_kv3_v1_avghq = 125,
  Instruction_kv3_v1_avgrhq = 126,
  Instruction_kv3_v1_avgruhq = 127,
  Instruction_kv3_v1_avgruw = 128,
  Instruction_kv3_v1_avgruwp = 129,
  Instruction_kv3_v1_avgrw = 130,
  Instruction_kv3_v1_avgrwp = 131,
  Instruction_kv3_v1_avguhq = 132,
  Instruction_kv3_v1_avguw = 133,
  Instruction_kv3_v1_avguwp = 134,
  Instruction_kv3_v1_avgw = 135,
  Instruction_kv3_v1_avgwp = 136,
  Instruction_kv3_v1_await = 137,
  Instruction_kv3_v1_barrier = 138,
  Instruction_kv3_v1_call = 139,
  Instruction_kv3_v1_cb = 140,
  Instruction_kv3_v1_cbsd = 141,
  Instruction_kv3_v1_cbsw = 142,
  Instruction_kv3_v1_cbswp = 143,
  Instruction_kv3_v1_clrf = 144,
  Instruction_kv3_v1_clsd = 145,
  Instruction_kv3_v1_clsw = 146,
  Instruction_kv3_v1_clswp = 147,
  Instruction_kv3_v1_clzd = 148,
  Instruction_kv3_v1_clzw = 149,
  Instruction_kv3_v1_clzwp = 150,
  Instruction_kv3_v1_cmoved = 151,
  Instruction_kv3_v1_cmovehq = 152,
  Instruction_kv3_v1_cmovewp = 153,
  Instruction_kv3_v1_cmuldt = 154,
  Instruction_kv3_v1_cmulghxdt = 155,
  Instruction_kv3_v1_cmulglxdt = 156,
  Instruction_kv3_v1_cmulgmxdt = 157,
  Instruction_kv3_v1_cmulxdt = 158,
  Instruction_kv3_v1_compd = 159,
  Instruction_kv3_v1_compnhq = 160,
  Instruction_kv3_v1_compnwp = 161,
  Instruction_kv3_v1_compuwd = 162,
  Instruction_kv3_v1_compw = 163,
  Instruction_kv3_v1_compwd = 164,
  Instruction_kv3_v1_convdhv0 = 165,
  Instruction_kv3_v1_convdhv1 = 166,
  Instruction_kv3_v1_convwbv0 = 167,
  Instruction_kv3_v1_convwbv1 = 168,
  Instruction_kv3_v1_convwbv2 = 169,
  Instruction_kv3_v1_convwbv3 = 170,
  Instruction_kv3_v1_copyd = 171,
  Instruction_kv3_v1_copyo = 172,
  Instruction_kv3_v1_copyq = 173,
  Instruction_kv3_v1_copyw = 174,
  Instruction_kv3_v1_crcbellw = 175,
  Instruction_kv3_v1_crcbelmw = 176,
  Instruction_kv3_v1_crclellw = 177,
  Instruction_kv3_v1_crclelmw = 178,
  Instruction_kv3_v1_ctzd = 179,
  Instruction_kv3_v1_ctzw = 180,
  Instruction_kv3_v1_ctzwp = 181,
  Instruction_kv3_v1_d1inval = 182,
  Instruction_kv3_v1_dinvall = 183,
  Instruction_kv3_v1_dot2suwd = 184,
  Instruction_kv3_v1_dot2suwdp = 185,
  Instruction_kv3_v1_dot2uwd = 186,
  Instruction_kv3_v1_dot2uwdp = 187,
  Instruction_kv3_v1_dot2w = 188,
  Instruction_kv3_v1_dot2wd = 189,
  Instruction_kv3_v1_dot2wdp = 190,
  Instruction_kv3_v1_dot2wzp = 191,
  Instruction_kv3_v1_dtouchl = 192,
  Instruction_kv3_v1_dzerol = 193,
  Instruction_kv3_v1_eord = 194,
  Instruction_kv3_v1_eorw = 195,
  Instruction_kv3_v1_errop = 196,
  Instruction_kv3_v1_extfs = 197,
  Instruction_kv3_v1_extfz = 198,
  Instruction_kv3_v1_fabsd = 199,
  Instruction_kv3_v1_fabshq = 200,
  Instruction_kv3_v1_fabsw = 201,
  Instruction_kv3_v1_fabswp = 202,
  Instruction_kv3_v1_faddd = 203,
  Instruction_kv3_v1_fadddc = 204,
  Instruction_kv3_v1_fadddc_c = 205,
  Instruction_kv3_v1_fadddp = 206,
  Instruction_kv3_v1_faddhq = 207,
  Instruction_kv3_v1_faddw = 208,
  Instruction_kv3_v1_faddwc = 209,
  Instruction_kv3_v1_faddwc_c = 210,
  Instruction_kv3_v1_faddwcp = 211,
  Instruction_kv3_v1_faddwcp_c = 212,
  Instruction_kv3_v1_faddwp = 213,
  Instruction_kv3_v1_faddwq = 214,
  Instruction_kv3_v1_fcdivd = 215,
  Instruction_kv3_v1_fcdivw = 216,
  Instruction_kv3_v1_fcdivwp = 217,
  Instruction_kv3_v1_fcompd = 218,
  Instruction_kv3_v1_fcompnhq = 219,
  Instruction_kv3_v1_fcompnwp = 220,
  Instruction_kv3_v1_fcompw = 221,
  Instruction_kv3_v1_fdot2w = 222,
  Instruction_kv3_v1_fdot2wd = 223,
  Instruction_kv3_v1_fdot2wdp = 224,
  Instruction_kv3_v1_fdot2wzp = 225,
  Instruction_kv3_v1_fence = 226,
  Instruction_kv3_v1_ffmad = 227,
  Instruction_kv3_v1_ffmahq = 228,
  Instruction_kv3_v1_ffmahw = 229,
  Instruction_kv3_v1_ffmahwq = 230,
  Instruction_kv3_v1_ffmaw = 231,
  Instruction_kv3_v1_ffmawd = 232,
  Instruction_kv3_v1_ffmawdp = 233,
  Instruction_kv3_v1_ffmawp = 234,
  Instruction_kv3_v1_ffmsd = 235,
  Instruction_kv3_v1_ffmshq = 236,
  Instruction_kv3_v1_ffmshw = 237,
  Instruction_kv3_v1_ffmshwq = 238,
  Instruction_kv3_v1_ffmsw = 239,
  Instruction_kv3_v1_ffmswd = 240,
  Instruction_kv3_v1_ffmswdp = 241,
  Instruction_kv3_v1_ffmswp = 242,
  Instruction_kv3_v1_fixedd = 243,
  Instruction_kv3_v1_fixedud = 244,
  Instruction_kv3_v1_fixeduw = 245,
  Instruction_kv3_v1_fixeduwp = 246,
  Instruction_kv3_v1_fixedw = 247,
  Instruction_kv3_v1_fixedwp = 248,
  Instruction_kv3_v1_floatd = 249,
  Instruction_kv3_v1_floatud = 250,
  Instruction_kv3_v1_floatuw = 251,
  Instruction_kv3_v1_floatuwp = 252,
  Instruction_kv3_v1_floatw = 253,
  Instruction_kv3_v1_floatwp = 254,
  Instruction_kv3_v1_fmaxd = 255,
  Instruction_kv3_v1_fmaxhq = 256,
  Instruction_kv3_v1_fmaxw = 257,
  Instruction_kv3_v1_fmaxwp = 258,
  Instruction_kv3_v1_fmind = 259,
  Instruction_kv3_v1_fminhq = 260,
  Instruction_kv3_v1_fminw = 261,
  Instruction_kv3_v1_fminwp = 262,
  Instruction_kv3_v1_fmm212w = 263,
  Instruction_kv3_v1_fmma212w = 264,
  Instruction_kv3_v1_fmma242hw0 = 265,
  Instruction_kv3_v1_fmma242hw1 = 266,
  Instruction_kv3_v1_fmma242hw2 = 267,
  Instruction_kv3_v1_fmma242hw3 = 268,
  Instruction_kv3_v1_fmms212w = 269,
  Instruction_kv3_v1_fmuld = 270,
  Instruction_kv3_v1_fmulhq = 271,
  Instruction_kv3_v1_fmulhw = 272,
  Instruction_kv3_v1_fmulhwq = 273,
  Instruction_kv3_v1_fmulw = 274,
  Instruction_kv3_v1_fmulwc = 275,
  Instruction_kv3_v1_fmulwc_c = 276,
  Instruction_kv3_v1_fmulwd = 277,
  Instruction_kv3_v1_fmulwdc = 278,
  Instruction_kv3_v1_fmulwdc_c = 279,
  Instruction_kv3_v1_fmulwdp = 280,
  Instruction_kv3_v1_fmulwp = 281,
  Instruction_kv3_v1_fmulwq = 282,
  Instruction_kv3_v1_fnarrow44wh = 283,
  Instruction_kv3_v1_fnarrowdw = 284,
  Instruction_kv3_v1_fnarrowdwp = 285,
  Instruction_kv3_v1_fnarrowwh = 286,
  Instruction_kv3_v1_fnarrowwhq = 287,
  Instruction_kv3_v1_fnegd = 288,
  Instruction_kv3_v1_fneghq = 289,
  Instruction_kv3_v1_fnegw = 290,
  Instruction_kv3_v1_fnegwp = 291,
  Instruction_kv3_v1_frecw = 292,
  Instruction_kv3_v1_frsrw = 293,
  Instruction_kv3_v1_fsbfd = 294,
  Instruction_kv3_v1_fsbfdc = 295,
  Instruction_kv3_v1_fsbfdc_c = 296,
  Instruction_kv3_v1_fsbfdp = 297,
  Instruction_kv3_v1_fsbfhq = 298,
  Instruction_kv3_v1_fsbfw = 299,
  Instruction_kv3_v1_fsbfwc = 300,
  Instruction_kv3_v1_fsbfwc_c = 301,
  Instruction_kv3_v1_fsbfwcp = 302,
  Instruction_kv3_v1_fsbfwcp_c = 303,
  Instruction_kv3_v1_fsbfwp = 304,
  Instruction_kv3_v1_fsbfwq = 305,
  Instruction_kv3_v1_fscalewv = 306,
  Instruction_kv3_v1_fsdivd = 307,
  Instruction_kv3_v1_fsdivw = 308,
  Instruction_kv3_v1_fsdivwp = 309,
  Instruction_kv3_v1_fsrecd = 310,
  Instruction_kv3_v1_fsrecw = 311,
  Instruction_kv3_v1_fsrecwp = 312,
  Instruction_kv3_v1_fsrsrd = 313,
  Instruction_kv3_v1_fsrsrw = 314,
  Instruction_kv3_v1_fsrsrwp = 315,
  Instruction_kv3_v1_fwidenlhw = 316,
  Instruction_kv3_v1_fwidenlhwp = 317,
  Instruction_kv3_v1_fwidenlwd = 318,
  Instruction_kv3_v1_fwidenmhw = 319,
  Instruction_kv3_v1_fwidenmhwp = 320,
  Instruction_kv3_v1_fwidenmwd = 321,
  Instruction_kv3_v1_get = 322,
  Instruction_kv3_v1_goto = 323,
  Instruction_kv3_v1_i1inval = 324,
  Instruction_kv3_v1_i1invals = 325,
  Instruction_kv3_v1_icall = 326,
  Instruction_kv3_v1_iget = 327,
  Instruction_kv3_v1_igoto = 328,
  Instruction_kv3_v1_insf = 329,
  Instruction_kv3_v1_iord = 330,
  Instruction_kv3_v1_iornd = 331,
  Instruction_kv3_v1_iornw = 332,
  Instruction_kv3_v1_iorw = 333,
  Instruction_kv3_v1_landd = 334,
  Instruction_kv3_v1_landhq = 335,
  Instruction_kv3_v1_landw = 336,
  Instruction_kv3_v1_landwp = 337,
  Instruction_kv3_v1_lbs = 338,
  Instruction_kv3_v1_lbz = 339,
  Instruction_kv3_v1_ld = 340,
  Instruction_kv3_v1_lhs = 341,
  Instruction_kv3_v1_lhz = 342,
  Instruction_kv3_v1_liord = 343,
  Instruction_kv3_v1_liorhq = 344,
  Instruction_kv3_v1_liorw = 345,
  Instruction_kv3_v1_liorwp = 346,
  Instruction_kv3_v1_lnandd = 347,
  Instruction_kv3_v1_lnandhq = 348,
  Instruction_kv3_v1_lnandw = 349,
  Instruction_kv3_v1_lnandwp = 350,
  Instruction_kv3_v1_lniord = 351,
  Instruction_kv3_v1_lniorhq = 352,
  Instruction_kv3_v1_lniorw = 353,
  Instruction_kv3_v1_lniorwp = 354,
  Instruction_kv3_v1_lnord = 355,
  Instruction_kv3_v1_lnorhq = 356,
  Instruction_kv3_v1_lnorw = 357,
  Instruction_kv3_v1_lnorwp = 358,
  Instruction_kv3_v1_lo = 359,
  Instruction_kv3_v1_loopdo = 360,
  Instruction_kv3_v1_lord = 361,
  Instruction_kv3_v1_lorhq = 362,
  Instruction_kv3_v1_lorw = 363,
  Instruction_kv3_v1_lorwp = 364,
  Instruction_kv3_v1_lq = 365,
  Instruction_kv3_v1_lws = 366,
  Instruction_kv3_v1_lwz = 367,
  Instruction_kv3_v1_maddd = 368,
  Instruction_kv3_v1_madddt = 369,
  Instruction_kv3_v1_maddhq = 370,
  Instruction_kv3_v1_maddhwq = 371,
  Instruction_kv3_v1_maddsudt = 372,
  Instruction_kv3_v1_maddsuhwq = 373,
  Instruction_kv3_v1_maddsuwd = 374,
  Instruction_kv3_v1_maddsuwdp = 375,
  Instruction_kv3_v1_maddudt = 376,
  Instruction_kv3_v1_madduhwq = 377,
  Instruction_kv3_v1_madduwd = 378,
  Instruction_kv3_v1_madduwdp = 379,
  Instruction_kv3_v1_madduzdt = 380,
  Instruction_kv3_v1_maddw = 381,
  Instruction_kv3_v1_maddwd = 382,
  Instruction_kv3_v1_maddwdp = 383,
  Instruction_kv3_v1_maddwp = 384,
  Instruction_kv3_v1_make = 385,
  Instruction_kv3_v1_maxd = 386,
  Instruction_kv3_v1_maxhq = 387,
  Instruction_kv3_v1_maxud = 388,
  Instruction_kv3_v1_maxuhq = 389,
  Instruction_kv3_v1_maxuw = 390,
  Instruction_kv3_v1_maxuwp = 391,
  Instruction_kv3_v1_maxw = 392,
  Instruction_kv3_v1_maxwp = 393,
  Instruction_kv3_v1_mind = 394,
  Instruction_kv3_v1_minhq = 395,
  Instruction_kv3_v1_minud = 396,
  Instruction_kv3_v1_minuhq = 397,
  Instruction_kv3_v1_minuw = 398,
  Instruction_kv3_v1_minuwp = 399,
  Instruction_kv3_v1_minw = 400,
  Instruction_kv3_v1_minwp = 401,
  Instruction_kv3_v1_mm212w = 402,
  Instruction_kv3_v1_mma212w = 403,
  Instruction_kv3_v1_mma444hbd0 = 404,
  Instruction_kv3_v1_mma444hbd1 = 405,
  Instruction_kv3_v1_mma444hd = 406,
  Instruction_kv3_v1_mma444suhbd0 = 407,
  Instruction_kv3_v1_mma444suhbd1 = 408,
  Instruction_kv3_v1_mma444suhd = 409,
  Instruction_kv3_v1_mma444uhbd0 = 410,
  Instruction_kv3_v1_mma444uhbd1 = 411,
  Instruction_kv3_v1_mma444uhd = 412,
  Instruction_kv3_v1_mma444ushbd0 = 413,
  Instruction_kv3_v1_mma444ushbd1 = 414,
  Instruction_kv3_v1_mma444ushd = 415,
  Instruction_kv3_v1_mms212w = 416,
  Instruction_kv3_v1_movetq = 417,
  Instruction_kv3_v1_msbfd = 418,
  Instruction_kv3_v1_msbfdt = 419,
  Instruction_kv3_v1_msbfhq = 420,
  Instruction_kv3_v1_msbfhwq = 421,
  Instruction_kv3_v1_msbfsudt = 422,
  Instruction_kv3_v1_msbfsuhwq = 423,
  Instruction_kv3_v1_msbfsuwd = 424,
  Instruction_kv3_v1_msbfsuwdp = 425,
  Instruction_kv3_v1_msbfudt = 426,
  Instruction_kv3_v1_msbfuhwq = 427,
  Instruction_kv3_v1_msbfuwd = 428,
  Instruction_kv3_v1_msbfuwdp = 429,
  Instruction_kv3_v1_msbfuzdt = 430,
  Instruction_kv3_v1_msbfw = 431,
  Instruction_kv3_v1_msbfwd = 432,
  Instruction_kv3_v1_msbfwdp = 433,
  Instruction_kv3_v1_msbfwp = 434,
  Instruction_kv3_v1_muld = 435,
  Instruction_kv3_v1_muldt = 436,
  Instruction_kv3_v1_mulhq = 437,
  Instruction_kv3_v1_mulhwq = 438,
  Instruction_kv3_v1_mulsudt = 439,
  Instruction_kv3_v1_mulsuhwq = 440,
  Instruction_kv3_v1_mulsuwd = 441,
  Instruction_kv3_v1_mulsuwdp = 442,
  Instruction_kv3_v1_muludt = 443,
  Instruction_kv3_v1_muluhwq = 444,
  Instruction_kv3_v1_muluwd = 445,
  Instruction_kv3_v1_muluwdp = 446,
  Instruction_kv3_v1_mulw = 447,
  Instruction_kv3_v1_mulwc = 448,
  Instruction_kv3_v1_mulwc_c = 449,
  Instruction_kv3_v1_mulwd = 450,
  Instruction_kv3_v1_mulwdc = 451,
  Instruction_kv3_v1_mulwdc_c = 452,
  Instruction_kv3_v1_mulwdp = 453,
  Instruction_kv3_v1_mulwp = 454,
  Instruction_kv3_v1_mulwq = 455,
  Instruction_kv3_v1_nandd = 456,
  Instruction_kv3_v1_nandw = 457,
  Instruction_kv3_v1_negd = 458,
  Instruction_kv3_v1_neghq = 459,
  Instruction_kv3_v1_negw = 460,
  Instruction_kv3_v1_negwp = 461,
  Instruction_kv3_v1_neord = 462,
  Instruction_kv3_v1_neorw = 463,
  Instruction_kv3_v1_niord = 464,
  Instruction_kv3_v1_niorw = 465,
  Instruction_kv3_v1_nop = 466,
  Instruction_kv3_v1_nord = 467,
  Instruction_kv3_v1_norw = 468,
  Instruction_kv3_v1_notd = 469,
  Instruction_kv3_v1_notw = 470,
  Instruction_kv3_v1_nxord = 471,
  Instruction_kv3_v1_nxorw = 472,
  Instruction_kv3_v1_ord = 473,
  Instruction_kv3_v1_ornd = 474,
  Instruction_kv3_v1_ornw = 475,
  Instruction_kv3_v1_orw = 476,
  Instruction_kv3_v1_pcrel = 477,
  Instruction_kv3_v1_ret = 478,
  Instruction_kv3_v1_rfe = 479,
  Instruction_kv3_v1_rolw = 480,
  Instruction_kv3_v1_rolwps = 481,
  Instruction_kv3_v1_rorw = 482,
  Instruction_kv3_v1_rorwps = 483,
  Instruction_kv3_v1_rswap = 484,
  Instruction_kv3_v1_satd = 485,
  Instruction_kv3_v1_satdh = 486,
  Instruction_kv3_v1_satdw = 487,
  Instruction_kv3_v1_sb = 488,
  Instruction_kv3_v1_sbfcd = 489,
  Instruction_kv3_v1_sbfcd_i = 490,
  Instruction_kv3_v1_sbfd = 491,
  Instruction_kv3_v1_sbfhcp_c = 492,
  Instruction_kv3_v1_sbfhq = 493,
  Instruction_kv3_v1_sbfsd = 494,
  Instruction_kv3_v1_sbfshq = 495,
  Instruction_kv3_v1_sbfsw = 496,
  Instruction_kv3_v1_sbfswp = 497,
  Instruction_kv3_v1_sbfuwd = 498,
  Instruction_kv3_v1_sbfw = 499,
  Instruction_kv3_v1_sbfwc_c = 500,
  Instruction_kv3_v1_sbfwd = 501,
  Instruction_kv3_v1_sbfwp = 502,
  Instruction_kv3_v1_sbfx16d = 503,
  Instruction_kv3_v1_sbfx16hq = 504,
  Instruction_kv3_v1_sbfx16uwd = 505,
  Instruction_kv3_v1_sbfx16w = 506,
  Instruction_kv3_v1_sbfx16wd = 507,
  Instruction_kv3_v1_sbfx16wp = 508,
  Instruction_kv3_v1_sbfx2d = 509,
  Instruction_kv3_v1_sbfx2hq = 510,
  Instruction_kv3_v1_sbfx2uwd = 511,
  Instruction_kv3_v1_sbfx2w = 512,
  Instruction_kv3_v1_sbfx2wd = 513,
  Instruction_kv3_v1_sbfx2wp = 514,
  Instruction_kv3_v1_sbfx4d = 515,
  Instruction_kv3_v1_sbfx4hq = 516,
  Instruction_kv3_v1_sbfx4uwd = 517,
  Instruction_kv3_v1_sbfx4w = 518,
  Instruction_kv3_v1_sbfx4wd = 519,
  Instruction_kv3_v1_sbfx4wp = 520,
  Instruction_kv3_v1_sbfx8d = 521,
  Instruction_kv3_v1_sbfx8hq = 522,
  Instruction_kv3_v1_sbfx8uwd = 523,
  Instruction_kv3_v1_sbfx8w = 524,
  Instruction_kv3_v1_sbfx8wd = 525,
  Instruction_kv3_v1_sbfx8wp = 526,
  Instruction_kv3_v1_sbmm8 = 527,
  Instruction_kv3_v1_sbmm8d = 528,
  Instruction_kv3_v1_sbmmt8 = 529,
  Instruction_kv3_v1_sbmmt8d = 530,
  Instruction_kv3_v1_scall = 531,
  Instruction_kv3_v1_sd = 532,
  Instruction_kv3_v1_set = 533,
  Instruction_kv3_v1_sh = 534,
  Instruction_kv3_v1_sleep = 535,
  Instruction_kv3_v1_slld = 536,
  Instruction_kv3_v1_sllhqs = 537,
  Instruction_kv3_v1_sllw = 538,
  Instruction_kv3_v1_sllwps = 539,
  Instruction_kv3_v1_slsd = 540,
  Instruction_kv3_v1_slshqs = 541,
  Instruction_kv3_v1_slsw = 542,
  Instruction_kv3_v1_slswps = 543,
  Instruction_kv3_v1_so = 544,
  Instruction_kv3_v1_sq = 545,
  Instruction_kv3_v1_srad = 546,
  Instruction_kv3_v1_srahqs = 547,
  Instruction_kv3_v1_sraw = 548,
  Instruction_kv3_v1_srawps = 549,
  Instruction_kv3_v1_srld = 550,
  Instruction_kv3_v1_srlhqs = 551,
  Instruction_kv3_v1_srlw = 552,
  Instruction_kv3_v1_srlwps = 553,
  Instruction_kv3_v1_srsd = 554,
  Instruction_kv3_v1_srshqs = 555,
  Instruction_kv3_v1_srsw = 556,
  Instruction_kv3_v1_srswps = 557,
  Instruction_kv3_v1_stop = 558,
  Instruction_kv3_v1_stsud = 559,
  Instruction_kv3_v1_stsuw = 560,
  Instruction_kv3_v1_sw = 561,
  Instruction_kv3_v1_sxbd = 562,
  Instruction_kv3_v1_sxhd = 563,
  Instruction_kv3_v1_sxlbhq = 564,
  Instruction_kv3_v1_sxlhwp = 565,
  Instruction_kv3_v1_sxmbhq = 566,
  Instruction_kv3_v1_sxmhwp = 567,
  Instruction_kv3_v1_sxwd = 568,
  Instruction_kv3_v1_syncgroup = 569,
  Instruction_kv3_v1_tlbdinval = 570,
  Instruction_kv3_v1_tlbiinval = 571,
  Instruction_kv3_v1_tlbprobe = 572,
  Instruction_kv3_v1_tlbread = 573,
  Instruction_kv3_v1_tlbwrite = 574,
  Instruction_kv3_v1_waitit = 575,
  Instruction_kv3_v1_wfxl = 576,
  Instruction_kv3_v1_wfxm = 577,
  Instruction_kv3_v1_xcopyo = 578,
  Instruction_kv3_v1_xlo = 579,
  Instruction_kv3_v1_xmma484bw = 580,
  Instruction_kv3_v1_xmma484subw = 581,
  Instruction_kv3_v1_xmma484ubw = 582,
  Instruction_kv3_v1_xmma484usbw = 583,
  Instruction_kv3_v1_xmovefo = 584,
  Instruction_kv3_v1_xmovetq = 585,
  Instruction_kv3_v1_xmt44d = 586,
  Instruction_kv3_v1_xord = 587,
  Instruction_kv3_v1_xorw = 588,
  Instruction_kv3_v1_xso = 589,
  Instruction_kv3_v1_zxbd = 590,
  Instruction_kv3_v1_zxhd = 591,
  Instruction_kv3_v1_zxwd = 592,
  Separator_kv3_v1_comma = 593,
  Separator_kv3_v1_equal = 594,
  Separator_kv3_v1_qmark = 595,
  Separator_kv3_v1_rsbracket = 596,
  Separator_kv3_v1_lsbracket = 597
};

enum Modifier_kv3_v1_exunum_enum {
  Modifier_kv3_v1_exunum_ALU0=0,
  Modifier_kv3_v1_exunum_ALU1=1,
  Modifier_kv3_v1_exunum_MAU=2,
  Modifier_kv3_v1_exunum_LSU=3,
};

extern const char *mod_kv3_v1_exunum[];
extern const char *mod_kv3_v1_scalarcond[];
extern const char *mod_kv3_v1_simplecond[];
extern const char *mod_kv3_v1_comparison[];
extern const char *mod_kv3_v1_floatcomp[];
extern const char *mod_kv3_v1_rounding[];
extern const char *mod_kv3_v1_silent[];
extern const char *mod_kv3_v1_roundint[];
extern const char *mod_kv3_v1_saturate[];
extern const char *mod_kv3_v1_rectify[];
extern const char *mod_kv3_v1_variant[];
extern const char *mod_kv3_v1_speculate[];
extern const char *mod_kv3_v1_column[];
extern const char *mod_kv3_v1_doscale[];
extern const char *mod_kv3_v1_qindex[];
extern const char *mod_kv3_v1_splat32[];
typedef enum {
  Bundling_kv3_v1_ALL,
  Bundling_kv3_v1_BCU,
  Bundling_kv3_v1_EXT,
  Bundling_kv3_v1_FULL,
  Bundling_kv3_v1_FULL_X,
  Bundling_kv3_v1_FULL_Y,
  Bundling_kv3_v1_LITE,
  Bundling_kv3_v1_LITE_X,
  Bundling_kv3_v1_LITE_Y,
  Bundling_kv3_v1_MAU,
  Bundling_kv3_v1_MAU_X,
  Bundling_kv3_v1_MAU_Y,
  Bundling_kv3_v1_LSU,
  Bundling_kv3_v1_LSU_X,
  Bundling_kv3_v1_LSU_Y,
  Bundling_kv3_v1_TINY,
  Bundling_kv3_v1_TINY_X,
  Bundling_kv3_v1_TINY_Y,
  Bundling_kv3_v1_NOP,
} Bundling_kv3_v1;


static const char *bundling_kv3_v1_names(Bundling_kv3_v1 bundling) __attribute__((unused));
static const char *bundling_kv3_v1_names(Bundling_kv3_v1 bundling) {
  switch(bundling) {
  case Bundling_kv3_v1_ALL: return "Bundling_kv3_v1_ALL";
  case Bundling_kv3_v1_BCU: return "Bundling_kv3_v1_BCU";
  case Bundling_kv3_v1_EXT: return "Bundling_kv3_v1_EXT";
  case Bundling_kv3_v1_FULL: return "Bundling_kv3_v1_FULL";
  case Bundling_kv3_v1_FULL_X: return "Bundling_kv3_v1_FULL_X";
  case Bundling_kv3_v1_FULL_Y: return "Bundling_kv3_v1_FULL_Y";
  case Bundling_kv3_v1_LITE: return "Bundling_kv3_v1_LITE";
  case Bundling_kv3_v1_LITE_X: return "Bundling_kv3_v1_LITE_X";
  case Bundling_kv3_v1_LITE_Y: return "Bundling_kv3_v1_LITE_Y";
  case Bundling_kv3_v1_MAU: return "Bundling_kv3_v1_MAU";
  case Bundling_kv3_v1_MAU_X: return "Bundling_kv3_v1_MAU_X";
  case Bundling_kv3_v1_MAU_Y: return "Bundling_kv3_v1_MAU_Y";
  case Bundling_kv3_v1_LSU: return "Bundling_kv3_v1_LSU";
  case Bundling_kv3_v1_LSU_X: return "Bundling_kv3_v1_LSU_X";
  case Bundling_kv3_v1_LSU_Y: return "Bundling_kv3_v1_LSU_Y";
  case Bundling_kv3_v1_TINY: return "Bundling_kv3_v1_TINY";
  case Bundling_kv3_v1_TINY_X: return "Bundling_kv3_v1_TINY_X";
  case Bundling_kv3_v1_TINY_Y: return "Bundling_kv3_v1_TINY_Y";
  case Bundling_kv3_v1_NOP: return "Bundling_kv3_v1_NOP";
  };
  return "unknown bundling";
};

/* Resources list */
#define Resource_kv3_v1_ISSUE 0
#define Resource_kv3_v1_TINY 1
#define Resource_kv3_v1_LITE 2
#define Resource_kv3_v1_FULL 3
#define Resource_kv3_v1_LSU 4
#define Resource_kv3_v1_MAU 5
#define Resource_kv3_v1_BCU 6
#define Resource_kv3_v1_EXT 7
#define Resource_kv3_v1_XFER 8
#define Resource_kv3_v1_AUXR 9
#define Resource_kv3_v1_AUXW 10
#define Resource_kv3_v1_MEMW 11
#define Resource_kv3_v1_CRRP 12
#define Resource_kv3_v1_CRWL 13
#define Resource_kv3_v1_CRWH 14
#define Resource_kv3_v1_NOP 15
#define kvx_kv3_v1_RESOURCE_MAX 16


/* Reservations list */
#define Reservation_kv3_v1_ALL 0
#define Reservation_kv3_v1_ALU_NOP 1
#define Reservation_kv3_v1_ALU_TINY 2
#define Reservation_kv3_v1_ALU_TINY_X 3
#define Reservation_kv3_v1_ALU_TINY_Y 4
#define Reservation_kv3_v1_ALU_TINY_CRRP 5
#define Reservation_kv3_v1_ALU_TINY_CRWL_CRWH 6
#define Reservation_kv3_v1_ALU_TINY_CRWL_CRWH_X 7
#define Reservation_kv3_v1_ALU_TINY_CRWL_CRWH_Y 8
#define Reservation_kv3_v1_ALU_TINY_CRRP_CRWL_CRWH 9
#define Reservation_kv3_v1_ALU_TINY_CRWL 10
#define Reservation_kv3_v1_ALU_TINY_CRWH 11
#define Reservation_kv3_v1_ALU_LITE 12
#define Reservation_kv3_v1_ALU_LITE_X 13
#define Reservation_kv3_v1_ALU_LITE_Y 14
#define Reservation_kv3_v1_ALU_LITE_CRWL 15
#define Reservation_kv3_v1_ALU_LITE_CRWH 16
#define Reservation_kv3_v1_ALU_FULL 17
#define Reservation_kv3_v1_ALU_FULL_X 18
#define Reservation_kv3_v1_ALU_FULL_Y 19
#define Reservation_kv3_v1_BCU 20
#define Reservation_kv3_v1_BCU_XFER 21
#define Reservation_kv3_v1_BCU_CRRP_CRWL_CRWH 22
#define Reservation_kv3_v1_BCU_TINY_AUXW_CRRP 23
#define Reservation_kv3_v1_BCU_TINY_TINY_MAU_XNOP 24
#define Reservation_kv3_v1_EXT 25
#define Reservation_kv3_v1_LSU 26
#define Reservation_kv3_v1_LSU_X 27
#define Reservation_kv3_v1_LSU_Y 28
#define Reservation_kv3_v1_LSU_CRRP 29
#define Reservation_kv3_v1_LSU_CRRP_X 30
#define Reservation_kv3_v1_LSU_CRRP_Y 31
#define Reservation_kv3_v1_LSU_AUXR 32
#define Reservation_kv3_v1_LSU_AUXR_X 33
#define Reservation_kv3_v1_LSU_AUXR_Y 34
#define Reservation_kv3_v1_LSU_AUXW 35
#define Reservation_kv3_v1_LSU_AUXW_X 36
#define Reservation_kv3_v1_LSU_AUXW_Y 37
#define Reservation_kv3_v1_LSU_AUXR_AUXW 38
#define Reservation_kv3_v1_LSU_AUXR_AUXW_X 39
#define Reservation_kv3_v1_LSU_AUXR_AUXW_Y 40
#define Reservation_kv3_v1_MAU 41
#define Reservation_kv3_v1_MAU_X 42
#define Reservation_kv3_v1_MAU_Y 43
#define Reservation_kv3_v1_MAU_AUXR 44
#define Reservation_kv3_v1_MAU_AUXR_X 45
#define Reservation_kv3_v1_MAU_AUXR_Y 46


extern struct kvx_reloc kv3_v1_rel16_reloc;
extern struct kvx_reloc kv3_v1_rel32_reloc;
extern struct kvx_reloc kv3_v1_rel64_reloc;
extern struct kvx_reloc kv3_v1_pcrel_signed16_reloc;
extern struct kvx_reloc kv3_v1_pcrel17_reloc;
extern struct kvx_reloc kv3_v1_pcrel27_reloc;
extern struct kvx_reloc kv3_v1_pcrel32_reloc;
extern struct kvx_reloc kv3_v1_pcrel_signed37_reloc;
extern struct kvx_reloc kv3_v1_pcrel_signed43_reloc;
extern struct kvx_reloc kv3_v1_pcrel_signed64_reloc;
extern struct kvx_reloc kv3_v1_pcrel64_reloc;
extern struct kvx_reloc kv3_v1_signed16_reloc;
extern struct kvx_reloc kv3_v1_signed32_reloc;
extern struct kvx_reloc kv3_v1_signed37_reloc;
extern struct kvx_reloc kv3_v1_gotoff_signed37_reloc;
extern struct kvx_reloc kv3_v1_gotoff_signed43_reloc;
extern struct kvx_reloc kv3_v1_gotoff_32_reloc;
extern struct kvx_reloc kv3_v1_gotoff_64_reloc;
extern struct kvx_reloc kv3_v1_got_32_reloc;
extern struct kvx_reloc kv3_v1_got_signed37_reloc;
extern struct kvx_reloc kv3_v1_got_signed43_reloc;
extern struct kvx_reloc kv3_v1_got_64_reloc;
extern struct kvx_reloc kv3_v1_glob_dat_reloc;
extern struct kvx_reloc kv3_v1_copy_reloc;
extern struct kvx_reloc kv3_v1_jump_slot_reloc;
extern struct kvx_reloc kv3_v1_relative_reloc;
extern struct kvx_reloc kv3_v1_signed43_reloc;
extern struct kvx_reloc kv3_v1_signed64_reloc;
extern struct kvx_reloc kv3_v1_gotaddr_signed37_reloc;
extern struct kvx_reloc kv3_v1_gotaddr_signed43_reloc;
extern struct kvx_reloc kv3_v1_gotaddr_signed64_reloc;
extern struct kvx_reloc kv3_v1_dtpmod64_reloc;
extern struct kvx_reloc kv3_v1_dtpoff64_reloc;
extern struct kvx_reloc kv3_v1_dtpoff_signed37_reloc;
extern struct kvx_reloc kv3_v1_dtpoff_signed43_reloc;
extern struct kvx_reloc kv3_v1_tlsgd_signed37_reloc;
extern struct kvx_reloc kv3_v1_tlsgd_signed43_reloc;
extern struct kvx_reloc kv3_v1_tlsld_signed37_reloc;
extern struct kvx_reloc kv3_v1_tlsld_signed43_reloc;
extern struct kvx_reloc kv3_v1_tpoff64_reloc;
extern struct kvx_reloc kv3_v1_tlsie_signed37_reloc;
extern struct kvx_reloc kv3_v1_tlsie_signed43_reloc;
extern struct kvx_reloc kv3_v1_tlsle_signed37_reloc;
extern struct kvx_reloc kv3_v1_tlsle_signed43_reloc;
extern struct kvx_reloc kv3_v1_rel8_reloc;

#define KVX_REGFILE_FIRST_GPR 0
#define KVX_REGFILE_LAST_GPR 1
#define KVX_REGFILE_DEC_GPR 2
#define KVX_REGFILE_FIRST_PGR 3
#define KVX_REGFILE_LAST_PGR 4
#define KVX_REGFILE_DEC_PGR 5
#define KVX_REGFILE_FIRST_QGR 6
#define KVX_REGFILE_LAST_QGR 7
#define KVX_REGFILE_DEC_QGR 8
#define KVX_REGFILE_FIRST_SFR 9
#define KVX_REGFILE_LAST_SFR 10
#define KVX_REGFILE_DEC_SFR 11
#define KVX_REGFILE_FIRST_X16R 12
#define KVX_REGFILE_LAST_X16R 13
#define KVX_REGFILE_DEC_X16R 14
#define KVX_REGFILE_FIRST_X2R 15
#define KVX_REGFILE_LAST_X2R 16
#define KVX_REGFILE_DEC_X2R 17
#define KVX_REGFILE_FIRST_X32R 18
#define KVX_REGFILE_LAST_X32R 19
#define KVX_REGFILE_DEC_X32R 20
#define KVX_REGFILE_FIRST_X4R 21
#define KVX_REGFILE_LAST_X4R 22
#define KVX_REGFILE_DEC_X4R 23
#define KVX_REGFILE_FIRST_X64R 24
#define KVX_REGFILE_LAST_X64R 25
#define KVX_REGFILE_DEC_X64R 26
#define KVX_REGFILE_FIRST_X8R 27
#define KVX_REGFILE_LAST_X8R 28
#define KVX_REGFILE_DEC_X8R 29
#define KVX_REGFILE_FIRST_XBR 30
#define KVX_REGFILE_LAST_XBR 31
#define KVX_REGFILE_DEC_XBR 32
#define KVX_REGFILE_FIRST_XCR 33
#define KVX_REGFILE_LAST_XCR 34
#define KVX_REGFILE_DEC_XCR 35
#define KVX_REGFILE_FIRST_XMR 36
#define KVX_REGFILE_LAST_XMR 37
#define KVX_REGFILE_DEC_XMR 38
#define KVX_REGFILE_FIRST_XTR 39
#define KVX_REGFILE_LAST_XTR 40
#define KVX_REGFILE_DEC_XTR 41
#define KVX_REGFILE_FIRST_XVR 42
#define KVX_REGFILE_LAST_XVR 43
#define KVX_REGFILE_DEC_XVR 44
#define KVX_REGFILE_REGISTERS 45
#define KVX_REGFILE_DEC_REGISTERS 46


extern int kvx_kv3_v2_regfiles[];
extern const char **kvx_kv3_v2_modifiers[];
extern struct kvx_Register kvx_kv3_v2_registers[];

extern int kvx_kv3_v2_dec_registers[];

enum Method_kvx_kv3_v2_enum {
  Immediate_kv3_v2_brknumber = 1,
  Immediate_kv3_v2_pcrel17 = 2,
  Immediate_kv3_v2_pcrel27 = 3,
  Immediate_kv3_v2_signed10 = 4,
  Immediate_kv3_v2_signed16 = 5,
  Immediate_kv3_v2_signed27 = 6,
  Immediate_kv3_v2_signed37 = 7,
  Immediate_kv3_v2_signed43 = 8,
  Immediate_kv3_v2_signed54 = 9,
  Immediate_kv3_v2_sysnumber = 10,
  Immediate_kv3_v2_unsigned6 = 11,
  Immediate_kv3_v2_wrapped32 = 12,
  Immediate_kv3_v2_wrapped64 = 13,
  Immediate_kv3_v2_wrapped8 = 14,
  Modifier_kv3_v2_accesses = 15,
  Modifier_kv3_v2_boolcas = 16,
  Modifier_kv3_v2_cachelev = 17,
  Modifier_kv3_v2_channel = 18,
  Modifier_kv3_v2_coherency = 19,
  Modifier_kv3_v2_comparison = 20,
  Modifier_kv3_v2_conjugate = 21,
  Modifier_kv3_v2_doscale = 22,
  Modifier_kv3_v2_exunum = 23,
  Modifier_kv3_v2_floatcomp = 24,
  Modifier_kv3_v2_hindex = 25,
  Modifier_kv3_v2_lsomask = 26,
  Modifier_kv3_v2_lsumask = 27,
  Modifier_kv3_v2_lsupack = 28,
  Modifier_kv3_v2_qindex = 29,
  Modifier_kv3_v2_rounding = 30,
  Modifier_kv3_v2_scalarcond = 31,
  Modifier_kv3_v2_shuffleV = 32,
  Modifier_kv3_v2_shuffleX = 33,
  Modifier_kv3_v2_silent = 34,
  Modifier_kv3_v2_simplecond = 35,
  Modifier_kv3_v2_speculate = 36,
  Modifier_kv3_v2_splat32 = 37,
  Modifier_kv3_v2_transpose = 38,
  Modifier_kv3_v2_variant = 39,
  RegClass_kv3_v2_aloneReg = 40,
  RegClass_kv3_v2_blockReg = 41,
  RegClass_kv3_v2_blockRegE = 42,
  RegClass_kv3_v2_blockRegO = 43,
  RegClass_kv3_v2_buffer16Reg = 44,
  RegClass_kv3_v2_buffer2Reg = 45,
  RegClass_kv3_v2_buffer32Reg = 46,
  RegClass_kv3_v2_buffer4Reg = 47,
  RegClass_kv3_v2_buffer64Reg = 48,
  RegClass_kv3_v2_buffer8Reg = 49,
  RegClass_kv3_v2_coproReg = 50,
  RegClass_kv3_v2_coproReg0M4 = 51,
  RegClass_kv3_v2_coproReg1M4 = 52,
  RegClass_kv3_v2_coproReg2M4 = 53,
  RegClass_kv3_v2_coproReg3M4 = 54,
  RegClass_kv3_v2_matrixReg = 55,
  RegClass_kv3_v2_onlyfxReg = 56,
  RegClass_kv3_v2_onlygetReg = 57,
  RegClass_kv3_v2_onlyraReg = 58,
  RegClass_kv3_v2_onlysetReg = 59,
  RegClass_kv3_v2_onlyswapReg = 60,
  RegClass_kv3_v2_pairedReg = 61,
  RegClass_kv3_v2_quadReg = 62,
  RegClass_kv3_v2_singleReg = 63,
  RegClass_kv3_v2_systemReg = 64,
  RegClass_kv3_v2_tileReg = 65,
  RegClass_kv3_v2_vectorReg = 66,
  RegClass_kv3_v2_xworddReg = 67,
  RegClass_kv3_v2_xwordoReg = 68,
  RegClass_kv3_v2_xwordqReg = 69,
  RegClass_kv3_v2_xwordvReg = 70,
  RegClass_kv3_v2_xwordxReg = 71,
  Instruction_kv3_v2_abdbo = 72,
  Instruction_kv3_v2_abdd = 73,
  Instruction_kv3_v2_abdhq = 74,
  Instruction_kv3_v2_abdsbo = 75,
  Instruction_kv3_v2_abdsd = 76,
  Instruction_kv3_v2_abdshq = 77,
  Instruction_kv3_v2_abdsw = 78,
  Instruction_kv3_v2_abdswp = 79,
  Instruction_kv3_v2_abdubo = 80,
  Instruction_kv3_v2_abdud = 81,
  Instruction_kv3_v2_abduhq = 82,
  Instruction_kv3_v2_abduw = 83,
  Instruction_kv3_v2_abduwp = 84,
  Instruction_kv3_v2_abdw = 85,
  Instruction_kv3_v2_abdwp = 86,
  Instruction_kv3_v2_absbo = 87,
  Instruction_kv3_v2_absd = 88,
  Instruction_kv3_v2_abshq = 89,
  Instruction_kv3_v2_abssbo = 90,
  Instruction_kv3_v2_abssd = 91,
  Instruction_kv3_v2_absshq = 92,
  Instruction_kv3_v2_abssw = 93,
  Instruction_kv3_v2_absswp = 94,
  Instruction_kv3_v2_absw = 95,
  Instruction_kv3_v2_abswp = 96,
  Instruction_kv3_v2_acswapd = 97,
  Instruction_kv3_v2_acswapq = 98,
  Instruction_kv3_v2_acswapw = 99,
  Instruction_kv3_v2_addbo = 100,
  Instruction_kv3_v2_addcd = 101,
  Instruction_kv3_v2_addcd_i = 102,
  Instruction_kv3_v2_addd = 103,
  Instruction_kv3_v2_addhq = 104,
  Instruction_kv3_v2_addrbod = 105,
  Instruction_kv3_v2_addrhqd = 106,
  Instruction_kv3_v2_addrwpd = 107,
  Instruction_kv3_v2_addsbo = 108,
  Instruction_kv3_v2_addsd = 109,
  Instruction_kv3_v2_addshq = 110,
  Instruction_kv3_v2_addsw = 111,
  Instruction_kv3_v2_addswp = 112,
  Instruction_kv3_v2_addurbod = 113,
  Instruction_kv3_v2_addurhqd = 114,
  Instruction_kv3_v2_addurwpd = 115,
  Instruction_kv3_v2_addusbo = 116,
  Instruction_kv3_v2_addusd = 117,
  Instruction_kv3_v2_addushq = 118,
  Instruction_kv3_v2_addusw = 119,
  Instruction_kv3_v2_adduswp = 120,
  Instruction_kv3_v2_adduwd = 121,
  Instruction_kv3_v2_addw = 122,
  Instruction_kv3_v2_addwd = 123,
  Instruction_kv3_v2_addwp = 124,
  Instruction_kv3_v2_addx16bo = 125,
  Instruction_kv3_v2_addx16d = 126,
  Instruction_kv3_v2_addx16hq = 127,
  Instruction_kv3_v2_addx16uwd = 128,
  Instruction_kv3_v2_addx16w = 129,
  Instruction_kv3_v2_addx16wd = 130,
  Instruction_kv3_v2_addx16wp = 131,
  Instruction_kv3_v2_addx2bo = 132,
  Instruction_kv3_v2_addx2d = 133,
  Instruction_kv3_v2_addx2hq = 134,
  Instruction_kv3_v2_addx2uwd = 135,
  Instruction_kv3_v2_addx2w = 136,
  Instruction_kv3_v2_addx2wd = 137,
  Instruction_kv3_v2_addx2wp = 138,
  Instruction_kv3_v2_addx32d = 139,
  Instruction_kv3_v2_addx32uwd = 140,
  Instruction_kv3_v2_addx32w = 141,
  Instruction_kv3_v2_addx32wd = 142,
  Instruction_kv3_v2_addx4bo = 143,
  Instruction_kv3_v2_addx4d = 144,
  Instruction_kv3_v2_addx4hq = 145,
  Instruction_kv3_v2_addx4uwd = 146,
  Instruction_kv3_v2_addx4w = 147,
  Instruction_kv3_v2_addx4wd = 148,
  Instruction_kv3_v2_addx4wp = 149,
  Instruction_kv3_v2_addx64d = 150,
  Instruction_kv3_v2_addx64uwd = 151,
  Instruction_kv3_v2_addx64w = 152,
  Instruction_kv3_v2_addx64wd = 153,
  Instruction_kv3_v2_addx8bo = 154,
  Instruction_kv3_v2_addx8d = 155,
  Instruction_kv3_v2_addx8hq = 156,
  Instruction_kv3_v2_addx8uwd = 157,
  Instruction_kv3_v2_addx8w = 158,
  Instruction_kv3_v2_addx8wd = 159,
  Instruction_kv3_v2_addx8wp = 160,
  Instruction_kv3_v2_aladdd = 161,
  Instruction_kv3_v2_aladdw = 162,
  Instruction_kv3_v2_alclrd = 163,
  Instruction_kv3_v2_alclrw = 164,
  Instruction_kv3_v2_ald = 165,
  Instruction_kv3_v2_alw = 166,
  Instruction_kv3_v2_andd = 167,
  Instruction_kv3_v2_andnd = 168,
  Instruction_kv3_v2_andnw = 169,
  Instruction_kv3_v2_andrbod = 170,
  Instruction_kv3_v2_andrhqd = 171,
  Instruction_kv3_v2_andrwpd = 172,
  Instruction_kv3_v2_andw = 173,
  Instruction_kv3_v2_asd = 174,
  Instruction_kv3_v2_asw = 175,
  Instruction_kv3_v2_avgbo = 176,
  Instruction_kv3_v2_avghq = 177,
  Instruction_kv3_v2_avgrbo = 178,
  Instruction_kv3_v2_avgrhq = 179,
  Instruction_kv3_v2_avgrubo = 180,
  Instruction_kv3_v2_avgruhq = 181,
  Instruction_kv3_v2_avgruw = 182,
  Instruction_kv3_v2_avgruwp = 183,
  Instruction_kv3_v2_avgrw = 184,
  Instruction_kv3_v2_avgrwp = 185,
  Instruction_kv3_v2_avgubo = 186,
  Instruction_kv3_v2_avguhq = 187,
  Instruction_kv3_v2_avguw = 188,
  Instruction_kv3_v2_avguwp = 189,
  Instruction_kv3_v2_avgw = 190,
  Instruction_kv3_v2_avgwp = 191,
  Instruction_kv3_v2_await = 192,
  Instruction_kv3_v2_barrier = 193,
  Instruction_kv3_v2_break = 194,
  Instruction_kv3_v2_call = 195,
  Instruction_kv3_v2_cb = 196,
  Instruction_kv3_v2_cbsd = 197,
  Instruction_kv3_v2_cbsw = 198,
  Instruction_kv3_v2_cbswp = 199,
  Instruction_kv3_v2_clrf = 200,
  Instruction_kv3_v2_clsd = 201,
  Instruction_kv3_v2_clsw = 202,
  Instruction_kv3_v2_clswp = 203,
  Instruction_kv3_v2_clzd = 204,
  Instruction_kv3_v2_clzw = 205,
  Instruction_kv3_v2_clzwp = 206,
  Instruction_kv3_v2_cmovebo = 207,
  Instruction_kv3_v2_cmoved = 208,
  Instruction_kv3_v2_cmovehq = 209,
  Instruction_kv3_v2_cmovewp = 210,
  Instruction_kv3_v2_cmuldt = 211,
  Instruction_kv3_v2_cmulghxdt = 212,
  Instruction_kv3_v2_cmulglxdt = 213,
  Instruction_kv3_v2_cmulgmxdt = 214,
  Instruction_kv3_v2_cmulxdt = 215,
  Instruction_kv3_v2_compd = 216,
  Instruction_kv3_v2_compnbo = 217,
  Instruction_kv3_v2_compnd = 218,
  Instruction_kv3_v2_compnhq = 219,
  Instruction_kv3_v2_compnw = 220,
  Instruction_kv3_v2_compnwp = 221,
  Instruction_kv3_v2_compuwd = 222,
  Instruction_kv3_v2_compw = 223,
  Instruction_kv3_v2_compwd = 224,
  Instruction_kv3_v2_copyd = 225,
  Instruction_kv3_v2_copyo = 226,
  Instruction_kv3_v2_copyq = 227,
  Instruction_kv3_v2_copyw = 228,
  Instruction_kv3_v2_crcbellw = 229,
  Instruction_kv3_v2_crcbelmw = 230,
  Instruction_kv3_v2_crclellw = 231,
  Instruction_kv3_v2_crclelmw = 232,
  Instruction_kv3_v2_ctzd = 233,
  Instruction_kv3_v2_ctzw = 234,
  Instruction_kv3_v2_ctzwp = 235,
  Instruction_kv3_v2_d1inval = 236,
  Instruction_kv3_v2_dflushl = 237,
  Instruction_kv3_v2_dflushsw = 238,
  Instruction_kv3_v2_dinvall = 239,
  Instruction_kv3_v2_dinvalsw = 240,
  Instruction_kv3_v2_dot2suwd = 241,
  Instruction_kv3_v2_dot2suwdp = 242,
  Instruction_kv3_v2_dot2uwd = 243,
  Instruction_kv3_v2_dot2uwdp = 244,
  Instruction_kv3_v2_dot2w = 245,
  Instruction_kv3_v2_dot2wd = 246,
  Instruction_kv3_v2_dot2wdp = 247,
  Instruction_kv3_v2_dot2wzp = 248,
  Instruction_kv3_v2_dpurgel = 249,
  Instruction_kv3_v2_dpurgesw = 250,
  Instruction_kv3_v2_dtouchl = 251,
  Instruction_kv3_v2_eord = 252,
  Instruction_kv3_v2_eorrbod = 253,
  Instruction_kv3_v2_eorrhqd = 254,
  Instruction_kv3_v2_eorrwpd = 255,
  Instruction_kv3_v2_eorw = 256,
  Instruction_kv3_v2_errop = 257,
  Instruction_kv3_v2_extfs = 258,
  Instruction_kv3_v2_extfz = 259,
  Instruction_kv3_v2_fabsd = 260,
  Instruction_kv3_v2_fabshq = 261,
  Instruction_kv3_v2_fabsw = 262,
  Instruction_kv3_v2_fabswp = 263,
  Instruction_kv3_v2_faddd = 264,
  Instruction_kv3_v2_fadddc = 265,
  Instruction_kv3_v2_fadddc_c = 266,
  Instruction_kv3_v2_fadddp = 267,
  Instruction_kv3_v2_faddho = 268,
  Instruction_kv3_v2_faddhq = 269,
  Instruction_kv3_v2_faddw = 270,
  Instruction_kv3_v2_faddwc = 271,
  Instruction_kv3_v2_faddwc_c = 272,
  Instruction_kv3_v2_faddwcp = 273,
  Instruction_kv3_v2_faddwcp_c = 274,
  Instruction_kv3_v2_faddwp = 275,
  Instruction_kv3_v2_faddwq = 276,
  Instruction_kv3_v2_fcdivd = 277,
  Instruction_kv3_v2_fcdivw = 278,
  Instruction_kv3_v2_fcdivwp = 279,
  Instruction_kv3_v2_fcompd = 280,
  Instruction_kv3_v2_fcompnd = 281,
  Instruction_kv3_v2_fcompnhq = 282,
  Instruction_kv3_v2_fcompnw = 283,
  Instruction_kv3_v2_fcompnwp = 284,
  Instruction_kv3_v2_fcompw = 285,
  Instruction_kv3_v2_fdot2w = 286,
  Instruction_kv3_v2_fdot2wd = 287,
  Instruction_kv3_v2_fdot2wdp = 288,
  Instruction_kv3_v2_fdot2wzp = 289,
  Instruction_kv3_v2_fence = 290,
  Instruction_kv3_v2_ffdmasw = 291,
  Instruction_kv3_v2_ffdmaswp = 292,
  Instruction_kv3_v2_ffdmaswq = 293,
  Instruction_kv3_v2_ffdmaw = 294,
  Instruction_kv3_v2_ffdmawp = 295,
  Instruction_kv3_v2_ffdmawq = 296,
  Instruction_kv3_v2_ffdmdaw = 297,
  Instruction_kv3_v2_ffdmdawp = 298,
  Instruction_kv3_v2_ffdmdawq = 299,
  Instruction_kv3_v2_ffdmdsw = 300,
  Instruction_kv3_v2_ffdmdswp = 301,
  Instruction_kv3_v2_ffdmdswq = 302,
  Instruction_kv3_v2_ffdmsaw = 303,
  Instruction_kv3_v2_ffdmsawp = 304,
  Instruction_kv3_v2_ffdmsawq = 305,
  Instruction_kv3_v2_ffdmsw = 306,
  Instruction_kv3_v2_ffdmswp = 307,
  Instruction_kv3_v2_ffdmswq = 308,
  Instruction_kv3_v2_ffmad = 309,
  Instruction_kv3_v2_ffmaho = 310,
  Instruction_kv3_v2_ffmahq = 311,
  Instruction_kv3_v2_ffmahw = 312,
  Instruction_kv3_v2_ffmahwq = 313,
  Instruction_kv3_v2_ffmaw = 314,
  Instruction_kv3_v2_ffmawc = 315,
  Instruction_kv3_v2_ffmawcp = 316,
  Instruction_kv3_v2_ffmawd = 317,
  Instruction_kv3_v2_ffmawdp = 318,
  Instruction_kv3_v2_ffmawp = 319,
  Instruction_kv3_v2_ffmawq = 320,
  Instruction_kv3_v2_ffmsd = 321,
  Instruction_kv3_v2_ffmsho = 322,
  Instruction_kv3_v2_ffmshq = 323,
  Instruction_kv3_v2_ffmshw = 324,
  Instruction_kv3_v2_ffmshwq = 325,
  Instruction_kv3_v2_ffmsw = 326,
  Instruction_kv3_v2_ffmswc = 327,
  Instruction_kv3_v2_ffmswcp = 328,
  Instruction_kv3_v2_ffmswd = 329,
  Instruction_kv3_v2_ffmswdp = 330,
  Instruction_kv3_v2_ffmswp = 331,
  Instruction_kv3_v2_ffmswq = 332,
  Instruction_kv3_v2_fixedd = 333,
  Instruction_kv3_v2_fixedud = 334,
  Instruction_kv3_v2_fixeduw = 335,
  Instruction_kv3_v2_fixeduwp = 336,
  Instruction_kv3_v2_fixedw = 337,
  Instruction_kv3_v2_fixedwp = 338,
  Instruction_kv3_v2_floatd = 339,
  Instruction_kv3_v2_floatud = 340,
  Instruction_kv3_v2_floatuw = 341,
  Instruction_kv3_v2_floatuwp = 342,
  Instruction_kv3_v2_floatw = 343,
  Instruction_kv3_v2_floatwp = 344,
  Instruction_kv3_v2_fmaxd = 345,
  Instruction_kv3_v2_fmaxhq = 346,
  Instruction_kv3_v2_fmaxw = 347,
  Instruction_kv3_v2_fmaxwp = 348,
  Instruction_kv3_v2_fmind = 349,
  Instruction_kv3_v2_fminhq = 350,
  Instruction_kv3_v2_fminw = 351,
  Instruction_kv3_v2_fminwp = 352,
  Instruction_kv3_v2_fmm212w = 353,
  Instruction_kv3_v2_fmm222w = 354,
  Instruction_kv3_v2_fmma212w = 355,
  Instruction_kv3_v2_fmma222w = 356,
  Instruction_kv3_v2_fmms212w = 357,
  Instruction_kv3_v2_fmms222w = 358,
  Instruction_kv3_v2_fmuld = 359,
  Instruction_kv3_v2_fmulho = 360,
  Instruction_kv3_v2_fmulhq = 361,
  Instruction_kv3_v2_fmulhw = 362,
  Instruction_kv3_v2_fmulhwq = 363,
  Instruction_kv3_v2_fmulw = 364,
  Instruction_kv3_v2_fmulwc = 365,
  Instruction_kv3_v2_fmulwcp = 366,
  Instruction_kv3_v2_fmulwd = 367,
  Instruction_kv3_v2_fmulwdp = 368,
  Instruction_kv3_v2_fmulwp = 369,
  Instruction_kv3_v2_fmulwq = 370,
  Instruction_kv3_v2_fnarrowdw = 371,
  Instruction_kv3_v2_fnarrowdwp = 372,
  Instruction_kv3_v2_fnarrowwh = 373,
  Instruction_kv3_v2_fnarrowwhq = 374,
  Instruction_kv3_v2_fnegd = 375,
  Instruction_kv3_v2_fneghq = 376,
  Instruction_kv3_v2_fnegw = 377,
  Instruction_kv3_v2_fnegwp = 378,
  Instruction_kv3_v2_frecw = 379,
  Instruction_kv3_v2_frsrw = 380,
  Instruction_kv3_v2_fsbfd = 381,
  Instruction_kv3_v2_fsbfdc = 382,
  Instruction_kv3_v2_fsbfdc_c = 383,
  Instruction_kv3_v2_fsbfdp = 384,
  Instruction_kv3_v2_fsbfho = 385,
  Instruction_kv3_v2_fsbfhq = 386,
  Instruction_kv3_v2_fsbfw = 387,
  Instruction_kv3_v2_fsbfwc = 388,
  Instruction_kv3_v2_fsbfwc_c = 389,
  Instruction_kv3_v2_fsbfwcp = 390,
  Instruction_kv3_v2_fsbfwcp_c = 391,
  Instruction_kv3_v2_fsbfwp = 392,
  Instruction_kv3_v2_fsbfwq = 393,
  Instruction_kv3_v2_fsdivd = 394,
  Instruction_kv3_v2_fsdivw = 395,
  Instruction_kv3_v2_fsdivwp = 396,
  Instruction_kv3_v2_fsrecd = 397,
  Instruction_kv3_v2_fsrecw = 398,
  Instruction_kv3_v2_fsrecwp = 399,
  Instruction_kv3_v2_fsrsrd = 400,
  Instruction_kv3_v2_fsrsrw = 401,
  Instruction_kv3_v2_fsrsrwp = 402,
  Instruction_kv3_v2_fwidenlhw = 403,
  Instruction_kv3_v2_fwidenlhwp = 404,
  Instruction_kv3_v2_fwidenlwd = 405,
  Instruction_kv3_v2_fwidenmhw = 406,
  Instruction_kv3_v2_fwidenmhwp = 407,
  Instruction_kv3_v2_fwidenmwd = 408,
  Instruction_kv3_v2_get = 409,
  Instruction_kv3_v2_goto = 410,
  Instruction_kv3_v2_i1inval = 411,
  Instruction_kv3_v2_i1invals = 412,
  Instruction_kv3_v2_icall = 413,
  Instruction_kv3_v2_iget = 414,
  Instruction_kv3_v2_igoto = 415,
  Instruction_kv3_v2_insf = 416,
  Instruction_kv3_v2_iord = 417,
  Instruction_kv3_v2_iornd = 418,
  Instruction_kv3_v2_iornw = 419,
  Instruction_kv3_v2_iorrbod = 420,
  Instruction_kv3_v2_iorrhqd = 421,
  Instruction_kv3_v2_iorrwpd = 422,
  Instruction_kv3_v2_iorw = 423,
  Instruction_kv3_v2_landd = 424,
  Instruction_kv3_v2_landw = 425,
  Instruction_kv3_v2_lbs = 426,
  Instruction_kv3_v2_lbz = 427,
  Instruction_kv3_v2_ld = 428,
  Instruction_kv3_v2_lhs = 429,
  Instruction_kv3_v2_lhz = 430,
  Instruction_kv3_v2_liord = 431,
  Instruction_kv3_v2_liorw = 432,
  Instruction_kv3_v2_lnandd = 433,
  Instruction_kv3_v2_lnandw = 434,
  Instruction_kv3_v2_lniord = 435,
  Instruction_kv3_v2_lniorw = 436,
  Instruction_kv3_v2_lnord = 437,
  Instruction_kv3_v2_lnorw = 438,
  Instruction_kv3_v2_lo = 439,
  Instruction_kv3_v2_loopdo = 440,
  Instruction_kv3_v2_lord = 441,
  Instruction_kv3_v2_lorw = 442,
  Instruction_kv3_v2_lq = 443,
  Instruction_kv3_v2_lws = 444,
  Instruction_kv3_v2_lwz = 445,
  Instruction_kv3_v2_maddd = 446,
  Instruction_kv3_v2_madddt = 447,
  Instruction_kv3_v2_maddhq = 448,
  Instruction_kv3_v2_maddhwq = 449,
  Instruction_kv3_v2_maddmwq = 450,
  Instruction_kv3_v2_maddsudt = 451,
  Instruction_kv3_v2_maddsuhwq = 452,
  Instruction_kv3_v2_maddsumwq = 453,
  Instruction_kv3_v2_maddsuwd = 454,
  Instruction_kv3_v2_maddsuwdp = 455,
  Instruction_kv3_v2_maddudt = 456,
  Instruction_kv3_v2_madduhwq = 457,
  Instruction_kv3_v2_maddumwq = 458,
  Instruction_kv3_v2_madduwd = 459,
  Instruction_kv3_v2_madduwdp = 460,
  Instruction_kv3_v2_madduzdt = 461,
  Instruction_kv3_v2_maddw = 462,
  Instruction_kv3_v2_maddwd = 463,
  Instruction_kv3_v2_maddwdp = 464,
  Instruction_kv3_v2_maddwp = 465,
  Instruction_kv3_v2_maddwq = 466,
  Instruction_kv3_v2_make = 467,
  Instruction_kv3_v2_maxbo = 468,
  Instruction_kv3_v2_maxd = 469,
  Instruction_kv3_v2_maxhq = 470,
  Instruction_kv3_v2_maxrbod = 471,
  Instruction_kv3_v2_maxrhqd = 472,
  Instruction_kv3_v2_maxrwpd = 473,
  Instruction_kv3_v2_maxubo = 474,
  Instruction_kv3_v2_maxud = 475,
  Instruction_kv3_v2_maxuhq = 476,
  Instruction_kv3_v2_maxurbod = 477,
  Instruction_kv3_v2_maxurhqd = 478,
  Instruction_kv3_v2_maxurwpd = 479,
  Instruction_kv3_v2_maxuw = 480,
  Instruction_kv3_v2_maxuwp = 481,
  Instruction_kv3_v2_maxw = 482,
  Instruction_kv3_v2_maxwp = 483,
  Instruction_kv3_v2_minbo = 484,
  Instruction_kv3_v2_mind = 485,
  Instruction_kv3_v2_minhq = 486,
  Instruction_kv3_v2_minrbod = 487,
  Instruction_kv3_v2_minrhqd = 488,
  Instruction_kv3_v2_minrwpd = 489,
  Instruction_kv3_v2_minubo = 490,
  Instruction_kv3_v2_minud = 491,
  Instruction_kv3_v2_minuhq = 492,
  Instruction_kv3_v2_minurbod = 493,
  Instruction_kv3_v2_minurhqd = 494,
  Instruction_kv3_v2_minurwpd = 495,
  Instruction_kv3_v2_minuw = 496,
  Instruction_kv3_v2_minuwp = 497,
  Instruction_kv3_v2_minw = 498,
  Instruction_kv3_v2_minwp = 499,
  Instruction_kv3_v2_mm212w = 500,
  Instruction_kv3_v2_mma212w = 501,
  Instruction_kv3_v2_mms212w = 502,
  Instruction_kv3_v2_msbfd = 503,
  Instruction_kv3_v2_msbfdt = 504,
  Instruction_kv3_v2_msbfhq = 505,
  Instruction_kv3_v2_msbfhwq = 506,
  Instruction_kv3_v2_msbfmwq = 507,
  Instruction_kv3_v2_msbfsudt = 508,
  Instruction_kv3_v2_msbfsuhwq = 509,
  Instruction_kv3_v2_msbfsumwq = 510,
  Instruction_kv3_v2_msbfsuwd = 511,
  Instruction_kv3_v2_msbfsuwdp = 512,
  Instruction_kv3_v2_msbfudt = 513,
  Instruction_kv3_v2_msbfuhwq = 514,
  Instruction_kv3_v2_msbfumwq = 515,
  Instruction_kv3_v2_msbfuwd = 516,
  Instruction_kv3_v2_msbfuwdp = 517,
  Instruction_kv3_v2_msbfuzdt = 518,
  Instruction_kv3_v2_msbfw = 519,
  Instruction_kv3_v2_msbfwd = 520,
  Instruction_kv3_v2_msbfwdp = 521,
  Instruction_kv3_v2_msbfwp = 522,
  Instruction_kv3_v2_msbfwq = 523,
  Instruction_kv3_v2_muld = 524,
  Instruction_kv3_v2_muldt = 525,
  Instruction_kv3_v2_mulhq = 526,
  Instruction_kv3_v2_mulhwq = 527,
  Instruction_kv3_v2_mulmwq = 528,
  Instruction_kv3_v2_mulsudt = 529,
  Instruction_kv3_v2_mulsuhwq = 530,
  Instruction_kv3_v2_mulsumwq = 531,
  Instruction_kv3_v2_mulsuwd = 532,
  Instruction_kv3_v2_mulsuwdp = 533,
  Instruction_kv3_v2_muludt = 534,
  Instruction_kv3_v2_muluhwq = 535,
  Instruction_kv3_v2_mulumwq = 536,
  Instruction_kv3_v2_muluwd = 537,
  Instruction_kv3_v2_muluwdp = 538,
  Instruction_kv3_v2_mulw = 539,
  Instruction_kv3_v2_mulwd = 540,
  Instruction_kv3_v2_mulwdp = 541,
  Instruction_kv3_v2_mulwp = 542,
  Instruction_kv3_v2_mulwq = 543,
  Instruction_kv3_v2_nandd = 544,
  Instruction_kv3_v2_nandw = 545,
  Instruction_kv3_v2_negbo = 546,
  Instruction_kv3_v2_negd = 547,
  Instruction_kv3_v2_neghq = 548,
  Instruction_kv3_v2_negsbo = 549,
  Instruction_kv3_v2_negsd = 550,
  Instruction_kv3_v2_negshq = 551,
  Instruction_kv3_v2_negsw = 552,
  Instruction_kv3_v2_negswp = 553,
  Instruction_kv3_v2_negw = 554,
  Instruction_kv3_v2_negwp = 555,
  Instruction_kv3_v2_neord = 556,
  Instruction_kv3_v2_neorw = 557,
  Instruction_kv3_v2_niord = 558,
  Instruction_kv3_v2_niorw = 559,
  Instruction_kv3_v2_nop = 560,
  Instruction_kv3_v2_nord = 561,
  Instruction_kv3_v2_norw = 562,
  Instruction_kv3_v2_notd = 563,
  Instruction_kv3_v2_notw = 564,
  Instruction_kv3_v2_nxord = 565,
  Instruction_kv3_v2_nxorw = 566,
  Instruction_kv3_v2_ord = 567,
  Instruction_kv3_v2_ornd = 568,
  Instruction_kv3_v2_ornw = 569,
  Instruction_kv3_v2_orrbod = 570,
  Instruction_kv3_v2_orrhqd = 571,
  Instruction_kv3_v2_orrwpd = 572,
  Instruction_kv3_v2_orw = 573,
  Instruction_kv3_v2_pcrel = 574,
  Instruction_kv3_v2_ret = 575,
  Instruction_kv3_v2_rfe = 576,
  Instruction_kv3_v2_rolw = 577,
  Instruction_kv3_v2_rolwps = 578,
  Instruction_kv3_v2_rorw = 579,
  Instruction_kv3_v2_rorwps = 580,
  Instruction_kv3_v2_rswap = 581,
  Instruction_kv3_v2_sb = 582,
  Instruction_kv3_v2_sbfbo = 583,
  Instruction_kv3_v2_sbfcd = 584,
  Instruction_kv3_v2_sbfcd_i = 585,
  Instruction_kv3_v2_sbfd = 586,
  Instruction_kv3_v2_sbfhq = 587,
  Instruction_kv3_v2_sbfsbo = 588,
  Instruction_kv3_v2_sbfsd = 589,
  Instruction_kv3_v2_sbfshq = 590,
  Instruction_kv3_v2_sbfsw = 591,
  Instruction_kv3_v2_sbfswp = 592,
  Instruction_kv3_v2_sbfusbo = 593,
  Instruction_kv3_v2_sbfusd = 594,
  Instruction_kv3_v2_sbfushq = 595,
  Instruction_kv3_v2_sbfusw = 596,
  Instruction_kv3_v2_sbfuswp = 597,
  Instruction_kv3_v2_sbfuwd = 598,
  Instruction_kv3_v2_sbfw = 599,
  Instruction_kv3_v2_sbfwd = 600,
  Instruction_kv3_v2_sbfwp = 601,
  Instruction_kv3_v2_sbfx16bo = 602,
  Instruction_kv3_v2_sbfx16d = 603,
  Instruction_kv3_v2_sbfx16hq = 604,
  Instruction_kv3_v2_sbfx16uwd = 605,
  Instruction_kv3_v2_sbfx16w = 606,
  Instruction_kv3_v2_sbfx16wd = 607,
  Instruction_kv3_v2_sbfx16wp = 608,
  Instruction_kv3_v2_sbfx2bo = 609,
  Instruction_kv3_v2_sbfx2d = 610,
  Instruction_kv3_v2_sbfx2hq = 611,
  Instruction_kv3_v2_sbfx2uwd = 612,
  Instruction_kv3_v2_sbfx2w = 613,
  Instruction_kv3_v2_sbfx2wd = 614,
  Instruction_kv3_v2_sbfx2wp = 615,
  Instruction_kv3_v2_sbfx32d = 616,
  Instruction_kv3_v2_sbfx32uwd = 617,
  Instruction_kv3_v2_sbfx32w = 618,
  Instruction_kv3_v2_sbfx32wd = 619,
  Instruction_kv3_v2_sbfx4bo = 620,
  Instruction_kv3_v2_sbfx4d = 621,
  Instruction_kv3_v2_sbfx4hq = 622,
  Instruction_kv3_v2_sbfx4uwd = 623,
  Instruction_kv3_v2_sbfx4w = 624,
  Instruction_kv3_v2_sbfx4wd = 625,
  Instruction_kv3_v2_sbfx4wp = 626,
  Instruction_kv3_v2_sbfx64d = 627,
  Instruction_kv3_v2_sbfx64uwd = 628,
  Instruction_kv3_v2_sbfx64w = 629,
  Instruction_kv3_v2_sbfx64wd = 630,
  Instruction_kv3_v2_sbfx8bo = 631,
  Instruction_kv3_v2_sbfx8d = 632,
  Instruction_kv3_v2_sbfx8hq = 633,
  Instruction_kv3_v2_sbfx8uwd = 634,
  Instruction_kv3_v2_sbfx8w = 635,
  Instruction_kv3_v2_sbfx8wd = 636,
  Instruction_kv3_v2_sbfx8wp = 637,
  Instruction_kv3_v2_sbmm8 = 638,
  Instruction_kv3_v2_sbmm8d = 639,
  Instruction_kv3_v2_sbmmt8 = 640,
  Instruction_kv3_v2_sbmmt8d = 641,
  Instruction_kv3_v2_scall = 642,
  Instruction_kv3_v2_sd = 643,
  Instruction_kv3_v2_set = 644,
  Instruction_kv3_v2_sh = 645,
  Instruction_kv3_v2_sleep = 646,
  Instruction_kv3_v2_sllbos = 647,
  Instruction_kv3_v2_slld = 648,
  Instruction_kv3_v2_sllhqs = 649,
  Instruction_kv3_v2_sllw = 650,
  Instruction_kv3_v2_sllwps = 651,
  Instruction_kv3_v2_slsbos = 652,
  Instruction_kv3_v2_slsd = 653,
  Instruction_kv3_v2_slshqs = 654,
  Instruction_kv3_v2_slsw = 655,
  Instruction_kv3_v2_slswps = 656,
  Instruction_kv3_v2_slusbos = 657,
  Instruction_kv3_v2_slusd = 658,
  Instruction_kv3_v2_slushqs = 659,
  Instruction_kv3_v2_slusw = 660,
  Instruction_kv3_v2_sluswps = 661,
  Instruction_kv3_v2_so = 662,
  Instruction_kv3_v2_sq = 663,
  Instruction_kv3_v2_srabos = 664,
  Instruction_kv3_v2_srad = 665,
  Instruction_kv3_v2_srahqs = 666,
  Instruction_kv3_v2_sraw = 667,
  Instruction_kv3_v2_srawps = 668,
  Instruction_kv3_v2_srlbos = 669,
  Instruction_kv3_v2_srld = 670,
  Instruction_kv3_v2_srlhqs = 671,
  Instruction_kv3_v2_srlw = 672,
  Instruction_kv3_v2_srlwps = 673,
  Instruction_kv3_v2_srsbos = 674,
  Instruction_kv3_v2_srsd = 675,
  Instruction_kv3_v2_srshqs = 676,
  Instruction_kv3_v2_srsw = 677,
  Instruction_kv3_v2_srswps = 678,
  Instruction_kv3_v2_stop = 679,
  Instruction_kv3_v2_stsud = 680,
  Instruction_kv3_v2_stsuhq = 681,
  Instruction_kv3_v2_stsuw = 682,
  Instruction_kv3_v2_stsuwp = 683,
  Instruction_kv3_v2_sw = 684,
  Instruction_kv3_v2_sxbd = 685,
  Instruction_kv3_v2_sxhd = 686,
  Instruction_kv3_v2_sxlbhq = 687,
  Instruction_kv3_v2_sxlhwp = 688,
  Instruction_kv3_v2_sxmbhq = 689,
  Instruction_kv3_v2_sxmhwp = 690,
  Instruction_kv3_v2_sxwd = 691,
  Instruction_kv3_v2_syncgroup = 692,
  Instruction_kv3_v2_tlbdinval = 693,
  Instruction_kv3_v2_tlbiinval = 694,
  Instruction_kv3_v2_tlbprobe = 695,
  Instruction_kv3_v2_tlbread = 696,
  Instruction_kv3_v2_tlbwrite = 697,
  Instruction_kv3_v2_waitit = 698,
  Instruction_kv3_v2_wfxl = 699,
  Instruction_kv3_v2_wfxm = 700,
  Instruction_kv3_v2_xaccesso = 701,
  Instruction_kv3_v2_xaligno = 702,
  Instruction_kv3_v2_xandno = 703,
  Instruction_kv3_v2_xando = 704,
  Instruction_kv3_v2_xclampwo = 705,
  Instruction_kv3_v2_xcopyo = 706,
  Instruction_kv3_v2_xcopyv = 707,
  Instruction_kv3_v2_xcopyx = 708,
  Instruction_kv3_v2_xeoro = 709,
  Instruction_kv3_v2_xffma44hw = 710,
  Instruction_kv3_v2_xfmaxhx = 711,
  Instruction_kv3_v2_xfminhx = 712,
  Instruction_kv3_v2_xfmma484hw = 713,
  Instruction_kv3_v2_xfnarrow44wh = 714,
  Instruction_kv3_v2_xfscalewo = 715,
  Instruction_kv3_v2_xiorno = 716,
  Instruction_kv3_v2_xioro = 717,
  Instruction_kv3_v2_xlo = 718,
  Instruction_kv3_v2_xmadd44bw0 = 719,
  Instruction_kv3_v2_xmadd44bw1 = 720,
  Instruction_kv3_v2_xmaddifwo = 721,
  Instruction_kv3_v2_xmaddsu44bw0 = 722,
  Instruction_kv3_v2_xmaddsu44bw1 = 723,
  Instruction_kv3_v2_xmaddu44bw0 = 724,
  Instruction_kv3_v2_xmaddu44bw1 = 725,
  Instruction_kv3_v2_xmma4164bw = 726,
  Instruction_kv3_v2_xmma484bw = 727,
  Instruction_kv3_v2_xmmasu4164bw = 728,
  Instruction_kv3_v2_xmmasu484bw = 729,
  Instruction_kv3_v2_xmmau4164bw = 730,
  Instruction_kv3_v2_xmmau484bw = 731,
  Instruction_kv3_v2_xmmaus4164bw = 732,
  Instruction_kv3_v2_xmmaus484bw = 733,
  Instruction_kv3_v2_xmovefd = 734,
  Instruction_kv3_v2_xmovefo = 735,
  Instruction_kv3_v2_xmovefq = 736,
  Instruction_kv3_v2_xmovetd = 737,
  Instruction_kv3_v2_xmovetq = 738,
  Instruction_kv3_v2_xmsbfifwo = 739,
  Instruction_kv3_v2_xmt44d = 740,
  Instruction_kv3_v2_xnando = 741,
  Instruction_kv3_v2_xneoro = 742,
  Instruction_kv3_v2_xnioro = 743,
  Instruction_kv3_v2_xnoro = 744,
  Instruction_kv3_v2_xnxoro = 745,
  Instruction_kv3_v2_xord = 746,
  Instruction_kv3_v2_xorno = 747,
  Instruction_kv3_v2_xoro = 748,
  Instruction_kv3_v2_xorrbod = 749,
  Instruction_kv3_v2_xorrhqd = 750,
  Instruction_kv3_v2_xorrwpd = 751,
  Instruction_kv3_v2_xorw = 752,
  Instruction_kv3_v2_xrecvo = 753,
  Instruction_kv3_v2_xsbmm8dq = 754,
  Instruction_kv3_v2_xsbmmt8dq = 755,
  Instruction_kv3_v2_xsendo = 756,
  Instruction_kv3_v2_xsendrecvo = 757,
  Instruction_kv3_v2_xso = 758,
  Instruction_kv3_v2_xsplatdo = 759,
  Instruction_kv3_v2_xsplatov = 760,
  Instruction_kv3_v2_xsplatox = 761,
  Instruction_kv3_v2_xsx48bw = 762,
  Instruction_kv3_v2_xtrunc48wb = 763,
  Instruction_kv3_v2_xxoro = 764,
  Instruction_kv3_v2_xzx48bw = 765,
  Instruction_kv3_v2_zxbd = 766,
  Instruction_kv3_v2_zxhd = 767,
  Instruction_kv3_v2_zxlbhq = 768,
  Instruction_kv3_v2_zxlhwp = 769,
  Instruction_kv3_v2_zxmbhq = 770,
  Instruction_kv3_v2_zxmhwp = 771,
  Instruction_kv3_v2_zxwd = 772,
  Separator_kv3_v2_comma = 773,
  Separator_kv3_v2_equal = 774,
  Separator_kv3_v2_qmark = 775,
  Separator_kv3_v2_rsbracket = 776,
  Separator_kv3_v2_lsbracket = 777
};

enum Modifier_kv3_v2_exunum_enum {
  Modifier_kv3_v2_exunum_ALU0=0,
  Modifier_kv3_v2_exunum_ALU1=1,
  Modifier_kv3_v2_exunum_MAU=2,
  Modifier_kv3_v2_exunum_LSU=3,
};

extern const char *mod_kv3_v2_exunum[];
extern const char *mod_kv3_v2_scalarcond[];
extern const char *mod_kv3_v2_lsomask[];
extern const char *mod_kv3_v2_lsumask[];
extern const char *mod_kv3_v2_lsupack[];
extern const char *mod_kv3_v2_simplecond[];
extern const char *mod_kv3_v2_comparison[];
extern const char *mod_kv3_v2_floatcomp[];
extern const char *mod_kv3_v2_rounding[];
extern const char *mod_kv3_v2_silent[];
extern const char *mod_kv3_v2_variant[];
extern const char *mod_kv3_v2_speculate[];
extern const char *mod_kv3_v2_doscale[];
extern const char *mod_kv3_v2_qindex[];
extern const char *mod_kv3_v2_hindex[];
extern const char *mod_kv3_v2_cachelev[];
extern const char *mod_kv3_v2_coherency[];
extern const char *mod_kv3_v2_boolcas[];
extern const char *mod_kv3_v2_accesses[];
extern const char *mod_kv3_v2_channel[];
extern const char *mod_kv3_v2_conjugate[];
extern const char *mod_kv3_v2_transpose[];
extern const char *mod_kv3_v2_shuffleV[];
extern const char *mod_kv3_v2_shuffleX[];
extern const char *mod_kv3_v2_splat32[];
typedef enum {
  Bundling_kv3_v2_ALL,
  Bundling_kv3_v2_BCU,
  Bundling_kv3_v2_EXT,
  Bundling_kv3_v2_FULL,
  Bundling_kv3_v2_FULL_X,
  Bundling_kv3_v2_FULL_Y,
  Bundling_kv3_v2_LITE,
  Bundling_kv3_v2_LITE_X,
  Bundling_kv3_v2_LITE_Y,
  Bundling_kv3_v2_MAU,
  Bundling_kv3_v2_MAU_X,
  Bundling_kv3_v2_MAU_Y,
  Bundling_kv3_v2_LSU,
  Bundling_kv3_v2_LSU_X,
  Bundling_kv3_v2_LSU_Y,
  Bundling_kv3_v2_TINY,
  Bundling_kv3_v2_TINY_X,
  Bundling_kv3_v2_TINY_Y,
  Bundling_kv3_v2_NOP,
} Bundling_kv3_v2;


static const char *bundling_kv3_v2_names(Bundling_kv3_v2 bundling) __attribute__((unused));
static const char *bundling_kv3_v2_names(Bundling_kv3_v2 bundling) {
  switch(bundling) {
  case Bundling_kv3_v2_ALL: return "Bundling_kv3_v2_ALL";
  case Bundling_kv3_v2_BCU: return "Bundling_kv3_v2_BCU";
  case Bundling_kv3_v2_EXT: return "Bundling_kv3_v2_EXT";
  case Bundling_kv3_v2_FULL: return "Bundling_kv3_v2_FULL";
  case Bundling_kv3_v2_FULL_X: return "Bundling_kv3_v2_FULL_X";
  case Bundling_kv3_v2_FULL_Y: return "Bundling_kv3_v2_FULL_Y";
  case Bundling_kv3_v2_LITE: return "Bundling_kv3_v2_LITE";
  case Bundling_kv3_v2_LITE_X: return "Bundling_kv3_v2_LITE_X";
  case Bundling_kv3_v2_LITE_Y: return "Bundling_kv3_v2_LITE_Y";
  case Bundling_kv3_v2_MAU: return "Bundling_kv3_v2_MAU";
  case Bundling_kv3_v2_MAU_X: return "Bundling_kv3_v2_MAU_X";
  case Bundling_kv3_v2_MAU_Y: return "Bundling_kv3_v2_MAU_Y";
  case Bundling_kv3_v2_LSU: return "Bundling_kv3_v2_LSU";
  case Bundling_kv3_v2_LSU_X: return "Bundling_kv3_v2_LSU_X";
  case Bundling_kv3_v2_LSU_Y: return "Bundling_kv3_v2_LSU_Y";
  case Bundling_kv3_v2_TINY: return "Bundling_kv3_v2_TINY";
  case Bundling_kv3_v2_TINY_X: return "Bundling_kv3_v2_TINY_X";
  case Bundling_kv3_v2_TINY_Y: return "Bundling_kv3_v2_TINY_Y";
  case Bundling_kv3_v2_NOP: return "Bundling_kv3_v2_NOP";
  };
  return "unknown bundling";
};

/* Resources list */
#define Resource_kv3_v2_ISSUE 0
#define Resource_kv3_v2_TINY 1
#define Resource_kv3_v2_LITE 2
#define Resource_kv3_v2_FULL 3
#define Resource_kv3_v2_LSU 4
#define Resource_kv3_v2_MAU 5
#define Resource_kv3_v2_BCU 6
#define Resource_kv3_v2_EXT 7
#define Resource_kv3_v2_XFER 8
#define Resource_kv3_v2_AUXR 9
#define Resource_kv3_v2_AUXW 10
#define Resource_kv3_v2_MEMW 11
#define Resource_kv3_v2_CRRP 12
#define Resource_kv3_v2_CRWL 13
#define Resource_kv3_v2_CRWH 14
#define Resource_kv3_v2_NOP 15
#define kvx_kv3_v2_RESOURCE_MAX 16


/* Reservations list */
#define Reservation_kv3_v2_ALL 0
#define Reservation_kv3_v2_ALU_NOP 1
#define Reservation_kv3_v2_ALU_TINY 2
#define Reservation_kv3_v2_ALU_TINY_X 3
#define Reservation_kv3_v2_ALU_TINY_Y 4
#define Reservation_kv3_v2_ALU_TINY_CRRP 5
#define Reservation_kv3_v2_ALU_TINY_CRWL_CRWH 6
#define Reservation_kv3_v2_ALU_TINY_CRWL_CRWH_X 7
#define Reservation_kv3_v2_ALU_TINY_CRWL_CRWH_Y 8
#define Reservation_kv3_v2_ALU_TINY_CRRP_CRWL_CRWH 9
#define Reservation_kv3_v2_ALU_TINY_CRWL 10
#define Reservation_kv3_v2_ALU_TINY_CRWH 11
#define Reservation_kv3_v2_ALU_LITE 12
#define Reservation_kv3_v2_ALU_LITE_X 13
#define Reservation_kv3_v2_ALU_LITE_Y 14
#define Reservation_kv3_v2_ALU_LITE_CRWL 15
#define Reservation_kv3_v2_ALU_LITE_CRWH 16
#define Reservation_kv3_v2_ALU_FULL 17
#define Reservation_kv3_v2_ALU_FULL_X 18
#define Reservation_kv3_v2_ALU_FULL_Y 19
#define Reservation_kv3_v2_BCU 20
#define Reservation_kv3_v2_BCU_XFER 21
#define Reservation_kv3_v2_BCU_CRRP_CRWL_CRWH 22
#define Reservation_kv3_v2_BCU_TINY_AUXW_CRRP 23
#define Reservation_kv3_v2_BCU_TINY_TINY_MAU_XNOP 24
#define Reservation_kv3_v2_EXT 25
#define Reservation_kv3_v2_LSU 26
#define Reservation_kv3_v2_LSU_X 27
#define Reservation_kv3_v2_LSU_Y 28
#define Reservation_kv3_v2_LSU_CRRP 29
#define Reservation_kv3_v2_LSU_CRRP_X 30
#define Reservation_kv3_v2_LSU_CRRP_Y 31
#define Reservation_kv3_v2_LSU_AUXR 32
#define Reservation_kv3_v2_LSU_AUXR_X 33
#define Reservation_kv3_v2_LSU_AUXR_Y 34
#define Reservation_kv3_v2_LSU_AUXW 35
#define Reservation_kv3_v2_LSU_AUXW_X 36
#define Reservation_kv3_v2_LSU_AUXW_Y 37
#define Reservation_kv3_v2_LSU_AUXR_AUXW 38
#define Reservation_kv3_v2_LSU_AUXR_AUXW_X 39
#define Reservation_kv3_v2_LSU_AUXR_AUXW_Y 40
#define Reservation_kv3_v2_MAU 41
#define Reservation_kv3_v2_MAU_X 42
#define Reservation_kv3_v2_MAU_Y 43
#define Reservation_kv3_v2_MAU_AUXR 44
#define Reservation_kv3_v2_MAU_AUXR_X 45
#define Reservation_kv3_v2_MAU_AUXR_Y 46


extern struct kvx_reloc kv3_v2_rel16_reloc;
extern struct kvx_reloc kv3_v2_rel32_reloc;
extern struct kvx_reloc kv3_v2_rel64_reloc;
extern struct kvx_reloc kv3_v2_pcrel_signed16_reloc;
extern struct kvx_reloc kv3_v2_pcrel17_reloc;
extern struct kvx_reloc kv3_v2_pcrel27_reloc;
extern struct kvx_reloc kv3_v2_pcrel32_reloc;
extern struct kvx_reloc kv3_v2_pcrel_signed37_reloc;
extern struct kvx_reloc kv3_v2_pcrel_signed43_reloc;
extern struct kvx_reloc kv3_v2_pcrel_signed64_reloc;
extern struct kvx_reloc kv3_v2_pcrel64_reloc;
extern struct kvx_reloc kv3_v2_signed16_reloc;
extern struct kvx_reloc kv3_v2_signed32_reloc;
extern struct kvx_reloc kv3_v2_signed37_reloc;
extern struct kvx_reloc kv3_v2_gotoff_signed37_reloc;
extern struct kvx_reloc kv3_v2_gotoff_signed43_reloc;
extern struct kvx_reloc kv3_v2_gotoff_32_reloc;
extern struct kvx_reloc kv3_v2_gotoff_64_reloc;
extern struct kvx_reloc kv3_v2_got_32_reloc;
extern struct kvx_reloc kv3_v2_got_signed37_reloc;
extern struct kvx_reloc kv3_v2_got_signed43_reloc;
extern struct kvx_reloc kv3_v2_got_64_reloc;
extern struct kvx_reloc kv3_v2_glob_dat_reloc;
extern struct kvx_reloc kv3_v2_copy_reloc;
extern struct kvx_reloc kv3_v2_jump_slot_reloc;
extern struct kvx_reloc kv3_v2_relative_reloc;
extern struct kvx_reloc kv3_v2_signed43_reloc;
extern struct kvx_reloc kv3_v2_signed64_reloc;
extern struct kvx_reloc kv3_v2_gotaddr_signed37_reloc;
extern struct kvx_reloc kv3_v2_gotaddr_signed43_reloc;
extern struct kvx_reloc kv3_v2_gotaddr_signed64_reloc;
extern struct kvx_reloc kv3_v2_dtpmod64_reloc;
extern struct kvx_reloc kv3_v2_dtpoff64_reloc;
extern struct kvx_reloc kv3_v2_dtpoff_signed37_reloc;
extern struct kvx_reloc kv3_v2_dtpoff_signed43_reloc;
extern struct kvx_reloc kv3_v2_tlsgd_signed37_reloc;
extern struct kvx_reloc kv3_v2_tlsgd_signed43_reloc;
extern struct kvx_reloc kv3_v2_tlsld_signed37_reloc;
extern struct kvx_reloc kv3_v2_tlsld_signed43_reloc;
extern struct kvx_reloc kv3_v2_tpoff64_reloc;
extern struct kvx_reloc kv3_v2_tlsie_signed37_reloc;
extern struct kvx_reloc kv3_v2_tlsie_signed43_reloc;
extern struct kvx_reloc kv3_v2_tlsle_signed37_reloc;
extern struct kvx_reloc kv3_v2_tlsle_signed43_reloc;
extern struct kvx_reloc kv3_v2_rel8_reloc;

#define KVX_REGFILE_FIRST_GPR 0
#define KVX_REGFILE_LAST_GPR 1
#define KVX_REGFILE_DEC_GPR 2
#define KVX_REGFILE_FIRST_PGR 3
#define KVX_REGFILE_LAST_PGR 4
#define KVX_REGFILE_DEC_PGR 5
#define KVX_REGFILE_FIRST_QGR 6
#define KVX_REGFILE_LAST_QGR 7
#define KVX_REGFILE_DEC_QGR 8
#define KVX_REGFILE_FIRST_SFR 9
#define KVX_REGFILE_LAST_SFR 10
#define KVX_REGFILE_DEC_SFR 11
#define KVX_REGFILE_FIRST_X16R 12
#define KVX_REGFILE_LAST_X16R 13
#define KVX_REGFILE_DEC_X16R 14
#define KVX_REGFILE_FIRST_X2R 15
#define KVX_REGFILE_LAST_X2R 16
#define KVX_REGFILE_DEC_X2R 17
#define KVX_REGFILE_FIRST_X32R 18
#define KVX_REGFILE_LAST_X32R 19
#define KVX_REGFILE_DEC_X32R 20
#define KVX_REGFILE_FIRST_X4R 21
#define KVX_REGFILE_LAST_X4R 22
#define KVX_REGFILE_DEC_X4R 23
#define KVX_REGFILE_FIRST_X64R 24
#define KVX_REGFILE_LAST_X64R 25
#define KVX_REGFILE_DEC_X64R 26
#define KVX_REGFILE_FIRST_X8R 27
#define KVX_REGFILE_LAST_X8R 28
#define KVX_REGFILE_DEC_X8R 29
#define KVX_REGFILE_FIRST_XBR 30
#define KVX_REGFILE_LAST_XBR 31
#define KVX_REGFILE_DEC_XBR 32
#define KVX_REGFILE_FIRST_XCR 33
#define KVX_REGFILE_LAST_XCR 34
#define KVX_REGFILE_DEC_XCR 35
#define KVX_REGFILE_FIRST_XMR 36
#define KVX_REGFILE_LAST_XMR 37
#define KVX_REGFILE_DEC_XMR 38
#define KVX_REGFILE_FIRST_XTR 39
#define KVX_REGFILE_LAST_XTR 40
#define KVX_REGFILE_DEC_XTR 41
#define KVX_REGFILE_FIRST_XVR 42
#define KVX_REGFILE_LAST_XVR 43
#define KVX_REGFILE_DEC_XVR 44
#define KVX_REGFILE_REGISTERS 45
#define KVX_REGFILE_DEC_REGISTERS 46


extern int kvx_kv4_v1_regfiles[];
extern const char **kvx_kv4_v1_modifiers[];
extern struct kvx_Register kvx_kv4_v1_registers[];

extern int kvx_kv4_v1_dec_registers[];

enum Method_kvx_kv4_v1_enum {
  Immediate_kv4_v1_brknumber = 1,
  Immediate_kv4_v1_pcrel17 = 2,
  Immediate_kv4_v1_pcrel27 = 3,
  Immediate_kv4_v1_signed10 = 4,
  Immediate_kv4_v1_signed16 = 5,
  Immediate_kv4_v1_signed27 = 6,
  Immediate_kv4_v1_signed37 = 7,
  Immediate_kv4_v1_signed43 = 8,
  Immediate_kv4_v1_signed54 = 9,
  Immediate_kv4_v1_sysnumber = 10,
  Immediate_kv4_v1_unsigned6 = 11,
  Immediate_kv4_v1_wrapped32 = 12,
  Immediate_kv4_v1_wrapped64 = 13,
  Immediate_kv4_v1_wrapped8 = 14,
  Modifier_kv4_v1_accesses = 15,
  Modifier_kv4_v1_boolcas = 16,
  Modifier_kv4_v1_cachelev = 17,
  Modifier_kv4_v1_channel = 18,
  Modifier_kv4_v1_coherency = 19,
  Modifier_kv4_v1_comparison = 20,
  Modifier_kv4_v1_doscale = 21,
  Modifier_kv4_v1_exunum = 22,
  Modifier_kv4_v1_floatcomp = 23,
  Modifier_kv4_v1_hindex = 24,
  Modifier_kv4_v1_lsomask = 25,
  Modifier_kv4_v1_lsumask = 26,
  Modifier_kv4_v1_lsupack = 27,
  Modifier_kv4_v1_qindex = 28,
  Modifier_kv4_v1_rounding = 29,
  Modifier_kv4_v1_scalarcond = 30,
  Modifier_kv4_v1_shuffleV = 31,
  Modifier_kv4_v1_shuffleX = 32,
  Modifier_kv4_v1_simplecond = 33,
  Modifier_kv4_v1_speculate = 34,
  Modifier_kv4_v1_splat32 = 35,
  Modifier_kv4_v1_variant = 36,
  RegClass_kv4_v1_aloneReg = 37,
  RegClass_kv4_v1_blockReg = 38,
  RegClass_kv4_v1_blockRegE = 39,
  RegClass_kv4_v1_blockRegO = 40,
  RegClass_kv4_v1_buffer16Reg = 41,
  RegClass_kv4_v1_buffer2Reg = 42,
  RegClass_kv4_v1_buffer32Reg = 43,
  RegClass_kv4_v1_buffer4Reg = 44,
  RegClass_kv4_v1_buffer64Reg = 45,
  RegClass_kv4_v1_buffer8Reg = 46,
  RegClass_kv4_v1_coproReg = 47,
  RegClass_kv4_v1_coproReg0M4 = 48,
  RegClass_kv4_v1_coproReg1M4 = 49,
  RegClass_kv4_v1_coproReg2M4 = 50,
  RegClass_kv4_v1_coproReg3M4 = 51,
  RegClass_kv4_v1_matrixReg = 52,
  RegClass_kv4_v1_onlyfxReg = 53,
  RegClass_kv4_v1_onlygetReg = 54,
  RegClass_kv4_v1_onlyraReg = 55,
  RegClass_kv4_v1_onlysetReg = 56,
  RegClass_kv4_v1_onlyswapReg = 57,
  RegClass_kv4_v1_pairedReg = 58,
  RegClass_kv4_v1_quadReg = 59,
  RegClass_kv4_v1_singleReg = 60,
  RegClass_kv4_v1_systemReg = 61,
  RegClass_kv4_v1_tileReg = 62,
  RegClass_kv4_v1_vectorReg = 63,
  RegClass_kv4_v1_xworddReg = 64,
  RegClass_kv4_v1_xwordoReg = 65,
  RegClass_kv4_v1_xwordqReg = 66,
  RegClass_kv4_v1_xwordvReg = 67,
  RegClass_kv4_v1_xwordxReg = 68,
  Instruction_kv4_v1_abdbo = 69,
  Instruction_kv4_v1_abdd = 70,
  Instruction_kv4_v1_abdhq = 71,
  Instruction_kv4_v1_abdsbo = 72,
  Instruction_kv4_v1_abdsd = 73,
  Instruction_kv4_v1_abdshq = 74,
  Instruction_kv4_v1_abdsw = 75,
  Instruction_kv4_v1_abdswp = 76,
  Instruction_kv4_v1_abdubo = 77,
  Instruction_kv4_v1_abdud = 78,
  Instruction_kv4_v1_abduhq = 79,
  Instruction_kv4_v1_abduw = 80,
  Instruction_kv4_v1_abduwp = 81,
  Instruction_kv4_v1_abdw = 82,
  Instruction_kv4_v1_abdwp = 83,
  Instruction_kv4_v1_absbo = 84,
  Instruction_kv4_v1_absd = 85,
  Instruction_kv4_v1_abshq = 86,
  Instruction_kv4_v1_abssbo = 87,
  Instruction_kv4_v1_abssd = 88,
  Instruction_kv4_v1_absshq = 89,
  Instruction_kv4_v1_abssw = 90,
  Instruction_kv4_v1_absswp = 91,
  Instruction_kv4_v1_absw = 92,
  Instruction_kv4_v1_abswp = 93,
  Instruction_kv4_v1_acswapd = 94,
  Instruction_kv4_v1_acswapq = 95,
  Instruction_kv4_v1_acswapw = 96,
  Instruction_kv4_v1_addbo = 97,
  Instruction_kv4_v1_addcd = 98,
  Instruction_kv4_v1_addcd_i = 99,
  Instruction_kv4_v1_addd = 100,
  Instruction_kv4_v1_addhq = 101,
  Instruction_kv4_v1_addrbod = 102,
  Instruction_kv4_v1_addrhqd = 103,
  Instruction_kv4_v1_addrwpd = 104,
  Instruction_kv4_v1_addsbo = 105,
  Instruction_kv4_v1_addsd = 106,
  Instruction_kv4_v1_addshq = 107,
  Instruction_kv4_v1_addsw = 108,
  Instruction_kv4_v1_addswp = 109,
  Instruction_kv4_v1_addurbod = 110,
  Instruction_kv4_v1_addurhqd = 111,
  Instruction_kv4_v1_addurwpd = 112,
  Instruction_kv4_v1_addusbo = 113,
  Instruction_kv4_v1_addusd = 114,
  Instruction_kv4_v1_addushq = 115,
  Instruction_kv4_v1_addusw = 116,
  Instruction_kv4_v1_adduswp = 117,
  Instruction_kv4_v1_adduwd = 118,
  Instruction_kv4_v1_addw = 119,
  Instruction_kv4_v1_addwd = 120,
  Instruction_kv4_v1_addwp = 121,
  Instruction_kv4_v1_addx16bo = 122,
  Instruction_kv4_v1_addx16d = 123,
  Instruction_kv4_v1_addx16hq = 124,
  Instruction_kv4_v1_addx16uwd = 125,
  Instruction_kv4_v1_addx16w = 126,
  Instruction_kv4_v1_addx16wd = 127,
  Instruction_kv4_v1_addx16wp = 128,
  Instruction_kv4_v1_addx2bo = 129,
  Instruction_kv4_v1_addx2d = 130,
  Instruction_kv4_v1_addx2hq = 131,
  Instruction_kv4_v1_addx2uwd = 132,
  Instruction_kv4_v1_addx2w = 133,
  Instruction_kv4_v1_addx2wd = 134,
  Instruction_kv4_v1_addx2wp = 135,
  Instruction_kv4_v1_addx32d = 136,
  Instruction_kv4_v1_addx32uwd = 137,
  Instruction_kv4_v1_addx32w = 138,
  Instruction_kv4_v1_addx32wd = 139,
  Instruction_kv4_v1_addx4bo = 140,
  Instruction_kv4_v1_addx4d = 141,
  Instruction_kv4_v1_addx4hq = 142,
  Instruction_kv4_v1_addx4uwd = 143,
  Instruction_kv4_v1_addx4w = 144,
  Instruction_kv4_v1_addx4wd = 145,
  Instruction_kv4_v1_addx4wp = 146,
  Instruction_kv4_v1_addx64d = 147,
  Instruction_kv4_v1_addx64uwd = 148,
  Instruction_kv4_v1_addx64w = 149,
  Instruction_kv4_v1_addx64wd = 150,
  Instruction_kv4_v1_addx8bo = 151,
  Instruction_kv4_v1_addx8d = 152,
  Instruction_kv4_v1_addx8hq = 153,
  Instruction_kv4_v1_addx8uwd = 154,
  Instruction_kv4_v1_addx8w = 155,
  Instruction_kv4_v1_addx8wd = 156,
  Instruction_kv4_v1_addx8wp = 157,
  Instruction_kv4_v1_aladdd = 158,
  Instruction_kv4_v1_aladdw = 159,
  Instruction_kv4_v1_alclrd = 160,
  Instruction_kv4_v1_alclrw = 161,
  Instruction_kv4_v1_ald = 162,
  Instruction_kv4_v1_alw = 163,
  Instruction_kv4_v1_andd = 164,
  Instruction_kv4_v1_andnd = 165,
  Instruction_kv4_v1_andnw = 166,
  Instruction_kv4_v1_andrbod = 167,
  Instruction_kv4_v1_andrhqd = 168,
  Instruction_kv4_v1_andrwpd = 169,
  Instruction_kv4_v1_andw = 170,
  Instruction_kv4_v1_asd = 171,
  Instruction_kv4_v1_asw = 172,
  Instruction_kv4_v1_avgbo = 173,
  Instruction_kv4_v1_avghq = 174,
  Instruction_kv4_v1_avgrbo = 175,
  Instruction_kv4_v1_avgrhq = 176,
  Instruction_kv4_v1_avgrubo = 177,
  Instruction_kv4_v1_avgruhq = 178,
  Instruction_kv4_v1_avgruw = 179,
  Instruction_kv4_v1_avgruwp = 180,
  Instruction_kv4_v1_avgrw = 181,
  Instruction_kv4_v1_avgrwp = 182,
  Instruction_kv4_v1_avgubo = 183,
  Instruction_kv4_v1_avguhq = 184,
  Instruction_kv4_v1_avguw = 185,
  Instruction_kv4_v1_avguwp = 186,
  Instruction_kv4_v1_avgw = 187,
  Instruction_kv4_v1_avgwp = 188,
  Instruction_kv4_v1_await = 189,
  Instruction_kv4_v1_barrier = 190,
  Instruction_kv4_v1_break = 191,
  Instruction_kv4_v1_call = 192,
  Instruction_kv4_v1_cb = 193,
  Instruction_kv4_v1_cbsd = 194,
  Instruction_kv4_v1_cbsw = 195,
  Instruction_kv4_v1_cbswp = 196,
  Instruction_kv4_v1_clrf = 197,
  Instruction_kv4_v1_clsd = 198,
  Instruction_kv4_v1_clsw = 199,
  Instruction_kv4_v1_clswp = 200,
  Instruction_kv4_v1_clzd = 201,
  Instruction_kv4_v1_clzw = 202,
  Instruction_kv4_v1_clzwp = 203,
  Instruction_kv4_v1_cmovebo = 204,
  Instruction_kv4_v1_cmoved = 205,
  Instruction_kv4_v1_cmovehq = 206,
  Instruction_kv4_v1_cmovewp = 207,
  Instruction_kv4_v1_cmuldt = 208,
  Instruction_kv4_v1_cmulghxdt = 209,
  Instruction_kv4_v1_cmulglxdt = 210,
  Instruction_kv4_v1_cmulgmxdt = 211,
  Instruction_kv4_v1_cmulxdt = 212,
  Instruction_kv4_v1_compd = 213,
  Instruction_kv4_v1_compnbo = 214,
  Instruction_kv4_v1_compnd = 215,
  Instruction_kv4_v1_compnhq = 216,
  Instruction_kv4_v1_compnw = 217,
  Instruction_kv4_v1_compnwp = 218,
  Instruction_kv4_v1_compuwd = 219,
  Instruction_kv4_v1_compw = 220,
  Instruction_kv4_v1_compwd = 221,
  Instruction_kv4_v1_copyd = 222,
  Instruction_kv4_v1_copyo = 223,
  Instruction_kv4_v1_copyq = 224,
  Instruction_kv4_v1_copyw = 225,
  Instruction_kv4_v1_crcbellw = 226,
  Instruction_kv4_v1_crcbelmw = 227,
  Instruction_kv4_v1_crclellw = 228,
  Instruction_kv4_v1_crclelmw = 229,
  Instruction_kv4_v1_ctzd = 230,
  Instruction_kv4_v1_ctzw = 231,
  Instruction_kv4_v1_ctzwp = 232,
  Instruction_kv4_v1_d1inval = 233,
  Instruction_kv4_v1_dflushl = 234,
  Instruction_kv4_v1_dflushsw = 235,
  Instruction_kv4_v1_dinvall = 236,
  Instruction_kv4_v1_dinvalsw = 237,
  Instruction_kv4_v1_dpurgel = 238,
  Instruction_kv4_v1_dpurgesw = 239,
  Instruction_kv4_v1_dtouchl = 240,
  Instruction_kv4_v1_eord = 241,
  Instruction_kv4_v1_eorrbod = 242,
  Instruction_kv4_v1_eorrhqd = 243,
  Instruction_kv4_v1_eorrwpd = 244,
  Instruction_kv4_v1_eorw = 245,
  Instruction_kv4_v1_errop = 246,
  Instruction_kv4_v1_extfs = 247,
  Instruction_kv4_v1_extfz = 248,
  Instruction_kv4_v1_fabsd = 249,
  Instruction_kv4_v1_fabshq = 250,
  Instruction_kv4_v1_fabsw = 251,
  Instruction_kv4_v1_fabswp = 252,
  Instruction_kv4_v1_faddd = 253,
  Instruction_kv4_v1_faddhq = 254,
  Instruction_kv4_v1_faddw = 255,
  Instruction_kv4_v1_faddwc = 256,
  Instruction_kv4_v1_faddwp = 257,
  Instruction_kv4_v1_fcompd = 258,
  Instruction_kv4_v1_fcompnd = 259,
  Instruction_kv4_v1_fcompnhq = 260,
  Instruction_kv4_v1_fcompnw = 261,
  Instruction_kv4_v1_fcompnwp = 262,
  Instruction_kv4_v1_fcompw = 263,
  Instruction_kv4_v1_fence = 264,
  Instruction_kv4_v1_ffmad = 265,
  Instruction_kv4_v1_ffmahq = 266,
  Instruction_kv4_v1_ffmaw = 267,
  Instruction_kv4_v1_ffmawc = 268,
  Instruction_kv4_v1_ffmawp = 269,
  Instruction_kv4_v1_ffmsd = 270,
  Instruction_kv4_v1_ffmshq = 271,
  Instruction_kv4_v1_ffmsw = 272,
  Instruction_kv4_v1_ffmswc = 273,
  Instruction_kv4_v1_ffmswp = 274,
  Instruction_kv4_v1_fixedd = 275,
  Instruction_kv4_v1_fixedud = 276,
  Instruction_kv4_v1_fixeduw = 277,
  Instruction_kv4_v1_fixeduwp = 278,
  Instruction_kv4_v1_fixedw = 279,
  Instruction_kv4_v1_fixedwp = 280,
  Instruction_kv4_v1_floatd = 281,
  Instruction_kv4_v1_floatud = 282,
  Instruction_kv4_v1_floatuw = 283,
  Instruction_kv4_v1_floatuwp = 284,
  Instruction_kv4_v1_floatw = 285,
  Instruction_kv4_v1_floatwp = 286,
  Instruction_kv4_v1_fmaxd = 287,
  Instruction_kv4_v1_fmaxhq = 288,
  Instruction_kv4_v1_fmaxw = 289,
  Instruction_kv4_v1_fmaxwp = 290,
  Instruction_kv4_v1_fmind = 291,
  Instruction_kv4_v1_fminhq = 292,
  Instruction_kv4_v1_fminw = 293,
  Instruction_kv4_v1_fminwp = 294,
  Instruction_kv4_v1_fmuld = 295,
  Instruction_kv4_v1_fmulhq = 296,
  Instruction_kv4_v1_fmulw = 297,
  Instruction_kv4_v1_fmulwc = 298,
  Instruction_kv4_v1_fmulwp = 299,
  Instruction_kv4_v1_fnarrowdw = 300,
  Instruction_kv4_v1_fnarrowdwp = 301,
  Instruction_kv4_v1_fnarrowwh = 302,
  Instruction_kv4_v1_fnarrowwhq = 303,
  Instruction_kv4_v1_fnegd = 304,
  Instruction_kv4_v1_fneghq = 305,
  Instruction_kv4_v1_fnegw = 306,
  Instruction_kv4_v1_fnegwp = 307,
  Instruction_kv4_v1_frecw = 308,
  Instruction_kv4_v1_frsrw = 309,
  Instruction_kv4_v1_fsbfd = 310,
  Instruction_kv4_v1_fsbfhq = 311,
  Instruction_kv4_v1_fsbfw = 312,
  Instruction_kv4_v1_fsbfwc = 313,
  Instruction_kv4_v1_fsbfwp = 314,
  Instruction_kv4_v1_fsrecd = 315,
  Instruction_kv4_v1_fsrecw = 316,
  Instruction_kv4_v1_fsrecwp = 317,
  Instruction_kv4_v1_fsrsrd = 318,
  Instruction_kv4_v1_fsrsrw = 319,
  Instruction_kv4_v1_fsrsrwp = 320,
  Instruction_kv4_v1_fwidenlhw = 321,
  Instruction_kv4_v1_fwidenlhwp = 322,
  Instruction_kv4_v1_fwidenlwd = 323,
  Instruction_kv4_v1_fwidenmhw = 324,
  Instruction_kv4_v1_fwidenmhwp = 325,
  Instruction_kv4_v1_fwidenmwd = 326,
  Instruction_kv4_v1_get = 327,
  Instruction_kv4_v1_goto = 328,
  Instruction_kv4_v1_i1inval = 329,
  Instruction_kv4_v1_i1invals = 330,
  Instruction_kv4_v1_icall = 331,
  Instruction_kv4_v1_iget = 332,
  Instruction_kv4_v1_igoto = 333,
  Instruction_kv4_v1_insf = 334,
  Instruction_kv4_v1_iord = 335,
  Instruction_kv4_v1_iornd = 336,
  Instruction_kv4_v1_iornw = 337,
  Instruction_kv4_v1_iorrbod = 338,
  Instruction_kv4_v1_iorrhqd = 339,
  Instruction_kv4_v1_iorrwpd = 340,
  Instruction_kv4_v1_iorw = 341,
  Instruction_kv4_v1_landd = 342,
  Instruction_kv4_v1_landw = 343,
  Instruction_kv4_v1_lbs = 344,
  Instruction_kv4_v1_lbz = 345,
  Instruction_kv4_v1_ld = 346,
  Instruction_kv4_v1_lhs = 347,
  Instruction_kv4_v1_lhz = 348,
  Instruction_kv4_v1_liord = 349,
  Instruction_kv4_v1_liorw = 350,
  Instruction_kv4_v1_lnandd = 351,
  Instruction_kv4_v1_lnandw = 352,
  Instruction_kv4_v1_lniord = 353,
  Instruction_kv4_v1_lniorw = 354,
  Instruction_kv4_v1_lo = 355,
  Instruction_kv4_v1_loopdo = 356,
  Instruction_kv4_v1_lq = 357,
  Instruction_kv4_v1_lws = 358,
  Instruction_kv4_v1_lwz = 359,
  Instruction_kv4_v1_maddd = 360,
  Instruction_kv4_v1_madddt = 361,
  Instruction_kv4_v1_maddhq = 362,
  Instruction_kv4_v1_maddhwq = 363,
  Instruction_kv4_v1_maddsudt = 364,
  Instruction_kv4_v1_maddsuhwq = 365,
  Instruction_kv4_v1_maddsuwd = 366,
  Instruction_kv4_v1_maddsuwdp = 367,
  Instruction_kv4_v1_maddudt = 368,
  Instruction_kv4_v1_madduhwq = 369,
  Instruction_kv4_v1_madduwd = 370,
  Instruction_kv4_v1_madduwdp = 371,
  Instruction_kv4_v1_madduzdt = 372,
  Instruction_kv4_v1_maddw = 373,
  Instruction_kv4_v1_maddwd = 374,
  Instruction_kv4_v1_maddwdp = 375,
  Instruction_kv4_v1_maddwp = 376,
  Instruction_kv4_v1_make = 377,
  Instruction_kv4_v1_maxbo = 378,
  Instruction_kv4_v1_maxd = 379,
  Instruction_kv4_v1_maxhq = 380,
  Instruction_kv4_v1_maxrbod = 381,
  Instruction_kv4_v1_maxrhqd = 382,
  Instruction_kv4_v1_maxrwpd = 383,
  Instruction_kv4_v1_maxubo = 384,
  Instruction_kv4_v1_maxud = 385,
  Instruction_kv4_v1_maxuhq = 386,
  Instruction_kv4_v1_maxurbod = 387,
  Instruction_kv4_v1_maxurhqd = 388,
  Instruction_kv4_v1_maxurwpd = 389,
  Instruction_kv4_v1_maxuw = 390,
  Instruction_kv4_v1_maxuwp = 391,
  Instruction_kv4_v1_maxw = 392,
  Instruction_kv4_v1_maxwp = 393,
  Instruction_kv4_v1_minbo = 394,
  Instruction_kv4_v1_mind = 395,
  Instruction_kv4_v1_minhq = 396,
  Instruction_kv4_v1_minrbod = 397,
  Instruction_kv4_v1_minrhqd = 398,
  Instruction_kv4_v1_minrwpd = 399,
  Instruction_kv4_v1_minubo = 400,
  Instruction_kv4_v1_minud = 401,
  Instruction_kv4_v1_minuhq = 402,
  Instruction_kv4_v1_minurbod = 403,
  Instruction_kv4_v1_minurhqd = 404,
  Instruction_kv4_v1_minurwpd = 405,
  Instruction_kv4_v1_minuw = 406,
  Instruction_kv4_v1_minuwp = 407,
  Instruction_kv4_v1_minw = 408,
  Instruction_kv4_v1_minwp = 409,
  Instruction_kv4_v1_mm212w = 410,
  Instruction_kv4_v1_mma212w = 411,
  Instruction_kv4_v1_mms212w = 412,
  Instruction_kv4_v1_msbfd = 413,
  Instruction_kv4_v1_msbfdt = 414,
  Instruction_kv4_v1_msbfhq = 415,
  Instruction_kv4_v1_msbfhwq = 416,
  Instruction_kv4_v1_msbfsudt = 417,
  Instruction_kv4_v1_msbfsuhwq = 418,
  Instruction_kv4_v1_msbfsuwd = 419,
  Instruction_kv4_v1_msbfsuwdp = 420,
  Instruction_kv4_v1_msbfudt = 421,
  Instruction_kv4_v1_msbfuhwq = 422,
  Instruction_kv4_v1_msbfuwd = 423,
  Instruction_kv4_v1_msbfuwdp = 424,
  Instruction_kv4_v1_msbfuzdt = 425,
  Instruction_kv4_v1_msbfw = 426,
  Instruction_kv4_v1_msbfwd = 427,
  Instruction_kv4_v1_msbfwdp = 428,
  Instruction_kv4_v1_msbfwp = 429,
  Instruction_kv4_v1_muld = 430,
  Instruction_kv4_v1_muldt = 431,
  Instruction_kv4_v1_mulhq = 432,
  Instruction_kv4_v1_mulhwq = 433,
  Instruction_kv4_v1_mulmwq = 434,
  Instruction_kv4_v1_mulsudt = 435,
  Instruction_kv4_v1_mulsuhwq = 436,
  Instruction_kv4_v1_mulsumwq = 437,
  Instruction_kv4_v1_mulsuwd = 438,
  Instruction_kv4_v1_mulsuwdp = 439,
  Instruction_kv4_v1_muludt = 440,
  Instruction_kv4_v1_muluhwq = 441,
  Instruction_kv4_v1_mulumwq = 442,
  Instruction_kv4_v1_muluwd = 443,
  Instruction_kv4_v1_muluwdp = 444,
  Instruction_kv4_v1_mulw = 445,
  Instruction_kv4_v1_mulwd = 446,
  Instruction_kv4_v1_mulwdp = 447,
  Instruction_kv4_v1_mulwp = 448,
  Instruction_kv4_v1_mulwq = 449,
  Instruction_kv4_v1_nandd = 450,
  Instruction_kv4_v1_nandw = 451,
  Instruction_kv4_v1_negbo = 452,
  Instruction_kv4_v1_negd = 453,
  Instruction_kv4_v1_neghq = 454,
  Instruction_kv4_v1_negsbo = 455,
  Instruction_kv4_v1_negsd = 456,
  Instruction_kv4_v1_negshq = 457,
  Instruction_kv4_v1_negsw = 458,
  Instruction_kv4_v1_negswp = 459,
  Instruction_kv4_v1_negw = 460,
  Instruction_kv4_v1_negwp = 461,
  Instruction_kv4_v1_neord = 462,
  Instruction_kv4_v1_neorw = 463,
  Instruction_kv4_v1_niord = 464,
  Instruction_kv4_v1_niorw = 465,
  Instruction_kv4_v1_nop = 466,
  Instruction_kv4_v1_notd = 467,
  Instruction_kv4_v1_notw = 468,
  Instruction_kv4_v1_pcrel = 469,
  Instruction_kv4_v1_ret = 470,
  Instruction_kv4_v1_rfe = 471,
  Instruction_kv4_v1_rolw = 472,
  Instruction_kv4_v1_rolwps = 473,
  Instruction_kv4_v1_rorw = 474,
  Instruction_kv4_v1_rorwps = 475,
  Instruction_kv4_v1_rswap = 476,
  Instruction_kv4_v1_sb = 477,
  Instruction_kv4_v1_sbfbo = 478,
  Instruction_kv4_v1_sbfcd = 479,
  Instruction_kv4_v1_sbfcd_i = 480,
  Instruction_kv4_v1_sbfd = 481,
  Instruction_kv4_v1_sbfhq = 482,
  Instruction_kv4_v1_sbfsbo = 483,
  Instruction_kv4_v1_sbfsd = 484,
  Instruction_kv4_v1_sbfshq = 485,
  Instruction_kv4_v1_sbfsw = 486,
  Instruction_kv4_v1_sbfswp = 487,
  Instruction_kv4_v1_sbfusbo = 488,
  Instruction_kv4_v1_sbfusd = 489,
  Instruction_kv4_v1_sbfushq = 490,
  Instruction_kv4_v1_sbfusw = 491,
  Instruction_kv4_v1_sbfuswp = 492,
  Instruction_kv4_v1_sbfuwd = 493,
  Instruction_kv4_v1_sbfw = 494,
  Instruction_kv4_v1_sbfwd = 495,
  Instruction_kv4_v1_sbfwp = 496,
  Instruction_kv4_v1_sbfx16bo = 497,
  Instruction_kv4_v1_sbfx16d = 498,
  Instruction_kv4_v1_sbfx16hq = 499,
  Instruction_kv4_v1_sbfx16uwd = 500,
  Instruction_kv4_v1_sbfx16w = 501,
  Instruction_kv4_v1_sbfx16wd = 502,
  Instruction_kv4_v1_sbfx16wp = 503,
  Instruction_kv4_v1_sbfx2bo = 504,
  Instruction_kv4_v1_sbfx2d = 505,
  Instruction_kv4_v1_sbfx2hq = 506,
  Instruction_kv4_v1_sbfx2uwd = 507,
  Instruction_kv4_v1_sbfx2w = 508,
  Instruction_kv4_v1_sbfx2wd = 509,
  Instruction_kv4_v1_sbfx2wp = 510,
  Instruction_kv4_v1_sbfx32d = 511,
  Instruction_kv4_v1_sbfx32uwd = 512,
  Instruction_kv4_v1_sbfx32w = 513,
  Instruction_kv4_v1_sbfx32wd = 514,
  Instruction_kv4_v1_sbfx4bo = 515,
  Instruction_kv4_v1_sbfx4d = 516,
  Instruction_kv4_v1_sbfx4hq = 517,
  Instruction_kv4_v1_sbfx4uwd = 518,
  Instruction_kv4_v1_sbfx4w = 519,
  Instruction_kv4_v1_sbfx4wd = 520,
  Instruction_kv4_v1_sbfx4wp = 521,
  Instruction_kv4_v1_sbfx64d = 522,
  Instruction_kv4_v1_sbfx64uwd = 523,
  Instruction_kv4_v1_sbfx64w = 524,
  Instruction_kv4_v1_sbfx64wd = 525,
  Instruction_kv4_v1_sbfx8bo = 526,
  Instruction_kv4_v1_sbfx8d = 527,
  Instruction_kv4_v1_sbfx8hq = 528,
  Instruction_kv4_v1_sbfx8uwd = 529,
  Instruction_kv4_v1_sbfx8w = 530,
  Instruction_kv4_v1_sbfx8wd = 531,
  Instruction_kv4_v1_sbfx8wp = 532,
  Instruction_kv4_v1_sbmm8 = 533,
  Instruction_kv4_v1_sbmm8d = 534,
  Instruction_kv4_v1_sbmmt8 = 535,
  Instruction_kv4_v1_sbmmt8d = 536,
  Instruction_kv4_v1_scall = 537,
  Instruction_kv4_v1_sd = 538,
  Instruction_kv4_v1_set = 539,
  Instruction_kv4_v1_sh = 540,
  Instruction_kv4_v1_sleep = 541,
  Instruction_kv4_v1_sllbos = 542,
  Instruction_kv4_v1_slld = 543,
  Instruction_kv4_v1_sllhqs = 544,
  Instruction_kv4_v1_sllw = 545,
  Instruction_kv4_v1_sllwps = 546,
  Instruction_kv4_v1_slsbos = 547,
  Instruction_kv4_v1_slsd = 548,
  Instruction_kv4_v1_slshqs = 549,
  Instruction_kv4_v1_slsw = 550,
  Instruction_kv4_v1_slswps = 551,
  Instruction_kv4_v1_slusbos = 552,
  Instruction_kv4_v1_slusd = 553,
  Instruction_kv4_v1_slushqs = 554,
  Instruction_kv4_v1_slusw = 555,
  Instruction_kv4_v1_sluswps = 556,
  Instruction_kv4_v1_so = 557,
  Instruction_kv4_v1_sq = 558,
  Instruction_kv4_v1_srabos = 559,
  Instruction_kv4_v1_srad = 560,
  Instruction_kv4_v1_srahqs = 561,
  Instruction_kv4_v1_sraw = 562,
  Instruction_kv4_v1_srawps = 563,
  Instruction_kv4_v1_srlbos = 564,
  Instruction_kv4_v1_srld = 565,
  Instruction_kv4_v1_srlhqs = 566,
  Instruction_kv4_v1_srlw = 567,
  Instruction_kv4_v1_srlwps = 568,
  Instruction_kv4_v1_srsbos = 569,
  Instruction_kv4_v1_srsd = 570,
  Instruction_kv4_v1_srshqs = 571,
  Instruction_kv4_v1_srsw = 572,
  Instruction_kv4_v1_srswps = 573,
  Instruction_kv4_v1_stop = 574,
  Instruction_kv4_v1_stsud = 575,
  Instruction_kv4_v1_stsuhq = 576,
  Instruction_kv4_v1_stsuw = 577,
  Instruction_kv4_v1_stsuwp = 578,
  Instruction_kv4_v1_sw = 579,
  Instruction_kv4_v1_sxbd = 580,
  Instruction_kv4_v1_sxhd = 581,
  Instruction_kv4_v1_sxlbhq = 582,
  Instruction_kv4_v1_sxlhwp = 583,
  Instruction_kv4_v1_sxmbhq = 584,
  Instruction_kv4_v1_sxmhwp = 585,
  Instruction_kv4_v1_sxwd = 586,
  Instruction_kv4_v1_syncgroup = 587,
  Instruction_kv4_v1_tlbdinval = 588,
  Instruction_kv4_v1_tlbiinval = 589,
  Instruction_kv4_v1_tlbprobe = 590,
  Instruction_kv4_v1_tlbread = 591,
  Instruction_kv4_v1_tlbwrite = 592,
  Instruction_kv4_v1_waitit = 593,
  Instruction_kv4_v1_wfxl = 594,
  Instruction_kv4_v1_wfxm = 595,
  Instruction_kv4_v1_xaccesso = 596,
  Instruction_kv4_v1_xaligno = 597,
  Instruction_kv4_v1_xandno = 598,
  Instruction_kv4_v1_xando = 599,
  Instruction_kv4_v1_xclampwo = 600,
  Instruction_kv4_v1_xcopyo = 601,
  Instruction_kv4_v1_xcopyv = 602,
  Instruction_kv4_v1_xcopyx = 603,
  Instruction_kv4_v1_xeoro = 604,
  Instruction_kv4_v1_xffma44hw = 605,
  Instruction_kv4_v1_xfmaxhx = 606,
  Instruction_kv4_v1_xfminhx = 607,
  Instruction_kv4_v1_xfmma424w_0 = 608,
  Instruction_kv4_v1_xfmma424w_1 = 609,
  Instruction_kv4_v1_xfmma484hw = 610,
  Instruction_kv4_v1_xfnarrow44wh = 611,
  Instruction_kv4_v1_xfscalewo = 612,
  Instruction_kv4_v1_xiorno = 613,
  Instruction_kv4_v1_xioro = 614,
  Instruction_kv4_v1_xlo = 615,
  Instruction_kv4_v1_xmadd44bw0 = 616,
  Instruction_kv4_v1_xmadd44bw1 = 617,
  Instruction_kv4_v1_xmaddifwo = 618,
  Instruction_kv4_v1_xmaddsu44bw0 = 619,
  Instruction_kv4_v1_xmaddsu44bw1 = 620,
  Instruction_kv4_v1_xmaddu44bw0 = 621,
  Instruction_kv4_v1_xmaddu44bw1 = 622,
  Instruction_kv4_v1_xmma4164bw = 623,
  Instruction_kv4_v1_xmma484bw = 624,
  Instruction_kv4_v1_xmmasu4164bw = 625,
  Instruction_kv4_v1_xmmasu484bw = 626,
  Instruction_kv4_v1_xmmau4164bw = 627,
  Instruction_kv4_v1_xmmau484bw = 628,
  Instruction_kv4_v1_xmmaus4164bw = 629,
  Instruction_kv4_v1_xmmaus484bw = 630,
  Instruction_kv4_v1_xmovefd = 631,
  Instruction_kv4_v1_xmovefo = 632,
  Instruction_kv4_v1_xmovefq = 633,
  Instruction_kv4_v1_xmovetd = 634,
  Instruction_kv4_v1_xmovetq = 635,
  Instruction_kv4_v1_xmsbfifwo = 636,
  Instruction_kv4_v1_xmt44d = 637,
  Instruction_kv4_v1_xnando = 638,
  Instruction_kv4_v1_xneoro = 639,
  Instruction_kv4_v1_xnioro = 640,
  Instruction_kv4_v1_xrecvo = 641,
  Instruction_kv4_v1_xsbmm8dq = 642,
  Instruction_kv4_v1_xsbmmt8dq = 643,
  Instruction_kv4_v1_xsendo = 644,
  Instruction_kv4_v1_xsendrecvo = 645,
  Instruction_kv4_v1_xso = 646,
  Instruction_kv4_v1_xsplatdo = 647,
  Instruction_kv4_v1_xsplatov = 648,
  Instruction_kv4_v1_xsplatox = 649,
  Instruction_kv4_v1_xsx48bw = 650,
  Instruction_kv4_v1_xtrunc48wb = 651,
  Instruction_kv4_v1_xzx48bw = 652,
  Instruction_kv4_v1_zxbd = 653,
  Instruction_kv4_v1_zxhd = 654,
  Instruction_kv4_v1_zxlbhq = 655,
  Instruction_kv4_v1_zxlhwp = 656,
  Instruction_kv4_v1_zxmbhq = 657,
  Instruction_kv4_v1_zxmhwp = 658,
  Instruction_kv4_v1_zxwd = 659,
  Separator_kv4_v1_comma = 660,
  Separator_kv4_v1_equal = 661,
  Separator_kv4_v1_qmark = 662,
  Separator_kv4_v1_rsbracket = 663,
  Separator_kv4_v1_lsbracket = 664
};

enum Modifier_kv4_v1_exunum_enum {
  Modifier_kv4_v1_exunum_ALU0=0,
  Modifier_kv4_v1_exunum_ALU1=1,
  Modifier_kv4_v1_exunum_LSU0=2,
  Modifier_kv4_v1_exunum_LSU1=3,
};

extern const char *mod_kv4_v1_exunum[];
extern const char *mod_kv4_v1_scalarcond[];
extern const char *mod_kv4_v1_lsomask[];
extern const char *mod_kv4_v1_lsumask[];
extern const char *mod_kv4_v1_lsupack[];
extern const char *mod_kv4_v1_simplecond[];
extern const char *mod_kv4_v1_comparison[];
extern const char *mod_kv4_v1_floatcomp[];
extern const char *mod_kv4_v1_rounding[];
extern const char *mod_kv4_v1_variant[];
extern const char *mod_kv4_v1_speculate[];
extern const char *mod_kv4_v1_doscale[];
extern const char *mod_kv4_v1_qindex[];
extern const char *mod_kv4_v1_hindex[];
extern const char *mod_kv4_v1_cachelev[];
extern const char *mod_kv4_v1_coherency[];
extern const char *mod_kv4_v1_boolcas[];
extern const char *mod_kv4_v1_accesses[];
extern const char *mod_kv4_v1_channel[];
extern const char *mod_kv4_v1_shuffleV[];
extern const char *mod_kv4_v1_shuffleX[];
extern const char *mod_kv4_v1_splat32[];
typedef enum {
  Bundling_kv4_v1_ALL,
  Bundling_kv4_v1_BCU,
  Bundling_kv4_v1_FULL,
  Bundling_kv4_v1_FULL_X,
  Bundling_kv4_v1_FULL_Y,
  Bundling_kv4_v1_LITE,
  Bundling_kv4_v1_LITE_X,
  Bundling_kv4_v1_LITE_Y,
  Bundling_kv4_v1_TINY,
  Bundling_kv4_v1_TINY_X,
  Bundling_kv4_v1_TINY_Y,
  Bundling_kv4_v1_LSU,
  Bundling_kv4_v1_LSU_X,
  Bundling_kv4_v1_LSU_Y,
  Bundling_kv4_v1_EXT,
  Bundling_kv4_v1_NOP,
} Bundling_kv4_v1;


static const char *bundling_kv4_v1_names(Bundling_kv4_v1 bundling) __attribute__((unused));
static const char *bundling_kv4_v1_names(Bundling_kv4_v1 bundling) {
  switch(bundling) {
  case Bundling_kv4_v1_ALL: return "Bundling_kv4_v1_ALL";
  case Bundling_kv4_v1_BCU: return "Bundling_kv4_v1_BCU";
  case Bundling_kv4_v1_FULL: return "Bundling_kv4_v1_FULL";
  case Bundling_kv4_v1_FULL_X: return "Bundling_kv4_v1_FULL_X";
  case Bundling_kv4_v1_FULL_Y: return "Bundling_kv4_v1_FULL_Y";
  case Bundling_kv4_v1_LITE: return "Bundling_kv4_v1_LITE";
  case Bundling_kv4_v1_LITE_X: return "Bundling_kv4_v1_LITE_X";
  case Bundling_kv4_v1_LITE_Y: return "Bundling_kv4_v1_LITE_Y";
  case Bundling_kv4_v1_TINY: return "Bundling_kv4_v1_TINY";
  case Bundling_kv4_v1_TINY_X: return "Bundling_kv4_v1_TINY_X";
  case Bundling_kv4_v1_TINY_Y: return "Bundling_kv4_v1_TINY_Y";
  case Bundling_kv4_v1_LSU: return "Bundling_kv4_v1_LSU";
  case Bundling_kv4_v1_LSU_X: return "Bundling_kv4_v1_LSU_X";
  case Bundling_kv4_v1_LSU_Y: return "Bundling_kv4_v1_LSU_Y";
  case Bundling_kv4_v1_EXT: return "Bundling_kv4_v1_EXT";
  case Bundling_kv4_v1_NOP: return "Bundling_kv4_v1_NOP";
  };
  return "unknown bundling";
};

/* Resources list */
#define Resource_kv4_v1_ISSUE 0
#define Resource_kv4_v1_TINY 1
#define Resource_kv4_v1_LITE 2
#define Resource_kv4_v1_FULL 3
#define Resource_kv4_v1_LSU 4
#define Resource_kv4_v1_MAU 5
#define Resource_kv4_v1_BCU 6
#define Resource_kv4_v1_EXT 7
#define Resource_kv4_v1_XFER 8
#define Resource_kv4_v1_AUXR 9
#define Resource_kv4_v1_AUXW 10
#define Resource_kv4_v1_MEMW 11
#define Resource_kv4_v1_CRRP 12
#define Resource_kv4_v1_CRWL 13
#define Resource_kv4_v1_CRWH 14
#define Resource_kv4_v1_NOP 15
#define kvx_kv4_v1_RESOURCE_MAX 16


/* Reservations list */
#define Reservation_kv4_v1_ALL 0
#define Reservation_kv4_v1_ALU_NOP 1
#define Reservation_kv4_v1_ALU_TINY 2
#define Reservation_kv4_v1_ALU_TINY_X 3
#define Reservation_kv4_v1_ALU_TINY_Y 4
#define Reservation_kv4_v1_ALU_LITE 5
#define Reservation_kv4_v1_ALU_LITE_X 6
#define Reservation_kv4_v1_ALU_LITE_Y 7
#define Reservation_kv4_v1_ALU_FULL 8
#define Reservation_kv4_v1_ALU_FULL_X 9
#define Reservation_kv4_v1_ALU_FULL_Y 10
#define Reservation_kv4_v1_BCU 11
#define Reservation_kv4_v1_BCU_XFER 12
#define Reservation_kv4_v1_LSU 13
#define Reservation_kv4_v1_LSU_X 14
#define Reservation_kv4_v1_LSU_Y 15
#define Reservation_kv4_v1_LSU_MEMW 16
#define Reservation_kv4_v1_LSU_MEMW_X 17
#define Reservation_kv4_v1_LSU_MEMW_Y 18
#define Reservation_kv4_v1_LSU_AUXR 19
#define Reservation_kv4_v1_LSU_AUXR_X 20
#define Reservation_kv4_v1_LSU_AUXR_Y 21
#define Reservation_kv4_v1_LSU_AUXR_MEMW 22
#define Reservation_kv4_v1_LSU_AUXR_MEMW_X 23
#define Reservation_kv4_v1_LSU_AUXR_MEMW_Y 24
#define Reservation_kv4_v1_LSU_AUXW_MEMW 25
#define Reservation_kv4_v1_LSU_AUXW_MEMW_X 26
#define Reservation_kv4_v1_LSU_AUXW_MEMW_Y 27
#define Reservation_kv4_v1_LSU_AUXW 28
#define Reservation_kv4_v1_LSU_AUXW_X 29
#define Reservation_kv4_v1_LSU_AUXW_Y 30
#define Reservation_kv4_v1_LSU_AUXR_AUXW 31
#define Reservation_kv4_v1_LSU_AUXR_AUXW_X 32
#define Reservation_kv4_v1_LSU_AUXR_AUXW_Y 33
#define Reservation_kv4_v1_LSU_AUXR_AUXW_MEMW 34
#define Reservation_kv4_v1_LSU_AUXR_AUXW_MEMW_X 35
#define Reservation_kv4_v1_LSU_AUXR_AUXW_MEMW_Y 36
#define Reservation_kv4_v1_MAU 37
#define Reservation_kv4_v1_EXT 38
#define Reservation_kv4_v1_EXT_MAU 39
#define Reservation_kv4_v1_EXT_CRRP 40
#define Reservation_kv4_v1_EXT_AUXR 41
#define Reservation_kv4_v1_EXT_AUXW 42


extern struct kvx_reloc kv4_v1_rel16_reloc;
extern struct kvx_reloc kv4_v1_rel32_reloc;
extern struct kvx_reloc kv4_v1_rel64_reloc;
extern struct kvx_reloc kv4_v1_pcrel_signed16_reloc;
extern struct kvx_reloc kv4_v1_pcrel17_reloc;
extern struct kvx_reloc kv4_v1_pcrel27_reloc;
extern struct kvx_reloc kv4_v1_pcrel32_reloc;
extern struct kvx_reloc kv4_v1_pcrel_signed37_reloc;
extern struct kvx_reloc kv4_v1_pcrel_signed43_reloc;
extern struct kvx_reloc kv4_v1_pcrel_signed64_reloc;
extern struct kvx_reloc kv4_v1_pcrel64_reloc;
extern struct kvx_reloc kv4_v1_signed16_reloc;
extern struct kvx_reloc kv4_v1_signed32_reloc;
extern struct kvx_reloc kv4_v1_signed37_reloc;
extern struct kvx_reloc kv4_v1_gotoff_signed37_reloc;
extern struct kvx_reloc kv4_v1_gotoff_signed43_reloc;
extern struct kvx_reloc kv4_v1_gotoff_32_reloc;
extern struct kvx_reloc kv4_v1_gotoff_64_reloc;
extern struct kvx_reloc kv4_v1_got_32_reloc;
extern struct kvx_reloc kv4_v1_got_signed37_reloc;
extern struct kvx_reloc kv4_v1_got_signed43_reloc;
extern struct kvx_reloc kv4_v1_got_64_reloc;
extern struct kvx_reloc kv4_v1_glob_dat_reloc;
extern struct kvx_reloc kv4_v1_copy_reloc;
extern struct kvx_reloc kv4_v1_jump_slot_reloc;
extern struct kvx_reloc kv4_v1_relative_reloc;
extern struct kvx_reloc kv4_v1_signed43_reloc;
extern struct kvx_reloc kv4_v1_signed64_reloc;
extern struct kvx_reloc kv4_v1_gotaddr_signed37_reloc;
extern struct kvx_reloc kv4_v1_gotaddr_signed43_reloc;
extern struct kvx_reloc kv4_v1_gotaddr_signed64_reloc;
extern struct kvx_reloc kv4_v1_dtpmod64_reloc;
extern struct kvx_reloc kv4_v1_dtpoff64_reloc;
extern struct kvx_reloc kv4_v1_dtpoff_signed37_reloc;
extern struct kvx_reloc kv4_v1_dtpoff_signed43_reloc;
extern struct kvx_reloc kv4_v1_tlsgd_signed37_reloc;
extern struct kvx_reloc kv4_v1_tlsgd_signed43_reloc;
extern struct kvx_reloc kv4_v1_tlsld_signed37_reloc;
extern struct kvx_reloc kv4_v1_tlsld_signed43_reloc;
extern struct kvx_reloc kv4_v1_tpoff64_reloc;
extern struct kvx_reloc kv4_v1_tlsie_signed37_reloc;
extern struct kvx_reloc kv4_v1_tlsie_signed43_reloc;
extern struct kvx_reloc kv4_v1_tlsle_signed37_reloc;
extern struct kvx_reloc kv4_v1_tlsle_signed43_reloc;
extern struct kvx_reloc kv4_v1_rel8_reloc;


#endif /* OPCODE_KVX_H */
