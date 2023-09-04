
/******************************************/
/* Begin Kernel                           */
/******************************************/
.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
.text
.protected Custom_Cijk_Ailk_Bljk_F8H_HSS_BH_Bias_GG_AS_SAB_SAV_UserArgs_MT256x144x32_MI16x16x1_GRVWA4_GRVWB2_AF0EM4_WGM8_MO2_DTVA_SwapAB
.globl Custom_Cijk_Ailk_Bljk_F8H_HSS_BH_Bias_GG_AS_SAB_SAV_UserArgs_MT256x144x32_MI16x16x1_GRVWA4_GRVWB2_AF0EM4_WGM8_MO2_DTVA_SwapAB
.p2align 8
.type Custom_Cijk_Ailk_Bljk_F8H_HSS_BH_Bias_GG_AS_SAB_SAV_UserArgs_MT256x144x32_MI16x16x1_GRVWA4_GRVWB2_AF0EM4_WGM8_MO2_DTVA_SwapAB,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Custom_Cijk_Ailk_Bljk_F8H_HSS_BH_Bias_GG_AS_SAB_SAV_UserArgs_MT256x144x32_MI16x16x1_GRVWA4_GRVWB2_AF0EM4_WGM8_MO2_DTVA_SwapAB
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_accum_offset 128 // accvgpr offset
  .amdhsa_next_free_vgpr 256 // vgprs
  .amdhsa_next_free_sgpr 84 // sgprs
  .amdhsa_group_segment_fixed_size 32768 // lds bytes
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
  .amdhsa_user_sgpr_count 13
  .amdhsa_user_sgpr_kernarg_preload_length 11
  .amdhsa_user_sgpr_kernarg_preload_offset 0
.end_amdhsa_kernel
.text
/* Num VGPR   =112 */
/* Num AccVGPR=144 */
/* Num SGPR   =84 */

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 16 x 9 */
/* SubGroup= 16 x 16 */
/* VectorWidthA=4 */
/* VectorWidthB=1 */
/* GlobalReadVectorWidthA=4, GlobalReadVectorWidthB=2 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=1 */
.amdgpu_metadata
---
custom.config:
   ProblemType:
      OperationType: GEMM
      DataTypeA: f8
      DataTypeB: h
      UseScaleAB: True
      DataType: h
      DestDataType: s
      ComputeDataType: s
      HighPrecisionAccumulate: True
      TransposeA: False
      TransposeB: False
      UseBias: True
      Activation: True
      UseScaleAlphaVec: True
      UseBeta: True
      Batched: True
      GroupedGemm:   True
      SupportUserArgs: True
   MatrixInstruction: [16, 16, 16, 1, 1, 4,9, 4,1]
   1LDSBuffer: 1
   ScheduleIterAlg: 3
   DepthU: 32
   StaggerU: 0
   WorkGroupMapping: 8
   WaveSeparateGlobalReadA: 1
   WaveSeparateGlobalReadB: 1
   GlobalReadVectorWidthA: 4
   GlobalReadVectorWidthB: 2
   AssertFree0ElementMultiple: 4
   AssertSummationElementMultiple: 64
   NoReject: 1
   InternalSupportParams: {SupportCustomWGM: false, SupportUserGSU: false}
amdhsa.version:
  - 1
  - 1
amdhsa.kernels:
  - .name: Custom_Cijk_Ailk_Bljk_F8H_HSS_BH_Bias_GG_AS_SAB_SAV_UserArgs_MT256x144x32_MI16x16x1_GRVWA4_GRVWB2_AF0EM4_WGM8_MO2_DTVA_SwapAB
    .symbol: 'Custom_Cijk_Ailk_Bljk_F8H_HSS_BH_Bias_GG_AS_SAB_SAV_UserArgs_MT256x144x32_MI16x16x1_GRVWA4_GRVWB2_AF0EM4_WGM8_MO2_DTVA_SwapAB.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            SizesFree0
        .size:            4
        .offset:          0
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree1
        .size:            4
        .offset:          4
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree2
        .size:            4
        .offset:          8
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesSum0
        .size:            4
        .offset:          12
        .value_kind:      by_value
        .value_type:      u32
      - .name:            D
        .size:            8
        .offset:          16
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            C
        .size:            8
        .offset:          24
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            A
        .size:            8
        .offset:          32
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            B
        .size:            8
        .offset:          40
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            strideD0
        .size:            4
        .offset:          48
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideD1
        .size:            4
        .offset:          52
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC0
        .size:            4
        .offset:          56
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC1
        .size:            4
        .offset:          60
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA0
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA1
        .size:            4
        .offset:          68
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB0
        .size:            4
        .offset:          72
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB1
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            alpha
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      f32
      - .name:            beta
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      f32
      - .name:            AddressScaleA
        .size:            8
        .offset:          88
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            AddressScaleB
        .size:            8
        .offset:          96
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            AddressScaleAlphaVec
        .size:            8
        .offset:          104
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            bias
        .size:            8
        .offset:          112
        .value_kind:      global_buffer
        .value_type:      void
        .address_space:   generic
      - .name:            biasType
        .size:            4
        .offset:          120
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StrideBias
        .size:            4
        .offset:          124
        .value_kind:      by_value
        .value_type:      u32
      - .name:            activationAlpha
        .size:            4
        .offset:          128
        .value_kind:      by_value
        .value_type:      f32
      - .name:            activationBeta
        .size:            4
        .offset:          132
        .value_kind:      by_value
        .value_type:      f32
      - .name:            activationType
        .size:            4
        .offset:          136
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   26368
    .kernarg_segment_align:      8
    .kernarg_segment_size:       144
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 84
    .sgpr_spill_count:           0
    .vgpr_count:                 112
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Custom_Cijk_Ailk_Bljk_F8H_HSS_BH_Bias_GG_AS_SAB_SAV_UserArgs_MT256x144x32_MI16x16x1_GRVWA4_GRVWB2_AF0EM4_WGM8_MO2_DTVA_SwapAB:

/* Magic div and mod functions */
.macro V_MAGIC_DIV dstIdx:req dividend:req magicNumber:req magicShift:req magicA:req
    v_mul_hi_u32 v[\dstIdx+1] \dividend \magicNumber
    v_mul_lo_u32 v[\dstIdx+0] \dividend \magicA
    v_add_u32 v[\dstIdx+0] v[\dstIdx+0] v[\dstIdx+1]
    v_lshrrev_b32 v[\dstIdx+0] \magicShift v[\dstIdx+0]
.endm

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-0), serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 0
.set vgprValuA_X1_I0, 8
// .set vgprValuA_X0_I0_D0, 8
// .set vgprValuA_X1_I0_D0, 10
// .set vgprValuA_X0_I0_D1, 12
// .set vgprValuA_X1_I0_D1, 14
// .set vgprValuA_X0_I0_D2, 16
// .set vgprValuA_X1_I0_D2, 18
// .set vgprValuA_X0_I0_D3, 20
// .set vgprValuA_X1_I0_D3, 22
.set vgprValuB_X0_I0, 16
.set vgprValuB_X1_I0, 34
.set vgprLocalWriteAddrA, 52
.set vgprLocalWriteAddrB, 53
.set vgprGlobalReadOffsetA, 54
.set vgprGlobalReadOffsetB, 55
.set vgprG2LA, 56
.set vgprG2LB, 64
.set vgprG2LB2, 56
.set vgprG2LA2, 65
.set vgprLocalReadAddrA, 73
.set vgprLocalReadAddrB, 74
.set vgprSerial, 75
.set vgprTmpG2LAx8, 76
.set vgprTmpCVTx2, 84
.set vgprAcc, 112

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0
.set sgprWorkGroup0, 2
.set sgprWorkGroup1, 3
.set sgprWorkGroup2, 4
.set sgprExternalArgAddress, 6
.set sgprGSUSumIdx, 8
.set sgprGSULog2BpeC, 5
.set sgprGSULog2BpeD, 10
.set sgprLoopCounterL, 11
.set sgprOrigLoopCounter, 12
.set sgprSrdD, 16
.set sgprSrdC, 20
.set sgprNumWorkGroups0, 13
.set sgprNumWorkGroups1, 14
.set sgprSizesFree, 24
.set sgprSizesSum, 27
.set sgprAddressD, 28
.set sgprAddressC, 30
.set sgprAddressA, 32
.set sgprAddressB, 34
.set sgprStridesD, 36
.set sgprStridesC, 38
.set sgprStridesA, 40
.set sgprStridesB, 42
.set sgprAlpha, 44
.set sgprBeta, 45
.set sgprGSU, 46
.set sgprSrdA, 48
.set sgprSrdB, 52
.set sgprShadowLimitA, 56
.set sgprShadowLimitB, 58
.set sgprGlobalReadIncsA, 15
.set sgprGlobalReadIncsB, 47
.set sgprPackKForV0, 60
.set sgprPackKForV1, 61
.set sgprScalarGlobalReadOffsetA, 62
.set sgprScalarGlobalReadOffsetB, 69

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesFree+2
.set sgprSizeL, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesD+0
.set sgprStrideDK, sgprStridesD+1
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set sgprStrideCK, sgprStridesC+1
.set constStrideA0I, 1
.set sgprStrideAL, sgprStridesA+0
.set sgprStrideAK, sgprStridesA+1
.set constStrideBL, 1
.set sgprStrideB1J, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1

.set MT0, 256
.set MT1, 144
.set DepthU, 32
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
.set BpeAGR, 1
.set BpeAGRLog2, 0
.set BpeBGR, 2
.set BpeBGRLog2, 1
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 4
.set SrdShiftLeftB, 2
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimit, 0xffffffff
.set BufferOOB, 0x80000000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x00020000                        */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* num_format (3b): 0                     */
/* data_format (4b): 4                    */
/* user_vm_enable (1b): 0                 */
/* user_vm_mode (1b): 0                   */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* _unusedA (3b): 0                       */
/* nv (1b): 0                             */
/* _unusedB (2b): 0                       */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x00020000

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffset0I:req vgprOffsetL:req vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0] s[sgprStrideAL] v[\vgprOffsetL] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0] vcc v[\vgprOffset0I] v[\vgprTmp+0] // accumulate K lower
    v_add_u32 v[\vgprAddr+0] 0x4 v[\vgprAddr+0]      // add prepad for pointer shift
                                                       // offset *= bytes/element (multiplier is 1 do nothing)
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetL:req vgprOffset1J:req vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0] s[sgprStrideB1J] v[\vgprOffset1J] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0] vcc v[\vgprOffsetL] v[\vgprTmp+0] // accumulate K lower
    v_add_u32 v[\vgprAddr+0] 0x2 v[\vgprAddr+0]      // add prepad for pointer shift
    v_lshlrev_b32 v[\vgprAddr+0] 0x1 v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Dynamic Scalar Divide: vQuotient=vDividend/vDivisor; vRemainder=vDividend%vDivisor; */
.macro DYNAMIC_VECTOR_DIVIDE vQuotient vRemainder vDividend vDivisor vTmp0 vTmp1 sTmp
    v_cvt_f32_u32 v[\vQuotient] v[\vDivisor]
    v_rcp_f32 v[\vQuotient] v[\vQuotient]
    v_mul_f32 v[\vQuotient] 0x4f800000 v[\vQuotient]
    v_cvt_u32_f32 v[\vQuotient] v[\vQuotient]
    v_mul_lo_u32 v[\vRemainder] v[\vDivisor] v[\vQuotient]
    v_mul_hi_u32 v[\vTmp0] v[\vDivisor] v[\vQuotient]
    v_sub_co_u32 v[\vTmp1] vcc 0x0 v[\vRemainder]
    v_cmp_ne_i32 s[\sTmp:\sTmp+1] 0x0 v[\vTmp0]
    v_cndmask_b32 v[\vRemainder] v[\vTmp1] v[\vRemainder] s[\sTmp:\sTmp+1]
    v_mul_hi_u32 v[\vRemainder] v[\vRemainder] v[\vQuotient]
    v_sub_co_u32 v[\vTmp0] vcc v[\vQuotient] v[\vRemainder]
    v_add_co_u32 v[\vQuotient] vcc v[\vQuotient] v[\vRemainder]
    v_cndmask_b32 v[\vQuotient] v[\vQuotient] v[\vTmp0] s[\sTmp:\sTmp+1]
    v_mul_hi_u32 v[\vQuotient] v[\vQuotient] v[\vDividend]
    v_mul_lo_u32 v[\vRemainder] v[\vQuotient] v[\vDivisor]
    v_sub_co_u32 v[\vTmp0] vcc v[\vDividend] v[\vRemainder]
    v_cmp_ge_u32 s[\sTmp:\sTmp+1] v[\vDividend] v[\vRemainder]
    v_add_co_u32 v[\vRemainder] vcc 0x1 v[\vQuotient]
    v_add_co_u32 v[\vTmp1] vcc -1 v[\vQuotient]
    v_cmp_le_u32 vcc v[\vDivisor] v[\vTmp0]
    s_and_b64 vcc s[\sTmp:\sTmp+1] vcc
    v_cndmask_b32 v[\vQuotient] v[\vQuotient] v[\vRemainder] vcc
    v_cndmask_b32 v[\vQuotient] v[\vTmp1] v[\vQuotient] s[\sTmp:\sTmp+1]
    v_cmp_ne_i32 vcc 0x0 v[\vDivisor]
    v_cndmask_b32 v[\vQuotient] -1 v[\vQuotient] vcc // final result
    v_mul_lo_u32 v[\vRemainder] v[\vQuotient] v[\vDivisor]
    v_sub_co_u32 v[\vRemainder] vcc v[\vDividend] v[\vRemainder] // final result
.endm

/******************************************/
/* Allocate Resources                     */
/******************************************/

/* Grouped Gemm: Load num of Gemms */
s_load_dword s27, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0

/* Grouped Gemm: Load GSU data */
s_load_dword s[sgprGSU], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x18

/* Grouped Gemm: Load address of external kernel arguments */
s_load_dwordx2 s[sgprExternalArgAddress:sgprExternalArgAddress+1], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x4

/* Grouped Gemm: Load address of kernel arguments */
s_load_dwordx2 s[sgprKernArgAddress:sgprKernArgAddress+1], s[sgprKernArgAddress:sgprKernArgAddress+1], 0xc
s_waitcnt lgkmcnt(0)
s_branch label_common_kernel_entry

/* pad 54 snops to satisfy 0x100 code size for Preload Backward Compatibility Prologue */
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_mov_b32 s27, s2                                  // Grouped Gemm: Load num of Gemms
s_mov_b32 s[sgprGSU], s8                           // Load GSU data
s_mov_b32 s9, s7
s_mov_b32 s[sgprKernArgAddress+1], s6              // Load address of kernel arguments
s_mov_b32 s[sgprKernArgAddress], s5                // Load address of kernel arguments
s_mov_b32 s[sgprExternalArgAddress+1], s4          // Load address of external kernel arguments
s_mov_b32 s[sgprExternalArgAddress], s3            // Load address of external kernel arguments
label_common_kernel_entry:  /// for both preload/non-preload common code
s_mov_b32 s[sgprPackKForV0], 0x05040100
s_mov_b32 s[sgprPackKForV1], 0x07060302
s_mov_b32 m0, 0x6700                               // LDS clamp at 26368 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id
s_mov_b32 s[sgprWorkGroup0+0], s13                 // restore workgroup id
s_mov_b32 s[sgprWorkGroup0+1], s14                 // restore workgroup id
s_mov_b32 s[sgprWorkGroup0+2], s15                 // restore workgroup id

/* Check if custom structure pointer is null */
s_cmp_eq_u64 s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0 // s[ExternalArgAddress] == 0 ?
s_cbranch_scc0 label_IsExternalValid               // branch if s[ExternalArgAddress] != 0
s_mov_b32 s26, 140
s_mul_i32 s22, s27, 4
s_mov_b64 s[16:17], s[sgprKernArgAddress:sgprKernArgAddress+1]
s_branch label_IsExternalValidEnd
label_IsExternalValid:
s_mov_b32 s26, 196
s_mov_b32 s22, 0x0
s_mov_b64 s[16:17], s[sgprExternalArgAddress:sgprExternalArgAddress+1]
label_IsExternalValidEnd:

/* Grouped Gemm:: prefetch 1 arg load */
s_mov_b32 s24, 1
s_mov_b32 s23, 0
s_load_dwordx4 s[12:15], s[16:17], s22
s_cmpk_eq_u32 s27, 1                               // if gemm_count is 1?
s_cbranch_scc1 label_wgTable_noLoadLoop

/* Grouped Gemm:: accumulate numTiles for each gemm */
/* Grouped Gemm:: loop start */
label_Loop_GemmCount:
s_waitcnt lgkmcnt(0)
s_lshr_b32 s20, s12, 8                             // s20 = s12 / 256
s_and_b32 s18, 255, s12                            // s18 = s12 % 256
s_addc_u32 s20, s20, 0x0
s_mov_b32 s19, 0x0                                 // STATIC_DIV: divisior=144
s_mul_i32 s18, 0x38e, s13                          // tmp1 = dividend * magic hi
s_lshl_b64 s[18:19], s[18:19], 0x10                // left shift 16 bits
s_mul_i32 s21, s13, 0x38e4                         // tmp0 = dividend * magic lo
s_add_u32 s18, s21, s18                            // add lo
s_addc_u32 s19, s19, 0x0                           // add hi
s_lshr_b64 s[18:19], s[18:19], 0x21                // tmp0 = quotient
s_mul_i32 s19, s18, 0x90                           // tmp1 = quotient * divisor
s_cmp_lg_u32 s19, s13                              // if (quotient * divisor != dividend), result+=1
s_addc_u32 s21, s18, 0x0                           // if (quotient * divisor != dividend), result+=1
s_mul_i32 s20, s20, s21
s_mul_i32 s20, s20, s14
s_mul_i32 s20, s20, s[sgprGSU]
s_add_u32 s23, s23, s20
s_cmp_lt_u32 s[sgprWorkGroup0], s23
s_cbranch_scc1 label_FOUND
s_add_u32 s22, s22, s26
s_load_dwordx4 s[12:15], s[16:17], s22
s_add_u32 s24, s24, 1
s_cmp_lt_u32 s24, s27
s_cbranch_scc1 label_Loop_GemmCount

/* Grouped Gemm:: noLoadLoop */
label_wgTable_noLoadLoop:
s_waitcnt lgkmcnt(0)
s_lshr_b32 s20, s12, 8                             // s20 = s12 / 256
s_and_b32 s18, 255, s12                            // s18 = s12 % 256
s_addc_u32 s20, s20, 0x0
s_mov_b32 s19, 0x0                                 // STATIC_DIV: divisior=144
s_mul_i32 s18, 0x38e, s13                          // tmp1 = dividend * magic hi
s_lshl_b64 s[18:19], s[18:19], 0x10                // left shift 16 bits
s_mul_i32 s21, s13, 0x38e4                         // tmp0 = dividend * magic lo
s_add_u32 s18, s21, s18                            // add lo
s_addc_u32 s19, s19, 0x0                           // add hi
s_lshr_b64 s[18:19], s[18:19], 0x21                // tmp0 = quotient
s_mul_i32 s19, s18, 0x90                           // tmp1 = quotient * divisor
s_cmp_lg_u32 s19, s13                              // if (quotient * divisor != dividend), result+=1
s_addc_u32 s21, s18, 0x0                           // if (quotient * divisor != dividend), result+=1
s_mul_i32 s20, s20, s21
s_mul_i32 s20, s20, s14
s_mul_i32 s20, s20, s[sgprGSU]
s_add_u32 s23, s23, s20

/* Grouped Gemm:: gemmIndex found */
label_FOUND:
s_sub_u32 s11, s24, 1
s_sub_u32 s8, s23, s20
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s8
/* Check if custom structure pointer is null */
s_cmp_eq_u64 s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0 // s[ExternalArgAddress] == 0 ?
s_cbranch_scc0 label_LoadExternalStruct            // branch if s[ExternalArgAddress] != 0

/* Grouped Gemm: offset argument address to gemm */
/* Grouped Gemm: offset address from wg_table_start to args_start */
s_lshl2_add_u32 s[sgprKernArgAddress], s27, s[sgprKernArgAddress]
s_addc_u32 s[sgprKernArgAddress+1], s[sgprKernArgAddress+1], 0x0
/* Grouped Gemm: offset address from args_start to gemm_start */
s_mul_i32 s11, s11, 140
s_add_u32 s[sgprKernArgAddress], s[sgprKernArgAddress], s11
s_addc_u32 s[sgprKernArgAddress+1], s[sgprKernArgAddress+1], 0x0

/* Load Kernel Args */
s_load_dwordx16 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0
s_load_dwordx4 s[40:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40
s_load_dwordx2 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x50
s_branch label_LoadExternalStructEnd
label_LoadExternalStruct:
/* Grouped Gemm: offset address from args_start to gemm_start */
s_mul_i32 s11, s11, 196
s_add_u32 s[sgprExternalArgAddress], s[sgprExternalArgAddress], s11
s_addc_u32 s[sgprExternalArgAddress+1], s[sgprExternalArgAddress+1], 0x0
s_load_dwordx16 s[24:39], s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0x0
s_load_dwordx4 s[40:43], s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0x40
s_load_dword s44, s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0x50
// Read Beta
s_load_dword s45, s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0x60
label_LoadExternalStructEnd:
/* init: add vgpr [0...60) to pool */
/* init: add vgpr [0...0) to pool */
/* init: add agpr [0...144) to pool */

/******************************************/
/* Local Read Addresses                   */
/******************************************/

/* local read addresses: tile assignments a/b */
/* lr0I */
v_and_b32 v1, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v0, 15, v1                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
v_lshrrev_b32 v1, 4, v1                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v1, 0, v1                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v1, 0x4, v1                          // 2. block offset: bnOffset = bnIdx * strideBlock(16)
v_add_u32 v0, v1, v0                               // 3. add N and block offset: bnOffset = block and N offset
v_lshlrev_b32 v0, 0x2, v0                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_and_b32 v1, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v1, 4, v1                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v1, 0xa, v1                          // 5. K offset: lrKOffset = kIdx * mStride(1024)
v_add_u32 v0, v1, v0                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v1, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v1, 3, v1                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(4)
v_lshlrev_b32 v1, 0x6, v1                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(64)
v_add_u32 v0, v1, v0                               // 7. final local read offset: flrOffset = lrOffset + WOffset
/* lr1J */
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v1, 0x5, v1                          // 1. N offset: nOffset = nIdx * nStride(32)
v_lshrrev_b32 v2, 4, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v2, 0, v2                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v2, 0x9, v2                          // 2. block offset: bnOffset = bnIdx * strideBlock(512)
v_add_u32 v1, v2, v1                               // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v2, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v2, 4, v2                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v2, 0x2, v2                          // 5. K offset: lrKOffset = kIdx * mStride(4)
v_add_u32 v1, v2, v1                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset

/* local read addresses: final offsets a */
v_lshrrev_b32 v2, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s15, 256                                 // LSU offset: stride = MT0(256) + PAD0(0)
v_mul_lo_u32 v2, s15, v2                           // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_add_lshl_u32 v[vgprLocalReadAddrA], v2, v0, 0x1  // Final Offset: offset = (lro0*VW+lsuoffset)*bpe

/* local read addresses: final offsets b */
v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s15, 144                                 // LSU offset: stride = MT1(144) + PAD1(0)
v_mul_lo_u32 v0, s15, v0                           // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v1, 0x1  // Final Offset: offset = (lro1*VW+lsuoffset)*bpe
v_lshrrev_b32 v2, 7, v[vgprLocalReadAddrB]         // Final Offset: padding 4 per block 128
v_lshlrev_b32 v2, 0x3, v2                          // Final Offset: padding 4 per block 128
v_add_u32 v[vgprLocalReadAddrB], v2, v[vgprLocalReadAddrB] // Final Offset: add padding 4 per block 128

/* local read addresses: declare addresses a */
/* N/A */

/* local read addresses: declare addresses b */
// DTVA
// v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x4000, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)

/******************************************/
/* Local Write Addresses                  */
/******************************************/
/* LVCA = 64 */
/* v1 = A-unroll = serial/LVCA */
v_and_b32 v4, 63, v[vgprSerial]                    // v4 = v[vgprSerial] % 64
v_lshrrev_b32 v1, 6, v4                            // v1 = v4 / 64
v_and_b32 v0, 63, v4                               // v0 = v4 % 64
v_readfirstlane_b32 s15, v[vgprSerial]             // WaveIdxWavefrontWidth
s_lshr_b32 s15, s15, 0x6                           // WaveId
s_mul_i32 s15, s15, 8                              // Each wave loads continuous lsp(1)*nrp(8) columns
v_add_u32 v1, s15, v1                              // Add back to column index
/* tile *= glvw */
v_lshlrev_b32 v0, 0x2, v0                          // v0 = v0 * 4
v_mov_b32 v4, v1                                   // copy for GlobalSplitU
/* LVCB = 16 */
/* v3 = B-unroll = serial%LVCB */
v_and_b32 v5, 63, v[vgprSerial]                    // v5 = v[vgprSerial] % 64
v_lshrrev_b32 v2, 4, v5                            // v2 = v5 / 16
v_and_b32 v3, 15, v5                               // v3 = v5 % 16
v_readfirstlane_b32 s15, v[vgprSerial]             // WaveIdxWavefrontWidth
s_lshr_b32 s15, s15, 0x6                           // WaveId
s_mul_i32 s15, s15, 36                             // Each wave loads continuous lsp(4)*nrp(9) columns
v_add_u32 v2, s15, v2                              // Add back to column index
/* unroll *= glvw */
v_lshlrev_b32 v3, 0x1, v3                          // v3 = v3 * 2
v_mov_b32 v5, v3                                   // copy for GlobalSplitU
/* lwaUnrollAssignmentA = v4 */
/* lwaUnrollAssignmentB = v5 */

/* local write addresses: first offset a */
v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x100, v4    // lwAL**(MTA + PAD)
v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe

/* local write addresses: first offset b */
v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x20, v2     // lwBL**(DepthU_Compute + PAD)
v_add_lshl_u32 v[vgprLocalWriteAddrB], v5, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(DepthU+PAD))*bpe
v_lshrrev_b32 v6, 7, v[vgprLocalWriteAddrB]        // padding 4 per block 128
v_lshlrev_b32 v6, 0x3, v6                          // padding 4 per block 128
v_add_u32 v[vgprLocalWriteAddrB], v6, v[vgprLocalWriteAddrB] // add padding 4 per block 128
// DTVA
// v_add_co_u32 v[vgprLocalWriteAddrB], vcc, 0x4000, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=8192*2
s_waitcnt lgkmcnt(0)                               // wait for 44/0 bytes of kern args
label_stop:
v_mov_b32 v8, MT0                                  // set MT0 into sgpr
v_mov_b32 v7, s[sgprSizesFree+0]                   // set Free0 size
v_cvt_f32_u32 v6, v8                               // v6 = ceil(v7 / v8)
v_rcp_iflag_f32 v6, v6                             // v6 = ceil(v7 / v8)
v_cvt_f32_u32 v9, v7                               // v6 = ceil(v7 / v8)
v_mul_f32 v6, v6, v9                               // v6 = ceil(v7 / v8)
v_cvt_u32_f32 v6, v6                               // v6 = ceil(v7 / v8)
v_mul_u32_u24 v9, v6, v8                           // v6 = ceil(v7 / v8)
v_sub_u32 v9, v7, v9                               // v6 = ceil(v7 / v8)
v_cmp_ne_u32 vcc, v9, 0                            // v6 = ceil(v7 / v8)
v_addc_co_u32 v6, vcc, v6, 0, vcc                  // ceil
v_mov_b32 v8, MT1                                  // set MT1 into sgpr
v_mov_b32 v7, s[sgprSizesFree+1]                   // set Free1 size
v_readfirstlane_b32 s[sgprNumWorkGroups0], v6      // set back to numWorkGroup0
v_cvt_f32_u32 v6, v8                               // v6 = ceil(v7 / v8)
v_rcp_iflag_f32 v6, v6                             // v6 = ceil(v7 / v8)
v_cvt_f32_u32 v9, v7                               // v6 = ceil(v7 / v8)
v_mul_f32 v6, v6, v9                               // v6 = ceil(v7 / v8)
v_cvt_u32_f32 v6, v6                               // v6 = ceil(v7 / v8)
v_mul_u32_u24 v9, v6, v8                           // v6 = ceil(v7 / v8)
v_sub_u32 v9, v7, v9                               // v6 = ceil(v7 / v8)
v_cmp_ne_u32 vcc, v9, 0                            // v6 = ceil(v7 / v8)
v_addc_co_u32 v6, vcc, v6, 0, vcc                  // ceil
s_nop 0                                            // 1 wait states
v_readfirstlane_b32 s[sgprNumWorkGroups1], v6      // set back to numWorkGroup1

