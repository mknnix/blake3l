	.file	"blake3l_x64_sse2.c"
	.text
	.p2align 4,,15
	.globl	blake3_compress_in_place_sse2
	.type	blake3_compress_in_place_sse2, @function
blake3_compress_in_place_sse2:
.LFB4792:
	.cfi_startproc
	movq	%rcx, %rax
	movdqu	(%rsi), %xmm3
	shrq	$32, %rax
	movq	%rax, -24(%rsp)
	movzbl	%dl, %eax
	movl	%eax, -16(%rsp)
	movzbl	%r8b, %eax
	movl	%eax, -12(%rsp)
	movd	-16(%rsp), %xmm5
	movd	-12(%rsp), %xmm6
	movl	%ecx, -16(%rsp)
	movd	-16(%rsp), %xmm0
	movaps	%xmm3, %xmm1
	punpckldq	%xmm6, %xmm5
	movd	-24(%rsp), %xmm6
	movdqu	16(%rsi), %xmm7
	punpckldq	%xmm6, %xmm0
	shufps	$136, %xmm7, %xmm1
	movdqu	16(%rdi), %xmm2
	shufps	$221, %xmm7, %xmm3
	punpcklqdq	%xmm5, %xmm0
	movdqu	(%rdi), %xmm4
	paddd	%xmm2, %xmm4
	paddd	%xmm1, %xmm4
	movdqa	.LC0(%rip), %xmm6
	pxor	%xmm4, %xmm0
	paddd	%xmm3, %xmm4
	movdqu	32(%rsi), %xmm8
	pshuflw	$177, %xmm0, %xmm0
	movdqu	48(%rsi), %xmm7
	pshufhw	$177, %xmm0, %xmm0
	paddd	%xmm0, %xmm6
	pxor	%xmm6, %xmm2
	movdqa	%xmm2, %xmm5
	psrld	$12, %xmm2
	pslld	$20, %xmm5
	pxor	%xmm5, %xmm2
	paddd	%xmm2, %xmm4
	pxor	%xmm4, %xmm0
	pshufd	$147, %xmm4, %xmm4
	movdqa	%xmm0, %xmm5
	psrld	$8, %xmm0
	pslld	$24, %xmm5
	pxor	%xmm5, %xmm0
	paddd	%xmm0, %xmm6
	pxor	%xmm6, %xmm2
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm6, %xmm6
	movdqa	%xmm2, %xmm5
	psrld	$7, %xmm2
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm2
	movaps	%xmm8, %xmm5
	shufps	$221, %xmm7, %xmm8
	shufps	$136, %xmm7, %xmm5
	pshufd	$147, %xmm8, %xmm8
	pshufd	$147, %xmm5, %xmm5
	movdqa	%xmm8, %xmm12
	paddd	%xmm5, %xmm4
	paddd	%xmm2, %xmm4
	pxor	%xmm4, %xmm0
	movaps	%xmm5, %xmm10
	pshuflw	$177, %xmm0, %xmm0
	shufps	$250, %xmm8, %xmm10
	pshufhw	$177, %xmm0, %xmm0
	paddd	%xmm0, %xmm6
	pxor	%xmm6, %xmm2
	movdqa	%xmm2, %xmm9
	psrld	$12, %xmm2
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm2
	movaps	%xmm1, %xmm9
	pshufd	$15, %xmm1, %xmm1
	paddd	%xmm2, %xmm12
	paddd	%xmm12, %xmm4
	pxor	%xmm4, %xmm0
	shufps	$214, %xmm3, %xmm9
	pshufd	$57, %xmm4, %xmm12
	movdqa	%xmm0, %xmm7
	psrld	$8, %xmm0
	pshufd	$57, %xmm9, %xmm9
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm0
	paddd	%xmm9, %xmm12
	paddd	%xmm0, %xmm6
	pxor	%xmm6, %xmm2
	pshufd	$78, %xmm0, %xmm0
	pshufd	$147, %xmm6, %xmm6
	movdqa	%xmm2, %xmm7
	psrld	$7, %xmm2
	pslld	$25, %xmm7
	pxor	%xmm2, %xmm7
	paddd	%xmm7, %xmm12
	pxor	%xmm12, %xmm0
	pshuflw	$177, %xmm0, %xmm0
	pshufhw	$177, %xmm0, %xmm2
	paddd	%xmm2, %xmm6
	pxor	%xmm6, %xmm7
	movdqa	%xmm7, %xmm0
	movdqa	%xmm7, %xmm4
	psrld	$12, %xmm0
	pslld	$20, %xmm4
	pxor	%xmm0, %xmm4
	movdqa	.LC1(%rip), %xmm0
	movdqa	%xmm0, %xmm7
	pandn	%xmm1, %xmm7
	movdqa	%xmm7, %xmm1
	movaps	.LC2(%rip), %xmm7
	andps	%xmm7, %xmm10
	por	%xmm1, %xmm10
	movdqa	%xmm2, %xmm1
	paddd	%xmm10, %xmm12
	paddd	%xmm4, %xmm12
	pxor	%xmm12, %xmm1
	pshufd	$147, %xmm12, %xmm12
	movdqa	%xmm1, %xmm2
	psrld	$8, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm1
	paddd	%xmm1, %xmm6
	pxor	%xmm6, %xmm4
	pshufd	$57, %xmm6, %xmm11
	movdqa	%xmm8, %xmm6
	movdqa	%xmm4, %xmm2
	psrld	$7, %xmm4
	punpcklqdq	%xmm3, %xmm6
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm4
	pshufd	$78, %xmm1, %xmm2
	movdqa	.LC3(%rip), %xmm1
	punpckhdq	%xmm8, %xmm3
	movdqa	%xmm1, %xmm13
	pandn	%xmm6, %xmm13
	movdqa	%xmm5, %xmm6
	punpckldq	%xmm3, %xmm5
	pand	%xmm1, %xmm6
	pshufd	$30, %xmm5, %xmm5
	por	%xmm13, %xmm6
	movdqa	%xmm5, %xmm3
	pshufd	$120, %xmm6, %xmm6
	paddd	%xmm6, %xmm12
	paddd	%xmm4, %xmm12
	pxor	%xmm12, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm11
	pxor	%xmm11, %xmm4
	movdqa	%xmm4, %xmm13
	psrld	$12, %xmm4
	pslld	$20, %xmm13
	pxor	%xmm13, %xmm4
	paddd	%xmm4, %xmm3
	paddd	%xmm3, %xmm12
	pxor	%xmm12, %xmm2
	pshufd	$57, %xmm12, %xmm12
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	paddd	%xmm2, %xmm11
	pxor	%xmm11, %xmm4
	pshufd	$147, %xmm11, %xmm15
	movaps	%xmm9, %xmm11
	pshufd	$78, %xmm2, %xmm2
	shufps	$214, %xmm10, %xmm11
	movdqa	%xmm4, %xmm8
	movdqa	%xmm4, %xmm3
	psrld	$7, %xmm8
	pshufd	$15, %xmm9, %xmm9
	pshufd	$57, %xmm11, %xmm11
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm8
	paddd	%xmm11, %xmm12
	movaps	%xmm11, %xmm13
	paddd	%xmm8, %xmm12
	pxor	%xmm12, %xmm2
	movdqa	%xmm8, %xmm3
	movaps	%xmm6, %xmm8
	pshufd	$15, %xmm11, %xmm11
	pshuflw	$177, %xmm2, %xmm2
	shufps	$250, %xmm5, %xmm8
	pshufhw	$177, %xmm2, %xmm2
	andps	%xmm7, %xmm8
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm3
	movdqa	%xmm3, %xmm4
	psrld	$12, %xmm3
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm3
	movdqa	%xmm0, %xmm4
	pandn	%xmm9, %xmm4
	movdqa	%xmm1, %xmm9
	por	%xmm4, %xmm8
	paddd	%xmm8, %xmm12
	paddd	%xmm3, %xmm12
	pxor	%xmm12, %xmm2
	movdqa	%xmm12, %xmm14
	shufps	$214, %xmm8, %xmm13
	movdqa	%xmm2, %xmm4
	psrld	$8, %xmm2
	pshufd	$147, %xmm14, %xmm14
	pslld	$24, %xmm4
	pxor	%xmm4, %xmm2
	pshufd	$57, %xmm13, %xmm13
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm3
	pshufd	$78, %xmm2, %xmm2
	pshufd	$57, %xmm15, %xmm15
	movdqa	%xmm3, %xmm4
	movdqa	%xmm3, %xmm12
	movdqa	%xmm5, %xmm3
	pslld	$25, %xmm12
	psrld	$7, %xmm4
	pxor	%xmm12, %xmm4
	punpcklqdq	%xmm10, %xmm3
	punpckhdq	%xmm5, %xmm10
	pandn	%xmm3, %xmm9
	movdqa	%xmm9, %xmm3
	movdqa	%xmm6, %xmm9
	punpckldq	%xmm10, %xmm6
	pand	%xmm1, %xmm9
	pshufd	$30, %xmm6, %xmm6
	por	%xmm3, %xmm9
	pshufd	$120, %xmm9, %xmm9
	paddd	%xmm9, %xmm14
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm2
	movaps	%xmm9, %xmm10
	pshuflw	$177, %xmm2, %xmm2
	shufps	$250, %xmm6, %xmm10
	pshufhw	$177, %xmm2, %xmm2
	andps	%xmm7, %xmm10
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm4
	movdqa	%xmm4, %xmm12
	movdqa	%xmm4, %xmm3
	psrld	$12, %xmm12
	pslld	$20, %xmm3
	pxor	%xmm3, %xmm12
	movdqa	%xmm6, %xmm3
	paddd	%xmm12, %xmm3
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$57, %xmm14, %xmm14
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	paddd	%xmm13, %xmm14
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	movdqa	%xmm12, %xmm3
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm3
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm15, %xmm15
	movdqa	%xmm3, %xmm4
	psrld	$7, %xmm3
	pslld	$25, %xmm4
	pxor	%xmm4, %xmm3
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm3, %xmm4
	movdqa	%xmm0, %xmm3
	pshuflw	$177, %xmm2, %xmm2
	pandn	%xmm11, %xmm3
	movdqa	%xmm9, %xmm11
	pshufhw	$177, %xmm2, %xmm2
	por	%xmm3, %xmm10
	pand	%xmm1, %xmm11
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm4
	paddd	%xmm10, %xmm14
	movdqa	%xmm4, %xmm5
	psrld	$12, %xmm4
	pslld	$20, %xmm5
	pxor	%xmm5, %xmm4
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm4, %xmm5
	movdqa	%xmm1, %xmm4
	pshufd	$147, %xmm14, %xmm14
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm5
	pshufd	$78, %xmm2, %xmm2
	pshufd	$57, %xmm15, %xmm15
	movdqa	%xmm5, %xmm3
	psrld	$7, %xmm5
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm5
	movdqa	%xmm6, %xmm3
	punpcklqdq	%xmm8, %xmm3
	punpckhdq	%xmm6, %xmm8
	movdqa	%xmm1, %xmm6
	pandn	%xmm3, %xmm4
	punpckldq	%xmm8, %xmm9
	movaps	%xmm13, %xmm8
	pshufd	$15, %xmm13, %xmm13
	por	%xmm4, %xmm11
	pshufd	$30, %xmm9, %xmm9
	shufps	$214, %xmm10, %xmm8
	pshufd	$120, %xmm11, %xmm11
	pshufd	$57, %xmm8, %xmm8
	paddd	%xmm11, %xmm14
	paddd	%xmm5, %xmm14
	pxor	%xmm14, %xmm2
	movaps	%xmm11, %xmm12
	pshuflw	$177, %xmm2, %xmm2
	shufps	$250, %xmm9, %xmm12
	pshufhw	$177, %xmm2, %xmm2
	andps	%xmm7, %xmm12
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm5
	movdqa	%xmm5, %xmm3
	movdqa	%xmm5, %xmm4
	psrld	$12, %xmm3
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm3
	movdqa	%xmm9, %xmm4
	paddd	%xmm3, %xmm4
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$57, %xmm14, %xmm14
	movdqa	%xmm2, %xmm4
	psrld	$8, %xmm2
	paddd	%xmm8, %xmm14
	pslld	$24, %xmm4
	pxor	%xmm4, %xmm2
	movdqa	%xmm3, %xmm4
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm4
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm15, %xmm15
	movdqa	%xmm4, %xmm5
	psrld	$7, %xmm4
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm4
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm4, %xmm5
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm5
	movdqa	%xmm5, %xmm3
	psrld	$12, %xmm5
	pslld	$20, %xmm3
	pxor	%xmm3, %xmm5
	movdqa	%xmm0, %xmm3
	pandn	%xmm13, %xmm3
	por	%xmm3, %xmm12
	paddd	%xmm12, %xmm14
	paddd	%xmm5, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$147, %xmm14, %xmm14
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	paddd	%xmm2, %xmm15
	pxor	%xmm15, %xmm5
	pshufd	$78, %xmm2, %xmm2
	pshufd	$57, %xmm15, %xmm13
	movdqa	%xmm5, %xmm3
	movdqa	%xmm5, %xmm4
	movdqa	%xmm11, %xmm5
	pslld	$25, %xmm4
	psrld	$7, %xmm3
	pxor	%xmm4, %xmm3
	movdqa	%xmm9, %xmm4
	pand	%xmm1, %xmm5
	punpcklqdq	%xmm10, %xmm4
	punpckhdq	%xmm9, %xmm10
	movaps	%xmm8, %xmm9
	pshufd	$15, %xmm8, %xmm8
	pandn	%xmm4, %xmm6
	movdqa	%xmm3, %xmm4
	punpckldq	%xmm10, %xmm11
	shufps	$214, %xmm12, %xmm9
	por	%xmm6, %xmm5
	pshufd	$30, %xmm11, %xmm11
	pshufd	$57, %xmm9, %xmm9
	pshufd	$120, %xmm5, %xmm5
	paddd	%xmm5, %xmm14
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm11, %xmm3
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	movdqa	%xmm4, %xmm6
	psrld	$12, %xmm4
	pslld	$20, %xmm6
	pxor	%xmm6, %xmm4
	paddd	%xmm4, %xmm3
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm4, %xmm6
	pshufd	$57, %xmm14, %xmm14
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	paddd	%xmm9, %xmm14
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm6
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm13, %xmm13
	movdqa	%xmm6, %xmm3
	psrld	$7, %xmm6
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm6
	paddd	%xmm6, %xmm14
	pxor	%xmm14, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm6
	movdqa	%xmm6, %xmm3
	movdqa	%xmm6, %xmm4
	movaps	%xmm5, %xmm6
	psrld	$12, %xmm3
	shufps	$250, %xmm11, %xmm6
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm3
	movdqa	%xmm0, %xmm4
	andps	%xmm7, %xmm6
	pandn	%xmm8, %xmm4
	por	%xmm4, %xmm6
	paddd	%xmm6, %xmm14
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$147, %xmm14, %xmm14
	movdqa	%xmm2, %xmm4
	psrld	$8, %xmm2
	pslld	$24, %xmm4
	pxor	%xmm4, %xmm2
	movdqa	%xmm3, %xmm4
	movdqa	%xmm11, %xmm3
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	punpcklqdq	%xmm12, %xmm3
	pshufd	$78, %xmm2, %xmm2
	movdqa	%xmm4, %xmm10
	psrld	$7, %xmm4
	punpckhdq	%xmm11, %xmm12
	pshufd	$57, %xmm13, %xmm13
	pslld	$25, %xmm10
	pxor	%xmm4, %xmm10
	movdqa	%xmm1, %xmm4
	pandn	%xmm3, %xmm4
	movdqa	%xmm4, %xmm3
	movdqa	%xmm5, %xmm4
	punpckldq	%xmm12, %xmm5
	pand	%xmm1, %xmm4
	pshufd	$30, %xmm5, %xmm5
	por	%xmm3, %xmm4
	movdqa	%xmm5, %xmm11
	pshufd	$120, %xmm4, %xmm4
	paddd	%xmm4, %xmm14
	paddd	%xmm10, %xmm14
	pxor	%xmm14, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm10
	movdqa	%xmm10, %xmm3
	psrld	$12, %xmm10
	pslld	$20, %xmm3
	pxor	%xmm3, %xmm10
	paddd	%xmm10, %xmm11
	paddd	%xmm14, %xmm11
	pxor	%xmm11, %xmm2
	pshufd	$57, %xmm11, %xmm11
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	movdqa	%xmm10, %xmm3
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm3
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm13, %xmm10
	movdqa	%xmm3, %xmm8
	psrld	$7, %xmm3
	pslld	$25, %xmm8
	pxor	%xmm8, %xmm3
	movaps	%xmm9, %xmm8
	pshufd	$15, %xmm9, %xmm9
	shufps	$214, %xmm6, %xmm8
	pandn	%xmm9, %xmm0
	pshufd	$57, %xmm8, %xmm8
	paddd	%xmm8, %xmm11
	paddd	%xmm3, %xmm11
	pxor	%xmm11, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm10
	pxor	%xmm10, %xmm3
	movdqa	%xmm3, %xmm8
	pslld	$20, %xmm3
	psrld	$12, %xmm8
	pxor	%xmm3, %xmm8
	movaps	%xmm4, %xmm3
	shufps	$250, %xmm5, %xmm3
	andps	%xmm3, %xmm7
	por	%xmm7, %xmm0
	movdqa	%xmm8, %xmm7
	paddd	%xmm11, %xmm0
	paddd	%xmm8, %xmm0
	pxor	%xmm0, %xmm2
	pshufd	$147, %xmm0, %xmm11
	movdqa	%xmm5, %xmm0
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	punpcklqdq	%xmm6, %xmm0
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	punpckhdq	%xmm5, %xmm6
	paddd	%xmm2, %xmm10
	pxor	%xmm10, %xmm7
	pshufd	$78, %xmm2, %xmm2
	pshufd	$57, %xmm10, %xmm10
	movdqa	%xmm7, %xmm3
	psrld	$7, %xmm7
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm7
	movdqa	%xmm1, %xmm3
	pand	%xmm4, %xmm1
	pandn	%xmm0, %xmm3
	por	%xmm3, %xmm1
	pshufd	$120, %xmm1, %xmm0
	paddd	%xmm11, %xmm0
	paddd	%xmm7, %xmm0
	pxor	%xmm0, %xmm2
	movdqa	%xmm0, %xmm11
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm10
	pxor	%xmm10, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm7, %xmm3
	psrld	$12, %xmm1
	pslld	$20, %xmm3
	pxor	%xmm1, %xmm3
	movdqa	%xmm4, %xmm1
	movdqa	%xmm10, %xmm4
	punpckldq	%xmm6, %xmm1
	pshufd	$30, %xmm1, %xmm0
	paddd	%xmm3, %xmm0
	paddd	%xmm11, %xmm0
	pxor	%xmm0, %xmm2
	pshufd	$57, %xmm0, %xmm0
	movdqa	%xmm2, %xmm1
	psrld	$8, %xmm2
	pslld	$24, %xmm1
	pxor	%xmm1, %xmm2
	movdqa	%xmm3, %xmm1
	paddd	%xmm2, %xmm4
	pxor	%xmm4, %xmm1
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm4, %xmm4
	movdqa	%xmm1, %xmm3
	psrld	$7, %xmm1
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm1
	pxor	%xmm4, %xmm0
	pxor	%xmm1, %xmm2
	movups	%xmm0, (%rdi)
	movups	%xmm2, 16(%rdi)
	ret
	.cfi_endproc
