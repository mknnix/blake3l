	.file	"blake3l_x64_sse41.c"
	.text
	.p2align 4,,15
	.globl	blake3_compress_in_place_sse41
	.type	blake3_compress_in_place_sse41, @function
blake3_compress_in_place_sse41:
.LFB4775:
	.cfi_startproc
	movzbl	%dl, %edx
	movq	%rcx, %rax
	movzbl	%r8b, %r8d
	movl	%edx, -12(%rsp)
	shrq	$32, %rax
	movd	-12(%rsp), %xmm3
	movl	%ecx, -12(%rsp)
	movd	-12(%rsp), %xmm0
	movdqu	(%rsi), %xmm5
	pinsrd	$1, %r8d, %xmm3
	pinsrd	$1, %eax, %xmm0
	movdqu	16(%rsi), %xmm8
	movaps	%xmm5, %xmm2
	punpcklqdq	%xmm3, %xmm0
	shufps	$136, %xmm8, %xmm2
	movdqu	16(%rdi), %xmm1
	shufps	$221, %xmm8, %xmm5
	movdqu	(%rdi), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm2, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	.LC0(%rip), %xmm4
	paddd	%xmm5, %xmm6
	pshufb	%xmm4, %xmm0
	movdqa	.LC1(%rip), %xmm7
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm1
	movdqu	32(%rsi), %xmm10
	movdqa	%xmm1, %xmm3
	psrld	$12, %xmm1
	movdqu	48(%rsi), %xmm11
	movaps	%xmm10, %xmm8
	pslld	$20, %xmm3
	pxor	%xmm3, %xmm1
	movdqa	.LC2(%rip), %xmm3
	shufps	$136, %xmm11, %xmm8
	shufps	$221, %xmm11, %xmm10
	paddd	%xmm1, %xmm6
	pxor	%xmm6, %xmm0
	pshufd	$147, %xmm8, %xmm8
	pshufd	$147, %xmm6, %xmm6
	pshufb	%xmm3, %xmm0
	pshufd	$147, %xmm10, %xmm10
	paddd	%xmm8, %xmm6
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm1
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm7, %xmm7
	movdqa	%xmm1, %xmm9
	psrld	$7, %xmm1
	pslld	$25, %xmm9
	pxor	%xmm9, %xmm1
	paddd	%xmm1, %xmm6
	pxor	%xmm6, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm1
	movdqa	%xmm1, %xmm12
	movdqa	%xmm1, %xmm9
	movdqa	%xmm10, %xmm1
	pslld	$20, %xmm12
	psrld	$12, %xmm9
	pxor	%xmm12, %xmm9
	paddd	%xmm9, %xmm1
	paddd	%xmm1, %xmm6
	pxor	%xmm6, %xmm0
	pshufd	$57, %xmm6, %xmm6
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm9
	pshufd	$78, %xmm0, %xmm0
	movdqa	%xmm9, %xmm1
	psrld	$7, %xmm9
	pslld	$25, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$147, %xmm7, %xmm1
	movaps	%xmm2, %xmm7
	pshufd	$15, %xmm2, %xmm2
	shufps	$214, %xmm5, %xmm7
	pshufd	$57, %xmm7, %xmm7
	paddd	%xmm7, %xmm6
	paddd	%xmm9, %xmm6
	pxor	%xmm6, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm11
	psrld	$12, %xmm9
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm9
	movaps	%xmm8, %xmm11
	shufps	$250, %xmm10, %xmm11
	pblendw	$204, %xmm11, %xmm2
	movdqa	%xmm2, %xmm11
	paddd	%xmm9, %xmm11
	paddd	%xmm11, %xmm6
	pxor	%xmm6, %xmm0
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm11
	psrld	$7, %xmm9
	pslld	$25, %xmm11
	pxor	%xmm11, %xmm9
	pshufd	$147, %xmm6, %xmm11
	movdqa	%xmm10, %xmm6
	punpcklqdq	%xmm5, %xmm6
	punpckhdq	%xmm10, %xmm5
	pblendw	$192, %xmm8, %xmm6
	punpckldq	%xmm5, %xmm8
	pshufd	$120, %xmm6, %xmm6
	pshufd	$30, %xmm8, %xmm10
	paddd	%xmm6, %xmm11
	paddd	%xmm9, %xmm11
	pxor	%xmm11, %xmm0
	movaps	%xmm7, %xmm8
	pshufd	$15, %xmm7, %xmm7
	movdqa	%xmm10, %xmm5
	pshufb	%xmm4, %xmm0
	shufps	$214, %xmm2, %xmm8
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$57, %xmm8, %xmm8
	movdqa	%xmm9, %xmm12
	psrld	$12, %xmm9
	movaps	%xmm8, %xmm13
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm9
	paddd	%xmm9, %xmm5
	paddd	%xmm5, %xmm11
	pxor	%xmm11, %xmm0
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm5
	psrld	$7, %xmm9
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm9
	pshufd	$57, %xmm11, %xmm5
	paddd	%xmm8, %xmm5
	paddd	%xmm9, %xmm5
	pxor	%xmm5, %xmm0
	pshufd	$15, %xmm8, %xmm8
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm11
	psrld	$12, %xmm9
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm9
	movaps	%xmm6, %xmm11
	shufps	$250, %xmm10, %xmm11
	pblendw	$204, %xmm11, %xmm7
	movdqa	%xmm7, %xmm11
	shufps	$214, %xmm7, %xmm13
	paddd	%xmm9, %xmm11
	paddd	%xmm11, %xmm5
	pxor	%xmm5, %xmm0
	pshufd	$57, %xmm13, %xmm13
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm11
	psrld	$7, %xmm9
	pslld	$25, %xmm11
	pxor	%xmm11, %xmm9
	pshufd	$147, %xmm5, %xmm11
	movdqa	%xmm10, %xmm5
	punpcklqdq	%xmm2, %xmm5
	punpckhdq	%xmm10, %xmm2
	pblendw	$192, %xmm6, %xmm5
	punpckldq	%xmm2, %xmm6
	pshufd	$120, %xmm5, %xmm5
	pshufd	$30, %xmm6, %xmm6
	paddd	%xmm5, %xmm11
	paddd	%xmm9, %xmm11
	pxor	%xmm11, %xmm0
	movdqa	%xmm6, %xmm2
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm12
	psrld	$12, %xmm9
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm9
	movdqa	%xmm6, %xmm12
	paddd	%xmm9, %xmm2
	paddd	%xmm2, %xmm11
	pxor	%xmm11, %xmm0
	punpcklqdq	%xmm7, %xmm12
	punpckhdq	%xmm6, %xmm7
	pshufb	%xmm3, %xmm0
	pblendw	$192, %xmm5, %xmm12
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm2
	psrld	$7, %xmm9
	pshufd	$120, %xmm12, %xmm12
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm9
	pshufd	$57, %xmm11, %xmm2
	paddd	%xmm13, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm10
	psrld	$12, %xmm9
	pslld	$20, %xmm10
	pxor	%xmm10, %xmm9
	movaps	%xmm5, %xmm10
	punpckldq	%xmm7, %xmm5
	movaps	%xmm13, %xmm7
	shufps	$250, %xmm6, %xmm10
	pshufd	$30, %xmm5, %xmm5
	pshufd	$15, %xmm13, %xmm13
	pblendw	$204, %xmm10, %xmm8
	movdqa	%xmm5, %xmm6
	movdqa	%xmm8, %xmm10
	shufps	$214, %xmm8, %xmm7
	paddd	%xmm9, %xmm10
	paddd	%xmm10, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm2, %xmm2
	pshufd	$57, %xmm7, %xmm7
	pshufb	%xmm3, %xmm0
	paddd	%xmm12, %xmm2
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm10
	psrld	$7, %xmm9
	pslld	$25, %xmm10
	pxor	%xmm10, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm10
	psrld	$12, %xmm9
	pslld	$20, %xmm10
	pxor	%xmm10, %xmm9
	paddd	%xmm9, %xmm6
	paddd	%xmm6, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$57, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	paddd	%xmm7, %xmm2
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm6
	psrld	$7, %xmm9
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm6
	psrld	$12, %xmm9
	pslld	$20, %xmm6
	pxor	%xmm6, %xmm9
	movaps	%xmm12, %xmm6
	shufps	$250, %xmm5, %xmm6
	pblendw	$204, %xmm6, %xmm13
	movdqa	%xmm13, %xmm6
	paddd	%xmm9, %xmm6
	paddd	%xmm6, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm6
	psrld	$7, %xmm9
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm9
	movdqa	%xmm5, %xmm6
	punpcklqdq	%xmm8, %xmm6
	punpckhdq	%xmm5, %xmm8
	pblendw	$192, %xmm12, %xmm6
	punpckldq	%xmm8, %xmm12
	pshufd	$120, %xmm6, %xmm6
	pshufd	$30, %xmm12, %xmm12
	paddd	%xmm6, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	%xmm12, %xmm5
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm10
	psrld	$12, %xmm9
	pslld	$20, %xmm10
	pxor	%xmm10, %xmm9
	movaps	%xmm7, %xmm10
	pshufd	$15, %xmm7, %xmm7
	paddd	%xmm9, %xmm5
	paddd	%xmm5, %xmm2
	pxor	%xmm2, %xmm0
	shufps	$214, %xmm13, %xmm10
	pshufd	$57, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	pshufd	$57, %xmm10, %xmm10
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	paddd	%xmm10, %xmm2
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm5
	psrld	$7, %xmm9
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm5
	psrld	$12, %xmm9
	pslld	$20, %xmm5
	pxor	%xmm5, %xmm9
	movaps	%xmm6, %xmm5
	shufps	$250, %xmm12, %xmm5
	pblendw	$204, %xmm5, %xmm7
	movdqa	%xmm7, %xmm5
	paddd	%xmm9, %xmm5
	paddd	%xmm5, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$57, %xmm1, %xmm8
	movdqa	%xmm12, %xmm1
	punpcklqdq	%xmm13, %xmm1
	movdqa	%xmm9, %xmm5
	psrld	$7, %xmm9
	punpckhdq	%xmm12, %xmm13
	pblendw	$192, %xmm6, %xmm1
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm9
	pshufd	$120, %xmm1, %xmm1
	pshufd	$78, %xmm0, %xmm5
	punpckldq	%xmm13, %xmm6
	paddd	%xmm1, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm5
	pshufd	$30, %xmm6, %xmm6
	pshufb	%xmm4, %xmm5
	movdqa	%xmm6, %xmm11
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	movdqa	%xmm9, %xmm0
	psrld	$12, %xmm9
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm9
	paddd	%xmm9, %xmm11
	paddd	%xmm11, %xmm2
	pxor	%xmm2, %xmm5
	movaps	%xmm10, %xmm11
	pshufd	$57, %xmm2, %xmm2
	pshufb	%xmm3, %xmm5
	shufps	$214, %xmm7, %xmm11
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	pshufd	$57, %xmm11, %xmm11
	pshufd	$78, %xmm5, %xmm5
	movdqa	%xmm9, %xmm0
	psrld	$7, %xmm9
	pshufd	$147, %xmm8, %xmm8
	paddd	%xmm11, %xmm2
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm2, %xmm11
	pshufd	$15, %xmm10, %xmm2
	pshufb	%xmm4, %xmm5
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	movdqa	%xmm9, %xmm0
	psrld	$12, %xmm9
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm9
	movaps	%xmm1, %xmm0
	shufps	$250, %xmm6, %xmm0
	pblendw	$204, %xmm0, %xmm2
	paddd	%xmm9, %xmm2
	paddd	%xmm11, %xmm2
	pxor	%xmm2, %xmm5
	pshufd	$147, %xmm2, %xmm2
	pshufb	%xmm3, %xmm5
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	pshufd	$78, %xmm5, %xmm5
	pshufd	$57, %xmm8, %xmm8
	movdqa	%xmm9, %xmm0
	psrld	$7, %xmm9
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm9
	movdqa	%xmm6, %xmm0
	punpcklqdq	%xmm7, %xmm0
	punpckhdq	%xmm6, %xmm7
	pblendw	$192, %xmm1, %xmm0
	punpckldq	%xmm7, %xmm1
	pshufd	$120, %xmm0, %xmm0
	pshufd	$30, %xmm1, %xmm1
	paddd	%xmm0, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm9, %xmm0
	pshufb	%xmm4, %xmm5
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	%xmm0, %xmm4
	psrld	$12, %xmm0
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	paddd	%xmm2, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm8, %xmm2
	pshufd	$57, %xmm1, %xmm1
	pshufb	%xmm3, %xmm5
	paddd	%xmm5, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$78, %xmm5, %xmm5
	pshufd	$147, %xmm2, %xmm2
	movdqa	%xmm0, %xmm3
	psrld	$7, %xmm0
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm0
	pxor	%xmm2, %xmm1
	pxor	%xmm5, %xmm0
	movups	%xmm1, (%rdi)
	movups	%xmm0, 16(%rdi)
	ret
	.cfi_endproc