/* Early stop if N(SizeFreeJ) == 0 */
s_cmp_eq_u32 s[sgprSizeJ], 0x0
s_cbranch_scc0 label_NoEarlyStop_N0
label_EarlyStop_if_N_is_0:
s_endpgm
label_NoEarlyStop_N0:

/* Grouped Gemm: remap wg from 1D(idxWG012) to 3D(wg2,wg1,wg0) */
/* wg2 = idxWG012 * smallMagicNumber(1/(numWG0*numWG1)) */
s_mul_i32 s78, s[sgprNumWorkGroups0], s[sgprNumWorkGroups1]
s_mul_i32 s78, s78, s[sgprGSU]
v_cvt_f32_u32 v6, s78                              // s78 = s[sgprWorkGroup0] / s78
v_rcp_iflag_f32 v6, v6                             // s78 = s[sgprWorkGroup0] / s78
v_cvt_f32_u32 v7, s[sgprWorkGroup0]                // s78 = s[sgprWorkGroup0] / s78
v_mul_f32 v6, v6, v7                               // s78 = s[sgprWorkGroup0] / s78
v_cvt_u32_f32 v6, v6                               // s78 = s[sgprWorkGroup0] / s78
v_mul_u32_u24 v7, v6, s78                          // s78 = s[sgprWorkGroup0] / s78
v_sub_u32 v7, s[sgprWorkGroup0], v7                // s78 = s[sgprWorkGroup0] / s78
v_cmpx_eq_u32 exec, v7, s78                        // s78 = s[sgprWorkGroup0] / s78
v_add_u32 v6, 1, v6                                // s78 = s[sgprWorkGroup0] / s78
s_mov_b64 exec, -1                                 // s78 = s[sgprWorkGroup0] / s78
v_readfirstlane_b32 s78, v6
s_mov_b32 s[sgprWorkGroup2], s78
/* idxWG01 = idxWG012 - wg2 * numWG0 * numWG1 */
s_mul_i32 s78, s[sgprNumWorkGroups1], s[sgprNumWorkGroups0]
s_mul_i32 s78, s78, s[sgprWorkGroup2]
s_mul_i32 s78, s78, s[sgprGSU]
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s78
/* wg1 = idxWG01 * smallMagicNumber(1/numWG0) */
v_cvt_f32_u32 v6, s[sgprNumWorkGroups0]            // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_rcp_iflag_f32 v6, v6                             // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cvt_f32_u32 v7, s[sgprWorkGroup0]                // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_mul_f32 v6, v6, v7                               // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cvt_u32_f32 v6, v6                               // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_mul_u32_u24 v7, v6, s[sgprNumWorkGroups0]        // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_sub_u32 v7, s[sgprWorkGroup0], v7                // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cmpx_eq_u32 exec, v7, s[sgprNumWorkGroups0]      // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_add_u32 v6, 1, v6                                // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
s_mov_b64 exec, -1                                 // s78 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_readfirstlane_b32 s78, v6
s_mov_b32 s[sgprWorkGroup1], s78
/* wg0 = idxWG01 - wg1 * numWG0 */
s_mul_i32 s78, s[sgprWorkGroup1], s[sgprNumWorkGroups0]
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s78

/* Early stop if wg exceed */
s_cmp_ge_u32 s[sgprWorkGroup2], s[sgprSizesFree+2]
s_cbranch_scc0 label_NoEarlyStop_wgExceed
label_EarlyStop_if_wg_exceed:
s_endpgm
label_NoEarlyStop_wgExceed:

s_sub_u32 s[sgprAddressA+0], s[sgprAddressA+0], 4  // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressA+1], s[sgprAddressA+1], 0 // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprAddressB+0], s[sgprAddressB+0], 4  // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressB+1], s[sgprAddressB+1], 0 // pre-pad to make room for possible pointer shift

/* Short circuit condition if Alpha == 0, then sumDims=0 */
v_cmp_eq_f32 vcc, s[sgprAlpha], 0.0                // s[Alpha] == 0.0f ?
s_cbranch_vccz label_AlphaNonZero                  // branch if s[Alpha] != 0
s_mov_b32 s[sgprSizesSum+0], 0x0                   // Set summation dim=0 if Alpha == 0
label_AlphaNonZero:

/******************************************/
/* Begin setupNewTile                     */
/******************************************/

/* global read addresses: work-group */
/* graWorkGroup mapping */
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU                           // branch if GSU == 1
// GSU-not-WGMapRR :nwg1 = (size1J + MT1J - 1) / MT1J;
v_cvt_f32_u32 v6, s[sgprGSU]                       // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_rcp_iflag_f32 v6, v6                             // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_cvt_f32_u32 v7, s[sgprWorkGroup1]                // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_mul_f32 v6, v6, v7                               // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_cvt_u32_f32 v6, v6                               // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_mul_u32_u24 v7, v6, s[sgprGSU]                   // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_sub_u32 v7, s[sgprWorkGroup1], v7                // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_cmpx_eq_u32 exec, v7, s[sgprGSU]                 // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_add_u32 v6, 1, v6                                // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_mov_b32 v7, 0                                    // s[sgprGSUSumIdx] = s[sgprWorkGroup1] % s[sgprGSU]
s_mov_b64 exec, -1                                 // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_readfirstlane_b32 s[sgprWorkGroup1], v6
v_readfirstlane_b32 s[sgprGSUSumIdx], v7
s_mov_b32 s[sgprGSULog2BpeC], 2
s_mov_b32 s[sgprGSULog2BpeD], 2
s_branch label_GSU_End
label_GSU:
s_mov_b64 s[sgprGSUSumIdx:sgprGSUSumIdx+1], 0      // Set GSUSumIdx to 0
s_mov_b32 s[sgprGSULog2BpeC], 2
s_mov_b32 s[sgprGSULog2BpeD], 2
label_GSU_End:
s_mov_b32 s82, 0x10000001L                         // magic number for WGM==8
s_mul_hi_u32 s79, s[sgprWorkGroup1], s82           // s_magic mul
s_mul_i32 s78, s[sgprWorkGroup1], s82              // s_magic mul
s_lshr_b64 s[78:79], s[78:79], 31                  // sMagicDiv
s_mul_i32 s79, s78, 8                              // quotient * non-magic divisor
s_sub_u32 s79, s[sgprWorkGroup1], s79              // WorkGroup1=remainder
s_mul_i32 s79, s79, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s79, s79, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg0
s_mul_hi_u32 s81, s[sgprNumWorkGroups1], s82       // s_magic mul
s_mul_i32 s80, s[sgprNumWorkGroups1], s82          // s_magic mul
s_lshr_b64 s[80:81], s[80:81], 31                  // sMagicDiv
s_mul_i32 s81, 8, s80                              // quotient * non-magic divisor
s_sub_u32 s82, s[sgprNumWorkGroups1], s81          // WorkGroup1=remainder
s_cmp_eq_u32 s82, 0                                // remainder == 0 ?
s_cmov_b32 s82, 8                                  // remainder = WGM if remainder == 0
s_cmp_ge_u32 s78, s80                              // blockId >= numFullBlocks ?
s_cselect_b32 s80, s82, 8
v_cvt_f32_u32 v6, s80                              // s[sgprWorkGroup0] = s79 / s80
v_rcp_iflag_f32 v6, v6                             // s[sgprWorkGroup0] = s79 / s80
v_cvt_f32_u32 v7, s79                              // s[sgprWorkGroup0] = s79 / s80
v_mul_f32 v6, v6, v7                               // s[sgprWorkGroup0] = s79 / s80
v_cvt_u32_f32 v6, v6                               // s[sgprWorkGroup0] = s79 / s80
v_mul_u32_u24 v7, v6, s80                          // s[sgprWorkGroup0] = s79 / s80
v_sub_u32 v7, s79, v7                              // s[sgprWorkGroup0] = s79 / s80
v_cmpx_eq_u32 exec, v7, s80                        // s[sgprWorkGroup0] = s79 / s80
v_add_u32 v6, 1, v6                                // s[sgprWorkGroup0] = s79 / s80
v_mov_b32 v7, 0                                    // s[sgprWorkGroup1] = s79 % s80
s_mov_b64 exec, -1                                 // s[sgprWorkGroup0] = s79 / s80
v_readfirstlane_b32 s[sgprWorkGroup0], v6
v_readfirstlane_b32 s[sgprWorkGroup1], v7
s_mul_i32 s78, s78, 8                              // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s78 // wg1 += blockId * WGM

/* global read addresses: tile offset assignment a */
/* graTileAssignmentA = v0 */

/* global read addresses: tile offset assignment b */
/* graTileAssignmentB = v2 */

/* global read addresses: unroll assignment a */
/* v1 */

/* global read addresses: unroll assignment b */
/* v3 */

/* global read addresses: other free assignments */
/* s[sgprWorkGroup2] */

/* global read addresses: tile offsets a */

/* global read addresses: tile offsets b */

/* global read addresses: unroll offsets a */

/* global read addresses: unroll offsets b */

/* global read addresses: final offsets a */
// GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  0,  1, 6 // gROA_0_0_0_0
// DTVA
v_and_b32 v1, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v0, 15, v1                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
v_lshrrev_b32 v1, 4, v1                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v1, 0, v1                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v1, 0x4, v1                          // 2. block offset: bnOffset = bnIdx * strideBlock(16)
v_add_u32 v0, v1, v0                               // 3. add N and block offset: bnOffset = block and N offset
v_lshlrev_b32 v0, 0x2, v0                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_and_b32 v1, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v1, 4, v1                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
// v_lshlrev_b32 v1, 0xa, v1                          // 5. K offset: lrKOffset = kIdx * mStride(1024)
v_mul_lo_u32 v1, 4, v1
v_mul_lo_u32 v1, s[sgprStrideAL], v1
v_add_u32 v0, v1, v0                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v1, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v1, 3, v1                                // 7. wave offset in M dimen: wtid0 = wtid % num1DWaves(4)
v_lshlrev_b32 v1, 0x6, v1                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(64)
// v_add_u32 v0, v1, v0                               // 7. final local read offset: flrOffset = lrOffset + WOffset
v_add_lshl_u32 v[vgprGlobalReadOffsetA], v1, v0, 0x0
v_add_u32 v[vgprGlobalReadOffsetA], 4, v[vgprGlobalReadOffsetA]      // add prepad for pointer shift

s_mul_i32 s[sgprScalarGlobalReadOffsetA+0], s[sgprStrideAL], 1 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+1], s[sgprStrideAL], 2 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+2], s[sgprStrideAL], 3 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+3], s[sgprStrideAL], 16 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+4], s[sgprStrideAL], 17 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+5], s[sgprStrideAL], 18 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+6], s[sgprStrideAL], 19 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)

/* global read addresses: final offsets b */
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  3,  2, 6 // gROB_0_0_0_0
s_mul_i32 s[sgprScalarGlobalReadOffsetB+0], s[sgprStrideB1J], 4 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+0], s[sgprScalarGlobalReadOffsetB+0], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+1], s[sgprStrideB1J], 8 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+1], s[sgprScalarGlobalReadOffsetB+1], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+2], s[sgprStrideB1J], 12 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+2], s[sgprScalarGlobalReadOffsetB+2], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+3], s[sgprStrideB1J], 16 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+3], s[sgprScalarGlobalReadOffsetB+3], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+4], s[sgprStrideB1J], 20 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+4], s[sgprScalarGlobalReadOffsetB+4], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+5], s[sgprStrideB1J], 24 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+5], s[sgprScalarGlobalReadOffsetB+5], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+6], s[sgprStrideB1J], 28 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+6], s[sgprScalarGlobalReadOffsetB+6], 0x1 // scalar offset *= bytes/element
s_mul_i32 s[sgprScalarGlobalReadOffsetB+7], s[sgprStrideB1J], 32 // compute offset diff (scaled tileDim)
s_lshl_b32 s[sgprScalarGlobalReadOffsetB+7], s[sgprScalarGlobalReadOffsetB+7], 0x1 // scalar offset *= bytes/element

/* global read addresses: addresses a */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s81, s[sgprWorkGroup0], 256           // WorkGroup[01] * MT
s_mul_i32 s80, s[sgprWorkGroup0], 256              // WorkGroup[01] * MT
s_mul_hi_u32 s79, 32, s[sgprGSUSumIdx]             // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_i32 s78, 32, s[sgprGSUSumIdx]                // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_hi_u32 s79, s78, s[sgprStrideAL]             // tlu=1, scaled unroll-offset by stride
s_mul_i32 s78, s78, s[sgprStrideAL]                // tlu=1, scaled unroll-offset by stride
s_add_u32 s80, s80, s78                            // accum GsuOffset term to tilestart
s_addc_u32 s81, s81, s79                           // accum GsuOffset term to tilestart
s_mov_b32 s82, 1                                   // Init tensor size
s_mov_b32 s83, 0                                   // init tensor size
s_sub_u32 s78, s[sgprSizeI], 1                     // (size-1)
s_mul_hi_u32 s79, constStrideA0I, s78              // stride x (size-1)
s_mul_i32 s78, constStrideA0I, s78                 // stride x (size-1)
s_add_u32 s82, s82, s78                            // sum tensor size
s_addc_u32 s83, s83, s79                           // sum tensor size
s_sub_u32 s78, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s79, s[sgprStrideAL], s78             // stride x (size-1)
s_mul_i32 s78, s[sgprStrideAL], s78                // stride x (size-1)
s_add_u32 s82, s82, s78                            // sum tensor size
s_addc_u32 s83, s83, s79                           // sum tensor size
s_sub_u32 s[sgprShadowLimitA+0], s82, s80          // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s83, s81         // sub tileStart
                                                   // Set limit to use bytes (byte is 1, do nothing)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s79, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s78, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s80, s80, s78                            // accum wg term to tilestart
s_addc_u32 s81, s81, s79                           // accum wg term to tilestart
                                                   // tileStart *= BPE (multiplier is 1, do nothing)
s_add_u32 s[sgprSrdA+0], s[sgprAddressA+0], s80    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprAddressA+1], s81   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD

/* global read addresses: addresses b */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s81, s[sgprWorkGroup1], 144           // WorkGroup[01] * MT
s_mul_i32 s80, s[sgprWorkGroup1], 144              // WorkGroup[01] * MT
s_mul_hi_u32 s81, s80, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s80, s80, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_mul_hi_u32 s79, 32, s[sgprGSUSumIdx]             // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_i32 s78, 32, s[sgprGSUSumIdx]                // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_add_u32 s80, s80, s78                            // accum GsuOffset term to tilestart
s_addc_u32 s81, s81, s79                           // accum GsuOffset term to tilestart
s_mov_b32 s82, 1                                   // Init tensor size
s_mov_b32 s83, 0                                   // init tensor size
s_sub_u32 s78, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s79, constStrideBL, s78               // stride x (size-1)
s_mul_i32 s78, constStrideBL, s78                  // stride x (size-1)
s_add_u32 s82, s82, s78                            // sum tensor size
s_addc_u32 s83, s83, s79                           // sum tensor size
s_sub_u32 s78, s[sgprSizeJ], 1                     // (size-1)
s_mul_hi_u32 s79, s[sgprStrideB1J], s78            // stride x (size-1)
s_mul_i32 s78, s[sgprStrideB1J], s78               // stride x (size-1)
s_add_u32 s82, s82, s78                            // sum tensor size
s_addc_u32 s83, s83, s79                           // sum tensor size
s_sub_u32 s[sgprShadowLimitB+0], s82, s80          // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s83, s81         // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s79, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s78, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s80, s80, s78                            // accum wg term to tilestart
s_addc_u32 s81, s81, s79                           // accum wg term to tilestart
s_lshl_b64 s[80:81], s[80:81], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprAddressB+0], s80    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprAddressB+1], s81   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD
s_mul_i32 s77, s[sgprGSU], DepthU*BpeAGR
s_mul_i32 s[sgprGlobalReadIncsA+0], s77, s[sgprStrideAL] // incrA unrollIdx)

/* global read addresses: increments b */
s_mul_i32 s77, s[sgprGSU], DepthU*BpeBGR
s_mov_b32 s[sgprGlobalReadIncsB+0], s77            // incrB (unrollIdx)
/* declare loop num iterations */
s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 5 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 32
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_1                         // branch if GSU == 1
v_cvt_f32_u32 v0, s[sgprGSU]                       // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_rcp_iflag_f32 v0, v0                             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_cvt_f32_u32 v1, s[sgprLoopCounterL]              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_mul_f32 v0, v0, v1                               // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_cvt_u32_f32 v0, v0                               // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_mul_u32_u24 v1, v0, s[sgprGSU]                   // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_sub_u32 v1, s[sgprLoopCounterL], v1              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_cmpx_eq_u32 exec, v1, s[sgprGSU]                 // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_add_u32 v0, 1, v0                                // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_mov_b32 v1, 0                                    // s[sgprGSUSumIdx+1] = s[sgprLoopCounterL] % s[sgprGSU]
s_mov_b64 exec, -1                                 // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_readfirstlane_b32 s[sgprLoopCounterL], v0
v_readfirstlane_b32 s[sgprGSUSumIdx+1], v1
s_add_u32 s78, 1, s[sgprLoopCounterL]              // tmp<-numIterMyWg+
s_cmp_lt_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx < numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], s78                // numIterMyWg++ if needed
label_GSU_1:
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter
/* local read addresses: init pointers a */

/* localReadInitPointers */
/* local read addresses: init pointers b */

/* localReadInitPointers */

/* prefetch: global -> local */
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 label_ShadowInitStart               // skip to ShadowInitStart iter b/c numIter==0
buffer_load_dword v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LA+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LA+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LA+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dword v[vgprG2LA+4], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // G -> Reg 0_0_4_0
buffer_load_dword v[vgprG2LA+5], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // G -> Reg 0_0_5_0
buffer_load_dword v[vgprG2LA+6], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // G -> Reg 0_0_6_0
buffer_load_dword v[vgprG2LA+7], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // G -> Reg 0_0_7_0
buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LB+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LB+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LB+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dword v[vgprG2LB+4], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:0 // G -> Reg 0_0_4_0
buffer_load_dword v[vgprG2LB+5], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:0 // G -> Reg 0_0_5_0
buffer_load_dword v[vgprG2LB+6], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:0 // G -> Reg 0_0_6_0
buffer_load_dword v[vgprG2LB+7], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:0 // G -> Reg 0_0_7_0
buffer_load_dword v[vgprG2LB+8], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+7] offen offset:0 // G -> Reg 0_0_8_0

s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], 0x0       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0x0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32

s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], 0x0       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0x0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32

/******************************************/
/* End setupNewTile                       */
/******************************************/
label_ShadowInitStart:
s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdD+2], 0x80000000
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+0], s[sgprAddressC+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdC+1], s[sgprAddressC+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdC+2], 0x80000000
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s80, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s79, s80, s[sgprStrideC1J]            // ScaleC s80 by Stride
s_mul_i32 s78, s80, s[sgprStrideC1J]               // ScaleC s80 by Stride
s_lshl_b64 s[78:79], s[78:79], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprAddressC+0], s78    // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprAddressC+1], s79   // add hi to SRD
s_mul_hi_u32 s79, s80, s[sgprStrideD1J]            // ScaleD s80 by Stride
s_mul_i32 s78, s80, s[sgprStrideD1J]               // ScaleD s80 by Stride
s_lshl_b64 s[78:79], s[78:79], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprAddressD+0], s78    // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprAddressD+1], s79   // add hi to SRD

s_mul_hi_u32 s79, s[sgprWorkGroup2], s[sgprStrideCK] // ScaleC s[sgprWorkGroup2] by Stride
s_mul_i32 s78, s[sgprWorkGroup2], s[sgprStrideCK]  // ScaleC s[sgprWorkGroup2] by Stride
s_lshl_b64 s[78:79], s[78:79], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s78        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s79       // add hi to SRD
s_mul_hi_u32 s79, s[sgprWorkGroup2], s[sgprStrideDK] // ScaleD s[sgprWorkGroup2] by Stride
s_mul_i32 s78, s[sgprWorkGroup2], s[sgprStrideDK]  // ScaleD s[sgprWorkGroup2] by Stride
s_lshl_b64 s[78:79], s[78:79], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s78        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s79       // add hi to SRD

s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_2                         // branch if GSU == 1
// GSU Output Buffer offset: Free0 + (Free1-1)*StrideC1J + (Free2-1)*StrideCK * GSUIdx * bpe%s
s_mul_hi_u32 s79, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_mul_i32 s78, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_sub_u32 s82, s[sgprSizesFree+1], 1               // Free1
s_mul_i32 s82, s82, s[sgprGSUSumIdx]               // Free1
s_mul_hi_u32 s81, s82, s[sgprStrideC1J]            // Free1
s_mul_i32 s80, s82, s[sgprStrideC1J]               // Free1
s_add_u32 s78, s78, s80                            // Free1
s_addc_u32 s79, s79, s81                           // Free1
s_sub_u32 s82, s[sgprSizesFree+2], 1               // Free2
s_mul_i32 s82, s82, s[sgprGSUSumIdx]               // Free2
s_mul_hi_u32 s81, s82, s[sgprStrideCK]             // Free2
s_mul_i32 s80, s82, s[sgprStrideCK]                // Free2
s_add_u32 s78, s78, s80                            // Free2
s_addc_u32 s79, s79, s81                           // Free2
s_lshl_b64 s[78:79], s[78:79], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s78        // add lo GSU offset to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s79       // add hi GSU offset to SRD
label_GSU_2:
.set sgprGSULog2BpeC, UNDEF

/* initC: remove ValuC vgpr buffer [0...0) from pool */

/* initC: remove acc vgpr buffer [0...144) from pool */