.LFE4792:
	.size	blake3_compress_in_place_sse2, .-blake3_compress_in_place_sse2
	.p2align 4,,15
	.globl	blake3_compress_xof_sse2
	.type	blake3_compress_xof_sse2, @function
blake3_compress_xof_sse2:
.LFB4793:
	.cfi_startproc
	movq	%rcx, %rax
	movdqu	(%rsi), %xmm3
	shrq	$32, %rax
	movq	%rax, -24(%rsp)
	movzbl	%dl, %eax
	movl	%eax, -16(%rsp)
	movzbl	%r8b, %eax
	movl	%eax, -12(%rsp)
	movd	-16(%rsp), %xmm5
	movd	-12(%rsp), %xmm7
	movl	%ecx, -16(%rsp)
	movd	-16(%rsp), %xmm0
	movaps	%xmm3, %xmm1
	punpckldq	%xmm7, %xmm5
	movd	-24(%rsp), %xmm7
	movdqu	16(%rsi), %xmm6
	punpckldq	%xmm7, %xmm0
	shufps	$136, %xmm6, %xmm1
	movdqu	16(%rdi), %xmm2
	shufps	$221, %xmm6, %xmm3
	punpcklqdq	%xmm5, %xmm0
	movdqu	(%rdi), %xmm4
	paddd	%xmm2, %xmm4
	paddd	%xmm1, %xmm4
	movdqa	.LC0(%rip), %xmm7
	pxor	%xmm4, %xmm0
	paddd	%xmm3, %xmm4
	movdqu	32(%rsi), %xmm10
	pshuflw	$177, %xmm0, %xmm0
	movdqu	48(%rsi), %xmm8
	pshufhw	$177, %xmm0, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm2
	movdqa	%xmm2, %xmm5
	psrld	$12, %xmm2
	pslld	$20, %xmm5
	pxor	%xmm5, %xmm2
	paddd	%xmm2, %xmm4
	pxor	%xmm4, %xmm0
	pshufd	$147, %xmm4, %xmm4
	movdqa	%xmm0, %xmm5
	psrld	$8, %xmm0
	pslld	$24, %xmm5
	pxor	%xmm5, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm2
	pshufd	$78, %xmm0, %xmm0
	pshufd	$57, %xmm7, %xmm7
	movdqa	%xmm2, %xmm5
	psrld	$7, %xmm2
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm2
	movaps	%xmm10, %xmm5
	shufps	$221, %xmm8, %xmm10
	shufps	$136, %xmm8, %xmm5
	pshufd	$147, %xmm10, %xmm10
	pshufd	$147, %xmm5, %xmm5
	paddd	%xmm5, %xmm4
	paddd	%xmm2, %xmm4
	pxor	%xmm4, %xmm0
	movaps	%xmm5, %xmm13
	pshuflw	$177, %xmm0, %xmm0
	shufps	$250, %xmm10, %xmm13
	pshufhw	$177, %xmm0, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm2
	movdqa	%xmm2, %xmm6
	psrld	$12, %xmm2
	pslld	$20, %xmm6
	pxor	%xmm6, %xmm2
	movdqa	%xmm10, %xmm6
	paddd	%xmm2, %xmm6
	paddd	%xmm6, %xmm4
	pxor	%xmm4, %xmm0
	pshufd	$57, %xmm4, %xmm4
	movdqa	%xmm0, %xmm6
	psrld	$8, %xmm0
	pslld	$24, %xmm6
	pxor	%xmm6, %xmm0
	paddd	%xmm0, %xmm7
	pxor	%xmm7, %xmm2
	pshufd	$147, %xmm7, %xmm8
	movaps	%xmm1, %xmm7
	pshufd	$78, %xmm0, %xmm0
	shufps	$214, %xmm3, %xmm7
	movdqa	%xmm2, %xmm6
	psrld	$7, %xmm2
	pshufd	$15, %xmm1, %xmm1
	pslld	$25, %xmm6
	pxor	%xmm2, %xmm6
	pshufd	$57, %xmm7, %xmm7
	paddd	%xmm7, %xmm4
	paddd	%xmm6, %xmm4
	pxor	%xmm4, %xmm0
	pshuflw	$177, %xmm0, %xmm0
	pshufhw	$177, %xmm0, %xmm2
	paddd	%xmm2, %xmm8
	pxor	%xmm8, %xmm6
	movdqa	%xmm8, %xmm9
	movaps	.LC2(%rip), %xmm8
	movdqa	%xmm6, %xmm0
	psrld	$12, %xmm6
	andps	%xmm8, %xmm13
	pslld	$20, %xmm0
	pxor	%xmm6, %xmm0
	movdqa	.LC1(%rip), %xmm6
	movdqa	%xmm6, %xmm15
	pandn	%xmm1, %xmm15
	movdqa	%xmm2, %xmm1
	por	%xmm15, %xmm13
	paddd	%xmm13, %xmm4
	paddd	%xmm0, %xmm4
	pxor	%xmm4, %xmm1
	pshufd	$147, %xmm4, %xmm11
	movdqa	%xmm1, %xmm2
	psrld	$8, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm1
	paddd	%xmm1, %xmm9
	pxor	%xmm9, %xmm0
	pshufd	$57, %xmm9, %xmm4
	movdqa	%xmm10, %xmm9
	movdqa	%xmm0, %xmm2
	psrld	$7, %xmm0
	punpcklqdq	%xmm3, %xmm9
	pslld	$25, %xmm2
	pxor	%xmm2, %xmm0
	pshufd	$78, %xmm1, %xmm2
	movdqa	.LC3(%rip), %xmm1
	punpckhdq	%xmm10, %xmm3
	movdqa	%xmm1, %xmm12
	pandn	%xmm9, %xmm12
	movdqa	%xmm5, %xmm9
	punpckldq	%xmm3, %xmm5
	pand	%xmm1, %xmm9
	pshufd	$30, %xmm5, %xmm5
	por	%xmm12, %xmm9
	movdqa	%xmm5, %xmm3
	pshufd	$120, %xmm9, %xmm9
	paddd	%xmm9, %xmm11
	paddd	%xmm0, %xmm11
	pxor	%xmm11, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm4
	pxor	%xmm4, %xmm0
	movdqa	%xmm0, %xmm12
	psrld	$12, %xmm0
	pslld	$20, %xmm12
	pxor	%xmm12, %xmm0
	movaps	%xmm9, %xmm12
	paddd	%xmm0, %xmm3
	paddd	%xmm3, %xmm11
	pxor	%xmm11, %xmm2
	pshufd	$57, %xmm11, %xmm14
	movaps	%xmm7, %xmm11
	shufps	$250, %xmm5, %xmm12
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	shufps	$214, %xmm13, %xmm11
	pshufd	$15, %xmm7, %xmm7
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	pshufd	$57, %xmm11, %xmm11
	andps	%xmm8, %xmm12
	paddd	%xmm2, %xmm4
	pxor	%xmm4, %xmm3
	pshufd	$78, %xmm2, %xmm2
	paddd	%xmm11, %xmm14
	pshufd	$147, %xmm4, %xmm10
	movdqa	%xmm3, %xmm0
	psrld	$7, %xmm3
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm3
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm10
	pxor	%xmm10, %xmm3
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm4
	movdqa	%xmm6, %xmm3
	psrld	$12, %xmm0
	pandn	%xmm7, %xmm3
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm0
	movdqa	%xmm1, %xmm7
	por	%xmm3, %xmm12
	movdqa	%xmm0, %xmm4
	paddd	%xmm12, %xmm14
	paddd	%xmm0, %xmm14
	movdqa	%xmm5, %xmm0
	pxor	%xmm14, %xmm2
	punpcklqdq	%xmm13, %xmm0
	pshufd	$147, %xmm14, %xmm14
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	punpckhdq	%xmm5, %xmm13
	pandn	%xmm0, %xmm7
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	movaps	%xmm11, %xmm5
	pshufd	$15, %xmm11, %xmm11
	movdqa	%xmm7, %xmm0
	movdqa	%xmm9, %xmm7
	paddd	%xmm2, %xmm10
	pxor	%xmm10, %xmm4
	pand	%xmm1, %xmm7
	pshufd	$78, %xmm2, %xmm2
	movdqa	%xmm4, %xmm3
	psrld	$7, %xmm4
	pshufd	$57, %xmm10, %xmm10
	por	%xmm0, %xmm7
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm4
	punpckldq	%xmm13, %xmm9
	pshufd	$120, %xmm7, %xmm7
	shufps	$214, %xmm12, %xmm5
	pshufd	$30, %xmm9, %xmm9
	paddd	%xmm7, %xmm14
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$57, %xmm5, %xmm5
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm10
	pxor	%xmm10, %xmm4
	movdqa	%xmm4, %xmm3
	movdqa	%xmm4, %xmm0
	psrld	$12, %xmm3
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm3
	movdqa	%xmm9, %xmm0
	paddd	%xmm3, %xmm0
	paddd	%xmm0, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$57, %xmm14, %xmm14
	movdqa	%xmm2, %xmm0
	psrld	$8, %xmm2
	paddd	%xmm5, %xmm14
	pslld	$24, %xmm0
	pxor	%xmm0, %xmm2
	paddd	%xmm2, %xmm10
	pxor	%xmm10, %xmm3
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm10, %xmm13
	movaps	%xmm7, %xmm10
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm4
	shufps	$250, %xmm9, %xmm10
	psrld	$7, %xmm0
	pslld	$25, %xmm4
	pxor	%xmm4, %xmm0
	andps	%xmm8, %xmm10
	paddd	%xmm0, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	pshuflw	$177, %xmm2, %xmm2
	pandn	%xmm11, %xmm0
	movdqa	%xmm7, %xmm11
	pshufhw	$177, %xmm2, %xmm2
	por	%xmm0, %xmm10
	pand	%xmm1, %xmm11
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	paddd	%xmm10, %xmm14
	movdqa	%xmm4, %xmm3
	psrld	$12, %xmm4
	pslld	$20, %xmm3
	pxor	%xmm3, %xmm4
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$147, %xmm14, %xmm14
	movdqa	%xmm2, %xmm0
	psrld	$8, %xmm2
	pslld	$24, %xmm0
	pxor	%xmm0, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	pshufd	$78, %xmm2, %xmm2
	pshufd	$57, %xmm13, %xmm13
	movdqa	%xmm4, %xmm3
	movdqa	%xmm4, %xmm0
	movdqa	%xmm1, %xmm4
	pslld	$25, %xmm0
	psrld	$7, %xmm3
	pxor	%xmm0, %xmm3
	movdqa	%xmm9, %xmm0
	punpcklqdq	%xmm12, %xmm0
	punpckhdq	%xmm9, %xmm12
	movaps	%xmm5, %xmm9
	pshufd	$15, %xmm5, %xmm5
	pandn	%xmm0, %xmm4
	punpckldq	%xmm12, %xmm7
	shufps	$214, %xmm10, %xmm9
	por	%xmm4, %xmm11
	pshufd	$30, %xmm7, %xmm7
	pshufd	$57, %xmm9, %xmm9
	pshufd	$120, %xmm11, %xmm11
	paddd	%xmm11, %xmm14
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	movaps	%xmm11, %xmm12
	pshuflw	$177, %xmm2, %xmm2
	shufps	$250, %xmm7, %xmm12
	pshufhw	$177, %xmm2, %xmm2
	andps	%xmm8, %xmm12
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm3
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm4
	movdqa	%xmm7, %xmm3
	psrld	$12, %xmm0
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm0
	paddd	%xmm0, %xmm3
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm0, %xmm4
	pshufd	$57, %xmm14, %xmm14
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	paddd	%xmm9, %xmm14
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm13, %xmm13
	movdqa	%xmm4, %xmm3
	psrld	$7, %xmm4
	pslld	$25, %xmm3
	pxor	%xmm3, %xmm4
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	movdqa	%xmm4, %xmm3
	movdqa	%xmm4, %xmm0
	psrld	$12, %xmm3
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm3
	movdqa	%xmm6, %xmm0
	pandn	%xmm5, %xmm0
	movdqa	%xmm1, %xmm5
	por	%xmm0, %xmm12
	paddd	%xmm12, %xmm14
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$147, %xmm14, %xmm14
	movdqa	%xmm2, %xmm0
	psrld	$8, %xmm2
	pslld	$24, %xmm0
	pxor	%xmm0, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm3
	pshufd	$78, %xmm2, %xmm2
	pshufd	$57, %xmm13, %xmm13
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm4
	movdqa	%xmm7, %xmm3
	pslld	$25, %xmm4
	psrld	$7, %xmm0
	pxor	%xmm4, %xmm0
	punpcklqdq	%xmm10, %xmm3
	punpckhdq	%xmm7, %xmm10
	movdqa	%xmm0, %xmm4
	pandn	%xmm3, %xmm5
	movdqa	%xmm5, %xmm3
	movdqa	%xmm11, %xmm5
	punpckldq	%xmm10, %xmm11
	movaps	%xmm9, %xmm10
	pand	%xmm1, %xmm5
	pshufd	$30, %xmm11, %xmm11
	shufps	$214, %xmm12, %xmm10
	por	%xmm3, %xmm5
	pshufd	$15, %xmm9, %xmm9
	pshufd	$57, %xmm10, %xmm10
	pshufd	$120, %xmm5, %xmm5
	paddd	%xmm5, %xmm14
	paddd	%xmm0, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm11, %xmm0
	movaps	%xmm5, %xmm7
	pshuflw	$177, %xmm2, %xmm2
	shufps	$250, %xmm11, %xmm7
	pshufhw	$177, %xmm2, %xmm2
	andps	%xmm8, %xmm7
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	movdqa	%xmm4, %xmm3
	psrld	$12, %xmm4
	pslld	$20, %xmm3
	pxor	%xmm3, %xmm4
	paddd	%xmm4, %xmm0
	paddd	%xmm0, %xmm14
	pxor	%xmm14, %xmm2
	pshufd	$57, %xmm14, %xmm14
	movdqa	%xmm2, %xmm0
	psrld	$8, %xmm2
	paddd	%xmm10, %xmm14
	pslld	$24, %xmm0
	pxor	%xmm0, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	pshufd	$78, %xmm2, %xmm2
	pshufd	$147, %xmm13, %xmm13
	movdqa	%xmm4, %xmm3
	movdqa	%xmm4, %xmm0
	psrld	$7, %xmm3
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm3
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm3
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm4
	movdqa	%xmm6, %xmm3
	psrld	$12, %xmm0
	pandn	%xmm9, %xmm3
	pslld	$20, %xmm4
	pxor	%xmm4, %xmm0
	por	%xmm3, %xmm7
	movdqa	%xmm0, %xmm4
	paddd	%xmm7, %xmm14
	paddd	%xmm0, %xmm14
	pxor	%xmm14, %xmm2
	movdqa	%xmm11, %xmm0
	pshufd	$147, %xmm14, %xmm14
	movdqa	%xmm2, %xmm3
	psrld	$8, %xmm2
	punpcklqdq	%xmm12, %xmm0
	pslld	$24, %xmm3
	pxor	%xmm3, %xmm2
	punpckhdq	%xmm11, %xmm12
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm4
	pshufd	$78, %xmm2, %xmm2
	pshufd	$57, %xmm13, %xmm13
	movdqa	%xmm4, %xmm3
	psrld	$7, %xmm4
	pslld	$25, %xmm3
	pxor	%xmm4, %xmm3
	movdqa	%xmm1, %xmm4
	pandn	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	movdqa	%xmm5, %xmm4
	punpckldq	%xmm12, %xmm5
	pand	%xmm1, %xmm4
	pshufd	$30, %xmm5, %xmm5
	por	%xmm0, %xmm4
	movdqa	%xmm5, %xmm11
	pshufd	$120, %xmm4, %xmm4
	paddd	%xmm4, %xmm14
	paddd	%xmm3, %xmm14
	pxor	%xmm14, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm3
	movdqa	%xmm3, %xmm0
	psrld	$12, %xmm3
	pslld	$20, %xmm0
	pxor	%xmm0, %xmm3
	paddd	%xmm3, %xmm11
	paddd	%xmm14, %xmm11
	pxor	%xmm11, %xmm2
	pshufd	$57, %xmm11, %xmm11
	movdqa	%xmm2, %xmm0
	psrld	$8, %xmm2
	pslld	$24, %xmm0
	pxor	%xmm0, %xmm2
	paddd	%xmm2, %xmm13
	pxor	%xmm13, %xmm3
	pshufd	$78, %xmm2, %xmm2
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm9
	pshufd	$147, %xmm13, %xmm3
	psrld	$7, %xmm0
	pslld	$25, %xmm9
	pxor	%xmm9, %xmm0
	movaps	%xmm10, %xmm9
	pshufd	$15, %xmm10, %xmm10
	shufps	$214, %xmm7, %xmm9
	pandn	%xmm10, %xmm6
	pshufd	$57, %xmm9, %xmm9
	paddd	%xmm9, %xmm11
	paddd	%xmm0, %xmm11
	pxor	%xmm11, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm3
	pxor	%xmm3, %xmm0
	movdqa	%xmm0, %xmm9
	pslld	$20, %xmm0
	psrld	$12, %xmm9
	pxor	%xmm0, %xmm9
	movaps	%xmm4, %xmm0
	shufps	$250, %xmm5, %xmm0
	andps	%xmm0, %xmm8
	por	%xmm8, %xmm6
	movdqa	%xmm9, %xmm8
	paddd	%xmm11, %xmm6
	paddd	%xmm9, %xmm6
	pxor	%xmm6, %xmm2
	pshufd	$147, %xmm6, %xmm6
	movdqa	%xmm2, %xmm0
	psrld	$8, %xmm2
	pslld	$24, %xmm0
	pxor	%xmm0, %xmm2
	paddd	%xmm2, %xmm3
	pxor	%xmm3, %xmm8
	pshufd	$57, %xmm3, %xmm9
	movdqa	%xmm1, %xmm3
	pand	%xmm4, %xmm1
	movdqa	%xmm8, %xmm0
	psrld	$7, %xmm8
	pshufd	$78, %xmm2, %xmm2
	pslld	$25, %xmm0
	pxor	%xmm0, %xmm8
	movdqa	%xmm5, %xmm0
	punpcklqdq	%xmm7, %xmm0
	punpckhdq	%xmm5, %xmm7
	pandn	%xmm0, %xmm3
	por	%xmm3, %xmm1
	pshufd	$120, %xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	paddd	%xmm6, %xmm0
	movdqa	%xmm0, %xmm6
	paddd	%xmm8, %xmm6
	pxor	%xmm6, %xmm2
	pshuflw	$177, %xmm2, %xmm2
	pshufhw	$177, %xmm2, %xmm2
	paddd	%xmm2, %xmm9
	pxor	%xmm9, %xmm1
	movdqa	%xmm1, %xmm3
	psrld	$12, %xmm1
	pslld	$20, %xmm3
	pxor	%xmm1, %xmm3
	movdqa	%xmm4, %xmm1
	movdqa	%xmm9, %xmm4
	punpckldq	%xmm7, %xmm1
	pshufd	$30, %xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	paddd	%xmm3, %xmm0
	paddd	%xmm6, %xmm0
	pxor	%xmm0, %xmm1
	pshufd	$57, %xmm0, %xmm0
	movdqa	%xmm1, %xmm2
	psrld	$8, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm1
	paddd	%xmm1, %xmm4
	pxor	%xmm4, %xmm3
	pshufd	$78, %xmm1, %xmm1
	movdqa	%xmm3, %xmm2
	movdqa	%xmm3, %xmm5
	pshufd	$147, %xmm4, %xmm3
	psrld	$7, %xmm2
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm2
	pxor	%xmm3, %xmm0
	pxor	%xmm1, %xmm2
	movups	%xmm0, (%r9)
	movups	%xmm2, 16(%r9)
	movdqu	(%rdi), %xmm6
	pxor	%xmm6, %xmm3
	movups	%xmm3, 32(%r9)
	movdqu	16(%rdi), %xmm0
	pxor	%xmm0, %xmm1
	movups	%xmm1, 48(%r9)
	ret
	.cfi_endproc