.LFE4775:
	.size	blake3_compress_in_place_sse41, .-blake3_compress_in_place_sse41
	.p2align 4,,15
	.globl	blake3_compress_xof_sse41
	.type	blake3_compress_xof_sse41, @function
blake3_compress_xof_sse41:
.LFB4776:
	.cfi_startproc
	movzbl	%dl, %edx
	movq	%rcx, %rax
	movzbl	%r8b, %r8d
	movl	%edx, -12(%rsp)
	shrq	$32, %rax
	movd	-12(%rsp), %xmm3
	movl	%ecx, -12(%rsp)
	movd	-12(%rsp), %xmm0
	movdqu	(%rsi), %xmm5
	pinsrd	$1, %r8d, %xmm3
	pinsrd	$1, %eax, %xmm0
	movdqu	16(%rsi), %xmm8
	movaps	%xmm5, %xmm2
	punpcklqdq	%xmm3, %xmm0
	shufps	$136, %xmm8, %xmm2
	movdqu	16(%rdi), %xmm1
	shufps	$221, %xmm8, %xmm5
	movdqu	(%rdi), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm2, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	.LC0(%rip), %xmm4
	paddd	%xmm5, %xmm6
	pshufb	%xmm4, %xmm0
	movdqa	.LC1(%rip), %xmm7
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm1
	movdqu	32(%rsi), %xmm10
	movdqa	%xmm1, %xmm3
	psrld	$12, %xmm1
	movdqu	48(%rsi), %xmm11
	movaps	%xmm10, %xmm8
	pslld	$20, %xmm3
	pxor	%xmm3, %xmm1
	movdqa	.LC2(%rip), %xmm3
	shufps	$136, %xmm11, %xmm8
	shufps	$221, %xmm11, %xmm10
	paddd	%xmm1, %xmm6
	pxor	%xmm6, %xmm0
	pshufd	$147, %xmm8, %xmm8
	pshufd	$147, %xmm6, %xmm6
	pshufb	%xmm3, %xmm0
	pshufd	$147, %xmm10, %xmm10
	paddd	%xmm8, %xmm6
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm1
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm7, %xmm7
	movdqa	%xmm1, %xmm9
	psrld	$7, %xmm1
	pslld	$25, %xmm9
	pxor	%xmm9, %xmm1
	paddd	%xmm1, %xmm6
	pxor	%xmm6, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm1
	movdqa	%xmm1, %xmm12
	movdqa	%xmm1, %xmm9
	movdqa	%xmm10, %xmm1
	pslld	$20, %xmm12
	psrld	$12, %xmm9
	pxor	%xmm12, %xmm9
	paddd	%xmm9, %xmm1
	paddd	%xmm1, %xmm6
	pxor	%xmm6, %xmm0
	pshufd	$57, %xmm6, %xmm6
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm9
	pshufd	$78, %xmm0, %xmm0
	movdqa	%xmm9, %xmm1
	psrld	$7, %xmm9
	pslld	$25, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$147, %xmm7, %xmm1
	movaps	%xmm2, %xmm7
	pshufd	$15, %xmm2, %xmm2
	shufps	$214, %xmm5, %xmm7
	pshufd	$57, %xmm7, %xmm7
	paddd	%xmm7, %xmm6
	paddd	%xmm9, %xmm6
	pxor	%xmm6, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm11
	psrld	$12, %xmm9
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm9
	movaps	%xmm8, %xmm11
	shufps	$250, %xmm10, %xmm11
	pblendw	$204, %xmm11, %xmm2
	movdqa	%xmm2, %xmm11
	paddd	%xmm9, %xmm11
	paddd	%xmm11, %xmm6
	pxor	%xmm6, %xmm0
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm11
	psrld	$7, %xmm9
	pslld	$25, %xmm11
	pxor	%xmm11, %xmm9
	pshufd	$147, %xmm6, %xmm11
	movdqa	%xmm10, %xmm6
	punpcklqdq	%xmm5, %xmm6
	punpckhdq	%xmm10, %xmm5
	pblendw	$192, %xmm8, %xmm6
	punpckldq	%xmm5, %xmm8
	pshufd	$120, %xmm6, %xmm6
	pshufd	$30, %xmm8, %xmm10
	paddd	%xmm6, %xmm11
	paddd	%xmm9, %xmm11
	pxor	%xmm11, %xmm0
	movaps	%xmm7, %xmm8
	pshufd	$15, %xmm7, %xmm7
	movdqa	%xmm10, %xmm5
	pshufb	%xmm4, %xmm0
	shufps	$214, %xmm2, %xmm8
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$57, %xmm8, %xmm8
	movdqa	%xmm9, %xmm12
	psrld	$12, %xmm9
	movaps	%xmm8, %xmm13
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm9
	paddd	%xmm9, %xmm5
	paddd	%xmm5, %xmm11
	pxor	%xmm11, %xmm0
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm5
	psrld	$7, %xmm9
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm9
	pshufd	$57, %xmm11, %xmm5
	paddd	%xmm8, %xmm5
	paddd	%xmm9, %xmm5
	pxor	%xmm5, %xmm0
	pshufd	$15, %xmm8, %xmm8
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm11
	psrld	$12, %xmm9
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm9
	movaps	%xmm6, %xmm11
	shufps	$250, %xmm10, %xmm11
	pblendw	$204, %xmm11, %xmm7
	movdqa	%xmm7, %xmm11
	shufps	$214, %xmm7, %xmm13
	paddd	%xmm9, %xmm11
	paddd	%xmm11, %xmm5
	pxor	%xmm5, %xmm0
	pshufd	$57, %xmm13, %xmm13
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm11
	psrld	$7, %xmm9
	pslld	$25, %xmm11
	pxor	%xmm11, %xmm9
	pshufd	$147, %xmm5, %xmm11
	movdqa	%xmm10, %xmm5
	punpcklqdq	%xmm2, %xmm5
	punpckhdq	%xmm10, %xmm2
	pblendw	$192, %xmm6, %xmm5
	punpckldq	%xmm2, %xmm6
	pshufd	$120, %xmm5, %xmm5
	pshufd	$30, %xmm6, %xmm6
	paddd	%xmm5, %xmm11
	paddd	%xmm9, %xmm11
	pxor	%xmm11, %xmm0
	movdqa	%xmm6, %xmm2
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm12
	psrld	$12, %xmm9
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm9
	movdqa	%xmm6, %xmm12
	paddd	%xmm9, %xmm2
	paddd	%xmm2, %xmm11
	pxor	%xmm11, %xmm0
	punpcklqdq	%xmm7, %xmm12
	punpckhdq	%xmm6, %xmm7
	pshufb	%xmm3, %xmm0
	pblendw	$192, %xmm5, %xmm12
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm2
	psrld	$7, %xmm9
	pshufd	$120, %xmm12, %xmm12
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm9
	pshufd	$57, %xmm11, %xmm2
	paddd	%xmm13, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm10
	psrld	$12, %xmm9
	pslld	$20, %xmm10
	pxor	%xmm10, %xmm9
	movaps	%xmm5, %xmm10
	punpckldq	%xmm7, %xmm5
	movaps	%xmm13, %xmm7
	shufps	$250, %xmm6, %xmm10
	pshufd	$30, %xmm5, %xmm5
	pshufd	$15, %xmm13, %xmm13
	pblendw	$204, %xmm10, %xmm8
	movdqa	%xmm5, %xmm6
	movdqa	%xmm8, %xmm10
	shufps	$214, %xmm8, %xmm7
	paddd	%xmm9, %xmm10
	paddd	%xmm10, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm2, %xmm2
	pshufd	$57, %xmm7, %xmm7
	pshufb	%xmm3, %xmm0
	paddd	%xmm12, %xmm2
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm10
	psrld	$7, %xmm9
	pslld	$25, %xmm10
	pxor	%xmm10, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm10
	psrld	$12, %xmm9
	pslld	$20, %xmm10
	pxor	%xmm10, %xmm9
	paddd	%xmm9, %xmm6
	paddd	%xmm6, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$57, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	paddd	%xmm7, %xmm2
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm6
	psrld	$7, %xmm9
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm6
	psrld	$12, %xmm9
	pslld	$20, %xmm6
	pxor	%xmm6, %xmm9
	movaps	%xmm12, %xmm6
	shufps	$250, %xmm5, %xmm6
	pblendw	$204, %xmm6, %xmm13
	movdqa	%xmm13, %xmm6
	paddd	%xmm9, %xmm6
	paddd	%xmm6, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm1, %xmm1
	movdqa	%xmm9, %xmm6
	psrld	$7, %xmm9
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm9
	movdqa	%xmm5, %xmm6
	punpcklqdq	%xmm8, %xmm6
	punpckhdq	%xmm5, %xmm8
	pblendw	$192, %xmm12, %xmm6
	punpckldq	%xmm8, %xmm12
	pshufd	$120, %xmm6, %xmm6
	pshufd	$30, %xmm12, %xmm12
	paddd	%xmm6, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	%xmm12, %xmm5
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm10
	psrld	$12, %xmm9
	pslld	$20, %xmm10
	pxor	%xmm10, %xmm9
	movaps	%xmm7, %xmm10
	pshufd	$15, %xmm7, %xmm7
	paddd	%xmm9, %xmm5
	paddd	%xmm5, %xmm2
	pxor	%xmm2, %xmm0
	shufps	$214, %xmm13, %xmm10
	pshufd	$57, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	pshufd	$57, %xmm10, %xmm10
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$78, %xmm0, %xmm0
	paddd	%xmm10, %xmm2
	pshufd	$147, %xmm1, %xmm1
	movdqa	%xmm9, %xmm5
	psrld	$7, %xmm9
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm5
	psrld	$12, %xmm9
	pslld	$20, %xmm5
	pxor	%xmm5, %xmm9
	movaps	%xmm6, %xmm5
	shufps	$250, %xmm12, %xmm5
	pblendw	$204, %xmm5, %xmm7
	movdqa	%xmm7, %xmm5
	paddd	%xmm9, %xmm5
	paddd	%xmm5, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm2, %xmm2
	pshufb	%xmm3, %xmm0
	paddd	%xmm0, %xmm1
	pxor	%xmm1, %xmm9
	pshufd	$57, %xmm1, %xmm8
	movdqa	%xmm12, %xmm1
	punpcklqdq	%xmm13, %xmm1
	movdqa	%xmm9, %xmm5
	psrld	$7, %xmm9
	punpckhdq	%xmm12, %xmm13
	pblendw	$192, %xmm6, %xmm1
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm9
	pshufd	$120, %xmm1, %xmm1
	pshufd	$78, %xmm0, %xmm5
	punpckldq	%xmm13, %xmm6
	paddd	%xmm1, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm5
	pshufd	$30, %xmm6, %xmm6
	pshufb	%xmm4, %xmm5
	movdqa	%xmm6, %xmm11
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	movdqa	%xmm9, %xmm0
	psrld	$12, %xmm9
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm9
	paddd	%xmm9, %xmm11
	paddd	%xmm11, %xmm2
	pxor	%xmm2, %xmm5
	movaps	%xmm10, %xmm11
	pshufd	$57, %xmm2, %xmm2
	pshufb	%xmm3, %xmm5
	shufps	$214, %xmm7, %xmm11
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	pshufd	$57, %xmm11, %xmm11
	pshufd	$78, %xmm5, %xmm5
	movdqa	%xmm9, %xmm0
	psrld	$7, %xmm9
	pshufd	$147, %xmm8, %xmm8
	paddd	%xmm11, %xmm2
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm9
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm2, %xmm11
	pshufd	$15, %xmm10, %xmm2
	pshufb	%xmm4, %xmm5
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	movdqa	%xmm9, %xmm0
	psrld	$12, %xmm9
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm9
	movaps	%xmm1, %xmm0
	shufps	$250, %xmm6, %xmm0
	pblendw	$204, %xmm0, %xmm2
	paddd	%xmm9, %xmm2
	paddd	%xmm11, %xmm2
	pxor	%xmm2, %xmm5
	pshufd	$147, %xmm2, %xmm2
	pshufb	%xmm3, %xmm5
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm9
	pshufd	$78, %xmm5, %xmm5
	pshufd	$57, %xmm8, %xmm8
	movdqa	%xmm9, %xmm0
	psrld	$7, %xmm9
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm9
	movdqa	%xmm6, %xmm0
	punpcklqdq	%xmm7, %xmm0
	punpckhdq	%xmm6, %xmm7
	pblendw	$192, %xmm1, %xmm0
	punpckldq	%xmm7, %xmm1
	pshufd	$120, %xmm0, %xmm0
	pshufd	$30, %xmm1, %xmm1
	paddd	%xmm0, %xmm2
	paddd	%xmm9, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm2, %xmm10
	movdqa	%xmm9, %xmm0
	movdqa	%xmm8, %xmm2
	pshufb	%xmm4, %xmm5
	paddd	%xmm5, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	%xmm0, %xmm4
	psrld	$12, %xmm0
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm0
	paddd	%xmm0, %xmm1
	paddd	%xmm10, %xmm1
	pxor	%xmm1, %xmm5
	pshufd	$57, %xmm1, %xmm1
	pshufb	%xmm3, %xmm5
	paddd	%xmm5, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$78, %xmm5, %xmm5
	pshufd	$147, %xmm2, %xmm2
	movdqa	%xmm0, %xmm3
	psrld	$7, %xmm0
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm0
	pxor	%xmm2, %xmm1
	pxor	%xmm5, %xmm0
	movups	%xmm1, (%r9)
	movups	%xmm0, 16(%r9)
	movdqu	(%rdi), %xmm4
	pxor	%xmm4, %xmm2
	movups	%xmm2, 32(%r9)
	movdqu	16(%rdi), %xmm0
	pxor	%xmm0, %xmm5
	movups	%xmm5, 48(%r9)
	ret
	.cfi_endproc