/* initC: remove ValuA/B vgpr buffer [0...60) from pool */
v_accvgpr_write acc0, 0x0                          // initC
v_accvgpr_write acc1, 0x0                          // initC
v_accvgpr_write acc2, 0x0                          // initC
v_accvgpr_write acc3, 0x0                          // initC
v_accvgpr_write acc4, 0x0                          // initC
v_accvgpr_write acc5, 0x0                          // initC
v_accvgpr_write acc6, 0x0                          // initC
v_accvgpr_write acc7, 0x0                          // initC
v_accvgpr_write acc8, 0x0                          // initC
v_accvgpr_write acc9, 0x0                          // initC
v_accvgpr_write acc10, 0x0                         // initC
v_accvgpr_write acc11, 0x0                         // initC
v_accvgpr_write acc12, 0x0                         // initC
v_accvgpr_write acc13, 0x0                         // initC
v_accvgpr_write acc14, 0x0                         // initC
v_accvgpr_write acc15, 0x0                         // initC
v_accvgpr_write acc16, 0x0                         // initC
v_accvgpr_write acc17, 0x0                         // initC
v_accvgpr_write acc18, 0x0                         // initC
v_accvgpr_write acc19, 0x0                         // initC
v_accvgpr_write acc20, 0x0                         // initC
v_accvgpr_write acc21, 0x0                         // initC
v_accvgpr_write acc22, 0x0                         // initC
v_accvgpr_write acc23, 0x0                         // initC
v_accvgpr_write acc24, 0x0                         // initC
v_accvgpr_write acc25, 0x0                         // initC
v_accvgpr_write acc26, 0x0                         // initC
v_accvgpr_write acc27, 0x0                         // initC
v_accvgpr_write acc28, 0x0                         // initC
v_accvgpr_write acc29, 0x0                         // initC
v_accvgpr_write acc30, 0x0                         // initC
v_accvgpr_write acc31, 0x0                         // initC
v_accvgpr_write acc32, 0x0                         // initC
v_accvgpr_write acc33, 0x0                         // initC
v_accvgpr_write acc34, 0x0                         // initC
v_accvgpr_write acc35, 0x0                         // initC
v_accvgpr_write acc36, 0x0                         // initC
v_accvgpr_write acc37, 0x0                         // initC
v_accvgpr_write acc38, 0x0                         // initC
v_accvgpr_write acc39, 0x0                         // initC
v_accvgpr_write acc40, 0x0                         // initC
v_accvgpr_write acc41, 0x0                         // initC
v_accvgpr_write acc42, 0x0                         // initC
v_accvgpr_write acc43, 0x0                         // initC
v_accvgpr_write acc44, 0x0                         // initC
v_accvgpr_write acc45, 0x0                         // initC
v_accvgpr_write acc46, 0x0                         // initC
v_accvgpr_write acc47, 0x0                         // initC
v_accvgpr_write acc48, 0x0                         // initC
v_accvgpr_write acc49, 0x0                         // initC
v_accvgpr_write acc50, 0x0                         // initC
v_accvgpr_write acc51, 0x0                         // initC
v_accvgpr_write acc52, 0x0                         // initC
v_accvgpr_write acc53, 0x0                         // initC
v_accvgpr_write acc54, 0x0                         // initC
v_accvgpr_write acc55, 0x0                         // initC
v_accvgpr_write acc56, 0x0                         // initC
v_accvgpr_write acc57, 0x0                         // initC
v_accvgpr_write acc58, 0x0                         // initC
v_accvgpr_write acc59, 0x0                         // initC
v_accvgpr_write acc60, 0x0                         // initC
v_accvgpr_write acc61, 0x0                         // initC
v_accvgpr_write acc62, 0x0                         // initC
v_accvgpr_write acc63, 0x0                         // initC
v_accvgpr_write acc64, 0x0                         // initC
v_accvgpr_write acc65, 0x0                         // initC
v_accvgpr_write acc66, 0x0                         // initC
v_accvgpr_write acc67, 0x0                         // initC
v_accvgpr_write acc68, 0x0                         // initC
v_accvgpr_write acc69, 0x0                         // initC
v_accvgpr_write acc70, 0x0                         // initC
v_accvgpr_write acc71, 0x0                         // initC
v_accvgpr_write acc72, 0x0                         // initC
v_accvgpr_write acc73, 0x0                         // initC
v_accvgpr_write acc74, 0x0                         // initC
v_accvgpr_write acc75, 0x0                         // initC
v_accvgpr_write acc76, 0x0                         // initC
v_accvgpr_write acc77, 0x0                         // initC
v_accvgpr_write acc78, 0x0                         // initC
v_accvgpr_write acc79, 0x0                         // initC
v_accvgpr_write acc80, 0x0                         // initC
v_accvgpr_write acc81, 0x0                         // initC
v_accvgpr_write acc82, 0x0                         // initC
v_accvgpr_write acc83, 0x0                         // initC
v_accvgpr_write acc84, 0x0                         // initC
v_accvgpr_write acc85, 0x0                         // initC
v_accvgpr_write acc86, 0x0                         // initC
v_accvgpr_write acc87, 0x0                         // initC
v_accvgpr_write acc88, 0x0                         // initC
v_accvgpr_write acc89, 0x0                         // initC
v_accvgpr_write acc90, 0x0                         // initC
v_accvgpr_write acc91, 0x0                         // initC
v_accvgpr_write acc92, 0x0                         // initC
v_accvgpr_write acc93, 0x0                         // initC
v_accvgpr_write acc94, 0x0                         // initC
v_accvgpr_write acc95, 0x0                         // initC
v_accvgpr_write acc96, 0x0                         // initC
v_accvgpr_write acc97, 0x0                         // initC
v_accvgpr_write acc98, 0x0                         // initC
v_accvgpr_write acc99, 0x0                         // initC
v_accvgpr_write acc100, 0x0                        // initC
v_accvgpr_write acc101, 0x0                        // initC
v_accvgpr_write acc102, 0x0                        // initC
v_accvgpr_write acc103, 0x0                        // initC
v_accvgpr_write acc104, 0x0                        // initC
v_accvgpr_write acc105, 0x0                        // initC
v_accvgpr_write acc106, 0x0                        // initC
v_accvgpr_write acc107, 0x0                        // initC
v_accvgpr_write acc108, 0x0                        // initC
v_accvgpr_write acc109, 0x0                        // initC
v_accvgpr_write acc110, 0x0                        // initC
v_accvgpr_write acc111, 0x0                        // initC
v_accvgpr_write acc112, 0x0                        // initC
v_accvgpr_write acc113, 0x0                        // initC
v_accvgpr_write acc114, 0x0                        // initC
v_accvgpr_write acc115, 0x0                        // initC
v_accvgpr_write acc116, 0x0                        // initC
v_accvgpr_write acc117, 0x0                        // initC
v_accvgpr_write acc118, 0x0                        // initC
v_accvgpr_write acc119, 0x0                        // initC
v_accvgpr_write acc120, 0x0                        // initC
v_accvgpr_write acc121, 0x0                        // initC
v_accvgpr_write acc122, 0x0                        // initC
v_accvgpr_write acc123, 0x0                        // initC
v_accvgpr_write acc124, 0x0                        // initC
v_accvgpr_write acc125, 0x0                        // initC
v_accvgpr_write acc126, 0x0                        // initC
v_accvgpr_write acc127, 0x0                        // initC
v_mov_b32 v[vgprAcc-128+128], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+129], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+130], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+131], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+132], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+133], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+134], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+135], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+136], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+137], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+138], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+139], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+140], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+141], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+142], 0x0                        // initC
v_mov_b32 v[vgprAcc-128+143], 0x0                        // initC
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?

/* after InitC, skip to end of prefetch last iter if numIter==0 */
s_cbranch_scc0 label_NoBranch_MT3QKJTNKQJ8YIJ2_0   // Only branch on scc1
s_getpc_b64 s[78:79]                               // addr of next instr
s_add_i32 s80, label_PrefetchGlobalLastIterEnd, 0x4 // target branch offset
s_add_u32 s78, s78, s80                            // add target branch offset
s_addc_u32 s79, s79, 0                             // add high and carry
s_setpc_b64 s[78:79]                               // branch to label_PrefetchGlobalLastIterEnd
label_NoBranch_MT3QKJTNKQJ8YIJ2_0:
s_waitcnt vmcnt(0)                                 // 8wait for global read

/* local write a */
v_mov_b32 v[vgprTmpG2LAx8+0], v[vgprG2LA+0]
v_mov_b32 v[vgprTmpG2LAx8+1], v[vgprG2LA+1]
v_mov_b32 v[vgprTmpG2LAx8+2], v[vgprG2LA+2]
v_mov_b32 v[vgprTmpG2LAx8+3], v[vgprG2LA+3]
v_mov_b32 v[vgprTmpG2LAx8+4], v[vgprG2LA+4]
v_mov_b32 v[vgprTmpG2LAx8+5], v[vgprG2LA+5]
v_mov_b32 v[vgprTmpG2LAx8+6], v[vgprG2LA+6]
v_mov_b32 v[vgprTmpG2LAx8+7], v[vgprG2LA+7]

/* local write b */
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:272 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 272
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:544 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 544
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:816 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 816
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:1088 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 1088
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:1360 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 1360
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:1632 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 1632
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1904 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1904
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:2176 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 2176

/* local write swap a */

/* local write swap b */
s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // PGR=2 but only 1 loop
s_cbranch_scc1 label_skipPGR2_0                    // PGR=2 but only 1 loop
buffer_load_dword v[vgprG2LB2+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LB2+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LB2+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LB2+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dword v[vgprG2LB2+4], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:0 // G -> Reg 0_0_4_0
buffer_load_dword v[vgprG2LB2+5], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:0 // G -> Reg 0_0_5_0
buffer_load_dword v[vgprG2LB2+6], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:0 // G -> Reg 0_0_6_0
buffer_load_dword v[vgprG2LB2+7], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:0 // G -> Reg 0_0_7_0
buffer_load_dword v[vgprG2LB2+8], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+7] offen offset:0 // G -> Reg 0_0_8_0
buffer_load_dword v[vgprG2LA2+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dword v[vgprG2LA2+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dword v[vgprG2LA2+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dword v[vgprG2LA2+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dword v[vgprG2LA2+4], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // G -> Reg 0_0_4_0
buffer_load_dword v[vgprG2LA2+5], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // G -> Reg 0_0_5_0
buffer_load_dword v[vgprG2LA2+6], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // G -> Reg 0_0_6_0
buffer_load_dword v[vgprG2LA2+7], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // G -> Reg 0_0_7_0
label_skipPGR2_0:
s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write
// Skip force waitcnt0
s_barrier

/* local read prefetch a */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_0 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_1 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_0 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_1 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_0 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_1 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_0 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
// v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_1 // convert to F32
// v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
// v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

/* local read prefetch b */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+1], v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+6:vgprValuB_X0_I0+6+1], v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+1], v[vgprLocalReadAddrB] offset:4352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+10:vgprValuB_X0_I0+10+1], v[vgprLocalReadAddrB] offset:5440 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+1], v[vgprLocalReadAddrB] offset:6528 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+14:vgprValuB_X0_I0+14+1], v[vgprLocalReadAddrB] offset:7616 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+1], v[vgprLocalReadAddrB] offset:8704 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read inc a */
/* N/A, lro->4096 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */

/* local read inc b */
/* N/A, lro->16 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */

/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/
label_openLoopL:
s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // LoopCounterL < EndCounter
s_cbranch_scc1 label_toPGR1_0                      // PGR=2 but only 1 loop, toPGR1
s_cmp_le_u32 s[sgprLoopCounterL], 0x2              // LoopCounterL < EndCounter
s_cbranch_scc1 label_LoopEndL                      // do not enter LoopL
label_LoopBeginL:

/******************************************/
/* Unrolled Loop 1/2 - Begin              */
/******************************************/

/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

/* iter 0 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:12, lwStartMfmaIndex:19, lwEndMfmaIndex:52  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_b64 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+1], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
ds_read_b64 v[vgprValuB_X1_I0+2:vgprValuB_X1_I0+2+1], v[vgprLocalReadAddrB] offset:1120 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], 0x0       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
ds_read_b64 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+1], v[vgprLocalReadAddrB] offset:2208 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
ds_read_b64 v[vgprValuB_X1_I0+6:vgprValuB_X1_I0+6+1], v[vgprLocalReadAddrB] offset:3296 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0x0 // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
ds_read_b64 v[vgprValuB_X1_I0+8:vgprValuB_X1_I0+8+1], v[vgprLocalReadAddrB] offset:4384 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
ds_read_b64 v[vgprValuB_X1_I0+10:vgprValuB_X1_I0+10+1], v[vgprLocalReadAddrB] offset:5472 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
ds_read_b64 v[vgprValuB_X1_I0+12:vgprValuB_X1_I0+12+1], v[vgprLocalReadAddrB] offset:6560 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:8  */
ds_read_b64 v[vgprValuB_X1_I0+14:vgprValuB_X1_I0+14+1], v[vgprLocalReadAddrB] offset:7648 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], 0x0       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:9  */
ds_read_b64 v[vgprValuB_X1_I0+16:vgprValuB_X1_I0+16+1], v[vgprLocalReadAddrB] offset:8736 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:10  */
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0x0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:11  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:12  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:13  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:14  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
/* schedule remaining localreads for 1LDSB */
/* 1 LDS buffer: read-sync-write */
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:15  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:16  */
buffer_load_dword v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:17  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+1] offset:272 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 272
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:18  */
buffer_load_dword v[vgprG2LA+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // G -> Reg 0_0_1_0
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:19  */
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:20  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+2] offset:544 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 544
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:21  */
buffer_load_dword v[vgprG2LA+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:22  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+3] offset:816 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 816
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:23  */
buffer_load_dword v[vgprG2LA+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // G -> Reg 0_0_3_0
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:24  */
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:25  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+4] offset:1088 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 1088
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:26  */
buffer_load_dword v[vgprG2LA+4], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // G -> Reg 0_0_4_0
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:27  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+5] offset:1360 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 1360
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:28  */
buffer_load_dword v[vgprG2LA+5], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // G -> Reg 0_0_5_0
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:29  */
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:30  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+6] offset:1632 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 1632
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:31  */
buffer_load_dword v[vgprG2LA+6], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // G -> Reg 0_0_6_0
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:32  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+7] offset:1904 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1904
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:33  */
buffer_load_dword v[vgprG2LA+7], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // G -> Reg 0_0_7_0
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:34  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+8] offset:2176 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 2176
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:35  */
buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]

/* iter 1 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:12, lwStartMfmaIndex:19, lwEndMfmaIndex:52  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:36  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+0], v[vgprG2LA2+0]
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:37  */
buffer_load_dword v[vgprG2LB+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:38  */
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:39  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+1], v[vgprG2LA2+1]
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:40  */
buffer_load_dword v[vgprG2LB+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:41  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+2], v[vgprG2LA2+2]
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:42  */
buffer_load_dword v[vgprG2LB+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:0 // G -> Reg 0_0_3_0
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:43  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+3], v[vgprG2LA2+3]
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:44  */
buffer_load_dword v[vgprG2LB+4], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:0 // G -> Reg 0_0_4_0
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:45  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+4], v[vgprG2LA2+4]
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:46  */
buffer_load_dword v[vgprG2LB+5], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:0 // G -> Reg 0_0_5_0
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:47  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+5], v[vgprG2LA2+5]
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:48  */
buffer_load_dword v[vgprG2LB+6], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:0 // G -> Reg 0_0_6_0
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:49  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+6], v[vgprG2LA2+6]
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:50  */
buffer_load_dword v[vgprG2LB+7], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:0 // G -> Reg 0_0_7_0
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:51  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+7], v[vgprG2LA2+7]
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:52  */
buffer_load_dword v[vgprG2LB+8], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+7] offen offset:0 // G -> Reg 0_0_8_0

/* local write swap offsets a */

/* local write swap offsets b */
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:53  */
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:54  */
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:55  */
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:56  */
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:57  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_barrier
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:58  */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:59  */
ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:60  */
ds_read_b64 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+1], v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:61  */
ds_read_b64 v[vgprValuB_X0_I0+6:vgprValuB_X0_I0+6+1], v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+1], v[vgprLocalReadAddrB] offset:4352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:62  */
ds_read_b64 v[vgprValuB_X0_I0+10:vgprValuB_X0_I0+10+1], v[vgprLocalReadAddrB] offset:5440 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+1], v[vgprLocalReadAddrB] offset:6528 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:63  */
ds_read_b64 v[vgprValuB_X0_I0+14:vgprValuB_X0_I0+14+1], v[vgprLocalReadAddrB] offset:7616 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+1], v[vgprLocalReadAddrB] offset:8704 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:64  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:65  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:66  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:67  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:68  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:69  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:70  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:71  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=9 */

s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL

/******************************************/
/* Unrolled Loop 2/2 - Begin              */
/******************************************/

/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

/* iter 0 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:12, lwStartMfmaIndex:19, lwEndMfmaIndex:52  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_b64 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+1], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
ds_read_b64 v[vgprValuB_X1_I0+2:vgprValuB_X1_I0+2+1], v[vgprLocalReadAddrB] offset:1120 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], 0x0       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
ds_read_b64 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+1], v[vgprLocalReadAddrB] offset:2208 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
ds_read_b64 v[vgprValuB_X1_I0+6:vgprValuB_X1_I0+6+1], v[vgprLocalReadAddrB] offset:3296 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0x0 // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
ds_read_b64 v[vgprValuB_X1_I0+8:vgprValuB_X1_I0+8+1], v[vgprLocalReadAddrB] offset:4384 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
ds_read_b64 v[vgprValuB_X1_I0+10:vgprValuB_X1_I0+10+1], v[vgprLocalReadAddrB] offset:5472 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
ds_read_b64 v[vgprValuB_X1_I0+12:vgprValuB_X1_I0+12+1], v[vgprLocalReadAddrB] offset:6560 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:8  */
ds_read_b64 v[vgprValuB_X1_I0+14:vgprValuB_X1_I0+14+1], v[vgprLocalReadAddrB] offset:7648 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], 0x0       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:9  */
ds_read_b64 v[vgprValuB_X1_I0+16:vgprValuB_X1_I0+16+1], v[vgprLocalReadAddrB] offset:8736 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:10  */
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0x0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:11  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:12  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:13  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:14  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
/* schedule remaining localreads for 1LDSB */
/* 1 LDS buffer: read-sync-write */
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:15  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+0], v[vgprG2LA+0]
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:16  */
buffer_load_dword v[vgprG2LB2+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:17  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+1], v[vgprG2LA+1]
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:18  */
buffer_load_dword v[vgprG2LB2+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:19  */
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:20  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+2], v[vgprG2LA+2]
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:21  */
buffer_load_dword v[vgprG2LB2+2], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:22  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+3], v[vgprG2LA+3]
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:23  */
buffer_load_dword v[vgprG2LB2+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:0 // G -> Reg 0_0_3_0
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:24  */
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:25  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+4], v[vgprG2LA+4]
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:26  */
buffer_load_dword v[vgprG2LB2+4], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:0 // G -> Reg 0_0_4_0
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:27  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+5], v[vgprG2LA+5]
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:28  */
buffer_load_dword v[vgprG2LB2+5], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:0 // G -> Reg 0_0_5_0
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:29  */
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:30  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+6], v[vgprG2LA+6]
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:31  */
buffer_load_dword v[vgprG2LB2+6], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:0 // G -> Reg 0_0_6_0
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:32  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+7], v[vgprG2LA+7]
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:33  */
buffer_load_dword v[vgprG2LB2+7], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:0 // G -> Reg 0_0_7_0
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:34  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:35  */
buffer_load_dword v[vgprG2LB2+8], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+7] offen offset:0 // G -> Reg 0_0_8_0
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]

/* iter 1 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:12, lwStartMfmaIndex:19, lwEndMfmaIndex:52  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:36  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:272 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 272
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:37  */
buffer_load_dword v[vgprG2LA2+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:38  */
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:39  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:544 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 544
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:40  */
buffer_load_dword v[vgprG2LA2+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // G -> Reg 0_0_1_0
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:41  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:816 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 816
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:42  */
buffer_load_dword v[vgprG2LA2+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // G -> Reg 0_0_2_0
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:43  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:1088 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 1088
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:44  */
buffer_load_dword v[vgprG2LA2+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // G -> Reg 0_0_3_0
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:45  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:1360 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 1360
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:46  */
buffer_load_dword v[vgprG2LA2+4], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // G -> Reg 0_0_4_0
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:47  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:1632 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 1632
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:48  */
buffer_load_dword v[vgprG2LA2+5], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // G -> Reg 0_0_5_0
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:49  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1904 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1904
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:50  */
buffer_load_dword v[vgprG2LA2+6], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // G -> Reg 0_0_6_0
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:51  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:2176 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 2176
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:52  */
buffer_load_dword v[vgprG2LA2+7], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // G -> Reg 0_0_7_0

/* local write swap offsets a */

/* local write swap offsets b */
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:53  */
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:54  */
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:55  */
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:56  */
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:57  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_barrier
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:58  */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:59  */
ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:60  */
ds_read_b64 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+1], v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:61  */
ds_read_b64 v[vgprValuB_X0_I0+6:vgprValuB_X0_I0+6+1], v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+1], v[vgprLocalReadAddrB] offset:4352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:62  */
ds_read_b64 v[vgprValuB_X0_I0+10:vgprValuB_X0_I0+10+1], v[vgprLocalReadAddrB] offset:5440 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+1], v[vgprLocalReadAddrB] offset:6528 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:63  */
ds_read_b64 v[vgprValuB_X0_I0+14:vgprValuB_X0_I0+14+1], v[vgprLocalReadAddrB] offset:7616 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+1], v[vgprLocalReadAddrB] offset:8704 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:64  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:65  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:66  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:67  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:68  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:69  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:70  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:71  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=9 */

/******************************************/
/* Unrolled Loop - End                    */
/******************************************/

/* closeLoop loopL finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x2              // counterL==2
s_cbranch_scc0 label_LoopBeginL                    // restart LoopL
label_LoopEndL:

/* Before NLL: Check VGPR.checkin for INT8 LW */

/******************************************/
/* Ord. NoGlobalLoadLoop - Begin          */
/******************************************/

/* iter 0 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:12, lwStartMfmaIndex:19, lwEndMfmaIndex:52  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_b64 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+1], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s[sgprGlobalReadIncsA+0] // gra SRD += inc(lower)
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
ds_read_b64 v[vgprValuB_X1_I0+2:vgprValuB_X1_I0+2+1], v[vgprLocalReadAddrB] offset:1120 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], 0x0       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
ds_read_b64 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+1], v[vgprLocalReadAddrB] offset:2208 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s[sgprGlobalReadIncsA+0] // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
ds_read_b64 v[vgprValuB_X1_I0+6:vgprValuB_X1_I0+6+1], v[vgprLocalReadAddrB] offset:3296 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0x0 // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
ds_read_b64 v[vgprValuB_X1_I0+8:vgprValuB_X1_I0+8+1], v[vgprLocalReadAddrB] offset:4384 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
ds_read_b64 v[vgprValuB_X1_I0+10:vgprValuB_X1_I0+10+1], v[vgprLocalReadAddrB] offset:5472 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_cmov_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0]    // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
ds_read_b64 v[vgprValuB_X1_I0+12:vgprValuB_X1_I0+12+1], v[vgprLocalReadAddrB] offset:6560 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s[sgprGlobalReadIncsB+0] // gra SRD += inc(lower)
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:8  */
ds_read_b64 v[vgprValuB_X1_I0+14:vgprValuB_X1_I0+14+1], v[vgprLocalReadAddrB] offset:7648 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], 0x0       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:9  */
ds_read_b64 v[vgprValuB_X1_I0+16:vgprValuB_X1_I0+16+1], v[vgprLocalReadAddrB] offset:8736 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s[sgprGlobalReadIncsB+0] // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:10  */
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0x0 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cmov_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0]    // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:11  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:12  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:13  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:14  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:15  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:16  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:17  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:18  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:19  */
/* schedule remaining localreads for 1LDSB */
/* 1 LDS buffer: read-sync-write */
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:20  */
s_waitcnt vmcnt(16)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:21  */
s_waitcnt vmcnt(15)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+1] offset:272 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 272
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:22  */
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:23  */
s_waitcnt vmcnt(14)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+2] offset:544 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 544
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:24  */
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:25  */
s_waitcnt vmcnt(13)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+3] offset:816 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 816
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:26  */
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:27  */
s_waitcnt vmcnt(12)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+4] offset:1088 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 1088
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:28  */
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:29  */
s_waitcnt vmcnt(11)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+5] offset:1360 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 1360
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:30  */
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:31  */
s_waitcnt vmcnt(10)                                // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+6] offset:1632 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 1632
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:32  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:33  */
s_waitcnt vmcnt(9)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+7] offset:1904 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1904
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:34  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:35  */
s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB2+8] offset:2176 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 2176

/* local read swap offsets a */

/* local read swap offsets b */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=9 */

/* iter 1 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:12, lwStartMfmaIndex:19, lwEndMfmaIndex:52  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:36  */
s_waitcnt lgkmcnt(9)                               // wait for prior local read local write old=0, new=9 newLW=9 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:37  */
s_waitcnt vmcnt(7)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+0], v[vgprG2LA2+0]
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:38  */
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:39  */
s_waitcnt vmcnt(6)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+1], v[vgprG2LA2+1]
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:40  */
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:41  */
s_waitcnt vmcnt(5)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+2], v[vgprG2LA2+2]
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:42  */
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:43  */
s_waitcnt vmcnt(4)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+3], v[vgprG2LA2+3]
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:44  */
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:45  */
s_waitcnt vmcnt(3)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+4], v[vgprG2LA2+4]
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:46  */
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:47  */
s_waitcnt vmcnt(2)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+5], v[vgprG2LA2+5]
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:48  */
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:49  */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+6], v[vgprG2LA2+6]
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:50  */
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:51  */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
v_mov_b32 v[vgprTmpG2LAx8+7], v[vgprG2LA2+7]
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:52  */
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:53  */
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:54  */
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:55  */
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:56  */
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:57  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_barrier
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:58  */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:59  */
ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:60  */
ds_read_b64 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+1], v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:61  */
ds_read_b64 v[vgprValuB_X0_I0+6:vgprValuB_X0_I0+6+1], v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+1], v[vgprLocalReadAddrB] offset:4352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:62  */
ds_read_b64 v[vgprValuB_X0_I0+10:vgprValuB_X0_I0+10+1], v[vgprLocalReadAddrB] offset:5440 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+1], v[vgprLocalReadAddrB] offset:6528 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:63  */
ds_read_b64 v[vgprValuB_X0_I0+14:vgprValuB_X0_I0+14+1], v[vgprLocalReadAddrB] offset:7616 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+1], v[vgprLocalReadAddrB] offset:8704 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:64  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:65  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:66  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:67  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:68  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:69  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:70  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:71  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=9 */
label_toPGR1_0:
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc0 label_GSU_3                         // branch if GSU != 1
label_GSU_3:

/******************************************/
/* Ord. NoLoadLoop - Begin                */
/******************************************/

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:35, lwEndMfmaIndex:35  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_b64 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+1], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
ds_read_b64 v[vgprValuB_X1_I0+2:vgprValuB_X1_I0+2+1], v[vgprLocalReadAddrB] offset:1120 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
ds_read_b64 v[vgprValuB_X1_I0+4:vgprValuB_X1_I0+4+1], v[vgprLocalReadAddrB] offset:2208 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
ds_read_b64 v[vgprValuB_X1_I0+6:vgprValuB_X1_I0+6+1], v[vgprLocalReadAddrB] offset:3296 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
ds_read_b64 v[vgprValuB_X1_I0+8:vgprValuB_X1_I0+8+1], v[vgprLocalReadAddrB] offset:4384 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
ds_read_b64 v[vgprValuB_X1_I0+10:vgprValuB_X1_I0+10+1], v[vgprLocalReadAddrB] offset:5472 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
ds_read_b64 v[vgprValuB_X1_I0+12:vgprValuB_X1_I0+12+1], v[vgprLocalReadAddrB] offset:6560 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:8  */
ds_read_b64 v[vgprValuB_X1_I0+14:vgprValuB_X1_I0+14+1], v[vgprLocalReadAddrB] offset:7648 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:9  */
ds_read_b64 v[vgprValuB_X1_I0+16:vgprValuB_X1_I0+16+1], v[vgprLocalReadAddrB] offset:8736 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:10  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:11  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+4] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:12  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:13  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+5] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:14  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:15  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+6] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:16  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:17  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+7] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:18  */
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:19  */
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:20  */
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:21  */
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:22  */
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:23  */
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:24  */
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:25  */
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:26  */
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:27  */
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:28  */
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:29  */
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:30  */
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:31  */
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:32  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:33  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:34  */
/* schedule remaining localreads for 1LDSB */
/* 1 LDS buffer: read-sync-write */
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:35  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=9 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:35, lwEndMfmaIndex:35  */
/*  numMfmaForLR:17, syncPlrMfmaIndex:54  */
/*  mfmaIndex:36  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:37  */
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:38  */
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:39  */
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:40  */
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:41  */
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:42  */
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:43  */
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X1_I0+2+0+0:vgprValuB_X1_I0+2+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:44  */
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:45  */
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:46  */
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:47  */
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X1_I0+4+0+0:vgprValuB_X1_I0+4+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:48  */
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:49  */
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:50  */
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:51  */
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X1_I0+6+0+0:vgprValuB_X1_I0+6+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/*  mfmaIndex:52  */
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
/*  mfmaIndex:53  */
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
/*  mfmaIndex:54  */
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
/*  mfmaIndex:55  */
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X1_I0+8+0+0:vgprValuB_X1_I0+8+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
/*  mfmaIndex:56  */
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
/*  mfmaIndex:57  */
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
/*  mfmaIndex:58  */
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
/*  mfmaIndex:59  */
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X1_I0+10+0+0:vgprValuB_X1_I0+10+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
/*  mfmaIndex:60  */
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
/*  mfmaIndex:61  */
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
/*  mfmaIndex:62  */
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
/*  mfmaIndex:63  */
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X1_I0+12+0+0:vgprValuB_X1_I0+12+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
/*  mfmaIndex:64  */
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
/*  mfmaIndex:65  */
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
/*  mfmaIndex:66  */
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
/*  mfmaIndex:67  */
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X1_I0+14+0+0:vgprValuB_X1_I0+14+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
/*  mfmaIndex:68  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
/*  mfmaIndex:69  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
/*  mfmaIndex:70  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
/*  mfmaIndex:71  */
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X1_I0+16+0+0:vgprValuB_X1_I0+16+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=9 */
label_PrefetchGlobalLastIterEnd:

/******************************************/
/* Tail Loop                              */
/******************************************/

/* Tail: add ValuA/B vgpr buffer [0...60) to pool */

/* local write reset offsets a */

/* local write reset offsets b */

// numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 31, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 32
s_cmp_lg_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx == numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], 0x0                // numIter=0 if gsuSimIdx!=remainder
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment
s_cbranch_scc1 label_SkipTailLoopL                 // skip to end of tail loop b/c numIter==0

/* Update M0 for DTLDS */

/* global read A */
/* g2l=0, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:1 // load one buffer value
/* g2l=0, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:2 // load one buffer value
/* g2l=0, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+0], v[vgprG2LA+0], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+0], v[vgprG2LA+0], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+0], v[vgprG2LA+0], v2      // pack a sub 8-bit with dest
/* g2l=2, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // load one buffer value
/* g2l=2, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:1 // load one buffer value
/* g2l=2, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:2 // load one buffer value
/* g2l=2, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+1], v[vgprG2LA+1], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+1], v[vgprG2LA+1], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+1], v[vgprG2LA+1], v2      // pack a sub 8-bit with dest
/* g2l=4, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:1 // load one buffer value
/* g2l=4, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:2 // load one buffer value
/* g2l=4, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+2], v[vgprG2LA+2], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+2], v[vgprG2LA+2], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+2], v[vgprG2LA+2], v2      // pack a sub 8-bit with dest
/* g2l=6, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // load one buffer value
/* g2l=6, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:1 // load one buffer value
/* g2l=6, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:2 // load one buffer value
/* g2l=6, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+3], v[vgprG2LA+3], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+3], v[vgprG2LA+3], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+3], v[vgprG2LA+3], v2      // pack a sub 8-bit with dest
/* g2l=8, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+4], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // load one buffer value
/* g2l=8, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:1 // load one buffer value
/* g2l=8, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:2 // load one buffer value
/* g2l=8, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+4], v[vgprG2LA+4], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+4], v[vgprG2LA+4], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+4], v[vgprG2LA+4], v2      // pack a sub 8-bit with dest
/* g2l=10, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+5], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // load one buffer value
/* g2l=10, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:1 // load one buffer value
/* g2l=10, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:2 // load one buffer value
/* g2l=10, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+5], v[vgprG2LA+5], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+5], v[vgprG2LA+5], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+5], v[vgprG2LA+5], v2    // pack a sub 8-bit with dest
/* g2l=12, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+6], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // load one buffer value
/* g2l=12, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:1 // load one buffer value
/* g2l=12, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:2 // load one buffer value
/* g2l=12, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+6], v[vgprG2LA+6], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+6], v[vgprG2LA+6], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+6], v[vgprG2LA+6], v2    // pack a sub 8-bit with dest
/* g2l=14, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+7], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // load one buffer value
/* g2l=14, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:1 // load one buffer value
/* g2l=14, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:2 // load one buffer value
/* g2l=14, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:3 // load one buffer value
s_waitcnt vmcnt(2)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+7], v[vgprG2LA+7], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+7], v[vgprG2LA+7], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+7], v[vgprG2LA+7], v2    // pack a sub 8-bit with dest

/* Update M0 for DTLDS */

/* global read B */
/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v0      // HasEccHalf: pack
/* g2l=1, load component 0 */
buffer_load_short_d16 v[vgprG2LB+1+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // load one buffer value
/* g2l=1, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+1+0], v[vgprG2LB+1+0], v0      // HasEccHalf: pack
/* g2l=2, load component 0 */
buffer_load_short_d16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:0 // load one buffer value
/* g2l=2, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+2+0], v[vgprG2LB+2+0], v0      // HasEccHalf: pack
/* g2l=3, load component 0 */
buffer_load_short_d16 v[vgprG2LB+3+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:0 // load one buffer value
/* g2l=3, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+3+0], v[vgprG2LB+3+0], v0      // HasEccHalf: pack
/* g2l=4, load component 0 */
buffer_load_short_d16 v[vgprG2LB+4+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+0], v[vgprG2LB+4+0], v0      // HasEccHalf: pack
/* g2l=5, load component 0 */
buffer_load_short_d16 v[vgprG2LB+5+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:0 // load one buffer value
/* g2l=5, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+5+0], v[vgprG2LB+5+0], v0      // HasEccHalf: pack
/* g2l=6, load component 0 */
buffer_load_short_d16 v[vgprG2LB+6+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:0 // load one buffer value
/* g2l=6, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+6+0], v[vgprG2LB+6+0], v0      // HasEccHalf: pack
/* g2l=7, load component 0 */
buffer_load_short_d16 v[vgprG2LB+7+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:0 // load one buffer value
/* g2l=7, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+7+0], v[vgprG2LB+7+0], v0      // HasEccHalf: pack
/* g2l=8, load component 0 */
buffer_load_short_d16 v[vgprG2LB+8+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+7] offen offset:0 // load one buffer value
/* g2l=8, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+7] offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+0], v[vgprG2LB+8+0], v0      // HasEccHalf: pack
s_waitcnt vmcnt(0)                                 // 2wait for global read
// Skip force waitcnt0
s_barrier

/* local write a */
v_mov_b32 v[vgprTmpG2LAx8+0], v[vgprG2LA+0]
v_mov_b32 v[vgprTmpG2LAx8+1], v[vgprG2LA+1]
v_mov_b32 v[vgprTmpG2LAx8+2], v[vgprG2LA+2]
v_mov_b32 v[vgprTmpG2LAx8+3], v[vgprG2LA+3]
v_mov_b32 v[vgprTmpG2LAx8+4], v[vgprG2LA+4]
v_mov_b32 v[vgprTmpG2LAx8+5], v[vgprG2LA+5]
v_mov_b32 v[vgprTmpG2LAx8+6], v[vgprG2LA+6]
v_mov_b32 v[vgprTmpG2LAx8+7], v[vgprG2LA+7]

/* local write b */
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+1] offset:272 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 272
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+2] offset:544 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 544
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+3] offset:816 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 816
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+4] offset:1088 // lwoB_0_0_4_0 = (0*LSCB)*(MT1J+PAD) + (4*LSPB) = 1088
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+5] offset:1360 // lwoB_0_0_5_0 = (0*LSCB)*(MT1J+PAD) + (5*LSPB) = 1360
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+6] offset:1632 // lwoB_0_0_6_0 = (0*LSCB)*(MT1J+PAD) + (6*LSPB) = 1632
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+7] offset:1904 // lwoB_0_0_7_0 = (0*LSCB)*(MT1J+PAD) + (7*LSPB) = 1904
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+8] offset:2176 // lwoB_0_0_8_0 = (0*LSCB)*(MT1J+PAD) + (8*LSPB) = 2176

/* Recalc local read offsets */
s_waitcnt lgkmcnt(0)                               // 5wait for local write
// Skip force waitcnt0
s_barrier

/* local read reset offsets a */

/* local read reset offsets b */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */

/* tail loop: macs */
label_TailLoopBeginL:

/* Tail: remove ValuA/B vgpr buffer [0...60) from pool */

/* Tail: add address/G2L vgpr [60...91) to pool */

/* local read a */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+2] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx8+3] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_mov_b32 v[vgprTmpG2LAx8+0], v[vgprTmpG2LAx8+4]
v_mov_b32 v[vgprTmpG2LAx8+1], v[vgprTmpG2LAx8+5]
v_mov_b32 v[vgprTmpG2LAx8+2], v[vgprTmpG2LAx8+6]
v_mov_b32 v[vgprTmpG2LAx8+3], v[vgprTmpG2LAx8+7]

/* local read b */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB] offset:1088 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+1], v[vgprLocalReadAddrB] offset:2176 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=2 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+6:vgprValuB_X0_I0+6+1], v[vgprLocalReadAddrB] offset:3264 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=3 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+1], v[vgprLocalReadAddrB] offset:4352 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=4 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+10:vgprValuB_X0_I0+10+1], v[vgprLocalReadAddrB] offset:5440 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=5 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+1], v[vgprLocalReadAddrB] offset:6528 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=6 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+14:vgprValuB_X0_I0+14+1], v[vgprLocalReadAddrB] offset:7616 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=7 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+16:vgprValuB_X0_I0+16+1], v[vgprLocalReadAddrB] offset:8704 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=8 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read inc a */
s_mov_b32 s5, 0x2000                               // inc
v_add_co_u32 v[vgprLocalReadAddrA], vcc, s5, v[vgprLocalReadAddrA] // lrA += 8192 (LSU*(MT+PAD)*bpe)

/* local read inc b */
s_mov_b32 s5, 0x20                                 // inc
v_add_co_u32 v[vgprLocalReadAddrB], vcc, s5, v[vgprLocalReadAddrB] // lrB += 32 (LSU*bpe)
s_waitcnt lgkmcnt(0)                               // 4wait for local read
v_and_b32 v60, 63, v[vgprSerial]                   // v60 = v[vgprSerial] % 64
v_lshrrev_b32 v60, 4, v60                          // v60 = v60 / 16
v_lshlrev_b32 v60, 0x2, v60                        // v60 = v60 * 4
v_cmp_ge_i32 s[78:79], v60, s[sgprLoopCounterL]    // check K index >= Size L
v_cndmask_b32 v[vgprValuA_X0_I0+0+0], v[vgprValuA_X0_I0+0+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+0], v[vgprValuA_X0_I0+2+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+4+0], v[vgprValuA_X0_I0+4+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+6+0], v[vgprValuA_X0_I0+6+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+0+1], v[vgprValuA_X0_I0+0+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+1], v[vgprValuA_X0_I0+2+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+4+1], v[vgprValuA_X0_I0+4+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+6+1], v[vgprValuA_X0_I0+6+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+0], v[vgprValuB_X0_I0+2+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+4+0], v[vgprValuB_X0_I0+4+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+6+0], v[vgprValuB_X0_I0+6+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+8+0], v[vgprValuB_X0_I0+8+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+10+0], v[vgprValuB_X0_I0+10+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+12+0], v[vgprValuB_X0_I0+12+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+14+0], v[vgprValuB_X0_I0+14+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+16+0], v[vgprValuB_X0_I0+16+0], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+1], v[vgprValuB_X0_I0+0+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+1], v[vgprValuB_X0_I0+2+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+4+1], v[vgprValuB_X0_I0+4+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+6+1], v[vgprValuB_X0_I0+6+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+8+1], v[vgprValuB_X0_I0+8+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+10+1], v[vgprValuB_X0_I0+10+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+12+1], v[vgprValuB_X0_I0+12+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+14+1], v[vgprValuB_X0_I0+14+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+16+1], v[vgprValuB_X0_I0+16+1], 0x0, s[78:79] // set 0 if K_idx >= sizeL
v_sub_u32 v60, s[sgprLoopCounterL], v60            // get distance between size and k index
v_cmp_lt_i32 s[78:79], v60, 4                      // set partial 0 if distance less than input per thread
s_and_b32 s80, s[sgprLoopCounterL], 3              // get inputs for edge thread
s_sub_u32 s80, 4, s80                              // use shift to fill 0 for outside element
s_lshl_b32 s80, s80, 4                             // use shift to fill 0 for outside element
v_lshlrev_b64 v[62:63], s80, v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+0], v[vgprValuA_X0_I0+2+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+0], v[vgprValuA_X0_I0+4+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+0], v[vgprValuA_X0_I0+6+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+0], v[vgprValuB_X0_I0+2+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+1], v[vgprValuB_X0_I0+2+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+4+0+0+0], v[vgprValuB_X0_I0+4+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+6+0+0+0], v[vgprValuB_X0_I0+6+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+6+0+0+1], v[vgprValuB_X0_I0+6+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+8+0+0+0], v[vgprValuB_X0_I0+8+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+8+0+0+1], v[vgprValuB_X0_I0+8+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+10+0+0+0], v[vgprValuB_X0_I0+10+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+10+0+0+1], v[vgprValuB_X0_I0+10+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+12+0+0+0], v[vgprValuB_X0_I0+12+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+12+0+0+1], v[vgprValuB_X0_I0+12+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+14+0+0+0], v[vgprValuB_X0_I0+14+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+14+0+0+1], v[vgprValuB_X0_I0+14+0+0+1], v63, s[78:79]
v_lshlrev_b64 v[62:63], s80, v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+16+0+0+0], v[vgprValuB_X0_I0+16+0+0+0], v62, s[78:79]
v_cndmask_b32 v[vgprValuB_X0_I0+16+0+0+1], v[vgprValuB_X0_I0+16+0+0+1], v63, s[78:79]
s_nop 1
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
v_mfma_f32_16x16x16_f16 acc[32:35], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
v_mfma_f32_16x16x16_f16 acc[36:39], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
v_mfma_f32_16x16x16_f16 acc[40:43], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
v_mfma_f32_16x16x16_f16 acc[44:47], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
v_mfma_f32_16x16x16_f16 acc[48:51], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
v_mfma_f32_16x16x16_f16 acc[52:55], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
v_mfma_f32_16x16x16_f16 acc[56:59], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
v_mfma_f32_16x16x16_f16 acc[60:63], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
v_mfma_f32_16x16x16_f16 acc[64:67], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[64:67] // left value = acc[64+0:67+0]
v_mfma_f32_16x16x16_f16 acc[68:71], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[68:71] // left value = acc[68+0:71+0]
v_mfma_f32_16x16x16_f16 acc[72:75], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[72:75] // left value = acc[72+0:75+0]
v_mfma_f32_16x16x16_f16 acc[76:79], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[76:79] // left value = acc[76+0:79+0]
v_mfma_f32_16x16x16_f16 acc[80:83], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[80:83] // left value = acc[80+0:83+0]
v_mfma_f32_16x16x16_f16 acc[84:87], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[84:87] // left value = acc[84+0:87+0]
v_mfma_f32_16x16x16_f16 acc[88:91], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[88:91] // left value = acc[88+0:91+0]
v_mfma_f32_16x16x16_f16 acc[92:95], v[vgprValuB_X0_I0+10+0+0:vgprValuB_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[92:95] // left value = acc[92+0:95+0]
v_mfma_f32_16x16x16_f16 acc[96:99], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[96:99] // left value = acc[96+0:99+0]
v_mfma_f32_16x16x16_f16 acc[100:103], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[100:103] // left value = acc[100+0:103+0]
v_mfma_f32_16x16x16_f16 acc[104:107], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[104:107] // left value = acc[104+0:107+0]
v_mfma_f32_16x16x16_f16 acc[108:111], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[108:111] // left value = acc[108+0:111+0]
v_mfma_f32_16x16x16_f16 acc[112:115], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[112:115] // left value = acc[112+0:115+0]
v_mfma_f32_16x16x16_f16 acc[116:119], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[116:119] // left value = acc[116+0:119+0]
v_mfma_f32_16x16x16_f16 acc[120:123], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[120:123] // left value = acc[120+0:123+0]
v_mfma_f32_16x16x16_f16 acc[124:127], v[vgprValuB_X0_I0+14+0+0:vgprValuB_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[124:127] // left value = acc[124+0:127+0]
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+128:vgprAcc-128+131], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], v[vgprAcc-128+128:vgprAcc-128+131] // left value = v[vgprAcc-128+128+vgprAcc-128+0:131+0]
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+132:vgprAcc-128+135], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], v[vgprAcc-128+132:vgprAcc-128+135] // left value = v[vgprAcc-128+132+vgprAcc-128+0:135+0]
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+136:vgprAcc-128+139], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], v[vgprAcc-128+136:vgprAcc-128+139] // left value = v[vgprAcc-128+136+vgprAcc-128+0:139+0]
v_mfma_f32_16x16x16_f16 v[vgprAcc-128+140:vgprAcc-128+143], v[vgprValuB_X0_I0+16+0+0:vgprValuB_X0_I0+16+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], v[vgprAcc-128+140:vgprAcc-128+143] // left value = v[vgprAcc-128+140+vgprAcc-128+0:143+0]

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x10 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x10 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 label_TailLoopBeginL                // restart LoopL
label_TailLoopEndL:
label_SkipTailLoopL:

/* Tail: remove address/G2L [60...91) from pool */
label_Summation_End_TZI3C5IPPS8S12IX_0:
/* endSummation: add vgpr [0...91) to pool */
.set sgprGlobalReadIncsB, UNDEF
.set sgprSrdA, UNDEF
.set sgprSrdB, UNDEF
.set sgprShadowLimitA, UNDEF
.set sgprShadowLimitB, UNDEF
.set sgprPackKForV0, UNDEF
.set sgprPackKForV1, UNDEF
.set sgprScalarGlobalReadOffsetA, UNDEF
.set sgprScalarGlobalReadOffsetB, UNDEF
/* load store sgprs */
.set sgprAddressScaleA, 48
.set sgprAddressScaleB, 50
.set sgprAddressScaleAlphaVec, 52
.set sgprAddressBias, 54
.set sgprBiasType, 56
.set sgprBiasStride, 57
.set sgpractivationAlpha, 58
.set sgpractivationBeta, 59
.set sgprActivationType, 60
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc0 label_GSU_4                         // branch if GSU != 1
/* Check if custom structure pointer is null */
s_cmp_eq_u64 s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0 // s[ExternalArgAddress] == 0 ?
s_cbranch_scc0 label_LoadExternalEpilogueStruct    // branch if s[ExternalArgAddress] != 0
s_load_dwordx8 s[48:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x58
s_load_dwordx4 s[56:59], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x78
s_load_dword s60, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x88
s_branch label_LoadExternalEpilogueStructEnd
label_LoadExternalEpilogueStruct:
s_load_dwordx4 s[48:51], s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0x70
s_load_dwordx4 s[52:55], s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0x90
s_load_dwordx2 s[56:57], s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0xa0
s_load_dwordx2 s[58:59], s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0xb8
s_load_dword s60, s[sgprExternalArgAddress:sgprExternalArgAddress+1], 0xc0
label_LoadExternalEpilogueStructEnd:
label_GSU_4:
.set sgprSrdScaleAlphaVec, 64
.set sgprSrdBias, 68

/* Mapping of Acc register -> C Vgpr register */

/* not-LocalSplitU: global write indices */
/* computeStoreVgprs */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_lshrrev_b32 v5, 2, v4                            // v5 = v4 / 4
v_mul_lo_u32 v5, 0x10, v5                          // wave coordination offset 1
v_and_b32 v1, 63, v[vgprSerial]                    // v1 = v[vgprSerial] % 64
v_lshrrev_b32 v1, 4, v1                            // v1 = v1 / 16
v_lshlrev_b32 v1, 0x2, v1                          // thread0 * continuous_output
v_add_lshl_u32 v1, v5, v1, 0                       // coordination 1 = vwB *(wave_id1 + tid1)
v_mul_lo_u32 v2, v1, s[sgprStrideC1J]              //  offset 1
v_mul_lo_u32 v3, v1, s[sgprStrideD1J]              //  offset 1
v_and_b32 v0, 3, v4                                // v0 = v4 % 4
v_mul_lo_u32 v0, 0x10, v0                          // wave coordination offset 0
v_and_b32 v5, 15, v[vgprSerial]                    // v5 = v[vgprSerial] % 16
v_add_lshl_u32 v0, v5, v0, 2                       // coordination 0 = vwA * (wave_id0 + tid0)
s_mul_i32 s5, 256, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s5, v0                               // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s5, 144, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s5, v1                               // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1

/* not-LocalSplitU: global write */

/******************************************/
/* Global Write Elements                  */
/******************************************/
s_waitcnt lgkmcnt(0)                               // wait for 52 bytes of kern args.
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_5                         // branch if GSU == 1
s_and_b32 s72, 255, s[sgprSizeI]                   // s72 = s[sgprSizeI] % 256
s_add_u32 s73, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s73                // wg0 >= nwg0-1 ?
s_cselect_b32 s72, s72, 0                          // set rMT0
s_cmpk_gt_u32 s72, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
s_mov_b32 s75, 0x0                                 // STATIC_DIV: divisior=144
s_mul_i32 s74, 0x38e, s[sgprSizeJ]                 // tmp1 = dividend * magic hi
s_lshl_b64 s[74:75], s[74:75], 0x10                // left shift 16 bits
s_mul_i32 s73, s[sgprSizeJ], 0x38e4                // tmp0 = dividend * magic lo
s_add_u32 s74, s73, s74                            // add lo
s_addc_u32 s75, s75, 0x0                           // add hi
s_lshr_b64 s[74:75], s[74:75], 0x21                // tmp1 = (dividend * magic) << shift
s_mov_b32 s73, s74                                 // quotient
s_mul_i32 s74, s73, 0x90                           // quotient*divisor
s_sub_u32 s72, s[sgprSizeJ], s74                   // rReg = dividend - quotient*divisor
s_add_u32 s73, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s73                // wg1 >= nwg1-1
s_cselect_b32 s72, s72, 0                          // set rMT1
s_cmpk_gt_u32 s72, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
label_GW_B0_E0:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (1,0,0,0:vw4); (1,0,1,0:vw4); (1,0,2,0:vw4); (1,0,3,0:vw4); (2,0,0,0:vw4); (2,0,1,0:vw4); (2,0,2,0:vw4); (2,0,3,0:vw4); (3,0,0,0:vw4); (3,0,1,0:vw4); (3,0,2,0:vw4); (3,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
/* (d1,vc1,d0,vc0)=(2,2,0,0) */
/* (d1,vc1,d0,vc0)=(2,3,0,0) */
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
/* (d1,vc1,d0,vc0)=(3,2,0,0) */
/* (d1,vc1,d0,vc0)=(3,3,0,0) */
v_add_lshl_u32 v6, v3, v0, 0x2                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+8], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc4            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+10], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+11], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+12], acc1           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+13], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+14], acc9           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+15], acc13          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+16], acc2           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+17], acc6           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+18], acc10          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+19], acc14          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+20], acc3           // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+21], acc7           // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+22], acc11          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+23], acc15          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+24], acc16          // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+25], acc20          // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+26], acc24          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+27], acc28          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+28], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+29], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+30], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+31], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+32], acc18          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+33], acc22          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+34], acc26          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+35], acc30          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+36], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+37], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+38], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+39], acc31          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+40], acc32          // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+41], acc36          // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+42], acc40          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+43], acc44          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+44], acc33          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+45], acc37          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+46], acc41          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+47], acc45          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+48], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+49], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+50], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+51], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+52], acc35          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+53], acc39          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+54], acc43          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+55], acc47          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+56], acc48          // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+57], acc52          // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+58], acc56          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+59], acc60          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+60], acc49          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+61], acc53          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+62], acc57          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+63], acc61          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+64], acc50          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+65], acc54          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+66], acc58          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+67], acc62          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+68], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+69], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+70], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+71], acc63          // copy acc to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0), (2, 0, 0, 0), (2, 0, 1, 0), (2, 0, 2, 0), (2, 0, 3, 0), (3, 0, 0, 0), (3, 0, 1, 0), (3, 0, 2, 0), (3, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[12:15], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[16:19], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[20:23], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[48:51], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[56:59], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[60:63], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[64:67], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[68:71], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (4,0,0,0:vw4); (4,0,1,0:vw4); (4,0,2,0:vw4); (4,0,3,0:vw4); (5,0,0,0:vw4); (5,0,1,0:vw4); (5,0,2,0:vw4); (5,0,3,0:vw4); (6,0,0,0:vw4); (6,0,1,0:vw4); (6,0,2,0:vw4); (6,0,3,0:vw4); (7,0,0,0:vw4); (7,0,1,0:vw4); (7,0,2,0:vw4); (7,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
/* (d1,vc1,d0,vc0)=(4,2,0,0) */
/* (d1,vc1,d0,vc0)=(4,3,0,0) */
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
/* (d1,vc1,d0,vc0)=(5,2,0,0) */
/* (d1,vc1,d0,vc0)=(5,3,0,0) */
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
/* (d1,vc1,d0,vc0)=(6,2,0,0) */
/* (d1,vc1,d0,vc0)=(6,3,0,0) */
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
/* (d1,vc1,d0,vc0)=(7,2,0,0) */
/* (d1,vc1,d0,vc0)=(7,3,0,0) */
v_accvgpr_read_b32 v[vgprValuC+8], acc64           // copy acc to vreg[64]
v_accvgpr_read_b32 v[vgprValuC+9], acc68           // copy acc to vreg[65]
v_accvgpr_read_b32 v[vgprValuC+10], acc72          // copy acc to vreg[66]
v_accvgpr_read_b32 v[vgprValuC+11], acc76          // copy acc to vreg[67]
v_accvgpr_read_b32 v[vgprValuC+12], acc65          // copy acc to vreg[68]
v_accvgpr_read_b32 v[vgprValuC+13], acc69          // copy acc to vreg[69]
v_accvgpr_read_b32 v[vgprValuC+14], acc73          // copy acc to vreg[70]
v_accvgpr_read_b32 v[vgprValuC+15], acc77          // copy acc to vreg[71]
v_accvgpr_read_b32 v[vgprValuC+16], acc66          // copy acc to vreg[72]
v_accvgpr_read_b32 v[vgprValuC+17], acc70          // copy acc to vreg[73]
v_accvgpr_read_b32 v[vgprValuC+18], acc74          // copy acc to vreg[74]
v_accvgpr_read_b32 v[vgprValuC+19], acc78          // copy acc to vreg[75]
v_accvgpr_read_b32 v[vgprValuC+20], acc67          // copy acc to vreg[76]
v_accvgpr_read_b32 v[vgprValuC+21], acc71          // copy acc to vreg[77]
v_accvgpr_read_b32 v[vgprValuC+22], acc75          // copy acc to vreg[78]
v_accvgpr_read_b32 v[vgprValuC+23], acc79          // copy acc to vreg[79]
v_accvgpr_read_b32 v[vgprValuC+24], acc80          // copy acc to vreg[80]
v_accvgpr_read_b32 v[vgprValuC+25], acc84          // copy acc to vreg[81]
v_accvgpr_read_b32 v[vgprValuC+26], acc88          // copy acc to vreg[82]
v_accvgpr_read_b32 v[vgprValuC+27], acc92          // copy acc to vreg[83]
v_accvgpr_read_b32 v[vgprValuC+28], acc81          // copy acc to vreg[84]
v_accvgpr_read_b32 v[vgprValuC+29], acc85          // copy acc to vreg[85]
v_accvgpr_read_b32 v[vgprValuC+30], acc89          // copy acc to vreg[86]
v_accvgpr_read_b32 v[vgprValuC+31], acc93          // copy acc to vreg[87]
v_accvgpr_read_b32 v[vgprValuC+32], acc82          // copy acc to vreg[88]
v_accvgpr_read_b32 v[vgprValuC+33], acc86          // copy acc to vreg[89]
v_accvgpr_read_b32 v[vgprValuC+34], acc90          // copy acc to vreg[90]
v_accvgpr_read_b32 v[vgprValuC+35], acc94          // copy acc to vreg[91]
v_accvgpr_read_b32 v[vgprValuC+36], acc83          // copy acc to vreg[92]
v_accvgpr_read_b32 v[vgprValuC+37], acc87          // copy acc to vreg[93]
v_accvgpr_read_b32 v[vgprValuC+38], acc91          // copy acc to vreg[94]
v_accvgpr_read_b32 v[vgprValuC+39], acc95          // copy acc to vreg[95]
v_accvgpr_read_b32 v[vgprValuC+40], acc96          // copy acc to vreg[96]
v_accvgpr_read_b32 v[vgprValuC+41], acc100         // copy acc to vreg[97]
v_accvgpr_read_b32 v[vgprValuC+42], acc104         // copy acc to vreg[98]
v_accvgpr_read_b32 v[vgprValuC+43], acc108         // copy acc to vreg[99]
v_accvgpr_read_b32 v[vgprValuC+44], acc97          // copy acc to vreg[100]
v_accvgpr_read_b32 v[vgprValuC+45], acc101         // copy acc to vreg[101]
v_accvgpr_read_b32 v[vgprValuC+46], acc105         // copy acc to vreg[102]
v_accvgpr_read_b32 v[vgprValuC+47], acc109         // copy acc to vreg[103]
v_accvgpr_read_b32 v[vgprValuC+48], acc98          // copy acc to vreg[104]
v_accvgpr_read_b32 v[vgprValuC+49], acc102         // copy acc to vreg[105]
v_accvgpr_read_b32 v[vgprValuC+50], acc106         // copy acc to vreg[106]
v_accvgpr_read_b32 v[vgprValuC+51], acc110         // copy acc to vreg[107]
v_accvgpr_read_b32 v[vgprValuC+52], acc99          // copy acc to vreg[108]
v_accvgpr_read_b32 v[vgprValuC+53], acc103         // copy acc to vreg[109]
v_accvgpr_read_b32 v[vgprValuC+54], acc107         // copy acc to vreg[110]
v_accvgpr_read_b32 v[vgprValuC+55], acc111         // copy acc to vreg[111]
v_accvgpr_read_b32 v[vgprValuC+56], acc112         // copy acc to vreg[112]
v_accvgpr_read_b32 v[vgprValuC+57], acc116         // copy acc to vreg[113]
v_accvgpr_read_b32 v[vgprValuC+58], acc120         // copy acc to vreg[114]
v_accvgpr_read_b32 v[vgprValuC+59], acc124         // copy acc to vreg[115]
v_accvgpr_read_b32 v[vgprValuC+60], acc113         // copy acc to vreg[116]
v_accvgpr_read_b32 v[vgprValuC+61], acc117         // copy acc to vreg[117]
v_accvgpr_read_b32 v[vgprValuC+62], acc121         // copy acc to vreg[118]
v_accvgpr_read_b32 v[vgprValuC+63], acc125         // copy acc to vreg[119]
v_accvgpr_read_b32 v[vgprValuC+64], acc114         // copy acc to vreg[120]
v_accvgpr_read_b32 v[vgprValuC+65], acc118         // copy acc to vreg[121]
v_accvgpr_read_b32 v[vgprValuC+66], acc122         // copy acc to vreg[122]
v_accvgpr_read_b32 v[vgprValuC+67], acc126         // copy acc to vreg[123]
v_accvgpr_read_b32 v[vgprValuC+68], acc115         // copy acc to vreg[124]
v_accvgpr_read_b32 v[vgprValuC+69], acc119         // copy acc to vreg[125]
v_accvgpr_read_b32 v[vgprValuC+70], acc123         // copy acc to vreg[126]
v_accvgpr_read_b32 v[vgprValuC+71], acc127         // copy acc to vreg[127]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(4, 0, 0, 0), (4, 0, 1, 0), (4, 0, 2, 0), (4, 0, 3, 0), (5, 0, 0, 0), (5, 0, 1, 0), (5, 0, 2, 0), (5, 0, 3, 0), (6, 0, 0, 0), (6, 0, 1, 0), (6, 0, 2, 0), (6, 0, 3, 0), (7, 0, 0, 0), (7, 0, 1, 0), (7, 0, 2, 0), (7, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[12:15], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[16:19], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[20:23], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[48:51], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[56:59], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[60:63], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[64:67], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[68:71], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #2 (d1,d0,vc1,vc0) = */
/*    (8,0,0,0:vw4); (8,0,1,0:vw4); (8,0,2,0:vw4); (8,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
/* (d1,vc1,d0,vc0)=(8,2,0,0) */
/* (d1,vc1,d0,vc0)=(8,3,0,0) */
v_mov_b32 v[vgprValuC+8], v[vgprAcc-128+128]          // copy acc to vreg[128]
v_mov_b32 v[vgprValuC+9], v[vgprAcc-128+132]          // copy acc to vreg[129]
v_mov_b32 v[vgprValuC+10], v[vgprAcc-128+136]         // copy acc to vreg[130]
v_mov_b32 v[vgprValuC+11], v[vgprAcc-128+140]         // copy acc to vreg[131]
v_mov_b32 v[vgprValuC+12], v[vgprAcc-128+129]         // copy acc to vreg[132]
v_mov_b32 v[vgprValuC+13], v[vgprAcc-128+133]         // copy acc to vreg[133]
v_mov_b32 v[vgprValuC+14], v[vgprAcc-128+137]         // copy acc to vreg[134]
v_mov_b32 v[vgprValuC+15], v[vgprAcc-128+141]         // copy acc to vreg[135]
v_mov_b32 v[vgprValuC+16], v[vgprAcc-128+130]         // copy acc to vreg[136]
v_mov_b32 v[vgprValuC+17], v[vgprAcc-128+134]         // copy acc to vreg[137]
v_mov_b32 v[vgprValuC+18], v[vgprAcc-128+138]         // copy acc to vreg[138]
v_mov_b32 v[vgprValuC+19], v[vgprAcc-128+142]         // copy acc to vreg[139]
v_mov_b32 v[vgprValuC+20], v[vgprAcc-128+131]         // copy acc to vreg[140]
v_mov_b32 v[vgprValuC+21], v[vgprAcc-128+135]         // copy acc to vreg[141]
v_mov_b32 v[vgprValuC+22], v[vgprAcc-128+139]         // copy acc to vreg[142]
v_mov_b32 v[vgprValuC+23], v[vgprAcc-128+143]         // copy acc to vreg[143]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(8, 0, 0, 0), (8, 0, 1, 0), (8, 0, 2, 0), (8, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
s_mul_i32 s62, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[12:15], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[16:19], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[20:23], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_B0_E1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (1,0,0,0:vw4); (1,0,1,0:vw4); (1,0,2,0:vw4); (1,0,3,0:vw4); (2,0,0,0:vw4); (2,0,1,0:vw4); (2,0,2,0:vw4); (2,0,3,0:vw4); (3,0,0,0:vw4); (3,0,1,0:vw4); (3,0,2,0:vw4); (3,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v78, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v6, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v78, v6, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v7, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v7, v78, v7, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v16, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v78, v16, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v17, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v17, v78, v17, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v18, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, v78, v18, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v19, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, v78, v19, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v36, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v36, v78, v36, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v37, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, v78, v37, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v38, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v38, v78, v38, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v39, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v39, v78, v39, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v56, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v56, v78, v56, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v57, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, v78, v57, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v58, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, v78, v58, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v59, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v59, v78, v59, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v76, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, v78, v76, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v77, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, v78, v77, s[76:77]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+8], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc4            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+10], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+11], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+12], acc1           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+13], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+14], acc9           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+15], acc13          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+20], acc2           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+21], acc6           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+22], acc10          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+23], acc14          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+24], acc3           // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+25], acc7           // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+26], acc11          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+27], acc15          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+28], acc16          // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+29], acc20          // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+30], acc24          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+31], acc28          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+32], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+33], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+34], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+35], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc18          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc22          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc26          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc30          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc31          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+48], acc32          // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+49], acc36          // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+50], acc40          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+51], acc44          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+52], acc33          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+53], acc37          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+54], acc41          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+55], acc45          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+60], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+61], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+62], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+63], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+64], acc35          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+65], acc39          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+66], acc43          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+67], acc47          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+68], acc48          // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+69], acc52          // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+70], acc56          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+71], acc60          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+72], acc49          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+73], acc53          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+74], acc57          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+75], acc61          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+80], acc50          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+81], acc54          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+82], acc58          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+83], acc62          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+84], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+85], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+86], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+87], acc63          // copy acc to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0), (2, 0, 0, 0), (2, 0, 1, 0), (2, 0, 2, 0), (2, 0, 3, 0), (3, 0, 0, 0), (3, 0, 1, 0), (3, 0, 2, 0), (3, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[12:15], v7, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[20:23], v16, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[24:27], v17, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[28:31], v18, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[32:35], v19, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[40:43], v36, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[44:47], v37, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[48:51], v38, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[52:55], v39, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[60:63], v56, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[64:67], v57, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[68:71], v58, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[72:75], v59, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[80:83], v76, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[84:87], v77, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (4,0,0,0:vw4); (4,0,1,0:vw4); (4,0,2,0:vw4); (4,0,3,0:vw4); (5,0,0,0:vw4); (5,0,1,0:vw4); (5,0,2,0:vw4); (5,0,3,0:vw4); (6,0,0,0:vw4); (6,0,1,0:vw4); (6,0,2,0:vw4); (6,0,3,0:vw4); (7,0,0,0:vw4); (7,0,1,0:vw4); (7,0,2,0:vw4); (7,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v78, BufferOOB
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v6, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v78, v6, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v7, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v7, v78, v7, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v16, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v78, v16, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v17, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v17, v78, v17, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v18, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, v78, v18, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v19, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v19, v78, v19, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v36, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v36, v78, v36, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v37, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v37, v78, v37, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v38, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v38, v78, v38, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v39, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v39, v78, v39, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v56, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v56, v78, v56, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v57, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v57, v78, v57, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v58, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v58, v78, v58, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v59, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v59, v78, v59, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v76, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v76, v78, v76, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v77, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v77, v78, v77, s[76:77]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+8], acc64           // copy acc to vreg[64]
v_accvgpr_read_b32 v[vgprValuC+9], acc68           // copy acc to vreg[65]
v_accvgpr_read_b32 v[vgprValuC+10], acc72          // copy acc to vreg[66]
v_accvgpr_read_b32 v[vgprValuC+11], acc76          // copy acc to vreg[67]
v_accvgpr_read_b32 v[vgprValuC+12], acc65          // copy acc to vreg[68]
v_accvgpr_read_b32 v[vgprValuC+13], acc69          // copy acc to vreg[69]
v_accvgpr_read_b32 v[vgprValuC+14], acc73          // copy acc to vreg[70]
v_accvgpr_read_b32 v[vgprValuC+15], acc77          // copy acc to vreg[71]
v_accvgpr_read_b32 v[vgprValuC+20], acc66          // copy acc to vreg[72]
v_accvgpr_read_b32 v[vgprValuC+21], acc70          // copy acc to vreg[73]
v_accvgpr_read_b32 v[vgprValuC+22], acc74          // copy acc to vreg[74]
v_accvgpr_read_b32 v[vgprValuC+23], acc78          // copy acc to vreg[75]
v_accvgpr_read_b32 v[vgprValuC+24], acc67          // copy acc to vreg[76]
v_accvgpr_read_b32 v[vgprValuC+25], acc71          // copy acc to vreg[77]
v_accvgpr_read_b32 v[vgprValuC+26], acc75          // copy acc to vreg[78]
v_accvgpr_read_b32 v[vgprValuC+27], acc79          // copy acc to vreg[79]
v_accvgpr_read_b32 v[vgprValuC+28], acc80          // copy acc to vreg[80]
v_accvgpr_read_b32 v[vgprValuC+29], acc84          // copy acc to vreg[81]
v_accvgpr_read_b32 v[vgprValuC+30], acc88          // copy acc to vreg[82]
v_accvgpr_read_b32 v[vgprValuC+31], acc92          // copy acc to vreg[83]
v_accvgpr_read_b32 v[vgprValuC+32], acc81          // copy acc to vreg[84]
v_accvgpr_read_b32 v[vgprValuC+33], acc85          // copy acc to vreg[85]
v_accvgpr_read_b32 v[vgprValuC+34], acc89          // copy acc to vreg[86]
v_accvgpr_read_b32 v[vgprValuC+35], acc93          // copy acc to vreg[87]
v_accvgpr_read_b32 v[vgprValuC+40], acc82          // copy acc to vreg[88]
v_accvgpr_read_b32 v[vgprValuC+41], acc86          // copy acc to vreg[89]
v_accvgpr_read_b32 v[vgprValuC+42], acc90          // copy acc to vreg[90]
v_accvgpr_read_b32 v[vgprValuC+43], acc94          // copy acc to vreg[91]
v_accvgpr_read_b32 v[vgprValuC+44], acc83          // copy acc to vreg[92]
v_accvgpr_read_b32 v[vgprValuC+45], acc87          // copy acc to vreg[93]
v_accvgpr_read_b32 v[vgprValuC+46], acc91          // copy acc to vreg[94]
v_accvgpr_read_b32 v[vgprValuC+47], acc95          // copy acc to vreg[95]
v_accvgpr_read_b32 v[vgprValuC+48], acc96          // copy acc to vreg[96]
v_accvgpr_read_b32 v[vgprValuC+49], acc100         // copy acc to vreg[97]
v_accvgpr_read_b32 v[vgprValuC+50], acc104         // copy acc to vreg[98]
v_accvgpr_read_b32 v[vgprValuC+51], acc108         // copy acc to vreg[99]
v_accvgpr_read_b32 v[vgprValuC+52], acc97          // copy acc to vreg[100]
v_accvgpr_read_b32 v[vgprValuC+53], acc101         // copy acc to vreg[101]
v_accvgpr_read_b32 v[vgprValuC+54], acc105         // copy acc to vreg[102]
v_accvgpr_read_b32 v[vgprValuC+55], acc109         // copy acc to vreg[103]
v_accvgpr_read_b32 v[vgprValuC+60], acc98          // copy acc to vreg[104]
v_accvgpr_read_b32 v[vgprValuC+61], acc102         // copy acc to vreg[105]
v_accvgpr_read_b32 v[vgprValuC+62], acc106         // copy acc to vreg[106]
v_accvgpr_read_b32 v[vgprValuC+63], acc110         // copy acc to vreg[107]
v_accvgpr_read_b32 v[vgprValuC+64], acc99          // copy acc to vreg[108]
v_accvgpr_read_b32 v[vgprValuC+65], acc103         // copy acc to vreg[109]
v_accvgpr_read_b32 v[vgprValuC+66], acc107         // copy acc to vreg[110]
v_accvgpr_read_b32 v[vgprValuC+67], acc111         // copy acc to vreg[111]
v_accvgpr_read_b32 v[vgprValuC+68], acc112         // copy acc to vreg[112]
v_accvgpr_read_b32 v[vgprValuC+69], acc116         // copy acc to vreg[113]
v_accvgpr_read_b32 v[vgprValuC+70], acc120         // copy acc to vreg[114]
v_accvgpr_read_b32 v[vgprValuC+71], acc124         // copy acc to vreg[115]
v_accvgpr_read_b32 v[vgprValuC+72], acc113         // copy acc to vreg[116]
v_accvgpr_read_b32 v[vgprValuC+73], acc117         // copy acc to vreg[117]
v_accvgpr_read_b32 v[vgprValuC+74], acc121         // copy acc to vreg[118]
v_accvgpr_read_b32 v[vgprValuC+75], acc125         // copy acc to vreg[119]
v_accvgpr_read_b32 v[vgprValuC+80], acc114         // copy acc to vreg[120]
v_accvgpr_read_b32 v[vgprValuC+81], acc118         // copy acc to vreg[121]
v_accvgpr_read_b32 v[vgprValuC+82], acc122         // copy acc to vreg[122]
v_accvgpr_read_b32 v[vgprValuC+83], acc126         // copy acc to vreg[123]
v_accvgpr_read_b32 v[vgprValuC+84], acc115         // copy acc to vreg[124]
v_accvgpr_read_b32 v[vgprValuC+85], acc119         // copy acc to vreg[125]
v_accvgpr_read_b32 v[vgprValuC+86], acc123         // copy acc to vreg[126]
v_accvgpr_read_b32 v[vgprValuC+87], acc127         // copy acc to vreg[127]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(4, 0, 0, 0), (4, 0, 1, 0), (4, 0, 2, 0), (4, 0, 3, 0), (5, 0, 0, 0), (5, 0, 1, 0), (5, 0, 2, 0), (5, 0, 3, 0), (6, 0, 0, 0), (6, 0, 1, 0), (6, 0, 2, 0), (6, 0, 3, 0), (7, 0, 0, 0), (7, 0, 1, 0), (7, 0, 2, 0), (7, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[12:15], v7, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[20:23], v16, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[24:27], v17, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[28:31], v18, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[32:35], v19, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[40:43], v36, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[44:47], v37, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[48:51], v38, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[52:55], v39, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[60:63], v56, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[64:67], v57, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[68:71], v58, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[72:75], v59, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[80:83], v76, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[84:87], v77, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (8,0,0,0:vw4); (8,0,1,0:vw4); (8,0,2,0:vw4); (8,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v18, BufferOOB
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s72, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s72                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s72, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s72                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v6, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v18, v6, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v7, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v7, v18, v7, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v16, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v18, v16, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v17, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v17, v18, v17, s[76:77]              // LDD clip if OOB. offset
v_mov_b32 v[vgprValuC+8], v[vgprAcc-128+128]          // copy acc to vreg[128]
v_mov_b32 v[vgprValuC+9], v[vgprAcc-128+132]          // copy acc to vreg[129]
v_mov_b32 v[vgprValuC+10], v[vgprAcc-128+136]         // copy acc to vreg[130]
v_mov_b32 v[vgprValuC+11], v[vgprAcc-128+140]         // copy acc to vreg[131]
v_mov_b32 v[vgprValuC+12], v[vgprAcc-128+129]         // copy acc to vreg[132]
v_mov_b32 v[vgprValuC+13], v[vgprAcc-128+133]         // copy acc to vreg[133]
v_mov_b32 v[vgprValuC+14], v[vgprAcc-128+137]         // copy acc to vreg[134]
v_mov_b32 v[vgprValuC+15], v[vgprAcc-128+141]         // copy acc to vreg[135]
v_mov_b32 v[vgprValuC+20], v[vgprAcc-128+130]         // copy acc to vreg[136]
v_mov_b32 v[vgprValuC+21], v[vgprAcc-128+134]         // copy acc to vreg[137]
v_mov_b32 v[vgprValuC+22], v[vgprAcc-128+138]         // copy acc to vreg[138]
v_mov_b32 v[vgprValuC+23], v[vgprAcc-128+142]         // copy acc to vreg[139]
v_mov_b32 v[vgprValuC+24], v[vgprAcc-128+131]         // copy acc to vreg[140]
v_mov_b32 v[vgprValuC+25], v[vgprAcc-128+135]         // copy acc to vreg[141]
v_mov_b32 v[vgprValuC+26], v[vgprAcc-128+139]         // copy acc to vreg[142]
v_mov_b32 v[vgprValuC+27], v[vgprAcc-128+143]         // copy acc to vreg[143]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(8, 0, 0, 0), (8, 0, 1, 0), (8, 0, 2, 0), (8, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[12:15], v7, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[20:23], v16, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[24:27], v17, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_End:
s_getpc_b64 s[72:73]                               // addr of next instr
s_add_i32 s74, label_KernelEnd, 0x4                // target branch offset
s_add_u32 s72, s72, s74                            // add target branch offset
s_addc_u32 s73, s73, 0                             // add high and carry
s_setpc_b64 s[72:73]                               // branch to label_KernelEnd
label_GSU_5:
s_mov_b32 s5, 1.0                                  // init as 1
s_cmp_eq_u64 s[sgprAddressScaleA:sgprAddressScaleA+1], 0 // s[AddressScaleA] == 0 ?
s_cbranch_scc1 label_ScaleAValid                   // branch if s[AddressScaleA] == 0
s_load_dword s5, s[sgprAddressScaleA:sgprAddressScaleA+1], 0 // load scaleA
label_ScaleAValid:
s_mov_b32 s47, 1.0                                 // init as 1
s_cmp_eq_u64 s[sgprAddressScaleB:sgprAddressScaleB+1], 0 // s[AddressScaleB] == 0 ?
s_cbranch_scc1 label_ScaleBValid                   // branch if s[AddressScaleB] == 0
s_load_dword s47, s[sgprAddressScaleB:sgprAddressScaleB+1], 0 // load scaleB
label_ScaleBValid:
s_mov_b32 s[sgprSrdScaleAlphaVec+0], s[sgprAddressScaleAlphaVec+0] // init SRD base address (lower)
s_mov_b32 s[sgprSrdScaleAlphaVec+1], s[sgprAddressScaleAlphaVec+1] // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdScaleAlphaVec+3], Srd127_96     // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], 0 // s[AddressScaleAlphaVec] == 0 ?
s_cbranch_scc0 label_ScaleAlphaVecAddrValid        // branch if s[AddressScaleAlphaVec] != 0
s_mov_b32 s[sgprSrdScaleAlphaVec+2], 0
s_branch label_ScaleAlphaVecAddrValid_End
label_ScaleAlphaVecAddrValid:
s_mov_b32 s[sgprSrdScaleAlphaVec+2], s[sgprSizeI]
label_ScaleAlphaVecAddrValid_End:

