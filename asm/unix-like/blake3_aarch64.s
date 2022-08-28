	.text
	.file	"blake3_portable.c"
	.globl	blake3_compress_in_place_portable // -- Begin function blake3_compress_in_place_portable
	.p2align	2
	.type	blake3_compress_in_place_portable,@function
blake3_compress_in_place_portable:      // @blake3_compress_in_place_portable
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #96]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #128]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #144]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            // 16-byte Folded Spill
	.cfi_def_cfa_offset 176
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	ldp	w9, w12, [x1]
	ldp	w8, w10, [x0]
	ldp	w16, w6, [x0, #16]
	ldp	w5, w11, [x1, #8]
	ldp	w21, w22, [x0, #8]
	add	w8, w8, w9
	mov	w17, #44677
	add	w7, w8, w16
	str	w9, [sp, #76]                   // 4-byte Folded Spill
	add	w10, w10, w5
	eor	w14, w7, w3
	lsr	x3, x3, #32
	add	w20, w10, w6
	eor	w3, w20, w3
	movk	w17, #47975, lsl #16
	ldp	w8, w13, [x1, #16]
	ldp	w23, w24, [x0, #24]
	ror	w3, w3, #16
	ror	w19, w14, #16
	ldp	w14, w9, [x1, #24]
	mov	w15, #58983
	and	w2, w2, #0xff
	add	w25, w3, w17
	add	w17, w21, w8
	add	w21, w17, w23
	movk	w15, #27145, lsl #16
	eor	w17, w21, w2
	add	w15, w19, w15
	add	w2, w22, w14
	eor	w16, w15, w16
	and	w4, w4, #0xff
	eor	w6, w25, w6
	add	w2, w2, w24
	extr	w22, w17, w21, #16
	eor	w17, w2, w4
	mov	w4, #62322
	movk	w4, #15470, lsl #16
	ror	w16, w16, #12
	ror	w6, w6, #12
	extr	w26, w17, w2, #16
	add	w17, w20, w11
	add	w20, w22, w4
	eor	w4, w20, w23
	mov	w23, #62778
	add	w7, w7, w12
	movk	w23, #42319, lsl #16
	add	w7, w7, w16
	add	w27, w17, w6
	add	w23, w26, w23
	eor	w19, w7, w19
	eor	w3, w27, w3
	eor	w24, w23, w24
	ror	w28, w4, #12
	add	w21, w21, w13
	ror	w19, w19, #8
	add	w2, w2, w9
	ror	w24, w24, #12
	ror	w29, w3, #8
	add	w21, w21, w28
	stp	w5, w8, [sp, #48]               // 8-byte Folded Spill
	eor	w3, w21, w22
	add	w22, w19, w15
	add	w15, w2, w24
	add	w25, w29, w25
	eor	w2, w15, w26
	eor	w26, w25, w6
	ldp	w8, w4, [x1, #32]
	eor	w30, w22, w16
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	ldp	w16, w0, [x1, #56]
	ror	w26, w26, #7
	ror	w2, w2, #8
	ror	w30, w30, #7
	ror	w3, w3, #8
	add	w7, w7, w8
	mov	w6, w8
	add	w10, w7, w26
	add	w15, w15, w16
	add	w23, w2, w23
	eor	w8, w10, w2
	add	w15, w15, w30
	str	w13, [sp, #64]                  // 4-byte Folded Spill
	mov	w13, w9
	add	w20, w3, w20
	eor	w24, w23, w24
	eor	w9, w15, w3
	str	w12, [sp, #40]                  // 4-byte Folded Spill
	mov	w12, w11
	eor	w28, w20, w28
	ror	w8, w8, #16
	ldp	w3, w11, [x1, #48]
	ldp	w2, w7, [x1, #40]
	ror	w24, w24, #7
	ror	w9, w9, #16
	ror	w1, w28, #7
	add	w20, w8, w20
	add	w21, w21, w3
	eor	w26, w20, w26
	add	w27, w27, w2
	add	w25, w9, w25
	add	w21, w21, w24
	add	w27, w27, w1
	eor	w28, w25, w30
	eor	w29, w21, w29
	eor	w19, w27, w19
	ror	w26, w26, #12
	add	w10, w10, w4
	add	w15, w15, w0
	ror	w28, w28, #12
	ror	w29, w29, #16
	ror	w19, w19, #16
	add	w10, w10, w26
	eor	w8, w10, w8
	add	w21, w21, w11
	add	w15, w15, w28
	add	w22, w29, w22
	add	w23, w19, w23
	eor	w9, w15, w9
	eor	w24, w22, w24
	eor	w1, w23, w1
	ror	w8, w8, #8
	add	w27, w27, w7
	ror	w9, w9, #8
	add	w10, w10, w5
	ror	w24, w24, #12
	ror	w1, w1, #12
	add	w20, w8, w20
	ldr	w5, [sp, #52]                   // 4-byte Folded Reload
	add	w25, w9, w25
	eor	w26, w20, w26
	add	w21, w21, w24
	add	w27, w27, w1
	eor	w28, w25, w28
	eor	w29, w21, w29
	eor	w19, w27, w19
	ror	w26, w26, #7
	add	w27, w27, w12
	add	w15, w15, w5
	ror	w28, w28, #7
	ror	w29, w29, #8
	ror	w19, w19, #8
	add	w27, w27, w26
	add	w21, w21, w13
	mov	w30, w12
	add	w10, w10, w28
	add	w22, w29, w22
	eor	w29, w27, w29
	add	w23, w19, w23
	eor	w19, w10, w19
	eor	w24, w22, w24
	eor	w1, w23, w1
	add	w27, w27, w2
	ror	w29, w29, #16
	add	w10, w10, w14
	ror	w19, w19, #16
	ror	w24, w24, #7
	ror	w1, w1, #7
	str	w12, [sp, #68]                  // 4-byte Folded Spill
	add	w25, w29, w25
	ldr	w12, [sp, #76]                  // 4-byte Folded Reload
	add	w22, w19, w22
	add	w15, w15, w24
	eor	w26, w25, w26
	add	w21, w21, w1
	eor	w28, w22, w28
	eor	w8, w15, w8
	eor	w9, w21, w9
	add	w15, w15, w11
	ror	w26, w26, #12
	add	w21, w21, w12
	ror	w28, w28, #12
	ror	w8, w8, #16
	ror	w9, w9, #16
	ldr	w17, [sp, #40]                  // 4-byte Folded Reload
	add	w27, w27, w26
	ldr	w12, [sp, #64]                  // 4-byte Folded Reload
	add	w10, w10, w28
	add	w23, w8, w23
	eor	w29, w27, w29
	add	w20, w9, w20
	eor	w24, w23, w24
	eor	w19, w10, w19
	eor	w1, w20, w1
	add	w10, w10, w17
	ror	w29, w29, #8
	add	w27, w27, w3
	ror	w24, w24, #12
	ror	w19, w19, #8
	ror	w1, w1, #12
	stp	w13, w14, [sp, #56]             // 8-byte Folded Spill
	add	w25, w29, w25
	str	w11, [sp, #44]                  // 4-byte Folded Spill
	add	w15, w15, w24
	eor	w26, w25, w26
	add	w22, w19, w22
	add	w21, w21, w1
	eor	w8, w15, w8
	eor	w28, w22, w28
	eor	w9, w21, w9
	ror	w26, w26, #7
	add	w15, w15, w0
	add	w21, w21, w4
	ror	w8, w8, #8
	ror	w28, w28, #7
	ror	w9, w9, #8
	add	w10, w10, w26
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	mov	w0, w5
	add	w23, w8, w23
	eor	w8, w10, w8
	add	w15, w15, w28
	add	w20, w9, w20
	eor	w24, w23, w24
	eor	w9, w15, w9
	eor	w1, w20, w1
	ror	w8, w8, #16
	add	w10, w10, w7
	add	w15, w15, w6
	ror	w24, w24, #7
	ror	w9, w9, #16
	ror	w1, w1, #7
	add	w20, w8, w20
	eor	w26, w20, w26
	str	w6, [sp, #16]                   // 4-byte Folded Spill
	add	w21, w21, w24
	add	w25, w9, w25
	add	w27, w27, w1
	eor	w29, w21, w29
	eor	w28, w25, w28
	eor	w19, w27, w19
	ror	w26, w26, #12
	add	w21, w21, w16
	ror	w29, w29, #16
	add	w27, w27, w12
	ror	w28, w28, #12
	ror	w19, w19, #16
	add	w10, w10, w26
	str	w16, [sp, #36]                  // 4-byte Folded Spill
	eor	w8, w10, w8
	add	w22, w29, w22
	add	w15, w15, w28
	add	w23, w19, w23
	eor	w24, w22, w24
	eor	w9, w15, w9
	eor	w1, w23, w1
	ror	w8, w8, #8
	add	w10, w10, w30
	add	w15, w15, w13
	ror	w24, w24, #12
	ror	w9, w9, #8
	ror	w1, w1, #12
	add	w20, w8, w20
	eor	w26, w20, w26
	ldr	w13, [sp, #48]                  // 4-byte Folded Reload
	add	w21, w21, w24
	add	w25, w9, w25
	add	w27, w27, w1
	eor	w29, w21, w29
	eor	w28, w25, w28
	eor	w19, w27, w19
	ror	w26, w26, #7
	add	w27, w27, w2
	ror	w29, w29, #8
	add	w21, w21, w11
	ror	w28, w28, #7
	ror	w19, w19, #8
	add	w27, w27, w26
	str	w2, [sp, #20]                   // 4-byte Folded Spill
	add	w22, w29, w22
	eor	w29, w27, w29
	add	w10, w10, w28
	add	w23, w19, w23
	eor	w24, w22, w24
	eor	w19, w10, w19
	eor	w1, w23, w1
	ror	w29, w29, #16
	add	w27, w27, w3
	add	w10, w10, w5
	ror	w24, w24, #7
	ror	w19, w19, #16
	ror	w1, w1, #7
	add	w25, w29, w25
	eor	w26, w25, w26
	ldr	w5, [sp, #44]                   // 4-byte Folded Reload
	add	w15, w15, w24
	add	w22, w19, w22
	eor	w8, w15, w8
	eor	w28, w22, w28
	add	w21, w21, w1
	ror	w26, w26, #12
	eor	w9, w21, w9
	add	w15, w15, w16
	ror	w8, w8, #16
	ror	w28, w28, #12
	add	w27, w27, w26
	add	w21, w21, w13
	ror	w9, w9, #16
	eor	w29, w27, w29
	add	w23, w8, w23
	add	w10, w10, w28
	eor	w24, w23, w24
	eor	w19, w10, w19
	add	w20, w9, w20
	ror	w29, w29, #8
	eor	w1, w20, w1
	add	w10, w10, w14
	ror	w24, w24, #12
	ror	w19, w19, #8
	add	w25, w29, w25
	ldr	w14, [sp, #76]                  // 4-byte Folded Reload
	ror	w1, w1, #12
	eor	w26, w25, w26
	add	w15, w15, w24
	add	w22, w19, w22
	eor	w8, w15, w8
	eor	w28, w22, w28
	add	w21, w21, w1
	ror	w26, w26, #7
	eor	w9, w21, w9
	add	w15, w15, w6
	ror	w8, w8, #8
	ror	w28, w28, #7
	add	w10, w10, w26
	add	w21, w21, w7
	ror	w9, w9, #8
	ldr	w6, [sp, #12]                   // 4-byte Folded Reload
	eor	w30, w10, w8
	add	w15, w15, w28
	add	w8, w8, w23
	add	w10, w10, w12
	add	w20, w9, w20
	eor	w9, w15, w9
	eor	w1, w20, w1
	ror	w30, w30, #16
	eor	w24, w8, w24
	add	w15, w15, w17
	ror	w9, w9, #16
	ldr	w12, [sp, #36]                  // 4-byte Folded Reload
	ror	w1, w1, #7
	add	w20, w30, w20
	eor	w23, w20, w26
	ror	w24, w24, #7
	add	w26, w27, w4
	add	w25, w9, w25
	add	w26, w26, w1
	eor	w27, w25, w28
	eor	w19, w26, w19
	add	w21, w21, w24
	eor	w29, w21, w29
	ror	w23, w23, #12
	ror	w27, w27, #12
	add	w26, w26, w14
	ror	w19, w19, #16
	add	w21, w21, w6
	ror	w29, w29, #16
	add	w10, w10, w23
	add	w15, w15, w27
	eor	w28, w10, w30
	add	w11, w19, w8
	eor	w9, w15, w9
	eor	w1, w11, w1
	add	w22, w29, w22
	eor	w24, w22, w24
	ror	w28, w28, #8
	ror	w9, w9, #8
	add	w10, w10, w2
	ror	w1, w1, #12
	add	w15, w15, w5
	ror	w24, w24, #12
	add	w20, w28, w20
	add	w25, w9, w25
	eor	w23, w20, w23
	add	w26, w26, w1
	eor	w27, w25, w27
	eor	w19, w26, w19
	add	w21, w21, w24
	eor	w29, w21, w29
	ror	w23, w23, #7
	ror	w27, w27, #7
	add	w26, w26, w3
	ror	w19, w19, #8
	add	w21, w21, w12
	ror	w29, w29, #8
	add	w26, w26, w23
	add	w10, w10, w27
	ldr	w16, [sp, #56]                  // 4-byte Folded Reload
	eor	w30, w10, w19
	add	w11, w19, w11
	eor	w1, w11, w1
	eor	w8, w26, w29
	add	w22, w29, w22
	add	w10, w10, w16
	eor	w24, w22, w24
	ror	w29, w30, #16
	ror	w1, w1, #7
	ror	w8, w8, #16
	add	w26, w26, w4
	ldr	w2, [sp, #68]                   // 4-byte Folded Reload
	ror	w19, w24, #7
	add	w22, w29, w22
	eor	w24, w22, w27
	add	w21, w21, w1
	add	w25, w8, w25
	eor	w9, w21, w9
	eor	w23, w25, w23
	add	w15, w15, w19
	eor	w27, w15, w28
	ror	w24, w24, #12
	ror	w9, w9, #16
	add	w21, w21, w2
	ror	w23, w23, #12
	add	w15, w15, w6
	ror	w27, w27, #16
	add	w10, w10, w24
	eor	w28, w10, w29
	add	w20, w9, w20
	add	w26, w26, w23
	eor	w1, w20, w1
	eor	w8, w26, w8
	add	w11, w27, w11
	eor	w19, w11, w19
	ror	w28, w28, #8
	ror	w1, w1, #12
	add	w10, w10, w0
	ror	w8, w8, #8
	mov	w30, w14
	ror	w19, w19, #12
	add	w22, w28, w22
	eor	w24, w22, w24
	add	w21, w21, w1
	add	w25, w8, w25
	eor	w9, w21, w9
	eor	w23, w25, w23
	add	w15, w15, w19
	eor	w27, w15, w27
	ror	w24, w24, #7
	ror	w9, w9, #8
	add	w15, w15, w17
	ror	w23, w23, #7
	add	w26, w26, w7
	ror	w27, w27, #8
	add	w15, w15, w24
	add	w20, w9, w20
	eor	w9, w15, w9
	add	w10, w10, w23
	eor	w1, w20, w1
	eor	w29, w10, w27
	add	w11, w27, w11
	eor	w19, w11, w19
	ror	w9, w9, #16
	ror	w1, w1, #7
	add	w10, w10, w14
	ldp	w14, w2, [sp, #60]              // 8-byte Folded Reload
	ror	w29, w29, #16
	ror	w19, w19, #7
	add	w25, w9, w25
	add	w26, w26, w1
	eor	w24, w25, w24
	eor	w27, w26, w28
	add	w20, w29, w20
	add	w21, w21, w2
	eor	w23, w20, w23
	add	w21, w21, w19
	ror	w24, w24, #12
	eor	w8, w21, w8
	ror	w27, w27, #16
	add	w15, w15, w14
	ror	w23, w23, #12
	str	w4, [sp, #8]                    // 4-byte Folded Spill
	add	w15, w15, w24
	ror	w8, w8, #16
	add	w11, w27, w11
	eor	w9, w15, w9
	add	w10, w10, w23
	eor	w1, w11, w1
	eor	w28, w10, w29
	add	w22, w8, w22
	ror	w9, w9, #8
	eor	w19, w22, w19
	ror	w1, w1, #12
	ldr	w4, [sp, #16]                   // 4-byte Folded Reload
	ror	w28, w28, #8
	add	w26, w26, w13
	add	w25, w9, w25
	ror	w19, w19, #12
	add	w26, w26, w1
	eor	w24, w25, w24
	add	w20, w28, w20
	eor	w27, w26, w27
	add	w21, w21, w4
	eor	w23, w20, w23
	add	w21, w21, w19
	ror	w24, w24, #7
	eor	w8, w21, w8
	ror	w27, w27, #8
	ldr	w17, [sp, #8]                   // 4-byte Folded Reload
	add	w10, w10, w3
	ror	w23, w23, #7
	add	w10, w10, w24
	ror	w8, w8, #8
	eor	w29, w10, w27
	add	w26, w26, w17
	add	w11, w27, w11
	add	w26, w26, w23
	eor	w1, w11, w1
	eor	w27, w26, w8
	add	w8, w8, w22
	ror	w29, w29, #16
	eor	w19, w8, w19
	ror	w1, w1, #7
	add	w21, w21, w6
	add	w15, w15, w12
	add	w10, w10, w5
	add	w8, w29, w8
	ror	w19, w19, #7
	eor	w22, w8, w24
	ror	w24, w27, #16
	add	w21, w21, w1
	add	w26, w26, w7
	add	w15, w15, w19
	eor	w9, w21, w9
	ror	w22, w22, #12
	add	w25, w24, w25
	eor	w27, w15, w28
	eor	w23, w25, w23
	ror	w9, w9, #16
	str	w3, [sp, #72]                   // 4-byte Folded Spill
	add	w10, w10, w22
	mov	w3, w6
	ror	w27, w27, #16
	ror	w23, w23, #12
	eor	w28, w10, w29
	add	w20, w9, w20
	eor	w1, w20, w1
	ldr	w6, [sp, #20]                   // 4-byte Folded Reload
	add	w11, w27, w11
	add	w26, w26, w23
	ror	w28, w28, #8
	eor	w19, w11, w19
	eor	w24, w26, w24
	ror	w29, w1, #12
	add	w15, w15, w4
	add	w21, w21, w6
	add	w1, w28, w8
	ror	w8, w19, #12
	ror	w24, w24, #8
	add	w21, w21, w29
	eor	w9, w21, w9
	eor	w22, w1, w22
	add	w15, w15, w8
	add	w21, w21, w30
	add	w19, w24, w25
	eor	w25, w15, w27
	ror	w9, w9, #8
	eor	w23, w19, w23
	ror	w22, w22, #7
	add	w15, w15, w14
	ror	w25, w25, #8
	add	w10, w10, w16
	add	w20, w9, w20
	ror	w23, w23, #7
	eor	w27, w20, w29
	add	w15, w15, w22
	add	w11, w25, w11
	add	w26, w26, w2
	eor	w8, w11, w8
	add	w10, w10, w23
	ror	w27, w27, #7
	eor	w9, w15, w9
	eor	w25, w10, w25
	ldr	w29, [sp, #52]                  // 4-byte Folded Reload
	ror	w8, w8, #7
	ldr	w12, [sp, #40]                  // 4-byte Folded Reload
	add	w26, w26, w27
	ror	w9, w9, #16
	eor	w28, w26, w28
	ror	w25, w25, #16
	add	w21, w21, w8
	mov	w0, w5
	eor	w24, w21, w24
	add	w19, w9, w19
	ror	w28, w28, #16
	add	w20, w25, w20
	eor	w22, w19, w22
	eor	w23, w20, w23
	ror	w24, w24, #16
	mov	w5, w2
	add	w11, w28, w11
	mov	w2, w13
	eor	w27, w11, w27
	add	w10, w10, w13
	add	w1, w24, w1
	ror	w22, w22, #12
	eor	w8, w1, w8
	ldr	w13, [sp, #68]                  // 4-byte Folded Reload
	ror	w23, w23, #12
	ror	w27, w27, #12
	add	w15, w15, w29
	add	w21, w21, w12
	ror	w8, w8, #12
	add	w15, w15, w22
	add	w26, w26, w13
	add	w10, w10, w23
	eor	w9, w15, w9
	add	w26, w26, w27
	add	w21, w21, w8
	eor	w25, w10, w25
	eor	w24, w21, w24
	eor	w28, w26, w28
	ror	w9, w9, #8
	add	w10, w10, w17
	ror	w25, w25, #8
	add	w15, w15, w3
	ror	w24, w24, #8
	ror	w28, w28, #8
	add	w19, w9, w19
	add	w26, w26, w7
	eor	w22, w19, w22
	add	w20, w25, w20
	add	w1, w24, w1
	add	w11, w28, w11
	eor	w8, w1, w8
	eor	w23, w20, w23
	eor	w27, w11, w27
	ror	w22, w22, #7
	add	w21, w21, w4
	mov	w16, w3
	ror	w8, w8, #7
	ror	w23, w23, #7
	ror	w27, w27, #7
	add	w10, w10, w22
	eor	w28, w10, w28
	ldr	w3, [sp, #36]                   // 4-byte Folded Reload
	add	w15, w15, w8
	add	w26, w26, w23
	add	w21, w21, w27
	eor	w25, w15, w25
	eor	w24, w26, w24
	eor	w9, w21, w9
	ror	w28, w28, #16
	ldr	w14, [sp, #72]                  // 4-byte Folded Reload
	ror	w25, w25, #16
	add	w10, w10, w3
	ror	w24, w24, #16
	ror	w9, w9, #16
	add	w1, w28, w1
	add	w15, w15, w12
	add	w11, w25, w11
	eor	w22, w1, w22
	add	w19, w24, w19
	add	w20, w9, w20
	eor	w8, w11, w8
	eor	w23, w19, w23
	eor	w27, w20, w27
	ror	w22, w22, #12
	add	w26, w26, w5
	add	w21, w21, w14
	ror	w8, w8, #12
	ror	w23, w23, #12
	ror	w27, w27, #12
	add	w10, w10, w22
	eor	w28, w10, w28
	add	w10, w10, w0
	add	w15, w15, w8
	add	w26, w26, w23
	add	w21, w21, w27
	eor	w25, w15, w25
	eor	w24, w26, w24
	eor	w9, w21, w9
	ror	w28, w28, #8
	add	w21, w21, w2
	ror	w25, w25, #8
	add	w15, w15, w29
	ror	w24, w24, #8
	ror	w9, w9, #8
	add	w1, w28, w1
	add	w26, w26, w30
	add	w11, w25, w11
	eor	w22, w1, w22
	add	w19, w24, w19
	add	w20, w9, w20
	eor	w8, w11, w8
	eor	w23, w19, w23
	eor	w27, w20, w27
	ror	w22, w22, #7
	mov	w14, w12
	mov	w2, w13
	ror	w8, w8, #7
	ror	w23, w23, #7
	ror	w27, w27, #7
	add	w15, w15, w22
	eor	w9, w15, w9
	mov	w0, w6
	add	w21, w21, w8
	add	w10, w10, w23
	eor	w24, w21, w24
	add	w26, w26, w27
	eor	w25, w10, w25
	eor	w28, w26, w28
	ror	w9, w9, #16
	add	w10, w10, w13
	ror	w24, w24, #16
	add	w26, w26, w6
	ror	w25, w25, #16
	ror	w28, w28, #16
	add	w19, w9, w19
	add	w1, w24, w1
	eor	w22, w19, w22
	add	w20, w25, w20
	eor	w8, w1, w8
	add	w11, w28, w11
	eor	w23, w20, w23
	eor	w27, w11, w27
	ror	w22, w22, #12
	ldp	w12, w13, [sp, #56]             // 8-byte Folded Reload
	ror	w8, w8, #12
	ror	w23, w23, #12
	ror	w27, w27, #12
	add	w21, w21, w13
	add	w15, w15, w12
	add	w21, w21, w8
	add	w15, w15, w22
	add	w10, w10, w23
	eor	w24, w21, w24
	eor	w9, w15, w9
	add	w26, w26, w27
	eor	w25, w10, w25
	eor	w28, w26, w28
	ror	w24, w24, #8
	add	w10, w10, w7
	ror	w9, w9, #8
	add	w5, w26, w5
	ror	w7, w25, #8
	ror	w25, w28, #8
	add	w1, w24, w1
	add	w15, w15, w4
	add	w19, w9, w19
	eor	w8, w1, w8
	add	w20, w7, w20
	eor	w22, w19, w22
	add	w11, w25, w11
	eor	w23, w20, w23
	eor	w26, w11, w27
	ror	w8, w8, #7
	ror	w22, w22, #7
	add	w21, w21, w14
	ror	w4, w23, #7
	ror	w23, w26, #7
	add	w15, w15, w8
	add	w10, w10, w22
	eor	w7, w15, w7
	eor	w25, w10, w25
	add	w5, w5, w4
	add	w21, w21, w23
	eor	w24, w5, w24
	eor	w9, w21, w9
	ror	w7, w7, #16
	ror	w6, w25, #16
	add	w17, w21, w17
	ror	w24, w24, #16
	add	w14, w15, w13
	ror	w9, w9, #16
	add	w11, w7, w11
	add	w1, w6, w1
	eor	w8, w11, w8
	eor	w22, w1, w22
	add	w19, w24, w19
	add	w20, w9, w20
	eor	w4, w19, w4
	eor	w23, w20, w23
	ror	w8, w8, #12
	ror	w21, w22, #12
	add	w10, w10, w16
	ror	w15, w4, #12
	add	w5, w5, w30
	ror	w4, w23, #12
	add	w14, w14, w8
	add	w10, w10, w21
	eor	w7, w14, w7
	eor	w6, w10, w6
	add	w5, w5, w15
	add	w17, w17, w4
	eor	w22, w5, w24
	eor	w9, w17, w9
	ldr	w13, [sp, #48]                  // 4-byte Folded Reload
	ror	w7, w7, #8
	ror	w16, w6, #8
	add	w17, w17, w2
	add	w14, w14, w12
	add	w13, w5, w13
	ror	w5, w22, #8
	ror	w9, w9, #8
	add	w11, w7, w11
	add	w1, w16, w1
	eor	w8, w11, w8
	eor	w6, w1, w21
	add	w19, w5, w19
	add	w20, w9, w20
	eor	w15, w19, w15
	eor	w4, w20, w4
	ror	w8, w8, #7
	ror	w6, w6, #7
	add	w10, w10, w3
	ror	w15, w15, #7
	ldr	w12, [sp, #72]                  // 4-byte Folded Reload
	ror	w4, w4, #7
	add	w17, w17, w8
	add	w14, w14, w6
	eor	w5, w17, w5
	add	w10, w10, w15
	eor	w9, w14, w9
	add	w13, w13, w4
	eor	w7, w10, w7
	eor	w16, w13, w16
	ror	w5, w5, #16
	ror	w9, w9, #16
	add	w13, w13, w12
	ror	w2, w7, #16
	ldr	w12, [sp, #44]                  // 4-byte Folded Reload
	ror	w16, w16, #16
	add	w1, w5, w1
	add	w3, w9, w19
	eor	w8, w1, w8
	add	w7, w2, w20
	eor	w6, w3, w6
	add	w11, w16, w11
	eor	w15, w7, w15
	eor	w4, w11, w4
	ror	w8, w8, #12
	ror	w6, w6, #12
	add	w12, w14, w12
	ror	w14, w15, #12
	add	w17, w17, w29
	ror	w15, w4, #12
	add	w10, w10, w0
	add	w17, w17, w8
	add	w12, w12, w6
	eor	w4, w17, w5
	add	w10, w10, w14
	eor	w9, w12, w9
	add	w13, w13, w15
	eor	w2, w10, w2
	eor	w16, w13, w16
	ror	w4, w4, #8
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ror	w9, w9, #8
	ror	w2, w2, #8
	ror	w16, w16, #8
	add	w1, w4, w1
	add	w3, w9, w3
	eor	w8, w1, w8
	eor	w10, w1, w10
	eor	w1, w3, w6
	eor	w13, w3, w13
	add	w3, w2, w7
	add	w11, w16, w11
	eor	w14, w3, w14
	eor	w15, w11, w15
	eor	w17, w3, w17
	ldp	x20, x19, [sp, #160]            // 16-byte Folded Reload
	eor	w11, w12, w11
	stp	w10, w13, [x0]
	ldp	x22, x21, [sp, #144]            // 16-byte Folded Reload
	eor	w10, w16, w1, ror #7
	eor	w12, w4, w14, ror #7
	ldp	x24, x23, [sp, #128]            // 16-byte Folded Reload
	eor	w9, w9, w15, ror #7
	eor	w8, w2, w8, ror #7
	ldp	x26, x25, [sp, #112]            // 16-byte Folded Reload
	stp	w17, w11, [x0, #8]
	ldp	x28, x27, [sp, #96]             // 16-byte Folded Reload
	stp	w10, w12, [x0, #16]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	stp	w9, w8, [x0, #24]
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	blake3_compress_in_place_portable, .Lfunc_end0-blake3_compress_in_place_portable
	.cfi_endproc
                                        // -- End function
	.ident	"clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