.LFE4776:
	.size	blake3_compress_xof_sse41, .-blake3_compress_xof_sse41
	.p2align 4,,15
	.globl	blake3_hash_many_sse41
	.type	blake3_hash_many_sse41, @function
blake3_hash_many_sse41:
.LFB4783:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r10
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r11
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r12
	movq	%rsi, %rax
	movq	%r8, %rbx
	subq	$520, %rsp
	.cfi_def_cfa_offset 576
	cmpq	$3, %rsi
	movzbl	592(%rsp), %edx
	movl	576(%rsp), %edi
	movl	584(%rsp), %ecx
	movq	%rsi, 440(%rsp)
	movq	600(%rsp), %r13
	movb	%r9b, 454(%rsp)
	movl	%edi, 464(%rsp)
	movl	%edi, %ebp
	movl	%ecx, 468(%rsp)
	movb	%dl, 455(%rsp)
	jbe	.L5
	movl	%r9d, %esi
	movzbl	%r9b, %r9d
	movl	%ecx, %edx
	negl	%r9d
	orl	%edi, %edx
	leaq	-4(%rax), %rdi
	movl	%r9d, (%rsp)
	movq	%r12, %r14
	movq	%r13, %r9
	movd	(%rsp), %xmm6
	movq	%rdi, 456(%rsp)
	andl	$3, %edi
	movdqa	.LC0(%rip), %xmm8
	movq	%rax, %r15
	pshufd	$0, %xmm6, %xmm0
	movq	%r12, 472(%rsp)
	movdqa	.LC2(%rip), %xmm6
	movq	%rdi, %r12
	movb	%dl, 453(%rsp)
	movl	%esi, %r13d
	pand	.LC3(%rip), %xmm0
	movaps	%xmm0, 400(%rsp)
	pxor	.LC4(%rip), %xmm0
	movaps	%xmm0, 416(%rsp)
	.p2align 4,,10
	.p2align 3
.L10:
	movl	%ebx, 16(%rsp)
	movq	%rbx, %rax
	shrq	$32, %rax
	testq	%r10, %r10
	movd	12(%r11), %xmm7
	movd	(%r11), %xmm3
	pshufd	$0, %xmm7, %xmm7
	pshufd	$0, %xmm3, %xmm3
	movdqa	%xmm7, %xmm2
	movd	16(%r11), %xmm7
	movdqa	%xmm3, %xmm11
	pshufd	$0, %xmm7, %xmm7
	movdqa	%xmm3, %xmm13
	movd	4(%r11), %xmm3
	movdqa	%xmm7, %xmm4
	movd	20(%r11), %xmm7
	pshufd	$0, %xmm3, %xmm3
	pshufd	$0, %xmm7, %xmm7
	movdqa	%xmm3, %xmm10
	movaps	%xmm7, 256(%rsp)
	movdqa	%xmm3, %xmm14
	movd	24(%r11), %xmm7
	movd	8(%r11), %xmm3
	pshufd	$0, %xmm7, %xmm7
	pshufd	$0, %xmm3, %xmm3
	movdqa	%xmm7, %xmm5
	movaps	%xmm7, (%rsp)
	movdqa	%xmm3, %xmm15
	movd	28(%r11), %xmm7
	pshufd	$0, %xmm7, %xmm7
	movdqa	%xmm7, %xmm12
	movd	16(%rsp), %xmm7
	movq	%rax, 16(%rsp)
	pshufd	$0, %xmm7, %xmm0
	movd	16(%rsp), %xmm7
	pshufd	$0, %xmm7, %xmm1
	paddd	400(%rsp), %xmm0
	movaps	%xmm0, 368(%rsp)
	pxor	.LC4(%rip), %xmm0
	movdqa	416(%rsp), %xmm7
	pcmpgtd	%xmm0, %xmm7
	psubd	%xmm7, %xmm1
	je	.L6
	movq	(%r14), %rax
	movzbl	453(%rsp), %edi
	xorl	%r8d, %r8d
	movaps	%xmm1, 384(%rsp)
	movdqa	%xmm4, %xmm1
	leaq	256(%rax), %rsi
	movq	8(%r14), %rax
	leaq	256(%rax), %rcx
	movq	16(%r14), %rax
	leaq	256(%rax), %rdx
	movq	24(%r14), %rax
	addq	$256, %rax
	.p2align 4,,10
	.p2align 3
.L8:
	addq	$1, %r8
	cmpq	%r8, %r10
	je	.L34
