#lang rosette/safe

(require
  (only-in racket/struct make-constructor-style-printer)
  (only-in racket/base error)
  rosette/lib/destruct)

(require hydride/ir/hydride/definition)

(provide (all-defined-out))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Define WASM SIMD IR

;; A node to represent abstract expressions
(struct abstr-wasm-expr (orig-expr abstr-vals))

;; A dummy node to capture variable lookups
(struct var-lookup (var val)
  #:transparent
  #:methods gen:custom-write
  [(define write-proc
     (make-constructor-style-printer
      (lambda (obj) 'var-lookup)
      (lambda (obj) (list (var-lookup-var obj)))))])
      
;; SIMD Vector Types (WASM 128-bit vectors)
(struct i8x16 (vec) #:transparent)
(struct i16x8 (vec) #:transparent)
(struct i32x4 (vec) #:transparent)
(struct i64x2 (vec) #:transparent)

(struct u8x16 (vec) #:transparent)
(struct u16x8 (vec) #:transparent)
(struct u32x4 (vec) #:transparent)
(struct u64x2 (vec) #:transparent)

;; Generalized Broadcast
(struct xBroadcast (sca factor) #:transparent)

;; Memory Operations
(struct v128-load (addr align offset) #:transparent)
(struct v128-store (addr val align offset) #:transparent)

;; Lane Operations
(struct v128-const (vec) #:transparent)
(struct extract-lane (vec lane) #:transparent)
(struct replace-lane (vec lane val) #:transparent)

;; Integer Operations
(struct i8x16-add (v1 v2) #:transparent)
(struct i8x16-sub (v1 v2) #:transparent)
(struct i8x16-mul (v1 v2) #:transparent)
(struct i8x16-min (v1 v2) #:transparent)
(struct i8x16-max (v1 v2) #:transparent)
(struct i8x16-neg (v1) #:transparent)

(struct i16x8-add (v1 v2) #:transparent)
(struct i16x8-sub (v1 v2) #:transparent)
(struct i16x8-mul (v1 v2) #:transparent)
(struct i16x8-min (v1 v2) #:transparent)
(struct i16x8-max (v1 v2) #:transparent)
(struct i16x8-neg (v1) #:transparent)

(struct i32x4-add (v1 v2) #:transparent)
(struct i32x4-sub (v1 v2) #:transparent)
(struct i32x4-mul (v1 v2) #:transparent)
(struct i32x4-min (v1 v2) #:transparent)
(struct i32x4-max (v1 v2) #:transparent)
(struct i32x4-neg (v1) #:transparent)

(struct i64x2-add (v1 v2) #:transparent)
(struct i64x2-sub (v1 v2) #:transparent)
(struct i64x2-mul (v1 v2) #:transparent)
(struct i64x2-neg (v1) #:transparent)

;; Bitwise Operations
(struct v128-and (v1 v2) #:transparent)
(struct v128-or (v1 v2) #:transparent)
(struct v128-xor (v1 v2) #:transparent)
(struct v128-not (v1) #:transparent)
(struct v128-andnot (v1 v2) #:transparent)

;; Shifts and Shuffles
(struct i8x16-shl (v1 v2) #:transparent)
(struct i8x16-shr (v1 v2) #:transparent)
(struct i16x8-shl (v1 v2) #:transparent)
(struct i16x8-shr (v1 v2) #:transparent)
(struct i32x4-shl (v1 v2) #:transparent)
(struct i32x4-shr (v1 v2) #:transparent)
(struct i64x2-shl (v1 v2) #:transparent)
(struct i64x2-shr (v1 v2) #:transparent)

(struct shuffle (v1 v2 mask) #:transparent)
(struct swizzle (v1 v2) #:transparent)

;; Comparison Operations
(struct i8x16-eq (v1 v2) #:transparent)
(struct i8x16-ne (v1 v2) #:transparent)
(struct i8x16-lt (v1 v2) #:transparent)
(struct i8x16-le (v1 v2) #:transparent)

(struct i16x8-eq (v1 v2) #:transparent)
(struct i16x8-ne (v1 v2) #:transparent)
(struct i16x8-lt (v1 v2) #:transparent)
(struct i16x8-le (v1 v2) #:transparent)

(struct i32x4-eq (v1 v2) #:transparent)
(struct i32x4-ne (v1 v2) #:transparent)
(struct i32x4-lt (v1 v2) #:transparent)
(struct i32x4-le (v1 v2) #:transparent)

(struct i64x2-eq (v1 v2) #:transparent)
(struct i64x2-ne (v1 v2) #:transparent)
(struct i64x2-lt (v1 v2) #:transparent)
(struct i64x2-le (v1 v2) #:transparent)

;; Reduction Operations
(struct i8x16-abs (v1) #:transparent)
(struct i16x8-abs (v1) #:transparent)
(struct i32x4-abs (v1) #:transparent)
(struct i64x2-abs (v1) #:transparent)

(struct vector-reduce (op width vec) #:transparent)

;; General Cast Operations
(struct cast-int (vec olane oprec) #:transparent)
(struct cast-uint (vec olane oprec) #:transparent)

;; Lane-wise Saturation
(struct vec-saturate (vec olane oprec signed?) #:transparent)

;; Swizzling and Shuffling
(struct vec-broadcast (n vec) #:transparent)
(struct concat-vectors (v1 v2) #:transparent)
(struct interleave (v1 v2) #:transparent)
(struct dynamic-shuffle (vec idx st end) #:transparent)