s_mul_i32 s[sgprSrdScaleAlphaVec+2], 0x4, s[sgprSrdScaleAlphaVec+2] // ScaleAlphaVec scaled by BPE
s_add_u32 s61, s[sgprWorkGroup2], 0x1
s_mul_i32 s61, s[sgprBiasStride], s61              // stride * (wg+1)
s_cmp_eq_u32 s61, 0x0                              // bias stride = 0?
s_cselect_b32 s61, s[sgprSizeI], s61
s_mov_b32 s[sgprSrdBias+0], s[sgprAddressBias+0]   // init SRD base address (lower)
s_mov_b32 s[sgprSrdBias+1], s[sgprAddressBias+1]   // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdBias+3], Srd127_96              // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressBias:sgprAddressBias+1], 0 // s[AddressBias] == 0 ?
s_cbranch_scc0 label_BiasAddrValid                 // branch if s[AddressBias] != 0
s_mov_b32 s[sgprSrdBias+2], 0
s_branch label_BiasAddrValid_End
label_BiasAddrValid:
s_mov_b32 s[sgprSrdBias+2], s61
label_BiasAddrValid_End:

label_Load_Biasf32:
s_cmpk_lg_u32 s[sgprBiasType], 0                   // BiasType != 0
s_cbranch_scc1 label_Load_Biasf16                  // Branch if true

/******************************************/
/* Read Bias to LDS                       */
/******************************************/
s_mul_i32 s[sgprSrdBias+2], 0x4, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s61, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_add_u32 v8, s61, v[vgprSerial]                   // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s61, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v8, s61, v8                              // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v8, 0x2, v8                          // Global bias address scaled by BPE
buffer_load_dword v4, v8, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // load bias
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local bias address scaled by BPE
s_waitcnt vmcnt(0)                                 // wait for bias load
s_barrier                                          // Wait for all wavefronts
ds_write_b32 v8, v4 offset:0                       // store bias
s_branch label_Load_Bias_End                       // Branch to load bias end
label_Load_Biasf16:
s_cmpk_lg_u32 s[sgprBiasType], 4                   // BiasType != 4
s_cbranch_scc1 label_Load_Bias_End                 // Branch if true

/******************************************/
/* Read Bias to LDS                       */
/******************************************/
s_mul_i32 s[sgprSrdBias+2], 0x2, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s61, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_add_u32 v8, s61, v[vgprSerial]                   // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s61, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v8, s61, v8                              // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v8, 0x1, v8                          // Global bias address scaled by BPE
buffer_load_short_d16 v4, v8, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // load bias
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local bias address scaled by BPE
s_waitcnt vmcnt(0)                                 // wait for bias load
s_barrier                                          // Wait for all wavefronts
v_cvt_f32_f16 v4, v4                               // convert to FP32
ds_write_b32 v8, v4 offset:0                       // store bias
s_branch label_Load_Bias_End                       // Branch to load bias end
label_Load_Bias_End:
v_mov_b32 v4, s[sgprAlpha]
s_waitcnt lgkmcnt(0)                               // wait for scaleAB load
v_mul_f32 v4, v4, s5
v_mul_f32 v4, v4, s47
s_nop 0                                            // 1 wait states
v_readfirstlane_b32 s[sgprAlpha], v4               // Update Alpha
s_cmpk_eq_u32 s[sgprActivationType], 1             // activationType == 1
s_cbranch_scc1 label_To_Activation_Abs_VW4         // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 2             // activationType == 2
s_cbranch_scc1 label_To_Activation_Clippedrelu_VW4 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW4        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 4             // activationType == 4
s_cbranch_scc1 label_To_Activation_Leakyrelu_VW4   // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW4        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW4     // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 7             // activationType == 7
s_cbranch_scc1 label_To_Activation_Tanh_VW4        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 9             // activationType == 9
s_cbranch_scc1 label_To_Activation_Geluscaling_VW4 // Branch if true
label_To_Activation_None_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_None_VW4, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Abs_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Abs_VW4, 0x4        // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Clippedrelu_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Clippedrelu_VW4, 0x4 // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Gelu_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Gelu_VW4, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Leakyrelu_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Leakyrelu_VW4, 0x4  // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Relu_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Relu_VW4, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Sigmoid_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Sigmoid_VW4, 0x4    // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Tanh_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Tanh_VW4, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Geluscaling_VW4:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Geluscaling_VW4, 0x4 // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_ActivationSetPCAddrEnd:
s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 label_GW_Beta                       // Branch if Beta is not zero