.L7:
	movdqu	-256(%rsi), %xmm0
	prefetcht0	(%rsi)
	prefetcht0	(%rcx)
	prefetcht0	(%rdx)
	prefetcht0	(%rax)
	movzbl	%dil, %edi
	movdqu	-256(%rcx), %xmm4
	movdqa	%xmm0, %xmm9
	paddd	%xmm1, %xmm11
	movl	%edi, 272(%rsp)
	paddd	%xmm5, %xmm3
	paddd	%xmm12, %xmm2
	punpckldq	%xmm4, %xmm9
	movdqu	-256(%rax), %xmm13
	punpckhdq	%xmm4, %xmm0
	addq	$64, %rsi
	movdqu	-256(%rdx), %xmm4
	addq	$64, %rcx
	movdqa	%xmm9, %xmm14
	addq	$64, %rdx
	movdqa	%xmm4, %xmm7
	addq	$64, %rax
	punpckhdq	%xmm13, %xmm4
	movl	%ebp, %edi
	punpckldq	%xmm13, %xmm7
	movdqa	%xmm9, %xmm13
	movdqa	%xmm0, %xmm15
	punpcklqdq	%xmm7, %xmm14
	punpckhqdq	%xmm7, %xmm13
	movdqa	%xmm0, %xmm7
	punpcklqdq	%xmm4, %xmm15
	punpckhqdq	%xmm4, %xmm7
	movdqu	-304(%rsi), %xmm4
	movdqu	-304(%rcx), %xmm0
	movdqa	%xmm4, %xmm9
	punpckhdq	%xmm0, %xmm4
	punpckldq	%xmm0, %xmm9
	movdqu	-304(%rdx), %xmm0
	movaps	%xmm13, 16(%rsp)
	movaps	%xmm7, 48(%rsp)
	movdqa	%xmm0, %xmm7
	movdqu	-304(%rax), %xmm13
	punpckldq	%xmm13, %xmm7
	punpckhdq	%xmm13, %xmm0
	movdqa	%xmm9, %xmm13
	punpckhqdq	%xmm7, %xmm9
	punpcklqdq	%xmm7, %xmm13
	movdqa	%xmm4, %xmm7
	punpckhqdq	%xmm0, %xmm4
	punpcklqdq	%xmm0, %xmm7
	movdqu	-288(%rsi), %xmm0
	movaps	%xmm9, 80(%rsp)
	movdqa	%xmm0, %xmm9
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm13, 64(%rsp)
	movaps	%xmm7, 96(%rsp)
	movdqu	-288(%rcx), %xmm4
	punpckldq	%xmm4, %xmm9
	punpckhdq	%xmm4, %xmm0
	movdqu	-288(%rdx), %xmm4
	movdqu	-288(%rax), %xmm13
	movdqa	%xmm4, %xmm7
	punpckhdq	%xmm13, %xmm4
	punpckldq	%xmm13, %xmm7
	movdqa	%xmm9, %xmm13
	punpckhqdq	%xmm7, %xmm9
	punpcklqdq	%xmm7, %xmm13
	movdqa	%xmm0, %xmm7
	punpckhqdq	%xmm4, %xmm0
	punpcklqdq	%xmm4, %xmm7
	movdqu	-272(%rcx), %xmm4
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm9, 144(%rsp)
	movaps	%xmm13, 128(%rsp)
	movaps	%xmm7, 160(%rsp)
	movdqu	-272(%rsi), %xmm0
	movdqa	%xmm0, %xmm9
	punpckhdq	%xmm4, %xmm0
	movdqu	-272(%rax), %xmm13
	punpckldq	%xmm4, %xmm9
	movdqu	-272(%rdx), %xmm4
	cmpq	%r8, %r10
	movdqa	%xmm4, %xmm7
	punpckhdq	%xmm13, %xmm4
	punpckldq	%xmm13, %xmm7
	movdqa	%xmm9, %xmm13
	punpckhqdq	%xmm7, %xmm9
	punpcklqdq	%xmm7, %xmm13
	movdqa	%xmm0, %xmm7
	punpckhqdq	%xmm4, %xmm0
	punpcklqdq	%xmm4, %xmm7
	movaps	%xmm13, 192(%rsp)
	movaps	%xmm9, 208(%rsp)
	paddd	256(%rsp), %xmm10
	paddd	64(%rsp), %xmm3
	paddd	96(%rsp), %xmm2
	movaps	%xmm15, 32(%rsp)
	movaps	%xmm14, (%rsp)
	paddd	32(%rsp), %xmm10
	movaps	%xmm7, 224(%rsp)
	paddd	(%rsp), %xmm11
	movaps	%xmm0, 240(%rsp)
	movdqa	384(%rsp), %xmm4
	pxor	%xmm10, %xmm4
	paddd	48(%rsp), %xmm10
	movdqa	368(%rsp), %xmm15
	movdqa	%xmm4, %xmm9
	movd	272(%rsp), %xmm4
	pxor	%xmm11, %xmm15
	paddd	16(%rsp), %xmm11
	movdqa	.LC5(%rip), %xmm14
	pshufd	$0, %xmm4, %xmm7
	pshufb	%xmm8, %xmm9
	pshufb	%xmm8, %xmm15
	movdqa	.LC6(%rip), %xmm4
	pxor	%xmm3, %xmm14
	paddd	80(%rsp), %xmm3
	pxor	%xmm2, %xmm7
	movdqa	.LC8(%rip), %xmm0
	paddd	112(%rsp), %xmm2
	paddd	%xmm15, %xmm4
	movdqa	%xmm4, %xmm13
	pshufb	%xmm8, %xmm14
	movdqa	.LC7(%rip), %xmm4
	pxor	%xmm13, %xmm1
	pshufb	%xmm8, %xmm7
	paddd	%xmm9, %xmm4
	paddd	%xmm14, %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqa	.LC9(%rip), %xmm0
	pxor	272(%rsp), %xmm5
	paddd	%xmm7, %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	%xmm1, %xmm0
	psrld	$12, %xmm1
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm1
	movdqa	256(%rsp), %xmm0
	pxor	288(%rsp), %xmm12
	movaps	%xmm4, 256(%rsp)
	paddd	%xmm1, %xmm11
	pxor	%xmm11, %xmm15
	pxor	256(%rsp), %xmm0
	movdqa	%xmm0, %xmm4
	psrld	$12, %xmm0
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm0
	movdqa	%xmm5, %xmm4
	psrld	$12, %xmm5
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm5
	movdqa	%xmm12, %xmm4
	pslld	$20, %xmm12
	psrld	$12, %xmm4
	pxor	%xmm12, %xmm4
	paddd	%xmm5, %xmm3
	movdqa	%xmm10, %xmm12
	movdqa	%xmm15, %xmm10
	movaps	%xmm3, 320(%rsp)
	paddd	%xmm0, %xmm12
	pshufb	%xmm6, %xmm10
	paddd	%xmm4, %xmm2
	movaps	%xmm12, 304(%rsp)
	pxor	304(%rsp), %xmm9
	pxor	320(%rsp), %xmm14
	movaps	%xmm2, 336(%rsp)
	pxor	336(%rsp), %xmm7
	movaps	%xmm10, 352(%rsp)
	pshufb	%xmm6, %xmm9
	pshufb	%xmm6, %xmm14
	paddd	352(%rsp), %xmm13
	pxor	%xmm13, %xmm1
	movdqa	256(%rsp), %xmm10
	pshufb	%xmm6, %xmm7
	movdqa	272(%rsp), %xmm2
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	paddd	%xmm14, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	288(%rsp), %xmm3
	pslld	$25, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm0, %xmm15
	psrld	$7, %xmm0
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	pslld	$25, %xmm15
	pxor	%xmm15, %xmm0
	movdqa	%xmm5, %xmm15
	psrld	$7, %xmm5
	pslld	$25, %xmm15
	movdqa	%xmm15, %xmm1
	movdqa	%xmm5, %xmm15
	movdqa	%xmm4, %xmm5
	psrld	$7, %xmm4
	pxor	%xmm1, %xmm15
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm4
	movdqa	128(%rsp), %xmm5
	movaps	%xmm15, 256(%rsp)
	paddd	%xmm0, %xmm5
	paddd	%xmm5, %xmm11
	pxor	%xmm11, %xmm7
	movdqa	160(%rsp), %xmm5
	pshufb	%xmm8, %xmm7
	movdqa	224(%rsp), %xmm1
	paddd	256(%rsp), %xmm5
	paddd	304(%rsp), %xmm5
	movdqa	336(%rsp), %xmm15
	paddd	%xmm12, %xmm1
	paddd	%xmm7, %xmm2
	pxor	%xmm2, %xmm0
	movaps	%xmm5, 272(%rsp)
	paddd	%xmm1, %xmm15
	movdqa	%xmm15, %xmm1
	movaps	%xmm1, 304(%rsp)
	movdqa	%xmm0, %xmm1
	psrld	$12, %xmm0
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm0
	movdqa	192(%rsp), %xmm5
	pxor	304(%rsp), %xmm14
	movdqa	352(%rsp), %xmm15
	paddd	%xmm4, %xmm5
	paddd	320(%rsp), %xmm5
	movaps	%xmm5, 288(%rsp)
	pxor	272(%rsp), %xmm15
	pshufb	%xmm8, %xmm14
	pxor	288(%rsp), %xmm9
	movdqa	256(%rsp), %xmm5
	pshufb	%xmm8, %xmm15
	paddd	%xmm14, %xmm10
	pshufb	%xmm8, %xmm9
	paddd	%xmm15, %xmm3
	pxor	%xmm3, %xmm5
	paddd	%xmm9, %xmm13
	pxor	%xmm13, %xmm4
	movdqa	%xmm5, %xmm1
	psrld	$12, %xmm5
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm1
	psrld	$12, %xmm4
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm4
	movdqa	%xmm12, %xmm1
	pxor	%xmm10, %xmm1
	movdqa	%xmm1, %xmm12
	psrld	$12, %xmm1
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	144(%rsp), %xmm12
	paddd	%xmm0, %xmm12
	paddd	%xmm11, %xmm12
	movdqa	176(%rsp), %xmm11
	movaps	%xmm12, 256(%rsp)
	paddd	%xmm5, %xmm11
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	movdqa	208(%rsp), %xmm12
	movdqa	240(%rsp), %xmm11
	paddd	%xmm4, %xmm12
	paddd	288(%rsp), %xmm12
	paddd	%xmm1, %xmm11
	paddd	304(%rsp), %xmm11
	pxor	256(%rsp), %xmm7
	movaps	%xmm12, 288(%rsp)
	pxor	272(%rsp), %xmm15
	pxor	%xmm11, %xmm14
	pshufb	%xmm6, %xmm7
	pxor	288(%rsp), %xmm9
	paddd	%xmm7, %xmm2
	movaps	%xmm2, 304(%rsp)
	pshufb	%xmm6, %xmm15
	pshufb	%xmm6, %xmm14
	pshufb	%xmm6, %xmm9
	pxor	304(%rsp), %xmm0
	paddd	%xmm15, %xmm3
	paddd	%xmm14, %xmm10
	movdqa	112(%rsp), %xmm2
	pxor	%xmm3, %xmm5
	paddd	%xmm9, %xmm13
	pxor	%xmm13, %xmm4
	pxor	%xmm10, %xmm1
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm4, %xmm12
	psrld	$7, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm4
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	paddd	288(%rsp), %xmm2
	movaps	%xmm2, 288(%rsp)
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	32(%rsp), %xmm12
	pxor	288(%rsp), %xmm14
	paddd	%xmm1, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	movdqa	48(%rsp), %xmm12
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm12
	paddd	272(%rsp), %xmm12
	movaps	%xmm12, 272(%rsp)
	pshufb	%xmm8, %xmm14
	movdqa	64(%rsp), %xmm2
	pxor	272(%rsp), %xmm9
	paddd	%xmm4, %xmm2
	paddd	%xmm11, %xmm2
	movaps	%xmm2, 320(%rsp)
	pshufb	%xmm8, %xmm15
	pxor	320(%rsp), %xmm7
	paddd	%xmm15, %xmm13
	movdqa	304(%rsp), %xmm2
	pshufb	%xmm8, %xmm9
	pxor	%xmm13, %xmm1
	paddd	%xmm14, %xmm2
	movdqa	96(%rsp), %xmm12
	pxor	%xmm2, %xmm5
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	pshufb	%xmm8, %xmm7
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm1
	movdqa	%xmm0, %xmm11
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	psrld	$12, %xmm0
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm0
	paddd	%xmm1, %xmm12
	movdqa	%xmm5, %xmm11
	psrld	$12, %xmm5
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm5
	movdqa	%xmm4, %xmm11
	psrld	$12, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	160(%rsp), %xmm11
	movdqa	(%rsp), %xmm12
	paddd	%xmm0, %xmm11
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	paddd	%xmm5, %xmm12
	paddd	288(%rsp), %xmm12
	pxor	%xmm12, %xmm14
	movdqa	208(%rsp), %xmm11
	pshufb	%xmm6, %xmm14
	paddd	%xmm4, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	256(%rsp), %xmm15
	pxor	272(%rsp), %xmm9
	paddd	%xmm14, %xmm2
	pxor	%xmm11, %xmm7
	pshufb	%xmm6, %xmm15
	pxor	%xmm2, %xmm5
	pshufb	%xmm6, %xmm9
	paddd	%xmm15, %xmm13
	pxor	%xmm13, %xmm1
	pshufb	%xmm6, %xmm7
	paddd	%xmm9, %xmm10
	movaps	%xmm10, 288(%rsp)
	movdqa	%xmm1, %xmm10
	psrld	$7, %xmm1
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	pslld	$25, %xmm10
	pxor	%xmm10, %xmm1
	pxor	288(%rsp), %xmm0
	movdqa	192(%rsp), %xmm10
	movaps	%xmm1, 320(%rsp)
	movdqa	%xmm0, %xmm1
	psrld	$7, %xmm0
	pslld	$25, %xmm1
	pxor	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	psrld	$7, %xmm5
	pslld	$25, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm1
	psrld	$7, %xmm4
	pslld	$25, %xmm1
	pxor	%xmm1, %xmm4
	paddd	%xmm5, %xmm10
	movdqa	16(%rsp), %xmm1
	paddd	272(%rsp), %xmm10
	paddd	%xmm0, %xmm1
	paddd	256(%rsp), %xmm1
	movaps	%xmm1, 256(%rsp)
	movaps	%xmm10, 272(%rsp)
	movdqa	144(%rsp), %xmm1
	pxor	256(%rsp), %xmm7
	paddd	%xmm4, %xmm1
	paddd	%xmm12, %xmm1
	movaps	%xmm1, 304(%rsp)
	pxor	272(%rsp), %xmm15
	pxor	304(%rsp), %xmm9
	movdqa	320(%rsp), %xmm12
	pshufb	%xmm8, %xmm7
	movdqa	240(%rsp), %xmm1
	pshufb	%xmm8, %xmm15
	paddd	%xmm7, %xmm2
	paddd	%xmm12, %xmm1
	pxor	%xmm2, %xmm0
	paddd	%xmm11, %xmm1
	movaps	%xmm1, 320(%rsp)
	paddd	%xmm15, %xmm3
	pshufb	%xmm8, %xmm9
	pxor	%xmm3, %xmm5
	movdqa	%xmm0, %xmm1
	psrld	$12, %xmm0
	pxor	320(%rsp), %xmm14
	paddd	%xmm9, %xmm13
	pslld	$20, %xmm1
	movdqa	288(%rsp), %xmm10
	pxor	%xmm13, %xmm4
	pxor	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	psrld	$12, %xmm5
	movdqa	80(%rsp), %xmm11
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm1
	pshufb	%xmm8, %xmm14
	psrld	$12, %xmm4
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm4
	movdqa	%xmm12, %xmm1
	paddd	%xmm5, %xmm11
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	paddd	%xmm14, %xmm10
	pxor	%xmm10, %xmm1
	movdqa	%xmm1, %xmm12
	psrld	$12, %xmm1
	movdqa	128(%rsp), %xmm11
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	176(%rsp), %xmm12
	paddd	%xmm0, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	paddd	%xmm1, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	%xmm11, %xmm14
	pxor	256(%rsp), %xmm7
	movdqa	224(%rsp), %xmm12
	pshufb	%xmm6, %xmm14
	paddd	%xmm4, %xmm12
	paddd	304(%rsp), %xmm12
	pxor	272(%rsp), %xmm15
	movaps	%xmm12, 288(%rsp)
	pshufb	%xmm6, %xmm7
	paddd	%xmm14, %xmm10
	pxor	%xmm10, %xmm1
	paddd	%xmm7, %xmm2
	movaps	%xmm2, 304(%rsp)
	pxor	288(%rsp), %xmm9
	pshufb	%xmm6, %xmm15
	pxor	304(%rsp), %xmm0
	movdqa	208(%rsp), %xmm2
	pshufb	%xmm6, %xmm9
	paddd	%xmm15, %xmm3
	pxor	%xmm3, %xmm5
	movdqa	%xmm0, %xmm12
	paddd	%xmm9, %xmm13
	psrld	$7, %xmm0
	pxor	%xmm13, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm4, %xmm12
	psrld	$7, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm4
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	paddd	288(%rsp), %xmm2
	movaps	%xmm2, 288(%rsp)
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	48(%rsp), %xmm12
	pxor	288(%rsp), %xmm14
	paddd	%xmm1, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	movdqa	160(%rsp), %xmm12
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm12
	paddd	272(%rsp), %xmm12
	movaps	%xmm12, 272(%rsp)
	pshufb	%xmm8, %xmm14
	movdqa	112(%rsp), %xmm2
	pxor	272(%rsp), %xmm9
	paddd	%xmm4, %xmm2
	paddd	%xmm11, %xmm2
	movaps	%xmm2, 320(%rsp)
	pshufb	%xmm8, %xmm15
	pxor	320(%rsp), %xmm7
	paddd	%xmm15, %xmm13
	movdqa	304(%rsp), %xmm2
	pshufb	%xmm8, %xmm9
	pxor	%xmm13, %xmm1
	paddd	%xmm14, %xmm2
	movdqa	64(%rsp), %xmm12
	pxor	%xmm2, %xmm5
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	pshufb	%xmm8, %xmm7
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm1
	movdqa	%xmm0, %xmm11
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	psrld	$12, %xmm0
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm0
	paddd	%xmm1, %xmm12
	movdqa	%xmm5, %xmm11
	psrld	$12, %xmm5
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm5
	movdqa	%xmm4, %xmm11
	psrld	$12, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	192(%rsp), %xmm11
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm11
	movdqa	32(%rsp), %xmm12
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	paddd	%xmm5, %xmm12
	paddd	288(%rsp), %xmm12
	pxor	%xmm12, %xmm14
	pshufb	%xmm6, %xmm15
	movdqa	224(%rsp), %xmm11
	pshufb	%xmm6, %xmm14
	paddd	%xmm15, %xmm13
	paddd	%xmm4, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	272(%rsp), %xmm9
	paddd	%xmm14, %xmm2
	movaps	%xmm2, 288(%rsp)
	pxor	%xmm13, %xmm1
	pxor	%xmm11, %xmm7
	pshufb	%xmm6, %xmm9
	pxor	288(%rsp), %xmm5
	movdqa	%xmm1, %xmm2
	psrld	$7, %xmm1
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	pslld	$25, %xmm2
	pshufb	%xmm6, %xmm7
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	psrld	$7, %xmm0
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$7, %xmm5
	movaps	%xmm1, 320(%rsp)
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm4, %xmm2
	psrld	$7, %xmm4
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	96(%rsp), %xmm2
	paddd	%xmm0, %xmm2
	paddd	256(%rsp), %xmm2
	movaps	%xmm2, 256(%rsp)
	movdqa	144(%rsp), %xmm2
	pxor	256(%rsp), %xmm7
	paddd	%xmm5, %xmm2
	movdqa	176(%rsp), %xmm1
	paddd	272(%rsp), %xmm2
	movaps	%xmm2, 272(%rsp)
	paddd	%xmm4, %xmm1
	paddd	%xmm12, %xmm1
	movaps	%xmm1, 304(%rsp)
	pshufb	%xmm8, %xmm7
	pxor	272(%rsp), %xmm15
	movdqa	320(%rsp), %xmm12
	pxor	304(%rsp), %xmm9
	movdqa	128(%rsp), %xmm1
	movdqa	288(%rsp), %xmm2
	paddd	%xmm12, %xmm1
	paddd	%xmm11, %xmm1
	pshufb	%xmm8, %xmm15
	movaps	%xmm1, 320(%rsp)
	paddd	%xmm7, %xmm2
	pxor	%xmm2, %xmm0
	pshufb	%xmm8, %xmm9
	paddd	%xmm15, %xmm3
	pxor	%xmm3, %xmm5
	pxor	320(%rsp), %xmm14
	movdqa	%xmm0, %xmm1
	psrld	$12, %xmm0
	paddd	%xmm9, %xmm13
	movdqa	(%rsp), %xmm11
	pxor	%xmm13, %xmm4
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	psrld	$12, %xmm5
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm1
	pshufb	%xmm8, %xmm14
	psrld	$12, %xmm4
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm4
	paddd	%xmm5, %xmm11
	movdqa	%xmm12, %xmm1
	paddd	%xmm14, %xmm10
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	pxor	%xmm10, %xmm1
	movdqa	%xmm1, %xmm12
	psrld	$12, %xmm1
	movdqa	16(%rsp), %xmm11
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	80(%rsp), %xmm12
	pxor	272(%rsp), %xmm15
	paddd	%xmm0, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	paddd	%xmm1, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	%xmm11, %xmm14
	pxor	256(%rsp), %xmm7
	movdqa	240(%rsp), %xmm12
	pshufb	%xmm6, %xmm15
	paddd	%xmm4, %xmm12
	paddd	304(%rsp), %xmm12
	movaps	%xmm12, 288(%rsp)
	pxor	288(%rsp), %xmm9
	paddd	%xmm15, %xmm3
	pshufb	%xmm6, %xmm7
	pxor	%xmm3, %xmm5
	pshufb	%xmm6, %xmm14
	paddd	%xmm7, %xmm2
	movaps	%xmm2, 304(%rsp)
	pshufb	%xmm6, %xmm9
	paddd	%xmm14, %xmm10
	pxor	%xmm10, %xmm1
	pxor	304(%rsp), %xmm0
	paddd	%xmm9, %xmm13
	movdqa	224(%rsp), %xmm2
	pxor	%xmm13, %xmm4
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm4, %xmm12
	psrld	$7, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm4
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	paddd	288(%rsp), %xmm2
	movaps	%xmm2, 288(%rsp)
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	160(%rsp), %xmm12
	pxor	288(%rsp), %xmm14
	paddd	%xmm1, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	movdqa	192(%rsp), %xmm12
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm12
	paddd	272(%rsp), %xmm12
	movaps	%xmm12, 272(%rsp)
	pshufb	%xmm8, %xmm14
	movdqa	208(%rsp), %xmm2
	pxor	272(%rsp), %xmm9
	paddd	%xmm4, %xmm2
	paddd	%xmm11, %xmm2
	movaps	%xmm2, 320(%rsp)
	pshufb	%xmm8, %xmm15
	paddd	%xmm15, %xmm13
	pxor	%xmm13, %xmm1
	pxor	320(%rsp), %xmm7
	movdqa	304(%rsp), %xmm2
	pshufb	%xmm8, %xmm9
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	movdqa	112(%rsp), %xmm12
	paddd	%xmm14, %xmm2
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm1
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	pshufb	%xmm8, %xmm7
	pxor	%xmm2, %xmm5
	paddd	%xmm1, %xmm12
	paddd	256(%rsp), %xmm12
	movdqa	%xmm0, %xmm11
	psrld	$12, %xmm0
	movaps	%xmm12, 256(%rsp)
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm0
	movdqa	%xmm5, %xmm11
	psrld	$12, %xmm5
	pxor	256(%rsp), %xmm15
	pslld	$20, %xmm11
	movdqa	48(%rsp), %xmm12
	pxor	%xmm11, %xmm5
	movdqa	%xmm4, %xmm11
	psrld	$12, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	144(%rsp), %xmm11
	paddd	%xmm5, %xmm12
	pshufb	%xmm6, %xmm15
	paddd	288(%rsp), %xmm12
	pxor	%xmm12, %xmm14
	paddd	%xmm0, %xmm11
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	paddd	%xmm15, %xmm13
	pxor	%xmm13, %xmm1
	pshufb	%xmm6, %xmm14
	pxor	272(%rsp), %xmm9
	paddd	%xmm14, %xmm2
	movaps	%xmm2, 288(%rsp)
	movdqa	%xmm1, %xmm2
	psrld	$7, %xmm1
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm1
	movdqa	240(%rsp), %xmm11
	pshufb	%xmm6, %xmm9
	paddd	%xmm4, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	%xmm11, %xmm7
	movaps	%xmm1, 320(%rsp)
	paddd	%xmm9, %xmm10
	pxor	288(%rsp), %xmm5
	pxor	%xmm10, %xmm0
	pshufb	%xmm6, %xmm7
	movdqa	80(%rsp), %xmm1
	movdqa	%xmm0, %xmm2
	psrld	$7, %xmm0
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$7, %xmm5
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm4, %xmm2
	psrld	$7, %xmm4
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	64(%rsp), %xmm2
	paddd	%xmm0, %xmm2
	paddd	256(%rsp), %xmm2
	movaps	%xmm2, 256(%rsp)
	paddd	%xmm4, %xmm1
	paddd	%xmm12, %xmm1
	movaps	%xmm1, 304(%rsp)
	movdqa	176(%rsp), %xmm2
	pxor	256(%rsp), %xmm7
	paddd	%xmm5, %xmm2
	paddd	272(%rsp), %xmm2
	movaps	%xmm2, 272(%rsp)
	pxor	304(%rsp), %xmm9
	pxor	272(%rsp), %xmm15
	movdqa	320(%rsp), %xmm12
	pshufb	%xmm8, %xmm7
	movdqa	288(%rsp), %xmm2
	pshufb	%xmm8, %xmm9
	movdqa	16(%rsp), %xmm1
	paddd	%xmm7, %xmm2
	pshufb	%xmm8, %xmm15
	paddd	%xmm9, %xmm13
	pxor	%xmm2, %xmm0
	paddd	%xmm12, %xmm1
	paddd	%xmm11, %xmm1
	movaps	%xmm1, 320(%rsp)
	paddd	%xmm15, %xmm3
	pxor	%xmm3, %xmm5
	movdqa	%xmm0, %xmm1
	pxor	%xmm13, %xmm4
	psrld	$12, %xmm0
	pxor	320(%rsp), %xmm14
	pslld	$20, %xmm1
	movdqa	32(%rsp), %xmm11
	pxor	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	psrld	$12, %xmm5
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm1
	pshufb	%xmm8, %xmm14
	psrld	$12, %xmm4
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm4
	paddd	%xmm5, %xmm11
	movdqa	%xmm12, %xmm1
	paddd	%xmm14, %xmm10
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	pxor	%xmm10, %xmm1
	movdqa	%xmm1, %xmm12
	psrld	$12, %xmm1
	pxor	272(%rsp), %xmm15
	pslld	$20, %xmm12
	movdqa	96(%rsp), %xmm11
	pxor	%xmm12, %xmm1
	movdqa	(%rsp), %xmm12
	paddd	%xmm0, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	paddd	%xmm1, %xmm11
	paddd	320(%rsp), %xmm11
	pshufb	%xmm6, %xmm15
	pxor	%xmm11, %xmm14
	pxor	256(%rsp), %xmm7
	paddd	%xmm15, %xmm3
	movdqa	128(%rsp), %xmm12
	pxor	%xmm3, %xmm5
	paddd	%xmm4, %xmm12
	paddd	304(%rsp), %xmm12
	movaps	%xmm12, 288(%rsp)
	pshufb	%xmm6, %xmm14
	pshufb	%xmm6, %xmm7
	pxor	288(%rsp), %xmm9
	paddd	%xmm14, %xmm10
	paddd	%xmm7, %xmm2
	movaps	%xmm2, 304(%rsp)
	pxor	%xmm10, %xmm1
	pxor	304(%rsp), %xmm0
	movdqa	240(%rsp), %xmm2
	pshufb	%xmm6, %xmm9
	movdqa	%xmm0, %xmm12
	paddd	%xmm9, %xmm13
	psrld	$7, %xmm0
	pxor	%xmm13, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm4, %xmm12
	psrld	$7, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm4
	paddd	%xmm5, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	paddd	288(%rsp), %xmm2
	movaps	%xmm2, 288(%rsp)
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	192(%rsp), %xmm12
	pxor	288(%rsp), %xmm14
	paddd	%xmm1, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	movdqa	144(%rsp), %xmm12
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm12
	paddd	272(%rsp), %xmm12
	movaps	%xmm12, 272(%rsp)
	pshufb	%xmm8, %xmm14
	movdqa	224(%rsp), %xmm2
	pxor	272(%rsp), %xmm9
	paddd	%xmm4, %xmm2
	paddd	%xmm11, %xmm2
	movaps	%xmm2, 320(%rsp)
	pshufb	%xmm8, %xmm15
	pxor	320(%rsp), %xmm7
	paddd	%xmm15, %xmm13
	movdqa	304(%rsp), %xmm2
	pshufb	%xmm8, %xmm9
	pxor	%xmm13, %xmm1
	paddd	%xmm14, %xmm2
	movdqa	208(%rsp), %xmm12
	pxor	%xmm2, %xmm5
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	pshufb	%xmm8, %xmm7
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm1
	movdqa	%xmm0, %xmm11
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	psrld	$12, %xmm0
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm0
	paddd	%xmm1, %xmm12
	movdqa	%xmm5, %xmm11
	psrld	$12, %xmm5
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm5
	movdqa	%xmm4, %xmm11
	psrld	$12, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	176(%rsp), %xmm11
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm11
	movdqa	160(%rsp), %xmm12
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	paddd	%xmm5, %xmm12
	paddd	288(%rsp), %xmm12
	pxor	%xmm12, %xmm14
	pshufb	%xmm6, %xmm15
	pxor	272(%rsp), %xmm9
	movdqa	128(%rsp), %xmm11
	paddd	%xmm15, %xmm13
	pshufb	%xmm6, %xmm14
	pxor	%xmm13, %xmm1
	paddd	%xmm4, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	%xmm11, %xmm7
	paddd	%xmm14, %xmm2
	pshufb	%xmm6, %xmm9
	movaps	%xmm2, 288(%rsp)
	pshufb	%xmm6, %xmm7
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	movdqa	%xmm1, %xmm2
	psrld	$7, %xmm1
	pxor	288(%rsp), %xmm5
	pslld	$25, %xmm2
	paddd	%xmm7, %xmm3
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	pxor	%xmm3, %xmm4
	psrld	$7, %xmm0
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$7, %xmm5
	movaps	%xmm1, 320(%rsp)
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm4, %xmm2
	psrld	$7, %xmm4
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	112(%rsp), %xmm2
	paddd	%xmm0, %xmm2
	paddd	256(%rsp), %xmm2
	movaps	%xmm2, 256(%rsp)
	movdqa	80(%rsp), %xmm2
	pxor	256(%rsp), %xmm7
	paddd	%xmm5, %xmm2
	movdqa	(%rsp), %xmm1
	paddd	272(%rsp), %xmm2
	movaps	%xmm2, 272(%rsp)
	paddd	%xmm4, %xmm1
	paddd	%xmm12, %xmm1
	movaps	%xmm1, 304(%rsp)
	pshufb	%xmm8, %xmm7
	pxor	272(%rsp), %xmm15
	movdqa	320(%rsp), %xmm12
	pxor	304(%rsp), %xmm9
	movdqa	288(%rsp), %xmm2
	movdqa	96(%rsp), %xmm1
	paddd	%xmm7, %xmm2
	pshufb	%xmm8, %xmm15
	pxor	%xmm2, %xmm0
	paddd	%xmm12, %xmm1
	paddd	%xmm11, %xmm1
	movaps	%xmm1, 320(%rsp)
	pshufb	%xmm8, %xmm9
	paddd	%xmm15, %xmm3
	pxor	%xmm3, %xmm5
	movdqa	%xmm0, %xmm1
	psrld	$12, %xmm0
	pxor	320(%rsp), %xmm14
	paddd	%xmm9, %xmm13
	pslld	$20, %xmm1
	pxor	%xmm13, %xmm4
	pxor	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	psrld	$12, %xmm5
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm1
	pshufb	%xmm8, %xmm14
	psrld	$12, %xmm4
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm4
	movdqa	%xmm12, %xmm1
	movdqa	32(%rsp), %xmm12
	paddd	%xmm14, %xmm10
	paddd	%xmm0, %xmm12
	pxor	%xmm10, %xmm1
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	pxor	256(%rsp), %xmm7
	pslld	$20, %xmm11
	movdqa	16(%rsp), %xmm12
	pxor	%xmm11, %xmm1
	movdqa	48(%rsp), %xmm11
	paddd	%xmm4, %xmm12
	paddd	304(%rsp), %xmm12
	paddd	%xmm5, %xmm11
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	pshufb	%xmm6, %xmm7
	movaps	%xmm12, 288(%rsp)
	paddd	%xmm7, %xmm2
	movaps	%xmm2, 304(%rsp)
	pxor	272(%rsp), %xmm15
	movdqa	64(%rsp), %xmm11
	pxor	288(%rsp), %xmm9
	paddd	%xmm1, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	304(%rsp), %xmm0
	pshufb	%xmm6, %xmm15
	pxor	%xmm11, %xmm14
	pshufb	%xmm6, %xmm9
	paddd	%xmm15, %xmm3
	pxor	%xmm3, %xmm5
	movdqa	%xmm0, %xmm12
	pshufb	%xmm6, %xmm14
	psrld	$7, %xmm0
	paddd	%xmm9, %xmm13
	pxor	%xmm13, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	%xmm14, %xmm10
	pxor	%xmm10, %xmm1
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm4, %xmm12
	psrld	$7, %xmm4
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm4
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	144(%rsp), %xmm12
	paddd	%xmm1, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	movdqa	176(%rsp), %xmm12
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm12
	movdqa	128(%rsp), %xmm2
	paddd	272(%rsp), %xmm12
	movaps	%xmm12, 272(%rsp)
	paddd	%xmm5, %xmm2
	paddd	288(%rsp), %xmm2
	movaps	%xmm2, 288(%rsp)
	pshufb	%xmm8, %xmm15
	movdqa	240(%rsp), %xmm2
	paddd	%xmm15, %xmm13
	pxor	272(%rsp), %xmm9
	paddd	%xmm4, %xmm2
	paddd	%xmm11, %xmm2
	movaps	%xmm2, 320(%rsp)
	pxor	288(%rsp), %xmm14
	pxor	%xmm13, %xmm1
	pxor	320(%rsp), %xmm7
	movdqa	304(%rsp), %xmm2
	pshufb	%xmm8, %xmm9
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	pshufb	%xmm8, %xmm14
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm1
	movdqa	224(%rsp), %xmm12
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	pshufb	%xmm8, %xmm7
	paddd	%xmm14, %xmm2
	pxor	%xmm2, %xmm5
	paddd	%xmm1, %xmm12
	paddd	256(%rsp), %xmm12
	movdqa	%xmm0, %xmm11
	psrld	$12, %xmm0
	paddd	%xmm7, %xmm3
	pxor	%xmm3, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm0
	movdqa	%xmm5, %xmm11
	psrld	$12, %xmm5
	movaps	%xmm12, 256(%rsp)
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm5
	movdqa	%xmm4, %xmm11
	psrld	$12, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	80(%rsp), %xmm11
	pxor	256(%rsp), %xmm15
	paddd	%xmm0, %xmm11
	movdqa	192(%rsp), %xmm12
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	paddd	%xmm5, %xmm12
	paddd	288(%rsp), %xmm12
	pxor	%xmm12, %xmm14
	pshufb	%xmm6, %xmm15
	pxor	272(%rsp), %xmm9
	movdqa	16(%rsp), %xmm11
	paddd	%xmm15, %xmm13
	pshufb	%xmm6, %xmm14
	pxor	%xmm13, %xmm1
	paddd	%xmm4, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	%xmm11, %xmm7
	paddd	%xmm14, %xmm2
	pshufb	%xmm6, %xmm9
	movaps	%xmm2, 288(%rsp)
	pshufb	%xmm6, %xmm7
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm0
	movdqa	%xmm1, %xmm2
	psrld	$7, %xmm1
	pxor	288(%rsp), %xmm5
	pslld	$25, %xmm2
	paddd	%xmm7, %xmm3
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	pxor	%xmm3, %xmm4
	psrld	$7, %xmm0
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$7, %xmm5
	movaps	%xmm1, 320(%rsp)
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm5
	movdqa	%xmm4, %xmm2
	psrld	$7, %xmm4
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	208(%rsp), %xmm2
	paddd	%xmm0, %xmm2
	paddd	256(%rsp), %xmm2
	movaps	%xmm2, 256(%rsp)
	movdqa	(%rsp), %xmm2
	pxor	256(%rsp), %xmm7
	paddd	%xmm5, %xmm2
	movdqa	32(%rsp), %xmm1
	paddd	272(%rsp), %xmm2
	movaps	%xmm2, 272(%rsp)
	paddd	%xmm4, %xmm1
	paddd	%xmm12, %xmm1
	movaps	%xmm1, 304(%rsp)
	pshufb	%xmm8, %xmm7
	pxor	272(%rsp), %xmm15
	movdqa	320(%rsp), %xmm12
	pxor	304(%rsp), %xmm9
	movdqa	288(%rsp), %xmm2
	movdqa	64(%rsp), %xmm1
	paddd	%xmm7, %xmm2
	pshufb	%xmm8, %xmm15
	pxor	%xmm2, %xmm0
	paddd	%xmm12, %xmm1
	paddd	%xmm11, %xmm1
	movaps	%xmm1, 320(%rsp)
	pshufb	%xmm8, %xmm9
	paddd	%xmm15, %xmm3
	pxor	%xmm3, %xmm5
	movdqa	%xmm0, %xmm1
	psrld	$12, %xmm0
	pxor	320(%rsp), %xmm14
	paddd	%xmm9, %xmm13
	pslld	$20, %xmm1
	pxor	%xmm13, %xmm4
	pxor	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	psrld	$12, %xmm5
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm1
	pshufb	%xmm8, %xmm14
	psrld	$12, %xmm4
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm4
	movdqa	%xmm12, %xmm1
	paddd	%xmm14, %xmm10
	movdqa	48(%rsp), %xmm12
	pxor	%xmm10, %xmm1
	paddd	%xmm0, %xmm12
	paddd	256(%rsp), %xmm12
	movaps	%xmm12, 256(%rsp)
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm1
	movdqa	160(%rsp), %xmm11
	pxor	256(%rsp), %xmm7
	paddd	%xmm5, %xmm11
	paddd	272(%rsp), %xmm11
	movaps	%xmm11, 272(%rsp)
	pxor	272(%rsp), %xmm15
	movdqa	96(%rsp), %xmm12
	pshufb	%xmm6, %xmm7
	paddd	%xmm4, %xmm12
	paddd	304(%rsp), %xmm12
	movaps	%xmm12, 288(%rsp)
	movdqa	%xmm7, %xmm12
	movdqa	%xmm2, %xmm7
	pshufb	%xmm6, %xmm15
	movdqa	112(%rsp), %xmm11
	paddd	%xmm12, %xmm7
	pxor	288(%rsp), %xmm9
	movaps	%xmm7, 304(%rsp)
	paddd	%xmm15, %xmm3
	paddd	%xmm1, %xmm11
	paddd	320(%rsp), %xmm11
	pxor	%xmm11, %xmm14
	movaps	%xmm3, 320(%rsp)
	pshufb	%xmm6, %xmm9
	pshufb	%xmm6, %xmm14
	pxor	304(%rsp), %xmm0
	paddd	%xmm9, %xmm13
	pxor	320(%rsp), %xmm5
	paddd	%xmm14, %xmm10
	movdqa	16(%rsp), %xmm3
	pxor	%xmm13, %xmm4
	movdqa	%xmm0, %xmm7
	psrld	$7, %xmm0
	pxor	%xmm10, %xmm1
	pslld	$25, %xmm7
	movdqa	%xmm7, %xmm2
	movdqa	%xmm0, %xmm7
	movdqa	%xmm5, %xmm0
	psrld	$7, %xmm5
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm5
	movdqa	%xmm4, %xmm0
	pxor	%xmm2, %xmm7
	psrld	$7, %xmm4
	movdqa	80(%rsp), %xmm2
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm4
	movdqa	%xmm1, %xmm0
	paddd	%xmm7, %xmm2
	psrld	$7, %xmm1
	paddd	272(%rsp), %xmm2
	pslld	$25, %xmm0
	movaps	%xmm2, 80(%rsp)
	paddd	%xmm5, %xmm3
	pxor	%xmm0, %xmm1
	paddd	288(%rsp), %xmm3
	movaps	%xmm3, 16(%rsp)
	movdqa	176(%rsp), %xmm0
	pxor	80(%rsp), %xmm9
	movdqa	128(%rsp), %xmm2
	paddd	%xmm1, %xmm0
	paddd	256(%rsp), %xmm0
	pxor	%xmm0, %xmm15
	paddd	%xmm4, %xmm2
	paddd	%xmm11, %xmm2
	movaps	%xmm2, 128(%rsp)
	pxor	16(%rsp), %xmm14
	pshufb	%xmm8, %xmm15
	pxor	128(%rsp), %xmm12
	movdqa	304(%rsp), %xmm3
	pshufb	%xmm8, %xmm9
	paddd	%xmm15, %xmm13
	pxor	%xmm13, %xmm1
	movdqa	320(%rsp), %xmm2
	pshufb	%xmm8, %xmm14
	paddd	%xmm9, %xmm10
	pxor	%xmm10, %xmm7
	pshufb	%xmm8, %xmm12
	movdqa	%xmm1, %xmm11
	psrld	$12, %xmm1
	paddd	%xmm14, %xmm3
	pxor	%xmm3, %xmm5
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm1
	movdqa	%xmm7, %xmm11
	paddd	%xmm12, %xmm2
	pxor	%xmm2, %xmm4
	psrld	$12, %xmm7
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm7
	movdqa	%xmm5, %xmm11
	psrld	$12, %xmm5
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm5
	movdqa	%xmm4, %xmm11
	psrld	$12, %xmm4
	pslld	$20, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	240(%rsp), %xmm11
	paddd	%xmm1, %xmm11
	paddd	%xmm0, %xmm11
	movdqa	(%rsp), %xmm0
	movaps	%xmm11, 176(%rsp)
	paddd	%xmm7, %xmm0
	movdqa	80(%rsp), %xmm11
	pxor	176(%rsp), %xmm15
	paddd	%xmm0, %xmm11
	movaps	%xmm11, (%rsp)
	pxor	(%rsp), %xmm9
	movdqa	144(%rsp), %xmm0
	pshufb	%xmm6, %xmm15
	paddd	%xmm5, %xmm0
	movdqa	128(%rsp), %xmm11
	paddd	16(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	paddd	%xmm15, %xmm13
	pxor	%xmm13, %xmm1
	movdqa	96(%rsp), %xmm0
	pxor	16(%rsp), %xmm14
	paddd	%xmm4, %xmm0
	paddd	%xmm0, %xmm11
	movdqa	%xmm9, %xmm0
	movaps	%xmm11, 80(%rsp)
	pshufb	%xmm6, %xmm0
	movdqa	%xmm13, %xmm11
	pshufb	%xmm6, %xmm14
	pxor	80(%rsp), %xmm12
	paddd	%xmm0, %xmm10
	movdqa	%xmm10, %xmm9
	movdqa	%xmm1, %xmm10
	psrld	$7, %xmm1
	pxor	%xmm9, %xmm7
	movdqa	%xmm1, %xmm13
	paddd	%xmm14, %xmm3
	pxor	%xmm3, %xmm5
	pslld	$25, %xmm10
	pxor	%xmm10, %xmm13
	pshufb	%xmm6, %xmm12
	movdqa	%xmm7, %xmm10
	psrld	$7, %xmm7
	pslld	$25, %xmm10
	pxor	%xmm10, %xmm7
	paddd	%xmm12, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	%xmm5, %xmm10
	psrld	$7, %xmm5
	pslld	$25, %xmm10
	pxor	%xmm10, %xmm5
	movdqa	%xmm4, %xmm10
	psrld	$7, %xmm4
	pslld	$25, %xmm10
	pxor	%xmm10, %xmm4
	movdqa	224(%rsp), %xmm10
	paddd	%xmm7, %xmm10
	paddd	176(%rsp), %xmm10
	movaps	%xmm10, 96(%rsp)
	movdqa	32(%rsp), %xmm10
	pxor	96(%rsp), %xmm12
	movdqa	48(%rsp), %xmm1
	paddd	%xmm5, %xmm10
	paddd	(%rsp), %xmm10
	movaps	%xmm10, 32(%rsp)
	paddd	%xmm4, %xmm1
	movaps	%xmm13, (%rsp)
	pshufb	%xmm8, %xmm12
	movdqa	16(%rsp), %xmm10
	movdqa	80(%rsp), %xmm13
	paddd	%xmm1, %xmm10
	movdqa	112(%rsp), %xmm1
	movaps	%xmm10, 16(%rsp)
	paddd	(%rsp), %xmm1
	paddd	%xmm1, %xmm13
	movaps	%xmm13, 48(%rsp)
	movaps	%xmm12, 80(%rsp)
	paddd	80(%rsp), %xmm3
	pxor	%xmm3, %xmm7
	movdqa	32(%rsp), %xmm1
	pxor	16(%rsp), %xmm0
	movdqa	192(%rsp), %xmm12
	pxor	%xmm15, %xmm1
	movdqa	%xmm7, %xmm15
	psrld	$12, %xmm7
	pxor	48(%rsp), %xmm14
	pslld	$20, %xmm15
	movdqa	208(%rsp), %xmm10
	pshufb	%xmm8, %xmm1
	pshufb	%xmm8, %xmm0
	pxor	%xmm15, %xmm7
	pshufb	%xmm8, %xmm14
	paddd	%xmm1, %xmm2
	pxor	%xmm2, %xmm5
	paddd	%xmm0, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	%xmm14, %xmm13
	movdqa	%xmm9, %xmm14
	movdqa	(%rsp), %xmm9
	movdqa	%xmm5, %xmm15
	paddd	%xmm13, %xmm14
	psrld	$12, %xmm5
	pxor	%xmm14, %xmm9
	pslld	$20, %xmm15
	pxor	%xmm15, %xmm5
	movdqa	%xmm4, %xmm15
	psrld	$12, %xmm4
	pslld	$20, %xmm15
	pxor	%xmm15, %xmm4
	movdqa	%xmm9, %xmm15
	paddd	%xmm5, %xmm12
	paddd	32(%rsp), %xmm12
	movaps	%xmm12, (%rsp)
	psrld	$12, %xmm9
	pslld	$20, %xmm15
	pxor	%xmm15, %xmm9
	movdqa	64(%rsp), %xmm12
	paddd	%xmm9, %xmm10
	pxor	(%rsp), %xmm1
	paddd	%xmm4, %xmm12
	paddd	16(%rsp), %xmm12
	movaps	%xmm12, 16(%rsp)
	movdqa	48(%rsp), %xmm12
	pshufb	%xmm6, %xmm1
	movdqa	160(%rsp), %xmm15
	paddd	%xmm10, %xmm12
	movdqa	%xmm12, %xmm10
	movdqa	80(%rsp), %xmm12
	paddd	%xmm7, %xmm15
	paddd	96(%rsp), %xmm15
	pxor	16(%rsp), %xmm0
	paddd	%xmm1, %xmm2
	movaps	%xmm10, 32(%rsp)
	pxor	%xmm15, %xmm12
	pxor	%xmm2, %xmm5
	pxor	32(%rsp), %xmm13
	pshufb	%xmm6, %xmm12
	pshufb	%xmm6, %xmm0
	pxor	32(%rsp), %xmm2
	movaps	%xmm12, 48(%rsp)
	pshufb	%xmm6, %xmm13
	paddd	%xmm0, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	48(%rsp), %xmm3
	pxor	%xmm3, %xmm7
	paddd	%xmm13, %xmm14
	movdqa	%xmm14, %xmm10
	pslld	$25, %xmm12
	movaps	%xmm12, 64(%rsp)
	pxor	%xmm10, %xmm9
	movdqa	%xmm7, %xmm14
	movdqa	%xmm4, %xmm12
	psrld	$7, %xmm4
	movaps	%xmm4, 80(%rsp)
	psrld	$7, %xmm7
	pslld	$25, %xmm14
	pxor	%xmm14, %xmm7
	pslld	$25, %xmm12
	movdqa	%xmm9, %xmm4
	psrld	$7, %xmm9
	pxor	%xmm15, %xmm11
	pxor	64(%rsp), %xmm5
	pslld	$25, %xmm4
	pxor	80(%rsp), %xmm12
	pxor	%xmm4, %xmm9
	pxor	%xmm0, %xmm7
	pxor	(%rsp), %xmm10
	pxor	16(%rsp), %xmm3
	movaps	%xmm7, 256(%rsp)
	pxor	%xmm9, %xmm1
	pxor	%xmm13, %xmm5
	pxor	48(%rsp), %xmm12
	jne	.L8
	movaps	%xmm5, (%rsp)
	movdqa	%xmm11, %xmm13
	movdqa	%xmm10, %xmm14
	movdqa	%xmm3, %xmm15
	movdqa	%xmm1, %xmm4
.L6:
	movdqa	%xmm13, %xmm0
	movdqa	%xmm15, %xmm3
	punpckhdq	%xmm14, %xmm13
	leaq	4(%rbx), %rax
	punpckldq	%xmm14, %xmm0
	testb	%r13b, %r13b
	movdqa	%xmm15, %xmm1
	cmovne	%rax, %rbx
	punpckhdq	%xmm2, %xmm3
	subq	$4, %r15
	punpckldq	%xmm2, %xmm1
	addq	$32, %r14
	movdqa	%xmm0, %xmm9
	subq	$-128, %r9
	movdqa	%xmm13, %xmm5
	punpcklqdq	%xmm1, %xmm9
	movdqa	(%rsp), %xmm2
	punpckhqdq	%xmm1, %xmm0
	punpcklqdq	%xmm3, %xmm5
	movdqa	%xmm4, %xmm1
	punpckhqdq	%xmm3, %xmm13
	movdqa	256(%rsp), %xmm3
	punpckldq	%xmm3, %xmm1
	punpckhdq	%xmm3, %xmm4
	movdqa	%xmm2, %xmm3
	punpckhdq	%xmm12, %xmm2
	punpckldq	%xmm12, %xmm3
	movdqa	%xmm1, %xmm7
	movups	%xmm9, -128(%r9)
	punpcklqdq	%xmm3, %xmm7
	punpckhqdq	%xmm3, %xmm1
	movdqa	%xmm4, %xmm3
	punpckhqdq	%xmm2, %xmm4
	punpcklqdq	%xmm2, %xmm3
	movups	%xmm7, -112(%r9)
	movups	%xmm0, -96(%r9)
	movups	%xmm1, -80(%r9)
	movups	%xmm5, -64(%r9)
	movups	%xmm3, -48(%r9)
	movups	%xmm13, -32(%r9)
	movups	%xmm4, -16(%r9)
	cmpq	%r12, %r15
	jne	.L10
	movq	456(%rsp), %rax
	movq	600(%rsp), %r13
	movq	472(%rsp), %r12
	andq	$3, 440(%rsp)
	shrq	$2, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	salq	$7, %rax
	addq	%rax, %r13
	movq	440(%rsp), %rax
	salq	$5, %rdx
	addq	%rdx, %r12
.L5:
	testq	%rax, %rax
	je	.L4
	movzbl	468(%rsp), %edi
	movzbl	455(%rsp), %r15d
	leaq	(%r12,%rax,8), %r14
	orb	464(%rsp), %dil
	movq	%r14, (%rsp)
	movb	%dil, 16(%rsp)
.L16:
	movdqu	(%r11), %xmm0
	testq	%r10, %r10
	movq	(%r12), %r9
	movaps	%xmm0, 480(%rsp)
	movdqu	16(%r11), %xmm0
	movaps	%xmm0, 496(%rsp)
	je	.L12
	movq	%r10, %r14
	cmpq	$1, %r14
	movzbl	16(%rsp), %r8d
	je	.L35
	.p2align 4,,10
	.p2align 3
.L13:
	leaq	480(%rsp), %rdi
	movq	%r9, %rsi
	movq	%rbx, %rcx
	movl	$64, %edx
	subq	$1, %r14
	call	blake3_compress_in_place_sse41
	addq	$64, %r9
	cmpq	$1, %r14
	movzbl	%bpl, %r8d
	jne	.L13
.L35:
	orl	%r15d, %r8d
	leaq	480(%rsp), %rdi
	movq	%rbx, %rcx
	movzbl	%r8b, %r8d
	movl	$64, %edx
	movq	%r9, %rsi
	call	blake3_compress_in_place_sse41
.L12:
	movdqa	480(%rsp), %xmm0
	cmpb	$1, 454(%rsp)
	movups	%xmm0, 0(%r13)
	sbbq	$-1, %rbx
	addq	$8, %r12
	addq	$32, %r13
	movdqa	496(%rsp), %xmm0
	movups	%xmm0, -16(%r13)
	cmpq	(%rsp), %r12
	jne	.L16
.L4:
	addq	$520, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	orb	455(%rsp), %dil
	jmp	.L7
	.cfi_endproc
.LFE4783:
	.size	blake3_hash_many_sse41, .-blake3_hash_many_sse41
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	6
	.byte	7
	.byte	4
	.byte	5
	.byte	10
	.byte	11
	.byte	8
	.byte	9
	.byte	14
	.byte	15
	.byte	12
	.byte	13
	.align 16
.LC1:
	.long	1779033703
	.long	-1150833019
	.long	1013904242
	.long	-1521486534
	.align 16
.LC2:
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	5
	.byte	6
	.byte	7
	.byte	4
	.byte	9
	.byte	10
	.byte	11
	.byte	8
	.byte	13
	.byte	14
	.byte	15
	.byte	12
	.align 16
.LC3:
	.quad	4294967296
	.quad	12884901890
	.align 16
.LC4:
	.quad	-9223372034707292160
	.quad	-9223372034707292160
	.align 16
.LC5:
	.quad	274877907008
	.quad	274877907008
	.align 16
.LC6:
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.align 16
.LC7:
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.align 16
.LC8:
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.align 16
.LC9:
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.ident	"GCC: (SUSE Linux) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