.LFE4793:
	.size	blake3_compress_xof_sse2, .-blake3_compress_xof_sse2
	.p2align 4,,15
	.globl	blake3_hash_many_sse2
	.type	blake3_hash_many_sse2, @function
blake3_hash_many_sse2:
.LFB4800:
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
	subq	$472, %rsp
	.cfi_def_cfa_offset 528
	movzbl	544(%rsp), %edx
	movl	528(%rsp), %edi
	movl	536(%rsp), %ecx
	movq	%rsi, 368(%rsp)
	movq	552(%rsp), %r13
	movb	%r9b, 382(%rsp)
	movl	%edi, 392(%rsp)
	movl	%edi, %ebp
	movb	%dl, 383(%rsp)
	movl	%ecx, 396(%rsp)
	movq	%fs:40, %rdx
	movq	%rdx, 456(%rsp)
	xorl	%edx, %edx
	cmpq	$3, %rsi
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
	movd	(%rsp), %xmm4
	movq	%rdi, 384(%rsp)
	andl	$3, %edi
	movq	%r12, 400(%rsp)
	movq	%r13, 408(%rsp)
	movq	%rax, %r15
	pshufd	$0, %xmm4, %xmm0
	movb	%dl, 381(%rsp)
	movq	%rdi, %r12
	movl	%esi, %r13d
	pand	.LC4(%rip), %xmm0
	movaps	%xmm0, 336(%rsp)
	pxor	.LC5(%rip), %xmm0
	movaps	%xmm0, 352(%rsp)
	.p2align 4,,10
	.p2align 3
