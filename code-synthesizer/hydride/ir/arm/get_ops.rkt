;#============================== Hydride File =================================
;#
;# Part of the Hydride Compiler Infrastructure.
;# <Placeholder for license information>
;#
;#=============================================================================
;#
;# Do NOT modify this file. It is automatically generated.
;#
;#=============================================================================

#lang rosette
(require rosette/lib/synthax)
(require rosette/lib/angelic)
(require racket/pretty)
(require rosette/lib/destruct)

(require hydride/utils/bvops)
(require hydride/utils/misc)


(require hydride/ir/hydride/definition)
(require hydride/ir/arm/definition)


(provide (all-defined-out))
;; ================================================================================
;;                                DSL Get Ops
;; ================================================================================
(define (arm:get-bv-ops prog)
 (destruct prog
	[(reg id) '()]
	[(lit v) '()]
		[(vector-two-input-swizzle_dsl v0 v1 num_2 prec_i_o num_4 num_5 num_6 num_7 num_8)
		(remove-duplicates (append (list  'if) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))
	]
		[(interleave-vectors_dsl v0 v1 size_i_o prec_i_o)
		(remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))
	]
		[(interleave-vector_dsl v0 size_i_o prec_i_o)
		(remove-duplicates (append (list  'cond) (arm:get-bv-ops v0)))
	]
		[(deinterleave-vector_dsl v0 size_i_o prec_i_o)
		(remove-duplicates (append (list  'cond) (arm:get-bv-ops v0)))
	]
		[(llvm_shuffle_vectors_dsl v0 v1 num_2 prec_i_o v4 num_5)
		(remove-duplicates (append (list  'bitvector->integer 'if) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v4)))
	]
		[(llvm-vect-add_dsl v0 v1 num_2 prec_i_o)
		(remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))
	]
		[(llvm-vect-sub_dsl v0 v1 num_2 prec_i_o)
		(remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))
	]
		[(llvm-vect-mul_dsl v0 v1 num_2 prec_i_o)
		(remove-duplicates (append (list  'bvmul) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))
	]
		[(llvm-vect-sdiv_dsl v0 v1 num_2 prec_i_o)
		(remove-duplicates (append (list  'bvsdiv) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))
	]
		[(llvm-vect-udiv_dsl v0 v1 num_2 prec_i_o)
		(remove-duplicates (append (list  'bvudiv) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))
	]
		[(llvm-zext_dsl v0 size_i size_o)
		(remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))
	]
		[(scalar_splat_dsl v0 size_i size_o)
		(remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))
	]
	[(vpmin_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11 num_12 prec_i num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpmin_u32
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpminq_s16
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpminq_u32
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpmin_s8
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpmin_s16
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpminq_s32
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpmin_s32
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpmin_u16
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpmin_u8
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpminq_u8
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpminq_s8
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpminq_u16
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vpmin_u32")]
)

	]
	[(vrshrn_n_s64_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_o num_9 num_10 num_11 num_12 num_13 num_14 prec_i num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? prec_i 64) (equal? num_16 2)); vrshrn_n_s64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? prec_i 64) (equal? num_16 2)); vrshrn_n_u64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vrshrn_n_s64")]
)

	]
	[(vpaddq_u8_dsl vc_0 v1 v2 size_i prec_i_o num_5 num_6 num_7 num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i 128) (equal? prec_i_o 8) (equal? num_5 0) (equal? num_6 16) (equal? num_7 8) (equal? num_8 -1) (equal? num_9 8) (equal? num_10 4) (equal? num_11 8)); vpaddq_u8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_i_o 64) (equal? num_5 0) (equal? num_6 128) (equal? num_7 64) (equal? num_8 -1) (equal? num_9 64) (equal? num_10 32) (equal? num_11 64)); vpaddq_u64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_i_o 32) (equal? num_5 0) (equal? num_6 64) (equal? num_7 32) (equal? num_8 -1) (equal? num_9 32) (equal? num_10 16) (equal? num_11 32)); vpaddq_s32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_i_o 32) (equal? num_5 0) (equal? num_6 64) (equal? num_7 32) (equal? num_8 -1) (equal? num_9 32) (equal? num_10 16) (equal? num_11 32)); vpadd_s32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_i_o 8) (equal? num_5 0) (equal? num_6 16) (equal? num_7 8) (equal? num_8 -1) (equal? num_9 8) (equal? num_10 4) (equal? num_11 8)); vpadd_u8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_i_o 16) (equal? num_5 0) (equal? num_6 32) (equal? num_7 16) (equal? num_8 -1) (equal? num_9 16) (equal? num_10 8) (equal? num_11 16)); vpadd_s16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_i_o 64) (equal? num_5 0) (equal? num_6 128) (equal? num_7 64) (equal? num_8 -1) (equal? num_9 64) (equal? num_10 32) (equal? num_11 64)); vpaddq_s64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_i_o 8) (equal? num_5 0) (equal? num_6 16) (equal? num_7 8) (equal? num_8 -1) (equal? num_9 8) (equal? num_10 4) (equal? num_11 8)); vpaddq_s8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_i_o 16) (equal? num_5 0) (equal? num_6 32) (equal? num_7 16) (equal? num_8 -1) (equal? num_9 16) (equal? num_10 8) (equal? num_11 16)); vpaddq_u16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_i_o 16) (equal? num_5 0) (equal? num_6 32) (equal? num_7 16) (equal? num_8 -1) (equal? num_9 16) (equal? num_10 8) (equal? num_11 16)); vpadd_u16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_i_o 32) (equal? num_5 0) (equal? num_6 64) (equal? num_7 32) (equal? num_8 -1) (equal? num_9 32) (equal? num_10 16) (equal? num_11 32)); vpadd_u32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_i_o 16) (equal? num_5 0) (equal? num_6 32) (equal? num_7 16) (equal? num_8 -1) (equal? num_9 16) (equal? num_10 8) (equal? num_11 16)); vpaddq_s16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_i_o 32) (equal? num_5 0) (equal? num_6 64) (equal? num_7 32) (equal? num_8 -1) (equal? num_9 32) (equal? num_10 16) (equal? num_11 32)); vpaddq_u32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_i_o 8) (equal? num_5 0) (equal? num_6 16) (equal? num_7 8) (equal? num_8 -1) (equal? num_9 8) (equal? num_10 4) (equal? num_11 8)); vpadd_s8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vpaddq_u8")]
)

	]
	[(vqdmlsl_n_s32_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i num_9 num_10 prec_o num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 32) (equal? num_9 1) (equal? num_10 64) (equal? prec_o 64) (equal? num_12 1) (equal? num_13 2) (equal? num_14 1)); vqdmlsl_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlsl_n_s32")]
)

	]
	[(vqdmlal_high_s16_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 1) (equal? num_11 16) (equal? num_12 1) (equal? num_13 2)); vqdmlal_high_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1) (equal? num_10 1) (equal? num_11 32) (equal? num_12 1) (equal? num_13 2)); vqdmlal_high_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlal_high_s16")]
)

	]
	[(vget_high_u64_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o num_6 num_7)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 64)); vget_high_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vget_high_u64")]
)

	]
	[(vabal_high_u32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 32) (equal? num_14 0) (equal? num_15 64) (equal? num_16 2)); vabal_high_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 64) (equal? num_16 2)); vabal_high_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabal_high_u32")]
)

	]
	[(vqdmull_s16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 2) (equal? num_10 1) (equal? num_11 1)); vqdmull_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 32) (equal? num_4 32) (equal? num_5 0) (equal? num_6 32) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 2) (equal? num_10 1) (equal? num_11 1)); vqdmulls_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 16) (equal? num_4 16) (equal? num_5 0) (equal? num_6 16) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 2) (equal? num_10 1) (equal? num_11 1)); vqdmullh_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 2) (equal? num_10 1) (equal? num_11 1)); vqdmull_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmull_s16")]
)

	]
	[(vqrshrnd_n_u64_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_o num_9 num_10 num_11 num_12 num_13 num_14 prec_i num_16)
		(cond 
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? prec_i 64) (equal? num_16 2)); vqrshrnd_n_u64
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? prec_i 64) (equal? num_16 2)); vqrshrn_n_u64
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrshrnd_n_u64")]
)

	]
	[(vqmovn_u64_dsl v0 size_i_o num_2 num_3 num_4 prec_o num_6 num_7 num_8 prec_i num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 32) (equal? num_6 0) (equal? num_7 0) (equal? num_8 128) (equal? prec_i 64) (equal? num_10 2)); vqmovn_u64
 
  (remove-duplicates (append (list  'bvusat 'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32) (equal? prec_i 16) (equal? num_10 2)); vqmovn_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 16) (equal? num_6 0) (equal? num_7 0) (equal? num_8 64) (equal? prec_i 32) (equal? num_10 2)); vqmovn_u32
 
  (remove-duplicates (append (list  'bvusat 'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128) (equal? prec_i 64) (equal? num_10 2)); vqmovn_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 32) (equal? num_2 32) (equal? num_3 0) (equal? num_4 32) (equal? prec_o 32) (equal? num_6 0) (equal? num_7 0) (equal? num_8 128) (equal? prec_i 64) (equal? num_10 2)); vqmovnd_u64
 
  (remove-duplicates (append (list  'bvusat 'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 8) (equal? num_6 0) (equal? num_7 0) (equal? num_8 32) (equal? prec_i 16) (equal? num_10 2)); vqmovn_u16
 
  (remove-duplicates (append (list  'bvusat 'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 16) (equal? num_6 0) (equal? num_7 1) (equal? num_8 64) (equal? prec_i 32) (equal? num_10 2)); vqmovun_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 32) (equal? num_2 32) (equal? num_3 0) (equal? num_4 32) (equal? prec_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128) (equal? prec_i 64) (equal? num_10 2)); vqmovnd_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 32) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128) (equal? prec_i 64) (equal? num_10 2)); vqmovun_s64
 
  (remove-duplicates (append (list  'bvusat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 8) (equal? num_6 0) (equal? num_7 1) (equal? num_8 32) (equal? prec_i 16) (equal? num_10 2)); vqmovun_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 16) (equal? num_2 16) (equal? num_3 0) (equal? num_4 16) (equal? prec_o 16) (equal? num_6 0) (equal? num_7 0) (equal? num_8 64) (equal? prec_i 32) (equal? num_10 2)); vqmovns_u32
 
  (remove-duplicates (append (list  'bvusat 'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 8) (equal? num_2 8) (equal? num_3 0) (equal? num_4 8) (equal? prec_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32) (equal? prec_i 16) (equal? num_10 2)); vqmovnh_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64) (equal? prec_i 32) (equal? num_10 2)); vqmovn_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 16) (equal? num_2 16) (equal? num_3 0) (equal? num_4 16) (equal? prec_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64) (equal? prec_i 32) (equal? num_10 2)); vqmovns_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 8) (equal? num_2 8) (equal? num_3 0) (equal? num_4 8) (equal? prec_o 8) (equal? num_6 0) (equal? num_7 1) (equal? num_8 32) (equal? prec_i 16) (equal? num_10 2)); vqmovunh_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 32) (equal? num_2 32) (equal? num_3 0) (equal? num_4 32) (equal? prec_o 32) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128) (equal? prec_i 64) (equal? num_10 2)); vqmovund_s64
 
  (remove-duplicates (append (list  'bvusat 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 8) (equal? num_2 8) (equal? num_3 0) (equal? num_4 8) (equal? prec_o 8) (equal? num_6 0) (equal? num_7 0) (equal? num_8 32) (equal? prec_i 16) (equal? num_10 2)); vqmovnh_u16
 
  (remove-duplicates (append (list  'bvusat 'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 16) (equal? num_2 16) (equal? num_3 0) (equal? num_4 16) (equal? prec_o 16) (equal? num_6 0) (equal? num_7 1) (equal? num_8 64) (equal? prec_i 32) (equal? num_10 2)); vqmovuns_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vqmovn_u64")]
)

	]
	[(vqneg_s32_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o num_6 num_7 num_8)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64)); vqneg_s32
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 16) (equal? num_2 16) (equal? num_3 0) (equal? num_4 16) (equal? prec_i_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32)); vqnegh_s16
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 8) (equal? num_2 8) (equal? num_3 0) (equal? num_4 8) (equal? prec_i_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 16)); vqnegb_s8
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 64) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128)); vqnegq_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32)); vqnegq_s16
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 16)); vqnegq_s8
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128)); vqnegd_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 32) (equal? num_2 32) (equal? num_3 0) (equal? num_4 32) (equal? prec_i_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64)); vqnegs_s32
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32)); vqneg_s16
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128)); vqneg_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64)); vqnegq_s32
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 16)); vqneg_s8
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvssat) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vqneg_s32")]
)

	]
	[(vqdmlsl_s32_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i prec_o num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlsl_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlsl_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_i 16) (equal? prec_o 32) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlslh_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_i 32) (equal? prec_o 64) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlsls_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlsl_s32")]
)

	]
	[(vaba_u8_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vaba_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vaba_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vaba_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vabaq_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vabaq_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vabaq_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vabaq_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vaba_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vaba_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vabaq_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vabaq_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vaba_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vaba_u8")]
)

	]
	[(vmlal_n_u32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i num_8 num_9 prec_o num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? num_8 0) (equal? num_9 64) (equal? prec_o 64) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 0)); vmlal_n_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? num_8 1) (equal? num_9 64) (equal? prec_o 64) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 1)); vmlal_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlal_n_u32")]
)

	]
	[(vpadalq_u8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i prec_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16 num_17 num_18)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 0) (equal? num_17 16) (equal? num_18 2)); vpadalq_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 1) (equal? num_17 64) (equal? num_18 2)); vpadal_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 1) (equal? num_17 32) (equal? num_18 2)); vpadalq_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 0) (equal? num_17 64) (equal? num_18 2)); vpadal_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 0) (equal? num_17 32) (equal? num_18 2)); vpadal_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 1) (equal? num_17 16) (equal? num_18 2)); vpadalq_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 0) (equal? num_17 32) (equal? num_18 2)); vpadalq_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 1) (equal? num_17 32) (equal? num_18 2)); vpadal_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 1) (equal? num_17 64) (equal? num_18 2)); vpadalq_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 1) (equal? num_17 16) (equal? num_18 2)); vpadal_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 0) (equal? num_17 16) (equal? num_18 2)); vpadal_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 0) (equal? num_17 64) (equal? num_18 2)); vpadalq_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vpadalq_u8")]
)

	]
	[(vtrn2_s8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn2_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn2q_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn2_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn2q_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 2)); vtrn2q_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn2q_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn2q_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn2_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 2)); vtrn2q_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn2_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn2q_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn2q_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn2_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn2_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vtrn2_s8")]
)

	]
	[(vmull_n_s32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i num_7 num_8 prec_o num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? num_7 1) (equal? num_8 64) (equal? prec_o 64) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1)); vmull_n_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? num_7 0) (equal? num_8 64) (equal? prec_o 64) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0)); vmull_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmull_n_s32")]
)

	]
	[(vqshlq_s32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1)); vqshlq_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 1)); vqshlb_u8
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 1) (equal? num_9 16) (equal? num_10 1)); vqshlq_s8
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 1) (equal? num_9 16) (equal? num_10 1)); vqshlb_s8
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 1)); vqshl_u8
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 1) (equal? num_9 16) (equal? num_10 1)); vqshl_s8
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 1)); vqshlq_u32
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1)); vqshls_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1) (equal? num_8 1) (equal? num_9 128) (equal? num_10 1)); vqshl_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 128) (equal? num_10 1)); vqshl_u64
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1)); vqshlh_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 1)); vqshls_u32
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1)); vqshl_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 1)); vqshlh_u16
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1) (equal? num_8 1) (equal? num_9 128) (equal? num_10 1)); vqshld_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 128) (equal? num_10 1)); vqshld_u64
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 1)); vqshlq_u16
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 1) (equal? num_8 1) (equal? num_9 128) (equal? num_10 1)); vqshlq_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 128) (equal? num_10 1)); vqshlq_u64
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1)); vqshlq_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 1)); vqshl_u16
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 1)); vqshl_u32
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 1)); vqshlq_u8
 
  (remove-duplicates (append (list  'bvshl 'bvusat 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1)); vqshl_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vqshlq_s32")]
)

	]
	[(vqabsq_s64_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o num_6 num_7 num_8)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 64) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128)); vqabsq_s64
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64)); vqabs_s32
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 32) (equal? num_2 32) (equal? num_3 0) (equal? num_4 32) (equal? prec_i_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64)); vqabss_s32
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128)); vqabsd_s64
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32)); vqabsq_s16
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 16)); vqabs_s8
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 16) (equal? num_2 16) (equal? num_3 0) (equal? num_4 16) (equal? prec_i_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32)); vqabsh_s16
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 16)); vqabsq_s8
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 16) (equal? num_6 1) (equal? num_7 1) (equal? num_8 32)); vqabs_s16
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 32) (equal? num_6 1) (equal? num_7 1) (equal? num_8 64)); vqabsq_s32
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 8) (equal? num_2 8) (equal? num_3 0) (equal? num_4 8) (equal? prec_i_o 8) (equal? num_6 1) (equal? num_7 1) (equal? num_8 16)); vqabsb_s8
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 1) (equal? num_7 1) (equal? num_8 128)); vqabs_s64
 
  (remove-duplicates (append (list  'bvssat 'abs 'sign-extend 'bitvector->integer 'integer->bitvector) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vqabsq_s64")]
)

	]
	[(vmlsl_high_n_s32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 1) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vmlsl_high_n_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0) (equal? num_13 32) (equal? num_14 2)); vmlsl_high_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsl_high_n_s32")]
)

	]
	[(vclez_s8_dsl vc_0 vc_1 vc_2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vclez_s8
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vcgtzq_s16
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vcgtz_s8
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vclez_s16
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vclezq_s64
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vclezq_s32
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vcgtzq_s8
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vclez_s64
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vclez_s32
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vcgtzq_s32
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcgtz_s64
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcgtzd_s64
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vcgtzq_s64
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vclezq_s8
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vcgtz_s16
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vclezq_s16
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vcgtz_s32
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vclezd_s64
 
  (remove-duplicates (append (list  'bvsle 'if) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vclez_s8")]
)

	]
	[(vqdmull_n_s16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i num_8 num_9 prec_o num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? num_8 1) (equal? num_9 32) (equal? prec_o 32) (equal? num_11 2) (equal? num_12 1)); vqdmull_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmull_n_s16")]
)

	]
	[(vsubhn_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 num_8 prec_i num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 16) (equal? num_8 -1) (equal? prec_i 32) (equal? num_10 2)); vsubhn_u32
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 32) (equal? num_8 -1) (equal? prec_i 64) (equal? num_10 2)); vsubhn_s64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 16) (equal? num_8 -1) (equal? prec_i 32) (equal? num_10 2)); vsubhn_s32
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 8) (equal? num_8 -1) (equal? prec_i 16) (equal? num_10 2)); vsubhn_u16
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 8) (equal? num_8 -1) (equal? prec_i 16) (equal? num_10 2)); vsubhn_s16
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 32) (equal? num_8 -1) (equal? prec_i 64) (equal? num_10 2)); vsubhn_u64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsubhn_u32")]
)

	]
	[(vmla_n_u32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmla_n_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlaq_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlaq_n_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmla_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmla_n_u32")]
)

	]
	[(vmls_n_s16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmls_n_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmls_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlsq_n_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlsq_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmls_n_s16")]
)

	]
	[(vmlsl_n_s32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i num_8 num_9 prec_o num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? num_8 1) (equal? num_9 64) (equal? prec_o 64) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 1)); vmlsl_n_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? num_8 0) (equal? num_9 64) (equal? prec_o 64) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 0)); vmlsl_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsl_n_s32")]
)

	]
	[(vmlsq_n_u32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlsq_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmls_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmls_n_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlsq_n_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsq_n_u32")]
)

	]
	[(vqdmlal_n_s32_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i num_9 num_10 prec_o num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 32) (equal? num_9 1) (equal? num_10 64) (equal? prec_o 64) (equal? num_12 1) (equal? num_13 2) (equal? num_14 1)); vqdmlal_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlal_n_s32")]
)

	]
	[(vaddw_u8_dsl v0 v1 size_i_o num_3 num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 8) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0) (equal? num_13 32) (equal? num_14 2)); vaddw_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 32) (equal? prec_i_o 64) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 128) (equal? num_14 2)); vaddw_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 16) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 64) (equal? num_12 1) (equal? num_13 64) (equal? num_14 2)); vaddw_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 32) (equal? prec_i_o 64) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 128) (equal? num_12 1) (equal? num_13 128) (equal? num_14 2)); vaddw_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 8) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 32) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vaddw_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 16) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0) (equal? num_13 64) (equal? num_14 2)); vaddw_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vaddw_u8")]
)

	]
	[(vrsra_n_u64_dsl vc_0 vc_1 v2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 0)); vrsra_n_u64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 0)); vrsrad_n_u64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 0)); vrsraq_n_u64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrsra_n_u64")]
)

	]
	[(vqshrn_n_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 prec_i num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vqshrn_n_u32
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vqshrns_n_u32
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vqshrnh_n_u16
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vqshrn_n_u16
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vqshrn_n_u32")]
)

	]
	[(vqshrnd_n_u64_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 prec_i num_9)
		(cond 
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_o 32) (equal? num_7 0) (equal? prec_i 64) (equal? num_9 2)); vqshrnd_n_u64
 
  (remove-duplicates (append (list  'bvusat 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? prec_i 64) (equal? num_9 2)); vqshrn_n_u64
 
  (remove-duplicates (append (list  'bvusat 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vqshrnd_n_u64")]
)

	]
	[(vshl_s8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 16) (equal? num_10 1)); vshl_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 1) (equal? num_9 128) (equal? num_10 1)); vshl_s64
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 1) (equal? num_9 128) (equal? num_10 1)); vshld_s64
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 16) (equal? num_10 1)); vshlq_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 128) (equal? num_10 1)); vshlq_u64
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1)); vshlq_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 1)); vshlq_u32
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 128) (equal? num_10 1)); vshld_u64
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1)); vshl_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 1)); vshlq_u8
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 1)); vshlq_u16
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 1)); vshl_u16
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 128) (equal? num_10 1)); vshl_u64
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1)); vshlq_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 1)); vshl_u8
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 1)); vshl_u32
 
  (remove-duplicates (append (list  'bvshl 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 1) (equal? num_9 128) (equal? num_10 1)); vshlq_s64
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1)); vshl_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vshl_s8")]
)

	]
	[(vpaddlq_s32_dsl vc_0 v1 size_i_o num_3 num_4 num_5 prec_i prec_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16 num_17 num_18)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 1) (equal? num_17 64) (equal? num_18 2)); vpaddlq_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 0) (equal? num_17 64) (equal? num_18 2)); vpaddlq_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 1) (equal? num_17 32) (equal? num_18 2)); vpaddl_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 0) (equal? num_17 64) (equal? num_18 2)); vpaddl_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 0) (equal? num_17 16) (equal? num_18 2)); vpaddl_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 16) (equal? num_16 1) (equal? num_17 64) (equal? num_18 2)); vpaddl_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 0) (equal? num_17 32) (equal? num_18 2)); vpaddlq_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 1) (equal? num_17 16) (equal? num_18 2)); vpaddl_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 0) (equal? num_17 16) (equal? num_18 2)); vpaddlq_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 0) (equal? num_17 32) (equal? num_18 2)); vpaddl_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 4) (equal? num_16 1) (equal? num_17 16) (equal? num_18 2)); vpaddlq_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 8) (equal? num_16 1) (equal? num_17 32) (equal? num_18 2)); vpaddlq_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vpaddlq_s32")]
)

	]
	[(vshrn_n_s32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 prec_i num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vshrn_n_s32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vshrn_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vshrn_n_s16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vshrn_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vshrn_n_s32")]
)

	]
	[(vshrn_n_u64_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 prec_i num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? prec_i 64) (equal? num_9 2)); vshrn_n_u64
 
  (remove-duplicates (append (list  'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? prec_i 64) (equal? num_9 2)); vshrn_n_s64
 
  (remove-duplicates (append (list  'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vshrn_n_u64")]
)

	]
	[(vqshrn_n_s16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 prec_i num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vqshrn_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vqshrn_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vqshruns_n_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_o 8) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vqshrnh_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vqshrun_n_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_o 16) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 32) (equal? num_11 2)); vqshrns_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vqshrun_n_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? prec_i 16) (equal? num_11 2)); vqshrunh_n_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vqshrn_n_s16")]
)

	]
	[(vceqzq_s8_dsl vc_0 v1 vc_2 vc_3 size_i_o num_5 num_6 num_7 prec_i_o)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8)); vceqzq_s8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceqzd_s64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8)); vceqz_u8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16)); vceqzq_u16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8)); vceqzq_u8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceqz_u64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32)); vceqz_u32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64)); vceqzq_s64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceqz_s64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64)); vceqzq_u64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32)); vceqz_s32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16)); vceqz_u16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceqzd_u64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32)); vceqzq_s32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32)); vceqzq_u32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8)); vceqz_s8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16)); vceqz_s16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16)); vceqzq_s16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vceqzq_s8")]
)

	]
	[(vmla_n_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmla_n_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlaq_n_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmlaq_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0)); vmla_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmla_n_u16")]
)

	]
	[(vqshlu_n_s64_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 128) (equal? num_9 0) (equal? num_10 1)); vqshlu_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'bvusat 'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 128) (equal? num_9 0) (equal? num_10 1)); vqshluq_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'bvusat 'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 128) (equal? num_9 0) (equal? num_10 1)); vqshlud_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'bvusat 'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vqshlu_n_s64")]
)

	]
	[(vabdl_high_u8_dsl vc_0 v1 v2 size_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 8) (equal? num_14 0) (equal? num_15 16) (equal? num_16 2)); vabdl_high_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 16) (equal? num_16 2)); vabdl_high_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabdl_high_u8")]
)

	]
	[(vmlal_high_n_u32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 0) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0) (equal? num_13 32) (equal? num_14 2)); vmlal_high_n_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 1) (equal? num_9 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vmlal_high_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlal_high_n_u32")]
)

	]
	[(vmovn_s16_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o num_6)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8) (equal? num_6 2)); vmovn_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 32) (equal? num_6 2)); vmovn_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8) (equal? num_6 2)); vmovn_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 16) (equal? num_6 2)); vmovn_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 16) (equal? num_6 2)); vmovn_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 32) (equal? num_6 2)); vmovn_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vmovn_s16")]
)

	]
	[(vshll_n_s8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i prec_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 1) (equal? num_11 64)); vshll_n_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 0) (equal? num_11 64)); vshll_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 1) (equal? num_11 64)); vshll_n_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 1) (equal? num_11 64)); vshll_n_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 0) (equal? num_11 64)); vshll_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 0) (equal? num_11 64)); vshll_n_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vshll_n_s8")]
)

	]
	[(vaddhn_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 num_8 prec_i num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 16) (equal? num_8 -1) (equal? prec_i 32) (equal? num_10 2)); vaddhn_u32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 32) (equal? num_8 -1) (equal? prec_i 64) (equal? num_10 2)); vaddhn_u64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 8) (equal? num_8 -1) (equal? prec_i 16) (equal? num_10 2)); vaddhn_u16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 16) (equal? num_8 -1) (equal? prec_i 32) (equal? num_10 2)); vaddhn_s32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 8) (equal? num_8 -1) (equal? prec_i 16) (equal? num_10 2)); vaddhn_s16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 32) (equal? num_8 -1) (equal? prec_i 64) (equal? num_10 2)); vaddhn_s64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vaddhn_u32")]
)

	]
	[(vqdmlal_high_n_s16_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1) (equal? num_12 1) (equal? num_13 16) (equal? num_14 2)); vqdmlal_high_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlal_high_n_s16")]
)

	]
	[(vmovl_s32_dsl v0 size_i_o num_2 num_3 num_4 prec_i prec_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 2) (equal? num_9 1) (equal? num_10 64)); vmovl_s32
 
  (remove-duplicates (append (list  'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 2) (equal? num_9 0) (equal? num_10 32)); vmovl_u16
 
  (remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 2) (equal? num_9 1) (equal? num_10 32)); vmovl_s16
 
  (remove-duplicates (append (list  'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 2) (equal? num_9 1) (equal? num_10 16)); vmovl_s8
 
  (remove-duplicates (append (list  'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 2) (equal? num_9 0) (equal? num_10 16)); vmovl_u8
 
  (remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 2) (equal? num_9 0) (equal? num_10 64)); vmovl_u32
 
  (remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vmovl_s32")]
)

	]
	[(vtrn1_s32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn1_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn1_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn1_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn1q_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 2)); vtrn1q_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 2)); vtrn1q_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn1q_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn1q_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn1q_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn1_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vtrn1_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn1q_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vtrn1q_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vtrn1_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vtrn1_s32")]
)

	]
	[(vmul_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 0)); vmul_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 0)); vmulq_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 0)); vmul_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 0)); vmul_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 0)); vmulq_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 0)); vmulq_s8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 0)); vmulq_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 0)); vmulq_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 0)); vmul_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 0)); vmul_s8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 0)); vmul_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 0)); vmulq_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmul_u32")]
)

	]
	[(vmlal_high_n_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0) (equal? num_13 16) (equal? num_14 2)); vmlal_high_n_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 1) (equal? num_13 16) (equal? num_14 2)); vmlal_high_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlal_high_n_u16")]
)

	]
	[(vrshrq_n_u16_dsl vc_0 vc_1 vc_2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrshrq_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrshr_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrshr_n_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrshrq_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrshrq_n_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrshr_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrshrq_n_u16")]
)

	]
	[(vcltz_s32_dsl vc_0 vc_1 vc_2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vcltz_s32
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vcltz_s16
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vcgezq_s8
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vcltzq_s32
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vcgez_s32
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcltzd_s64
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vcltz_s8
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vcgez_s16
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vcltzq_s64
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcltz_s64
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vcltzq_s16
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vcgezq_s16
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vcgezq_s32
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vcgez_s8
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vcgezq_s64
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vcltzq_s8
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcgez_s64
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcgezd_s64
 
  (remove-duplicates (append (list  'bvslt 'if) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vcltz_s32")]
)

	]
	[(vqdmlsl_high_n_s16_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1) (equal? num_12 1) (equal? num_13 16) (equal? num_14 2)); vqdmlsl_high_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlsl_high_n_s16")]
)

	]
	[(vrsra_n_s32_dsl vc_0 vc_1 v2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrsra_n_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrsraq_n_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrsra_n_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrsraq_n_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrsraq_n_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrsra_n_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrsra_n_s32")]
)

	]
	[(vabal_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 0) (equal? num_14 32) (equal? num_15 0) (equal? num_16 32)); vabal_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 1) (equal? num_14 32) (equal? num_15 1) (equal? num_16 32)); vabal_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabal_u16")]
)

	]
	[(vmull_high_n_s16_dsl v0 v1 size_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 1) (equal? num_8 32) (equal? num_9 0) (equal? num_10 1) (equal? num_11 16) (equal? num_12 2)); vmull_high_n_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 32) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 2)); vmull_high_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmull_high_n_s16")]
)

	]
	[(vget_low_u8_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o num_6)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0)); vget_low_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vget_low_u8")]
)

	]
	[(vsraq_n_u64_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vsraq_n_u64
 
  (remove-duplicates (append (list  'bvadd 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vsraq_n_u64")]
)

	]
	[(vmlal_high_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 16) (equal? num_13 0) (equal? num_14 2)); vmlal_high_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64) (equal? num_12 32) (equal? num_13 1) (equal? num_14 2)); vmlal_high_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 32) (equal? num_13 0) (equal? num_14 2)); vmlal_high_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 8) (equal? num_13 0) (equal? num_14 2)); vmlal_high_u8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 32) (equal? num_12 16) (equal? num_13 1) (equal? num_14 2)); vmlal_high_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 16) (equal? num_12 8) (equal? num_13 1) (equal? num_14 2)); vmlal_high_s8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlal_high_u16")]
)

	]
	[(vmull_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i prec_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmull_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 1) (equal? num_11 16) (equal? num_12 1)); vmull_s8
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmull_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 1) (equal? num_11 64) (equal? num_12 1)); vmull_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 1) (equal? num_11 32) (equal? num_12 1)); vmull_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmull_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmull_u32")]
)

	]
	[(vrsra_n_u8_dsl vc_0 vc_1 v2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrsra_n_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrsraq_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrsra_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrsraq_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrsra_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 64)); vrsraq_n_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrsra_n_u8")]
)

	]
	[(vmul_n_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 64) (equal? num_9 0) (equal? num_10 0)); vmul_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 64) (equal? num_9 0) (equal? num_10 0)); vmulq_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 64) (equal? num_9 0) (equal? num_10 0)); vmul_n_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 64) (equal? num_9 0) (equal? num_10 0)); vmulq_n_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmul_n_u32")]
)

	]
	[(vqrshrun_n_s64_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_o num_9 num_10 num_11 num_12 num_13 num_14 prec_i num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? prec_i 64) (equal? num_16 2)); vqrshrun_n_s64
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? prec_i 64) (equal? num_16 2)); vqrshrund_n_s64
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 1) (equal? num_13 -1) (equal? num_14 1) (equal? prec_i 64) (equal? num_16 2)); vqrshrn_n_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 1) (equal? num_13 -1) (equal? num_14 1) (equal? prec_i 64) (equal? num_16 2)); vqrshrnd_n_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrshrun_n_s64")]
)

	]
	[(vmlal_n_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i num_8 num_9 prec_o num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? num_8 0) (equal? num_9 32) (equal? prec_o 32) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 0)); vmlal_n_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? num_8 1) (equal? num_9 32) (equal? prec_o 32) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 1)); vmlal_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlal_n_u16")]
)

	]
	[(vrsubhn_u16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 prec_i num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 8) (equal? num_8 8) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 16) (equal? num_12 2)); vrsubhn_u16
 
  (remove-duplicates (append (list  'bvadd 'bvsub) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 32) (equal? num_8 32) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 64) (equal? num_12 2)); vrsubhn_s64
 
  (remove-duplicates (append (list  'bvadd 'bvsub) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 16) (equal? num_8 16) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 32) (equal? num_12 2)); vrsubhn_s32
 
  (remove-duplicates (append (list  'bvadd 'bvsub) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 16) (equal? num_8 16) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 32) (equal? num_12 2)); vrsubhn_u32
 
  (remove-duplicates (append (list  'bvadd 'bvsub) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 32) (equal? num_8 32) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 64) (equal? num_12 2)); vrsubhn_u64
 
  (remove-duplicates (append (list  'bvadd 'bvsub) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 8) (equal? num_8 8) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 16) (equal? num_12 2)); vrsubhn_s16
 
  (remove-duplicates (append (list  'bvadd 'bvsub) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vrsubhn_u16")]
)

	]
	[(vaddw_high_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 128) (equal? num_11 32) (equal? num_12 2) (equal? num_13 0) (equal? num_14 128)); vaddw_high_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 8) (equal? num_12 2) (equal? num_13 0) (equal? num_14 32)); vaddw_high_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 8) (equal? num_12 2) (equal? num_13 1) (equal? num_14 32)); vaddw_high_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 128) (equal? num_11 32) (equal? num_12 2) (equal? num_13 1) (equal? num_14 128)); vaddw_high_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 16) (equal? num_12 2) (equal? num_13 0) (equal? num_14 64)); vaddw_high_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 16) (equal? num_12 2) (equal? num_13 1) (equal? num_14 64)); vaddw_high_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vaddw_high_u32")]
)

	]
	[(vrshld_s64_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13 num_14 num_15)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vrshld_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vrshlq_s16
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshl_s32
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vrshld_u64
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshl_u32
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vrshlq_s8
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vrshlq_u8
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vrshl_s8
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vrshl_u64
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vrshl_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vrshl_u16
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshlq_s32
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vrshl_u8
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vrshlq_u16
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshlq_u32
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vrshlq_u64
 
  (remove-duplicates (append (list  'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vrshlq_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vrshl_s16
 
  (remove-duplicates (append (list  'bvneg 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vrshld_s64")]
)

	]
	[(vqdmull_n_s32_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i num_8 num_9 prec_o num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? num_8 1) (equal? num_9 64) (equal? prec_o 64) (equal? num_11 2) (equal? num_12 1)); vqdmull_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmull_n_s32")]
)

	]
	[(vraddhn_u64_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 prec_i num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 32) (equal? num_8 32) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 64) (equal? num_12 2)); vraddhn_u64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 8) (equal? num_8 8) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 16) (equal? num_12 2)); vraddhn_u16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 8) (equal? num_8 8) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 16) (equal? num_12 2)); vraddhn_s16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 16) (equal? num_8 16) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 32) (equal? num_12 2)); vraddhn_u32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 16) (equal? num_8 16) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 32) (equal? num_12 2)); vraddhn_s32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_o 32) (equal? num_8 32) (equal? num_9 -1) (equal? num_10 -1) (equal? prec_i 64) (equal? num_12 2)); vraddhn_s64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vraddhn_u64")]
)

	]
	[(vshr_n_u64_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vshr_n_u64
 
  (remove-duplicates (append (list  'bvadd 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vshrq_n_u64
 
  (remove-duplicates (append (list  'bvadd 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vsra_n_u64
 
  (remove-duplicates (append (list  'bvadd 'bvlshr) (arm:get-bv-ops vc_0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vshrd_n_u64
 
  (remove-duplicates (append (list  'bvadd 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vsrad_n_u64
 
  (remove-duplicates (append (list  'bvadd 'bvlshr) (arm:get-bv-ops vc_0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vshr_n_u64")]
)

	]
	[(vabs_s32_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o num_6 num_7 num_8)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 32) (equal? num_6 0) (equal? num_7 1) (equal? num_8 64)); vabs_s32
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 16) (equal? num_6 0) (equal? num_7 1) (equal? num_8 32)); vabs_s16
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8) (equal? num_6 0) (equal? num_7 1) (equal? num_8 16)); vabs_s8
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 32) (equal? num_6 0) (equal? num_7 1) (equal? num_8 64)); vabsq_s32
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128)); vabs_s64
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8) (equal? num_6 0) (equal? num_7 1) (equal? num_8 16)); vabsq_s8
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 16) (equal? num_6 0) (equal? num_7 1) (equal? num_8 32)); vabsq_s16
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128)); vabsd_s64
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128)); vabsq_s64
 
  (remove-duplicates (append (list  'bitvector->integer 'abs 'sign-extend 'integer->bitvector) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vabs_s32")]
)

	]
	[(vqdmlsl_high_n_s32_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vqdmlsl_high_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlsl_high_n_s32")]
)

	]
	[(vmull_high_n_s32_dsl v0 v1 size_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 1) (equal? num_8 64) (equal? num_9 0) (equal? num_10 1) (equal? num_11 32) (equal? num_12 2)); vmull_high_n_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 64) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 2)); vmull_high_n_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmull_high_n_s32")]
)

	]
	[(vsraq_n_s64_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vsraq_n_s64
 
  (remove-duplicates (append (list  'bvadd 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vsraq_n_s64")]
)

	]
	[(vsqadds_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 1) (equal? num_12 64)); vsqadds_u32
 
  (remove-duplicates (append (list  'bvusat 'bvadd 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 0) (equal? num_12 64)); vuqadd_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 0) (equal? num_12 64)); vuqadds_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 1) (equal? num_12 64)); vsqaddq_u32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 1) (equal? num_12 64)); vsqadd_u32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 0) (equal? num_12 64)); vuqaddq_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsqadds_u32")]
)

	]
	[(vabal_high_s16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 32) (equal? num_16 2)); vabal_high_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 16) (equal? num_14 0) (equal? num_15 32) (equal? num_16 2)); vabal_high_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabal_high_s16")]
)

	]
	[(vqdmlal_high_n_s32_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vqdmlal_high_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlal_high_n_s32")]
)

	]
	[(vqdmlsl_high_s16_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 1) (equal? num_11 16) (equal? num_12 1) (equal? num_13 2)); vqdmlsl_high_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1) (equal? num_10 1) (equal? num_11 32) (equal? num_12 1) (equal? num_13 2)); vqdmlsl_high_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlsl_high_s16")]
)

	]
	[(vaddl_high_s8_dsl v0 v1 size_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 8) (equal? num_12 1) (equal? num_13 16) (equal? num_14 2)); vaddl_high_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 16) (equal? num_12 0) (equal? num_13 32) (equal? num_14 2)); vaddl_high_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 8) (equal? num_12 0) (equal? num_13 16) (equal? num_14 2)); vaddl_high_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 32) (equal? num_12 0) (equal? num_13 64) (equal? num_14 2)); vaddl_high_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 32) (equal? num_12 1) (equal? num_13 64) (equal? num_14 2)); vaddl_high_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 16) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vaddl_high_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vaddl_high_s8")]
)

	]
	[(vqdmlal_n_s16_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i num_9 num_10 prec_o num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 16) (equal? num_9 1) (equal? num_10 32) (equal? prec_o 32) (equal? num_12 1) (equal? num_13 2) (equal? num_14 1)); vqdmlal_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlal_n_s16")]
)

	]
	[(vmul_n_s16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 32) (equal? num_9 0) (equal? num_10 0)); vmul_n_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 32) (equal? num_9 0) (equal? num_10 0)); vmulq_n_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 32) (equal? num_9 0) (equal? num_10 0)); vmul_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 32) (equal? num_9 0) (equal? num_10 0)); vmulq_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmul_n_s16")]
)

	]
	[(vabdl_s8_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 1) (equal? num_14 16) (equal? num_15 1) (equal? num_16 16)); vabdl_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 0) (equal? num_14 16) (equal? num_15 0) (equal? num_16 16)); vabdl_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabdl_s8")]
)

	]
	[(vcombine_u16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i prec_o num_8)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 64) (equal? prec_o 128) (equal? num_8 0)); vcombine_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vcombine_u16")]
)

	]
	[(vmlsl_high_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 16) (equal? num_13 0) (equal? num_14 2)); vmlsl_high_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 32) (equal? num_13 0) (equal? num_14 2)); vmlsl_high_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 32) (equal? num_12 16) (equal? num_13 1) (equal? num_14 2)); vmlsl_high_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 8) (equal? num_13 0) (equal? num_14 2)); vmlsl_high_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 16) (equal? num_12 8) (equal? num_13 1) (equal? num_14 2)); vmlsl_high_s8
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64) (equal? num_12 32) (equal? num_13 1) (equal? num_14 2)); vmlsl_high_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsl_high_u16")]
)

	]
	[(vuqaddq_s8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 0) (equal? num_12 16)); vuqaddq_s8
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 0) (equal? num_12 16)); vuqadd_s8
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 1) (equal? num_12 16)); vsqadd_u8
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 0) (equal? num_12 16)); vuqaddb_s8
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 1) (equal? num_12 16)); vsqaddq_u8
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 1) (equal? num_12 16)); vsqaddb_u8
 
  (remove-duplicates (append (list  'bvusat 'bvadd 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vuqaddq_s8")]
)

	]
	[(vabal_high_u8_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 8) (equal? num_14 0) (equal? num_15 16) (equal? num_16 2)); vabal_high_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 8) (equal? num_14 1) (equal? num_15 16) (equal? num_16 2)); vabal_high_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabal_high_u8")]
)

	]
	[(vsqadd_u64_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 128) (equal? num_11 1) (equal? num_12 128)); vsqadd_u64
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 128) (equal? num_11 0) (equal? num_12 128)); vuqaddq_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 128) (equal? num_11 0) (equal? num_12 128)); vuqaddd_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 128) (equal? num_11 0) (equal? num_12 128)); vuqadd_s64
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 128) (equal? num_11 1) (equal? num_12 128)); vsqaddd_u64
 
  (remove-duplicates (append (list  'bvusat 'bvadd 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 128) (equal? num_11 1) (equal? num_12 128)); vsqaddq_u64
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsqadd_u64")]
)

	]
	[(vqdmull_high_s16_dsl vc_0 v1 v2 size_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 1) (equal? num_11 2)); vqdmull_high_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1) (equal? num_11 2)); vqdmull_high_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmull_high_s16")]
)

	]
	[(vqrshrns_n_u32_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_o num_9 num_10 num_11 num_12 num_13 prec_i num_15)
		(cond 
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vqrshrns_n_u32
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vqrshrn_n_u16
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 8) (equal? num_5 8) (equal? num_6 0) (equal? num_7 8) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vqrshrnh_n_u16
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vqrshrn_n_u32
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrshrns_n_u32")]
)

	]
	[(vqrshrnh_n_s16_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_o num_9 num_10 num_11 num_12 num_13 prec_i num_15)
		(cond 
		[(and  (equal? size_i_o 8) (equal? num_5 8) (equal? num_6 0) (equal? num_7 8) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vqrshrnh_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 8) (equal? num_5 8) (equal? num_6 0) (equal? num_7 8) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vqrshrunh_n_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vqrshrns_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vqrshrun_n_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vqrshrn_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vqrshruns_n_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vqrshrn_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 1) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vqrshrun_n_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrshrnh_n_s16")]
)

	]
	[(vsra_n_s64_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vsra_n_s64
 
  (remove-duplicates (append (list  'bvadd 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vshr_n_s64
 
  (remove-duplicates (append (list  'bvadd 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vshrq_n_s64
 
  (remove-duplicates (append (list  'bvadd 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vsrad_n_s64
 
  (remove-duplicates (append (list  'bvadd 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 64) (equal? num_8 -1) (equal? num_9 0)); vshrd_n_s64
 
  (remove-duplicates (append (list  'bvadd 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vsra_n_s64")]
)

	]
	[(vabal_s8_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 1) (equal? num_14 16) (equal? num_15 1) (equal? num_16 16)); vabal_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 0) (equal? num_14 16) (equal? num_15 0) (equal? num_16 16)); vabal_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabal_s8")]
)

	]
	[(vceqq_u16_dsl v0 v1 vc_2 vc_3 size_i_o num_5 num_6 num_7 prec_i_o)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16)); vceqq_u16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8)); vceqq_s8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32)); vceq_s32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8)); vceq_s8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16)); vceqq_s16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32)); vceqq_u32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32)); vceq_u32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16)); vceq_u16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32)); vceqq_s32
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceq_u64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceqd_s64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceq_s64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8)); vceqq_u8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16)); vceq_s16
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64)); vceqq_s64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8)); vceq_u8
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vceqd_u64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64)); vceqq_u64
 
  (remove-duplicates (append (list  'if 'bveq) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vceqq_u16")]
)

	]
	[(vaddl_s32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i prec_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vaddl_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vaddl_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vaddl_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vaddl_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vaddl_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vaddl_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vaddl_s32")]
)

	]
	[(vmull_high_s16_dsl v0 v1 size_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 32) (equal? num_10 16) (equal? num_11 1) (equal? num_12 2)); vmull_high_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 16) (equal? num_10 8) (equal? num_11 1) (equal? num_12 2)); vmull_high_s8
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? num_10 32) (equal? num_11 1) (equal? num_12 2)); vmull_high_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 16) (equal? num_11 0) (equal? num_12 2)); vmull_high_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 8) (equal? num_11 0) (equal? num_12 2)); vmull_high_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 32) (equal? num_11 0) (equal? num_12 2)); vmull_high_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmull_high_s16")]
)

	]
	[(vabal_s32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 1) (equal? num_14 64) (equal? num_15 1) (equal? num_16 64)); vabal_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 0) (equal? num_14 64) (equal? num_15 0) (equal? num_16 64)); vabal_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabal_s32")]
)

	]
	[(vzip1q_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vzip1q_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 2)); vzip1q_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vzip1_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vzip1q_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vzip1q_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 2)); vzip1q_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vzip1_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vzip1q_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vzip1_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vzip1q_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vzip1_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vzip1q_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vzip1_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vzip1_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vzip1q_u32")]
)

	]
	[(vmlsl_u32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0) (equal? num_13 64) (equal? num_14 0)); vmlsl_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0) (equal? num_13 32) (equal? num_14 0)); vmlsl_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1) (equal? num_13 16) (equal? num_14 1)); vmlsl_s8
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1) (equal? num_13 64) (equal? num_14 1)); vmlsl_s32
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0) (equal? num_13 16) (equal? num_14 0)); vmlsl_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1) (equal? num_13 32) (equal? num_14 1)); vmlsl_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsl_u32")]
)

	]
	[(vrhadd_s16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vrhadd_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vrhadd_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vrhaddq_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vrhaddq_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vrhadd_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vrhaddq_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vrhadd_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vrhaddq_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vrhadd_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vrhadd_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vrhaddq_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 -1) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vrhaddq_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vrhadd_s16")]
)

	]
	[(vrshrd_n_s64_dsl vc_0 vc_1 vc_2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 1)); vrshrd_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 1)); vrshr_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 1)); vrshrq_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrshrd_n_s64")]
)

	]
	[(vuzp1q_u8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 2)); vuzp1q_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 2)); vuzp1_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 2)); vuzp1_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 2)); vuzp1_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 2)); vuzp1_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 2)); vuzp1q_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 2)); vuzp1_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 2)); vuzp1q_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 2)); vuzp1q_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 2)); vuzp1_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 2)); vuzp1q_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 2)); vuzp1q_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 2)); vuzp1q_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 2)); vuzp1q_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vuzp1q_u8")]
)

	]
	[(vhsub_u16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 0) (equal? num_12 32)); vhsub_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 64)); vhsubq_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 0) (equal? num_12 32)); vhsubq_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 0) (equal? num_12 16)); vhsub_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 1) (equal? num_12 16)); vhsub_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1) (equal? num_12 32)); vhsubq_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 0) (equal? num_12 64)); vhsubq_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 64)); vhsub_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 0) (equal? num_12 64)); vhsub_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 0) (equal? num_12 16)); vhsubq_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 1) (equal? num_12 16)); vhsubq_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1) (equal? num_12 32)); vhsub_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vhsub_u16")]
)

	]
	[(vqshlh_n_s16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9)
		(cond 
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64)); vqshlh_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshlu_n_s8
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64)); vqshls_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshlus_n_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64)); vqshlh_n_u16
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64)); vqshlb_n_u8
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshlu_n_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshluq_n_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshluq_n_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64)); vqshls_n_u32
 
  (remove-duplicates (append (list  'bvusat 'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshlu_n_s32
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshluh_n_s16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 1) (equal? num_9 64)); vqshlb_n_s8
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshluq_n_s8
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64)); vqshlub_n_s8
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vqshlh_n_s16")]
)

	]
	[(vabdl_s16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 1) (equal? num_14 32) (equal? num_15 1) (equal? num_16 32)); vabdl_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 0) (equal? num_14 32) (equal? num_15 0) (equal? num_16 32)); vabdl_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabdl_s16")]
)

	]
	[(vmovl_high_s8_dsl v0 size_o num_2 num_3 num_4 prec_o num_6 num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 16) (equal? num_6 0) (equal? num_7 1) (equal? num_8 16) (equal? num_9 8) (equal? num_10 2)); vmovl_high_s8
 
  (remove-duplicates (append (list  'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 16) (equal? num_6 0) (equal? num_7 0) (equal? num_8 16) (equal? num_9 8) (equal? num_10 2)); vmovl_high_u8
 
  (remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 64) (equal? num_6 0) (equal? num_7 0) (equal? num_8 64) (equal? num_9 32) (equal? num_10 2)); vmovl_high_u32
 
  (remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 32) (equal? num_6 0) (equal? num_7 1) (equal? num_8 32) (equal? num_9 16) (equal? num_10 2)); vmovl_high_s16
 
  (remove-duplicates (append (list  'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 32) (equal? num_6 0) (equal? num_7 0) (equal? num_8 32) (equal? num_9 16) (equal? num_10 2)); vmovl_high_u16
 
  (remove-duplicates (append (list  'zero-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 64) (equal? num_6 0) (equal? num_7 1) (equal? num_8 64) (equal? num_9 32) (equal? num_10 2)); vmovl_high_s32
 
  (remove-duplicates (append (list  'sign-extend) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vmovl_high_s8")]
)

	]
	[(vcgt_u32_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 0)); vcgt_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 0)); vcgtq_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcled_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 0)); vcleq_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 0)); vclt_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vcle_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vcltq_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vcltq_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vcleq_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcgt_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vclt_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 0)); vcltq_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vcged_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vclt_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 0)); vcle_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 0)); vclt_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vcgt_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vclt_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vcleq_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 0)); vcleq_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 0)); vcltq_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vcgtq_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vcltd_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 0)); vcle_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vclt_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vcgt_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 0)); vcgeq_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcge_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 0)); vcltq_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 0)); vcltq_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vcgtq_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vcle_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vcled_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 0)); vcle_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 0)); vcgtq_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 0)); vcgt_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 0)); vcleq_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcgtd_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 0)); vclt_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vclt_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vcleq_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vcgt_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 0)); vcge_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 0)); vcleq_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vcltq_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcltd_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 0)); vcgtq_u32
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vcgeq_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 0)); vcgtq_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcle_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vcltq_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 0)); vcgt_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 0)); vcgeq_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1)); vcgtq_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vcgt_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vcgeq_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 0)); vcge_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vcle_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1)); vcge_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vcgtd_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1)); vcleq_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1)); vcge_s32
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vcge_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0)); vcle_u64
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 0)); vcge_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1)); vcged_s64
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 0)); vcgeq_u8
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1)); vcgeq_s8
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vcgeq_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1)); vcgtq_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 0)); vcgeq_u16
 
  (remove-duplicates (append (list  'if 'bvugt) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1)); vcge_s16
 
  (remove-duplicates (append (list  'bvsgt 'if) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vcgt_u32")]
)

	]
	[(vrshr_n_u64_dsl vc_0 vc_1 vc_2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 0)); vrshr_n_u64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 0)); vrshrq_n_u64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 0)); vrshrd_n_u64
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrshr_n_u64")]
)

	]
	[(vqdmull_high_n_s16_dsl vc_0 v1 v2 size_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 32) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1) (equal? num_11 16) (equal? num_12 2)); vqdmull_high_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmull_high_n_s16")]
)

	]
	[(vsraq_n_s32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vsraq_n_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vsraq_n_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vsra_n_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vsra_n_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vsra_n_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vsraq_n_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vsraq_n_s32")]
)

	]
	[(vabdl_high_s16_dsl vc_0 v1 v2 size_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 16) (equal? num_14 1) (equal? num_15 32) (equal? num_16 2)); vabdl_high_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 16) (equal? num_14 0) (equal? num_15 32) (equal? num_16 2)); vabdl_high_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabdl_high_s16")]
)

	]
	[(vmlsq_s32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmlsq_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmlsq_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmls_s32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmls_s8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmlsq_s8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmlsq_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmls_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmlsq_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmls_u8
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmls_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmls_u32
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmlsq_s16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsq_s32")]
)

	]
	[(vabdq_s32_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vabdq_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vabdq_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vabd_s16
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vabd_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vabdq_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vabd_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vabd_u16
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vabd_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vabdq_s8
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vabdq_u8
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vabdq_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vabd_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabdq_s32")]
)

	]
	[(vpmaxq_s32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11 num_12 prec_i num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpmaxq_s32
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpmaxq_u8
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpmaxq_s8
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpmaxq_u16
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpmax_s16
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpmax_u16
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 16) (equal? num_10 16) (equal? num_11 1) (equal? num_12 8) (equal? prec_i 16) (equal? num_14 2)); vpmaxq_s16
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpmax_s32
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpmax_u32
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 0) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpmax_u8
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 32) (equal? num_10 32) (equal? num_11 1) (equal? num_12 16) (equal? prec_i 32) (equal? num_14 2)); vpmaxq_u32
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 8) (equal? num_7 0) (equal? num_8 1) (equal? num_9 8) (equal? num_10 8) (equal? num_11 1) (equal? num_12 4) (equal? prec_i 8) (equal? num_14 2)); vpmax_s8
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vpmaxq_s32")]
)

	]
	[(vshrq_n_u8_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vshrq_n_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vshr_n_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vshrq_n_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vshrq_n_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vshr_n_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vshr_n_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vshrq_n_u8")]
)

	]
	[(vqdmlal_s32_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i prec_o num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlal_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_i 16) (equal? prec_o 32) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlalh_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlal_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_i 32) (equal? prec_o 64) (equal? num_10 1) (equal? num_11 2) (equal? num_12 1) (equal? num_13 1)); vqdmlals_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvaddnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlal_s32")]
)

	]
	[(vshr_n_s16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vshr_n_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vshr_n_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vshrq_n_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vshr_n_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vshrq_n_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 1) (equal? num_11 64)); vshrq_n_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend 'bvashr) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vshr_n_s16")]
)

	]
	[(vrshr_n_s32_dsl vc_0 vc_1 vc_2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshr_n_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshr_n_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 16) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshrq_n_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshrq_n_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 8) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshr_n_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 32) (equal? num_10 -1) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vrshrq_n_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvashr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrshr_n_s32")]
)

	]
	[(vadd_u16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 -1)); vadd_u16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0)); vqadd_u8
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 -1)); vaddq_s16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1)); vqadd_s8
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0)); vqaddq_u64
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vaddd_s64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1)); vqadd_s16
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1)); vqaddq_s8
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 -1)); vaddq_u32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 -1)); vaddq_s64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0)); vqaddq_u16
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 0)); vqaddb_u8
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vadd_s64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1)); vqaddq_s16
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0)); vqaddd_u64
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vaddd_u64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 1)); vqaddb_s8
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 1)); vqadds_s32
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 -1)); vaddq_u8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1)); vqadd_s64
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 0)); vqadds_u32
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 -1)); vaddq_u16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 -1)); vadd_s32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1)); vqadd_s32
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 -1)); vaddq_s32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vadd_u64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 -1)); vadd_u8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0)); vqadd_u32
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0)); vqadd_u64
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 1)); vqaddq_s64
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0)); vqaddq_u8
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 -1)); vaddq_s8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 1)); vqaddh_s16
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1)); vqaddq_s32
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0)); vqaddq_u32
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 -1)); vadd_u32
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 -1)); vadd_s8
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 -1)); vaddq_u64
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0)); vqadd_u16
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1)); vqaddd_s64
 
  (remove-duplicates (append (list  'bvaddnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 -1)); vadd_s16
 
  (remove-duplicates (append (list  'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 0)); vqaddh_u16
 
  (remove-duplicates (append (list  'bvaddnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vadd_u16")]
)

	]
	[(vuqaddq_s16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 0) (equal? num_12 32)); vuqaddq_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 1) (equal? num_12 32)); vsqaddq_u16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 0) (equal? num_12 32)); vuqadd_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'zero-extend 'bvaddnsw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 1) (equal? num_12 32)); vsqadd_u16
 
  (remove-duplicates (append (list  'bvusat 'sign-extend 'zero-extend 'bvaddnuw 'bvadd) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 0) (equal? num_12 32)); vuqaddh_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 1) (equal? num_12 32)); vsqaddh_u16
 
  (remove-duplicates (append (list  'bvusat 'bvadd 'sign-extend 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vuqaddq_s16")]
)

	]
	[(vtst_u64_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vtst_u64
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16)); vtstq_s16
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8)); vtstq_u8
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vtstd_s64
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64)); vtstq_s64
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vtstd_u64
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8)); vtst_u8
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32)); vtst_u32
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16)); vtst_s16
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32)); vtstq_u32
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16)); vtstq_u16
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16)); vtst_u16
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32)); vtst_s32
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8)); vtstq_s8
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64)); vtst_s64
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8)); vtst_s8
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32)); vtstq_s32
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64)); vtstq_u64
 
  (remove-duplicates (append (list  'if 'bvand) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vtst_u64")]
)

	]
	[(vnegq_s64_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o num_6 num_7 num_8)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128)); vnegq_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8) (equal? num_6 0) (equal? num_7 1) (equal? num_8 16)); vneg_s8
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 32) (equal? num_6 0) (equal? num_7 1) (equal? num_8 64)); vnegq_s32
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128)); vneg_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 64) (equal? num_6 0) (equal? num_7 1) (equal? num_8 128)); vnegd_s64
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8) (equal? num_6 0) (equal? num_7 1) (equal? num_8 16)); vnegq_s8
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 16) (equal? num_6 0) (equal? num_7 1) (equal? num_8 32)); vneg_s16
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 16) (equal? num_6 0) (equal? num_7 1) (equal? num_8 32)); vnegq_s16
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 32) (equal? num_6 0) (equal? num_7 1) (equal? num_8 64)); vneg_s32
 
  (remove-duplicates (append (list  'bvneg 'sign-extend) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vnegq_s64")]
)

	]
	[(vqdmull_high_n_s32_dsl vc_0 v1 v2 size_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 64) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1) (equal? num_11 32) (equal? num_12 2)); vqdmull_high_n_s32
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmull_high_n_s32")]
)

	]
	[(vmull_n_s16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i num_7 num_8 prec_o num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? num_7 1) (equal? num_8 32) (equal? prec_o 32) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1)); vmull_n_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? num_7 0) (equal? num_8 32) (equal? prec_o 32) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0)); vmull_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmull_n_s16")]
)

	]
	[(vrsra_n_s64_dsl vc_0 vc_1 v2 v3 v4 size_i_o num_6 num_7 num_8 prec_i_o num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 1)); vrsra_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 64) (equal? num_6 64) (equal? num_7 0) (equal? num_8 64) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 1)); vrsrad_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[(and  (equal? size_i_o 128) (equal? num_6 128) (equal? num_7 0) (equal? num_8 128) (equal? prec_i_o 64) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 0) (equal? num_15 -1) (equal? num_16 1)); vrsraq_n_s64
 
  (remove-duplicates (append (list  'sign-extend 'zero-extend 'bvshl 'bvashr 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3) (arm:get-bv-ops v4)))]
		[else (error "Unable to get ops  for vrsra_n_s64")]
)

	]
	[(vabdl_u32_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 0) (equal? num_14 64) (equal? num_15 0) (equal? num_16 64)); vabdl_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 -1) (equal? num_13 1) (equal? num_14 64) (equal? num_15 1) (equal? num_16 64)); vabdl_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabdl_u32")]
)

	]
	[(vabdl_high_u32_dsl vc_0 v1 v2 size_o num_4 num_5 num_6 prec_o num_8 num_9 num_10 num_11 num_12 num_13 num_14 num_15 num_16)
		(cond 
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 32) (equal? num_14 0) (equal? num_15 64) (equal? num_16 2)); vabdl_high_u32
 
  (remove-duplicates (append (list  'abs 'zero-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_o 64) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 32) (equal? num_14 1) (equal? num_15 64) (equal? num_16 2)); vabdl_high_s32
 
  (remove-duplicates (append (list  'abs 'sign-extend 'bitvector->integer 'bvadd 'bvsub 'integer->bitvector) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vabdl_high_u32")]
)

	]
	[(vsubl_s8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i prec_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 1) (equal? num_14 16)); vsubl_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 1) (equal? num_14 32)); vsubl_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1) (equal? num_14 64)); vsubl_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 0) (equal? num_14 64)); vsubl_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 0) (equal? num_14 16)); vsubl_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_8 0) (equal? num_9 2) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 0) (equal? num_14 32)); vsubl_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsubl_s8")]
)

	]
	[(vsubl_high_u16_dsl v0 v1 size_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 16) (equal? num_12 0) (equal? num_13 32) (equal? num_14 2)); vsubl_high_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 8) (equal? num_12 1) (equal? num_13 16) (equal? num_14 2)); vsubl_high_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 16) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vsubl_high_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 8) (equal? num_12 0) (equal? num_13 16) (equal? num_14 2)); vsubl_high_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 32) (equal? num_12 0) (equal? num_13 64) (equal? num_14 2)); vsubl_high_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 32) (equal? num_12 1) (equal? num_13 64) (equal? num_14 2)); vsubl_high_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsubl_high_u16")]
)

	]
	[(vsubw_s8_dsl v0 v1 size_i_o num_3 num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 8) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 32) (equal? num_12 1) (equal? num_13 32) (equal? num_14 2)); vsubw_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 16) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 64) (equal? num_12 1) (equal? num_13 64) (equal? num_14 2)); vsubw_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 16) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0) (equal? num_13 64) (equal? num_14 2)); vsubw_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 32) (equal? prec_i_o 64) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 128) (equal? num_12 0) (equal? num_13 128) (equal? num_14 2)); vsubw_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 8) (equal? prec_i_o 16) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0) (equal? num_13 32) (equal? num_14 2)); vsubw_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? num_6 32) (equal? prec_i_o 64) (equal? num_8 0) (equal? num_9 -1) (equal? num_10 1) (equal? num_11 128) (equal? num_12 1) (equal? num_13 128) (equal? num_14 2)); vsubw_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsubw_s8")]
)

	]
	[(vsubw_high_u16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 16) (equal? num_12 2) (equal? num_13 0) (equal? num_14 64)); vsubw_high_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 8) (equal? num_12 2) (equal? num_13 1) (equal? num_14 32)); vsubw_high_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 128) (equal? num_11 32) (equal? num_12 2) (equal? num_13 0) (equal? num_14 128)); vsubw_high_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 16) (equal? num_12 2) (equal? num_13 1) (equal? num_14 64)); vsubw_high_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 128) (equal? num_11 32) (equal? num_12 2) (equal? num_13 1) (equal? num_14 128)); vsubw_high_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 8) (equal? num_12 2) (equal? num_13 0) (equal? num_14 32)); vsubw_high_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsubw_high_u16")]
)

	]
	[(vmov_n_u16_dsl v0 size_o num_2 num_3 num_4 prec_o)
		(cond 
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 16)); vmov_n_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 32)); vmovq_n_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 16)); vmov_n_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 16)); vdup_n_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 8)); vmov_n_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 32)); vmov_n_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 32)); vmov_n_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 32)); vdupq_n_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 8)); vmovq_n_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 8)); vdupq_n_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 16)); vdup_n_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 64)); vdupq_n_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 16)); vmovq_n_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 64)); vmovq_n_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 16)); vdupq_n_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 64)); vdupq_n_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 8)); vdup_n_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 32)); vmovq_n_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 32)); vdup_n_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 8)); vdup_n_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 16)); vdupq_n_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 32)); vdupq_n_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 8)); vmov_n_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 64)); vmovq_n_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 8)); vmovq_n_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 8)); vdupq_n_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_o 32)); vdup_n_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[(and  (equal? size_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_o 16)); vmovq_n_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vmov_n_u16")]
)

	]
	[(vmin_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0)); vmin_u32
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0)); vminq_u8
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0)); vminq_u16
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0)); vminq_u32
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1)); vminq_s32
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1)); vmin_s8
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1)); vminq_s8
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1)); vminq_s16
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1)); vmin_s16
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0)); vmin_u16
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0)); vmin_u8
 
  (remove-duplicates (append (list  'bvumin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1)); vmin_s32
 
  (remove-duplicates (append (list  'bvsmin) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmin_u32")]
)

	]
	[(vrshrn_n_s16_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_o num_9 num_10 num_11 num_12 num_13 prec_i num_15)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vrshrn_n_s16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vrshrn_n_s32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 32) (equal? num_15 2)); vrshrn_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_o 8) (equal? num_9 -1) (equal? num_10 0) (equal? num_11 -1) (equal? num_12 0) (equal? num_13 64) (equal? prec_i 16) (equal? num_15 2)); vrshrn_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvlshr 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vrshrn_n_s16")]
)

	]
	[(vmlsl_high_n_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 0) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 0) (equal? num_13 16) (equal? num_14 2)); vmlsl_high_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 32) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 1) (equal? num_13 16) (equal? num_14 2)); vmlsl_high_n_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsl_high_n_u16")]
)

	]
	[(vmlal_u8_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i prec_o num_9 num_10 num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0) (equal? num_13 16) (equal? num_14 0)); vmlal_u8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0) (equal? num_13 32) (equal? num_14 0)); vmlal_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1) (equal? num_13 64) (equal? num_14 1)); vmlal_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 32) (equal? prec_o 64) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 0) (equal? num_13 64) (equal? num_14 0)); vmlal_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 8) (equal? prec_o 16) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1) (equal? num_13 16) (equal? num_14 1)); vmlal_s8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? prec_o 32) (equal? num_9 -1) (equal? num_10 2) (equal? num_11 0) (equal? num_12 1) (equal? num_13 32) (equal? num_14 1)); vmlal_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlal_u8")]
)

	]
	[(vqdmlsl_n_s16_dsl vc_0 v1 v2 v3 size_i_o num_5 num_6 num_7 prec_i num_9 num_10 prec_o num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i 16) (equal? num_9 1) (equal? num_10 32) (equal? prec_o 32) (equal? num_12 1) (equal? num_13 2) (equal? num_14 1)); vqdmlsl_n_s16
 
  (remove-duplicates (append (list  'bvmul 'bvmulnsw 'bvsubnsw 'sign-extend) (arm:get-bv-ops v1) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqdmlsl_n_s16")]
)

	]
	[(vsraq_n_u8_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vsraq_n_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vsra_n_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vsraq_n_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vsra_n_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vsra_n_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64)); vsraq_n_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend 'bvlshr) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vsraq_n_u8")]
)

	]
	[(vmlaq_u32_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmlaq_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmlaq_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmla_u8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmlaq_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmlaq_u8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmlaq_s8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmla_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmla_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 16) (equal? num_12 0)); vmla_s8
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 64) (equal? num_12 0)); vmlaq_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmla_u16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0) (equal? num_11 32) (equal? num_12 0)); vmla_s16
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlaq_u32")]
)

	]
	[(vmvn_s16_dsl v0 size_i_o num_2 num_3 num_4 prec_i_o)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8)); vmvn_s16
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8)); vmvnq_u16
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8)); vmvn_s8
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8)); vmvn_u8
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8)); vmvnq_u32
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8)); vmvnq_u8
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8)); vmvn_u16
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8)); vmvnq_s8
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8)); vmvn_u32
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 64) (equal? num_2 64) (equal? num_3 0) (equal? num_4 64) (equal? prec_i_o 8)); vmvn_s32
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8)); vmvnq_s16
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[(and  (equal? size_i_o 128) (equal? num_2 128) (equal? num_3 0) (equal? num_4 128) (equal? prec_i_o 8)); vmvnq_s32
 
  (remove-duplicates (append (list  'bvnot) (arm:get-bv-ops v0)))]
		[else (error "Unable to get ops  for vmvn_s16")]
)

	]
	[(vuzp2_s16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8)); vuzp2_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8)); vuzp2q_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16)); vuzp2q_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8)); vuzp2_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16)); vuzp2_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4)); vuzp2_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8)); vuzp2q_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32)); vuzp2q_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4)); vuzp2_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16)); vuzp2_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4)); vuzp2q_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4)); vuzp2q_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16)); vuzp2q_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32)); vuzp2q_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vuzp2_s16")]
)

	]
	[(vqrshld_s64_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13 num_14 num_15)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vqrshld_s64
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vqrshlq_u32
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vqrshl_s8
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vqrshlq_u16
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vqrshlq_u64
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 8) (equal? num_5 8) (equal? num_6 0) (equal? num_7 8) (equal? prec_i_o 8) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vqrshlb_s8
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_i_o 16) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vqrshlh_u16
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vqrshl_s64
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vqrshlq_s32
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vqrshl_u32
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_i_o 32) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vqrshls_u32
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vqrshl_s16
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vqrshl_s32
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 64)); vqrshls_s32
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 8) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vqrshl_u8
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vqrshlh_s16
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vqrshlq_s16
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vqrshlq_s8
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 8) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vqrshlq_u8
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 32) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 32)); vqrshl_u16
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vqrshl_u64
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 64) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vqrshld_u64
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 8) (equal? num_5 8) (equal? num_6 0) (equal? num_7 8) (equal? prec_i_o 8) (equal? num_9 0) (equal? num_10 -1) (equal? num_11 0) (equal? num_12 16) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 16)); vqrshlb_u8
 
  (remove-duplicates (append (list  'bvusat 'bvneg 'zero-extend 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 64) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 -1) (equal? num_14 1) (equal? num_15 128)); vqrshlq_s64
 
  (remove-duplicates (append (list  'bvneg 'bvssat 'sign-extend 'bvshl 'bvadd 'bvsub) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrshld_s64")]
)

	]
	[(vzip2q_s64_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 64) (equal? num_11 1) (equal? num_12 2) (equal? num_13 64)); vzip2q_s64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 8) (equal? num_11 4) (equal? num_12 2) (equal? num_13 8)); vzip2_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 8) (equal? num_11 4) (equal? num_12 2) (equal? num_13 8)); vzip2_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 8) (equal? num_11 8) (equal? num_12 2) (equal? num_13 8)); vzip2q_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 16) (equal? num_11 4) (equal? num_12 2) (equal? num_13 16)); vzip2q_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 32) (equal? num_11 2) (equal? num_12 2) (equal? num_13 32)); vzip2q_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 8) (equal? num_11 8) (equal? num_12 2) (equal? num_13 8)); vzip2q_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 16) (equal? num_11 2) (equal? num_12 2) (equal? num_13 16)); vzip2_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 64) (equal? num_8 1) (equal? num_9 32) (equal? num_10 64) (equal? num_11 1) (equal? num_12 2) (equal? num_13 64)); vzip2q_u64
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 32) (equal? num_11 1) (equal? num_12 2) (equal? num_13 32)); vzip2_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 32) (equal? num_11 2) (equal? num_12 2) (equal? num_13 32)); vzip2q_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 16) (equal? num_11 2) (equal? num_12 2) (equal? num_13 16)); vzip2_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 32) (equal? num_11 1) (equal? num_12 2) (equal? num_13 32)); vzip2_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 16) (equal? num_11 4) (equal? num_12 2) (equal? num_13 16)); vzip2q_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vzip2q_s64")]
)

	]
	[(vsubq_u32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 -1)); vsubq_u32
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 -1)); vsubq_u64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1)); vqsub_s32
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 -1)); vsubq_u8
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 1)); vqsubb_s8
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vsubd_u64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 -1)); vsubq_s64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 0)); vqsubq_u64
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 8) (equal? num_3 8) (equal? num_4 0) (equal? num_5 8) (equal? prec_i_o 8) (equal? num_7 0)); vqsubb_u8
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1)); vqsubq_s8
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 1)); vqsubh_s16
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0)); vqsubq_u16
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0)); vqsub_u64
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 -1)); vsubq_s32
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 -1)); vsub_u16
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vsubd_s64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0)); vqsubq_u8
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0)); vqsub_u8
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 -1)); vsubq_s16
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 -1)); vsubq_u16
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 -1)); vsub_s16
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 1)); vqsubs_s32
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 -1)); vsub_s32
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vsub_s64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 16) (equal? num_3 16) (equal? num_4 0) (equal? num_5 16) (equal? prec_i_o 16) (equal? num_7 0)); vqsubh_u16
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 -1)); vsub_s8
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 -1)); vsub_u32
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1)); vqsubq_s32
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1)); vqsubd_s64
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_i_o 32) (equal? num_7 0)); vqsubs_u32
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 -1)); vsub_u8
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 1)); vqsub_s64
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 64) (equal? num_7 1)); vqsubq_s64
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1)); vqsub_s16
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 -1)); vsubq_s8
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0)); vqsub_u16
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 0)); vqsubd_u64
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1)); vqsub_s8
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1)); vqsubq_s16
 
  (remove-duplicates (append (list  'bvsubnsw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0)); vqsubq_u32
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 64) (equal? num_7 -1)); vsub_u64
 
  (remove-duplicates (append (list  'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0)); vqsub_u32
 
  (remove-duplicates (append (list  'bvsubnuw) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vsubq_u32")]
)

	]
	[(vqshrn_n_s64_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_o num_7 prec_i num_9)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 1) (equal? prec_i 64) (equal? num_9 2)); vqshrn_n_s64
 
  (remove-duplicates (append (list  'bvssat 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_o 32) (equal? num_7 0) (equal? prec_i 64) (equal? num_9 2)); vqshrund_n_s64
 
  (remove-duplicates (append (list  'bvusat 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_o 32) (equal? num_7 0) (equal? prec_i 64) (equal? num_9 2)); vqshrun_n_s64
 
  (remove-duplicates (append (list  'bvusat 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 32) (equal? num_3 32) (equal? num_4 0) (equal? num_5 32) (equal? prec_o 32) (equal? num_7 1) (equal? prec_i 64) (equal? num_9 2)); vqshrnd_n_s64
 
  (remove-duplicates (append (list  'bvssat 'bvashr) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vqshrn_n_s64")]
)

	]
	[(vhadd_s32_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10 num_11 num_12)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 64)); vhadd_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 0) (equal? num_12 64)); vhadd_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 1) (equal? num_12 16)); vhadd_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 0) (equal? num_12 16)); vhaddq_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 64) (equal? num_11 0) (equal? num_12 64)); vhaddq_u32
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 16) (equal? num_11 0) (equal? num_12 16)); vhadd_u8
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 0) (equal? num_12 32)); vhadd_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1) (equal? num_12 32)); vhadd_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 64)); vhaddq_s32
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 32) (equal? num_11 0) (equal? num_12 32)); vhaddq_u16
 
  (remove-duplicates (append (list  'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1) (equal? num_12 32)); vhaddq_s16
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 1) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 16) (equal? num_11 1) (equal? num_12 16)); vhaddq_s8
 
  (remove-duplicates (append (list  'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vhadd_s32")]
)

	]
	[(vshll_high_n_s8_dsl v0 v1 size_o num_3 num_4 num_5 prec_o num_7 num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? num_10 8) (equal? num_11 2)); vshll_high_n_s8
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? num_10 32) (equal? num_11 2)); vshll_high_n_s32
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 16) (equal? num_11 2)); vshll_high_n_u16
 
  (remove-duplicates (append (list  'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 16) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 8) (equal? num_11 2)); vshll_high_n_u8
 
  (remove-duplicates (append (list  'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 32) (equal? num_7 0) (equal? num_8 1) (equal? num_9 64) (equal? num_10 16) (equal? num_11 2)); vshll_high_n_s16
 
  (remove-duplicates (append (list  'sign-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_o 64) (equal? num_7 0) (equal? num_8 0) (equal? num_9 64) (equal? num_10 32) (equal? num_11 2)); vshll_high_n_u32
 
  (remove-duplicates (append (list  'zero-extend 'bvshl) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vshll_high_n_s8")]
)

	]
	[(vdotq_s32_dsl v0 v1 v2 size_i prec_o num_5 num_6 prec_i num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i 128) (equal? prec_o 32) (equal? num_5 0) (equal? num_6 32) (equal? prec_i 8) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 1)); vdotq_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_o 32) (equal? num_5 0) (equal? num_6 32) (equal? prec_i 8) (equal? num_8 -1) (equal? num_9 1) (equal? num_10 1)); vdot_s32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'sign-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 128) (equal? prec_o 32) (equal? num_5 0) (equal? num_6 32) (equal? prec_i 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0)); vdotq_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i 64) (equal? prec_o 32) (equal? num_5 0) (equal? num_6 32) (equal? prec_i 8) (equal? num_8 -1) (equal? num_9 0) (equal? num_10 0)); vdot_u32
 
  (remove-duplicates (append (list  'bvmul 'bvadd 'zero-extend) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vdotq_s32")]
)

	]
	[(vmax_u8_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0)); vmax_u8
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0)); vmaxq_u16
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1)); vmax_s8
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 0)); vmaxq_u8
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 0)); vmax_u16
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 8) (equal? num_7 0) (equal? num_8 1)); vmaxq_s8
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0)); vmaxq_u32
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1)); vmax_s32
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1)); vmax_s16
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 16) (equal? num_7 0) (equal? num_8 1)); vmaxq_s16
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 0)); vmax_u32
 
  (remove-duplicates (append (list  'bvumax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 128) (equal? num_3 128) (equal? num_4 0) (equal? num_5 128) (equal? prec_i_o 32) (equal? num_7 0) (equal? num_8 1)); vmaxq_s32
 
  (remove-duplicates (append (list  'bvsmax) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vmax_u8")]
)

	]
	[(vmlsl_n_u16_dsl v0 v1 v2 size_i_o num_4 num_5 num_6 prec_i num_8 num_9 prec_o num_11 num_12 num_13 num_14)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? num_8 0) (equal? num_9 32) (equal? prec_o 32) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 0)); vmlsl_n_u16
 
  (remove-duplicates (append (list  'bvmul 'zero-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i 16) (equal? num_8 1) (equal? num_9 32) (equal? prec_o 32) (equal? num_11 -1) (equal? num_12 2) (equal? num_13 0) (equal? num_14 1)); vmlsl_n_s16
 
  (remove-duplicates (append (list  'bvmul 'sign-extend 'bvsub) (arm:get-bv-ops v0) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vmlsl_n_u16")]
)

	]
	[(vzip_u16_dsl v0 v1 size_i_o num_3 num_4 num_5 prec_i_o num_7 num_8 num_9 num_10)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vzip_u16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vzip_u8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 16) (equal? num_7 16) (equal? num_8 1) (equal? num_9 8) (equal? num_10 2)); vzip_s16
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vzip_s32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 32) (equal? num_7 32) (equal? num_8 1) (equal? num_9 16) (equal? num_10 2)); vzip_u32
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[(and  (equal? size_i_o 64) (equal? num_3 64) (equal? num_4 0) (equal? num_5 64) (equal? prec_i_o 8) (equal? num_7 8) (equal? num_8 1) (equal? num_9 4) (equal? num_10 2)); vzip_s8
 
  (remove-duplicates (append (list  ) (arm:get-bv-ops v0) (arm:get-bv-ops v1)))]
		[else (error "Unable to get ops  for vzip_u16")]
)

	]
	[(vqrdmulhq_n_s32_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 128) (equal? num_11 1) (equal? num_12 -1) (equal? num_13 1)); vqrdmulhq_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 128) (equal? num_11 1) (equal? num_12 -1) (equal? num_13 1)); vqrdmulh_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrdmulhq_n_s32")]
)

	]
	[(vqdmulh_n_s16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1) (equal? num_11 1)); vqdmulh_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 32) (equal? num_10 1) (equal? num_11 1)); vqdmulhq_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmulh_n_s16")]
)

	]
	[(vqrdmulhq_s16_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1)); vqrdmulhq_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 16) (equal? num_5 16) (equal? num_6 0) (equal? num_7 16) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1)); vqrdmulhh_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 64) (equal? num_13 1)); vqrdmulh_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrdmulhq_s16")]
)

	]
	[(vqrdmulhq_n_s16_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 -1) (equal? num_13 1)); vqrdmulhq_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 16) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1) (equal? num_12 -1) (equal? num_13 1)); vqrdmulh_n_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrdmulhq_n_s16")]
)

	]
	[(vqdmulhq_n_s32_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1) (equal? num_11 1)); vqdmulhq_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 64) (equal? num_10 1) (equal? num_11 1)); vqdmulh_n_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmulhq_n_s32")]
)

	]
	[(vqrdmulh_s32_dsl vc_0 vc_1 v2 v3 size_i_o num_5 num_6 num_7 prec_i_o num_9 num_10 num_11 num_12 num_13)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_5 64) (equal? num_6 0) (equal? num_7 64) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 1)); vqrdmulh_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 32) (equal? num_5 32) (equal? num_6 0) (equal? num_7 32) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 1)); vqrdmulhs_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[(and  (equal? size_i_o 128) (equal? num_5 128) (equal? num_6 0) (equal? num_7 128) (equal? prec_i_o 32) (equal? num_9 1) (equal? num_10 -1) (equal? num_11 1) (equal? num_12 128) (equal? num_13 1)); vqrdmulhq_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvaddnsw 'bvadd) (arm:get-bv-ops v2) (arm:get-bv-ops v3)))]
		[else (error "Unable to get ops  for vqrdmulh_s32")]
)

	]
	[(vqdmulh_s16_dsl vc_0 v1 v2 size_i_o num_4 num_5 num_6 prec_i_o num_8 num_9 num_10 num_11)
		(cond 
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1)); vqdmulh_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 64) (equal? num_4 64) (equal? num_5 0) (equal? num_6 64) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1)); vqdmulh_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 16) (equal? num_4 16) (equal? num_5 0) (equal? num_6 16) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1)); vqdmulhh_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1)); vqdmulhq_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 32) (equal? num_4 32) (equal? num_5 0) (equal? num_6 32) (equal? prec_i_o 32) (equal? num_8 1) (equal? num_9 1) (equal? num_10 64) (equal? num_11 1)); vqdmulhs_s32
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[(and  (equal? size_i_o 128) (equal? num_4 128) (equal? num_5 0) (equal? num_6 128) (equal? prec_i_o 16) (equal? num_8 1) (equal? num_9 1) (equal? num_10 32) (equal? num_11 1)); vqdmulhq_s16
 
  (remove-duplicates (append (list  'bvssat 'sign-extend 'bvashr 'bvmul 'bvmulnsw) (arm:get-bv-ops v1) (arm:get-bv-ops v2)))]
		[else (error "Unable to get ops  for vqdmulh_s16")]
)

	]
 )
)
;; ================================================================================

