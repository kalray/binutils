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
  RegClass_kv3_v1_buffer16Reg = 30,
  RegClass_kv3_v1_buffer2Reg = 31,
  RegClass_kv3_v1_buffer32Reg = 32,
  RegClass_kv3_v1_buffer4Reg = 33,
  RegClass_kv3_v1_buffer64Reg = 34,
  RegClass_kv3_v1_buffer8Reg = 35,
  RegClass_kv3_v1_onlyfxReg = 36,
  RegClass_kv3_v1_onlygetReg = 37,
  RegClass_kv3_v1_onlyraReg = 38,
  RegClass_kv3_v1_onlysetReg = 39,
  RegClass_kv3_v1_onlyswapReg = 40,
  RegClass_kv3_v1_pairedReg = 41,
  RegClass_kv3_v1_quadReg = 42,
  RegClass_kv3_v1_singleReg = 43,
  RegClass_kv3_v1_systemReg = 44,
  RegClass_kv3_v1_xworddReg = 45,
  RegClass_kv3_v1_xworddRegHi = 46,
  RegClass_kv3_v1_xworddRegLo = 47,
  RegClass_kv3_v1_xworddRegLo0M4 = 48,
  RegClass_kv3_v1_xworddRegLo1M4 = 49,
  RegClass_kv3_v1_xworddRegLo2M4 = 50,
  RegClass_kv3_v1_xworddRegLo3M4 = 51,
  RegClass_kv3_v1_xwordoReg = 52,
  RegClass_kv3_v1_xwordoRegHi = 53,
  RegClass_kv3_v1_xwordoRegLo = 54,
  RegClass_kv3_v1_xwordoRegLoE = 55,
  RegClass_kv3_v1_xwordoRegLoO = 56,
  RegClass_kv3_v1_xwordqReg = 57,
  RegClass_kv3_v1_xwordqRegHi = 58,
  RegClass_kv3_v1_xwordqRegLo = 59,
  RegClass_kv3_v1_xwordqRegLo0M4 = 60,
  RegClass_kv3_v1_xwordqRegLo1M4 = 61,
  RegClass_kv3_v1_xwordqRegLo2M4 = 62,
  RegClass_kv3_v1_xwordqRegLo3M4 = 63,
  RegClass_kv3_v1_xwordqRegLoE = 64,
  RegClass_kv3_v1_xwordqRegLoO = 65,
  RegClass_kv3_v1_xwordvReg = 66,
  RegClass_kv3_v1_xwordvRegHi = 67,
  RegClass_kv3_v1_xwordvRegLo = 68,
  RegClass_kv3_v1_xwordxReg = 69,
  RegClass_kv3_v1_xwordxRegHi = 70,
  RegClass_kv3_v1_xwordxRegLo = 71,
  Instruction_kv3_v1_abdd = 72,
  Instruction_kv3_v1_abdhq = 73,
  Instruction_kv3_v1_abdw = 74,
  Instruction_kv3_v1_abdwp = 75,
  Instruction_kv3_v1_absd = 76,
  Instruction_kv3_v1_abshq = 77,
  Instruction_kv3_v1_absw = 78,
  Instruction_kv3_v1_abswp = 79,
  Instruction_kv3_v1_acswapd = 80,
  Instruction_kv3_v1_acswapw = 81,
  Instruction_kv3_v1_addcd = 82,
  Instruction_kv3_v1_addcd_i = 83,
  Instruction_kv3_v1_addd = 84,
  Instruction_kv3_v1_addhcp_c = 85,
  Instruction_kv3_v1_addhq = 86,
  Instruction_kv3_v1_addsd = 87,
  Instruction_kv3_v1_addshq = 88,
  Instruction_kv3_v1_addsw = 89,
  Instruction_kv3_v1_addswp = 90,
  Instruction_kv3_v1_adduwd = 91,
  Instruction_kv3_v1_addw = 92,
  Instruction_kv3_v1_addwc_c = 93,
  Instruction_kv3_v1_addwd = 94,
  Instruction_kv3_v1_addwp = 95,
  Instruction_kv3_v1_addx16d = 96,
  Instruction_kv3_v1_addx16hq = 97,
  Instruction_kv3_v1_addx16uwd = 98,
  Instruction_kv3_v1_addx16w = 99,
  Instruction_kv3_v1_addx16wd = 100,
  Instruction_kv3_v1_addx16wp = 101,
  Instruction_kv3_v1_addx2d = 102,
  Instruction_kv3_v1_addx2hq = 103,
  Instruction_kv3_v1_addx2uwd = 104,
  Instruction_kv3_v1_addx2w = 105,
  Instruction_kv3_v1_addx2wd = 106,
  Instruction_kv3_v1_addx2wp = 107,
  Instruction_kv3_v1_addx4d = 108,
  Instruction_kv3_v1_addx4hq = 109,
  Instruction_kv3_v1_addx4uwd = 110,
  Instruction_kv3_v1_addx4w = 111,
  Instruction_kv3_v1_addx4wd = 112,
  Instruction_kv3_v1_addx4wp = 113,
  Instruction_kv3_v1_addx8d = 114,
  Instruction_kv3_v1_addx8hq = 115,
  Instruction_kv3_v1_addx8uwd = 116,
  Instruction_kv3_v1_addx8w = 117,
  Instruction_kv3_v1_addx8wd = 118,
  Instruction_kv3_v1_addx8wp = 119,
  Instruction_kv3_v1_aladdd = 120,
  Instruction_kv3_v1_aladdw = 121,
  Instruction_kv3_v1_alclrd = 122,
  Instruction_kv3_v1_alclrw = 123,
  Instruction_kv3_v1_aligno = 124,
  Instruction_kv3_v1_alignv = 125,
  Instruction_kv3_v1_andd = 126,
  Instruction_kv3_v1_andnd = 127,
  Instruction_kv3_v1_andnw = 128,
  Instruction_kv3_v1_andw = 129,
  Instruction_kv3_v1_avghq = 130,
  Instruction_kv3_v1_avgrhq = 131,
  Instruction_kv3_v1_avgruhq = 132,
  Instruction_kv3_v1_avgruw = 133,
  Instruction_kv3_v1_avgruwp = 134,
  Instruction_kv3_v1_avgrw = 135,
  Instruction_kv3_v1_avgrwp = 136,
  Instruction_kv3_v1_avguhq = 137,
  Instruction_kv3_v1_avguw = 138,
  Instruction_kv3_v1_avguwp = 139,
  Instruction_kv3_v1_avgw = 140,
  Instruction_kv3_v1_avgwp = 141,
  Instruction_kv3_v1_await = 142,
  Instruction_kv3_v1_barrier = 143,
  Instruction_kv3_v1_call = 144,
  Instruction_kv3_v1_cb = 145,
  Instruction_kv3_v1_cbsd = 146,
  Instruction_kv3_v1_cbsw = 147,
  Instruction_kv3_v1_cbswp = 148,
  Instruction_kv3_v1_clrf = 149,
  Instruction_kv3_v1_clsd = 150,
  Instruction_kv3_v1_clsw = 151,
  Instruction_kv3_v1_clswp = 152,
  Instruction_kv3_v1_clzd = 153,
  Instruction_kv3_v1_clzw = 154,
  Instruction_kv3_v1_clzwp = 155,
  Instruction_kv3_v1_cmoved = 156,
  Instruction_kv3_v1_cmovehq = 157,
  Instruction_kv3_v1_cmovewp = 158,
  Instruction_kv3_v1_cmuldt = 159,
  Instruction_kv3_v1_cmulghxdt = 160,
  Instruction_kv3_v1_cmulglxdt = 161,
  Instruction_kv3_v1_cmulgmxdt = 162,
  Instruction_kv3_v1_cmulxdt = 163,
  Instruction_kv3_v1_compd = 164,
  Instruction_kv3_v1_compnhq = 165,
  Instruction_kv3_v1_compnwp = 166,
  Instruction_kv3_v1_compuwd = 167,
  Instruction_kv3_v1_compw = 168,
  Instruction_kv3_v1_compwd = 169,
  Instruction_kv3_v1_convdhv0 = 170,
  Instruction_kv3_v1_convdhv1 = 171,
  Instruction_kv3_v1_convwbv0 = 172,
  Instruction_kv3_v1_convwbv1 = 173,
  Instruction_kv3_v1_convwbv2 = 174,
  Instruction_kv3_v1_convwbv3 = 175,
  Instruction_kv3_v1_copyd = 176,
  Instruction_kv3_v1_copyo = 177,
  Instruction_kv3_v1_copyq = 178,
  Instruction_kv3_v1_copyw = 179,
  Instruction_kv3_v1_crcbellw = 180,
  Instruction_kv3_v1_crcbelmw = 181,
  Instruction_kv3_v1_crclellw = 182,
  Instruction_kv3_v1_crclelmw = 183,
  Instruction_kv3_v1_ctzd = 184,
  Instruction_kv3_v1_ctzw = 185,
  Instruction_kv3_v1_ctzwp = 186,
  Instruction_kv3_v1_d1inval = 187,
  Instruction_kv3_v1_dinvall = 188,
  Instruction_kv3_v1_dot2suwd = 189,
  Instruction_kv3_v1_dot2suwdp = 190,
  Instruction_kv3_v1_dot2uwd = 191,
  Instruction_kv3_v1_dot2uwdp = 192,
  Instruction_kv3_v1_dot2w = 193,
  Instruction_kv3_v1_dot2wd = 194,
  Instruction_kv3_v1_dot2wdp = 195,
  Instruction_kv3_v1_dot2wzp = 196,
  Instruction_kv3_v1_dtouchl = 197,
  Instruction_kv3_v1_dzerol = 198,
  Instruction_kv3_v1_eord = 199,
  Instruction_kv3_v1_eorw = 200,
  Instruction_kv3_v1_errop = 201,
  Instruction_kv3_v1_extfs = 202,
  Instruction_kv3_v1_extfz = 203,
  Instruction_kv3_v1_fabsd = 204,
  Instruction_kv3_v1_fabshq = 205,
  Instruction_kv3_v1_fabsw = 206,
  Instruction_kv3_v1_fabswp = 207,
  Instruction_kv3_v1_faddd = 208,
  Instruction_kv3_v1_fadddc = 209,
  Instruction_kv3_v1_fadddc_c = 210,
  Instruction_kv3_v1_fadddp = 211,
  Instruction_kv3_v1_faddhq = 212,
  Instruction_kv3_v1_faddw = 213,
  Instruction_kv3_v1_faddwc = 214,
  Instruction_kv3_v1_faddwc_c = 215,
  Instruction_kv3_v1_faddwcp = 216,
  Instruction_kv3_v1_faddwcp_c = 217,
  Instruction_kv3_v1_faddwp = 218,
  Instruction_kv3_v1_faddwq = 219,
  Instruction_kv3_v1_fcdivd = 220,
  Instruction_kv3_v1_fcdivw = 221,
  Instruction_kv3_v1_fcdivwp = 222,
  Instruction_kv3_v1_fcompd = 223,
  Instruction_kv3_v1_fcompnhq = 224,
  Instruction_kv3_v1_fcompnwp = 225,
  Instruction_kv3_v1_fcompw = 226,
  Instruction_kv3_v1_fdot2w = 227,
  Instruction_kv3_v1_fdot2wd = 228,
  Instruction_kv3_v1_fdot2wdp = 229,
  Instruction_kv3_v1_fdot2wzp = 230,
  Instruction_kv3_v1_fence = 231,
  Instruction_kv3_v1_ffmad = 232,
  Instruction_kv3_v1_ffmahq = 233,
  Instruction_kv3_v1_ffmahw = 234,
  Instruction_kv3_v1_ffmahwq = 235,
  Instruction_kv3_v1_ffmaw = 236,
  Instruction_kv3_v1_ffmawd = 237,
  Instruction_kv3_v1_ffmawdp = 238,
  Instruction_kv3_v1_ffmawp = 239,
  Instruction_kv3_v1_ffmsd = 240,
  Instruction_kv3_v1_ffmshq = 241,
  Instruction_kv3_v1_ffmshw = 242,
  Instruction_kv3_v1_ffmshwq = 243,
  Instruction_kv3_v1_ffmsw = 244,
  Instruction_kv3_v1_ffmswd = 245,
  Instruction_kv3_v1_ffmswdp = 246,
  Instruction_kv3_v1_ffmswp = 247,
  Instruction_kv3_v1_fixedd = 248,
  Instruction_kv3_v1_fixedud = 249,
  Instruction_kv3_v1_fixeduw = 250,
  Instruction_kv3_v1_fixeduwp = 251,
  Instruction_kv3_v1_fixedw = 252,
  Instruction_kv3_v1_fixedwp = 253,
  Instruction_kv3_v1_floatd = 254,
  Instruction_kv3_v1_floatud = 255,
  Instruction_kv3_v1_floatuw = 256,
  Instruction_kv3_v1_floatuwp = 257,
  Instruction_kv3_v1_floatw = 258,
  Instruction_kv3_v1_floatwp = 259,
  Instruction_kv3_v1_fmaxd = 260,
  Instruction_kv3_v1_fmaxhq = 261,
  Instruction_kv3_v1_fmaxw = 262,
  Instruction_kv3_v1_fmaxwp = 263,
  Instruction_kv3_v1_fmind = 264,
  Instruction_kv3_v1_fminhq = 265,
  Instruction_kv3_v1_fminw = 266,
  Instruction_kv3_v1_fminwp = 267,
  Instruction_kv3_v1_fmm212w = 268,
  Instruction_kv3_v1_fmma212w = 269,
  Instruction_kv3_v1_fmma242hw0 = 270,
  Instruction_kv3_v1_fmma242hw1 = 271,
  Instruction_kv3_v1_fmma242hw2 = 272,
  Instruction_kv3_v1_fmma242hw3 = 273,
  Instruction_kv3_v1_fmms212w = 274,
  Instruction_kv3_v1_fmuld = 275,
  Instruction_kv3_v1_fmulhq = 276,
  Instruction_kv3_v1_fmulhw = 277,
  Instruction_kv3_v1_fmulhwq = 278,
  Instruction_kv3_v1_fmulw = 279,
  Instruction_kv3_v1_fmulwc = 280,
  Instruction_kv3_v1_fmulwc_c = 281,
  Instruction_kv3_v1_fmulwd = 282,
  Instruction_kv3_v1_fmulwdc = 283,
  Instruction_kv3_v1_fmulwdc_c = 284,
  Instruction_kv3_v1_fmulwdp = 285,
  Instruction_kv3_v1_fmulwp = 286,
  Instruction_kv3_v1_fmulwq = 287,
  Instruction_kv3_v1_fnarrow44wh = 288,
  Instruction_kv3_v1_fnarrowdw = 289,
  Instruction_kv3_v1_fnarrowdwp = 290,
  Instruction_kv3_v1_fnarrowwh = 291,
  Instruction_kv3_v1_fnarrowwhq = 292,
  Instruction_kv3_v1_fnegd = 293,
  Instruction_kv3_v1_fneghq = 294,
  Instruction_kv3_v1_fnegw = 295,
  Instruction_kv3_v1_fnegwp = 296,
  Instruction_kv3_v1_frecw = 297,
  Instruction_kv3_v1_frsrw = 298,
  Instruction_kv3_v1_fsbfd = 299,
  Instruction_kv3_v1_fsbfdc = 300,
  Instruction_kv3_v1_fsbfdc_c = 301,
  Instruction_kv3_v1_fsbfdp = 302,
  Instruction_kv3_v1_fsbfhq = 303,
  Instruction_kv3_v1_fsbfw = 304,
  Instruction_kv3_v1_fsbfwc = 305,
  Instruction_kv3_v1_fsbfwc_c = 306,
  Instruction_kv3_v1_fsbfwcp = 307,
  Instruction_kv3_v1_fsbfwcp_c = 308,
  Instruction_kv3_v1_fsbfwp = 309,
  Instruction_kv3_v1_fsbfwq = 310,
  Instruction_kv3_v1_fscalewv = 311,
  Instruction_kv3_v1_fsdivd = 312,
  Instruction_kv3_v1_fsdivw = 313,
  Instruction_kv3_v1_fsdivwp = 314,
  Instruction_kv3_v1_fsrecd = 315,
  Instruction_kv3_v1_fsrecw = 316,
  Instruction_kv3_v1_fsrecwp = 317,
  Instruction_kv3_v1_fsrsrd = 318,
  Instruction_kv3_v1_fsrsrw = 319,
  Instruction_kv3_v1_fsrsrwp = 320,
  Instruction_kv3_v1_fwidenlhw = 321,
  Instruction_kv3_v1_fwidenlhwp = 322,
  Instruction_kv3_v1_fwidenlwd = 323,
  Instruction_kv3_v1_fwidenmhw = 324,
  Instruction_kv3_v1_fwidenmhwp = 325,
  Instruction_kv3_v1_fwidenmwd = 326,
  Instruction_kv3_v1_get = 327,
  Instruction_kv3_v1_goto = 328,
  Instruction_kv3_v1_i1inval = 329,
  Instruction_kv3_v1_i1invals = 330,
  Instruction_kv3_v1_icall = 331,
  Instruction_kv3_v1_iget = 332,
  Instruction_kv3_v1_igoto = 333,
  Instruction_kv3_v1_insf = 334,
  Instruction_kv3_v1_iord = 335,
  Instruction_kv3_v1_iornd = 336,
  Instruction_kv3_v1_iornw = 337,
  Instruction_kv3_v1_iorw = 338,
  Instruction_kv3_v1_landd = 339,
  Instruction_kv3_v1_landhq = 340,
  Instruction_kv3_v1_landw = 341,
  Instruction_kv3_v1_landwp = 342,
  Instruction_kv3_v1_lbs = 343,
  Instruction_kv3_v1_lbz = 344,
  Instruction_kv3_v1_ld = 345,
  Instruction_kv3_v1_lhs = 346,
  Instruction_kv3_v1_lhz = 347,
  Instruction_kv3_v1_liord = 348,
  Instruction_kv3_v1_liorhq = 349,
  Instruction_kv3_v1_liorw = 350,
  Instruction_kv3_v1_liorwp = 351,
  Instruction_kv3_v1_lnandd = 352,
  Instruction_kv3_v1_lnandhq = 353,
  Instruction_kv3_v1_lnandw = 354,
  Instruction_kv3_v1_lnandwp = 355,
  Instruction_kv3_v1_lniord = 356,
  Instruction_kv3_v1_lniorhq = 357,
  Instruction_kv3_v1_lniorw = 358,
  Instruction_kv3_v1_lniorwp = 359,
  Instruction_kv3_v1_lnord = 360,
  Instruction_kv3_v1_lnorhq = 361,
  Instruction_kv3_v1_lnorw = 362,
  Instruction_kv3_v1_lnorwp = 363,
  Instruction_kv3_v1_lo = 364,
  Instruction_kv3_v1_loopdo = 365,
  Instruction_kv3_v1_lord = 366,
  Instruction_kv3_v1_lorhq = 367,
  Instruction_kv3_v1_lorw = 368,
  Instruction_kv3_v1_lorwp = 369,
  Instruction_kv3_v1_lq = 370,
  Instruction_kv3_v1_lws = 371,
  Instruction_kv3_v1_lwz = 372,
  Instruction_kv3_v1_maddd = 373,
  Instruction_kv3_v1_madddt = 374,
  Instruction_kv3_v1_maddhq = 375,
  Instruction_kv3_v1_maddhwq = 376,
  Instruction_kv3_v1_maddsudt = 377,
  Instruction_kv3_v1_maddsuhwq = 378,
  Instruction_kv3_v1_maddsuwd = 379,
  Instruction_kv3_v1_maddsuwdp = 380,
  Instruction_kv3_v1_maddudt = 381,
  Instruction_kv3_v1_madduhwq = 382,
  Instruction_kv3_v1_madduwd = 383,
  Instruction_kv3_v1_madduwdp = 384,
  Instruction_kv3_v1_madduzdt = 385,
  Instruction_kv3_v1_maddw = 386,
  Instruction_kv3_v1_maddwd = 387,
  Instruction_kv3_v1_maddwdp = 388,
  Instruction_kv3_v1_maddwp = 389,
  Instruction_kv3_v1_make = 390,
  Instruction_kv3_v1_maxd = 391,
  Instruction_kv3_v1_maxhq = 392,
  Instruction_kv3_v1_maxud = 393,
  Instruction_kv3_v1_maxuhq = 394,
  Instruction_kv3_v1_maxuw = 395,
  Instruction_kv3_v1_maxuwp = 396,
  Instruction_kv3_v1_maxw = 397,
  Instruction_kv3_v1_maxwp = 398,
  Instruction_kv3_v1_mind = 399,
  Instruction_kv3_v1_minhq = 400,
  Instruction_kv3_v1_minud = 401,
  Instruction_kv3_v1_minuhq = 402,
  Instruction_kv3_v1_minuw = 403,
  Instruction_kv3_v1_minuwp = 404,
  Instruction_kv3_v1_minw = 405,
  Instruction_kv3_v1_minwp = 406,
  Instruction_kv3_v1_mm212w = 407,
  Instruction_kv3_v1_mma212w = 408,
  Instruction_kv3_v1_mma444hbd0 = 409,
  Instruction_kv3_v1_mma444hbd1 = 410,
  Instruction_kv3_v1_mma444hd = 411,
  Instruction_kv3_v1_mma444suhbd0 = 412,
  Instruction_kv3_v1_mma444suhbd1 = 413,
  Instruction_kv3_v1_mma444suhd = 414,
  Instruction_kv3_v1_mma444uhbd0 = 415,
  Instruction_kv3_v1_mma444uhbd1 = 416,
  Instruction_kv3_v1_mma444uhd = 417,
  Instruction_kv3_v1_mma444ushbd0 = 418,
  Instruction_kv3_v1_mma444ushbd1 = 419,
  Instruction_kv3_v1_mma444ushd = 420,
  Instruction_kv3_v1_mms212w = 421,
  Instruction_kv3_v1_movetq = 422,
  Instruction_kv3_v1_msbfd = 423,
  Instruction_kv3_v1_msbfdt = 424,
  Instruction_kv3_v1_msbfhq = 425,
  Instruction_kv3_v1_msbfhwq = 426,
  Instruction_kv3_v1_msbfsudt = 427,
  Instruction_kv3_v1_msbfsuhwq = 428,
  Instruction_kv3_v1_msbfsuwd = 429,
  Instruction_kv3_v1_msbfsuwdp = 430,
  Instruction_kv3_v1_msbfudt = 431,
  Instruction_kv3_v1_msbfuhwq = 432,
  Instruction_kv3_v1_msbfuwd = 433,
  Instruction_kv3_v1_msbfuwdp = 434,
  Instruction_kv3_v1_msbfuzdt = 435,
  Instruction_kv3_v1_msbfw = 436,
  Instruction_kv3_v1_msbfwd = 437,
  Instruction_kv3_v1_msbfwdp = 438,
  Instruction_kv3_v1_msbfwp = 439,
  Instruction_kv3_v1_muld = 440,
  Instruction_kv3_v1_muldt = 441,
  Instruction_kv3_v1_mulhq = 442,
  Instruction_kv3_v1_mulhwq = 443,
  Instruction_kv3_v1_mulsudt = 444,
  Instruction_kv3_v1_mulsuhwq = 445,
  Instruction_kv3_v1_mulsuwd = 446,
  Instruction_kv3_v1_mulsuwdp = 447,
  Instruction_kv3_v1_muludt = 448,
  Instruction_kv3_v1_muluhwq = 449,
  Instruction_kv3_v1_muluwd = 450,
  Instruction_kv3_v1_muluwdp = 451,
  Instruction_kv3_v1_mulw = 452,
  Instruction_kv3_v1_mulwc = 453,
  Instruction_kv3_v1_mulwc_c = 454,
  Instruction_kv3_v1_mulwd = 455,
  Instruction_kv3_v1_mulwdc = 456,
  Instruction_kv3_v1_mulwdc_c = 457,
  Instruction_kv3_v1_mulwdp = 458,
  Instruction_kv3_v1_mulwp = 459,
  Instruction_kv3_v1_mulwq = 460,
  Instruction_kv3_v1_nandd = 461,
  Instruction_kv3_v1_nandw = 462,
  Instruction_kv3_v1_negd = 463,
  Instruction_kv3_v1_neghq = 464,
  Instruction_kv3_v1_negw = 465,
  Instruction_kv3_v1_negwp = 466,
  Instruction_kv3_v1_neord = 467,
  Instruction_kv3_v1_neorw = 468,
  Instruction_kv3_v1_niord = 469,
  Instruction_kv3_v1_niorw = 470,
  Instruction_kv3_v1_nop = 471,
  Instruction_kv3_v1_nord = 472,
  Instruction_kv3_v1_norw = 473,
  Instruction_kv3_v1_notd = 474,
  Instruction_kv3_v1_notw = 475,
  Instruction_kv3_v1_nxord = 476,
  Instruction_kv3_v1_nxorw = 477,
  Instruction_kv3_v1_ord = 478,
  Instruction_kv3_v1_ornd = 479,
  Instruction_kv3_v1_ornw = 480,
  Instruction_kv3_v1_orw = 481,
  Instruction_kv3_v1_pcrel = 482,
  Instruction_kv3_v1_ret = 483,
  Instruction_kv3_v1_rfe = 484,
  Instruction_kv3_v1_rolw = 485,
  Instruction_kv3_v1_rolwps = 486,
  Instruction_kv3_v1_rorw = 487,
  Instruction_kv3_v1_rorwps = 488,
  Instruction_kv3_v1_rswap = 489,
  Instruction_kv3_v1_satd = 490,
  Instruction_kv3_v1_satdh = 491,
  Instruction_kv3_v1_satdw = 492,
  Instruction_kv3_v1_sb = 493,
  Instruction_kv3_v1_sbfcd = 494,
  Instruction_kv3_v1_sbfcd_i = 495,
  Instruction_kv3_v1_sbfd = 496,
  Instruction_kv3_v1_sbfhcp_c = 497,
  Instruction_kv3_v1_sbfhq = 498,
  Instruction_kv3_v1_sbfsd = 499,
  Instruction_kv3_v1_sbfshq = 500,
  Instruction_kv3_v1_sbfsw = 501,
  Instruction_kv3_v1_sbfswp = 502,
  Instruction_kv3_v1_sbfuwd = 503,
  Instruction_kv3_v1_sbfw = 504,
  Instruction_kv3_v1_sbfwc_c = 505,
  Instruction_kv3_v1_sbfwd = 506,
  Instruction_kv3_v1_sbfwp = 507,
  Instruction_kv3_v1_sbfx16d = 508,
  Instruction_kv3_v1_sbfx16hq = 509,
  Instruction_kv3_v1_sbfx16uwd = 510,
  Instruction_kv3_v1_sbfx16w = 511,
  Instruction_kv3_v1_sbfx16wd = 512,
  Instruction_kv3_v1_sbfx16wp = 513,
  Instruction_kv3_v1_sbfx2d = 514,
  Instruction_kv3_v1_sbfx2hq = 515,
  Instruction_kv3_v1_sbfx2uwd = 516,
  Instruction_kv3_v1_sbfx2w = 517,
  Instruction_kv3_v1_sbfx2wd = 518,
  Instruction_kv3_v1_sbfx2wp = 519,
  Instruction_kv3_v1_sbfx4d = 520,
  Instruction_kv3_v1_sbfx4hq = 521,
  Instruction_kv3_v1_sbfx4uwd = 522,
  Instruction_kv3_v1_sbfx4w = 523,
  Instruction_kv3_v1_sbfx4wd = 524,
  Instruction_kv3_v1_sbfx4wp = 525,
  Instruction_kv3_v1_sbfx8d = 526,
  Instruction_kv3_v1_sbfx8hq = 527,
  Instruction_kv3_v1_sbfx8uwd = 528,
  Instruction_kv3_v1_sbfx8w = 529,
  Instruction_kv3_v1_sbfx8wd = 530,
  Instruction_kv3_v1_sbfx8wp = 531,
  Instruction_kv3_v1_sbmm8 = 532,
  Instruction_kv3_v1_sbmm8d = 533,
  Instruction_kv3_v1_sbmmt8 = 534,
  Instruction_kv3_v1_sbmmt8d = 535,
  Instruction_kv3_v1_scall = 536,
  Instruction_kv3_v1_sd = 537,
  Instruction_kv3_v1_set = 538,
  Instruction_kv3_v1_sh = 539,
  Instruction_kv3_v1_sleep = 540,
  Instruction_kv3_v1_slld = 541,
  Instruction_kv3_v1_sllhqs = 542,
  Instruction_kv3_v1_sllw = 543,
  Instruction_kv3_v1_sllwps = 544,
  Instruction_kv3_v1_slsd = 545,
  Instruction_kv3_v1_slshqs = 546,
  Instruction_kv3_v1_slsw = 547,
  Instruction_kv3_v1_slswps = 548,
  Instruction_kv3_v1_so = 549,
  Instruction_kv3_v1_sq = 550,
  Instruction_kv3_v1_srad = 551,
  Instruction_kv3_v1_srahqs = 552,
  Instruction_kv3_v1_sraw = 553,
  Instruction_kv3_v1_srawps = 554,
  Instruction_kv3_v1_srld = 555,
  Instruction_kv3_v1_srlhqs = 556,
  Instruction_kv3_v1_srlw = 557,
  Instruction_kv3_v1_srlwps = 558,
  Instruction_kv3_v1_srsd = 559,
  Instruction_kv3_v1_srshqs = 560,
  Instruction_kv3_v1_srsw = 561,
  Instruction_kv3_v1_srswps = 562,
  Instruction_kv3_v1_stop = 563,
  Instruction_kv3_v1_stsud = 564,
  Instruction_kv3_v1_stsuw = 565,
  Instruction_kv3_v1_sw = 566,
  Instruction_kv3_v1_sxbd = 567,
  Instruction_kv3_v1_sxhd = 568,
  Instruction_kv3_v1_sxlbhq = 569,
  Instruction_kv3_v1_sxlhwp = 570,
  Instruction_kv3_v1_sxmbhq = 571,
  Instruction_kv3_v1_sxmhwp = 572,
  Instruction_kv3_v1_sxwd = 573,
  Instruction_kv3_v1_syncgroup = 574,
  Instruction_kv3_v1_tlbdinval = 575,
  Instruction_kv3_v1_tlbiinval = 576,
  Instruction_kv3_v1_tlbprobe = 577,
  Instruction_kv3_v1_tlbread = 578,
  Instruction_kv3_v1_tlbwrite = 579,
  Instruction_kv3_v1_waitit = 580,
  Instruction_kv3_v1_wfxl = 581,
  Instruction_kv3_v1_wfxm = 582,
  Instruction_kv3_v1_xcopyo = 583,
  Instruction_kv3_v1_xlo = 584,
  Instruction_kv3_v1_xmma484bw = 585,
  Instruction_kv3_v1_xmma484subw = 586,
  Instruction_kv3_v1_xmma484ubw = 587,
  Instruction_kv3_v1_xmma484usbw = 588,
  Instruction_kv3_v1_xmovefo = 589,
  Instruction_kv3_v1_xmovetq = 590,
  Instruction_kv3_v1_xmt44d = 591,
  Instruction_kv3_v1_xord = 592,
  Instruction_kv3_v1_xorw = 593,
  Instruction_kv3_v1_xso = 594,
  Instruction_kv3_v1_zxbd = 595,
  Instruction_kv3_v1_zxhd = 596,
  Instruction_kv3_v1_zxwd = 597,
  Separator_kv3_v1_comma = 598,
  Separator_kv3_v1_equal = 599,
  Separator_kv3_v1_qmark = 600,
  Separator_kv3_v1_rsbracket = 601,
  Separator_kv3_v1_lsbracket = 602
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
  RegClass_kv3_v2_buffer16Reg = 41,
  RegClass_kv3_v2_buffer2Reg = 42,
  RegClass_kv3_v2_buffer32Reg = 43,
  RegClass_kv3_v2_buffer4Reg = 44,
  RegClass_kv3_v2_buffer64Reg = 45,
  RegClass_kv3_v2_buffer8Reg = 46,
  RegClass_kv3_v2_onlyfxReg = 47,
  RegClass_kv3_v2_onlygetReg = 48,
  RegClass_kv3_v2_onlyraReg = 49,
  RegClass_kv3_v2_onlysetReg = 50,
  RegClass_kv3_v2_onlyswapReg = 51,
  RegClass_kv3_v2_pairedReg = 52,
  RegClass_kv3_v2_quadReg = 53,
  RegClass_kv3_v2_singleReg = 54,
  RegClass_kv3_v2_systemReg = 55,
  RegClass_kv3_v2_xworddReg = 56,
  RegClass_kv3_v2_xworddRegHi = 57,
  RegClass_kv3_v2_xworddRegLo = 58,
  RegClass_kv3_v2_xworddRegLo0M4 = 59,
  RegClass_kv3_v2_xworddRegLo1M4 = 60,
  RegClass_kv3_v2_xworddRegLo2M4 = 61,
  RegClass_kv3_v2_xworddRegLo3M4 = 62,
  RegClass_kv3_v2_xwordoReg = 63,
  RegClass_kv3_v2_xwordoRegHi = 64,
  RegClass_kv3_v2_xwordoRegLo = 65,
  RegClass_kv3_v2_xwordqReg = 66,
  RegClass_kv3_v2_xwordqRegHi = 67,
  RegClass_kv3_v2_xwordqRegLo = 68,
  RegClass_kv3_v2_xwordqRegLoE = 69,
  RegClass_kv3_v2_xwordqRegLoO = 70,
  RegClass_kv3_v2_xwordvReg = 71,
  RegClass_kv3_v2_xwordvRegHi = 72,
  RegClass_kv3_v2_xwordvRegLo = 73,
  RegClass_kv3_v2_xwordxReg = 74,
  RegClass_kv3_v2_xwordxRegHi = 75,
  RegClass_kv3_v2_xwordxRegLo = 76,
  Instruction_kv3_v2_abdbo = 77,
  Instruction_kv3_v2_abdd = 78,
  Instruction_kv3_v2_abdhq = 79,
  Instruction_kv3_v2_abdsbo = 80,
  Instruction_kv3_v2_abdsd = 81,
  Instruction_kv3_v2_abdshq = 82,
  Instruction_kv3_v2_abdsw = 83,
  Instruction_kv3_v2_abdswp = 84,
  Instruction_kv3_v2_abdubo = 85,
  Instruction_kv3_v2_abdud = 86,
  Instruction_kv3_v2_abduhq = 87,
  Instruction_kv3_v2_abduw = 88,
  Instruction_kv3_v2_abduwp = 89,
  Instruction_kv3_v2_abdw = 90,
  Instruction_kv3_v2_abdwp = 91,
  Instruction_kv3_v2_absbo = 92,
  Instruction_kv3_v2_absd = 93,
  Instruction_kv3_v2_abshq = 94,
  Instruction_kv3_v2_abssbo = 95,
  Instruction_kv3_v2_abssd = 96,
  Instruction_kv3_v2_absshq = 97,
  Instruction_kv3_v2_abssw = 98,
  Instruction_kv3_v2_absswp = 99,
  Instruction_kv3_v2_absw = 100,
  Instruction_kv3_v2_abswp = 101,
  Instruction_kv3_v2_acswapd = 102,
  Instruction_kv3_v2_acswapq = 103,
  Instruction_kv3_v2_acswapw = 104,
  Instruction_kv3_v2_addbo = 105,
  Instruction_kv3_v2_addcd = 106,
  Instruction_kv3_v2_addcd_i = 107,
  Instruction_kv3_v2_addd = 108,
  Instruction_kv3_v2_addhq = 109,
  Instruction_kv3_v2_addrbod = 110,
  Instruction_kv3_v2_addrhqd = 111,
  Instruction_kv3_v2_addrwpd = 112,
  Instruction_kv3_v2_addsbo = 113,
  Instruction_kv3_v2_addsd = 114,
  Instruction_kv3_v2_addshq = 115,
  Instruction_kv3_v2_addsw = 116,
  Instruction_kv3_v2_addswp = 117,
  Instruction_kv3_v2_addurbod = 118,
  Instruction_kv3_v2_addurhqd = 119,
  Instruction_kv3_v2_addurwpd = 120,
  Instruction_kv3_v2_addusbo = 121,
  Instruction_kv3_v2_addusd = 122,
  Instruction_kv3_v2_addushq = 123,
  Instruction_kv3_v2_addusw = 124,
  Instruction_kv3_v2_adduswp = 125,
  Instruction_kv3_v2_adduwd = 126,
  Instruction_kv3_v2_addw = 127,
  Instruction_kv3_v2_addwd = 128,
  Instruction_kv3_v2_addwp = 129,
  Instruction_kv3_v2_addx16bo = 130,
  Instruction_kv3_v2_addx16d = 131,
  Instruction_kv3_v2_addx16hq = 132,
  Instruction_kv3_v2_addx16uwd = 133,
  Instruction_kv3_v2_addx16w = 134,
  Instruction_kv3_v2_addx16wd = 135,
  Instruction_kv3_v2_addx16wp = 136,
  Instruction_kv3_v2_addx2bo = 137,
  Instruction_kv3_v2_addx2d = 138,
  Instruction_kv3_v2_addx2hq = 139,
  Instruction_kv3_v2_addx2uwd = 140,
  Instruction_kv3_v2_addx2w = 141,
  Instruction_kv3_v2_addx2wd = 142,
  Instruction_kv3_v2_addx2wp = 143,
  Instruction_kv3_v2_addx32d = 144,
  Instruction_kv3_v2_addx32uwd = 145,
  Instruction_kv3_v2_addx32w = 146,
  Instruction_kv3_v2_addx32wd = 147,
  Instruction_kv3_v2_addx4bo = 148,
  Instruction_kv3_v2_addx4d = 149,
  Instruction_kv3_v2_addx4hq = 150,
  Instruction_kv3_v2_addx4uwd = 151,
  Instruction_kv3_v2_addx4w = 152,
  Instruction_kv3_v2_addx4wd = 153,
  Instruction_kv3_v2_addx4wp = 154,
  Instruction_kv3_v2_addx64d = 155,
  Instruction_kv3_v2_addx64uwd = 156,
  Instruction_kv3_v2_addx64w = 157,
  Instruction_kv3_v2_addx64wd = 158,
  Instruction_kv3_v2_addx8bo = 159,
  Instruction_kv3_v2_addx8d = 160,
  Instruction_kv3_v2_addx8hq = 161,
  Instruction_kv3_v2_addx8uwd = 162,
  Instruction_kv3_v2_addx8w = 163,
  Instruction_kv3_v2_addx8wd = 164,
  Instruction_kv3_v2_addx8wp = 165,
  Instruction_kv3_v2_aladdd = 166,
  Instruction_kv3_v2_aladdw = 167,
  Instruction_kv3_v2_alclrd = 168,
  Instruction_kv3_v2_alclrw = 169,
  Instruction_kv3_v2_ald = 170,
  Instruction_kv3_v2_alw = 171,
  Instruction_kv3_v2_andd = 172,
  Instruction_kv3_v2_andnd = 173,
  Instruction_kv3_v2_andnw = 174,
  Instruction_kv3_v2_andrbod = 175,
  Instruction_kv3_v2_andrhqd = 176,
  Instruction_kv3_v2_andrwpd = 177,
  Instruction_kv3_v2_andw = 178,
  Instruction_kv3_v2_asd = 179,
  Instruction_kv3_v2_asw = 180,
  Instruction_kv3_v2_avgbo = 181,
  Instruction_kv3_v2_avghq = 182,
  Instruction_kv3_v2_avgrbo = 183,
  Instruction_kv3_v2_avgrhq = 184,
  Instruction_kv3_v2_avgrubo = 185,
  Instruction_kv3_v2_avgruhq = 186,
  Instruction_kv3_v2_avgruw = 187,
  Instruction_kv3_v2_avgruwp = 188,
  Instruction_kv3_v2_avgrw = 189,
  Instruction_kv3_v2_avgrwp = 190,
  Instruction_kv3_v2_avgubo = 191,
  Instruction_kv3_v2_avguhq = 192,
  Instruction_kv3_v2_avguw = 193,
  Instruction_kv3_v2_avguwp = 194,
  Instruction_kv3_v2_avgw = 195,
  Instruction_kv3_v2_avgwp = 196,
  Instruction_kv3_v2_await = 197,
  Instruction_kv3_v2_barrier = 198,
  Instruction_kv3_v2_break = 199,
  Instruction_kv3_v2_call = 200,
  Instruction_kv3_v2_cb = 201,
  Instruction_kv3_v2_cbsd = 202,
  Instruction_kv3_v2_cbsw = 203,
  Instruction_kv3_v2_cbswp = 204,
  Instruction_kv3_v2_clrf = 205,
  Instruction_kv3_v2_clsd = 206,
  Instruction_kv3_v2_clsw = 207,
  Instruction_kv3_v2_clswp = 208,
  Instruction_kv3_v2_clzd = 209,
  Instruction_kv3_v2_clzw = 210,
  Instruction_kv3_v2_clzwp = 211,
  Instruction_kv3_v2_cmovebo = 212,
  Instruction_kv3_v2_cmoved = 213,
  Instruction_kv3_v2_cmovehq = 214,
  Instruction_kv3_v2_cmovewp = 215,
  Instruction_kv3_v2_cmuldt = 216,
  Instruction_kv3_v2_cmulghxdt = 217,
  Instruction_kv3_v2_cmulglxdt = 218,
  Instruction_kv3_v2_cmulgmxdt = 219,
  Instruction_kv3_v2_cmulxdt = 220,
  Instruction_kv3_v2_compd = 221,
  Instruction_kv3_v2_compnbo = 222,
  Instruction_kv3_v2_compnd = 223,
  Instruction_kv3_v2_compnhq = 224,
  Instruction_kv3_v2_compnw = 225,
  Instruction_kv3_v2_compnwp = 226,
  Instruction_kv3_v2_compuwd = 227,
  Instruction_kv3_v2_compw = 228,
  Instruction_kv3_v2_compwd = 229,
  Instruction_kv3_v2_copyd = 230,
  Instruction_kv3_v2_copyo = 231,
  Instruction_kv3_v2_copyq = 232,
  Instruction_kv3_v2_copyw = 233,
  Instruction_kv3_v2_crcbellw = 234,
  Instruction_kv3_v2_crcbelmw = 235,
  Instruction_kv3_v2_crclellw = 236,
  Instruction_kv3_v2_crclelmw = 237,
  Instruction_kv3_v2_ctzd = 238,
  Instruction_kv3_v2_ctzw = 239,
  Instruction_kv3_v2_ctzwp = 240,
  Instruction_kv3_v2_d1inval = 241,
  Instruction_kv3_v2_dflushl = 242,
  Instruction_kv3_v2_dflushsw = 243,
  Instruction_kv3_v2_dinvall = 244,
  Instruction_kv3_v2_dinvalsw = 245,
  Instruction_kv3_v2_dot2suwd = 246,
  Instruction_kv3_v2_dot2suwdp = 247,
  Instruction_kv3_v2_dot2uwd = 248,
  Instruction_kv3_v2_dot2uwdp = 249,
  Instruction_kv3_v2_dot2w = 250,
  Instruction_kv3_v2_dot2wd = 251,
  Instruction_kv3_v2_dot2wdp = 252,
  Instruction_kv3_v2_dot2wzp = 253,
  Instruction_kv3_v2_dpurgel = 254,
  Instruction_kv3_v2_dpurgesw = 255,
  Instruction_kv3_v2_dtouchl = 256,
  Instruction_kv3_v2_eord = 257,
  Instruction_kv3_v2_eorrbod = 258,
  Instruction_kv3_v2_eorrhqd = 259,
  Instruction_kv3_v2_eorrwpd = 260,
  Instruction_kv3_v2_eorw = 261,
  Instruction_kv3_v2_errop = 262,
  Instruction_kv3_v2_extfs = 263,
  Instruction_kv3_v2_extfz = 264,
  Instruction_kv3_v2_fabsd = 265,
  Instruction_kv3_v2_fabshq = 266,
  Instruction_kv3_v2_fabsw = 267,
  Instruction_kv3_v2_fabswp = 268,
  Instruction_kv3_v2_faddd = 269,
  Instruction_kv3_v2_fadddc = 270,
  Instruction_kv3_v2_fadddc_c = 271,
  Instruction_kv3_v2_fadddp = 272,
  Instruction_kv3_v2_faddho = 273,
  Instruction_kv3_v2_faddhq = 274,
  Instruction_kv3_v2_faddw = 275,
  Instruction_kv3_v2_faddwc = 276,
  Instruction_kv3_v2_faddwc_c = 277,
  Instruction_kv3_v2_faddwcp = 278,
  Instruction_kv3_v2_faddwcp_c = 279,
  Instruction_kv3_v2_faddwp = 280,
  Instruction_kv3_v2_faddwq = 281,
  Instruction_kv3_v2_fcdivd = 282,
  Instruction_kv3_v2_fcdivw = 283,
  Instruction_kv3_v2_fcdivwp = 284,
  Instruction_kv3_v2_fcompd = 285,
  Instruction_kv3_v2_fcompnd = 286,
  Instruction_kv3_v2_fcompnhq = 287,
  Instruction_kv3_v2_fcompnw = 288,
  Instruction_kv3_v2_fcompnwp = 289,
  Instruction_kv3_v2_fcompw = 290,
  Instruction_kv3_v2_fdot2w = 291,
  Instruction_kv3_v2_fdot2wd = 292,
  Instruction_kv3_v2_fdot2wdp = 293,
  Instruction_kv3_v2_fdot2wzp = 294,
  Instruction_kv3_v2_fence = 295,
  Instruction_kv3_v2_ffdmasw = 296,
  Instruction_kv3_v2_ffdmaswp = 297,
  Instruction_kv3_v2_ffdmaswq = 298,
  Instruction_kv3_v2_ffdmaw = 299,
  Instruction_kv3_v2_ffdmawp = 300,
  Instruction_kv3_v2_ffdmawq = 301,
  Instruction_kv3_v2_ffdmdaw = 302,
  Instruction_kv3_v2_ffdmdawp = 303,
  Instruction_kv3_v2_ffdmdawq = 304,
  Instruction_kv3_v2_ffdmdsw = 305,
  Instruction_kv3_v2_ffdmdswp = 306,
  Instruction_kv3_v2_ffdmdswq = 307,
  Instruction_kv3_v2_ffdmsaw = 308,
  Instruction_kv3_v2_ffdmsawp = 309,
  Instruction_kv3_v2_ffdmsawq = 310,
  Instruction_kv3_v2_ffdmsw = 311,
  Instruction_kv3_v2_ffdmswp = 312,
  Instruction_kv3_v2_ffdmswq = 313,
  Instruction_kv3_v2_ffmad = 314,
  Instruction_kv3_v2_ffmaho = 315,
  Instruction_kv3_v2_ffmahq = 316,
  Instruction_kv3_v2_ffmahw = 317,
  Instruction_kv3_v2_ffmahwq = 318,
  Instruction_kv3_v2_ffmaw = 319,
  Instruction_kv3_v2_ffmawc = 320,
  Instruction_kv3_v2_ffmawcp = 321,
  Instruction_kv3_v2_ffmawd = 322,
  Instruction_kv3_v2_ffmawdp = 323,
  Instruction_kv3_v2_ffmawp = 324,
  Instruction_kv3_v2_ffmawq = 325,
  Instruction_kv3_v2_ffmsd = 326,
  Instruction_kv3_v2_ffmsho = 327,
  Instruction_kv3_v2_ffmshq = 328,
  Instruction_kv3_v2_ffmshw = 329,
  Instruction_kv3_v2_ffmshwq = 330,
  Instruction_kv3_v2_ffmsw = 331,
  Instruction_kv3_v2_ffmswc = 332,
  Instruction_kv3_v2_ffmswcp = 333,
  Instruction_kv3_v2_ffmswd = 334,
  Instruction_kv3_v2_ffmswdp = 335,
  Instruction_kv3_v2_ffmswp = 336,
  Instruction_kv3_v2_ffmswq = 337,
  Instruction_kv3_v2_fixedd = 338,
  Instruction_kv3_v2_fixedud = 339,
  Instruction_kv3_v2_fixeduw = 340,
  Instruction_kv3_v2_fixeduwp = 341,
  Instruction_kv3_v2_fixedw = 342,
  Instruction_kv3_v2_fixedwp = 343,
  Instruction_kv3_v2_floatd = 344,
  Instruction_kv3_v2_floatud = 345,
  Instruction_kv3_v2_floatuw = 346,
  Instruction_kv3_v2_floatuwp = 347,
  Instruction_kv3_v2_floatw = 348,
  Instruction_kv3_v2_floatwp = 349,
  Instruction_kv3_v2_fmaxd = 350,
  Instruction_kv3_v2_fmaxhq = 351,
  Instruction_kv3_v2_fmaxw = 352,
  Instruction_kv3_v2_fmaxwp = 353,
  Instruction_kv3_v2_fmind = 354,
  Instruction_kv3_v2_fminhq = 355,
  Instruction_kv3_v2_fminw = 356,
  Instruction_kv3_v2_fminwp = 357,
  Instruction_kv3_v2_fmm212w = 358,
  Instruction_kv3_v2_fmm222w = 359,
  Instruction_kv3_v2_fmma212w = 360,
  Instruction_kv3_v2_fmma222w = 361,
  Instruction_kv3_v2_fmms212w = 362,
  Instruction_kv3_v2_fmms222w = 363,
  Instruction_kv3_v2_fmuld = 364,
  Instruction_kv3_v2_fmulho = 365,
  Instruction_kv3_v2_fmulhq = 366,
  Instruction_kv3_v2_fmulhw = 367,
  Instruction_kv3_v2_fmulhwq = 368,
  Instruction_kv3_v2_fmulw = 369,
  Instruction_kv3_v2_fmulwc = 370,
  Instruction_kv3_v2_fmulwcp = 371,
  Instruction_kv3_v2_fmulwd = 372,
  Instruction_kv3_v2_fmulwdp = 373,
  Instruction_kv3_v2_fmulwp = 374,
  Instruction_kv3_v2_fmulwq = 375,
  Instruction_kv3_v2_fnarrowdw = 376,
  Instruction_kv3_v2_fnarrowdwp = 377,
  Instruction_kv3_v2_fnarrowwh = 378,
  Instruction_kv3_v2_fnarrowwhq = 379,
  Instruction_kv3_v2_fnegd = 380,
  Instruction_kv3_v2_fneghq = 381,
  Instruction_kv3_v2_fnegw = 382,
  Instruction_kv3_v2_fnegwp = 383,
  Instruction_kv3_v2_frecw = 384,
  Instruction_kv3_v2_frsrw = 385,
  Instruction_kv3_v2_fsbfd = 386,
  Instruction_kv3_v2_fsbfdc = 387,
  Instruction_kv3_v2_fsbfdc_c = 388,
  Instruction_kv3_v2_fsbfdp = 389,
  Instruction_kv3_v2_fsbfho = 390,
  Instruction_kv3_v2_fsbfhq = 391,
  Instruction_kv3_v2_fsbfw = 392,
  Instruction_kv3_v2_fsbfwc = 393,
  Instruction_kv3_v2_fsbfwc_c = 394,
  Instruction_kv3_v2_fsbfwcp = 395,
  Instruction_kv3_v2_fsbfwcp_c = 396,
  Instruction_kv3_v2_fsbfwp = 397,
  Instruction_kv3_v2_fsbfwq = 398,
  Instruction_kv3_v2_fsdivd = 399,
  Instruction_kv3_v2_fsdivw = 400,
  Instruction_kv3_v2_fsdivwp = 401,
  Instruction_kv3_v2_fsrecd = 402,
  Instruction_kv3_v2_fsrecw = 403,
  Instruction_kv3_v2_fsrecwp = 404,
  Instruction_kv3_v2_fsrsrd = 405,
  Instruction_kv3_v2_fsrsrw = 406,
  Instruction_kv3_v2_fsrsrwp = 407,
  Instruction_kv3_v2_fwidenlhw = 408,
  Instruction_kv3_v2_fwidenlhwp = 409,
  Instruction_kv3_v2_fwidenlwd = 410,
  Instruction_kv3_v2_fwidenmhw = 411,
  Instruction_kv3_v2_fwidenmhwp = 412,
  Instruction_kv3_v2_fwidenmwd = 413,
  Instruction_kv3_v2_get = 414,
  Instruction_kv3_v2_goto = 415,
  Instruction_kv3_v2_i1inval = 416,
  Instruction_kv3_v2_i1invals = 417,
  Instruction_kv3_v2_icall = 418,
  Instruction_kv3_v2_iget = 419,
  Instruction_kv3_v2_igoto = 420,
  Instruction_kv3_v2_insf = 421,
  Instruction_kv3_v2_iord = 422,
  Instruction_kv3_v2_iornd = 423,
  Instruction_kv3_v2_iornw = 424,
  Instruction_kv3_v2_iorrbod = 425,
  Instruction_kv3_v2_iorrhqd = 426,
  Instruction_kv3_v2_iorrwpd = 427,
  Instruction_kv3_v2_iorw = 428,
  Instruction_kv3_v2_landd = 429,
  Instruction_kv3_v2_landw = 430,
  Instruction_kv3_v2_lbs = 431,
  Instruction_kv3_v2_lbz = 432,
  Instruction_kv3_v2_ld = 433,
  Instruction_kv3_v2_lhs = 434,
  Instruction_kv3_v2_lhz = 435,
  Instruction_kv3_v2_liord = 436,
  Instruction_kv3_v2_liorw = 437,
  Instruction_kv3_v2_lnandd = 438,
  Instruction_kv3_v2_lnandw = 439,
  Instruction_kv3_v2_lniord = 440,
  Instruction_kv3_v2_lniorw = 441,
  Instruction_kv3_v2_lnord = 442,
  Instruction_kv3_v2_lnorw = 443,
  Instruction_kv3_v2_lo = 444,
  Instruction_kv3_v2_loopdo = 445,
  Instruction_kv3_v2_lord = 446,
  Instruction_kv3_v2_lorw = 447,
  Instruction_kv3_v2_lq = 448,
  Instruction_kv3_v2_lws = 449,
  Instruction_kv3_v2_lwz = 450,
  Instruction_kv3_v2_maddd = 451,
  Instruction_kv3_v2_madddt = 452,
  Instruction_kv3_v2_maddhq = 453,
  Instruction_kv3_v2_maddhwq = 454,
  Instruction_kv3_v2_maddmwq = 455,
  Instruction_kv3_v2_maddsudt = 456,
  Instruction_kv3_v2_maddsuhwq = 457,
  Instruction_kv3_v2_maddsumwq = 458,
  Instruction_kv3_v2_maddsuwd = 459,
  Instruction_kv3_v2_maddsuwdp = 460,
  Instruction_kv3_v2_maddudt = 461,
  Instruction_kv3_v2_madduhwq = 462,
  Instruction_kv3_v2_maddumwq = 463,
  Instruction_kv3_v2_madduwd = 464,
  Instruction_kv3_v2_madduwdp = 465,
  Instruction_kv3_v2_madduzdt = 466,
  Instruction_kv3_v2_maddw = 467,
  Instruction_kv3_v2_maddwd = 468,
  Instruction_kv3_v2_maddwdp = 469,
  Instruction_kv3_v2_maddwp = 470,
  Instruction_kv3_v2_maddwq = 471,
  Instruction_kv3_v2_make = 472,
  Instruction_kv3_v2_maxbo = 473,
  Instruction_kv3_v2_maxd = 474,
  Instruction_kv3_v2_maxhq = 475,
  Instruction_kv3_v2_maxrbod = 476,
  Instruction_kv3_v2_maxrhqd = 477,
  Instruction_kv3_v2_maxrwpd = 478,
  Instruction_kv3_v2_maxubo = 479,
  Instruction_kv3_v2_maxud = 480,
  Instruction_kv3_v2_maxuhq = 481,
  Instruction_kv3_v2_maxurbod = 482,
  Instruction_kv3_v2_maxurhqd = 483,
  Instruction_kv3_v2_maxurwpd = 484,
  Instruction_kv3_v2_maxuw = 485,
  Instruction_kv3_v2_maxuwp = 486,
  Instruction_kv3_v2_maxw = 487,
  Instruction_kv3_v2_maxwp = 488,
  Instruction_kv3_v2_minbo = 489,
  Instruction_kv3_v2_mind = 490,
  Instruction_kv3_v2_minhq = 491,
  Instruction_kv3_v2_minrbod = 492,
  Instruction_kv3_v2_minrhqd = 493,
  Instruction_kv3_v2_minrwpd = 494,
  Instruction_kv3_v2_minubo = 495,
  Instruction_kv3_v2_minud = 496,
  Instruction_kv3_v2_minuhq = 497,
  Instruction_kv3_v2_minurbod = 498,
  Instruction_kv3_v2_minurhqd = 499,
  Instruction_kv3_v2_minurwpd = 500,
  Instruction_kv3_v2_minuw = 501,
  Instruction_kv3_v2_minuwp = 502,
  Instruction_kv3_v2_minw = 503,
  Instruction_kv3_v2_minwp = 504,
  Instruction_kv3_v2_mm212w = 505,
  Instruction_kv3_v2_mma212w = 506,
  Instruction_kv3_v2_mms212w = 507,
  Instruction_kv3_v2_msbfd = 508,
  Instruction_kv3_v2_msbfdt = 509,
  Instruction_kv3_v2_msbfhq = 510,
  Instruction_kv3_v2_msbfhwq = 511,
  Instruction_kv3_v2_msbfmwq = 512,
  Instruction_kv3_v2_msbfsudt = 513,
  Instruction_kv3_v2_msbfsuhwq = 514,
  Instruction_kv3_v2_msbfsumwq = 515,
  Instruction_kv3_v2_msbfsuwd = 516,
  Instruction_kv3_v2_msbfsuwdp = 517,
  Instruction_kv3_v2_msbfudt = 518,
  Instruction_kv3_v2_msbfuhwq = 519,
  Instruction_kv3_v2_msbfumwq = 520,
  Instruction_kv3_v2_msbfuwd = 521,
  Instruction_kv3_v2_msbfuwdp = 522,
  Instruction_kv3_v2_msbfuzdt = 523,
  Instruction_kv3_v2_msbfw = 524,
  Instruction_kv3_v2_msbfwd = 525,
  Instruction_kv3_v2_msbfwdp = 526,
  Instruction_kv3_v2_msbfwp = 527,
  Instruction_kv3_v2_msbfwq = 528,
  Instruction_kv3_v2_muld = 529,
  Instruction_kv3_v2_muldt = 530,
  Instruction_kv3_v2_mulhq = 531,
  Instruction_kv3_v2_mulhwq = 532,
  Instruction_kv3_v2_mulmwq = 533,
  Instruction_kv3_v2_mulsudt = 534,
  Instruction_kv3_v2_mulsuhwq = 535,
  Instruction_kv3_v2_mulsumwq = 536,
  Instruction_kv3_v2_mulsuwd = 537,
  Instruction_kv3_v2_mulsuwdp = 538,
  Instruction_kv3_v2_muludt = 539,
  Instruction_kv3_v2_muluhwq = 540,
  Instruction_kv3_v2_mulumwq = 541,
  Instruction_kv3_v2_muluwd = 542,
  Instruction_kv3_v2_muluwdp = 543,
  Instruction_kv3_v2_mulw = 544,
  Instruction_kv3_v2_mulwd = 545,
  Instruction_kv3_v2_mulwdp = 546,
  Instruction_kv3_v2_mulwp = 547,
  Instruction_kv3_v2_mulwq = 548,
  Instruction_kv3_v2_nandd = 549,
  Instruction_kv3_v2_nandw = 550,
  Instruction_kv3_v2_negbo = 551,
  Instruction_kv3_v2_negd = 552,
  Instruction_kv3_v2_neghq = 553,
  Instruction_kv3_v2_negsbo = 554,
  Instruction_kv3_v2_negsd = 555,
  Instruction_kv3_v2_negshq = 556,
  Instruction_kv3_v2_negsw = 557,
  Instruction_kv3_v2_negswp = 558,
  Instruction_kv3_v2_negw = 559,
  Instruction_kv3_v2_negwp = 560,
  Instruction_kv3_v2_neord = 561,
  Instruction_kv3_v2_neorw = 562,
  Instruction_kv3_v2_niord = 563,
  Instruction_kv3_v2_niorw = 564,
  Instruction_kv3_v2_nop = 565,
  Instruction_kv3_v2_nord = 566,
  Instruction_kv3_v2_norw = 567,
  Instruction_kv3_v2_notd = 568,
  Instruction_kv3_v2_notw = 569,
  Instruction_kv3_v2_nxord = 570,
  Instruction_kv3_v2_nxorw = 571,
  Instruction_kv3_v2_ord = 572,
  Instruction_kv3_v2_ornd = 573,
  Instruction_kv3_v2_ornw = 574,
  Instruction_kv3_v2_orrbod = 575,
  Instruction_kv3_v2_orrhqd = 576,
  Instruction_kv3_v2_orrwpd = 577,
  Instruction_kv3_v2_orw = 578,
  Instruction_kv3_v2_pcrel = 579,
  Instruction_kv3_v2_ret = 580,
  Instruction_kv3_v2_rfe = 581,
  Instruction_kv3_v2_rolw = 582,
  Instruction_kv3_v2_rolwps = 583,
  Instruction_kv3_v2_rorw = 584,
  Instruction_kv3_v2_rorwps = 585,
  Instruction_kv3_v2_rswap = 586,
  Instruction_kv3_v2_sb = 587,
  Instruction_kv3_v2_sbfbo = 588,
  Instruction_kv3_v2_sbfcd = 589,
  Instruction_kv3_v2_sbfcd_i = 590,
  Instruction_kv3_v2_sbfd = 591,
  Instruction_kv3_v2_sbfhq = 592,
  Instruction_kv3_v2_sbfsbo = 593,
  Instruction_kv3_v2_sbfsd = 594,
  Instruction_kv3_v2_sbfshq = 595,
  Instruction_kv3_v2_sbfsw = 596,
  Instruction_kv3_v2_sbfswp = 597,
  Instruction_kv3_v2_sbfusbo = 598,
  Instruction_kv3_v2_sbfusd = 599,
  Instruction_kv3_v2_sbfushq = 600,
  Instruction_kv3_v2_sbfusw = 601,
  Instruction_kv3_v2_sbfuswp = 602,
  Instruction_kv3_v2_sbfuwd = 603,
  Instruction_kv3_v2_sbfw = 604,
  Instruction_kv3_v2_sbfwd = 605,
  Instruction_kv3_v2_sbfwp = 606,
  Instruction_kv3_v2_sbfx16bo = 607,
  Instruction_kv3_v2_sbfx16d = 608,
  Instruction_kv3_v2_sbfx16hq = 609,
  Instruction_kv3_v2_sbfx16uwd = 610,
  Instruction_kv3_v2_sbfx16w = 611,
  Instruction_kv3_v2_sbfx16wd = 612,
  Instruction_kv3_v2_sbfx16wp = 613,
  Instruction_kv3_v2_sbfx2bo = 614,
  Instruction_kv3_v2_sbfx2d = 615,
  Instruction_kv3_v2_sbfx2hq = 616,
  Instruction_kv3_v2_sbfx2uwd = 617,
  Instruction_kv3_v2_sbfx2w = 618,
  Instruction_kv3_v2_sbfx2wd = 619,
  Instruction_kv3_v2_sbfx2wp = 620,
  Instruction_kv3_v2_sbfx32d = 621,
  Instruction_kv3_v2_sbfx32uwd = 622,
  Instruction_kv3_v2_sbfx32w = 623,
  Instruction_kv3_v2_sbfx32wd = 624,
  Instruction_kv3_v2_sbfx4bo = 625,
  Instruction_kv3_v2_sbfx4d = 626,
  Instruction_kv3_v2_sbfx4hq = 627,
  Instruction_kv3_v2_sbfx4uwd = 628,
  Instruction_kv3_v2_sbfx4w = 629,
  Instruction_kv3_v2_sbfx4wd = 630,
  Instruction_kv3_v2_sbfx4wp = 631,
  Instruction_kv3_v2_sbfx64d = 632,
  Instruction_kv3_v2_sbfx64uwd = 633,
  Instruction_kv3_v2_sbfx64w = 634,
  Instruction_kv3_v2_sbfx64wd = 635,
  Instruction_kv3_v2_sbfx8bo = 636,
  Instruction_kv3_v2_sbfx8d = 637,
  Instruction_kv3_v2_sbfx8hq = 638,
  Instruction_kv3_v2_sbfx8uwd = 639,
  Instruction_kv3_v2_sbfx8w = 640,
  Instruction_kv3_v2_sbfx8wd = 641,
  Instruction_kv3_v2_sbfx8wp = 642,
  Instruction_kv3_v2_sbmm8 = 643,
  Instruction_kv3_v2_sbmm8d = 644,
  Instruction_kv3_v2_sbmmt8 = 645,
  Instruction_kv3_v2_sbmmt8d = 646,
  Instruction_kv3_v2_scall = 647,
  Instruction_kv3_v2_sd = 648,
  Instruction_kv3_v2_set = 649,
  Instruction_kv3_v2_sh = 650,
  Instruction_kv3_v2_sleep = 651,
  Instruction_kv3_v2_sllbos = 652,
  Instruction_kv3_v2_slld = 653,
  Instruction_kv3_v2_sllhqs = 654,
  Instruction_kv3_v2_sllw = 655,
  Instruction_kv3_v2_sllwps = 656,
  Instruction_kv3_v2_slsbos = 657,
  Instruction_kv3_v2_slsd = 658,
  Instruction_kv3_v2_slshqs = 659,
  Instruction_kv3_v2_slsw = 660,
  Instruction_kv3_v2_slswps = 661,
  Instruction_kv3_v2_slusbos = 662,
  Instruction_kv3_v2_slusd = 663,
  Instruction_kv3_v2_slushqs = 664,
  Instruction_kv3_v2_slusw = 665,
  Instruction_kv3_v2_sluswps = 666,
  Instruction_kv3_v2_so = 667,
  Instruction_kv3_v2_sq = 668,
  Instruction_kv3_v2_srabos = 669,
  Instruction_kv3_v2_srad = 670,
  Instruction_kv3_v2_srahqs = 671,
  Instruction_kv3_v2_sraw = 672,
  Instruction_kv3_v2_srawps = 673,
  Instruction_kv3_v2_srlbos = 674,
  Instruction_kv3_v2_srld = 675,
  Instruction_kv3_v2_srlhqs = 676,
  Instruction_kv3_v2_srlw = 677,
  Instruction_kv3_v2_srlwps = 678,
  Instruction_kv3_v2_srsbos = 679,
  Instruction_kv3_v2_srsd = 680,
  Instruction_kv3_v2_srshqs = 681,
  Instruction_kv3_v2_srsw = 682,
  Instruction_kv3_v2_srswps = 683,
  Instruction_kv3_v2_stop = 684,
  Instruction_kv3_v2_stsud = 685,
  Instruction_kv3_v2_stsuhq = 686,
  Instruction_kv3_v2_stsuw = 687,
  Instruction_kv3_v2_stsuwp = 688,
  Instruction_kv3_v2_sw = 689,
  Instruction_kv3_v2_sxbd = 690,
  Instruction_kv3_v2_sxhd = 691,
  Instruction_kv3_v2_sxlbhq = 692,
  Instruction_kv3_v2_sxlhwp = 693,
  Instruction_kv3_v2_sxmbhq = 694,
  Instruction_kv3_v2_sxmhwp = 695,
  Instruction_kv3_v2_sxwd = 696,
  Instruction_kv3_v2_syncgroup = 697,
  Instruction_kv3_v2_tlbdinval = 698,
  Instruction_kv3_v2_tlbiinval = 699,
  Instruction_kv3_v2_tlbprobe = 700,
  Instruction_kv3_v2_tlbread = 701,
  Instruction_kv3_v2_tlbwrite = 702,
  Instruction_kv3_v2_waitit = 703,
  Instruction_kv3_v2_wfxl = 704,
  Instruction_kv3_v2_wfxm = 705,
  Instruction_kv3_v2_xaccesso = 706,
  Instruction_kv3_v2_xaligno = 707,
  Instruction_kv3_v2_xandno = 708,
  Instruction_kv3_v2_xando = 709,
  Instruction_kv3_v2_xclampwo = 710,
  Instruction_kv3_v2_xcopyo = 711,
  Instruction_kv3_v2_xcopyv = 712,
  Instruction_kv3_v2_xcopyx = 713,
  Instruction_kv3_v2_xeoro = 714,
  Instruction_kv3_v2_xffma44hw = 715,
  Instruction_kv3_v2_xfmaxhx = 716,
  Instruction_kv3_v2_xfminhx = 717,
  Instruction_kv3_v2_xfmma484hw = 718,
  Instruction_kv3_v2_xfnarrow44wh = 719,
  Instruction_kv3_v2_xfscalewo = 720,
  Instruction_kv3_v2_xiorno = 721,
  Instruction_kv3_v2_xioro = 722,
  Instruction_kv3_v2_xlo = 723,
  Instruction_kv3_v2_xmadd44bw0 = 724,
  Instruction_kv3_v2_xmadd44bw1 = 725,
  Instruction_kv3_v2_xmaddifwo = 726,
  Instruction_kv3_v2_xmaddsu44bw0 = 727,
  Instruction_kv3_v2_xmaddsu44bw1 = 728,
  Instruction_kv3_v2_xmaddu44bw0 = 729,
  Instruction_kv3_v2_xmaddu44bw1 = 730,
  Instruction_kv3_v2_xmma4164bw = 731,
  Instruction_kv3_v2_xmma484bw = 732,
  Instruction_kv3_v2_xmmasu4164bw = 733,
  Instruction_kv3_v2_xmmasu484bw = 734,
  Instruction_kv3_v2_xmmau4164bw = 735,
  Instruction_kv3_v2_xmmau484bw = 736,
  Instruction_kv3_v2_xmmaus4164bw = 737,
  Instruction_kv3_v2_xmmaus484bw = 738,
  Instruction_kv3_v2_xmovefd = 739,
  Instruction_kv3_v2_xmovefo = 740,
  Instruction_kv3_v2_xmovefq = 741,
  Instruction_kv3_v2_xmovetd = 742,
  Instruction_kv3_v2_xmovetq = 743,
  Instruction_kv3_v2_xmsbfifwo = 744,
  Instruction_kv3_v2_xmt44d = 745,
  Instruction_kv3_v2_xnando = 746,
  Instruction_kv3_v2_xneoro = 747,
  Instruction_kv3_v2_xnioro = 748,
  Instruction_kv3_v2_xnoro = 749,
  Instruction_kv3_v2_xnxoro = 750,
  Instruction_kv3_v2_xord = 751,
  Instruction_kv3_v2_xorno = 752,
  Instruction_kv3_v2_xoro = 753,
  Instruction_kv3_v2_xorrbod = 754,
  Instruction_kv3_v2_xorrhqd = 755,
  Instruction_kv3_v2_xorrwpd = 756,
  Instruction_kv3_v2_xorw = 757,
  Instruction_kv3_v2_xrecvo = 758,
  Instruction_kv3_v2_xsbmm8dq = 759,
  Instruction_kv3_v2_xsbmmt8dq = 760,
  Instruction_kv3_v2_xsendo = 761,
  Instruction_kv3_v2_xsendrecvo = 762,
  Instruction_kv3_v2_xso = 763,
  Instruction_kv3_v2_xsplatdo = 764,
  Instruction_kv3_v2_xsplatov = 765,
  Instruction_kv3_v2_xsplatox = 766,
  Instruction_kv3_v2_xsx48bw = 767,
  Instruction_kv3_v2_xtrunc48wb = 768,
  Instruction_kv3_v2_xxoro = 769,
  Instruction_kv3_v2_xzx48bw = 770,
  Instruction_kv3_v2_zxbd = 771,
  Instruction_kv3_v2_zxhd = 772,
  Instruction_kv3_v2_zxlbhq = 773,
  Instruction_kv3_v2_zxlhwp = 774,
  Instruction_kv3_v2_zxmbhq = 775,
  Instruction_kv3_v2_zxmhwp = 776,
  Instruction_kv3_v2_zxwd = 777,
  Separator_kv3_v2_comma = 778,
  Separator_kv3_v2_equal = 779,
  Separator_kv3_v2_qmark = 780,
  Separator_kv3_v2_rsbracket = 781,
  Separator_kv3_v2_lsbracket = 782
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
  RegClass_kv4_v1_buffer16Reg = 38,
  RegClass_kv4_v1_buffer2Reg = 39,
  RegClass_kv4_v1_buffer32Reg = 40,
  RegClass_kv4_v1_buffer4Reg = 41,
  RegClass_kv4_v1_buffer64Reg = 42,
  RegClass_kv4_v1_buffer8Reg = 43,
  RegClass_kv4_v1_onlyfxReg = 44,
  RegClass_kv4_v1_onlygetReg = 45,
  RegClass_kv4_v1_onlyraReg = 46,
  RegClass_kv4_v1_onlysetReg = 47,
  RegClass_kv4_v1_onlyswapReg = 48,
  RegClass_kv4_v1_pairedReg = 49,
  RegClass_kv4_v1_quadReg = 50,
  RegClass_kv4_v1_singleReg = 51,
  RegClass_kv4_v1_systemReg = 52,
  RegClass_kv4_v1_xworddReg = 53,
  RegClass_kv4_v1_xworddRegHi = 54,
  RegClass_kv4_v1_xworddRegLo = 55,
  RegClass_kv4_v1_xworddRegLo0M4 = 56,
  RegClass_kv4_v1_xworddRegLo1M4 = 57,
  RegClass_kv4_v1_xworddRegLo2M4 = 58,
  RegClass_kv4_v1_xworddRegLo3M4 = 59,
  RegClass_kv4_v1_xwordoReg = 60,
  RegClass_kv4_v1_xwordoRegHi = 61,
  RegClass_kv4_v1_xwordoRegLo = 62,
  RegClass_kv4_v1_xwordqReg = 63,
  RegClass_kv4_v1_xwordqRegHi = 64,
  RegClass_kv4_v1_xwordqRegLo = 65,
  RegClass_kv4_v1_xwordqRegLoE = 66,
  RegClass_kv4_v1_xwordqRegLoO = 67,
  RegClass_kv4_v1_xwordvReg = 68,
  RegClass_kv4_v1_xwordvRegHi = 69,
  RegClass_kv4_v1_xwordvRegLo = 70,
  RegClass_kv4_v1_xwordxReg = 71,
  RegClass_kv4_v1_xwordxRegHi = 72,
  RegClass_kv4_v1_xwordxRegLo = 73,
  Instruction_kv4_v1_abdbo = 74,
  Instruction_kv4_v1_abdd = 75,
  Instruction_kv4_v1_abdhq = 76,
  Instruction_kv4_v1_abdsbo = 77,
  Instruction_kv4_v1_abdsd = 78,
  Instruction_kv4_v1_abdshq = 79,
  Instruction_kv4_v1_abdsw = 80,
  Instruction_kv4_v1_abdswp = 81,
  Instruction_kv4_v1_abdubo = 82,
  Instruction_kv4_v1_abdud = 83,
  Instruction_kv4_v1_abduhq = 84,
  Instruction_kv4_v1_abduw = 85,
  Instruction_kv4_v1_abduwp = 86,
  Instruction_kv4_v1_abdw = 87,
  Instruction_kv4_v1_abdwp = 88,
  Instruction_kv4_v1_absbo = 89,
  Instruction_kv4_v1_absd = 90,
  Instruction_kv4_v1_abshq = 91,
  Instruction_kv4_v1_abssbo = 92,
  Instruction_kv4_v1_abssd = 93,
  Instruction_kv4_v1_absshq = 94,
  Instruction_kv4_v1_abssw = 95,
  Instruction_kv4_v1_absswp = 96,
  Instruction_kv4_v1_absw = 97,
  Instruction_kv4_v1_abswp = 98,
  Instruction_kv4_v1_acswapd = 99,
  Instruction_kv4_v1_acswapq = 100,
  Instruction_kv4_v1_acswapw = 101,
  Instruction_kv4_v1_addbo = 102,
  Instruction_kv4_v1_addcd = 103,
  Instruction_kv4_v1_addcd_i = 104,
  Instruction_kv4_v1_addd = 105,
  Instruction_kv4_v1_addhq = 106,
  Instruction_kv4_v1_addrbod = 107,
  Instruction_kv4_v1_addrhqd = 108,
  Instruction_kv4_v1_addrwpd = 109,
  Instruction_kv4_v1_addsbo = 110,
  Instruction_kv4_v1_addsd = 111,
  Instruction_kv4_v1_addshq = 112,
  Instruction_kv4_v1_addsw = 113,
  Instruction_kv4_v1_addswp = 114,
  Instruction_kv4_v1_addurbod = 115,
  Instruction_kv4_v1_addurhqd = 116,
  Instruction_kv4_v1_addurwpd = 117,
  Instruction_kv4_v1_addusbo = 118,
  Instruction_kv4_v1_addusd = 119,
  Instruction_kv4_v1_addushq = 120,
  Instruction_kv4_v1_addusw = 121,
  Instruction_kv4_v1_adduswp = 122,
  Instruction_kv4_v1_adduwd = 123,
  Instruction_kv4_v1_addw = 124,
  Instruction_kv4_v1_addwd = 125,
  Instruction_kv4_v1_addwp = 126,
  Instruction_kv4_v1_addx16bo = 127,
  Instruction_kv4_v1_addx16d = 128,
  Instruction_kv4_v1_addx16hq = 129,
  Instruction_kv4_v1_addx16uwd = 130,
  Instruction_kv4_v1_addx16w = 131,
  Instruction_kv4_v1_addx16wd = 132,
  Instruction_kv4_v1_addx16wp = 133,
  Instruction_kv4_v1_addx2bo = 134,
  Instruction_kv4_v1_addx2d = 135,
  Instruction_kv4_v1_addx2hq = 136,
  Instruction_kv4_v1_addx2uwd = 137,
  Instruction_kv4_v1_addx2w = 138,
  Instruction_kv4_v1_addx2wd = 139,
  Instruction_kv4_v1_addx2wp = 140,
  Instruction_kv4_v1_addx32d = 141,
  Instruction_kv4_v1_addx32uwd = 142,
  Instruction_kv4_v1_addx32w = 143,
  Instruction_kv4_v1_addx32wd = 144,
  Instruction_kv4_v1_addx4bo = 145,
  Instruction_kv4_v1_addx4d = 146,
  Instruction_kv4_v1_addx4hq = 147,
  Instruction_kv4_v1_addx4uwd = 148,
  Instruction_kv4_v1_addx4w = 149,
  Instruction_kv4_v1_addx4wd = 150,
  Instruction_kv4_v1_addx4wp = 151,
  Instruction_kv4_v1_addx64d = 152,
  Instruction_kv4_v1_addx64uwd = 153,
  Instruction_kv4_v1_addx64w = 154,
  Instruction_kv4_v1_addx64wd = 155,
  Instruction_kv4_v1_addx8bo = 156,
  Instruction_kv4_v1_addx8d = 157,
  Instruction_kv4_v1_addx8hq = 158,
  Instruction_kv4_v1_addx8uwd = 159,
  Instruction_kv4_v1_addx8w = 160,
  Instruction_kv4_v1_addx8wd = 161,
  Instruction_kv4_v1_addx8wp = 162,
  Instruction_kv4_v1_aladdd = 163,
  Instruction_kv4_v1_aladdw = 164,
  Instruction_kv4_v1_alclrd = 165,
  Instruction_kv4_v1_alclrw = 166,
  Instruction_kv4_v1_ald = 167,
  Instruction_kv4_v1_alw = 168,
  Instruction_kv4_v1_andd = 169,
  Instruction_kv4_v1_andnd = 170,
  Instruction_kv4_v1_andnw = 171,
  Instruction_kv4_v1_andrbod = 172,
  Instruction_kv4_v1_andrhqd = 173,
  Instruction_kv4_v1_andrwpd = 174,
  Instruction_kv4_v1_andw = 175,
  Instruction_kv4_v1_asd = 176,
  Instruction_kv4_v1_asw = 177,
  Instruction_kv4_v1_avgbo = 178,
  Instruction_kv4_v1_avghq = 179,
  Instruction_kv4_v1_avgrbo = 180,
  Instruction_kv4_v1_avgrhq = 181,
  Instruction_kv4_v1_avgrubo = 182,
  Instruction_kv4_v1_avgruhq = 183,
  Instruction_kv4_v1_avgruw = 184,
  Instruction_kv4_v1_avgruwp = 185,
  Instruction_kv4_v1_avgrw = 186,
  Instruction_kv4_v1_avgrwp = 187,
  Instruction_kv4_v1_avgubo = 188,
  Instruction_kv4_v1_avguhq = 189,
  Instruction_kv4_v1_avguw = 190,
  Instruction_kv4_v1_avguwp = 191,
  Instruction_kv4_v1_avgw = 192,
  Instruction_kv4_v1_avgwp = 193,
  Instruction_kv4_v1_await = 194,
  Instruction_kv4_v1_barrier = 195,
  Instruction_kv4_v1_break = 196,
  Instruction_kv4_v1_call = 197,
  Instruction_kv4_v1_cb = 198,
  Instruction_kv4_v1_cbsd = 199,
  Instruction_kv4_v1_cbsw = 200,
  Instruction_kv4_v1_cbswp = 201,
  Instruction_kv4_v1_clrf = 202,
  Instruction_kv4_v1_clsd = 203,
  Instruction_kv4_v1_clsw = 204,
  Instruction_kv4_v1_clswp = 205,
  Instruction_kv4_v1_clzd = 206,
  Instruction_kv4_v1_clzw = 207,
  Instruction_kv4_v1_clzwp = 208,
  Instruction_kv4_v1_cmovebo = 209,
  Instruction_kv4_v1_cmoved = 210,
  Instruction_kv4_v1_cmovehq = 211,
  Instruction_kv4_v1_cmovewp = 212,
  Instruction_kv4_v1_cmuldt = 213,
  Instruction_kv4_v1_cmulghxdt = 214,
  Instruction_kv4_v1_cmulglxdt = 215,
  Instruction_kv4_v1_cmulgmxdt = 216,
  Instruction_kv4_v1_cmulxdt = 217,
  Instruction_kv4_v1_compd = 218,
  Instruction_kv4_v1_compnbo = 219,
  Instruction_kv4_v1_compnd = 220,
  Instruction_kv4_v1_compnhq = 221,
  Instruction_kv4_v1_compnw = 222,
  Instruction_kv4_v1_compnwp = 223,
  Instruction_kv4_v1_compuwd = 224,
  Instruction_kv4_v1_compw = 225,
  Instruction_kv4_v1_compwd = 226,
  Instruction_kv4_v1_copyd = 227,
  Instruction_kv4_v1_copyo = 228,
  Instruction_kv4_v1_copyq = 229,
  Instruction_kv4_v1_copyw = 230,
  Instruction_kv4_v1_crcbellw = 231,
  Instruction_kv4_v1_crcbelmw = 232,
  Instruction_kv4_v1_crclellw = 233,
  Instruction_kv4_v1_crclelmw = 234,
  Instruction_kv4_v1_ctzd = 235,
  Instruction_kv4_v1_ctzw = 236,
  Instruction_kv4_v1_ctzwp = 237,
  Instruction_kv4_v1_d1inval = 238,
  Instruction_kv4_v1_dflushl = 239,
  Instruction_kv4_v1_dflushsw = 240,
  Instruction_kv4_v1_dinvall = 241,
  Instruction_kv4_v1_dinvalsw = 242,
  Instruction_kv4_v1_dpurgel = 243,
  Instruction_kv4_v1_dpurgesw = 244,
  Instruction_kv4_v1_dtouchl = 245,
  Instruction_kv4_v1_eord = 246,
  Instruction_kv4_v1_eorrbod = 247,
  Instruction_kv4_v1_eorrhqd = 248,
  Instruction_kv4_v1_eorrwpd = 249,
  Instruction_kv4_v1_eorw = 250,
  Instruction_kv4_v1_errop = 251,
  Instruction_kv4_v1_extfs = 252,
  Instruction_kv4_v1_extfz = 253,
  Instruction_kv4_v1_fabsd = 254,
  Instruction_kv4_v1_fabshq = 255,
  Instruction_kv4_v1_fabsw = 256,
  Instruction_kv4_v1_fabswp = 257,
  Instruction_kv4_v1_faddd = 258,
  Instruction_kv4_v1_faddhq = 259,
  Instruction_kv4_v1_faddw = 260,
  Instruction_kv4_v1_faddwc = 261,
  Instruction_kv4_v1_faddwp = 262,
  Instruction_kv4_v1_fcompd = 263,
  Instruction_kv4_v1_fcompnd = 264,
  Instruction_kv4_v1_fcompnhq = 265,
  Instruction_kv4_v1_fcompnw = 266,
  Instruction_kv4_v1_fcompnwp = 267,
  Instruction_kv4_v1_fcompw = 268,
  Instruction_kv4_v1_fence = 269,
  Instruction_kv4_v1_ffmad = 270,
  Instruction_kv4_v1_ffmahq = 271,
  Instruction_kv4_v1_ffmaw = 272,
  Instruction_kv4_v1_ffmawc = 273,
  Instruction_kv4_v1_ffmawp = 274,
  Instruction_kv4_v1_ffmsd = 275,
  Instruction_kv4_v1_ffmshq = 276,
  Instruction_kv4_v1_ffmsw = 277,
  Instruction_kv4_v1_ffmswc = 278,
  Instruction_kv4_v1_ffmswp = 279,
  Instruction_kv4_v1_fixedd = 280,
  Instruction_kv4_v1_fixedud = 281,
  Instruction_kv4_v1_fixeduw = 282,
  Instruction_kv4_v1_fixeduwp = 283,
  Instruction_kv4_v1_fixedw = 284,
  Instruction_kv4_v1_fixedwp = 285,
  Instruction_kv4_v1_floatd = 286,
  Instruction_kv4_v1_floatud = 287,
  Instruction_kv4_v1_floatuw = 288,
  Instruction_kv4_v1_floatuwp = 289,
  Instruction_kv4_v1_floatw = 290,
  Instruction_kv4_v1_floatwp = 291,
  Instruction_kv4_v1_fmaxd = 292,
  Instruction_kv4_v1_fmaxhq = 293,
  Instruction_kv4_v1_fmaxw = 294,
  Instruction_kv4_v1_fmaxwp = 295,
  Instruction_kv4_v1_fmind = 296,
  Instruction_kv4_v1_fminhq = 297,
  Instruction_kv4_v1_fminw = 298,
  Instruction_kv4_v1_fminwp = 299,
  Instruction_kv4_v1_fmuld = 300,
  Instruction_kv4_v1_fmulhq = 301,
  Instruction_kv4_v1_fmulw = 302,
  Instruction_kv4_v1_fmulwc = 303,
  Instruction_kv4_v1_fmulwp = 304,
  Instruction_kv4_v1_fnarrowdw = 305,
  Instruction_kv4_v1_fnarrowdwp = 306,
  Instruction_kv4_v1_fnarrowwh = 307,
  Instruction_kv4_v1_fnarrowwhq = 308,
  Instruction_kv4_v1_fnegd = 309,
  Instruction_kv4_v1_fneghq = 310,
  Instruction_kv4_v1_fnegw = 311,
  Instruction_kv4_v1_fnegwp = 312,
  Instruction_kv4_v1_frecw = 313,
  Instruction_kv4_v1_frsrw = 314,
  Instruction_kv4_v1_fsbfd = 315,
  Instruction_kv4_v1_fsbfhq = 316,
  Instruction_kv4_v1_fsbfw = 317,
  Instruction_kv4_v1_fsbfwc = 318,
  Instruction_kv4_v1_fsbfwp = 319,
  Instruction_kv4_v1_fsrecd = 320,
  Instruction_kv4_v1_fsrecw = 321,
  Instruction_kv4_v1_fsrecwp = 322,
  Instruction_kv4_v1_fsrsrd = 323,
  Instruction_kv4_v1_fsrsrw = 324,
  Instruction_kv4_v1_fsrsrwp = 325,
  Instruction_kv4_v1_fwidenlhw = 326,
  Instruction_kv4_v1_fwidenlhwp = 327,
  Instruction_kv4_v1_fwidenlwd = 328,
  Instruction_kv4_v1_fwidenmhw = 329,
  Instruction_kv4_v1_fwidenmhwp = 330,
  Instruction_kv4_v1_fwidenmwd = 331,
  Instruction_kv4_v1_get = 332,
  Instruction_kv4_v1_goto = 333,
  Instruction_kv4_v1_i1inval = 334,
  Instruction_kv4_v1_i1invals = 335,
  Instruction_kv4_v1_icall = 336,
  Instruction_kv4_v1_iget = 337,
  Instruction_kv4_v1_igoto = 338,
  Instruction_kv4_v1_insf = 339,
  Instruction_kv4_v1_iord = 340,
  Instruction_kv4_v1_iornd = 341,
  Instruction_kv4_v1_iornw = 342,
  Instruction_kv4_v1_iorrbod = 343,
  Instruction_kv4_v1_iorrhqd = 344,
  Instruction_kv4_v1_iorrwpd = 345,
  Instruction_kv4_v1_iorw = 346,
  Instruction_kv4_v1_landd = 347,
  Instruction_kv4_v1_landw = 348,
  Instruction_kv4_v1_lbs = 349,
  Instruction_kv4_v1_lbz = 350,
  Instruction_kv4_v1_ld = 351,
  Instruction_kv4_v1_lhs = 352,
  Instruction_kv4_v1_lhz = 353,
  Instruction_kv4_v1_liord = 354,
  Instruction_kv4_v1_liorw = 355,
  Instruction_kv4_v1_lnandd = 356,
  Instruction_kv4_v1_lnandw = 357,
  Instruction_kv4_v1_lniord = 358,
  Instruction_kv4_v1_lniorw = 359,
  Instruction_kv4_v1_lo = 360,
  Instruction_kv4_v1_loopdo = 361,
  Instruction_kv4_v1_lq = 362,
  Instruction_kv4_v1_lws = 363,
  Instruction_kv4_v1_lwz = 364,
  Instruction_kv4_v1_maddd = 365,
  Instruction_kv4_v1_madddt = 366,
  Instruction_kv4_v1_maddhq = 367,
  Instruction_kv4_v1_maddhwq = 368,
  Instruction_kv4_v1_maddsudt = 369,
  Instruction_kv4_v1_maddsuhwq = 370,
  Instruction_kv4_v1_maddsuwd = 371,
  Instruction_kv4_v1_maddsuwdp = 372,
  Instruction_kv4_v1_maddudt = 373,
  Instruction_kv4_v1_madduhwq = 374,
  Instruction_kv4_v1_madduwd = 375,
  Instruction_kv4_v1_madduwdp = 376,
  Instruction_kv4_v1_madduzdt = 377,
  Instruction_kv4_v1_maddw = 378,
  Instruction_kv4_v1_maddwd = 379,
  Instruction_kv4_v1_maddwdp = 380,
  Instruction_kv4_v1_maddwp = 381,
  Instruction_kv4_v1_make = 382,
  Instruction_kv4_v1_maxbo = 383,
  Instruction_kv4_v1_maxd = 384,
  Instruction_kv4_v1_maxhq = 385,
  Instruction_kv4_v1_maxrbod = 386,
  Instruction_kv4_v1_maxrhqd = 387,
  Instruction_kv4_v1_maxrwpd = 388,
  Instruction_kv4_v1_maxubo = 389,
  Instruction_kv4_v1_maxud = 390,
  Instruction_kv4_v1_maxuhq = 391,
  Instruction_kv4_v1_maxurbod = 392,
  Instruction_kv4_v1_maxurhqd = 393,
  Instruction_kv4_v1_maxurwpd = 394,
  Instruction_kv4_v1_maxuw = 395,
  Instruction_kv4_v1_maxuwp = 396,
  Instruction_kv4_v1_maxw = 397,
  Instruction_kv4_v1_maxwp = 398,
  Instruction_kv4_v1_minbo = 399,
  Instruction_kv4_v1_mind = 400,
  Instruction_kv4_v1_minhq = 401,
  Instruction_kv4_v1_minrbod = 402,
  Instruction_kv4_v1_minrhqd = 403,
  Instruction_kv4_v1_minrwpd = 404,
  Instruction_kv4_v1_minubo = 405,
  Instruction_kv4_v1_minud = 406,
  Instruction_kv4_v1_minuhq = 407,
  Instruction_kv4_v1_minurbod = 408,
  Instruction_kv4_v1_minurhqd = 409,
  Instruction_kv4_v1_minurwpd = 410,
  Instruction_kv4_v1_minuw = 411,
  Instruction_kv4_v1_minuwp = 412,
  Instruction_kv4_v1_minw = 413,
  Instruction_kv4_v1_minwp = 414,
  Instruction_kv4_v1_mm212w = 415,
  Instruction_kv4_v1_mma212w = 416,
  Instruction_kv4_v1_mms212w = 417,
  Instruction_kv4_v1_msbfd = 418,
  Instruction_kv4_v1_msbfdt = 419,
  Instruction_kv4_v1_msbfhq = 420,
  Instruction_kv4_v1_msbfhwq = 421,
  Instruction_kv4_v1_msbfsudt = 422,
  Instruction_kv4_v1_msbfsuhwq = 423,
  Instruction_kv4_v1_msbfsuwd = 424,
  Instruction_kv4_v1_msbfsuwdp = 425,
  Instruction_kv4_v1_msbfudt = 426,
  Instruction_kv4_v1_msbfuhwq = 427,
  Instruction_kv4_v1_msbfuwd = 428,
  Instruction_kv4_v1_msbfuwdp = 429,
  Instruction_kv4_v1_msbfuzdt = 430,
  Instruction_kv4_v1_msbfw = 431,
  Instruction_kv4_v1_msbfwd = 432,
  Instruction_kv4_v1_msbfwdp = 433,
  Instruction_kv4_v1_msbfwp = 434,
  Instruction_kv4_v1_muld = 435,
  Instruction_kv4_v1_muldt = 436,
  Instruction_kv4_v1_mulhq = 437,
  Instruction_kv4_v1_mulhwq = 438,
  Instruction_kv4_v1_mulmwq = 439,
  Instruction_kv4_v1_mulsudt = 440,
  Instruction_kv4_v1_mulsuhwq = 441,
  Instruction_kv4_v1_mulsumwq = 442,
  Instruction_kv4_v1_mulsuwd = 443,
  Instruction_kv4_v1_mulsuwdp = 444,
  Instruction_kv4_v1_muludt = 445,
  Instruction_kv4_v1_muluhwq = 446,
  Instruction_kv4_v1_mulumwq = 447,
  Instruction_kv4_v1_muluwd = 448,
  Instruction_kv4_v1_muluwdp = 449,
  Instruction_kv4_v1_mulw = 450,
  Instruction_kv4_v1_mulwd = 451,
  Instruction_kv4_v1_mulwdp = 452,
  Instruction_kv4_v1_mulwp = 453,
  Instruction_kv4_v1_mulwq = 454,
  Instruction_kv4_v1_nandd = 455,
  Instruction_kv4_v1_nandw = 456,
  Instruction_kv4_v1_negbo = 457,
  Instruction_kv4_v1_negd = 458,
  Instruction_kv4_v1_neghq = 459,
  Instruction_kv4_v1_negsbo = 460,
  Instruction_kv4_v1_negsd = 461,
  Instruction_kv4_v1_negshq = 462,
  Instruction_kv4_v1_negsw = 463,
  Instruction_kv4_v1_negswp = 464,
  Instruction_kv4_v1_negw = 465,
  Instruction_kv4_v1_negwp = 466,
  Instruction_kv4_v1_neord = 467,
  Instruction_kv4_v1_neorw = 468,
  Instruction_kv4_v1_niord = 469,
  Instruction_kv4_v1_niorw = 470,
  Instruction_kv4_v1_nop = 471,
  Instruction_kv4_v1_notd = 472,
  Instruction_kv4_v1_notw = 473,
  Instruction_kv4_v1_pcrel = 474,
  Instruction_kv4_v1_ret = 475,
  Instruction_kv4_v1_rfe = 476,
  Instruction_kv4_v1_rolw = 477,
  Instruction_kv4_v1_rolwps = 478,
  Instruction_kv4_v1_rorw = 479,
  Instruction_kv4_v1_rorwps = 480,
  Instruction_kv4_v1_rswap = 481,
  Instruction_kv4_v1_sb = 482,
  Instruction_kv4_v1_sbfbo = 483,
  Instruction_kv4_v1_sbfcd = 484,
  Instruction_kv4_v1_sbfcd_i = 485,
  Instruction_kv4_v1_sbfd = 486,
  Instruction_kv4_v1_sbfhq = 487,
  Instruction_kv4_v1_sbfsbo = 488,
  Instruction_kv4_v1_sbfsd = 489,
  Instruction_kv4_v1_sbfshq = 490,
  Instruction_kv4_v1_sbfsw = 491,
  Instruction_kv4_v1_sbfswp = 492,
  Instruction_kv4_v1_sbfusbo = 493,
  Instruction_kv4_v1_sbfusd = 494,
  Instruction_kv4_v1_sbfushq = 495,
  Instruction_kv4_v1_sbfusw = 496,
  Instruction_kv4_v1_sbfuswp = 497,
  Instruction_kv4_v1_sbfuwd = 498,
  Instruction_kv4_v1_sbfw = 499,
  Instruction_kv4_v1_sbfwd = 500,
  Instruction_kv4_v1_sbfwp = 501,
  Instruction_kv4_v1_sbfx16bo = 502,
  Instruction_kv4_v1_sbfx16d = 503,
  Instruction_kv4_v1_sbfx16hq = 504,
  Instruction_kv4_v1_sbfx16uwd = 505,
  Instruction_kv4_v1_sbfx16w = 506,
  Instruction_kv4_v1_sbfx16wd = 507,
  Instruction_kv4_v1_sbfx16wp = 508,
  Instruction_kv4_v1_sbfx2bo = 509,
  Instruction_kv4_v1_sbfx2d = 510,
  Instruction_kv4_v1_sbfx2hq = 511,
  Instruction_kv4_v1_sbfx2uwd = 512,
  Instruction_kv4_v1_sbfx2w = 513,
  Instruction_kv4_v1_sbfx2wd = 514,
  Instruction_kv4_v1_sbfx2wp = 515,
  Instruction_kv4_v1_sbfx32d = 516,
  Instruction_kv4_v1_sbfx32uwd = 517,
  Instruction_kv4_v1_sbfx32w = 518,
  Instruction_kv4_v1_sbfx32wd = 519,
  Instruction_kv4_v1_sbfx4bo = 520,
  Instruction_kv4_v1_sbfx4d = 521,
  Instruction_kv4_v1_sbfx4hq = 522,
  Instruction_kv4_v1_sbfx4uwd = 523,
  Instruction_kv4_v1_sbfx4w = 524,
  Instruction_kv4_v1_sbfx4wd = 525,
  Instruction_kv4_v1_sbfx4wp = 526,
  Instruction_kv4_v1_sbfx64d = 527,
  Instruction_kv4_v1_sbfx64uwd = 528,
  Instruction_kv4_v1_sbfx64w = 529,
  Instruction_kv4_v1_sbfx64wd = 530,
  Instruction_kv4_v1_sbfx8bo = 531,
  Instruction_kv4_v1_sbfx8d = 532,
  Instruction_kv4_v1_sbfx8hq = 533,
  Instruction_kv4_v1_sbfx8uwd = 534,
  Instruction_kv4_v1_sbfx8w = 535,
  Instruction_kv4_v1_sbfx8wd = 536,
  Instruction_kv4_v1_sbfx8wp = 537,
  Instruction_kv4_v1_sbmm8 = 538,
  Instruction_kv4_v1_sbmm8d = 539,
  Instruction_kv4_v1_sbmmt8 = 540,
  Instruction_kv4_v1_sbmmt8d = 541,
  Instruction_kv4_v1_scall = 542,
  Instruction_kv4_v1_sd = 543,
  Instruction_kv4_v1_set = 544,
  Instruction_kv4_v1_sh = 545,
  Instruction_kv4_v1_sleep = 546,
  Instruction_kv4_v1_sllbos = 547,
  Instruction_kv4_v1_slld = 548,
  Instruction_kv4_v1_sllhqs = 549,
  Instruction_kv4_v1_sllw = 550,
  Instruction_kv4_v1_sllwps = 551,
  Instruction_kv4_v1_slsbos = 552,
  Instruction_kv4_v1_slsd = 553,
  Instruction_kv4_v1_slshqs = 554,
  Instruction_kv4_v1_slsw = 555,
  Instruction_kv4_v1_slswps = 556,
  Instruction_kv4_v1_slusbos = 557,
  Instruction_kv4_v1_slusd = 558,
  Instruction_kv4_v1_slushqs = 559,
  Instruction_kv4_v1_slusw = 560,
  Instruction_kv4_v1_sluswps = 561,
  Instruction_kv4_v1_so = 562,
  Instruction_kv4_v1_sq = 563,
  Instruction_kv4_v1_srabos = 564,
  Instruction_kv4_v1_srad = 565,
  Instruction_kv4_v1_srahqs = 566,
  Instruction_kv4_v1_sraw = 567,
  Instruction_kv4_v1_srawps = 568,
  Instruction_kv4_v1_srlbos = 569,
  Instruction_kv4_v1_srld = 570,
  Instruction_kv4_v1_srlhqs = 571,
  Instruction_kv4_v1_srlw = 572,
  Instruction_kv4_v1_srlwps = 573,
  Instruction_kv4_v1_srsbos = 574,
  Instruction_kv4_v1_srsd = 575,
  Instruction_kv4_v1_srshqs = 576,
  Instruction_kv4_v1_srsw = 577,
  Instruction_kv4_v1_srswps = 578,
  Instruction_kv4_v1_stop = 579,
  Instruction_kv4_v1_stsud = 580,
  Instruction_kv4_v1_stsuhq = 581,
  Instruction_kv4_v1_stsuw = 582,
  Instruction_kv4_v1_stsuwp = 583,
  Instruction_kv4_v1_sw = 584,
  Instruction_kv4_v1_sxbd = 585,
  Instruction_kv4_v1_sxhd = 586,
  Instruction_kv4_v1_sxlbhq = 587,
  Instruction_kv4_v1_sxlhwp = 588,
  Instruction_kv4_v1_sxmbhq = 589,
  Instruction_kv4_v1_sxmhwp = 590,
  Instruction_kv4_v1_sxwd = 591,
  Instruction_kv4_v1_syncgroup = 592,
  Instruction_kv4_v1_tlbdinval = 593,
  Instruction_kv4_v1_tlbiinval = 594,
  Instruction_kv4_v1_tlbprobe = 595,
  Instruction_kv4_v1_tlbread = 596,
  Instruction_kv4_v1_tlbwrite = 597,
  Instruction_kv4_v1_waitit = 598,
  Instruction_kv4_v1_wfxl = 599,
  Instruction_kv4_v1_wfxm = 600,
  Instruction_kv4_v1_xaccesso = 601,
  Instruction_kv4_v1_xaligno = 602,
  Instruction_kv4_v1_xandno = 603,
  Instruction_kv4_v1_xando = 604,
  Instruction_kv4_v1_xclampwo = 605,
  Instruction_kv4_v1_xcopyo = 606,
  Instruction_kv4_v1_xcopyv = 607,
  Instruction_kv4_v1_xcopyx = 608,
  Instruction_kv4_v1_xeoro = 609,
  Instruction_kv4_v1_xffma44hw = 610,
  Instruction_kv4_v1_xfmaxhx = 611,
  Instruction_kv4_v1_xfminhx = 612,
  Instruction_kv4_v1_xfmma424d_0 = 613,
  Instruction_kv4_v1_xfmma424d_1 = 614,
  Instruction_kv4_v1_xfmma444w_0 = 615,
  Instruction_kv4_v1_xfmma444w_1 = 616,
  Instruction_kv4_v1_xfmma484hw = 617,
  Instruction_kv4_v1_xfnarrow44wh = 618,
  Instruction_kv4_v1_xfscalewo = 619,
  Instruction_kv4_v1_xiorno = 620,
  Instruction_kv4_v1_xioro = 621,
  Instruction_kv4_v1_xlo = 622,
  Instruction_kv4_v1_xmadd44bw0 = 623,
  Instruction_kv4_v1_xmadd44bw1 = 624,
  Instruction_kv4_v1_xmaddifwo = 625,
  Instruction_kv4_v1_xmaddsu44bw0 = 626,
  Instruction_kv4_v1_xmaddsu44bw1 = 627,
  Instruction_kv4_v1_xmaddu44bw0 = 628,
  Instruction_kv4_v1_xmaddu44bw1 = 629,
  Instruction_kv4_v1_xmma4164bw = 630,
  Instruction_kv4_v1_xmma484bw = 631,
  Instruction_kv4_v1_xmmasu4164bw = 632,
  Instruction_kv4_v1_xmmasu484bw = 633,
  Instruction_kv4_v1_xmmau4164bw = 634,
  Instruction_kv4_v1_xmmau484bw = 635,
  Instruction_kv4_v1_xmmaus4164bw = 636,
  Instruction_kv4_v1_xmmaus484bw = 637,
  Instruction_kv4_v1_xmovefd = 638,
  Instruction_kv4_v1_xmovefo = 639,
  Instruction_kv4_v1_xmovefq = 640,
  Instruction_kv4_v1_xmovetd = 641,
  Instruction_kv4_v1_xmovetq = 642,
  Instruction_kv4_v1_xmsbfifwo = 643,
  Instruction_kv4_v1_xmt44d = 644,
  Instruction_kv4_v1_xnando = 645,
  Instruction_kv4_v1_xneoro = 646,
  Instruction_kv4_v1_xnioro = 647,
  Instruction_kv4_v1_xrecvo = 648,
  Instruction_kv4_v1_xsbmm8dq = 649,
  Instruction_kv4_v1_xsbmmt8dq = 650,
  Instruction_kv4_v1_xsendo = 651,
  Instruction_kv4_v1_xsendrecvo = 652,
  Instruction_kv4_v1_xso = 653,
  Instruction_kv4_v1_xsplatdo = 654,
  Instruction_kv4_v1_xsplatov = 655,
  Instruction_kv4_v1_xsplatox = 656,
  Instruction_kv4_v1_xsx48bw = 657,
  Instruction_kv4_v1_xtrunc48wb = 658,
  Instruction_kv4_v1_xzx48bw = 659,
  Instruction_kv4_v1_zxbd = 660,
  Instruction_kv4_v1_zxhd = 661,
  Instruction_kv4_v1_zxlbhq = 662,
  Instruction_kv4_v1_zxlhwp = 663,
  Instruction_kv4_v1_zxmbhq = 664,
  Instruction_kv4_v1_zxmhwp = 665,
  Instruction_kv4_v1_zxwd = 666,
  Separator_kv4_v1_comma = 667,
  Separator_kv4_v1_equal = 668,
  Separator_kv4_v1_qmark = 669,
  Separator_kv4_v1_rsbracket = 670,
  Separator_kv4_v1_lsbracket = 671
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
#define Reservation_kv4_v1_ALU_TINY_AUXR 5
#define Reservation_kv4_v1_ALU_LITE 6
#define Reservation_kv4_v1_ALU_LITE_X 7
#define Reservation_kv4_v1_ALU_LITE_Y 8
#define Reservation_kv4_v1_ALU_FULL 9
#define Reservation_kv4_v1_ALU_FULL_X 10
#define Reservation_kv4_v1_ALU_FULL_Y 11
#define Reservation_kv4_v1_BCU 12
#define Reservation_kv4_v1_BCU_XFER 13
#define Reservation_kv4_v1_LSU 14
#define Reservation_kv4_v1_LSU_X 15
#define Reservation_kv4_v1_LSU_Y 16
#define Reservation_kv4_v1_LSU_MEMW 17
#define Reservation_kv4_v1_LSU_MEMW_X 18
#define Reservation_kv4_v1_LSU_MEMW_Y 19
#define Reservation_kv4_v1_LSU_AUXR 20
#define Reservation_kv4_v1_LSU_AUXR_X 21
#define Reservation_kv4_v1_LSU_AUXR_Y 22
#define Reservation_kv4_v1_LSU_AUXR_MEMW 23
#define Reservation_kv4_v1_LSU_AUXR_MEMW_X 24
#define Reservation_kv4_v1_LSU_AUXR_MEMW_Y 25
#define Reservation_kv4_v1_LSU_AUXW_MEMW 26
#define Reservation_kv4_v1_LSU_AUXW_MEMW_X 27
#define Reservation_kv4_v1_LSU_AUXW_MEMW_Y 28
#define Reservation_kv4_v1_LSU_AUXW 29
#define Reservation_kv4_v1_LSU_AUXW_X 30
#define Reservation_kv4_v1_LSU_AUXW_Y 31
#define Reservation_kv4_v1_LSU_AUXR_AUXW 32
#define Reservation_kv4_v1_LSU_AUXR_AUXW_X 33
#define Reservation_kv4_v1_LSU_AUXR_AUXW_Y 34
#define Reservation_kv4_v1_LSU_AUXR_AUXW_MEMW 35
#define Reservation_kv4_v1_LSU_AUXR_AUXW_MEMW_X 36
#define Reservation_kv4_v1_LSU_AUXR_AUXW_MEMW_Y 37
#define Reservation_kv4_v1_MAU 38
#define Reservation_kv4_v1_EXT 39
#define Reservation_kv4_v1_EXT_MAU 40
#define Reservation_kv4_v1_EXT_CRRP 41
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