.L10:
	movl	%ebx, (%rsp)
	movq	%rbx, %rax
	shrq	$32, %rax
	testq	%r10, %r10
	movd	(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movdqa	%xmm4, %xmm11
	movdqa	%xmm4, %xmm3
	movd	4(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movdqa	%xmm4, %xmm10
	movdqa	%xmm4, %xmm6
	movd	8(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movdqa	%xmm4, %xmm9
	movdqa	%xmm4, %xmm2
	movd	12(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movdqa	%xmm4, %xmm7
	movd	16(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movdqa	%xmm4, %xmm5
	movd	20(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movdqa	%xmm4, %xmm8
	movdqa	%xmm4, %xmm14
	movd	24(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movaps	%xmm4, 272(%rsp)
	movd	28(%r11), %xmm4
	pshufd	$0, %xmm4, %xmm4
	movaps	%xmm4, 256(%rsp)
	movd	(%rsp), %xmm4
	movq	%rax, (%rsp)
	pshufd	$0, %xmm4, %xmm0
	movd	(%rsp), %xmm4
	pshufd	$0, %xmm4, %xmm1
	paddd	336(%rsp), %xmm0
	movaps	%xmm0, 304(%rsp)
	pxor	.LC5(%rip), %xmm0
	movdqa	352(%rsp), %xmm4
	pcmpgtd	%xmm0, %xmm4
	psubd	%xmm4, %xmm1
	je	.L6
	movq	(%r14), %rax
	movzbl	381(%rsp), %edi
	xorl	%r8d, %r8d
	movaps	%xmm1, 320(%rsp)
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
	je	.L35
.L7:
	movdqu	-256(%rsi), %xmm1
	prefetcht0	(%rsi)
	prefetcht0	(%rcx)
	prefetcht0	(%rdx)
	prefetcht0	(%rax)
	movzbl	%dil, %edi
	movdqu	-256(%rcx), %xmm0
	movdqa	%xmm1, %xmm12
	paddd	%xmm5, %xmm11
	movl	%edi, 288(%rsp)
	paddd	%xmm8, %xmm10
	addq	$64, %rsi
	punpckldq	%xmm0, %xmm12
	movdqu	-256(%rax), %xmm3
	punpckhdq	%xmm0, %xmm1
	addq	$64, %rcx
	movdqu	-256(%rdx), %xmm0
	addq	$64, %rax
	movdqa	%xmm12, %xmm6
	addq	$64, %rdx
	movdqa	%xmm0, %xmm2
	movl	%ebp, %edi
	punpckhdq	%xmm3, %xmm0
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm1, %xmm14
	movdqa	%xmm1, %xmm3
	movdqu	-304(%rsi), %xmm1
	punpcklqdq	%xmm0, %xmm14
	punpckhqdq	%xmm0, %xmm3
	movdqa	%xmm12, %xmm4
	movdqu	-304(%rcx), %xmm0
	movdqa	%xmm1, %xmm12
	punpckhdq	%xmm0, %xmm1
	punpckldq	%xmm0, %xmm12
	movdqu	-304(%rdx), %xmm0
	punpcklqdq	%xmm2, %xmm6
	punpckhqdq	%xmm2, %xmm4
	movdqa	%xmm0, %xmm2
	movaps	%xmm3, 48(%rsp)
	movdqa	%xmm12, %xmm15
	movdqa	%xmm12, %xmm13
	movaps	%xmm4, 16(%rsp)
	movdqu	-304(%rax), %xmm3
	punpckldq	%xmm3, %xmm2
	punpckhdq	%xmm3, %xmm0
	movdqu	-288(%rsi), %xmm12
	punpcklqdq	%xmm2, %xmm15
	punpckhqdq	%xmm2, %xmm13
	movdqa	%xmm1, %xmm2
	movdqu	-288(%rax), %xmm3
	punpcklqdq	%xmm0, %xmm2
	movaps	%xmm13, 80(%rsp)
	movdqa	%xmm2, %xmm13
	movdqa	%xmm1, %xmm2
	movdqa	%xmm12, %xmm1
	punpckhqdq	%xmm0, %xmm2
	movdqu	-288(%rcx), %xmm0
	punpckldq	%xmm0, %xmm1
	punpckhdq	%xmm0, %xmm12
	movdqu	-288(%rdx), %xmm0
	movaps	%xmm2, 112(%rsp)
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm0
	movdqa	%xmm1, %xmm4
	punpckldq	%xmm3, %xmm2
	movdqa	%xmm12, %xmm3
	punpckhqdq	%xmm0, %xmm12
	punpckhqdq	%xmm2, %xmm1
	punpcklqdq	%xmm0, %xmm3
	movdqu	-272(%rcx), %xmm0
	punpcklqdq	%xmm2, %xmm4
	movaps	%xmm1, 144(%rsp)
	movaps	%xmm3, 160(%rsp)
	movaps	%xmm4, 128(%rsp)
	movaps	%xmm12, 176(%rsp)
	movdqu	-272(%rsi), %xmm1
	movdqa	%xmm1, %xmm3
	punpckhdq	%xmm0, %xmm1
	movdqu	-272(%rax), %xmm4
	punpckldq	%xmm0, %xmm3
	movdqu	-272(%rdx), %xmm0
	cmpq	%r8, %r10
	movdqa	%xmm0, %xmm2
	movdqa	%xmm3, %xmm12
	punpckhdq	%xmm4, %xmm0
	punpckldq	%xmm4, %xmm2
	movdqa	%xmm3, %xmm4
	punpcklqdq	%xmm2, %xmm12
	punpckhqdq	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	punpckhqdq	%xmm0, %xmm1
	punpcklqdq	%xmm0, %xmm2
	movaps	%xmm12, 192(%rsp)
	movaps	%xmm4, 208(%rsp)
	movaps	%xmm2, 224(%rsp)
	movaps	%xmm1, 240(%rsp)
	paddd	256(%rsp), %xmm7
	paddd	272(%rsp), %xmm9
	movaps	%xmm6, (%rsp)
	movaps	%xmm14, 32(%rsp)
	paddd	(%rsp), %xmm11
	movaps	%xmm13, 96(%rsp)
	paddd	32(%rsp), %xmm10
	movaps	%xmm15, 64(%rsp)
	paddd	96(%rsp), %xmm7
	paddd	64(%rsp), %xmm9
	movdqa	304(%rsp), %xmm0
	pxor	%xmm11, %xmm0
	paddd	16(%rsp), %xmm11
	movdqa	.LC6(%rip), %xmm3
	pshuflw	$177, %xmm0, %xmm13
	movdqa	320(%rsp), %xmm0
	pxor	%xmm9, %xmm3
	paddd	80(%rsp), %xmm9
	pxor	%xmm10, %xmm0
	paddd	48(%rsp), %xmm10
	pshufhw	$177, %xmm13, %xmm13
	movdqa	.LC7(%rip), %xmm14
	pshuflw	$177, %xmm3, %xmm3
	pshuflw	$177, %xmm0, %xmm4
	movd	288(%rsp), %xmm0
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm5
	movdqa	.LC9(%rip), %xmm15
	pshufd	$0, %xmm0, %xmm12
	pshufhw	$177, %xmm4, %xmm4
	movdqa	.LC8(%rip), %xmm0
	pshufhw	$177, %xmm3, %xmm3
	pxor	%xmm7, %xmm12
	paddd	112(%rsp), %xmm7
	paddd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm2
	movdqa	.LC10(%rip), %xmm0
	paddd	%xmm3, %xmm15
	pshuflw	$177, %xmm12, %xmm12
	pxor	%xmm2, %xmm8
	pshufhw	$177, %xmm12, %xmm12
	paddd	%xmm12, %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	%xmm5, %xmm0
	psrld	$12, %xmm5
	movdqa	%xmm5, %xmm6
	movdqa	%xmm8, %xmm5
	psrld	$12, %xmm8
	pslld	$20, %xmm0
	pslld	$20, %xmm5
	pxor	%xmm0, %xmm6
	pxor	%xmm5, %xmm8
	movdqa	256(%rsp), %xmm0
	movdqa	272(%rsp), %xmm5
	paddd	%xmm6, %xmm11
	pxor	288(%rsp), %xmm0
	movdqa	%xmm8, %xmm1
	pxor	%xmm15, %xmm5
	paddd	%xmm1, %xmm10
	pxor	%xmm11, %xmm13
	pxor	%xmm10, %xmm4
	movdqa	%xmm5, %xmm8
	psrld	$12, %xmm5
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm5
	movdqa	%xmm0, %xmm8
	psrld	$12, %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm0
	paddd	%xmm5, %xmm9
	pxor	%xmm9, %xmm3
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm8
	movdqa	%xmm13, %xmm7
	psrld	$8, %xmm13
	movaps	%xmm8, 256(%rsp)
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm13
	movdqa	%xmm4, %xmm7
	psrld	$8, %xmm4
	pxor	256(%rsp), %xmm12
	pslld	$24, %xmm7
	paddd	%xmm13, %xmm14
	movdqa	288(%rsp), %xmm8
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm7
	psrld	$8, %xmm3
	pxor	%xmm14, %xmm6
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm3
	movdqa	%xmm12, %xmm7
	psrld	$8, %xmm12
	paddd	%xmm4, %xmm2
	pxor	%xmm2, %xmm1
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm12
	movdqa	%xmm6, %xmm7
	psrld	$7, %xmm6
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	pslld	$25, %xmm7
	pxor	%xmm7, %xmm6
	paddd	%xmm12, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	%xmm6, %xmm7
	movdqa	%xmm1, %xmm6
	psrld	$7, %xmm1
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm1
	movdqa	%xmm5, %xmm6
	psrld	$7, %xmm5
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm5
	movdqa	%xmm0, %xmm6
	psrld	$7, %xmm0
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	128(%rsp), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm6, %xmm11
	movdqa	160(%rsp), %xmm6
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm6
	paddd	%xmm6, %xmm10
	movdqa	192(%rsp), %xmm6
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm6
	paddd	%xmm6, %xmm9
	movaps	%xmm9, 272(%rsp)
	movdqa	%xmm7, %xmm6
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm13, %xmm13
	movdqa	224(%rsp), %xmm9
	pxor	272(%rsp), %xmm4
	paddd	%xmm7, %xmm9
	movdqa	256(%rsp), %xmm7
	pshufhw	$177, %xmm12, %xmm12
	paddd	%xmm9, %xmm7
	pxor	%xmm7, %xmm3
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm4, %xmm4
	paddd	%xmm12, %xmm15
	pshuflw	$177, %xmm3, %xmm3
	pxor	%xmm15, %xmm1
	paddd	%xmm13, %xmm8
	pshufhw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm3, %xmm3
	pxor	%xmm8, %xmm5
	movdqa	%xmm1, %xmm9
	psrld	$12, %xmm1
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm0
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 256(%rsp)
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm1
	movdqa	%xmm5, %xmm9
	psrld	$12, %xmm5
	pxor	256(%rsp), %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm5
	movdqa	%xmm0, %xmm9
	psrld	$12, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm0
	movdqa	%xmm6, %xmm9
	psrld	$12, %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm6
	movdqa	144(%rsp), %xmm9
	paddd	%xmm1, %xmm9
	paddd	%xmm9, %xmm11
	movdqa	176(%rsp), %xmm9
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm9
	paddd	%xmm9, %xmm10
	movdqa	208(%rsp), %xmm9
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm9
	movdqa	%xmm9, %xmm2
	movdqa	272(%rsp), %xmm9
	paddd	%xmm2, %xmm9
	movdqa	240(%rsp), %xmm2
	pxor	%xmm9, %xmm4
	paddd	%xmm6, %xmm2
	paddd	%xmm2, %xmm7
	movdqa	%xmm12, %xmm2
	psrld	$8, %xmm12
	pxor	%xmm7, %xmm3
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm12
	movdqa	%xmm13, %xmm2
	psrld	$8, %xmm13
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm13
	movaps	%xmm12, 272(%rsp)
	movdqa	%xmm4, %xmm2
	psrld	$8, %xmm4
	paddd	%xmm13, %xmm8
	pxor	%xmm8, %xmm5
	paddd	272(%rsp), %xmm15
	pxor	%xmm15, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	%xmm3, %xmm2
	psrld	$8, %xmm3
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	pxor	%xmm2, %xmm3
	paddd	%xmm4, %xmm14
	movdqa	256(%rsp), %xmm2
	pxor	%xmm14, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	%xmm3, %xmm2
	pxor	%xmm2, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm6, %xmm12
	psrld	$7, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm6
	movdqa	32(%rsp), %xmm12
	paddd	%xmm6, %xmm12
	paddd	%xmm12, %xmm11
	movdqa	48(%rsp), %xmm12
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm12
	paddd	%xmm12, %xmm10
	movdqa	112(%rsp), %xmm12
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm12
	paddd	%xmm12, %xmm9
	movdqa	64(%rsp), %xmm12
	pshuflw	$177, %xmm13, %xmm13
	paddd	%xmm0, %xmm12
	paddd	%xmm12, %xmm7
	movdqa	272(%rsp), %xmm12
	pxor	%xmm9, %xmm3
	pxor	%xmm7, %xmm12
	pshuflw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm3, %xmm3
	pshufhw	$177, %xmm4, %xmm4
	paddd	%xmm13, %xmm14
	pshufhw	$177, %xmm12, %xmm12
	pxor	%xmm14, %xmm6
	pshufhw	$177, %xmm3, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm12, %xmm8
	movaps	%xmm8, 256(%rsp)
	pxor	%xmm2, %xmm1
	movdqa	%xmm6, %xmm8
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	psrld	$12, %xmm6
	pxor	256(%rsp), %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm6
	movdqa	%xmm1, %xmm8
	psrld	$12, %xmm1
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm1
	movdqa	%xmm5, %xmm8
	psrld	$12, %xmm5
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm5
	movdqa	%xmm0, %xmm8
	psrld	$12, %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	96(%rsp), %xmm8
	paddd	%xmm6, %xmm8
	paddd	%xmm8, %xmm11
	movdqa	160(%rsp), %xmm8
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm8
	paddd	%xmm8, %xmm10
	movdqa	(%rsp), %xmm8
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm8
	paddd	%xmm8, %xmm9
	movdqa	208(%rsp), %xmm8
	pxor	%xmm9, %xmm3
	paddd	%xmm0, %xmm8
	paddd	%xmm7, %xmm8
	movaps	%xmm8, 272(%rsp)
	movdqa	%xmm13, %xmm7
	psrld	$8, %xmm13
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm13
	pxor	272(%rsp), %xmm12
	movdqa	%xmm4, %xmm7
	psrld	$8, %xmm4
	movdqa	256(%rsp), %xmm8
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm7
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm6
	psrld	$8, %xmm3
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm3
	movdqa	%xmm12, %xmm7
	psrld	$8, %xmm12
	paddd	%xmm4, %xmm2
	pxor	%xmm2, %xmm1
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm12
	movdqa	%xmm6, %xmm7
	psrld	$7, %xmm6
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	pslld	$25, %xmm7
	pxor	%xmm7, %xmm6
	paddd	%xmm12, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	%xmm6, %xmm7
	movdqa	%xmm1, %xmm6
	psrld	$7, %xmm1
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm1
	movdqa	%xmm5, %xmm6
	psrld	$7, %xmm5
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm5
	movdqa	%xmm0, %xmm6
	psrld	$7, %xmm0
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	16(%rsp), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm6, %xmm11
	movdqa	192(%rsp), %xmm6
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm6
	paddd	%xmm6, %xmm10
	movdqa	144(%rsp), %xmm6
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm6
	paddd	%xmm6, %xmm9
	movaps	%xmm9, 256(%rsp)
	movdqa	%xmm7, %xmm6
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm13, %xmm13
	movdqa	240(%rsp), %xmm9
	pshufhw	$177, %xmm12, %xmm12
	paddd	%xmm7, %xmm9
	movdqa	272(%rsp), %xmm7
	pshufhw	$177, %xmm13, %xmm13
	pxor	256(%rsp), %xmm4
	paddd	%xmm9, %xmm7
	paddd	%xmm12, %xmm15
	pxor	%xmm7, %xmm3
	paddd	%xmm13, %xmm8
	pxor	%xmm15, %xmm1
	pxor	%xmm8, %xmm5
	pshuflw	$177, %xmm3, %xmm3
	pshuflw	$177, %xmm4, %xmm4
	movdqa	%xmm1, %xmm9
	psrld	$12, %xmm1
	pshufhw	$177, %xmm3, %xmm3
	pslld	$20, %xmm9
	pshufhw	$177, %xmm4, %xmm4
	pxor	%xmm9, %xmm1
	movdqa	%xmm5, %xmm9
	psrld	$12, %xmm5
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 272(%rsp)
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm5
	pxor	272(%rsp), %xmm6
	movdqa	%xmm0, %xmm9
	psrld	$12, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm0
	movdqa	%xmm6, %xmm9
	psrld	$12, %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm6
	movdqa	176(%rsp), %xmm9
	paddd	%xmm1, %xmm9
	paddd	%xmm9, %xmm11
	movdqa	80(%rsp), %xmm9
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm9
	paddd	%xmm9, %xmm10
	movdqa	224(%rsp), %xmm9
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm9
	movdqa	%xmm9, %xmm2
	movdqa	256(%rsp), %xmm9
	paddd	%xmm2, %xmm9
	movdqa	128(%rsp), %xmm2
	pxor	%xmm9, %xmm4
	paddd	%xmm6, %xmm2
	paddd	%xmm2, %xmm7
	movdqa	%xmm12, %xmm2
	psrld	$8, %xmm12
	pxor	%xmm7, %xmm3
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm12
	movdqa	%xmm13, %xmm2
	psrld	$8, %xmm13
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm13
	movaps	%xmm12, 256(%rsp)
	movdqa	%xmm4, %xmm2
	psrld	$8, %xmm4
	paddd	%xmm13, %xmm8
	pxor	%xmm8, %xmm5
	paddd	256(%rsp), %xmm15
	pxor	%xmm15, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	%xmm3, %xmm2
	psrld	$8, %xmm3
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	pxor	%xmm2, %xmm3
	paddd	%xmm4, %xmm14
	movdqa	272(%rsp), %xmm2
	pxor	%xmm14, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	%xmm3, %xmm2
	pxor	%xmm2, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm6, %xmm12
	psrld	$7, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm6
	movdqa	48(%rsp), %xmm12
	paddd	%xmm6, %xmm12
	paddd	%xmm12, %xmm11
	movdqa	160(%rsp), %xmm12
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm12
	paddd	%xmm12, %xmm10
	movdqa	208(%rsp), %xmm12
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm12
	paddd	%xmm12, %xmm9
	movdqa	112(%rsp), %xmm12
	pshuflw	$177, %xmm13, %xmm13
	paddd	%xmm0, %xmm12
	paddd	%xmm12, %xmm7
	movdqa	256(%rsp), %xmm12
	pxor	%xmm9, %xmm3
	pxor	%xmm7, %xmm12
	pshuflw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm3, %xmm3
	pshufhw	$177, %xmm4, %xmm4
	paddd	%xmm13, %xmm14
	pshufhw	$177, %xmm12, %xmm12
	pxor	%xmm14, %xmm6
	pshufhw	$177, %xmm3, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm12, %xmm8
	movaps	%xmm8, 256(%rsp)
	pxor	%xmm2, %xmm1
	movdqa	%xmm6, %xmm8
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	psrld	$12, %xmm6
	pxor	256(%rsp), %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm6
	movdqa	%xmm1, %xmm8
	psrld	$12, %xmm1
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm1
	movdqa	%xmm5, %xmm8
	psrld	$12, %xmm5
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm5
	movdqa	%xmm0, %xmm8
	psrld	$12, %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	64(%rsp), %xmm8
	paddd	%xmm6, %xmm8
	paddd	%xmm8, %xmm11
	movdqa	192(%rsp), %xmm8
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm8
	paddd	%xmm8, %xmm10
	movdqa	32(%rsp), %xmm8
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm8
	paddd	%xmm8, %xmm9
	movdqa	224(%rsp), %xmm8
	pxor	%xmm9, %xmm3
	paddd	%xmm0, %xmm8
	paddd	%xmm7, %xmm8
	movaps	%xmm8, 272(%rsp)
	movdqa	%xmm13, %xmm7
	psrld	$8, %xmm13
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm13
	pxor	272(%rsp), %xmm12
	movdqa	%xmm4, %xmm7
	psrld	$8, %xmm4
	movdqa	256(%rsp), %xmm8
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm7
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm6
	psrld	$8, %xmm3
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm3
	movdqa	%xmm12, %xmm7
	psrld	$8, %xmm12
	paddd	%xmm4, %xmm2
	pxor	%xmm2, %xmm1
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm12
	movdqa	%xmm6, %xmm7
	psrld	$7, %xmm6
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	pslld	$25, %xmm7
	pxor	%xmm7, %xmm6
	paddd	%xmm12, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	%xmm6, %xmm7
	movdqa	%xmm1, %xmm6
	psrld	$7, %xmm1
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm1
	movdqa	%xmm5, %xmm6
	psrld	$7, %xmm5
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm5
	movdqa	%xmm0, %xmm6
	psrld	$7, %xmm0
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	96(%rsp), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm6, %xmm11
	movdqa	144(%rsp), %xmm6
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm6
	paddd	%xmm6, %xmm10
	movdqa	176(%rsp), %xmm6
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm6
	paddd	%xmm6, %xmm9
	movaps	%xmm9, 256(%rsp)
	movdqa	%xmm7, %xmm6
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm13, %xmm13
	movdqa	128(%rsp), %xmm9
	pshufhw	$177, %xmm12, %xmm12
	paddd	%xmm7, %xmm9
	movdqa	272(%rsp), %xmm7
	pshufhw	$177, %xmm13, %xmm13
	pxor	256(%rsp), %xmm4
	paddd	%xmm9, %xmm7
	paddd	%xmm12, %xmm15
	pxor	%xmm7, %xmm3
	paddd	%xmm13, %xmm8
	pxor	%xmm15, %xmm1
	pxor	%xmm8, %xmm5
	pshuflw	$177, %xmm3, %xmm3
	pshuflw	$177, %xmm4, %xmm4
	movdqa	%xmm1, %xmm9
	psrld	$12, %xmm1
	pshufhw	$177, %xmm3, %xmm3
	pslld	$20, %xmm9
	pshufhw	$177, %xmm4, %xmm4
	pxor	%xmm9, %xmm1
	movdqa	%xmm5, %xmm9
	psrld	$12, %xmm5
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 272(%rsp)
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm5
	pxor	272(%rsp), %xmm6
	movdqa	%xmm0, %xmm9
	psrld	$12, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm0
	movdqa	%xmm6, %xmm9
	psrld	$12, %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm6
	movdqa	80(%rsp), %xmm9
	paddd	%xmm1, %xmm9
	paddd	%xmm9, %xmm11
	movdqa	(%rsp), %xmm9
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm9
	paddd	%xmm9, %xmm10
	movdqa	240(%rsp), %xmm9
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm9
	movdqa	%xmm9, %xmm2
	movdqa	256(%rsp), %xmm9
	paddd	%xmm2, %xmm9
	movdqa	16(%rsp), %xmm2
	pxor	%xmm9, %xmm4
	paddd	%xmm6, %xmm2
	paddd	%xmm2, %xmm7
	movdqa	%xmm12, %xmm2
	psrld	$8, %xmm12
	pxor	%xmm7, %xmm3
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm12
	movdqa	%xmm13, %xmm2
	psrld	$8, %xmm13
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm13
	movaps	%xmm12, 256(%rsp)
	movdqa	%xmm4, %xmm2
	psrld	$8, %xmm4
	paddd	%xmm13, %xmm8
	pxor	%xmm8, %xmm5
	paddd	256(%rsp), %xmm15
	pxor	%xmm15, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	%xmm3, %xmm2
	psrld	$8, %xmm3
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	pxor	%xmm2, %xmm3
	paddd	%xmm4, %xmm14
	movdqa	272(%rsp), %xmm2
	pxor	%xmm14, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	%xmm3, %xmm2
	pxor	%xmm2, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm6, %xmm12
	psrld	$7, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm6
	movdqa	160(%rsp), %xmm12
	paddd	%xmm6, %xmm12
	paddd	%xmm12, %xmm11
	movdqa	192(%rsp), %xmm12
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm12
	paddd	%xmm12, %xmm10
	movdqa	224(%rsp), %xmm12
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm12
	paddd	%xmm12, %xmm9
	movdqa	208(%rsp), %xmm12
	pshuflw	$177, %xmm13, %xmm13
	paddd	%xmm0, %xmm12
	paddd	%xmm12, %xmm7
	movdqa	256(%rsp), %xmm12
	pxor	%xmm9, %xmm3
	pxor	%xmm7, %xmm12
	pshuflw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm3, %xmm3
	pshufhw	$177, %xmm4, %xmm4
	paddd	%xmm13, %xmm14
	pshufhw	$177, %xmm12, %xmm12
	pxor	%xmm14, %xmm6
	pshufhw	$177, %xmm3, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm12, %xmm8
	movaps	%xmm8, 256(%rsp)
	pxor	%xmm2, %xmm1
	movdqa	%xmm6, %xmm8
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	psrld	$12, %xmm6
	pxor	256(%rsp), %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm6
	movdqa	%xmm1, %xmm8
	psrld	$12, %xmm1
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm1
	movdqa	%xmm5, %xmm8
	psrld	$12, %xmm5
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm5
	movdqa	%xmm0, %xmm8
	psrld	$12, %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	112(%rsp), %xmm8
	paddd	%xmm6, %xmm8
	paddd	%xmm8, %xmm11
	movdqa	144(%rsp), %xmm8
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm8
	paddd	%xmm8, %xmm10
	movdqa	48(%rsp), %xmm8
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm8
	paddd	%xmm8, %xmm9
	movdqa	240(%rsp), %xmm8
	pxor	%xmm9, %xmm3
	paddd	%xmm0, %xmm8
	paddd	%xmm7, %xmm8
	movaps	%xmm8, 272(%rsp)
	movdqa	%xmm13, %xmm7
	psrld	$8, %xmm13
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm13
	pxor	272(%rsp), %xmm12
	movdqa	%xmm4, %xmm7
	psrld	$8, %xmm4
	movdqa	256(%rsp), %xmm8
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm7
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm6
	psrld	$8, %xmm3
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm3
	movdqa	%xmm12, %xmm7
	psrld	$8, %xmm12
	paddd	%xmm4, %xmm2
	pxor	%xmm2, %xmm1
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm12
	movdqa	%xmm6, %xmm7
	psrld	$7, %xmm6
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	pslld	$25, %xmm7
	pxor	%xmm7, %xmm6
	paddd	%xmm12, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	%xmm6, %xmm7
	movdqa	%xmm1, %xmm6
	psrld	$7, %xmm1
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm1
	movdqa	%xmm5, %xmm6
	psrld	$7, %xmm5
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm5
	movdqa	%xmm0, %xmm6
	psrld	$7, %xmm0
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	64(%rsp), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm6, %xmm11
	movdqa	176(%rsp), %xmm6
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm6
	paddd	%xmm6, %xmm10
	movdqa	80(%rsp), %xmm6
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm6
	paddd	%xmm6, %xmm9
	movaps	%xmm9, 256(%rsp)
	movdqa	%xmm7, %xmm6
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm13, %xmm13
	movdqa	16(%rsp), %xmm9
	pxor	256(%rsp), %xmm4
	paddd	%xmm7, %xmm9
	movdqa	272(%rsp), %xmm7
	pshufhw	$177, %xmm12, %xmm12
	paddd	%xmm9, %xmm7
	pxor	%xmm7, %xmm3
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm4, %xmm4
	paddd	%xmm12, %xmm15
	pshuflw	$177, %xmm3, %xmm3
	pxor	%xmm15, %xmm1
	paddd	%xmm13, %xmm8
	pshufhw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm3, %xmm3
	pxor	%xmm8, %xmm5
	movdqa	%xmm1, %xmm9
	psrld	$12, %xmm1
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm0
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 272(%rsp)
	pslld	$20, %xmm9
	pxor	272(%rsp), %xmm6
	pxor	%xmm9, %xmm1
	movdqa	%xmm5, %xmm9
	psrld	$12, %xmm5
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm5
	movdqa	%xmm0, %xmm9
	psrld	$12, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm0
	movdqa	%xmm6, %xmm9
	psrld	$12, %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm6
	movdqa	(%rsp), %xmm9
	paddd	%xmm1, %xmm9
	paddd	%xmm9, %xmm11
	movdqa	32(%rsp), %xmm9
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm9
	paddd	%xmm9, %xmm10
	movdqa	128(%rsp), %xmm9
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm9
	movdqa	%xmm9, %xmm2
	movdqa	256(%rsp), %xmm9
	paddd	%xmm2, %xmm9
	movdqa	96(%rsp), %xmm2
	pxor	%xmm9, %xmm4
	paddd	%xmm6, %xmm2
	paddd	%xmm2, %xmm7
	movdqa	%xmm12, %xmm2
	psrld	$8, %xmm12
	pxor	%xmm7, %xmm3
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm12
	movdqa	%xmm13, %xmm2
	psrld	$8, %xmm13
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm13
	movaps	%xmm12, 256(%rsp)
	movdqa	%xmm4, %xmm2
	psrld	$8, %xmm4
	paddd	%xmm13, %xmm8
	pxor	%xmm8, %xmm5
	paddd	256(%rsp), %xmm15
	pxor	%xmm15, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	%xmm3, %xmm2
	psrld	$8, %xmm3
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	pxor	%xmm2, %xmm3
	paddd	%xmm4, %xmm14
	movdqa	272(%rsp), %xmm2
	pxor	%xmm14, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	%xmm3, %xmm2
	pxor	%xmm2, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm6, %xmm12
	psrld	$7, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm6
	movdqa	192(%rsp), %xmm12
	paddd	%xmm6, %xmm12
	paddd	%xmm12, %xmm11
	movdqa	144(%rsp), %xmm12
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm12
	paddd	%xmm12, %xmm10
	movdqa	240(%rsp), %xmm12
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm12
	paddd	%xmm12, %xmm9
	movdqa	224(%rsp), %xmm12
	pshuflw	$177, %xmm13, %xmm13
	paddd	%xmm0, %xmm12
	paddd	%xmm12, %xmm7
	movdqa	256(%rsp), %xmm12
	pxor	%xmm9, %xmm3
	pxor	%xmm7, %xmm12
	pshuflw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm3, %xmm3
	pshufhw	$177, %xmm4, %xmm4
	paddd	%xmm13, %xmm14
	pshufhw	$177, %xmm12, %xmm12
	pxor	%xmm14, %xmm6
	pshufhw	$177, %xmm3, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm12, %xmm8
	movaps	%xmm8, 256(%rsp)
	pxor	%xmm2, %xmm1
	movdqa	%xmm6, %xmm8
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	psrld	$12, %xmm6
	pxor	256(%rsp), %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm6
	movdqa	%xmm1, %xmm8
	psrld	$12, %xmm1
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm1
	movdqa	%xmm5, %xmm8
	psrld	$12, %xmm5
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm5
	movdqa	%xmm0, %xmm8
	psrld	$12, %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	208(%rsp), %xmm8
	paddd	%xmm6, %xmm8
	paddd	%xmm8, %xmm11
	movdqa	176(%rsp), %xmm8
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm8
	paddd	%xmm8, %xmm10
	movdqa	160(%rsp), %xmm8
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm8
	paddd	%xmm8, %xmm9
	movdqa	128(%rsp), %xmm8
	pxor	%xmm9, %xmm3
	paddd	%xmm0, %xmm8
	paddd	%xmm7, %xmm8
	movaps	%xmm8, 272(%rsp)
	movdqa	%xmm13, %xmm7
	psrld	$8, %xmm13
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm13
	pxor	272(%rsp), %xmm12
	movdqa	%xmm4, %xmm7
	psrld	$8, %xmm4
	movdqa	256(%rsp), %xmm8
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm7
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm6
	psrld	$8, %xmm3
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm3
	movdqa	%xmm12, %xmm7
	psrld	$8, %xmm12
	paddd	%xmm4, %xmm2
	pxor	%xmm2, %xmm1
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm12
	movdqa	%xmm6, %xmm7
	psrld	$7, %xmm6
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	pslld	$25, %xmm7
	pxor	%xmm7, %xmm6
	paddd	%xmm12, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	%xmm6, %xmm7
	movdqa	%xmm1, %xmm6
	psrld	$7, %xmm1
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm1
	movdqa	%xmm5, %xmm6
	psrld	$7, %xmm5
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm5
	movdqa	%xmm0, %xmm6
	psrld	$7, %xmm0
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	112(%rsp), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm6, %xmm11
	movdqa	80(%rsp), %xmm6
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm6
	paddd	%xmm6, %xmm10
	movdqa	(%rsp), %xmm6
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm6
	paddd	%xmm6, %xmm9
	movaps	%xmm9, 256(%rsp)
	movdqa	%xmm7, %xmm6
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm13, %xmm13
	movdqa	96(%rsp), %xmm9
	pxor	256(%rsp), %xmm4
	paddd	%xmm7, %xmm9
	movdqa	272(%rsp), %xmm7
	pshufhw	$177, %xmm12, %xmm12
	paddd	%xmm9, %xmm7
	pxor	%xmm7, %xmm3
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm4, %xmm4
	paddd	%xmm12, %xmm15
	pshuflw	$177, %xmm3, %xmm3
	pxor	%xmm15, %xmm1
	paddd	%xmm13, %xmm8
	pshufhw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm3, %xmm3
	pxor	%xmm8, %xmm5
	movdqa	%xmm1, %xmm9
	psrld	$12, %xmm1
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm0
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 272(%rsp)
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm1
	movdqa	%xmm5, %xmm9
	psrld	$12, %xmm5
	pxor	272(%rsp), %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm5
	movdqa	%xmm0, %xmm9
	psrld	$12, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm0
	movdqa	%xmm6, %xmm9
	psrld	$12, %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm6
	movdqa	32(%rsp), %xmm9
	paddd	%xmm1, %xmm9
	paddd	%xmm9, %xmm11
	movdqa	48(%rsp), %xmm9
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm9
	paddd	%xmm9, %xmm10
	movdqa	16(%rsp), %xmm9
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm9
	movdqa	%xmm9, %xmm2
	movdqa	256(%rsp), %xmm9
	paddd	%xmm2, %xmm9
	movdqa	64(%rsp), %xmm2
	pxor	%xmm9, %xmm4
	paddd	%xmm6, %xmm2
	paddd	%xmm2, %xmm7
	movdqa	%xmm12, %xmm2
	psrld	$8, %xmm12
	pxor	%xmm7, %xmm3
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm12
	movdqa	%xmm13, %xmm2
	psrld	$8, %xmm13
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm13
	movaps	%xmm12, 256(%rsp)
	movdqa	%xmm4, %xmm2
	psrld	$8, %xmm4
	paddd	%xmm13, %xmm8
	pxor	%xmm8, %xmm5
	paddd	256(%rsp), %xmm15
	pxor	%xmm15, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	%xmm3, %xmm2
	psrld	$8, %xmm3
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	pxor	%xmm2, %xmm3
	paddd	%xmm4, %xmm14
	movdqa	272(%rsp), %xmm2
	pxor	%xmm14, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	%xmm3, %xmm2
	pxor	%xmm2, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm6, %xmm12
	psrld	$7, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm6
	movdqa	144(%rsp), %xmm12
	paddd	%xmm6, %xmm12
	paddd	%xmm12, %xmm11
	movdqa	176(%rsp), %xmm12
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm12
	paddd	%xmm12, %xmm10
	movdqa	128(%rsp), %xmm12
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm12
	paddd	%xmm12, %xmm9
	movdqa	240(%rsp), %xmm12
	pshuflw	$177, %xmm13, %xmm13
	paddd	%xmm0, %xmm12
	paddd	%xmm12, %xmm7
	movdqa	256(%rsp), %xmm12
	pxor	%xmm9, %xmm3
	pxor	%xmm7, %xmm12
	pshuflw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm3, %xmm3
	pshufhw	$177, %xmm4, %xmm4
	paddd	%xmm13, %xmm14
	pshufhw	$177, %xmm12, %xmm12
	pxor	%xmm14, %xmm6
	pshufhw	$177, %xmm3, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm12, %xmm8
	movaps	%xmm8, 256(%rsp)
	pxor	%xmm2, %xmm1
	movdqa	%xmm6, %xmm8
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	psrld	$12, %xmm6
	pxor	256(%rsp), %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm6
	movdqa	%xmm1, %xmm8
	psrld	$12, %xmm1
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm1
	movdqa	%xmm5, %xmm8
	psrld	$12, %xmm5
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm5
	movdqa	%xmm0, %xmm8
	psrld	$12, %xmm0
	pslld	$20, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	224(%rsp), %xmm8
	paddd	%xmm6, %xmm8
	paddd	%xmm8, %xmm11
	movdqa	80(%rsp), %xmm8
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm8
	paddd	%xmm8, %xmm10
	movdqa	192(%rsp), %xmm8
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm8
	paddd	%xmm8, %xmm9
	movdqa	16(%rsp), %xmm8
	pxor	%xmm9, %xmm3
	paddd	%xmm0, %xmm8
	paddd	%xmm7, %xmm8
	movaps	%xmm8, 272(%rsp)
	movdqa	%xmm13, %xmm7
	psrld	$8, %xmm13
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm13
	pxor	272(%rsp), %xmm12
	movdqa	%xmm4, %xmm7
	psrld	$8, %xmm4
	movdqa	256(%rsp), %xmm8
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm7
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm6
	psrld	$8, %xmm3
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm3
	movdqa	%xmm12, %xmm7
	psrld	$8, %xmm12
	paddd	%xmm4, %xmm2
	pxor	%xmm2, %xmm1
	pslld	$24, %xmm7
	pxor	%xmm7, %xmm12
	movdqa	%xmm6, %xmm7
	psrld	$7, %xmm6
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	pslld	$25, %xmm7
	pxor	%xmm7, %xmm6
	paddd	%xmm12, %xmm8
	pxor	%xmm8, %xmm0
	movdqa	%xmm6, %xmm7
	movdqa	%xmm1, %xmm6
	psrld	$7, %xmm1
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm1
	movdqa	%xmm5, %xmm6
	psrld	$7, %xmm5
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm5
	movdqa	%xmm0, %xmm6
	psrld	$7, %xmm0
	pslld	$25, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	208(%rsp), %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm6, %xmm11
	movdqa	(%rsp), %xmm6
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm6
	paddd	%xmm6, %xmm10
	movdqa	32(%rsp), %xmm6
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm6
	paddd	%xmm6, %xmm9
	movaps	%xmm9, 256(%rsp)
	movdqa	%xmm7, %xmm6
	pshuflw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm13, %xmm13
	movdqa	64(%rsp), %xmm9
	pxor	256(%rsp), %xmm4
	paddd	%xmm7, %xmm9
	movdqa	272(%rsp), %xmm7
	pshufhw	$177, %xmm12, %xmm12
	paddd	%xmm9, %xmm7
	pxor	%xmm7, %xmm3
	pshufhw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm4, %xmm4
	paddd	%xmm12, %xmm15
	pshuflw	$177, %xmm3, %xmm3
	pxor	%xmm15, %xmm1
	paddd	%xmm13, %xmm8
	pshufhw	$177, %xmm4, %xmm4
	pshufhw	$177, %xmm3, %xmm3
	pxor	%xmm8, %xmm5
	movdqa	%xmm1, %xmm9
	psrld	$12, %xmm1
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm0
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 272(%rsp)
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm1
	movdqa	%xmm5, %xmm9
	psrld	$12, %xmm5
	pxor	272(%rsp), %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm5
	movdqa	%xmm0, %xmm9
	psrld	$12, %xmm0
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm0
	movdqa	%xmm6, %xmm9
	psrld	$12, %xmm6
	pslld	$20, %xmm9
	pxor	%xmm9, %xmm6
	movdqa	48(%rsp), %xmm9
	paddd	%xmm1, %xmm9
	paddd	%xmm9, %xmm11
	movdqa	160(%rsp), %xmm9
	pxor	%xmm11, %xmm12
	paddd	%xmm5, %xmm9
	paddd	%xmm9, %xmm10
	movdqa	96(%rsp), %xmm9
	pxor	%xmm10, %xmm13
	paddd	%xmm0, %xmm9
	movdqa	%xmm9, %xmm2
	movdqa	256(%rsp), %xmm9
	paddd	%xmm2, %xmm9
	movdqa	112(%rsp), %xmm2
	pxor	%xmm9, %xmm4
	paddd	%xmm6, %xmm2
	paddd	%xmm2, %xmm7
	movdqa	%xmm12, %xmm2
	psrld	$8, %xmm12
	pxor	%xmm7, %xmm3
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm12
	movdqa	%xmm13, %xmm2
	psrld	$8, %xmm13
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm13
	movaps	%xmm12, 256(%rsp)
	movdqa	%xmm4, %xmm2
	psrld	$8, %xmm4
	paddd	%xmm13, %xmm8
	pxor	%xmm8, %xmm5
	paddd	256(%rsp), %xmm15
	pxor	%xmm15, %xmm1
	pslld	$24, %xmm2
	pxor	%xmm2, %xmm4
	movdqa	%xmm3, %xmm2
	psrld	$8, %xmm3
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm12
	psrld	$7, %xmm1
	pxor	%xmm2, %xmm3
	paddd	%xmm4, %xmm14
	movdqa	272(%rsp), %xmm2
	pxor	%xmm14, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm1
	movdqa	%xmm5, %xmm12
	psrld	$7, %xmm5
	paddd	%xmm3, %xmm2
	pxor	%xmm2, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm5
	movdqa	%xmm0, %xmm12
	psrld	$7, %xmm0
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm0
	movdqa	%xmm6, %xmm12
	psrld	$7, %xmm6
	pslld	$25, %xmm12
	pxor	%xmm12, %xmm6
	movdqa	176(%rsp), %xmm12
	paddd	%xmm6, %xmm12
	paddd	%xmm12, %xmm11
	movdqa	80(%rsp), %xmm12
	pxor	%xmm11, %xmm13
	paddd	%xmm1, %xmm12
	paddd	%xmm12, %xmm10
	pxor	%xmm10, %xmm4
	movdqa	16(%rsp), %xmm12
	pshuflw	$177, %xmm13, %xmm13
	pshuflw	$177, %xmm4, %xmm4
	paddd	%xmm5, %xmm12
	paddd	%xmm12, %xmm9
	movdqa	128(%rsp), %xmm12
	pxor	%xmm9, %xmm3
	pshufhw	$177, %xmm13, %xmm13
	pshufhw	$177, %xmm4, %xmm4
	paddd	%xmm0, %xmm12
	paddd	%xmm12, %xmm7
	movdqa	256(%rsp), %xmm12
	pshuflw	$177, %xmm3, %xmm3
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm6
	paddd	%xmm4, %xmm2
	pxor	%xmm7, %xmm12
	movaps	%xmm2, 16(%rsp)
	movdqa	%xmm6, %xmm2
	psrld	$12, %xmm6
	pshuflw	$177, %xmm12, %xmm12
	pslld	$20, %xmm2
	pxor	%xmm2, %xmm6
	pxor	16(%rsp), %xmm1
	pshufhw	$177, %xmm12, %xmm12
	pshufhw	$177, %xmm3, %xmm3
	movdqa	%xmm1, %xmm2
	paddd	%xmm12, %xmm8
	psrld	$12, %xmm1
	movaps	%xmm8, 80(%rsp)
	paddd	%xmm3, %xmm15
	pslld	$20, %xmm2
	movdqa	%xmm2, %xmm8
	movdqa	%xmm1, %xmm2
	pxor	%xmm15, %xmm5
	pxor	%xmm8, %xmm2
	movdqa	80(%rsp), %xmm8
	movdqa	%xmm5, %xmm1
	psrld	$12, %xmm5
	pxor	%xmm8, %xmm0
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm5
	movdqa	%xmm0, %xmm1
	psrld	$12, %xmm0
	pslld	$20, %xmm1
	pxor	%xmm1, %xmm0
	movdqa	240(%rsp), %xmm1
	paddd	%xmm6, %xmm1
	paddd	%xmm1, %xmm11
	movdqa	(%rsp), %xmm1
	pxor	%xmm11, %xmm13
	paddd	%xmm2, %xmm1
	paddd	%xmm1, %xmm10
	movdqa	144(%rsp), %xmm1
	pxor	%xmm10, %xmm4
	paddd	%xmm5, %xmm1
	paddd	%xmm1, %xmm9
	movdqa	96(%rsp), %xmm1
	pxor	%xmm9, %xmm3
	paddd	%xmm0, %xmm1
	paddd	%xmm1, %xmm7
	movdqa	%xmm13, %xmm1
	psrld	$8, %xmm13
	pxor	%xmm7, %xmm12
	pslld	$24, %xmm1
	pxor	%xmm1, %xmm13
	movdqa	%xmm4, %xmm1
	psrld	$8, %xmm4
	pslld	$24, %xmm1
	pxor	%xmm1, %xmm4
	movdqa	%xmm3, %xmm1
	psrld	$8, %xmm3
	paddd	%xmm13, %xmm14
	pxor	%xmm14, %xmm6
	pslld	$24, %xmm1
	pxor	%xmm1, %xmm3
	movdqa	%xmm12, %xmm1
	psrld	$8, %xmm12
	pslld	$24, %xmm1
	pxor	%xmm1, %xmm12
	movdqa	16(%rsp), %xmm1
	paddd	%xmm3, %xmm15
	pxor	%xmm15, %xmm5
	paddd	%xmm4, %xmm1
	movaps	%xmm1, (%rsp)
	paddd	%xmm12, %xmm8
	movdqa	%xmm6, %xmm1
	psrld	$7, %xmm6
	pxor	%xmm8, %xmm0
	pslld	$25, %xmm1
	pxor	%xmm1, %xmm6
	pxor	(%rsp), %xmm2
	movaps	%xmm6, 16(%rsp)
	movdqa	%xmm2, %xmm1
	psrld	$7, %xmm2
	pslld	$25, %xmm1
	pxor	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	psrld	$7, %xmm5
	pslld	$25, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	%xmm5, %xmm1
	movdqa	%xmm0, %xmm5
	psrld	$7, %xmm0
	pslld	$25, %xmm5
	pxor	%xmm5, %xmm0
	movdqa	224(%rsp), %xmm5
	pxor	%xmm6, %xmm1
	paddd	%xmm2, %xmm5
	paddd	%xmm5, %xmm11
	movdqa	32(%rsp), %xmm5
	pxor	%xmm11, %xmm12
	paddd	%xmm1, %xmm5
	paddd	%xmm5, %xmm10
	movdqa	48(%rsp), %xmm5
	paddd	%xmm0, %xmm5
	paddd	%xmm5, %xmm9
	movdqa	112(%rsp), %xmm5
	pshuflw	$177, %xmm12, %xmm12
	paddd	16(%rsp), %xmm5
	paddd	%xmm5, %xmm7
	movdqa	%xmm13, %xmm5
	pxor	%xmm9, %xmm4
	movdqa	(%rsp), %xmm13
	pxor	%xmm10, %xmm5
	pshufhw	$177, %xmm12, %xmm12
	pshuflw	$177, %xmm4, %xmm4
	pshuflw	$177, %xmm5, %xmm5
	pxor	%xmm7, %xmm3
	paddd	%xmm12, %xmm15
	pxor	%xmm15, %xmm2
	pshufhw	$177, %xmm5, %xmm5
	pshufhw	$177, %xmm4, %xmm4
	pshuflw	$177, %xmm3, %xmm3
	movdqa	%xmm2, %xmm6
	psrld	$12, %xmm2
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm1
	paddd	%xmm4, %xmm14
	pxor	%xmm14, %xmm0
	pslld	$20, %xmm6
	pshufhw	$177, %xmm3, %xmm3
	pxor	%xmm6, %xmm2
	movdqa	%xmm1, %xmm6
	psrld	$12, %xmm1
	pslld	$20, %xmm6
	pxor	%xmm6, %xmm1
	paddd	%xmm3, %xmm13
	movdqa	%xmm0, %xmm6
	psrld	$12, %xmm0
	movaps	%xmm13, (%rsp)
	pslld	$20, %xmm6
	pxor	%xmm6, %xmm0
	movdqa	16(%rsp), %xmm6
	pxor	(%rsp), %xmm6
	movdqa	%xmm6, %xmm13
	psrld	$12, %xmm6
	pslld	$20, %xmm13
	pxor	%xmm13, %xmm6
	movdqa	160(%rsp), %xmm13
	paddd	%xmm2, %xmm13
	paddd	%xmm11, %xmm13
	movdqa	192(%rsp), %xmm11
	pxor	%xmm13, %xmm12
	paddd	%xmm1, %xmm11
	paddd	%xmm10, %xmm11
	movdqa	64(%rsp), %xmm10
	movaps	%xmm11, 16(%rsp)
	paddd	%xmm0, %xmm10
	paddd	%xmm9, %xmm10
	movaps	%xmm10, 32(%rsp)
	pxor	16(%rsp), %xmm5
	movdqa	208(%rsp), %xmm9
	pxor	32(%rsp), %xmm4
	paddd	%xmm6, %xmm9
	paddd	%xmm9, %xmm7
	movdqa	%xmm12, %xmm9
	psrld	$8, %xmm12
	pxor	%xmm7, %xmm3
	movdqa	(%rsp), %xmm10
	pslld	$24, %xmm9
	pxor	%xmm9, %xmm12
	movdqa	%xmm5, %xmm9
	psrld	$8, %xmm5
	pslld	$24, %xmm9
	pxor	%xmm9, %xmm5
	paddd	%xmm12, %xmm15
	movdqa	%xmm4, %xmm9
	psrld	$8, %xmm4
	pxor	%xmm15, %xmm2
	pslld	$24, %xmm9
	pxor	%xmm9, %xmm4
	paddd	%xmm5, %xmm8
	pxor	%xmm8, %xmm1
	movdqa	%xmm3, %xmm9
	psrld	$8, %xmm3
	pxor	%xmm8, %xmm7
	paddd	%xmm4, %xmm14
	movdqa	%xmm14, %xmm11
	pslld	$24, %xmm9
	pxor	%xmm9, %xmm3
	movdqa	%xmm15, %xmm9
	pxor	%xmm11, %xmm0
	movdqa	%xmm1, %xmm15
	movdqa	%xmm2, %xmm14
	psrld	$7, %xmm1
	paddd	%xmm3, %xmm10
	pxor	%xmm10, %xmm6
	psrld	$7, %xmm2
	pslld	$25, %xmm15
	movaps	%xmm15, (%rsp)
	pslld	$25, %xmm14
	movdqa	%xmm0, %xmm15
	psrld	$7, %xmm0
	pxor	%xmm14, %xmm2
	pslld	$25, %xmm15
	movaps	%xmm15, 48(%rsp)
	pxor	(%rsp), %xmm1
	movdqa	%xmm6, %xmm15
	psrld	$7, %xmm6
	pxor	%xmm4, %xmm2
	pxor	48(%rsp), %xmm0
	pslld	$25, %xmm15
	pxor	%xmm3, %xmm1
	pxor	%xmm15, %xmm6
	movdqa	%xmm2, %xmm8
	pxor	%xmm13, %xmm11
	pxor	%xmm12, %xmm0
	pxor	16(%rsp), %xmm10
	movaps	%xmm1, 272(%rsp)
	pxor	32(%rsp), %xmm9
	movaps	%xmm0, 256(%rsp)
	pxor	%xmm6, %xmm5
	jne	.L8
	movdqa	%xmm11, %xmm3
	movdqa	%xmm9, %xmm2
	movdqa	%xmm10, %xmm6
	movdqa	%xmm8, %xmm14
.L6:
	movdqa	%xmm3, %xmm1
	movdqa	%xmm2, %xmm0
	movdqa	%xmm3, %xmm10
	leaq	4(%rbx), %rax
	punpckldq	%xmm6, %xmm1
	testb	%r13b, %r13b
	punpckldq	%xmm7, %xmm0
	cmovne	%rax, %rbx
	punpckhdq	%xmm6, %xmm10
	subq	$4, %r15
	movdqa	%xmm1, %xmm4
	addq	$32, %r14
	movdqa	272(%rsp), %xmm6
	subq	$-128, %r9
	movdqa	%xmm2, %xmm8
	punpcklqdq	%xmm0, %xmm4
	movdqa	%xmm5, %xmm3
	punpckhqdq	%xmm0, %xmm1
	movdqa	%xmm5, %xmm0
	punpckhdq	%xmm7, %xmm8
	movdqa	%xmm6, %xmm5
	punpckldq	%xmm14, %xmm0
	movdqa	256(%rsp), %xmm7
	punpckhdq	%xmm14, %xmm3
	punpckldq	%xmm7, %xmm5
	movdqa	%xmm6, %xmm15
	movdqa	%xmm0, %xmm6
	punpckhdq	%xmm7, %xmm15
	movdqa	%xmm10, %xmm2
	punpcklqdq	%xmm5, %xmm6
	punpckhqdq	%xmm5, %xmm0
	movdqa	%xmm3, %xmm5
	punpcklqdq	%xmm8, %xmm2
	punpckhqdq	%xmm8, %xmm10
	punpcklqdq	%xmm15, %xmm5
	punpckhqdq	%xmm15, %xmm3
	movups	%xmm4, -128(%r9)
	movups	%xmm6, -112(%r9)
	movups	%xmm1, -96(%r9)
	movups	%xmm0, -80(%r9)
	movups	%xmm2, -64(%r9)
	movups	%xmm5, -48(%r9)
	movups	%xmm10, -32(%r9)
	movups	%xmm3, -16(%r9)
	cmpq	%r12, %r15
	jne	.L10
	movq	384(%rsp), %rax
	movq	408(%rsp), %r13
	movq	400(%rsp), %r12
	andq	$3, 368(%rsp)
	shrq	$2, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	salq	$7, %rax
	addq	%rax, %r13
	movq	368(%rsp), %rax
	salq	$5, %rdx
	addq	%rdx, %r12
.L5:
	testq	%rax, %rax
	je	.L4
	movzbl	396(%rsp), %edi
	movzbl	383(%rsp), %r15d
	leaq	(%r12,%rax,8), %r14
	orb	392(%rsp), %dil
	movq	%r14, (%rsp)
	movb	%dil, 16(%rsp)
.L16:
	movdqu	(%r11), %xmm0
	testq	%r10, %r10
	movq	(%r12), %r9
	movaps	%xmm0, 416(%rsp)
	movdqu	16(%r11), %xmm0
	movaps	%xmm0, 432(%rsp)
	je	.L12
	movq	%r10, %r14
	cmpq	$1, %r14
	movzbl	16(%rsp), %r8d
	je	.L36
	.p2align 4,,10
	.p2align 3
.L13:
	leaq	416(%rsp), %rdi
	movq	%r9, %rsi
	movq	%rbx, %rcx
	movl	$64, %edx
	subq	$1, %r14
	call	blake3_compress_in_place_sse2
	addq	$64, %r9
	cmpq	$1, %r14
	movzbl	%bpl, %r8d
	jne	.L13
.L36:
	orl	%r15d, %r8d
	leaq	416(%rsp), %rdi
	movq	%rbx, %rcx
	movzbl	%r8b, %r8d
	movl	$64, %edx
	movq	%r9, %rsi
	call	blake3_compress_in_place_sse2
.L12:
	movdqa	416(%rsp), %xmm0
	cmpb	$1, 382(%rsp)
	movups	%xmm0, 0(%r13)
	sbbq	$-1, %rbx
	addq	$8, %r12
	addq	$32, %r13
	movdqa	432(%rsp), %xmm0
	movups	%xmm0, -16(%r13)
	cmpq	(%rsp), %r12
	jne	.L16
.L4:
	movq	456(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L37
	addq	$472, %rsp
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
.L35:
	.cfi_restore_state
	orb	383(%rsp), %dil
	jmp	.L7
.L37:
	call	__stack_chk_fail
	.cfi_endproc
.LFE4800:
	.size	blake3_hash_many_sse2, .-blake3_hash_many_sse2
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1779033703
	.long	-1150833019
	.long	1013904242
	.long	-1521486534
	.align 16
.LC1:
	.quad	-4294967296
	.quad	-4294967296
	.align 16
.LC2:
	.long	0
	.long	4294967295
	.long	0
	.long	4294967295
	.align 16
.LC3:
	.quad	0
	.quad	-4294967296
	.align 16
.LC4:
	.quad	4294967296
	.quad	12884901890
	.align 16
.LC5:
	.quad	-9223372034707292160
	.quad	-9223372034707292160
	.align 16
.LC6:
	.quad	274877907008
	.quad	274877907008
	.align 16
.LC7:
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.align 16
.LC8:
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.align 16
.LC9:
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.align 16
.LC10:
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.ident	"GCC: (SUSE Linux) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