s_and_b32 s74, 255, s[sgprSizeI]                   // s74 = s[sgprSizeI] % 256
s_add_u32 s75, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s75                // wg0 >= nwg0-1 ?
s_cselect_b32 s74, s74, 0                          // set rMT0
s_cmpk_gt_u32 s74, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B0_E1_1                    // jump if edges required
s_mov_b32 s77, 0x0                                 // STATIC_DIV: divisior=144
s_mul_i32 s76, 0x38e, s[sgprSizeJ]                 // tmp1 = dividend * magic hi
s_lshl_b64 s[76:77], s[76:77], 0x10                // left shift 16 bits
s_mul_i32 s75, s[sgprSizeJ], 0x38e4                // tmp0 = dividend * magic lo
s_add_u32 s76, s75, s76                            // add lo
s_addc_u32 s77, s77, 0x0                           // add hi
s_lshr_b64 s[76:77], s[76:77], 0x21                // tmp1 = (dividend * magic) << shift
s_mov_b32 s75, s76                                 // quotient
s_mul_i32 s76, s75, 0x90                           // quotient*divisor
s_sub_u32 s74, s[sgprSizeJ], s76                   // rReg = dividend - quotient*divisor
s_add_u32 s75, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s75                // wg1 >= nwg1-1
s_cselect_b32 s74, s74, 0                          // set rMT1
s_cmpk_gt_u32 s74, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B0_E1_1                    // jump if edges required
label_GW_B0_E0_1:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=6 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (1,0,0,0:vw4); (1,0,1,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[16:19], v11 offset:0                // load bias
v_lshlrev_b32 v12, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
v_add_lshl_u32 v9, v3, v0, 0x2                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+24], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+25], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+26], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+27], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+28], acc1           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+29], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+30], acc9           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+31], acc13          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+32], acc2           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+33], acc6           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+34], acc10          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+35], acc14          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+36], acc3           // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+37], acc7           // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+38], acc11          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+39], acc15          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+40], acc16          // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+41], acc20          // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+42], acc24          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+43], acc28          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+44], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+45], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+46], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+47], acc29          // copy acc to vreg[23]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 1 - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[20:21], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[22:23], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[20:21], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[22:23], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,2,0:vw4); (1,0,3,0:vw4); (2,0,0,0:vw4); (2,0,1,0:vw4); (2,0,2,0:vw4); (2,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[16:19], v11 offset:0                // load bias
buffer_load_dwordx4 v[20:23], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
/* (d1,vc1,d0,vc0)=(2,2,0,0) */
/* (d1,vc1,d0,vc0)=(2,3,0,0) */
v_accvgpr_read_b32 v[vgprValuC+24], acc18          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+25], acc22          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+26], acc26          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+27], acc30          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+28], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+29], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+30], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+31], acc31          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+32], acc32          // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+33], acc36          // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+34], acc40          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+35], acc44          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+36], acc33          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+37], acc37          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+38], acc41          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+39], acc45          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+40], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+41], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+42], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+43], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+44], acc35          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+45], acc39          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+46], acc43          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+47], acc47          // copy acc to vreg[47]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(1, 0, 2, 0), (1, 0, 3, 0), (2, 0, 0, 0), (2, 0, 1, 0), (2, 0, 2, 0), (2, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 1 - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[20:21], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[22:23], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[20:21], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[22:23], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #2 (d1,d0,vc1,vc0) = */
/*    (3,0,0,0:vw4); (3,0,1,0:vw4); (3,0,2,0:vw4); (3,0,3,0:vw4); (4,0,0,0:vw4); (4,0,1,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[16:19], v11 offset:0                // load bias
buffer_load_dwordx4 v[20:23], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
/* (d1,vc1,d0,vc0)=(3,2,0,0) */
/* (d1,vc1,d0,vc0)=(3,3,0,0) */
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
v_accvgpr_read_b32 v[vgprValuC+24], acc48          // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+25], acc52          // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+26], acc56          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+27], acc60          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+28], acc49          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+29], acc53          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+30], acc57          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+31], acc61          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+32], acc50          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+33], acc54          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+34], acc58          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+35], acc62          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+36], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+37], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+38], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+39], acc63          // copy acc to vreg[63]
v_accvgpr_read_b32 v[vgprValuC+40], acc64          // copy acc to vreg[64]
v_accvgpr_read_b32 v[vgprValuC+41], acc68          // copy acc to vreg[65]
v_accvgpr_read_b32 v[vgprValuC+42], acc72          // copy acc to vreg[66]
v_accvgpr_read_b32 v[vgprValuC+43], acc76          // copy acc to vreg[67]
v_accvgpr_read_b32 v[vgprValuC+44], acc65          // copy acc to vreg[68]
v_accvgpr_read_b32 v[vgprValuC+45], acc69          // copy acc to vreg[69]
v_accvgpr_read_b32 v[vgprValuC+46], acc73          // copy acc to vreg[70]
v_accvgpr_read_b32 v[vgprValuC+47], acc77          // copy acc to vreg[71]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(3, 0, 0, 0), (3, 0, 1, 0), (3, 0, 2, 0), (3, 0, 3, 0), (4, 0, 0, 0), (4, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 1 - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[20:21], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[22:23], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[20:21], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[22:23], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #3 (d1,d0,vc1,vc0) = */
/*    (4,0,2,0:vw4); (4,0,3,0:vw4); (5,0,0,0:vw4); (5,0,1,0:vw4); (5,0,2,0:vw4); (5,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(4,2,0,0) */
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[16:19], v11 offset:0                // load bias
buffer_load_dwordx4 v[20:23], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(4,3,0,0) */
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
/* (d1,vc1,d0,vc0)=(5,2,0,0) */
/* (d1,vc1,d0,vc0)=(5,3,0,0) */
v_accvgpr_read_b32 v[vgprValuC+24], acc66          // copy acc to vreg[72]
v_accvgpr_read_b32 v[vgprValuC+25], acc70          // copy acc to vreg[73]
v_accvgpr_read_b32 v[vgprValuC+26], acc74          // copy acc to vreg[74]
v_accvgpr_read_b32 v[vgprValuC+27], acc78          // copy acc to vreg[75]
v_accvgpr_read_b32 v[vgprValuC+28], acc67          // copy acc to vreg[76]
v_accvgpr_read_b32 v[vgprValuC+29], acc71          // copy acc to vreg[77]
v_accvgpr_read_b32 v[vgprValuC+30], acc75          // copy acc to vreg[78]
v_accvgpr_read_b32 v[vgprValuC+31], acc79          // copy acc to vreg[79]
v_accvgpr_read_b32 v[vgprValuC+32], acc80          // copy acc to vreg[80]
v_accvgpr_read_b32 v[vgprValuC+33], acc84          // copy acc to vreg[81]
v_accvgpr_read_b32 v[vgprValuC+34], acc88          // copy acc to vreg[82]
v_accvgpr_read_b32 v[vgprValuC+35], acc92          // copy acc to vreg[83]
v_accvgpr_read_b32 v[vgprValuC+36], acc81          // copy acc to vreg[84]
v_accvgpr_read_b32 v[vgprValuC+37], acc85          // copy acc to vreg[85]
v_accvgpr_read_b32 v[vgprValuC+38], acc89          // copy acc to vreg[86]
v_accvgpr_read_b32 v[vgprValuC+39], acc93          // copy acc to vreg[87]
v_accvgpr_read_b32 v[vgprValuC+40], acc82          // copy acc to vreg[88]
v_accvgpr_read_b32 v[vgprValuC+41], acc86          // copy acc to vreg[89]
v_accvgpr_read_b32 v[vgprValuC+42], acc90          // copy acc to vreg[90]
v_accvgpr_read_b32 v[vgprValuC+43], acc94          // copy acc to vreg[91]
v_accvgpr_read_b32 v[vgprValuC+44], acc83          // copy acc to vreg[92]
v_accvgpr_read_b32 v[vgprValuC+45], acc87          // copy acc to vreg[93]
v_accvgpr_read_b32 v[vgprValuC+46], acc91          // copy acc to vreg[94]
v_accvgpr_read_b32 v[vgprValuC+47], acc95          // copy acc to vreg[95]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(4, 0, 2, 0), (4, 0, 3, 0), (5, 0, 0, 0), (5, 0, 1, 0), (5, 0, 2, 0), (5, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 1 - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[20:21], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[22:23], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[20:21], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[22:23], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #4 (d1,d0,vc1,vc0) = */
/*    (6,0,0,0:vw4); (6,0,1,0:vw4); (6,0,2,0:vw4); (6,0,3,0:vw4); (7,0,0,0:vw4); (7,0,1,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[16:19], v11 offset:0                // load bias
buffer_load_dwordx4 v[20:23], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
/* (d1,vc1,d0,vc0)=(6,2,0,0) */
/* (d1,vc1,d0,vc0)=(6,3,0,0) */
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
v_accvgpr_read_b32 v[vgprValuC+24], acc96          // copy acc to vreg[96]
v_accvgpr_read_b32 v[vgprValuC+25], acc100         // copy acc to vreg[97]
v_accvgpr_read_b32 v[vgprValuC+26], acc104         // copy acc to vreg[98]
v_accvgpr_read_b32 v[vgprValuC+27], acc108         // copy acc to vreg[99]
v_accvgpr_read_b32 v[vgprValuC+28], acc97          // copy acc to vreg[100]
v_accvgpr_read_b32 v[vgprValuC+29], acc101         // copy acc to vreg[101]
v_accvgpr_read_b32 v[vgprValuC+30], acc105         // copy acc to vreg[102]
v_accvgpr_read_b32 v[vgprValuC+31], acc109         // copy acc to vreg[103]
v_accvgpr_read_b32 v[vgprValuC+32], acc98          // copy acc to vreg[104]
v_accvgpr_read_b32 v[vgprValuC+33], acc102         // copy acc to vreg[105]
v_accvgpr_read_b32 v[vgprValuC+34], acc106         // copy acc to vreg[106]
v_accvgpr_read_b32 v[vgprValuC+35], acc110         // copy acc to vreg[107]
v_accvgpr_read_b32 v[vgprValuC+36], acc99          // copy acc to vreg[108]
v_accvgpr_read_b32 v[vgprValuC+37], acc103         // copy acc to vreg[109]
v_accvgpr_read_b32 v[vgprValuC+38], acc107         // copy acc to vreg[110]
v_accvgpr_read_b32 v[vgprValuC+39], acc111         // copy acc to vreg[111]
v_accvgpr_read_b32 v[vgprValuC+40], acc112         // copy acc to vreg[112]
v_accvgpr_read_b32 v[vgprValuC+41], acc116         // copy acc to vreg[113]
v_accvgpr_read_b32 v[vgprValuC+42], acc120         // copy acc to vreg[114]
v_accvgpr_read_b32 v[vgprValuC+43], acc124         // copy acc to vreg[115]
v_accvgpr_read_b32 v[vgprValuC+44], acc113         // copy acc to vreg[116]
v_accvgpr_read_b32 v[vgprValuC+45], acc117         // copy acc to vreg[117]
v_accvgpr_read_b32 v[vgprValuC+46], acc121         // copy acc to vreg[118]
v_accvgpr_read_b32 v[vgprValuC+47], acc125         // copy acc to vreg[119]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(6, 0, 0, 0), (6, 0, 1, 0), (6, 0, 2, 0), (6, 0, 3, 0), (7, 0, 0, 0), (7, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 1 - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[20:21], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[22:23], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[20:21], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[22:23], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #5 (d1,d0,vc1,vc0) = */
/*    (7,0,2,0:vw4); (7,0,3,0:vw4); (8,0,0,0:vw4); (8,0,1,0:vw4); (8,0,2,0:vw4); (8,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(7,2,0,0) */
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[16:19], v11 offset:0                // load bias
buffer_load_dwordx4 v[20:23], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(7,3,0,0) */
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
/* (d1,vc1,d0,vc0)=(8,2,0,0) */
/* (d1,vc1,d0,vc0)=(8,3,0,0) */
v_accvgpr_read_b32 v[vgprValuC+24], acc114         // copy acc to vreg[120]
v_accvgpr_read_b32 v[vgprValuC+25], acc118         // copy acc to vreg[121]
v_accvgpr_read_b32 v[vgprValuC+26], acc122         // copy acc to vreg[122]
v_accvgpr_read_b32 v[vgprValuC+27], acc126         // copy acc to vreg[123]
v_accvgpr_read_b32 v[vgprValuC+28], acc115         // copy acc to vreg[124]
v_accvgpr_read_b32 v[vgprValuC+29], acc119         // copy acc to vreg[125]
v_accvgpr_read_b32 v[vgprValuC+30], acc123         // copy acc to vreg[126]
v_accvgpr_read_b32 v[vgprValuC+31], acc127         // copy acc to vreg[127]
v_mov_b32 v[vgprValuC+32], v[vgprAcc-128+128]         // copy acc to vreg[128]
v_mov_b32 v[vgprValuC+33], v[vgprAcc-128+132]         // copy acc to vreg[129]
v_mov_b32 v[vgprValuC+34], v[vgprAcc-128+136]         // copy acc to vreg[130]
v_mov_b32 v[vgprValuC+35], v[vgprAcc-128+140]         // copy acc to vreg[131]
v_mov_b32 v[vgprValuC+36], v[vgprAcc-128+129]         // copy acc to vreg[132]
v_mov_b32 v[vgprValuC+37], v[vgprAcc-128+133]         // copy acc to vreg[133]
v_mov_b32 v[vgprValuC+38], v[vgprAcc-128+137]         // copy acc to vreg[134]
v_mov_b32 v[vgprValuC+39], v[vgprAcc-128+141]         // copy acc to vreg[135]
v_mov_b32 v[vgprValuC+40], v[vgprAcc-128+130]         // copy acc to vreg[136]
v_mov_b32 v[vgprValuC+41], v[vgprAcc-128+134]         // copy acc to vreg[137]
v_mov_b32 v[vgprValuC+42], v[vgprAcc-128+138]         // copy acc to vreg[138]
v_mov_b32 v[vgprValuC+43], v[vgprAcc-128+142]         // copy acc to vreg[139]
v_mov_b32 v[vgprValuC+44], v[vgprAcc-128+131]         // copy acc to vreg[140]
v_mov_b32 v[vgprValuC+45], v[vgprAcc-128+135]         // copy acc to vreg[141]
v_mov_b32 v[vgprValuC+46], v[vgprAcc-128+139]         // copy acc to vreg[142]
v_mov_b32 v[vgprValuC+47], v[vgprAcc-128+143]         // copy acc to vreg[143]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(7, 0, 2, 0), (7, 0, 3, 0), (8, 0, 0, 0), (8, 0, 1, 0), (8, 0, 2, 0), (8, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 1 - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[20:21], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[22:23], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[20:21], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[22:23], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(20)(2)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B0_E1_1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=6 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (1,0,0,0:vw4); (1,0,1,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v55, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v55, v10, s[78:79]              // LDBias clip if OOB. offset
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[12:15], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[16:19], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v55, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v25, v0, s74
v_lshlrev_b32 v25, 0x2, v25                        // Bias address scaled by BPE
v_cndmask_b32 v25, v55, v25, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v26, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v24, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v55, v24, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s74
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
v_cndmask_b32 v32, v55, v32, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v33, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v27, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v55, v27, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v35, v0, s74
v_lshlrev_b32 v35, 0x2, v35                        // Bias address scaled by BPE
v_cndmask_b32 v35, v55, v35, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v40, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v34, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v55, v34, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v42, v0, s74
v_lshlrev_b32 v42, 0x2, v42                        // Bias address scaled by BPE
v_cndmask_b32 v42, v55, v42, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v43, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v41, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, v55, v41, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v53, v0, s74
v_lshlrev_b32 v53, 0x2, v53                        // Bias address scaled by BPE
v_cndmask_b32 v53, v55, v53, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v54, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v52, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, v55, v52, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+20], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+21], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+22], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+23], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+28], acc1           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+29], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+30], acc9           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+31], acc13          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+36], acc2           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+37], acc6           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+38], acc10          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+39], acc14          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+44], acc3           // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+45], acc7           // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+46], acc11          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+47], acc15          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+48], acc16          // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+49], acc20          // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+50], acc24          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+51], acc28          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+56], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+57], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+58], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+59], acc29          // copy acc to vreg[23]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[16:17], v[vgprValuC+20:vgprValuC+20+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[18:19], v[vgprValuC+22:vgprValuC+22+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v20, v4
v_mov_b32 v21, v5
v_mov_b32 v22, v6
v_mov_b32 v23, v7
buffer_store_dwordx4 v[20:23], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
buffer_store_dwordx4 v[28:31], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v27, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
buffer_store_dwordx4 v[44:47], v34, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v41, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[16:17], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[18:19], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
buffer_store_dwordx4 v[56:59], v52, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,2,0:vw4); (1,0,3,0:vw4); (2,0,0,0:vw4); (2,0,1,0:vw4); (2,0,2,0:vw4); (2,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v55, BufferOOB
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v55, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[12:15], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[16:19], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v55, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v25, v0, s74
v_lshlrev_b32 v25, 0x2, v25                        // Bias address scaled by BPE
v_cndmask_b32 v25, v55, v25, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v26, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v24, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v55, v24, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s74
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
v_cndmask_b32 v32, v55, v32, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v33, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v27, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v55, v27, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v35, v0, s74
v_lshlrev_b32 v35, 0x2, v35                        // Bias address scaled by BPE
v_cndmask_b32 v35, v55, v35, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v40, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v34, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v55, v34, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v42, v0, s74
v_lshlrev_b32 v42, 0x2, v42                        // Bias address scaled by BPE
v_cndmask_b32 v42, v55, v42, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v43, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v41, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, v55, v41, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v53, v0, s74
v_lshlrev_b32 v53, 0x2, v53                        // Bias address scaled by BPE
v_cndmask_b32 v53, v55, v53, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v54, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v52, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, v55, v52, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+20], acc18          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+21], acc22          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+22], acc26          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+23], acc30          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+28], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+29], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+30], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+31], acc31          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+36], acc32          // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+37], acc36          // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+38], acc40          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+39], acc44          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+44], acc33          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+45], acc37          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+46], acc41          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+47], acc45          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+48], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+49], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+50], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+51], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+56], acc35          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+57], acc39          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+58], acc43          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+59], acc47          // copy acc to vreg[47]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(1, 0, 2, 0), (1, 0, 3, 0), (2, 0, 0, 0), (2, 0, 1, 0), (2, 0, 2, 0), (2, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[16:17], v[vgprValuC+20:vgprValuC+20+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[18:19], v[vgprValuC+22:vgprValuC+22+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v20, v4
v_mov_b32 v21, v5
v_mov_b32 v22, v6
v_mov_b32 v23, v7
buffer_store_dwordx4 v[20:23], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
buffer_store_dwordx4 v[28:31], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v27, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
buffer_store_dwordx4 v[44:47], v34, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v41, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[16:17], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[18:19], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
buffer_store_dwordx4 v[56:59], v52, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (3,0,0,0:vw4); (3,0,1,0:vw4); (3,0,2,0:vw4); (3,0,3,0:vw4); (4,0,0,0:vw4); (4,0,1,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v55, BufferOOB
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v55, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[12:15], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[16:19], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v55, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v25, v0, s74
v_lshlrev_b32 v25, 0x2, v25                        // Bias address scaled by BPE
v_cndmask_b32 v25, v55, v25, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v26, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v24, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v55, v24, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s74
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
v_cndmask_b32 v32, v55, v32, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v33, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v27, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v55, v27, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v35, v0, s74
v_lshlrev_b32 v35, 0x2, v35                        // Bias address scaled by BPE
v_cndmask_b32 v35, v55, v35, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v40, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v34, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v55, v34, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v42, v0, s74
v_lshlrev_b32 v42, 0x2, v42                        // Bias address scaled by BPE
v_cndmask_b32 v42, v55, v42, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v43, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v41, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, v55, v41, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v53, v0, s74
v_lshlrev_b32 v53, 0x2, v53                        // Bias address scaled by BPE
v_cndmask_b32 v53, v55, v53, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v54, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v52, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, v55, v52, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+20], acc48          // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+21], acc52          // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+22], acc56          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+23], acc60          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+28], acc49          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+29], acc53          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+30], acc57          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+31], acc61          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+36], acc50          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+37], acc54          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+38], acc58          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+39], acc62          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+44], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+45], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+46], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+47], acc63          // copy acc to vreg[63]
v_accvgpr_read_b32 v[vgprValuC+48], acc64          // copy acc to vreg[64]
v_accvgpr_read_b32 v[vgprValuC+49], acc68          // copy acc to vreg[65]
v_accvgpr_read_b32 v[vgprValuC+50], acc72          // copy acc to vreg[66]
v_accvgpr_read_b32 v[vgprValuC+51], acc76          // copy acc to vreg[67]
v_accvgpr_read_b32 v[vgprValuC+56], acc65          // copy acc to vreg[68]
v_accvgpr_read_b32 v[vgprValuC+57], acc69          // copy acc to vreg[69]
v_accvgpr_read_b32 v[vgprValuC+58], acc73          // copy acc to vreg[70]
v_accvgpr_read_b32 v[vgprValuC+59], acc77          // copy acc to vreg[71]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(3, 0, 0, 0), (3, 0, 1, 0), (3, 0, 2, 0), (3, 0, 3, 0), (4, 0, 0, 0), (4, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[16:17], v[vgprValuC+20:vgprValuC+20+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[18:19], v[vgprValuC+22:vgprValuC+22+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v20, v4
v_mov_b32 v21, v5
v_mov_b32 v22, v6
v_mov_b32 v23, v7
buffer_store_dwordx4 v[20:23], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
buffer_store_dwordx4 v[28:31], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v27, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
buffer_store_dwordx4 v[44:47], v34, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v41, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[16:17], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[18:19], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
buffer_store_dwordx4 v[56:59], v52, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (4,0,2,0:vw4); (4,0,3,0:vw4); (5,0,0,0:vw4); (5,0,1,0:vw4); (5,0,2,0:vw4); (5,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v55, BufferOOB
/* (d1,vc1,d0,vc0)=(4,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v55, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[12:15], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[16:19], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v55, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v25, v0, s74
v_lshlrev_b32 v25, 0x2, v25                        // Bias address scaled by BPE
v_cndmask_b32 v25, v55, v25, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v26, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v24, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v55, v24, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s74
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
v_cndmask_b32 v32, v55, v32, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v33, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v27, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v55, v27, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v35, v0, s74
v_lshlrev_b32 v35, 0x2, v35                        // Bias address scaled by BPE
v_cndmask_b32 v35, v55, v35, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v40, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v34, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v55, v34, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v42, v0, s74
v_lshlrev_b32 v42, 0x2, v42                        // Bias address scaled by BPE
v_cndmask_b32 v42, v55, v42, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v43, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v41, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, v55, v41, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v53, v0, s74
v_lshlrev_b32 v53, 0x2, v53                        // Bias address scaled by BPE
v_cndmask_b32 v53, v55, v53, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v54, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v52, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, v55, v52, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+20], acc66          // copy acc to vreg[72]
v_accvgpr_read_b32 v[vgprValuC+21], acc70          // copy acc to vreg[73]
v_accvgpr_read_b32 v[vgprValuC+22], acc74          // copy acc to vreg[74]
v_accvgpr_read_b32 v[vgprValuC+23], acc78          // copy acc to vreg[75]
v_accvgpr_read_b32 v[vgprValuC+28], acc67          // copy acc to vreg[76]
v_accvgpr_read_b32 v[vgprValuC+29], acc71          // copy acc to vreg[77]
v_accvgpr_read_b32 v[vgprValuC+30], acc75          // copy acc to vreg[78]
v_accvgpr_read_b32 v[vgprValuC+31], acc79          // copy acc to vreg[79]
v_accvgpr_read_b32 v[vgprValuC+36], acc80          // copy acc to vreg[80]
v_accvgpr_read_b32 v[vgprValuC+37], acc84          // copy acc to vreg[81]
v_accvgpr_read_b32 v[vgprValuC+38], acc88          // copy acc to vreg[82]
v_accvgpr_read_b32 v[vgprValuC+39], acc92          // copy acc to vreg[83]
v_accvgpr_read_b32 v[vgprValuC+44], acc81          // copy acc to vreg[84]
v_accvgpr_read_b32 v[vgprValuC+45], acc85          // copy acc to vreg[85]
v_accvgpr_read_b32 v[vgprValuC+46], acc89          // copy acc to vreg[86]
v_accvgpr_read_b32 v[vgprValuC+47], acc93          // copy acc to vreg[87]
v_accvgpr_read_b32 v[vgprValuC+48], acc82          // copy acc to vreg[88]
v_accvgpr_read_b32 v[vgprValuC+49], acc86          // copy acc to vreg[89]
v_accvgpr_read_b32 v[vgprValuC+50], acc90          // copy acc to vreg[90]
v_accvgpr_read_b32 v[vgprValuC+51], acc94          // copy acc to vreg[91]
v_accvgpr_read_b32 v[vgprValuC+56], acc83          // copy acc to vreg[92]
v_accvgpr_read_b32 v[vgprValuC+57], acc87          // copy acc to vreg[93]
v_accvgpr_read_b32 v[vgprValuC+58], acc91          // copy acc to vreg[94]
v_accvgpr_read_b32 v[vgprValuC+59], acc95          // copy acc to vreg[95]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(4, 0, 2, 0), (4, 0, 3, 0), (5, 0, 0, 0), (5, 0, 1, 0), (5, 0, 2, 0), (5, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[16:17], v[vgprValuC+20:vgprValuC+20+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[18:19], v[vgprValuC+22:vgprValuC+22+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v20, v4
v_mov_b32 v21, v5
v_mov_b32 v22, v6
v_mov_b32 v23, v7
buffer_store_dwordx4 v[20:23], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
buffer_store_dwordx4 v[28:31], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v27, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
buffer_store_dwordx4 v[44:47], v34, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v41, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[16:17], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[18:19], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
buffer_store_dwordx4 v[56:59], v52, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #4 (d1,d0,vc1,vc0) = */
/*    (6,0,0,0:vw4); (6,0,1,0:vw4); (6,0,2,0:vw4); (6,0,3,0:vw4); (7,0,0,0:vw4); (7,0,1,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v55, BufferOOB
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v55, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[12:15], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[16:19], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v55, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v25, v0, s74
v_lshlrev_b32 v25, 0x2, v25                        // Bias address scaled by BPE
v_cndmask_b32 v25, v55, v25, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v26, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v24, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v55, v24, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s74
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
v_cndmask_b32 v32, v55, v32, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v33, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v27, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v55, v27, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v35, v0, s74
v_lshlrev_b32 v35, 0x2, v35                        // Bias address scaled by BPE
v_cndmask_b32 v35, v55, v35, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v40, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v34, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v55, v34, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v42, v0, s74
v_lshlrev_b32 v42, 0x2, v42                        // Bias address scaled by BPE
v_cndmask_b32 v42, v55, v42, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v43, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v41, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, v55, v41, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v53, v0, s74
v_lshlrev_b32 v53, 0x2, v53                        // Bias address scaled by BPE
v_cndmask_b32 v53, v55, v53, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v54, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v52, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, v55, v52, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+20], acc96          // copy acc to vreg[96]
v_accvgpr_read_b32 v[vgprValuC+21], acc100         // copy acc to vreg[97]
v_accvgpr_read_b32 v[vgprValuC+22], acc104         // copy acc to vreg[98]
v_accvgpr_read_b32 v[vgprValuC+23], acc108         // copy acc to vreg[99]
v_accvgpr_read_b32 v[vgprValuC+28], acc97          // copy acc to vreg[100]
v_accvgpr_read_b32 v[vgprValuC+29], acc101         // copy acc to vreg[101]
v_accvgpr_read_b32 v[vgprValuC+30], acc105         // copy acc to vreg[102]
v_accvgpr_read_b32 v[vgprValuC+31], acc109         // copy acc to vreg[103]
v_accvgpr_read_b32 v[vgprValuC+36], acc98          // copy acc to vreg[104]
v_accvgpr_read_b32 v[vgprValuC+37], acc102         // copy acc to vreg[105]
v_accvgpr_read_b32 v[vgprValuC+38], acc106         // copy acc to vreg[106]
v_accvgpr_read_b32 v[vgprValuC+39], acc110         // copy acc to vreg[107]
v_accvgpr_read_b32 v[vgprValuC+44], acc99          // copy acc to vreg[108]
v_accvgpr_read_b32 v[vgprValuC+45], acc103         // copy acc to vreg[109]
v_accvgpr_read_b32 v[vgprValuC+46], acc107         // copy acc to vreg[110]
v_accvgpr_read_b32 v[vgprValuC+47], acc111         // copy acc to vreg[111]
v_accvgpr_read_b32 v[vgprValuC+48], acc112         // copy acc to vreg[112]
v_accvgpr_read_b32 v[vgprValuC+49], acc116         // copy acc to vreg[113]
v_accvgpr_read_b32 v[vgprValuC+50], acc120         // copy acc to vreg[114]
v_accvgpr_read_b32 v[vgprValuC+51], acc124         // copy acc to vreg[115]
v_accvgpr_read_b32 v[vgprValuC+56], acc113         // copy acc to vreg[116]
v_accvgpr_read_b32 v[vgprValuC+57], acc117         // copy acc to vreg[117]
v_accvgpr_read_b32 v[vgprValuC+58], acc121         // copy acc to vreg[118]
v_accvgpr_read_b32 v[vgprValuC+59], acc125         // copy acc to vreg[119]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(6, 0, 0, 0), (6, 0, 1, 0), (6, 0, 2, 0), (6, 0, 3, 0), (7, 0, 0, 0), (7, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[16:17], v[vgprValuC+20:vgprValuC+20+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[18:19], v[vgprValuC+22:vgprValuC+22+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v20, v4
v_mov_b32 v21, v5
v_mov_b32 v22, v6
v_mov_b32 v23, v7
buffer_store_dwordx4 v[20:23], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
buffer_store_dwordx4 v[28:31], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v27, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
buffer_store_dwordx4 v[44:47], v34, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v41, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[16:17], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[18:19], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
buffer_store_dwordx4 v[56:59], v52, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #5 (d1,d0,vc1,vc0) = */
/*    (7,0,2,0:vw4); (7,0,3,0:vw4); (8,0,0,0:vw4); (8,0,1,0:vw4); (8,0,2,0:vw4); (8,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v55, BufferOOB
/* (d1,vc1,d0,vc0)=(7,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v55, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[12:15], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[16:19], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v55, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v25, v0, s74
v_lshlrev_b32 v25, 0x2, v25                        // Bias address scaled by BPE
v_cndmask_b32 v25, v55, v25, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v26, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v24, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v55, v24, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s74
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
v_cndmask_b32 v32, v55, v32, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v33, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v27, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v55, v27, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v35, v0, s74
v_lshlrev_b32 v35, 0x2, v35                        // Bias address scaled by BPE
v_cndmask_b32 v35, v55, v35, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v40, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v34, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v34, v55, v34, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v42, v0, s74
v_lshlrev_b32 v42, 0x2, v42                        // Bias address scaled by BPE
v_cndmask_b32 v42, v55, v42, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v43, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v41, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v41, v55, v41, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v53, v0, s74
v_lshlrev_b32 v53, 0x2, v53                        // Bias address scaled by BPE
v_cndmask_b32 v53, v55, v53, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v54, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v52, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v52, v55, v52, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+20], acc114         // copy acc to vreg[120]
v_accvgpr_read_b32 v[vgprValuC+21], acc118         // copy acc to vreg[121]
v_accvgpr_read_b32 v[vgprValuC+22], acc122         // copy acc to vreg[122]
v_accvgpr_read_b32 v[vgprValuC+23], acc126         // copy acc to vreg[123]
v_accvgpr_read_b32 v[vgprValuC+28], acc115         // copy acc to vreg[124]
v_accvgpr_read_b32 v[vgprValuC+29], acc119         // copy acc to vreg[125]
v_accvgpr_read_b32 v[vgprValuC+30], acc123         // copy acc to vreg[126]
v_accvgpr_read_b32 v[vgprValuC+31], acc127         // copy acc to vreg[127]
v_mov_b32 v[vgprValuC+36], v[vgprAcc-128+128]         // copy acc to vreg[128]
v_mov_b32 v[vgprValuC+37], v[vgprAcc-128+132]         // copy acc to vreg[129]
v_mov_b32 v[vgprValuC+38], v[vgprAcc-128+136]         // copy acc to vreg[130]
v_mov_b32 v[vgprValuC+39], v[vgprAcc-128+140]         // copy acc to vreg[131]
v_mov_b32 v[vgprValuC+44], v[vgprAcc-128+129]         // copy acc to vreg[132]
v_mov_b32 v[vgprValuC+45], v[vgprAcc-128+133]         // copy acc to vreg[133]
v_mov_b32 v[vgprValuC+46], v[vgprAcc-128+137]         // copy acc to vreg[134]
v_mov_b32 v[vgprValuC+47], v[vgprAcc-128+141]         // copy acc to vreg[135]
v_mov_b32 v[vgprValuC+48], v[vgprAcc-128+130]         // copy acc to vreg[136]
v_mov_b32 v[vgprValuC+49], v[vgprAcc-128+134]         // copy acc to vreg[137]
v_mov_b32 v[vgprValuC+50], v[vgprAcc-128+138]         // copy acc to vreg[138]
v_mov_b32 v[vgprValuC+51], v[vgprAcc-128+142]         // copy acc to vreg[139]
v_mov_b32 v[vgprValuC+56], v[vgprAcc-128+131]         // copy acc to vreg[140]
v_mov_b32 v[vgprValuC+57], v[vgprAcc-128+135]         // copy acc to vreg[141]
v_mov_b32 v[vgprValuC+58], v[vgprAcc-128+139]         // copy acc to vreg[142]
v_mov_b32 v[vgprValuC+59], v[vgprAcc-128+143]         // copy acc to vreg[143]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(7, 0, 2, 0), (7, 0, 3, 0), (8, 0, 0, 0), (8, 0, 1, 0), (8, 0, 2, 0), (8, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+22], s[sgprAlpha], v[vgprValuC+22] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[16:17], v[vgprValuC+20:vgprValuC+20+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[18:19], v[vgprValuC+22:vgprValuC+22+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v20, v4
v_mov_b32 v21, v5
v_mov_b32 v22, v6
v_mov_b32 v23, v7
buffer_store_dwordx4 v[20:23], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[16:17], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[18:19], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
buffer_store_dwordx4 v[28:31], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v27, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[16:17], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[18:19], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
buffer_store_dwordx4 v[44:47], v34, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v41, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v16, 1.0, v16, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v17, 1.0, v17, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[16:17], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(16)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v18, 1.0, v18, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v19, 1.0, v19, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[18:19], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(16)(2)
v_pk_add_f32 v[4:5], v[12:13], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[14:15], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
buffer_store_dwordx4 v[56:59], v52, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_Beta:
s_and_b32 s74, 255, s[sgprSizeI]                   // s74 = s[sgprSizeI] % 256
s_add_u32 s75, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s75                // wg0 >= nwg0-1 ?
s_cselect_b32 s74, s74, 0                          // set rMT0
s_cmpk_gt_u32 s74, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
s_mov_b32 s77, 0x0                                 // STATIC_DIV: divisior=144
s_mul_i32 s76, 0x38e, s[sgprSizeJ]                 // tmp1 = dividend * magic hi
s_lshl_b64 s[76:77], s[76:77], 0x10                // left shift 16 bits
s_mul_i32 s75, s[sgprSizeJ], 0x38e4                // tmp0 = dividend * magic lo
s_add_u32 s76, s75, s76                            // add lo
s_addc_u32 s77, s77, 0x0                           // add hi
s_lshr_b64 s[76:77], s[76:77], 0x21                // tmp1 = (dividend * magic) << shift
s_mov_b32 s75, s76                                 // quotient
s_mul_i32 s76, s75, 0x90                           // quotient*divisor
s_sub_u32 s74, s[sgprSizeJ], s76                   // rReg = dividend - quotient*divisor
s_add_u32 s75, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s75                // wg1 >= nwg1-1
s_cselect_b32 s74, s74, 0                          // set rMT1
s_cmpk_gt_u32 s74, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
label_GW_B1_E0:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=4 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_add_lshl_u32 v10, v2, v0, 0x2                    // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[20:23], v11 offset:0                // load bias
v_lshlrev_b32 v12, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v9, v3, v0, 0x2                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+28], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+29], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+30], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+31], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+36], acc1           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+37], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+38], acc9           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+39], acc13          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+44], acc2           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+45], acc6           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+46], acc10          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+47], acc14          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+52], acc3           // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+53], acc7           // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+54], acc11          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+55], acc15          // copy acc to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,0,1,0:vw4); (1,0,2,0:vw4); (1,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+28], acc16          // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+29], acc20          // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+30], acc24          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+31], acc28          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+44], acc18          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+45], acc22          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+46], acc26          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+47], acc30          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+52], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+53], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+54], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+55], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #2 (d1,d0,vc1,vc0) = */
/*    (2,0,0,0:vw4); (2,0,1,0:vw4); (2,0,2,0:vw4); (2,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(2,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(2,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+28], acc32          // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+29], acc36          // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+30], acc40          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+31], acc44          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+36], acc33          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+37], acc37          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+38], acc41          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+39], acc45          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+44], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+45], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+46], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+47], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+52], acc35          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+53], acc39          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+54], acc43          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+55], acc47          // copy acc to vreg[47]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(2, 0, 0, 0), (2, 0, 1, 0), (2, 0, 2, 0), (2, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #3 (d1,d0,vc1,vc0) = */
/*    (3,0,0,0:vw4); (3,0,1,0:vw4); (3,0,2,0:vw4); (3,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(3,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(3,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+28], acc48          // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+29], acc52          // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+30], acc56          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+31], acc60          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+36], acc49          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+37], acc53          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+38], acc57          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+39], acc61          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+44], acc50          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+45], acc54          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+46], acc58          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+47], acc62          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+52], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+53], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+54], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+55], acc63          // copy acc to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(3, 0, 0, 0), (3, 0, 1, 0), (3, 0, 2, 0), (3, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #4 (d1,d0,vc1,vc0) = */
/*    (4,0,0,0:vw4); (4,0,1,0:vw4); (4,0,2,0:vw4); (4,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(4,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(4,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+28], acc64          // copy acc to vreg[64]
v_accvgpr_read_b32 v[vgprValuC+29], acc68          // copy acc to vreg[65]
v_accvgpr_read_b32 v[vgprValuC+30], acc72          // copy acc to vreg[66]
v_accvgpr_read_b32 v[vgprValuC+31], acc76          // copy acc to vreg[67]
v_accvgpr_read_b32 v[vgprValuC+36], acc65          // copy acc to vreg[68]
v_accvgpr_read_b32 v[vgprValuC+37], acc69          // copy acc to vreg[69]
v_accvgpr_read_b32 v[vgprValuC+38], acc73          // copy acc to vreg[70]
v_accvgpr_read_b32 v[vgprValuC+39], acc77          // copy acc to vreg[71]
v_accvgpr_read_b32 v[vgprValuC+44], acc66          // copy acc to vreg[72]
v_accvgpr_read_b32 v[vgprValuC+45], acc70          // copy acc to vreg[73]
v_accvgpr_read_b32 v[vgprValuC+46], acc74          // copy acc to vreg[74]
v_accvgpr_read_b32 v[vgprValuC+47], acc78          // copy acc to vreg[75]
v_accvgpr_read_b32 v[vgprValuC+52], acc67          // copy acc to vreg[76]
v_accvgpr_read_b32 v[vgprValuC+53], acc71          // copy acc to vreg[77]
v_accvgpr_read_b32 v[vgprValuC+54], acc75          // copy acc to vreg[78]
v_accvgpr_read_b32 v[vgprValuC+55], acc79          // copy acc to vreg[79]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(4, 0, 0, 0), (4, 0, 1, 0), (4, 0, 2, 0), (4, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #5 (d1,d0,vc1,vc0) = */
/*    (5,0,0,0:vw4); (5,0,1,0:vw4); (5,0,2,0:vw4); (5,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(5,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(5,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+28], acc80          // copy acc to vreg[80]
v_accvgpr_read_b32 v[vgprValuC+29], acc84          // copy acc to vreg[81]
v_accvgpr_read_b32 v[vgprValuC+30], acc88          // copy acc to vreg[82]
v_accvgpr_read_b32 v[vgprValuC+31], acc92          // copy acc to vreg[83]
v_accvgpr_read_b32 v[vgprValuC+36], acc81          // copy acc to vreg[84]
v_accvgpr_read_b32 v[vgprValuC+37], acc85          // copy acc to vreg[85]
v_accvgpr_read_b32 v[vgprValuC+38], acc89          // copy acc to vreg[86]
v_accvgpr_read_b32 v[vgprValuC+39], acc93          // copy acc to vreg[87]
v_accvgpr_read_b32 v[vgprValuC+44], acc82          // copy acc to vreg[88]
v_accvgpr_read_b32 v[vgprValuC+45], acc86          // copy acc to vreg[89]
v_accvgpr_read_b32 v[vgprValuC+46], acc90          // copy acc to vreg[90]
v_accvgpr_read_b32 v[vgprValuC+47], acc94          // copy acc to vreg[91]
v_accvgpr_read_b32 v[vgprValuC+52], acc83          // copy acc to vreg[92]
v_accvgpr_read_b32 v[vgprValuC+53], acc87          // copy acc to vreg[93]
v_accvgpr_read_b32 v[vgprValuC+54], acc91          // copy acc to vreg[94]
v_accvgpr_read_b32 v[vgprValuC+55], acc95          // copy acc to vreg[95]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(5, 0, 0, 0), (5, 0, 1, 0), (5, 0, 2, 0), (5, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #6 (d1,d0,vc1,vc0) = */
/*    (6,0,0,0:vw4); (6,0,1,0:vw4); (6,0,2,0:vw4); (6,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(6,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(6,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+28], acc96          // copy acc to vreg[96]
v_accvgpr_read_b32 v[vgprValuC+29], acc100         // copy acc to vreg[97]
v_accvgpr_read_b32 v[vgprValuC+30], acc104         // copy acc to vreg[98]
v_accvgpr_read_b32 v[vgprValuC+31], acc108         // copy acc to vreg[99]
v_accvgpr_read_b32 v[vgprValuC+36], acc97          // copy acc to vreg[100]
v_accvgpr_read_b32 v[vgprValuC+37], acc101         // copy acc to vreg[101]
v_accvgpr_read_b32 v[vgprValuC+38], acc105         // copy acc to vreg[102]
v_accvgpr_read_b32 v[vgprValuC+39], acc109         // copy acc to vreg[103]
v_accvgpr_read_b32 v[vgprValuC+44], acc98          // copy acc to vreg[104]
v_accvgpr_read_b32 v[vgprValuC+45], acc102         // copy acc to vreg[105]
v_accvgpr_read_b32 v[vgprValuC+46], acc106         // copy acc to vreg[106]
v_accvgpr_read_b32 v[vgprValuC+47], acc110         // copy acc to vreg[107]
v_accvgpr_read_b32 v[vgprValuC+52], acc99          // copy acc to vreg[108]
v_accvgpr_read_b32 v[vgprValuC+53], acc103         // copy acc to vreg[109]
v_accvgpr_read_b32 v[vgprValuC+54], acc107         // copy acc to vreg[110]
v_accvgpr_read_b32 v[vgprValuC+55], acc111         // copy acc to vreg[111]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(6, 0, 0, 0), (6, 0, 1, 0), (6, 0, 2, 0), (6, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #7 (d1,d0,vc1,vc0) = */
/*    (7,0,0,0:vw4); (7,0,1,0:vw4); (7,0,2,0:vw4); (7,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(7,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(7,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+28], acc112         // copy acc to vreg[112]
v_accvgpr_read_b32 v[vgprValuC+29], acc116         // copy acc to vreg[113]
v_accvgpr_read_b32 v[vgprValuC+30], acc120         // copy acc to vreg[114]
v_accvgpr_read_b32 v[vgprValuC+31], acc124         // copy acc to vreg[115]
v_accvgpr_read_b32 v[vgprValuC+36], acc113         // copy acc to vreg[116]
v_accvgpr_read_b32 v[vgprValuC+37], acc117         // copy acc to vreg[117]
v_accvgpr_read_b32 v[vgprValuC+38], acc121         // copy acc to vreg[118]
v_accvgpr_read_b32 v[vgprValuC+39], acc125         // copy acc to vreg[119]
v_accvgpr_read_b32 v[vgprValuC+44], acc114         // copy acc to vreg[120]
v_accvgpr_read_b32 v[vgprValuC+45], acc118         // copy acc to vreg[121]
v_accvgpr_read_b32 v[vgprValuC+46], acc122         // copy acc to vreg[122]
v_accvgpr_read_b32 v[vgprValuC+47], acc126         // copy acc to vreg[123]
v_accvgpr_read_b32 v[vgprValuC+52], acc115         // copy acc to vreg[124]
v_accvgpr_read_b32 v[vgprValuC+53], acc119         // copy acc to vreg[125]
v_accvgpr_read_b32 v[vgprValuC+54], acc123         // copy acc to vreg[126]
v_accvgpr_read_b32 v[vgprValuC+55], acc127         // copy acc to vreg[127]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(7, 0, 0, 0), (7, 0, 1, 0), (7, 0, 2, 0), (7, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #8 (d1,d0,vc1,vc0) = */
/*    (8,0,0,0:vw4); (8,0,1,0:vw4); (8,0,2,0:vw4); (8,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
s_mul_i32 s74, s[sgprStrideC1J], 52                // scale StrideC *= numRows(13) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[16:19], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v11, v0, s74
v_lshlrev_b32 v11, 0x2, v11                        // Bias address scaled by BPE
ds_read_b128 v[20:23], v11 offset:0                // load bias
buffer_load_dwordx4 v[24:27], v12, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[32:35], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(8,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[40:43], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(8,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v10, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_mov_b32 v[vgprValuC+28], v[vgprAcc-128+128]         // copy acc to vreg[128]
v_mov_b32 v[vgprValuC+29], v[vgprAcc-128+132]         // copy acc to vreg[129]
v_mov_b32 v[vgprValuC+30], v[vgprAcc-128+136]         // copy acc to vreg[130]
v_mov_b32 v[vgprValuC+31], v[vgprAcc-128+140]         // copy acc to vreg[131]
v_mov_b32 v[vgprValuC+36], v[vgprAcc-128+129]         // copy acc to vreg[132]
v_mov_b32 v[vgprValuC+37], v[vgprAcc-128+133]         // copy acc to vreg[133]
v_mov_b32 v[vgprValuC+38], v[vgprAcc-128+137]         // copy acc to vreg[134]
v_mov_b32 v[vgprValuC+39], v[vgprAcc-128+141]         // copy acc to vreg[135]
v_mov_b32 v[vgprValuC+44], v[vgprAcc-128+130]         // copy acc to vreg[136]
v_mov_b32 v[vgprValuC+45], v[vgprAcc-128+134]         // copy acc to vreg[137]
v_mov_b32 v[vgprValuC+46], v[vgprAcc-128+138]         // copy acc to vreg[138]
v_mov_b32 v[vgprValuC+47], v[vgprAcc-128+142]         // copy acc to vreg[139]
v_mov_b32 v[vgprValuC+52], v[vgprAcc-128+131]         // copy acc to vreg[140]
v_mov_b32 v[vgprValuC+53], v[vgprAcc-128+135]         // copy acc to vreg[141]
v_mov_b32 v[vgprValuC+54], v[vgprAcc-128+139]         // copy acc to vreg[142]
v_mov_b32 v[vgprValuC+55], v[vgprAcc-128+143]         // copy acc to vreg[143]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(8, 0, 0, 0), (8, 0, 1, 0), (8, 0, 2, 0), (8, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
v_mul_f32 v[vgprValuC+30], s[sgprAlpha], v[vgprValuC+30] // *= alpha
v_mul_f32 v[vgprValuC+31], s[sgprAlpha], v[vgprValuC+31] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(3)                     // vmcnt(3) = 5 - 1 (beta) - 1 (scaleAlphaVec) lgkmcnt(0) = 1 - 1 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[24:25], v[vgprValuC+28:vgprValuC+28+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[26:27], v[vgprValuC+30:vgprValuC+30+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+28], v16, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+29], v17, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+30], v18, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+31], v19, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v28, v4
v_mov_b32 v29, v5
v_mov_b32 v30, v6
v_mov_b32 v31, v7
s_mul_i32 s74, s[sgprStrideD1J], 52                // scale StrideD *= numRows(13) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(2) = 5 - 2 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[24:25], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[26:27], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(1) = 5 - 3 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[24:25], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[26:27], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+44], v40, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+45], v41, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+46], v42, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+47], v43, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v44, v4
v_mov_b32 v45, v5
v_mov_b32 v46, v6
v_mov_b32 v47, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(3)                                 // vmcnt(0) = 5 - 4 (beta) - 1 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[24:25], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[26:27], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(2)
v_fmac_f32 v[vgprValuC+52], v48, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+53], v49, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+54], v50, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+55], v51, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v52, v4
v_mov_b32 v53, v5
v_mov_b32 v54, v6
v_mov_b32 v55, v7
s_lshl_b32 s74, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B1_E1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=4 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+25], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+26], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+27], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+36], acc1           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+37], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+38], acc9           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+39], acc13          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+48], acc2           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+49], acc6           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+50], acc10          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+51], acc14          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+60], acc3           // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+61], acc7           // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+62], acc11          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+63], acc15          // copy acc to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (1,0,0,0:vw4); (1,0,1,0:vw4); (1,0,2,0:vw4); (1,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc16          // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+25], acc20          // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+26], acc24          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+27], acc28          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+48], acc18          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+49], acc22          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+50], acc26          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+51], acc30          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+60], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+61], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+62], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+63], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #2 (d1,d0,vc1,vc0) = */
/*    (2,0,0,0:vw4); (2,0,1,0:vw4); (2,0,2,0:vw4); (2,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(2,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(2,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc32          // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+25], acc36          // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+26], acc40          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+27], acc44          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+36], acc33          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+37], acc37          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+38], acc41          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+39], acc45          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+48], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+49], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+50], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+51], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+60], acc35          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+61], acc39          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+62], acc43          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+63], acc47          // copy acc to vreg[47]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(2, 0, 0, 0), (2, 0, 1, 0), (2, 0, 2, 0), (2, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #3 (d1,d0,vc1,vc0) = */
/*    (3,0,0,0:vw4); (3,0,1,0:vw4); (3,0,2,0:vw4); (3,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(3,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(3,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc48          // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+25], acc52          // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+26], acc56          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+27], acc60          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+36], acc49          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+37], acc53          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+38], acc57          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+39], acc61          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+48], acc50          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+49], acc54          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+50], acc58          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+51], acc62          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+60], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+61], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+62], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+63], acc63          // copy acc to vreg[63]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(3, 0, 0, 0), (3, 0, 1, 0), (3, 0, 2, 0), (3, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #4 (d1,d0,vc1,vc0) = */
/*    (4,0,0,0:vw4); (4,0,1,0:vw4); (4,0,2,0:vw4); (4,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(4,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(4,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc64          // copy acc to vreg[64]
v_accvgpr_read_b32 v[vgprValuC+25], acc68          // copy acc to vreg[65]
v_accvgpr_read_b32 v[vgprValuC+26], acc72          // copy acc to vreg[66]
v_accvgpr_read_b32 v[vgprValuC+27], acc76          // copy acc to vreg[67]
v_accvgpr_read_b32 v[vgprValuC+36], acc65          // copy acc to vreg[68]
v_accvgpr_read_b32 v[vgprValuC+37], acc69          // copy acc to vreg[69]
v_accvgpr_read_b32 v[vgprValuC+38], acc73          // copy acc to vreg[70]
v_accvgpr_read_b32 v[vgprValuC+39], acc77          // copy acc to vreg[71]
v_accvgpr_read_b32 v[vgprValuC+48], acc66          // copy acc to vreg[72]
v_accvgpr_read_b32 v[vgprValuC+49], acc70          // copy acc to vreg[73]
v_accvgpr_read_b32 v[vgprValuC+50], acc74          // copy acc to vreg[74]
v_accvgpr_read_b32 v[vgprValuC+51], acc78          // copy acc to vreg[75]
v_accvgpr_read_b32 v[vgprValuC+60], acc67          // copy acc to vreg[76]
v_accvgpr_read_b32 v[vgprValuC+61], acc71          // copy acc to vreg[77]
v_accvgpr_read_b32 v[vgprValuC+62], acc75          // copy acc to vreg[78]
v_accvgpr_read_b32 v[vgprValuC+63], acc79          // copy acc to vreg[79]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(4, 0, 0, 0), (4, 0, 1, 0), (4, 0, 2, 0), (4, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #5 (d1,d0,vc1,vc0) = */
/*    (5,0,0,0:vw4); (5,0,1,0:vw4); (5,0,2,0:vw4); (5,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(5,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(5,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc80          // copy acc to vreg[80]
v_accvgpr_read_b32 v[vgprValuC+25], acc84          // copy acc to vreg[81]
v_accvgpr_read_b32 v[vgprValuC+26], acc88          // copy acc to vreg[82]
v_accvgpr_read_b32 v[vgprValuC+27], acc92          // copy acc to vreg[83]
v_accvgpr_read_b32 v[vgprValuC+36], acc81          // copy acc to vreg[84]
v_accvgpr_read_b32 v[vgprValuC+37], acc85          // copy acc to vreg[85]
v_accvgpr_read_b32 v[vgprValuC+38], acc89          // copy acc to vreg[86]
v_accvgpr_read_b32 v[vgprValuC+39], acc93          // copy acc to vreg[87]
v_accvgpr_read_b32 v[vgprValuC+48], acc82          // copy acc to vreg[88]
v_accvgpr_read_b32 v[vgprValuC+49], acc86          // copy acc to vreg[89]
v_accvgpr_read_b32 v[vgprValuC+50], acc90          // copy acc to vreg[90]
v_accvgpr_read_b32 v[vgprValuC+51], acc94          // copy acc to vreg[91]
v_accvgpr_read_b32 v[vgprValuC+60], acc83          // copy acc to vreg[92]
v_accvgpr_read_b32 v[vgprValuC+61], acc87          // copy acc to vreg[93]
v_accvgpr_read_b32 v[vgprValuC+62], acc91          // copy acc to vreg[94]
v_accvgpr_read_b32 v[vgprValuC+63], acc95          // copy acc to vreg[95]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(5, 0, 0, 0), (5, 0, 1, 0), (5, 0, 2, 0), (5, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #6 (d1,d0,vc1,vc0) = */
/*    (6,0,0,0:vw4); (6,0,1,0:vw4); (6,0,2,0:vw4); (6,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(6,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(6,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc96          // copy acc to vreg[96]
v_accvgpr_read_b32 v[vgprValuC+25], acc100         // copy acc to vreg[97]
v_accvgpr_read_b32 v[vgprValuC+26], acc104         // copy acc to vreg[98]
v_accvgpr_read_b32 v[vgprValuC+27], acc108         // copy acc to vreg[99]
v_accvgpr_read_b32 v[vgprValuC+36], acc97          // copy acc to vreg[100]
v_accvgpr_read_b32 v[vgprValuC+37], acc101         // copy acc to vreg[101]
v_accvgpr_read_b32 v[vgprValuC+38], acc105         // copy acc to vreg[102]
v_accvgpr_read_b32 v[vgprValuC+39], acc109         // copy acc to vreg[103]
v_accvgpr_read_b32 v[vgprValuC+48], acc98          // copy acc to vreg[104]
v_accvgpr_read_b32 v[vgprValuC+49], acc102         // copy acc to vreg[105]
v_accvgpr_read_b32 v[vgprValuC+50], acc106         // copy acc to vreg[106]
v_accvgpr_read_b32 v[vgprValuC+51], acc110         // copy acc to vreg[107]
v_accvgpr_read_b32 v[vgprValuC+60], acc99          // copy acc to vreg[108]
v_accvgpr_read_b32 v[vgprValuC+61], acc103         // copy acc to vreg[109]
v_accvgpr_read_b32 v[vgprValuC+62], acc107         // copy acc to vreg[110]
v_accvgpr_read_b32 v[vgprValuC+63], acc111         // copy acc to vreg[111]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(6, 0, 0, 0), (6, 0, 1, 0), (6, 0, 2, 0), (6, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #7 (d1,d0,vc1,vc0) = */
/*    (7,0,0,0:vw4); (7,0,1,0:vw4); (7,0,2,0:vw4); (7,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(7,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(7,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+24], acc112         // copy acc to vreg[112]
v_accvgpr_read_b32 v[vgprValuC+25], acc116         // copy acc to vreg[113]
v_accvgpr_read_b32 v[vgprValuC+26], acc120         // copy acc to vreg[114]
v_accvgpr_read_b32 v[vgprValuC+27], acc124         // copy acc to vreg[115]
v_accvgpr_read_b32 v[vgprValuC+36], acc113         // copy acc to vreg[116]
v_accvgpr_read_b32 v[vgprValuC+37], acc117         // copy acc to vreg[117]
v_accvgpr_read_b32 v[vgprValuC+38], acc121         // copy acc to vreg[118]
v_accvgpr_read_b32 v[vgprValuC+39], acc125         // copy acc to vreg[119]
v_accvgpr_read_b32 v[vgprValuC+48], acc114         // copy acc to vreg[120]
v_accvgpr_read_b32 v[vgprValuC+49], acc118         // copy acc to vreg[121]
v_accvgpr_read_b32 v[vgprValuC+50], acc122         // copy acc to vreg[122]
v_accvgpr_read_b32 v[vgprValuC+51], acc126         // copy acc to vreg[123]
v_accvgpr_read_b32 v[vgprValuC+60], acc115         // copy acc to vreg[124]
v_accvgpr_read_b32 v[vgprValuC+61], acc119         // copy acc to vreg[125]
v_accvgpr_read_b32 v[vgprValuC+62], acc123         // copy acc to vreg[126]
v_accvgpr_read_b32 v[vgprValuC+63], acc127         // copy acc to vreg[127]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(7, 0, 0, 0), (7, 0, 1, 0), (7, 0, 2, 0), (7, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #8 (d1,d0,vc1,vc0) = */
/*    (8,0,0,0:vw4); (8,0,1,0:vw4); (8,0,2,0:vw4); (8,0,3,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v53, BufferOOB
/* (d1,vc1,d0,vc0)=(8,0,0,0) */
v_add_co_u32 v1, vcc, v1, 13                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s74, s[sgprStrideC1J], 13                // scale stride
v_add_u32 v2, v2, s74                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s74, s[sgprStrideD1J], 13                // scale stride
v_add_u32 v3, v3, s74                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDC clip if OOB. offset
buffer_load_dwordx4 v[12:15], v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v10, v0, s74
v_lshlrev_b32 v10, 0x2, v10                        // Bias address scaled by BPE
v_cndmask_b32 v10, v53, v10, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v10 offset:0                // load bias
v_lshlrev_b32 v11, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[20:23], v11, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
v_add_lshl_u32 v9, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v53, v9, s[78:79]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v28, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[32:35], v28, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v29, v0, s74
v_lshlrev_b32 v29, 0x2, v29                        // Bias address scaled by BPE
v_cndmask_b32 v29, v53, v29, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v30, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v28, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v28, v53, v28, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v31, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[44:47], v31, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v0, s74
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
v_cndmask_b32 v40, v53, v40, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v41, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v31, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v31, v53, v31, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(8,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v42, v2, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[56:59], v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 256, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v0, s74
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
v_cndmask_b32 v43, v53, v43, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v52, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v42, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v42, v53, v42, s[78:79]              // LDD clip if OOB. offset
v_mov_b32 v[vgprValuC+24], v[vgprAcc-128+128]         // copy acc to vreg[128]
v_mov_b32 v[vgprValuC+25], v[vgprAcc-128+132]         // copy acc to vreg[129]
v_mov_b32 v[vgprValuC+26], v[vgprAcc-128+136]         // copy acc to vreg[130]
v_mov_b32 v[vgprValuC+27], v[vgprAcc-128+140]         // copy acc to vreg[131]
v_mov_b32 v[vgprValuC+36], v[vgprAcc-128+129]         // copy acc to vreg[132]
v_mov_b32 v[vgprValuC+37], v[vgprAcc-128+133]         // copy acc to vreg[133]
v_mov_b32 v[vgprValuC+38], v[vgprAcc-128+137]         // copy acc to vreg[134]
v_mov_b32 v[vgprValuC+39], v[vgprAcc-128+141]         // copy acc to vreg[135]
v_mov_b32 v[vgprValuC+48], v[vgprAcc-128+130]         // copy acc to vreg[136]
v_mov_b32 v[vgprValuC+49], v[vgprAcc-128+134]         // copy acc to vreg[137]
v_mov_b32 v[vgprValuC+50], v[vgprAcc-128+138]         // copy acc to vreg[138]
v_mov_b32 v[vgprValuC+51], v[vgprAcc-128+142]         // copy acc to vreg[139]
v_mov_b32 v[vgprValuC+60], v[vgprAcc-128+131]         // copy acc to vreg[140]
v_mov_b32 v[vgprValuC+61], v[vgprAcc-128+135]         // copy acc to vreg[141]
v_mov_b32 v[vgprValuC+62], v[vgprAcc-128+139]         // copy acc to vreg[142]
v_mov_b32 v[vgprValuC+63], v[vgprAcc-128+143]         // copy acc to vreg[143]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(8, 0, 0, 0), (8, 0, 1, 0), (8, 0, 2, 0), (8, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+24], s[sgprAlpha], v[vgprValuC+24] // *= alpha
v_mul_f32 v[vgprValuC+25], s[sgprAlpha], v[vgprValuC+25] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+27], s[sgprAlpha], v[vgprValuC+27] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[20:21], v[vgprValuC+24:vgprValuC+24+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[22:23], v[vgprValuC+26:vgprValuC+26+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+24], v12, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+25], v13, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+26], v14, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+27], v15, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v24, v4
v_mov_b32 v25, v5
v_mov_b32 v26, v6
v_mov_b32 v27, v7
buffer_store_dwordx4 v[24:27], v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+36], v32, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+37], v33, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+38], v34, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+39], v35, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v36, v4
v_mov_b32 v37, v5
v_mov_b32 v38, v6
v_mov_b32 v39, v7
buffer_store_dwordx4 v[36:39], v28, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[20:21], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[22:23], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+48], v44, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+49], v45, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+50], v46, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+51], v47, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
buffer_store_dwordx4 v[48:51], v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v20, 1.0, v20, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v21, 1.0, v21, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[20:21], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(20)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v22, 1.0, v22, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v23, 1.0, v23, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[22:23], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(20)(2)
v_fmac_f32 v[vgprValuC+60], v56, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+61], v57, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+62], v58, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_fmac_f32 v[vgprValuC+63], v59, s[sgprBeta]       // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v60, v4
v_mov_b32 v61, v5
v_mov_b32 v62, v6
v_mov_b32 v63, v7
buffer_store_dwordx4 v[60:63], v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_Activation_None_VW4:
s_setpc_b64 s[72:73]
label_Activation_Abs_VW4:
v_and_b32 v4, 0x7fffffff, v4                       // Remove sign bit
v_and_b32 v5, 0x7fffffff, v5                       // Remove sign bit
v_and_b32 v6, 0x7fffffff, v6                       // Remove sign bit
v_and_b32 v7, 0x7fffffff, v7                       // Remove sign bit
s_setpc_b64 s[72:73]
label_Activation_Clippedrelu_VW4:
v_cmp_gt_f32 vcc, v4, s[sgpractivationAlpha]       // x > alpha ?
v_min_f32 v4, s[sgpractivationBeta], v4            // min(x, beta)
v_cndmask_b32 v4, 0.0, v4, vcc                     // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v5, s[sgpractivationAlpha]       // x > alpha ?
v_min_f32 v5, s[sgpractivationBeta], v5            // min(x, beta)
v_cndmask_b32 v5, 0.0, v5, vcc                     // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v6, s[sgpractivationAlpha]       // x > alpha ?
v_min_f32 v6, s[sgpractivationBeta], v6            // min(x, beta)
v_cndmask_b32 v6, 0.0, v6, vcc                     // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v7, s[sgpractivationAlpha]       // x > alpha ?
v_min_f32 v7, s[sgpractivationBeta], v7            // min(x, beta)
v_cndmask_b32 v7, 0.0, v7, vcc                     // set x to 0 if <= alpha
s_setpc_b64 s[72:73]
label_Activation_Gelu_VW4:
v_mul_f32 v8, 0x3d372713, v4                       // k1 * x
v_fma_f32 v8, v4, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v4, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v4, v8                               // x * (1 + tanh(...))
v_mul_f32 v4, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v8, 0x3d372713, v5                       // k1 * x
v_fma_f32 v8, v5, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v5, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v5, v8                               // x * (1 + tanh(...))
v_mul_f32 v5, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v8, 0x3d372713, v6                       // k1 * x
v_fma_f32 v8, v6, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v6, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v6, v8                               // x * (1 + tanh(...))
v_mul_f32 v6, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v8, 0x3d372713, v7                       // k1 * x
v_fma_f32 v8, v7, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v7, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v7, v8                               // x * (1 + tanh(...))
v_mul_f32 v7, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
s_setpc_b64 s[72:73]
label_Activation_Leakyrelu_VW4:
v_mul_f32 v8, s[sgpractivationAlpha], v4           // tmp = x * alpha
v_cmp_ge_f32 vcc, v4, 0.0                          // x >= 0 ?
v_cndmask_b32 v4, v8, v4, vcc                      // set x to tmp if < 0
v_mul_f32 v8, s[sgpractivationAlpha], v5           // tmp = x * alpha
v_cmp_ge_f32 vcc, v5, 0.0                          // x >= 0 ?
v_cndmask_b32 v5, v8, v5, vcc                      // set x to tmp if < 0
v_mul_f32 v8, s[sgpractivationAlpha], v6           // tmp = x * alpha
v_cmp_ge_f32 vcc, v6, 0.0                          // x >= 0 ?
v_cndmask_b32 v6, v8, v6, vcc                      // set x to tmp if < 0
v_mul_f32 v8, s[sgpractivationAlpha], v7           // tmp = x * alpha
v_cmp_ge_f32 vcc, v7, 0.0                          // x >= 0 ?
v_cndmask_b32 v7, v8, v7, vcc                      // set x to tmp if < 0
s_setpc_b64 s[72:73]
label_Activation_Relu_VW4:
v_max_f32 v4, v4, 0                                // x = max(0, x)
v_max_f32 v5, v5, 0                                // x = max(0, x)
v_max_f32 v6, v6, 0                                // x = max(0, x)
v_max_f32 v7, v7, 0                                // x = max(0, x)
s_setpc_b64 s[72:73]
label_Activation_Sigmoid_VW4:
v_mul_f32 v4, 0xbfb8aa3b, v4                       //  (fused -1.442695)
v_exp_f32 v4, v4                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v4, 1.0, v4                              // 1 + exp(-x)
v_rcp_f32 v4, v4                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v5, 0xbfb8aa3b, v5                       //  (fused -1.442695)
v_exp_f32 v5, v5                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v5, 1.0, v5                              // 1 + exp(-x)
v_rcp_f32 v5, v5                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v6, 0xbfb8aa3b, v6                       //  (fused -1.442695)
v_exp_f32 v6, v6                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v6, 1.0, v6                              // 1 + exp(-x)
v_rcp_f32 v6, v6                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v7, 0xbfb8aa3b, v7                       //  (fused -1.442695)
v_exp_f32 v7, v7                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v7, 1.0, v7                              // 1 + exp(-x)
v_rcp_f32 v7, v7                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
s_setpc_b64 s[72:73]
label_Activation_Tanh_VW4:
v_mul_f32 v4, s[sgpractivationAlpha], v4           // x * alpha
v_mul_f32 v4, 0x4038aa3b, v4                       //  (fused 2)
v_exp_f32 v4, v4                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v4, 1.0, v4                              // e^2x + 1
v_rcp_f32 v4, v4                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v4, -2.0, v4, 1.0                        // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v4, s[sgpractivationBeta], v4            // beta * tanh(x)
v_mul_f32 v5, s[sgpractivationAlpha], v5           // x * alpha
v_mul_f32 v5, 0x4038aa3b, v5                       //  (fused 2)
v_exp_f32 v5, v5                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v5, 1.0, v5                              // e^2x + 1
v_rcp_f32 v5, v5                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v5, -2.0, v5, 1.0                        // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v5, s[sgpractivationBeta], v5            // beta * tanh(x)
v_mul_f32 v6, s[sgpractivationAlpha], v6           // x * alpha
v_mul_f32 v6, 0x4038aa3b, v6                       //  (fused 2)
v_exp_f32 v6, v6                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v6, 1.0, v6                              // e^2x + 1
v_rcp_f32 v6, v6                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v6, -2.0, v6, 1.0                        // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v6, s[sgpractivationBeta], v6            // beta * tanh(x)
v_mul_f32 v7, s[sgpractivationAlpha], v7           // x * alpha
v_mul_f32 v7, 0x4038aa3b, v7                       //  (fused 2)
v_exp_f32 v7, v7                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v7, 1.0, v7                              // e^2x + 1
v_rcp_f32 v7, v7                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v7, -2.0, v7, 1.0                        // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v7, s[sgpractivationBeta], v7            // beta * tanh(x)
s_setpc_b64 s[72:73]
label_Activation_Geluscaling_VW4:
v_mul_f32 v8, 0x3d372713, v4                       // k1 * x
v_fma_f32 v8, v4, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v4, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v4, v8                               // x * (1 + tanh(...))
v_mul_f32 v8, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v4, s[sgpractivationAlpha], v8           // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v8, 0x3d372713, v5                       // k1 * x
v_fma_f32 v8, v5, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v5, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v5, v8                               // x * (1 + tanh(...))
v_mul_f32 v8, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v5, s[sgpractivationAlpha], v8           // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v8, 0x3d372713, v6                       // k1 * x
v_fma_f32 v8, v6, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v6, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v6, v8                               // x * (1 + tanh(...))
v_mul_f32 v8, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v6, s[sgpractivationAlpha], v8           // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v8, 0x3d372713, v7                       // k1 * x
v_fma_f32 v8, v7, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v7, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v7, v8                               // x * (1 + tanh(...))
v_mul_f32 v8, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v7, s[sgpractivationAlpha], v8           // 0.5 * x * (1 + tanh(...)) * scale
s_setpc_b64 s[72:73]
label_GW_End_1:
label_KernelEnd:
s_endpgm                                           // Kernel End
