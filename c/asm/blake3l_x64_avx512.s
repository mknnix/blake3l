	.file	"blake3l_x64_avx512.c"
	.text
	.p2align 4,,15
	.type	blake3_hash4_avx512, @function
blake3_hash4_avx512:
.LFB4814:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movzbl	%r8b, %r8d
	negq	%r8
	vpbroadcastq	%rcx, %ymm3
	pushq	-8(%r10)
	pushq	%rbp
	vpbroadcastq	%r8, %ymm1
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x70,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x78
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x68
	movl	%r9d, %ebx
	orb	(%r10), %r9b
	testq	%rsi, %rsi
	movq	16(%r10), %r11
	vpandq	.LC0(%rip), %ymm1, %ymm1
	movzbl	8(%r10), %r12d
	vpbroadcastd	(%rdx), %xmm16
	vpbroadcastd	4(%rdx), %xmm30
	vpaddq	%ymm3, %ymm1, %ymm1
	vpbroadcastd	8(%rdx), %xmm24
	vpbroadcastd	12(%rdx), %xmm9
	vpbroadcastd	16(%rdx), %xmm17
	vpbroadcastd	20(%rdx), %xmm2
	vpbroadcastd	24(%rdx), %xmm0
	vpbroadcastd	28(%rdx), %xmm31
	je	.L2
	movq	(%rdi), %rax
	vpmovqd	%ymm1, %xmm3
	vpsrlq	$32, %ymm1, %ymm1
	vpmovqd	%ymm1, %xmm1
	vmovaps	%xmm3, -80(%rbp)
	leaq	256(%rax), %r8
	movq	8(%rdi), %rax
	vmovaps	%xmm1, -96(%rbp)
	vmovdqa64	%xmm30, %xmm10
	leaq	256(%rax), %rcx
	vmovdqa64	%xmm17, %xmm1
	vmovdqa64	%xmm16, %xmm30
	movq	16(%rdi), %rax
	vmovdqa64	%xmm24, %xmm17
	vmovdqa64	%xmm0, %xmm3
	leaq	256(%rax), %rdx
	movq	24(%rdi), %rax
	xorl	%edi, %edi
	addq	$256, %rax
	.p2align 4,,10
	.p2align 3
.L4:
	addq	$1, %rdi
	cmpq	%rsi, %rdi
	je	.L11
.L3:
	vmovdqu64	-256(%rcx), %xmm0
	movzbl	%r9b, %r9d
	prefetcht0	(%r8)
	prefetcht0	(%rcx)
	prefetcht0	(%rdx)
	prefetcht0	(%rax)
	vmovdqu64	-256(%r8), %xmm13
	vpaddd	%xmm2, %xmm10, %xmm24
	vpaddd	%xmm1, %xmm30, %xmm30
	vpaddd	%xmm3, %xmm17, %xmm17
	vpaddd	%xmm31, %xmm9, %xmm16
	addq	$64, %r8
	vmovdqu64	-256(%rax), %xmm5
	vpunpckldq	%xmm0, %xmm13, %xmm19
	vpunpckhdq	%xmm0, %xmm13, %xmm13
	addq	$64, %rcx
	vmovdqu64	-256(%rdx), %xmm0
	addq	$64, %rax
	addq	$64, %rdx
	vpunpckldq	%xmm5, %xmm0, %xmm4
	vmovdqu64	-304(%r8), %xmm12
	vpunpckhdq	%xmm5, %xmm0, %xmm0
	vmovdqu64	-304(%rax), %xmm5
	vpunpcklqdq	%xmm4, %xmm19, %xmm28
	vpunpcklqdq	%xmm0, %xmm13, %xmm25
	vmovdqu64	-288(%r8), %xmm15
	vpunpckhqdq	%xmm0, %xmm13, %xmm13
	vmovdqu64	-304(%rcx), %xmm0
	vpunpckhqdq	%xmm4, %xmm19, %xmm19
	vpaddd	%xmm28, %xmm30, %xmm30
	vpaddd	%xmm25, %xmm24, %xmm24
	vpxorq	-80(%rbp), %xmm30, %xmm7
	vmovdqu64	-272(%r8), %xmm14
	vpunpckldq	%xmm0, %xmm12, %xmm20
	vpunpckhdq	%xmm0, %xmm12, %xmm12
	vmovdqu64	-304(%rdx), %xmm0
	vpunpckldq	%xmm5, %xmm0, %xmm4
	vpunpckhdq	%xmm5, %xmm0, %xmm0
	vmovdqu64	-288(%rax), %xmm5
	vprord	$16, %xmm7, %xmm7
	vpunpcklqdq	%xmm4, %xmm20, %xmm21
	vpunpcklqdq	%xmm0, %xmm12, %xmm27
	vmovdqu64	-272(%rax), %xmm6
	vpaddd	.LC2(%rip), %xmm7, %xmm11
	vpunpckhqdq	%xmm0, %xmm12, %xmm12
	vmovdqu64	-288(%rcx), %xmm0
	vpunpckhqdq	%xmm4, %xmm20, %xmm20
	vpaddd	%xmm21, %xmm17, %xmm17
	vpaddd	%xmm27, %xmm16, %xmm16
	vpxorq	%xmm11, %xmm1, %xmm1
	vpunpckldq	%xmm0, %xmm15, %xmm18
	vpunpckhdq	%xmm0, %xmm15, %xmm15
	vmovdqu64	-288(%rdx), %xmm0
	vprord	$12, %xmm1, %xmm1
	vpunpckldq	%xmm5, %xmm0, %xmm4
	vpunpckhdq	%xmm5, %xmm0, %xmm0
	vpunpcklqdq	%xmm4, %xmm18, %xmm29
	vpunpcklqdq	%xmm0, %xmm15, %xmm23
	vpunpckhqdq	%xmm0, %xmm15, %xmm15
	vmovdqu64	-272(%rcx), %xmm0
	vpunpckhqdq	%xmm4, %xmm18, %xmm18
	vpunpckldq	%xmm0, %xmm14, %xmm5
	vpunpckhdq	%xmm0, %xmm14, %xmm14
	vmovdqu64	-272(%rdx), %xmm0
	cmpq	%rsi, %rdi
	vpunpckldq	%xmm6, %xmm0, %xmm4
	vpunpckhdq	%xmm6, %xmm0, %xmm0
	vpxorq	-96(%rbp), %xmm24, %xmm6
	vpunpckhqdq	%xmm4, %xmm5, %xmm26
	vpunpcklqdq	%xmm4, %xmm5, %xmm22
	vpxorq	.LC1(%rip), %xmm17, %xmm5
	vmovaps	%xmm26, -64(%rbp)
	vpunpcklqdq	%xmm0, %xmm14, %xmm26
	vpunpckhqdq	%xmm0, %xmm14, %xmm14
	vpbroadcastd	%r9d, %xmm0
	vprord	$16, %xmm6, %xmm6
	vpxorq	%xmm16, %xmm0, %xmm0
	movl	%ebx, %r9d
	vprord	$16, %xmm5, %xmm5
	vpaddd	.LC3(%rip), %xmm6, %xmm10
	vpxorq	%xmm10, %xmm2, %xmm4
	vprord	$16, %xmm0, %xmm0
	vpaddd	.LC4(%rip), %xmm5, %xmm9
	vpxorq	%xmm9, %xmm3, %xmm3
	vpaddd	.LC5(%rip), %xmm0, %xmm8
	vpxorq	%xmm8, %xmm31, %xmm2
	vpaddd	%xmm19, %xmm1, %xmm31
	vprord	$12, %xmm4, %xmm4
	vpaddd	%xmm30, %xmm31, %xmm30
	vprord	$12, %xmm3, %xmm3
	vprord	$12, %xmm2, %xmm2
	vpaddd	%xmm13, %xmm4, %xmm31
	vpaddd	%xmm24, %xmm31, %xmm24
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm20, %xmm3, %xmm31
	vpaddd	%xmm17, %xmm31, %xmm17
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm12, %xmm2, %xmm31
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm17, %xmm5, %xmm5
	vpxorq	%xmm16, %xmm0, %xmm0
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm1, %xmm1
	vpaddd	%xmm8, %xmm0, %xmm8
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm3, %xmm3
	vpxorq	%xmm8, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm2, %xmm2
	vpaddd	%xmm29, %xmm4, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vpaddd	%xmm23, %xmm3, %xmm31
	vpxorq	%xmm30, %xmm0, %xmm0
	vpaddd	%xmm24, %xmm31, %xmm24
	vpaddd	%xmm22, %xmm2, %xmm31
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm31, %xmm17
	vpaddd	%xmm26, %xmm1, %xmm31
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$16, %xmm0, %xmm0
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm0, %xmm9
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm3, %xmm3
	vpxorq	%xmm11, %xmm2, %xmm2
	vpxorq	%xmm10, %xmm1, %xmm1
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm3, %xmm3
	vprord	$12, %xmm2, %xmm2
	vpaddd	%xmm18, %xmm4, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm15, %xmm3, %xmm31
	vpaddd	%xmm24, %xmm31, %xmm24
	vpxorq	%xmm30, %xmm0, %xmm0
	vpaddd	-64(%rbp), %xmm2, %xmm31
	vpaddd	%xmm17, %xmm31, %xmm17
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm14, %xmm1, %xmm31
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm17, %xmm6, %xmm6
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$8, %xmm0, %xmm0
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm0, %xmm9
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm3, %xmm3
	vpxorq	%xmm11, %xmm2, %xmm2
	vpxorq	%xmm10, %xmm1, %xmm1
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm25, %xmm1, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vpaddd	%xmm13, %xmm4, %xmm31
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm24, %xmm31, %xmm24
	vpaddd	%xmm12, %xmm3, %xmm31
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm17, %xmm31, %xmm17
	vpaddd	%xmm21, %xmm2, %xmm31
	vpxorq	%xmm17, %xmm5, %xmm5
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm16, %xmm0, %xmm0
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm1, %xmm1
	vpaddd	%xmm8, %xmm0, %xmm8
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm3, %xmm3
	vpxorq	%xmm8, %xmm2, %xmm2
	vprord	$12, %xmm1, %xmm1
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm3, %xmm3
	vpaddd	%xmm27, %xmm1, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vprord	$12, %xmm2, %xmm2
	vpaddd	%xmm23, %xmm4, %xmm31
	vpaddd	%xmm24, %xmm31, %xmm24
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm28, %xmm3, %xmm31
	vpaddd	%xmm17, %xmm31, %xmm17
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	-64(%rbp), %xmm2, %xmm31
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm17, %xmm5, %xmm5
	vpxorq	%xmm16, %xmm0, %xmm0
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm1, %xmm1
	vpaddd	%xmm8, %xmm0, %xmm8
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm3, %xmm3
	vpxorq	%xmm8, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm2, %xmm2
	vpaddd	%xmm19, %xmm4, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vpaddd	%xmm22, %xmm3, %xmm31
	vpxorq	%xmm30, %xmm0, %xmm0
	vpaddd	%xmm24, %xmm31, %xmm24
	vpaddd	%xmm18, %xmm2, %xmm31
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm31, %xmm17
	vpaddd	%xmm14, %xmm1, %xmm31
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$16, %xmm0, %xmm0
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm0, %xmm9
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm3, %xmm3
	vpxorq	%xmm11, %xmm2, %xmm2
	vpxorq	%xmm10, %xmm1, %xmm1
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm3, %xmm3
	vprord	$12, %xmm2, %xmm2
	vpaddd	%xmm15, %xmm4, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm20, %xmm3, %xmm31
	vpaddd	%xmm24, %xmm31, %xmm24
	vpxorq	%xmm30, %xmm0, %xmm0
	vpaddd	%xmm26, %xmm2, %xmm31
	vpaddd	%xmm17, %xmm31, %xmm17
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm29, %xmm1, %xmm31
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm17, %xmm6, %xmm6
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$8, %xmm0, %xmm0
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm0, %xmm9
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm3, %xmm3
	vpxorq	%xmm11, %xmm2, %xmm2
	vpxorq	%xmm10, %xmm1, %xmm1
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm13, %xmm1, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vpaddd	%xmm23, %xmm4, %xmm31
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm24, %xmm31, %xmm24
	vpaddd	-64(%rbp), %xmm3, %xmm31
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm17, %xmm31, %xmm17
	vpaddd	%xmm12, %xmm2, %xmm31
	vpxorq	%xmm17, %xmm5, %xmm5
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm16, %xmm0, %xmm0
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm1, %xmm1
	vpaddd	%xmm8, %xmm0, %xmm8
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm3, %xmm3
	vpxorq	%xmm8, %xmm2, %xmm2
	vprord	$12, %xmm1, %xmm1
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm3, %xmm3
	vpaddd	%xmm21, %xmm1, %xmm31
	vpaddd	%xmm30, %xmm31, %xmm30
	vprord	$12, %xmm2, %xmm2
	vpaddd	%xmm22, %xmm4, %xmm31
	vpaddd	%xmm24, %xmm31, %xmm24
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm25, %xmm3, %xmm31
	vpaddd	%xmm17, %xmm31, %xmm17
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm26, %xmm2, %xmm31
	vpaddd	%xmm16, %xmm31, %xmm16
	vpxorq	%xmm17, %xmm5, %xmm5
	vpxorq	%xmm16, %xmm0, %xmm0
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm0, %xmm31
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm11, %xmm1, %xmm1
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm3, %xmm3
	vpxorq	%xmm8, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm2, %xmm2
	vpaddd	%xmm27, %xmm4, %xmm0
	vpaddd	%xmm30, %xmm0, %xmm30
	vpaddd	%xmm18, %xmm3, %xmm0
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm24, %xmm0, %xmm24
	vpaddd	%xmm15, %xmm2, %xmm0
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm0, %xmm17
	vpaddd	%xmm29, %xmm1, %xmm0
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm0, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm11, %xmm2, %xmm2
	vpxorq	%xmm8, %xmm3, %xmm3
	vpxorq	%xmm10, %xmm1, %xmm1
	vprord	$12, %xmm2, %xmm0
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm3, %xmm3
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm20, %xmm4, %xmm2
	vpaddd	%xmm30, %xmm2, %xmm30
	vpaddd	%xmm28, %xmm3, %xmm2
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm24, %xmm2, %xmm24
	vpaddd	%xmm14, %xmm0, %xmm2
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm2, %xmm17
	vpaddd	%xmm19, %xmm1, %xmm2
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm2, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$8, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm8, %xmm3, %xmm3
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm11, %xmm0, %xmm0
	vpxorq	%xmm9, %xmm4, %xmm4
	vpxorq	%xmm10, %xmm1, %xmm1
	vprord	$7, %xmm3, %xmm2
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm0, %xmm3
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm23, %xmm1, %xmm0
	vpaddd	%xmm30, %xmm0, %xmm30
	vpaddd	%xmm22, %xmm4, %xmm0
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm24, %xmm0, %xmm24
	vpaddd	%xmm26, %xmm2, %xmm0
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm17, %xmm0, %xmm17
	vpaddd	-64(%rbp), %xmm3, %xmm0
	vpxorq	%xmm17, %xmm5, %xmm5
	vpaddd	%xmm16, %xmm0, %xmm16
	vpxorq	%xmm16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$16, %xmm31, %xmm31
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm1, %xmm1
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm2, %xmm2
	vpxorq	%xmm8, %xmm3, %xmm3
	vprord	$12, %xmm1, %xmm0
	vprord	$12, %xmm2, %xmm2
	vprord	$12, %xmm4, %xmm1
	vpaddd	%xmm12, %xmm0, %xmm4
	vpaddd	%xmm30, %xmm4, %xmm30
	vprord	$12, %xmm3, %xmm3
	vpaddd	%xmm18, %xmm1, %xmm4
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm24, %xmm4, %xmm24
	vpaddd	%xmm13, %xmm2, %xmm4
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm17, %xmm4, %xmm17
	vpaddd	%xmm14, %xmm3, %xmm4
	vpxorq	%xmm17, %xmm5, %xmm5
	vpaddd	%xmm16, %xmm4, %xmm16
	vpxorq	%xmm16, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$8, %xmm31, %xmm31
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm10, %xmm1, %xmm1
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm11, %xmm0, %xmm0
	vpxorq	%xmm9, %xmm2, %xmm2
	vpxorq	%xmm8, %xmm3, %xmm3
	vprord	$7, %xmm0, %xmm0
	vprord	$7, %xmm1, %xmm4
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm3, %xmm3
	vpaddd	%xmm21, %xmm4, %xmm1
	vpaddd	%xmm30, %xmm1, %xmm30
	vpaddd	%xmm15, %xmm2, %xmm1
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm24, %xmm1, %xmm24
	vpaddd	%xmm20, %xmm3, %xmm1
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm1, %xmm17
	vpaddd	%xmm19, %xmm0, %xmm1
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm1, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm11, %xmm3, %xmm3
	vpxorq	%xmm8, %xmm2, %xmm2
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$12, %xmm3, %xmm1
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm2, %xmm2
	vprord	$12, %xmm0, %xmm0
	vpaddd	%xmm28, %xmm4, %xmm3
	vpaddd	%xmm30, %xmm3, %xmm30
	vpaddd	%xmm25, %xmm2, %xmm3
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm24, %xmm3, %xmm24
	vpaddd	%xmm29, %xmm1, %xmm3
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm3, %xmm17
	vpaddd	%xmm27, %xmm0, %xmm3
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm3, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$8, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm2, %xmm2
	vpxorq	%xmm11, %xmm1, %xmm1
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vprord	$7, %xmm0, %xmm0
	vpaddd	%xmm22, %xmm0, %xmm3
	vpaddd	%xmm30, %xmm3, %xmm30
	vpaddd	%xmm18, %xmm4, %xmm3
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm24, %xmm3, %xmm24
	vpaddd	%xmm14, %xmm2, %xmm3
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm17, %xmm3, %xmm17
	vpaddd	%xmm26, %xmm1, %xmm3
	vpxorq	%xmm17, %xmm5, %xmm5
	vpaddd	%xmm16, %xmm3, %xmm16
	vpxorq	%xmm16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$16, %xmm31, %xmm31
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm0, %xmm0
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm2, %xmm2
	vpxorq	%xmm8, %xmm1, %xmm1
	vprord	$12, %xmm0, %xmm0
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm2, %xmm2
	vpaddd	-64(%rbp), %xmm0, %xmm3
	vpaddd	%xmm30, %xmm3, %xmm30
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm15, %xmm4, %xmm3
	vpaddd	%xmm24, %xmm3, %xmm24
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm23, %xmm2, %xmm3
	vpaddd	%xmm17, %xmm3, %xmm17
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm29, %xmm1, %xmm3
	vpaddd	%xmm16, %xmm3, %xmm16
	vpxorq	%xmm17, %xmm5, %xmm5
	vpxorq	%xmm16, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$8, %xmm31, %xmm31
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm0, %xmm0
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm9, %xmm2, %xmm2
	vpxorq	%xmm8, %xmm1, %xmm1
	vprord	$7, %xmm0, %xmm0
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm12, %xmm4, %xmm3
	vpaddd	%xmm30, %xmm3, %xmm30
	vpaddd	%xmm20, %xmm2, %xmm3
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm24, %xmm3, %xmm24
	vpaddd	%xmm28, %xmm1, %xmm3
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm3, %xmm17
	vpaddd	%xmm27, %xmm0, %xmm3
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm3, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm2, %xmm2
	vpxorq	%xmm11, %xmm1, %xmm1
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm2, %xmm2
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm25, %xmm4, %xmm3
	vpaddd	%xmm30, %xmm3, %xmm30
	vprord	$12, %xmm0, %xmm0
	vpaddd	%xmm13, %xmm2, %xmm3
	vpaddd	%xmm24, %xmm3, %xmm24
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm19, %xmm1, %xmm3
	vpaddd	%xmm17, %xmm3, %xmm17
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm21, %xmm0, %xmm3
	vpaddd	%xmm16, %xmm3, %xmm16
	vpxorq	%xmm17, %xmm6, %xmm6
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$8, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm4, %xmm4
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm2, %xmm2
	vpxorq	%xmm11, %xmm1, %xmm1
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$7, %xmm4, %xmm4
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vprord	$7, %xmm0, %xmm0
	vpaddd	%xmm18, %xmm0, %xmm3
	vpaddd	%xmm30, %xmm3, %xmm30
	vpaddd	%xmm15, %xmm4, %xmm3
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm24, %xmm3, %xmm24
	vpaddd	%xmm29, %xmm2, %xmm3
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm17, %xmm3, %xmm17
	vpaddd	%xmm14, %xmm1, %xmm3
	vpxorq	%xmm17, %xmm5, %xmm5
	vpaddd	%xmm16, %xmm3, %xmm16
	vpxorq	%xmm16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$16, %xmm31, %xmm31
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm0, %xmm0
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm9, %xmm2, %xmm2
	vpxorq	%xmm10, %xmm4, %xmm4
	vpxorq	%xmm8, %xmm1, %xmm1
	vprord	$12, %xmm0, %xmm3
	vprord	$12, %xmm4, %xmm4
	vprord	$12, %xmm2, %xmm0
	vpaddd	%xmm26, %xmm3, %xmm2
	vpaddd	%xmm30, %xmm2, %xmm30
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm20, %xmm4, %xmm2
	vpaddd	%xmm24, %xmm2, %xmm24
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm22, %xmm0, %xmm2
	vpaddd	%xmm17, %xmm2, %xmm17
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm19, %xmm1, %xmm2
	vpaddd	%xmm16, %xmm2, %xmm16
	vpxorq	%xmm17, %xmm5, %xmm5
	vpxorq	%xmm16, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$8, %xmm31, %xmm31
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm10, %xmm4, %xmm4
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm11, %xmm3, %xmm3
	vpxorq	%xmm9, %xmm0, %xmm0
	vpxorq	%xmm8, %xmm1, %xmm1
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm4, %xmm2
	vprord	$7, %xmm0, %xmm0
	vprord	$7, %xmm1, %xmm1
	vpaddd	-64(%rbp), %xmm2, %xmm4
	vpaddd	%xmm30, %xmm4, %xmm30
	vpaddd	%xmm28, %xmm0, %xmm4
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm24, %xmm4, %xmm24
	vpaddd	%xmm25, %xmm1, %xmm4
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm4, %xmm17
	vpaddd	%xmm21, %xmm3, %xmm4
	vpxorq	%xmm17, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm4, %xmm16
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm2, %xmm2
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm0, %xmm0
	vpxorq	%xmm11, %xmm1, %xmm1
	vpxorq	%xmm10, %xmm3, %xmm3
	vprord	$12, %xmm2, %xmm2
	vprord	$12, %xmm0, %xmm0
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm13, %xmm2, %xmm4
	vpaddd	%xmm30, %xmm4, %xmm30
	vprord	$12, %xmm3, %xmm3
	vpaddd	%xmm23, %xmm0, %xmm4
	vpaddd	%xmm24, %xmm4, %xmm24
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm27, %xmm1, %xmm4
	vpaddd	%xmm17, %xmm4, %xmm17
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm12, %xmm3, %xmm4
	vpaddd	%xmm16, %xmm4, %xmm16
	vpxorq	%xmm17, %xmm6, %xmm6
	vpxorq	%xmm16, %xmm5, %xmm5
	vprord	$8, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm2, %xmm2
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm8, %xmm0, %xmm0
	vpxorq	%xmm11, %xmm1, %xmm1
	vpxorq	%xmm10, %xmm3, %xmm3
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm0, %xmm0
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm20, %xmm2, %xmm20
	vpaddd	%xmm24, %xmm20, %xmm24
	vprord	$7, %xmm3, %xmm3
	vpaddd	%xmm19, %xmm0, %xmm19
	vpaddd	%xmm17, %xmm19, %xmm17
	vpaddd	%xmm29, %xmm1, %xmm29
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm29, %xmm16
	vpaddd	%xmm15, %xmm3, %xmm15
	vpxorq	%xmm17, %xmm5, %xmm5
	vpaddd	%xmm30, %xmm15, %xmm30
	vpxorq	%xmm16, %xmm31, %xmm31
	vpxorq	%xmm30, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vprord	$16, %xmm5, %xmm5
	vprord	$16, %xmm7, %xmm7
	vpaddd	%xmm10, %xmm6, %xmm10
	vprord	$16, %xmm31, %xmm31
	vpaddd	%xmm9, %xmm5, %xmm9
	vpaddd	%xmm11, %xmm7, %xmm11
	vpxorq	%xmm10, %xmm2, %xmm2
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm11, %xmm3, %xmm3
	vpxorq	%xmm9, %xmm0, %xmm0
	vpxorq	%xmm8, %xmm1, %xmm1
	vprord	$12, %xmm3, %xmm3
	vprord	$12, %xmm2, %xmm2
	vprord	$12, %xmm0, %xmm0
	vpaddd	%xmm14, %xmm3, %xmm14
	vpaddd	%xmm30, %xmm14, %xmm30
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm28, %xmm2, %xmm28
	vpaddd	%xmm24, %xmm28, %xmm24
	vpaddd	%xmm18, %xmm0, %xmm18
	vpxorq	%xmm30, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm18, %xmm17
	vpaddd	%xmm27, %xmm1, %xmm27
	vpxorq	%xmm24, %xmm6, %xmm6
	vpaddd	%xmm16, %xmm27, %xmm16
	vpxorq	%xmm17, %xmm5, %xmm5
	vpxorq	%xmm16, %xmm31, %xmm31
	vprord	$8, %xmm7, %xmm7
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm7, %xmm11
	vprord	$8, %xmm31, %xmm31
	vpaddd	%xmm10, %xmm6, %xmm10
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm11, %xmm3, %xmm3
	vpaddd	%xmm8, %xmm31, %xmm8
	vpxorq	%xmm10, %xmm2, %xmm2
	vpxorq	%xmm9, %xmm0, %xmm0
	vpxorq	%xmm8, %xmm1, %xmm1
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm0, %xmm0
	vpaddd	%xmm12, %xmm3, %xmm12
	vpaddd	%xmm16, %xmm12, %xmm16
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm26, %xmm2, %xmm26
	vpaddd	%xmm30, %xmm26, %xmm30
	vpaddd	%xmm25, %xmm0, %xmm25
	vpxorq	%xmm30, %xmm31, %xmm31
	vpaddd	%xmm24, %xmm25, %xmm24
	vpaddd	%xmm13, %xmm1, %xmm13
	vpxorq	%xmm24, %xmm7, %xmm7
	vpaddd	%xmm17, %xmm13, %xmm17
	vpxorq	%xmm16, %xmm5, %xmm5
	vpxorq	%xmm17, %xmm6, %xmm6
	vprord	$16, %xmm31, %xmm31
	vprord	$16, %xmm7, %xmm7
	vprord	$16, %xmm6, %xmm6
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$16, %xmm5, %xmm5
	vpaddd	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm11, %xmm6, %xmm11
	vpxorq	%xmm9, %xmm2, %xmm2
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm11, %xmm1, %xmm1
	vpxorq	%xmm10, %xmm3, %xmm3
	vpxorq	%xmm8, %xmm0, %xmm0
	vprord	$12, %xmm1, %xmm13
	vprord	$12, %xmm3, %xmm15
	vprord	$12, %xmm2, %xmm14
	vpaddd	%xmm21, %xmm13, %xmm21
	vpaddd	%xmm17, %xmm21, %xmm17
	vprord	$12, %xmm0, %xmm0
	vpaddd	-64(%rbp), %xmm15, %xmm12
	vpaddd	%xmm16, %xmm12, %xmm12
	vpxorq	%xmm6, %xmm17, %xmm6
	vpaddd	%xmm23, %xmm14, %xmm23
	vpaddd	%xmm30, %xmm23, %xmm30
	vpaddd	%xmm22, %xmm0, %xmm22
	vpxorq	%xmm31, %xmm30, %xmm31
	vpaddd	%xmm24, %xmm22, %xmm24
	vpxorq	%xmm5, %xmm12, %xmm5
	vpxorq	%xmm7, %xmm24, %xmm7
	vprord	$8, %xmm31, %xmm31
	vprord	$8, %xmm6, %xmm6
	vprord	$8, %xmm7, %xmm7
	vpaddd	%xmm9, %xmm31, %xmm9
	vprord	$8, %xmm5, %xmm5
	vpaddd	%xmm11, %xmm6, %xmm11
	vpaddd	%xmm8, %xmm7, %xmm8
	vpxorq	%xmm14, %xmm9, %xmm2
	vpaddd	%xmm10, %xmm5, %xmm10
	vpxorq	%xmm0, %xmm8, %xmm3
	vpxorq	%xmm15, %xmm10, %xmm1
	vpxorq	%xmm13, %xmm11, %xmm13
	vprord	$7, %xmm2, %xmm2
	vprord	$7, %xmm3, %xmm3
	vprord	$7, %xmm13, %xmm13
	vprord	$7, %xmm1, %xmm1
	vpxorq	%xmm17, %xmm9, %xmm17
	vpxorq	%xmm30, %xmm11, %xmm30
	vpxorq	%xmm24, %xmm10, %xmm10
	vpxorq	%xmm12, %xmm8, %xmm9
	vpxorq	%xmm7, %xmm1, %xmm1
	vpxorq	%xmm6, %xmm2, %xmm2
	vpxorq	%xmm5, %xmm3, %xmm3
	vpxorq	%xmm31, %xmm13, %xmm31
	jne	.L4
	vmovdqa64	%xmm30, %xmm16
	vmovdqa64	%xmm17, %xmm24
	vmovdqa64	%xmm10, %xmm30
	vmovdqa64	%xmm1, %xmm17
	vmovdqa64	%xmm3, %xmm0
.L2:
	vpunpckldq	%xmm30, %xmm16, %xmm1
	vpunpckldq	%xmm9, %xmm24, %xmm3
	vpunpckldq	%xmm31, %xmm0, %xmm4
	vpunpckhdq	%xmm30, %xmm16, %xmm16
	vpunpcklqdq	%xmm3, %xmm1, %xmm7
	vpunpckhdq	%xmm9, %xmm24, %xmm9
	vpunpckhqdq	%xmm3, %xmm1, %xmm3
	vpunpckhdq	%xmm31, %xmm0, %xmm0
	vpunpckldq	%xmm2, %xmm17, %xmm1
	vpunpckhdq	%xmm2, %xmm17, %xmm2
	vpunpcklqdq	%xmm9, %xmm16, %xmm5
	vpunpcklqdq	%xmm4, %xmm1, %xmm6
	vpunpckhqdq	%xmm9, %xmm16, %xmm16
	vpunpckhqdq	%xmm4, %xmm1, %xmm1
	vpunpcklqdq	%xmm0, %xmm2, %xmm4
	vpunpckhqdq	%xmm0, %xmm2, %xmm2
	vmovups	%xmm7, (%r11)
	vmovups	%xmm6, 16(%r11)
	vmovups	%xmm3, 32(%r11)
	vmovups	%xmm1, 48(%r11)
	vmovups	%xmm5, 64(%r11)
	vmovups	%xmm4, 80(%r11)
	vmovups	%xmm16, 96(%r11)
	vmovups	%xmm2, 112(%r11)
	vzeroupper
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	orl	%r12d, %r9d
	jmp	.L3
	.cfi_endproc
.LFE4814:
	.size	blake3_hash4_avx512, .-blake3_hash4_avx512
	.p2align 4,,15
	.globl	blake3_compress_xof_avx512
	.type	blake3_compress_xof_avx512, @function
blake3_compress_xof_avx512:
.LFB4808:
	.cfi_startproc
	movzbl	%dl, %edx
	movzbl	%r8b, %r8d
	movq	%rcx, %rax
	movl	%edx, -12(%rsp)
	shrq	$32, %rax
	vmovd	-12(%rsp), %xmm6
	movl	%ecx, -12(%rsp)
	vmovdqu64	16(%rsi), %xmm3
	vpinsrd	$1, %r8d, %xmm6, %xmm2
	vmovd	-12(%rsp), %xmm6
	vmovdqu64	(%rsi), %xmm5
	vpinsrd	$1, %eax, %xmm6, %xmm0
	vshufps	$136, %xmm3, %xmm5, %xmm4
	vmovdqu64	16(%rdi), %xmm1
	vshufps	$221, %xmm3, %xmm5, %xmm5
	vpunpcklqdq	%xmm2, %xmm0, %xmm0
	vpaddd	(%rdi), %xmm1, %xmm9
	vmovdqu64	48(%rsi), %xmm3
	vpaddd	%xmm4, %xmm9, %xmm10
	vmovdqu64	32(%rsi), %xmm8
	vpxorq	%xmm10, %xmm0, %xmm0
	vshufps	$136, %xmm3, %xmm8, %xmm7
	vshufps	$221, %xmm3, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$147, %xmm7, %xmm7
	vpaddd	.LC6(%rip), %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$147, %xmm8, %xmm8
	vshufps	$214, %xmm5, %xmm4, %xmm3
	vprord	$12, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm7, %xmm6
	vpaddd	%xmm5, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpshufd	$57, %xmm3, %xmm3
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm7, %xmm9, %xmm9
	vpshufd	$15, %xmm4, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vpblendw	$204, %xmm6, %xmm4, %xmm4
	vprord	$7, %xmm1, %xmm1
	vpunpcklqdq	%xmm5, %xmm8, %xmm6
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpblendw	$192, %xmm7, %xmm6, %xmm6
	vprord	$16, %xmm0, %xmm0
	vpshufd	$120, %xmm6, %xmm6
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm5, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm3, %xmm9, %xmm9
	vshufps	$214, %xmm4, %xmm3, %xmm5
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpshufd	$57, %xmm5, %xmm5
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$15, %xmm3, %xmm3
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm6, %xmm7
	vprord	$12, %xmm1, %xmm1
	vpblendw	$204, %xmm7, %xmm3, %xmm3
	vpaddd	%xmm4, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpunpcklqdq	%xmm4, %xmm8, %xmm7
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm6, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpblendw	$192, %xmm6, %xmm7, %xmm7
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm7, %xmm7
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm4, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm5, %xmm9, %xmm9
	vshufps	$214, %xmm3, %xmm5, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm6, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpshufd	$57, %xmm4, %xmm4
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$15, %xmm5, %xmm5
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm7, %xmm6
	vprord	$12, %xmm1, %xmm1
	vpblendw	$204, %xmm6, %xmm5, %xmm5
	vpaddd	%xmm3, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpunpcklqdq	%xmm3, %xmm8, %xmm6
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm7, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpblendw	$192, %xmm7, %xmm6, %xmm6
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm6, %xmm6
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm3, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm4, %xmm9, %xmm9
	vshufps	$214, %xmm5, %xmm4, %xmm3
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpshufd	$57, %xmm3, %xmm3
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$15, %xmm4, %xmm4
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm6, %xmm7
	vprord	$12, %xmm1, %xmm1
	vpblendw	$204, %xmm7, %xmm4, %xmm4
	vpaddd	%xmm5, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpunpcklqdq	%xmm5, %xmm8, %xmm7
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm6, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpblendw	$192, %xmm6, %xmm7, %xmm7
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm7, %xmm7
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm5, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm3, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm6, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vshufps	$214, %xmm4, %xmm3, %xmm6
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$57, %xmm6, %xmm6
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm7, %xmm5
	vpshufd	$15, %xmm3, %xmm3
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm4, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpblendw	$204, %xmm5, %xmm3, %xmm3
	vpunpcklqdq	%xmm4, %xmm8, %xmm5
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm7, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm4, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpblendw	$192, %xmm7, %xmm5, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm5, %xmm5
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpunpckldq	%xmm4, %xmm7, %xmm7
	vshufps	$214, %xmm3, %xmm6, %xmm4
	vprord	$16, %xmm0, %xmm0
	vpshufd	$30, %xmm7, %xmm7
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$57, %xmm4, %xmm4
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vshufps	$250, %xmm7, %xmm5, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm6, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm3, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm5, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm7, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm4, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm9, %xmm4
	vpxorq	%xmm4, %xmm0, %xmm0
	vpshufd	$15, %xmm6, %xmm9
	vprord	$16, %xmm0, %xmm0
	vpblendw	$204, %xmm8, %xmm9, %xmm9
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm9, %xmm1, %xmm9
	vpaddd	%xmm4, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpunpcklqdq	%xmm3, %xmm7, %xmm4
	vpshufd	$147, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpblendw	$192, %xmm5, %xmm4, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$120, %xmm4, %xmm4
	vprord	$7, %xmm1, %xmm1
	vpunpckhdq	%xmm7, %xmm3, %xmm7
	vpaddd	%xmm4, %xmm9, %xmm9
	vpaddd	%xmm1, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vpunpckldq	%xmm7, %xmm5, %xmm5
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$30, %xmm5, %xmm5
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm5, %xmm5
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpxorq	%xmm9, %xmm2, %xmm9
	vpxorq	%xmm1, %xmm0, %xmm1
	vmovups	%xmm9, (%r9)
	vmovups	%xmm1, 16(%r9)
	vpxorq	(%rdi), %xmm2, %xmm2
	vmovups	%xmm2, 32(%r9)
	vpxorq	16(%rdi), %xmm0, %xmm0
	vmovups	%xmm0, 48(%r9)
	ret
	.cfi_endproc
.LFE4808:
	.size	blake3_compress_xof_avx512, .-blake3_compress_xof_avx512
	.p2align 4,,15
	.globl	blake3_compress_in_place_avx512
	.type	blake3_compress_in_place_avx512, @function
blake3_compress_in_place_avx512:
.LFB4809:
	.cfi_startproc
	movzbl	%dl, %edx
	movzbl	%r8b, %r8d
	movq	%rcx, %rax
	movl	%edx, -12(%rsp)
	shrq	$32, %rax
	vmovd	-12(%rsp), %xmm6
	movl	%ecx, -12(%rsp)
	vmovdqu64	16(%rsi), %xmm3
	vpinsrd	$1, %r8d, %xmm6, %xmm2
	vmovd	-12(%rsp), %xmm6
	vmovdqu64	(%rsi), %xmm5
	vpinsrd	$1, %eax, %xmm6, %xmm0
	vshufps	$136, %xmm3, %xmm5, %xmm4
	vmovdqu64	16(%rdi), %xmm1
	vshufps	$221, %xmm3, %xmm5, %xmm5
	vpunpcklqdq	%xmm2, %xmm0, %xmm0
	vpaddd	(%rdi), %xmm1, %xmm9
	vmovdqu64	48(%rsi), %xmm3
	vpaddd	%xmm4, %xmm9, %xmm10
	vmovdqu64	32(%rsi), %xmm8
	vpxorq	%xmm10, %xmm0, %xmm0
	vshufps	$136, %xmm3, %xmm8, %xmm7
	vshufps	$221, %xmm3, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$147, %xmm7, %xmm7
	vpaddd	.LC6(%rip), %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$147, %xmm8, %xmm8
	vshufps	$214, %xmm5, %xmm4, %xmm3
	vprord	$12, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm7, %xmm6
	vpaddd	%xmm5, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpshufd	$57, %xmm3, %xmm3
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm7, %xmm9, %xmm9
	vpshufd	$15, %xmm4, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vpblendw	$204, %xmm6, %xmm4, %xmm4
	vprord	$7, %xmm1, %xmm1
	vpunpcklqdq	%xmm5, %xmm8, %xmm6
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpblendw	$192, %xmm7, %xmm6, %xmm6
	vprord	$16, %xmm0, %xmm0
	vpshufd	$120, %xmm6, %xmm6
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm5, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm3, %xmm9, %xmm9
	vshufps	$214, %xmm4, %xmm3, %xmm5
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpshufd	$57, %xmm5, %xmm5
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$15, %xmm3, %xmm3
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm6, %xmm7
	vprord	$12, %xmm1, %xmm1
	vpblendw	$204, %xmm7, %xmm3, %xmm3
	vpaddd	%xmm4, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpunpcklqdq	%xmm4, %xmm8, %xmm7
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm6, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpblendw	$192, %xmm6, %xmm7, %xmm7
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm7, %xmm7
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm4, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm5, %xmm9, %xmm9
	vshufps	$214, %xmm3, %xmm5, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm6, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpshufd	$57, %xmm4, %xmm4
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$15, %xmm5, %xmm5
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm7, %xmm6
	vprord	$12, %xmm1, %xmm1
	vpblendw	$204, %xmm6, %xmm5, %xmm5
	vpaddd	%xmm3, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpunpcklqdq	%xmm3, %xmm8, %xmm6
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm7, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpblendw	$192, %xmm7, %xmm6, %xmm6
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm6, %xmm6
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm3, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm4, %xmm9, %xmm9
	vshufps	$214, %xmm5, %xmm4, %xmm3
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm7, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpshufd	$57, %xmm3, %xmm3
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$15, %xmm4, %xmm4
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm6, %xmm7
	vprord	$12, %xmm1, %xmm1
	vpblendw	$204, %xmm7, %xmm4, %xmm4
	vpaddd	%xmm5, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpunpcklqdq	%xmm5, %xmm8, %xmm7
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm6, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpblendw	$192, %xmm6, %xmm7, %xmm7
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm7, %xmm7
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm5, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm3, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpunpckldq	%xmm8, %xmm6, %xmm8
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vshufps	$214, %xmm4, %xmm3, %xmm6
	vpshufd	$30, %xmm8, %xmm8
	vprord	$16, %xmm0, %xmm0
	vpshufd	$57, %xmm6, %xmm6
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vshufps	$250, %xmm8, %xmm7, %xmm5
	vpshufd	$15, %xmm3, %xmm3
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm4, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vpblendw	$204, %xmm5, %xmm3, %xmm3
	vpunpcklqdq	%xmm4, %xmm8, %xmm5
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm7, %xmm9, %xmm9
	vpunpckhdq	%xmm8, %xmm4, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpblendw	$192, %xmm7, %xmm5, %xmm5
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpshufd	$120, %xmm5, %xmm5
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vpunpckldq	%xmm4, %xmm7, %xmm7
	vshufps	$214, %xmm3, %xmm6, %xmm4
	vprord	$16, %xmm0, %xmm0
	vpshufd	$30, %xmm7, %xmm7
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$57, %xmm4, %xmm4
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm8, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vshufps	$250, %xmm7, %xmm5, %xmm8
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm6, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm3, %xmm1, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$147, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm5, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm9, %xmm10
	vpxorq	%xmm10, %xmm0, %xmm0
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm7, %xmm9
	vpaddd	%xmm10, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm4, %xmm9, %xmm9
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm9, %xmm4
	vpxorq	%xmm4, %xmm0, %xmm0
	vpshufd	$15, %xmm6, %xmm9
	vprord	$16, %xmm0, %xmm0
	vpblendw	$204, %xmm8, %xmm9, %xmm9
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm9, %xmm1, %xmm9
	vpaddd	%xmm4, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpunpcklqdq	%xmm3, %xmm7, %xmm4
	vpshufd	$147, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpblendw	$192, %xmm5, %xmm4, %xmm4
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$120, %xmm4, %xmm4
	vprord	$7, %xmm1, %xmm1
	vpunpckhdq	%xmm7, %xmm3, %xmm7
	vpaddd	%xmm4, %xmm9, %xmm9
	vpaddd	%xmm1, %xmm9, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm2, %xmm2
	vpunpckldq	%xmm7, %xmm5, %xmm5
	vprord	$16, %xmm0, %xmm0
	vpaddd	%xmm0, %xmm2, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$30, %xmm5, %xmm5
	vprord	$12, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm5, %xmm5
	vpaddd	%xmm9, %xmm5, %xmm9
	vpxorq	%xmm9, %xmm0, %xmm0
	vpshufd	$57, %xmm9, %xmm9
	vprord	$8, %xmm0, %xmm0
	vpaddd	%xmm2, %xmm0, %xmm2
	vpxorq	%xmm2, %xmm1, %xmm1
	vpshufd	$78, %xmm0, %xmm0
	vpshufd	$147, %xmm2, %xmm2
	vprord	$7, %xmm1, %xmm1
	vpxorq	%xmm2, %xmm9, %xmm2
	vpxorq	%xmm1, %xmm0, %xmm0
	vmovups	%xmm2, (%rdi)
	vmovups	%xmm0, 16(%rdi)
	ret
	.cfi_endproc
.LFE4809:
	.size	blake3_compress_in_place_avx512, .-blake3_compress_in_place_avx512
	.p2align 4,,15
	.globl	blake3_hash_many_avx512
	.type	blake3_hash_many_avx512, @function
blake3_hash_many_avx512:
.LFB4828:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$1024, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rcx, -840(%rbp)
	movl	16(%r10), %ecx
	movl	(%r10), %ebx
	movq	%rdx, -280(%rbp)
	movq	24(%r10), %r14
	movl	8(%r10), %edx
	movl	%ecx, -1016(%rbp)
	movb	%cl, -291(%rbp)
	movq	%fs:40, %rcx
	movq	%rcx, -56(%rbp)
	xorl	%ecx, %ecx
	cmpq	$15, %rsi
	movq	%rdi, -864(%rbp)
	movq	%rsi, -872(%rbp)
	movq	%r8, -304(%rbp)
	movl	%r9d, -1012(%rbp)
	movl	%ebx, -856(%rbp)
	movl	%edx, -296(%rbp)
	movq	%r14, -880(%rbp)
	movb	%r9b, -290(%rbp)
	movb	%bl, -289(%rbp)
	jbe	.L15
	movzbl	%r9b, %eax
	movq	%r14, -824(%rbp)
	movq	%rsi, -112(%rbp)
	negl	%eax
	movq	%rdi, -832(%rbp)
	vpbroadcastd	%eax, %zmm0
	movl	$1, %eax
	vpandd	.LC7(%rip), %zmm0, %zmm18
	vmovdqa64	%zmm18, -944(%rbp)
	vpbroadcastd	%eax, %zmm18
	movl	%edx, %eax
	orl	%ebx, %eax
	movb	%al, -849(%rbp)
	leaq	-16(%rsi), %rax
	vmovdqa64	%zmm18, -1008(%rbp)
	movq	%rax, -1024(%rbp)
	andl	$15, %eax
	movq	%rax, -848(%rbp)
	movl	$64, %eax
	vpbroadcastd	%eax, %zmm18
	movl	$1779033703, %eax
	vmovdqa64	%zmm18, -560(%rbp)
	vpbroadcastd	%eax, %zmm18
	addl	$1365100574, %eax
	vmovdqa64	%zmm18, -624(%rbp)
	vpbroadcastd	%eax, %zmm18
	movl	$1013904242, %eax
	vmovdqa64	%zmm18, -688(%rbp)
	vpbroadcastd	%eax, %zmm18
	addl	$1759576520, %eax
	vmovdqa64	%zmm18, -752(%rbp)
	vpbroadcastd	%eax, %zmm18
	vmovdqa64	%zmm18, -816(%rbp)
	.p2align 4,,10
	.p2align 3
.L20:
	movq	-840(%rbp), %rax
	vmovdqa64	-944(%rbp), %zmm19
	vpbroadcastd	(%rax), %zmm9
	vpbroadcastd	4(%rax), %zmm23
	vpbroadcastd	8(%rax), %zmm29
	vpbroadcastd	12(%rax), %zmm15
	vpbroadcastd	16(%rax), %zmm16
	vpbroadcastd	20(%rax), %zmm2
	vpbroadcastd	24(%rax), %zmm0
	vpbroadcastd	28(%rax), %zmm31
	movq	-304(%rbp), %rax
	vpbroadcastd	%eax, %zmm1
	shrq	$32, %rax
	cmpq	$0, -280(%rbp)
	vpaddd	%zmm19, %zmm1, %zmm18
	vpcmpud	$1, %zmm19, %zmm18, %k1
	vpbroadcastd	%eax, %zmm1
	vmovdqa64	%zmm18, -432(%rbp)
	vpaddd	-1008(%rbp), %zmm1, %zmm1{%k1}
	vmovdqa64	%zmm1, -496(%rbp)
	je	.L16
	movq	-832(%rbp), %r15
	vmovdqa64	%zmm31, -368(%rbp)
	movq	$0, -208(%rbp)
	movq	(%r15), %rax
	leaq	256(%rax), %r14
	movq	8(%r15), %rax
	leaq	256(%rax), %r13
	movq	16(%r15), %rax
	leaq	256(%rax), %r12
	movq	24(%r15), %rax
	leaq	256(%rax), %rbx
	movq	32(%r15), %rax
	leaq	256(%rax), %r11
	movq	40(%r15), %rax
	leaq	256(%rax), %r10
	movq	48(%r15), %rax
	leaq	256(%rax), %r9
	movq	56(%r15), %rax
	leaq	256(%rax), %r8
	movq	64(%r15), %rax
	leaq	256(%rax), %rdi
	movq	72(%r15), %rax
	leaq	256(%rax), %rsi
	movq	80(%r15), %rax
	leaq	256(%rax), %rcx
	movq	88(%r15), %rax
	leaq	256(%rax), %rdx
	movq	96(%r15), %rax
	movq	%rdx, -104(%rbp)
	addq	$256, %rax
	movq	%rax, -272(%rbp)
	movq	104(%r15), %rax
	addq	$256, %rax
	movq	%rax, -240(%rbp)
	movq	112(%r15), %rax
	addq	$256, %rax
	movq	%rax, -288(%rbp)
	movq	120(%r15), %rax
	movq	%rax, -176(%rbp)
	leaq	256(%rax), %r15
	movzbl	-849(%rbp), %eax
	movb	%al, -176(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	addq	$1, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpq	%rax, -280(%rbp)
	je	.L58
.L17:
	movzbl	-176(%rbp), %eax
	vmovdqu64	-256(%r13), %zmm3
	prefetcht0	(%r14)
	vmovdqu64	-256(%r14), %zmm7
	movq	-288(%rbp), %rdx
	prefetcht0	0(%r13)
	vmovdqu64	-256(%r11), %zmm6
	prefetcht0	(%r12)
	prefetcht0	(%rbx)
	vpunpckldq	%zmm3, %zmm7, %zmm22
	prefetcht0	(%r11)
	prefetcht0	(%r10)
	movl	%eax, -176(%rbp)
	movq	-104(%rbp), %rax
	prefetcht0	(%r9)
	vpunpckhdq	%zmm3, %zmm7, %zmm18
	vmovdqu64	-256(%rbx), %zmm3
	prefetcht0	(%r8)
	vmovdqu64	-256(%r12), %zmm7
	prefetcht0	(%rdi)
	prefetcht0	(%rsi)
	prefetcht0	(%rax)
	movq	-272(%rbp), %rax
	vmovd	-176(%rbp), %xmm19
	vpunpckldq	%zmm3, %zmm7, %zmm10
	prefetcht0	(%rcx)
	prefetcht0	(%rdx)
	vpunpckhdq	%zmm3, %zmm7, %zmm7
	vmovdqu64	-256(%r10), %zmm3
	vpbroadcastd	%xmm19, %zmm1
	prefetcht0	(%rax)
	movq	-240(%rbp), %rax
	prefetcht0	(%r15)
	vpunpckldq	%zmm3, %zmm6, %zmm19
	vpaddd	%zmm29, %zmm0, %zmm29
	vpaddd	%zmm9, %zmm16, %zmm9
	vpunpckhdq	%zmm3, %zmm6, %zmm5
	vmovdqu64	-256(%r8), %zmm3
	vpaddd	%zmm23, %zmm2, %zmm23
	vmovdqu64	-256(%r9), %zmm6
	prefetcht0	(%rax)
	vpunpcklqdq	%zmm7, %zmm18, %zmm24
	vpunpckhqdq	%zmm7, %zmm18, %zmm7
	addq	$64, %r14
	vpunpckldq	%zmm3, %zmm6, %zmm8
	addq	$64, %r13
	vpunpckhdq	%zmm3, %zmm6, %zmm4
	vmovdqu64	-256(%rsi), %zmm3
	vmovdqu64	-256(%rdi), %zmm12
	movq	-104(%rbp), %rax
	addq	$64, %r12
	vpunpcklqdq	%zmm8, %zmm19, %zmm25
	addq	$64, -104(%rbp)
	vpunpckldq	%zmm3, %zmm12, %zmm21
	addq	$64, %rbx
	vpunpckhdq	%zmm3, %zmm12, %zmm17
	vmovdqu64	-256(%rax), %zmm3
	movq	-240(%rbp), %rax
	vpunpckhqdq	%zmm4, %zmm5, %zmm6
	vmovdqu64	-256(%rcx), %zmm12
	vpunpckhqdq	%zmm8, %zmm19, %zmm8
	vpunpcklqdq	%zmm4, %zmm5, %zmm19
	addq	$64, %r11
	vpunpckldq	%zmm3, %zmm12, %zmm14
	addq	$64, %r10
	vpunpckhdq	%zmm3, %zmm12, %zmm12
	vmovdqu64	-256(%rax), %zmm3
	movq	-272(%rbp), %rax
	vshufi32x4	$221, %zmm6, %zmm7, %zmm20
	vpunpcklqdq	%zmm14, %zmm21, %zmm4
	addq	$64, -272(%rbp)
	vpunpcklqdq	%zmm12, %zmm17, %zmm5
	addq	$64, %r9
	vmovdqu64	-256(%rax), %zmm11
	vpunpckhqdq	%zmm12, %zmm17, %zmm12
	vpunpckhqdq	%zmm14, %zmm21, %zmm14
	movq	%rdx, %rax
	vpunpckldq	%zmm3, %zmm11, %zmm27
	addq	$64, %rax
	vpunpckhdq	%zmm3, %zmm11, %zmm26
	vmovdqu64	-256(%r15), %zmm3
	vmovdqu64	-256(%rdx), %zmm11
	addq	$64, %r8
	addq	$64, %rdi
	addq	$64, %rsi
	addq	$64, %rcx
	addq	$64, %r15
	vpunpckldq	%zmm3, %zmm11, %zmm13
	vpunpckhdq	%zmm3, %zmm11, %zmm11
	vpunpcklqdq	%zmm10, %zmm22, %zmm3
	vpunpcklqdq	%zmm13, %zmm27, %zmm18
	vpunpckhqdq	%zmm10, %zmm22, %zmm10
	vshufi32x4	$136, %zmm25, %zmm3, %zmm30
	vshufi32x4	$221, %zmm25, %zmm3, %zmm25
	vshufi32x4	$136, %zmm8, %zmm10, %zmm28
	vshufi32x4	$221, %zmm8, %zmm10, %zmm22
	vshufi32x4	$136, %zmm18, %zmm4, %zmm8
	vshufi32x4	$221, %zmm18, %zmm4, %zmm4
	vpunpcklqdq	%zmm11, %zmm26, %zmm17
	vpunpckhqdq	%zmm13, %zmm27, %zmm13
	vshufi32x4	$136, %zmm19, %zmm24, %zmm27
	vshufi32x4	$221, %zmm19, %zmm24, %zmm24
	vshufi32x4	$136, %zmm4, %zmm25, %zmm19
	vshufi32x4	$221, %zmm13, %zmm14, %zmm21
	vpunpckhqdq	%zmm11, %zmm26, %zmm11
	vshufi32x4	$136, %zmm6, %zmm7, %zmm26
	vmovdqa64	%zmm19, -176(%rbp)
	vshufi32x4	$136, %zmm17, %zmm5, %zmm6
	vshufi32x4	$221, %zmm17, %zmm5, %zmm5
	vpaddd	-176(%rbp), %zmm29, %zmm29
	vshufi32x4	$221, %zmm21, %zmm22, %zmm31
	vshufi32x4	$136, %zmm8, %zmm30, %zmm17
	vshufi32x4	$136, %zmm21, %zmm22, %zmm19
	vshufi32x4	$136, %zmm13, %zmm14, %zmm7
	vshufi32x4	$221, %zmm11, %zmm12, %zmm3
	vpaddd	%zmm17, %zmm9, %zmm9
	vshufi32x4	$136, %zmm6, %zmm27, %zmm13
	vpxord	-560(%rbp), %zmm29, %zmm21
	vshufi32x4	$136, %zmm5, %zmm24, %zmm14
	vpaddd	%zmm13, %zmm23, %zmm23
	vshufi32x4	$221, %zmm8, %zmm30, %zmm8
	vmovdqa64	-368(%rbp), %zmm30
	vshufi32x4	$136, %zmm11, %zmm12, %zmm10
	vpxord	-496(%rbp), %zmm23, %zmm22
	vpaddd	%zmm15, %zmm30, %zmm15
	vpaddd	%zmm14, %zmm15, %zmm15
	vprord	$16, %zmm21, %zmm21
	vshufi32x4	$136, %zmm3, %zmm20, %zmm11
	vshufi32x4	$221, %zmm3, %zmm20, %zmm3
	vpxord	-432(%rbp), %zmm9, %zmm20
	vprord	$16, %zmm22, %zmm22
	vpxord	%zmm15, %zmm1, %zmm1
	vshufi32x4	$221, %zmm4, %zmm25, %zmm4
	vpaddd	-752(%rbp), %zmm21, %zmm25
	vpxord	%zmm25, %zmm0, %zmm0
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm1, %zmm1
	vshufi32x4	$136, %zmm7, %zmm28, %zmm18
	vshufi32x4	$136, %zmm10, %zmm26, %zmm12
	vshufi32x4	$221, %zmm7, %zmm28, %zmm7
	vshufi32x4	$221, %zmm6, %zmm27, %zmm6
	vpaddd	-624(%rbp), %zmm20, %zmm27
	vshufi32x4	$221, %zmm10, %zmm26, %zmm10
	vpaddd	-688(%rbp), %zmm22, %zmm26
	vshufi32x4	$221, %zmm5, %zmm24, %zmm5
	vpaddd	-816(%rbp), %zmm1, %zmm24
	vprord	$12, %zmm0, %zmm28
	vpxord	%zmm27, %zmm16, %zmm16
	vpxord	%zmm24, %zmm30, %zmm0
	vpxord	%zmm26, %zmm2, %zmm2
	vprord	$12, %zmm16, %zmm16
	vprord	$12, %zmm0, %zmm0
	vprord	$12, %zmm2, %zmm2
	vpaddd	%zmm16, %zmm18, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm2, %zmm12, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm28, %zmm19, %zmm30
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm0, %zmm11, %zmm30
	vpxord	%zmm29, %zmm21, %zmm21
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$8, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm8, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm28, %zmm6, %zmm30
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm0, %zmm4, %zmm30
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm16, %zmm5, %zmm30
	vpxord	%zmm29, %zmm22, %zmm22
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$16, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm7, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm16, %zmm16
	vpaddd	%zmm28, %zmm10, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm31, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm16, %zmm3, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm22, %zmm22
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$8, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vpaddd	%zmm16, %zmm13, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm2, %zmm12, %zmm30
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm28, %zmm11, %zmm30
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	-176(%rbp), %zmm0, %zmm30
	vpxord	%zmm29, %zmm21, %zmm21
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$16, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$12, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vpaddd	%zmm16, %zmm14, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm6, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm28, %zmm17, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm0, %zmm31, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm21, %zmm21
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$8, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm18, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm28, %zmm4, %zmm30
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm0, %zmm7, %zmm30
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm16, %zmm3, %zmm30
	vpxord	%zmm29, %zmm22, %zmm22
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$16, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm10, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm16, %zmm16
	vpaddd	%zmm28, %zmm19, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm5, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm16, %zmm8, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm22, %zmm22
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$8, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vpaddd	%zmm16, %zmm12, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm2, %zmm6, %zmm30
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm28, %zmm31, %zmm30
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm0, %zmm11, %zmm30
	vpxord	%zmm29, %zmm21, %zmm21
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$16, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$12, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vpaddd	-176(%rbp), %zmm16, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm4, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm28, %zmm13, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm0, %zmm5, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm21, %zmm21
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$8, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm14, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm28, %zmm7, %zmm30
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm0, %zmm10, %zmm30
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm16, %zmm8, %zmm30
	vpxord	%zmm29, %zmm22, %zmm22
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$16, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm19, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm16, %zmm16
	vpaddd	%zmm28, %zmm17, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm3, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm16, %zmm18, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm22, %zmm22
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$8, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vpaddd	%zmm16, %zmm6, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm2, %zmm4, %zmm30
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm28, %zmm5, %zmm30
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm0, %zmm31, %zmm30
	vpxord	%zmm29, %zmm21, %zmm21
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$16, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$12, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vpaddd	%zmm16, %zmm11, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm7, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm28, %zmm12, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm0, %zmm3, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm21, %zmm21
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$8, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vpaddd	-176(%rbp), %zmm2, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm28, %zmm10, %zmm30
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm0, %zmm19, %zmm30
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm16, %zmm18, %zmm30
	vpxord	%zmm29, %zmm22, %zmm22
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$16, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm17, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm16, %zmm16
	vpaddd	%zmm28, %zmm13, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm8, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm16, %zmm14, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm22, %zmm22
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$8, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vpaddd	%zmm16, %zmm4, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm2, %zmm7, %zmm30
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm28, %zmm3, %zmm30
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm0, %zmm5, %zmm30
	vpxord	%zmm29, %zmm21, %zmm21
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$16, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$12, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vpaddd	%zmm16, %zmm31, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm10, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm28, %zmm6, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm0, %zmm8, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm21, %zmm21
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$8, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm11, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm28, %zmm19, %zmm30
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm0, %zmm17, %zmm30
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm16, %zmm14, %zmm30
	vpxord	%zmm29, %zmm22, %zmm22
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$16, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm13, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm16, %zmm16
	vpaddd	%zmm28, %zmm12, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm18, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	-176(%rbp), %zmm16, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm22, %zmm22
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$8, %zmm1, %zmm1
	vprord	$8, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm24, %zmm24
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm24, %zmm28, %zmm28
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vpaddd	%zmm16, %zmm7, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vpaddd	%zmm2, %zmm10, %zmm30
	vpxord	%zmm9, %zmm20, %zmm20
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm28, %zmm8, %zmm30
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm0, %zmm3, %zmm30
	vpxord	%zmm29, %zmm21, %zmm21
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm20, %zmm27, %zmm27
	vprord	$16, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm27, %zmm16, %zmm16
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpxord	%zmm24, %zmm0, %zmm0
	vprord	$12, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vpaddd	%zmm16, %zmm5, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm19, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm28, %zmm4, %zmm30
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm29, %zmm30, %zmm29
	vpaddd	%zmm0, %zmm18, %zmm30
	vpxord	%zmm29, %zmm21, %zmm21
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm1, %zmm1
	vpxord	%zmm9, %zmm20, %zmm20
	vprord	$8, %zmm22, %zmm22
	vprord	$8, %zmm21, %zmm21
	vprord	$8, %zmm1, %zmm1
	vpaddd	%zmm22, %zmm26, %zmm26
	vpaddd	%zmm21, %zmm25, %zmm25
	vprord	$8, %zmm20, %zmm20
	vpaddd	%zmm1, %zmm24, %zmm24
	vpxord	%zmm26, %zmm2, %zmm2
	vpxord	%zmm25, %zmm28, %zmm28
	vpaddd	%zmm20, %zmm27, %zmm27
	vpxord	%zmm24, %zmm0, %zmm0
	vpxord	%zmm27, %zmm16, %zmm16
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm28, %zmm28
	vprord	$7, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm31, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$7, %zmm16, %zmm16
	vpaddd	%zmm28, %zmm17, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm0, %zmm13, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm23, %zmm20, %zmm20
	vpaddd	-176(%rbp), %zmm16, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm29, %zmm22, %zmm22
	vpxord	%zmm15, %zmm21, %zmm21
	vprord	$16, %zmm1, %zmm1
	vprord	$16, %zmm20, %zmm20
	vprord	$16, %zmm22, %zmm22
	vpaddd	%zmm1, %zmm25, %zmm25
	vpaddd	%zmm20, %zmm24, %zmm24
	vprord	$16, %zmm21, %zmm21
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm25, %zmm2, %zmm2
	vpxord	%zmm24, %zmm28, %zmm28
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm27, %zmm0, %zmm0
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$12, %zmm2, %zmm2
	vprord	$12, %zmm28, %zmm28
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm12, %zmm30
	vpaddd	%zmm9, %zmm30, %zmm9
	vprord	$12, %zmm16, %zmm16
	vpaddd	%zmm28, %zmm6, %zmm30
	vpaddd	%zmm23, %zmm30, %zmm23
	vpaddd	%zmm0, %zmm14, %zmm30
	vpaddd	%zmm29, %zmm30, %zmm29
	vpxord	%zmm29, %zmm22, %zmm22
	vpaddd	%zmm16, %zmm11, %zmm30
	vpaddd	%zmm15, %zmm30, %zmm15
	vpxord	%zmm15, %zmm21, %zmm21
	vpxord	%zmm9, %zmm1, %zmm1
	vprord	$8, %zmm22, %zmm22
	vprord	$8, %zmm21, %zmm21
	vpaddd	%zmm22, %zmm27, %zmm27
	vpxord	%zmm27, %zmm0, %zmm0
	vpaddd	%zmm21, %zmm26, %zmm26
	vpxord	%zmm23, %zmm20, %zmm20
	vpxord	%zmm26, %zmm16, %zmm16
	vprord	$8, %zmm1, %zmm1
	vprord	$7, %zmm0, %zmm0
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$8, %zmm20, %zmm20
	vpaddd	%zmm0, %zmm8, %zmm8
	vpxord	%zmm25, %zmm2, %zmm2
	vpaddd	%zmm15, %zmm8, %zmm15
	vprord	$7, %zmm16, %zmm16
	vpaddd	%zmm20, %zmm24, %zmm24
	vpxord	%zmm15, %zmm1, %zmm1
	vpaddd	%zmm16, %zmm10, %zmm10
	vpxord	%zmm24, %zmm28, %zmm28
	vpaddd	%zmm9, %zmm10, %zmm9
	vpxord	%zmm9, %zmm20, %zmm20
	vprord	$7, %zmm2, %zmm2
	vprord	$16, %zmm1, %zmm1
	vpaddd	%zmm2, %zmm19, %zmm19
	vprord	$7, %zmm28, %zmm28
	vpaddd	%zmm23, %zmm19, %zmm23
	vpaddd	%zmm1, %zmm24, %zmm24
	vprord	$16, %zmm20, %zmm8
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm28, %zmm18, %zmm18
	vpaddd	%zmm29, %zmm18, %zmm29
	vpxord	%zmm24, %zmm0, %zmm0
	vpaddd	%zmm8, %zmm27, %zmm27
	vpxord	%zmm29, %zmm21, %zmm21
	vpxord	%zmm27, %zmm16, %zmm16
	vprord	$16, %zmm22, %zmm22
	vprord	$12, %zmm0, %zmm0
	vpaddd	%zmm22, %zmm26, %zmm26
	vprord	$16, %zmm21, %zmm21
	vpxord	%zmm26, %zmm2, %zmm2
	vpaddd	%zmm0, %zmm14, %zmm14
	vpaddd	%zmm15, %zmm14, %zmm15
	vprord	$12, %zmm16, %zmm16
	vpaddd	%zmm21, %zmm25, %zmm25
	vpxord	%zmm15, %zmm1, %zmm1
	vpaddd	%zmm16, %zmm3, %zmm3
	vpxord	%zmm25, %zmm28, %zmm28
	vpaddd	%zmm9, %zmm3, %zmm9
	vpxord	%zmm9, %zmm8, %zmm8
	vprord	$12, %zmm2, %zmm18
	vprord	$8, %zmm1, %zmm1
	vprord	$12, %zmm28, %zmm2
	vpaddd	%zmm18, %zmm17, %zmm17
	vpaddd	%zmm23, %zmm17, %zmm23
	vpaddd	%zmm1, %zmm24, %zmm24
	vprord	$8, %zmm8, %zmm8
	vpxord	%zmm23, %zmm22, %zmm22
	vpaddd	%zmm2, %zmm7, %zmm7
	vpaddd	%zmm29, %zmm7, %zmm29
	vpxord	%zmm24, %zmm0, %zmm0
	vpaddd	%zmm8, %zmm27, %zmm27
	vpxord	%zmm29, %zmm21, %zmm21
	vpxord	%zmm27, %zmm16, %zmm16
	vprord	$8, %zmm22, %zmm22
	vprord	$7, %zmm0, %zmm0
	vpaddd	%zmm22, %zmm26, %zmm26
	vprord	$7, %zmm16, %zmm3
	vprord	$8, %zmm21, %zmm7
	vpaddd	%zmm0, %zmm12, %zmm12
	vpaddd	%zmm29, %zmm12, %zmm12
	vpxord	%zmm26, %zmm18, %zmm16
	vpaddd	%zmm3, %zmm11, %zmm11
	vpaddd	%zmm15, %zmm11, %zmm11
	vpxord	%zmm12, %zmm22, %zmm22
	vpaddd	%zmm7, %zmm25, %zmm25
	vpxord	%zmm25, %zmm2, %zmm2
	vprord	$7, %zmm16, %zmm16
	vprord	$16, %zmm22, %zmm10
	vpaddd	%zmm16, %zmm5, %zmm5
	vprord	$7, %zmm2, %zmm2
	vpaddd	%zmm9, %zmm5, %zmm9
	vpaddd	%zmm10, %zmm27, %zmm27
	vpxord	%zmm9, %zmm1, %zmm1
	vpxord	%zmm27, %zmm0, %zmm0
	vpaddd	%zmm2, %zmm13, %zmm13
	vpaddd	%zmm23, %zmm13, %zmm23
	vpxord	%zmm11, %zmm7, %zmm7
	vpxord	%zmm23, %zmm8, %zmm8
	vprord	$12, %zmm0, %zmm5
	vprord	$16, %zmm1, %zmm1
	vprord	$16, %zmm7, %zmm7
	vpaddd	-176(%rbp), %zmm5, %zmm29
	vpaddd	%zmm12, %zmm29, %zmm29
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$16, %zmm8, %zmm8
	vpaddd	%zmm7, %zmm26, %zmm26
	vpxord	%zmm25, %zmm16, %zmm16
	vpxord	%zmm26, %zmm3, %zmm3
	vpaddd	%zmm8, %zmm24, %zmm24
	vpxord	%zmm29, %zmm10, %zmm10
	vpxord	%zmm24, %zmm2, %zmm2
	vprord	$12, %zmm16, %zmm14
	vprord	$12, %zmm3, %zmm3
	vprord	$8, %zmm10, %zmm10
	vpaddd	%zmm14, %zmm6, %zmm6
	vpaddd	%zmm9, %zmm6, %zmm9
	vprord	$12, %zmm2, %zmm13
	vpaddd	%zmm3, %zmm31, %zmm15
	vpaddd	%zmm11, %zmm15, %zmm15
	vpxord	%zmm9, %zmm1, %zmm1
	vpaddd	%zmm10, %zmm27, %zmm27
	vpxord	%zmm27, %zmm5, %zmm31
	vpaddd	%zmm13, %zmm4, %zmm4
	vpaddd	%zmm23, %zmm4, %zmm23
	vpxord	%zmm15, %zmm7, %zmm7
	vpxord	%zmm23, %zmm8, %zmm8
	vprord	$8, %zmm1, %zmm1
	vprord	$7, %zmm31, %zmm31
	vprord	$8, %zmm8, %zmm8
	vpaddd	%zmm1, %zmm25, %zmm25
	vprord	$8, %zmm7, %zmm7
	vpxord	%zmm1, %zmm31, %zmm19
	vpaddd	%zmm8, %zmm24, %zmm24
	vpaddd	%zmm7, %zmm26, %zmm26
	vpxord	%zmm25, %zmm14, %zmm2
	vpxord	%zmm24, %zmm13, %zmm0
	vpxord	%zmm26, %zmm3, %zmm16
	vmovdqa64	%zmm19, -368(%rbp)
	addq	$64, -240(%rbp)
	movq	%rax, -288(%rbp)
	movq	-208(%rbp), %rdx
	movzbl	-289(%rbp), %eax
	vpxord	%zmm27, %zmm9, %zmm9
	cmpq	%rdx, -280(%rbp)
	vpxord	%zmm26, %zmm23, %zmm23
	vprord	$7, %zmm2, %zmm2
	vprord	$7, %zmm0, %zmm0
	vprord	$7, %zmm16, %zmm16
	vpxord	%zmm25, %zmm29, %zmm29
	movb	%al, -176(%rbp)
	vpxord	%zmm24, %zmm15, %zmm15
	vpxord	%zmm8, %zmm16, %zmm16
	vpxord	%zmm10, %zmm2, %zmm2
	vpxord	%zmm7, %zmm0, %zmm0
	jne	.L18
	vmovdqa64	-368(%rbp), %zmm31
.L16:
	vpunpckldq	%zmm15, %zmm29, %zmm5
	movq	-824(%rbp), %rcx
	vpunpckldq	%zmm2, %zmm16, %zmm7
	vpunpckldq	%zmm31, %zmm0, %zmm8
	vpunpckhdq	%zmm2, %zmm16, %zmm2
	vpunpckldq	%zmm23, %zmm9, %zmm4
	vpunpckhdq	%zmm23, %zmm9, %zmm1
	vpunpckhdq	%zmm15, %zmm29, %zmm29
	vpunpckhdq	%zmm31, %zmm0, %zmm0
	vpunpcklqdq	%zmm8, %zmm7, %zmm11
	vpunpcklqdq	%zmm5, %zmm4, %zmm6
	vpunpcklqdq	%zmm0, %zmm2, %zmm10
	vpunpckhqdq	%zmm5, %zmm4, %zmm4
	vpunpckhqdq	%zmm8, %zmm7, %zmm7
	vpunpcklqdq	%zmm29, %zmm1, %zmm5
	vpunpckhqdq	%zmm0, %zmm2, %zmm0
	vpunpckhqdq	%zmm29, %zmm1, %zmm1
	vpxord	%zmm3, %zmm3, %zmm3
	vshufi32x4	$136, %zmm11, %zmm6, %zmm9
	vshufi32x4	$136, %zmm7, %zmm4, %zmm8
	vshufi32x4	$136, %zmm10, %zmm5, %zmm19
	vshufi32x4	$136, %zmm0, %zmm1, %zmm18
	vshufi32x4	$221, %zmm7, %zmm4, %zmm2
	vshufi32x4	$221, %zmm11, %zmm6, %zmm6
	vshufi32x4	$221, %zmm10, %zmm5, %zmm4
	vshufi32x4	$221, %zmm0, %zmm1, %zmm0
	vshufi32x4	$136, %zmm3, %zmm9, %zmm17
	vshufi32x4	$136, %zmm3, %zmm8, %zmm16
	vshufi32x4	$136, %zmm3, %zmm6, %zmm13
	vshufi32x4	$136, %zmm3, %zmm2, %zmm12
	vmovdqu32	%ymm17, (%rcx)
	vshufi32x4	$136, %zmm3, %zmm0, %zmm10
	vmovdqu32	%ymm16, 32(%rcx)
	vshufi32x4	$136, %zmm3, %zmm19, %zmm15
	vmovdqu32	%ymm13, 128(%rcx)
	vshufi32x4	$136, %zmm3, %zmm18, %zmm14
	vmovdqu32	%ymm12, 160(%rcx)
	vshufi32x4	$136, %zmm3, %zmm4, %zmm11
	vmovdqu32	%ymm10, 224(%rcx)
	vshufi32x4	$221, %zmm3, %zmm9, %zmm9
	vmovdqu32	%ymm15, 64(%rcx)
	vshufi32x4	$221, %zmm3, %zmm8, %zmm8
	vmovdqu32	%ymm14, 96(%rcx)
	vshufi32x4	$221, %zmm3, %zmm19, %zmm7
	vmovdqu32	%ymm11, 192(%rcx)
	vshufi32x4	$221, %zmm3, %zmm18, %zmm5
	vmovdqu32	%ymm9, 256(%rcx)
	vshufi32x4	$221, %zmm3, %zmm6, %zmm6
	vmovdqu32	%ymm8, 288(%rcx)
	vshufi32x4	$221, %zmm3, %zmm2, %zmm2
	vmovdqu32	%ymm7, 320(%rcx)
	vshufi32x4	$221, %zmm3, %zmm4, %zmm1
	vmovdqu32	%ymm5, 352(%rcx)
	vshufi32x4	$221, %zmm3, %zmm0, %zmm0
	vmovdqu32	%ymm6, 384(%rcx)
	vmovdqu32	%ymm2, 416(%rcx)
	vmovdqu32	%ymm1, 448(%rcx)
	vmovdqu32	%ymm0, 480(%rcx)
	movq	-304(%rbp), %rsi
	cmpb	$0, -290(%rbp)
	leaq	16(%rsi), %rax
	cmove	%rsi, %rax
	subq	$16, -112(%rbp)
	addq	$512, %rcx
	movq	%rax, -304(%rbp)
	subq	$-128, -832(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-848(%rbp), %rax
	movq	%rcx, -824(%rbp)
	jne	.L20
	movq	-1024(%rbp), %rax
	andq	$15, -872(%rbp)
	shrq	$4, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	salq	$9, %rax
	addq	%rax, -880(%rbp)
	salq	$7, %rdx
	addq	%rdx, -864(%rbp)
.L15:
	cmpq	$7, -872(%rbp)
	jbe	.L21
	movzbl	-290(%rbp), %eax
	movq	-280(%rbp), %r12
	movzbl	-296(%rbp), %r11d
	vpbroadcastq	-304(%rbp), %zmm0
	orb	-856(%rbp), %r11b
	negq	%rax
	testq	%r12, %r12
	vpbroadcastq	%rax, %zmm1
	movq	-840(%rbp), %rax
	vpandd	.LC8(%rip), %zmm1, %zmm1
	vpbroadcastd	(%rax), %ymm4
	vpbroadcastd	4(%rax), %ymm9
	vpbroadcastd	8(%rax), %ymm5
	vpbroadcastd	12(%rax), %ymm7
	vpaddq	%zmm1, %zmm0, %zmm0
	vpbroadcastd	16(%rax), %ymm17
	vpmovqd	%zmm0, %ymm1
	vpbroadcastd	20(%rax), %ymm8
	vpsrlq	$32, %zmm0, %zmm0
	vpmovqd	%zmm0, %ymm0
	vpbroadcastd	24(%rax), %ymm6
	vpbroadcastd	28(%rax), %ymm31
	je	.L22
	movq	-864(%rbp), %rax
	movzbl	-289(%rbp), %r13d
	vmovdqa64	%ymm1, -240(%rbp)
	vmovdqa64	%ymm0, -272(%rbp)
	vmovdqa64	%ymm8, %ymm2
	vmovdqa64	%ymm17, %ymm0
	vmovdqa64	%ymm6, %ymm1
	vmovdqa64	%ymm31, %ymm17
	movq	(%rax), %rdx
	movq	32(%rax), %rbx
	leaq	256(%rdx), %r10
	movq	8(%rax), %rdx
	leaq	256(%rbx), %rsi
	movq	40(%rax), %rbx
	leaq	256(%rdx), %r9
	movq	16(%rax), %rdx
	leaq	256(%rbx), %rcx
	movq	48(%rax), %rbx
	leaq	256(%rdx), %r8
	movq	24(%rax), %rdx
	movq	56(%rax), %rax
	movq	%rdx, %rdi
	movq	%rbx, %rdx
	movq	%rax, -176(%rbp)
	addq	$256, %rdi
	addq	$256, %rdx
	addq	$256, %rax
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L24:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L59
.L23:
	vmovdqu8	-256(%r9), %xmm3
	prefetcht0	(%r10)
	prefetcht0	(%r9)
	prefetcht0	(%r8)
	prefetcht0	(%rdi)
	prefetcht0	(%rsi)
	vmovdqu8	-256(%r10), %xmm8
	prefetcht0	(%rcx)
	prefetcht0	(%rdx)
	vinserti128	$0x1, -240(%r9), %ymm3, %ymm3
	prefetcht0	(%rax)
	vpaddd	%ymm0, %ymm4, %ymm30
	movzbl	%r11b, %r11d
	vpaddd	%ymm2, %ymm9, %ymm29
	addq	$64, %r10
	vinserti128	$0x1, -304(%r10), %ymm8, %ymm8
	addq	$64, %r9
	addq	$64, %r8
	addq	$64, %rdi
	addq	$64, %rsi
	addq	$64, %rcx
	addq	$64, %rdx
	addq	$64, %rax
	vpunpckhdq	%ymm3, %ymm8, %ymm12
	vpunpckldq	%ymm3, %ymm8, %ymm14
	vmovdqu8	-320(%rdi), %xmm3
	vmovdqu8	-320(%r8), %xmm8
	vinserti128	$0x1, -304(%rdi), %ymm3, %ymm3
	vinserti128	$0x1, -304(%r8), %ymm8, %ymm8
	vpunpckldq	%ymm3, %ymm8, %ymm13
	vpunpckhdq	%ymm3, %ymm8, %ymm8
	vmovdqu8	-320(%rcx), %xmm3
	vinserti128	$0x1, -304(%rcx), %ymm3, %ymm6
	vmovdqu8	-320(%rsi), %xmm3
	vpunpcklqdq	%ymm13, %ymm14, %ymm15
	vinserti128	$0x1, -304(%rsi), %ymm3, %ymm3
	vpunpckhqdq	%ymm13, %ymm14, %ymm14
	vpunpckldq	%ymm6, %ymm3, %ymm10
	vpunpckhdq	%ymm6, %ymm3, %ymm3
	vmovdqu8	-320(%rax), %xmm6
	vinserti128	$0x1, -304(%rax), %ymm6, %ymm11
	vmovdqu8	-320(%rdx), %xmm6
	vinserti128	$0x1, -304(%rdx), %ymm6, %ymm6
	vpunpckldq	%ymm11, %ymm6, %ymm16
	vpunpckhdq	%ymm11, %ymm6, %ymm6
	vpunpcklqdq	%ymm8, %ymm12, %ymm11
	vpunpcklqdq	%ymm16, %ymm10, %ymm13
	vpunpckhqdq	%ymm8, %ymm12, %ymm8
	vpunpckhqdq	%ymm16, %ymm10, %ymm10
	vpunpcklqdq	%ymm6, %ymm3, %ymm12
	vpunpckhqdq	%ymm6, %ymm3, %ymm3
	vperm2i128	$32, %ymm13, %ymm15, %ymm6
	vperm2i128	$49, %ymm13, %ymm15, %ymm15
	vmovdqu8	-288(%r10), %xmm13
	vmovdqa64	%ymm6, %ymm24
	vperm2i128	$32, %ymm10, %ymm14, %ymm6
	vinserti128	$0x1, -272(%r10), %ymm13, %ymm13
	vpaddd	%ymm24, %ymm30, %ymm30
	vmovdqa64	%ymm6, %ymm26
	vperm2i128	$32, %ymm12, %ymm11, %ymm6
	vperm2i128	$49, %ymm10, %ymm14, %ymm14
	vmovdqu8	-288(%r8), %xmm10
	vmovdqa64	%ymm6, %ymm22
	vperm2i128	$32, %ymm3, %ymm8, %ymm6
	vpaddd	%ymm22, %ymm29, %ymm29
	vmovdqa64	%ymm6, %ymm21
	vperm2i128	$49, %ymm12, %ymm11, %ymm6
	vmovdqa64	%ymm6, %ymm19
	vperm2i128	$49, %ymm3, %ymm8, %ymm6
	vmovdqu8	-288(%r9), %xmm3
	vinserti128	$0x1, -272(%r9), %ymm3, %ymm3
	vmovdqa64	%ymm6, -176(%rbp)
	vpunpckldq	%ymm3, %ymm13, %ymm23
	vpunpckhdq	%ymm3, %ymm13, %ymm13
	vmovdqu8	-288(%rdi), %xmm3
	vinserti128	$0x1, -272(%rdi), %ymm3, %ymm3
	vinserti128	$0x1, -272(%r8), %ymm10, %ymm10
	vmovdqu8	-288(%rsi), %xmm8
	vpxorq	-272(%rbp), %ymm29, %ymm4
	vmovdqu8	-288(%rdx), %xmm6
	vinserti128	$0x1, -272(%rsi), %ymm8, %ymm8
	vpunpckldq	%ymm3, %ymm10, %ymm11
	vpunpckhdq	%ymm3, %ymm10, %ymm10
	vmovdqu8	-288(%rcx), %xmm3
	vinserti128	$0x1, -272(%rdx), %ymm6, %ymm6
	vprord	$16, %ymm4, %ymm4
	vinserti128	$0x1, -272(%rcx), %ymm3, %ymm3
	vpunpcklqdq	%ymm11, %ymm23, %ymm16
	vpunpckldq	%ymm3, %ymm8, %ymm18
	vpunpckhdq	%ymm3, %ymm8, %ymm8
	vmovdqu8	-288(%rax), %xmm3
	vinserti128	$0x1, -272(%rax), %ymm3, %ymm3
	cmpq	%rbx, %r12
	vpunpckldq	%ymm3, %ymm6, %ymm20
	vpunpckhdq	%ymm3, %ymm6, %ymm3
	vpunpckhqdq	%ymm11, %ymm23, %ymm6
	vpunpcklqdq	%ymm20, %ymm18, %ymm28
	vpunpckhqdq	%ymm20, %ymm18, %ymm18
	vpunpcklqdq	%ymm10, %ymm13, %ymm11
	vmovdqa64	%ymm28, %ymm12
	vpunpckhqdq	%ymm10, %ymm13, %ymm13
	vpunpcklqdq	%ymm3, %ymm8, %ymm10
	vpunpckhqdq	%ymm3, %ymm8, %ymm3
	vmovdqa64	%ymm16, %ymm8
	vperm2i128	$32, %ymm12, %ymm8, %ymm8
	vmovdqa64	%ymm18, %ymm12
	vperm2i128	$32, %ymm12, %ymm6, %ymm12
	vmovdqa64	%ymm8, %ymm25
	vmovdqa64	%ymm28, %ymm8
	vpaddd	%ymm1, %ymm5, %ymm28
	vpxorq	-240(%rbp), %ymm30, %ymm5
	vpaddd	%ymm15, %ymm28, %ymm28
	vmovdqa64	%ymm12, %ymm23
	vperm2i128	$32, %ymm10, %ymm11, %ymm12
	vpxorq	.LC9(%rip), %ymm28, %ymm31
	vmovdqa64	%ymm12, %ymm20
	vperm2i128	$32, %ymm3, %ymm13, %ymm12
	vprord	$16, %ymm5, %ymm5
	vperm2i128	$49, %ymm3, %ymm13, %ymm13
	vpaddd	%ymm17, %ymm7, %ymm3
	vpaddd	%ymm19, %ymm3, %ymm3
	vmovdqa64	%ymm12, %ymm27
	vmovdqa64	%ymm16, %ymm12
	vprord	$16, %ymm31, %ymm31
	vperm2i128	$49, %ymm8, %ymm12, %ymm12
	vpaddd	.LC12(%rip), %ymm31, %ymm9
	vpxorq	%ymm9, %ymm1, %ymm1
	vmovdqa64	%ymm12, %ymm16
	vmovdqa64	%ymm18, %ymm12
	vprord	$12, %ymm1, %ymm1
	vperm2i128	$49, %ymm12, %ymm6, %ymm12
	vperm2i128	$49, %ymm10, %ymm11, %ymm6
	vpaddd	.LC10(%rip), %ymm5, %ymm11
	vpaddd	.LC11(%rip), %ymm4, %ymm10
	vpxorq	%ymm11, %ymm0, %ymm0
	vpxorq	%ymm10, %ymm2, %ymm2
	vmovdqa64	%ymm12, -208(%rbp)
	vmovdqa64	%ymm6, %ymm18
	vpbroadcastd	%r11d, %ymm6
	movl	%r13d, %r11d
	vprord	$12, %ymm0, %ymm0
	vpxorq	%ymm3, %ymm6, %ymm6
	vpaddd	%ymm26, %ymm0, %ymm7
	vpaddd	%ymm30, %ymm7, %ymm30
	vpxorq	%ymm30, %ymm5, %ymm5
	vprord	$12, %ymm2, %ymm2
	vprord	$16, %ymm6, %ymm6
	vpaddd	%ymm21, %ymm2, %ymm7
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm29, %ymm7, %ymm29
	vpaddd	.LC13(%rip), %ymm6, %ymm8
	vpxorq	%ymm8, %ymm17, %ymm17
	vpaddd	%ymm14, %ymm1, %ymm7
	vpxorq	%ymm29, %ymm4, %ymm4
	vpaddd	%ymm28, %ymm7, %ymm28
	vpaddd	%ymm11, %ymm5, %ymm11
	vpxorq	%ymm11, %ymm0, %ymm0
	vprord	$12, %ymm17, %ymm17
	vprord	$8, %ymm4, %ymm4
	vpaddd	-176(%rbp), %ymm17, %ymm7
	vpaddd	%ymm3, %ymm7, %ymm7
	vpxorq	%ymm28, %ymm31, %ymm3
	vpxorq	%ymm7, %ymm6, %ymm6
	vpaddd	%ymm10, %ymm4, %ymm10
	vprord	$7, %ymm0, %ymm31
	vprord	$8, %ymm3, %ymm3
	vprord	$8, %ymm6, %ymm6
	vpaddd	%ymm9, %ymm3, %ymm9
	vpxorq	%ymm10, %ymm2, %ymm2
	vpaddd	%ymm8, %ymm6, %ymm8
	vpxorq	%ymm9, %ymm1, %ymm1
	vpxorq	%ymm8, %ymm17, %ymm0
	vprord	$7, %ymm2, %ymm2
	vprord	$7, %ymm1, %ymm1
	vprord	$7, %ymm0, %ymm0
	vpaddd	%ymm25, %ymm2, %ymm17
	vpaddd	%ymm30, %ymm17, %ymm30
	vpaddd	%ymm20, %ymm1, %ymm17
	vpxorq	%ymm30, %ymm6, %ymm6
	vpaddd	%ymm29, %ymm17, %ymm29
	vpaddd	%ymm16, %ymm0, %ymm17
	vpxorq	%ymm29, %ymm5, %ymm5
	vpaddd	%ymm28, %ymm17, %ymm28
	vpxorq	%ymm28, %ymm4, %ymm4
	vpaddd	%ymm18, %ymm31, %ymm17
	vpaddd	%ymm7, %ymm17, %ymm17
	vprord	$16, %ymm6, %ymm7
	vpxorq	%ymm17, %ymm3, %ymm3
	vprord	$16, %ymm5, %ymm6
	vpaddd	%ymm9, %ymm7, %ymm9
	vprord	$16, %ymm4, %ymm5
	vpaddd	%ymm8, %ymm6, %ymm8
	vpxorq	%ymm9, %ymm2, %ymm2
	vpaddd	%ymm11, %ymm5, %ymm11
	vpxorq	%ymm8, %ymm1, %ymm1
	vpxorq	%ymm11, %ymm0, %ymm0
	vprord	$16, %ymm3, %ymm4
	vprord	$12, %ymm2, %ymm3
	vpaddd	%ymm10, %ymm4, %ymm10
	vprord	$12, %ymm1, %ymm2
	vprord	$12, %ymm0, %ymm1
	vpxorq	%ymm10, %ymm31, %ymm0
	vpaddd	%ymm23, %ymm3, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vpaddd	%ymm27, %ymm2, %ymm31
	vpxorq	%ymm30, %ymm7, %ymm7
	vpaddd	%ymm29, %ymm31, %ymm29
	vpaddd	%ymm12, %ymm1, %ymm31
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm28, %ymm31, %ymm28
	vprord	$12, %ymm0, %ymm0
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm13, %ymm0, %ymm31
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm17, %ymm4, %ymm4
	vprord	$8, %ymm7, %ymm7
	vprord	$8, %ymm6, %ymm6
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm9, %ymm7, %ymm9
	vprord	$8, %ymm4, %ymm4
	vpaddd	%ymm8, %ymm6, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm11
	vpxorq	%ymm9, %ymm3, %ymm3
	vpaddd	%ymm10, %ymm4, %ymm10
	vpxorq	%ymm8, %ymm2, %ymm2
	vpxorq	%ymm11, %ymm1, %ymm1
	vpxorq	%ymm10, %ymm0, %ymm0
	vprord	$7, %ymm3, %ymm3
	vprord	$7, %ymm2, %ymm2
	vprord	$7, %ymm1, %ymm1
	vprord	$7, %ymm0, %ymm0
	vpaddd	%ymm22, %ymm0, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vpaddd	%ymm21, %ymm3, %ymm31
	vpxorq	%ymm30, %ymm6, %ymm6
	vpaddd	%ymm29, %ymm31, %ymm29
	vpaddd	-176(%rbp), %ymm2, %ymm31
	vpxorq	%ymm29, %ymm5, %ymm5
	vpaddd	%ymm28, %ymm31, %ymm28
	vpaddd	%ymm15, %ymm1, %ymm31
	vpxorq	%ymm28, %ymm4, %ymm4
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm17, %ymm7, %ymm7
	vprord	$16, %ymm6, %ymm6
	vprord	$16, %ymm5, %ymm5
	vprord	$16, %ymm4, %ymm4
	vpaddd	%ymm11, %ymm6, %ymm11
	vprord	$16, %ymm7, %ymm7
	vpaddd	%ymm10, %ymm5, %ymm10
	vpaddd	%ymm9, %ymm4, %ymm9
	vpxorq	%ymm11, %ymm0, %ymm0
	vpaddd	%ymm8, %ymm7, %ymm8
	vpxorq	%ymm10, %ymm3, %ymm3
	vpxorq	%ymm9, %ymm2, %ymm2
	vpxorq	%ymm8, %ymm1, %ymm1
	vprord	$12, %ymm0, %ymm0
	vprord	$12, %ymm3, %ymm3
	vprord	$12, %ymm2, %ymm2
	vpaddd	%ymm19, %ymm0, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vprord	$12, %ymm1, %ymm1
	vpaddd	%ymm20, %ymm3, %ymm31
	vpaddd	%ymm29, %ymm31, %ymm29
	vpxorq	%ymm30, %ymm6, %ymm6
	vpaddd	%ymm24, %ymm2, %ymm31
	vpaddd	%ymm28, %ymm31, %ymm28
	vpxorq	%ymm29, %ymm5, %ymm5
	vpaddd	%ymm12, %ymm1, %ymm31
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm28, %ymm4, %ymm4
	vpxorq	%ymm17, %ymm7, %ymm7
	vprord	$8, %ymm6, %ymm6
	vprord	$8, %ymm5, %ymm5
	vprord	$8, %ymm4, %ymm4
	vpaddd	%ymm11, %ymm6, %ymm11
	vprord	$8, %ymm7, %ymm7
	vpaddd	%ymm10, %ymm5, %ymm10
	vpaddd	%ymm9, %ymm4, %ymm9
	vpxorq	%ymm11, %ymm0, %ymm0
	vpaddd	%ymm8, %ymm7, %ymm8
	vpxorq	%ymm10, %ymm3, %ymm3
	vpxorq	%ymm9, %ymm2, %ymm2
	vpxorq	%ymm8, %ymm1, %ymm1
	vprord	$7, %ymm0, %ymm0
	vprord	$7, %ymm3, %ymm3
	vprord	$7, %ymm2, %ymm2
	vprord	$7, %ymm1, %ymm1
	vpaddd	%ymm26, %ymm3, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vpaddd	%ymm16, %ymm2, %ymm31
	vpxorq	%ymm30, %ymm7, %ymm7
	vpaddd	%ymm29, %ymm31, %ymm29
	vpaddd	%ymm23, %ymm1, %ymm31
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm28, %ymm31, %ymm28
	vpaddd	%ymm13, %ymm0, %ymm31
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm17, %ymm4, %ymm4
	vprord	$16, %ymm7, %ymm7
	vprord	$16, %ymm6, %ymm6
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm9, %ymm7, %ymm9
	vprord	$16, %ymm4, %ymm4
	vpaddd	%ymm8, %ymm6, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm11
	vpxorq	%ymm9, %ymm3, %ymm3
	vpaddd	%ymm10, %ymm4, %ymm10
	vpxorq	%ymm8, %ymm2, %ymm2
	vpxorq	%ymm11, %ymm1, %ymm1
	vpxorq	%ymm10, %ymm0, %ymm0
	vprord	$12, %ymm3, %ymm3
	vprord	$12, %ymm2, %ymm2
	vprord	$12, %ymm1, %ymm1
	vpaddd	%ymm27, %ymm3, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vprord	$12, %ymm0, %ymm0
	vpaddd	%ymm14, %ymm2, %ymm31
	vpaddd	%ymm29, %ymm31, %ymm29
	vpxorq	%ymm30, %ymm7, %ymm7
	vpaddd	%ymm18, %ymm1, %ymm31
	vpaddd	%ymm28, %ymm31, %ymm28
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm25, %ymm0, %ymm31
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm28, %ymm5, %ymm5
	vpxorq	%ymm17, %ymm4, %ymm4
	vprord	$8, %ymm7, %ymm31
	vprord	$8, %ymm6, %ymm7
	vprord	$8, %ymm5, %ymm6
	vpaddd	%ymm9, %ymm31, %ymm9
	vprord	$8, %ymm4, %ymm5
	vpaddd	%ymm8, %ymm7, %ymm8
	vpaddd	%ymm11, %ymm6, %ymm11
	vpxorq	%ymm9, %ymm3, %ymm3
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm8, %ymm2, %ymm2
	vpxorq	%ymm11, %ymm1, %ymm1
	vpxorq	%ymm10, %ymm0, %ymm0
	vprord	$7, %ymm3, %ymm4
	vprord	$7, %ymm2, %ymm3
	vprord	$7, %ymm1, %ymm2
	vprord	$7, %ymm0, %ymm1
	vpaddd	%ymm21, %ymm1, %ymm0
	vpaddd	%ymm30, %ymm0, %ymm30
	vpaddd	%ymm20, %ymm4, %ymm0
	vpxorq	%ymm30, %ymm7, %ymm7
	vpaddd	%ymm29, %ymm0, %ymm29
	vpaddd	%ymm12, %ymm3, %ymm0
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm28, %ymm0, %ymm28
	vpaddd	-176(%rbp), %ymm2, %ymm0
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm17, %ymm0, %ymm17
	vpxorq	%ymm17, %ymm31, %ymm0
	vprord	$16, %ymm7, %ymm7
	vprord	$16, %ymm6, %ymm6
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm11, %ymm7, %ymm11
	vprord	$16, %ymm0, %ymm0
	vpaddd	%ymm10, %ymm6, %ymm10
	vpaddd	%ymm9, %ymm5, %ymm9
	vpxorq	%ymm11, %ymm1, %ymm1
	vpaddd	%ymm8, %ymm0, %ymm8
	vpxorq	%ymm10, %ymm4, %ymm4
	vpxorq	%ymm9, %ymm3, %ymm3
	vpxorq	%ymm8, %ymm2, %ymm2
	vprord	$12, %ymm1, %ymm1
	vprord	$12, %ymm4, %ymm4
	vprord	$12, %ymm2, %ymm2
	vpaddd	%ymm15, %ymm1, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vprord	$12, %ymm3, %ymm3
	vpaddd	%ymm16, %ymm4, %ymm31
	vpaddd	%ymm29, %ymm31, %ymm29
	vpxorq	%ymm30, %ymm7, %ymm7
	vpaddd	%ymm22, %ymm3, %ymm31
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm28, %ymm31, %ymm28
	vpaddd	%ymm18, %ymm2, %ymm31
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm17, %ymm0, %ymm0
	vprord	$8, %ymm7, %ymm7
	vprord	$8, %ymm6, %ymm6
	vprord	$8, %ymm0, %ymm31
	vpaddd	%ymm11, %ymm7, %ymm11
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm10, %ymm6, %ymm10
	vpaddd	%ymm8, %ymm31, %ymm8
	vpxorq	%ymm11, %ymm1, %ymm0
	vpaddd	%ymm9, %ymm5, %ymm9
	vpxorq	%ymm8, %ymm2, %ymm1
	vpxorq	%ymm10, %ymm4, %ymm4
	vpxorq	%ymm9, %ymm3, %ymm3
	vprord	$7, %ymm0, %ymm0
	vprord	$7, %ymm4, %ymm4
	vprord	$7, %ymm3, %ymm3
	vprord	$7, %ymm1, %ymm1
	vpaddd	%ymm19, %ymm4, %ymm2
	vpaddd	%ymm30, %ymm2, %ymm30
	vpaddd	%ymm23, %ymm3, %ymm2
	vpaddd	%ymm29, %ymm2, %ymm29
	vpxorq	%ymm29, %ymm7, %ymm7
	vpaddd	%ymm27, %ymm1, %ymm2
	vpaddd	%ymm28, %ymm2, %ymm28
	vpaddd	%ymm25, %ymm0, %ymm2
	vpxorq	%ymm28, %ymm6, %ymm6
	vpaddd	%ymm17, %ymm2, %ymm17
	vpxorq	%ymm30, %ymm31, %ymm2
	vpxorq	%ymm17, %ymm5, %ymm5
	vprord	$16, %ymm7, %ymm7
	vprord	$16, %ymm2, %ymm2
	vprord	$16, %ymm6, %ymm6
	vpaddd	%ymm8, %ymm7, %ymm8
	vpaddd	%ymm9, %ymm2, %ymm9
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm11, %ymm6, %ymm11
	vpxorq	%ymm9, %ymm4, %ymm4
	vpxorq	%ymm8, %ymm3, %ymm3
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm11, %ymm1, %ymm1
	vpxorq	%ymm10, %ymm0, %ymm0
	vprord	$12, %ymm3, %ymm3
	vprord	$12, %ymm4, %ymm4
	vprord	$12, %ymm1, %ymm1
	vprord	$12, %ymm0, %ymm31
	vpaddd	%ymm14, %ymm4, %ymm0
	vpaddd	%ymm30, %ymm0, %ymm30
	vpaddd	%ymm24, %ymm3, %ymm0
	vpaddd	%ymm29, %ymm0, %ymm29
	vpaddd	%ymm13, %ymm1, %ymm0
	vpaddd	%ymm28, %ymm0, %ymm28
	vpxorq	%ymm28, %ymm6, %ymm6
	vpaddd	%ymm26, %ymm31, %ymm0
	vpxorq	%ymm29, %ymm7, %ymm7
	vpaddd	%ymm17, %ymm0, %ymm17
	vpxorq	%ymm17, %ymm5, %ymm5
	vprord	$8, %ymm6, %ymm6
	vpxorq	%ymm30, %ymm2, %ymm2
	vpaddd	%ymm11, %ymm6, %ymm11
	vpxorq	%ymm11, %ymm1, %ymm1
	vprord	$8, %ymm7, %ymm7
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm8, %ymm7, %ymm8
	vpxorq	%ymm8, %ymm3, %ymm0
	vpaddd	%ymm10, %ymm5, %ymm10
	vprord	$7, %ymm1, %ymm3
	vpxorq	%ymm10, %ymm31, %ymm1
	vprord	$8, %ymm2, %ymm2
	vprord	$7, %ymm0, %ymm0
	vpaddd	%ymm9, %ymm2, %ymm9
	vprord	$7, %ymm1, %ymm1
	vpxorq	%ymm9, %ymm4, %ymm4
	vpaddd	%ymm20, %ymm1, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vpxorq	%ymm30, %ymm7, %ymm7
	vprord	$7, %ymm4, %ymm4
	vprord	$16, %ymm7, %ymm7
	vpaddd	%ymm16, %ymm4, %ymm31
	vpaddd	%ymm29, %ymm31, %ymm29
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm18, %ymm0, %ymm31
	vpaddd	%ymm11, %ymm7, %ymm11
	vpaddd	%ymm28, %ymm31, %ymm28
	vpxorq	%ymm11, %ymm1, %ymm1
	vpaddd	%ymm12, %ymm3, %ymm31
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm28, %ymm5, %ymm5
	vprord	$16, %ymm6, %ymm6
	vpxorq	%ymm17, %ymm2, %ymm2
	vprord	$12, %ymm1, %ymm31
	vpaddd	%ymm10, %ymm6, %ymm10
	vprord	$16, %ymm5, %ymm5
	vpxorq	%ymm10, %ymm4, %ymm1
	vprord	$16, %ymm2, %ymm2
	vpaddd	%ymm9, %ymm5, %ymm9
	vpxorq	%ymm9, %ymm0, %ymm0
	vpaddd	%ymm8, %ymm2, %ymm8
	vprord	$12, %ymm1, %ymm1
	vpxorq	%ymm8, %ymm3, %ymm3
	vprord	$12, %ymm0, %ymm4
	vpaddd	-176(%rbp), %ymm31, %ymm0
	vpaddd	%ymm30, %ymm0, %ymm30
	vpaddd	%ymm23, %ymm1, %ymm0
	vpaddd	%ymm29, %ymm0, %ymm29
	vpxorq	%ymm29, %ymm6, %ymm6
	vprord	$12, %ymm3, %ymm3
	vpaddd	%ymm21, %ymm4, %ymm0
	vpaddd	%ymm28, %ymm0, %ymm28
	vpxorq	%ymm30, %ymm7, %ymm7
	vpaddd	%ymm13, %ymm3, %ymm0
	vprord	$8, %ymm6, %ymm6
	vpaddd	%ymm17, %ymm0, %ymm17
	vpxorq	%ymm28, %ymm5, %ymm5
	vpxorq	%ymm17, %ymm2, %ymm2
	vpaddd	%ymm10, %ymm6, %ymm10
	vpxorq	%ymm10, %ymm1, %ymm1
	vprord	$8, %ymm7, %ymm7
	vprord	$8, %ymm5, %ymm5
	vprord	$8, %ymm2, %ymm2
	vpaddd	%ymm11, %ymm7, %ymm11
	vpaddd	%ymm9, %ymm5, %ymm9
	vpxorq	%ymm11, %ymm31, %ymm0
	vpaddd	%ymm8, %ymm2, %ymm8
	vprord	$7, %ymm1, %ymm31
	vpxorq	%ymm9, %ymm4, %ymm4
	vpxorq	%ymm8, %ymm3, %ymm1
	vpaddd	%ymm15, %ymm31, %ymm3
	vpaddd	%ymm30, %ymm3, %ymm30
	vprord	$7, %ymm0, %ymm0
	vprord	$7, %ymm4, %ymm4
	vprord	$7, %ymm1, %ymm1
	vpaddd	%ymm27, %ymm4, %ymm3
	vpxorq	%ymm30, %ymm2, %ymm2
	vpaddd	%ymm29, %ymm3, %ymm29
	vpaddd	%ymm14, %ymm1, %ymm3
	vpaddd	%ymm28, %ymm3, %ymm28
	vpaddd	%ymm26, %ymm0, %ymm3
	vpxorq	%ymm28, %ymm6, %ymm6
	vpaddd	%ymm17, %ymm3, %ymm17
	vpxorq	%ymm29, %ymm7, %ymm3
	vpxorq	%ymm17, %ymm5, %ymm5
	vprord	$16, %ymm2, %ymm2
	vprord	$16, %ymm3, %ymm3
	vprord	$16, %ymm6, %ymm6
	vpaddd	%ymm9, %ymm2, %ymm9
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm8, %ymm3, %ymm8
	vpaddd	%ymm11, %ymm6, %ymm11
	vpxorq	%ymm9, %ymm31, %ymm7
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm8, %ymm4, %ymm4
	vpxorq	%ymm10, %ymm0, %ymm0
	vpxorq	%ymm11, %ymm1, %ymm1
	vprord	$12, %ymm4, %ymm4
	vprord	$12, %ymm0, %ymm31
	vprord	$12, %ymm7, %ymm7
	vprord	$12, %ymm1, %ymm1
	vpaddd	%ymm24, %ymm7, %ymm0
	vpaddd	%ymm30, %ymm0, %ymm30
	vpaddd	%ymm22, %ymm4, %ymm0
	vpxorq	%ymm30, %ymm2, %ymm2
	vpaddd	%ymm29, %ymm0, %ymm29
	vpaddd	%ymm25, %ymm1, %ymm0
	vpxorq	%ymm29, %ymm3, %ymm3
	vpaddd	%ymm28, %ymm0, %ymm28
	vpaddd	%ymm19, %ymm31, %ymm0
	vpxorq	%ymm28, %ymm6, %ymm6
	vpaddd	%ymm17, %ymm0, %ymm17
	vpxorq	%ymm17, %ymm5, %ymm5
	vprord	$8, %ymm2, %ymm2
	vprord	$8, %ymm3, %ymm3
	vprord	$8, %ymm6, %ymm6
	vpaddd	%ymm9, %ymm2, %ymm9
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm8, %ymm3, %ymm8
	vpaddd	%ymm11, %ymm6, %ymm11
	vpxorq	%ymm8, %ymm4, %ymm0
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm9, %ymm7, %ymm7
	vpxorq	%ymm10, %ymm31, %ymm4
	vpxorq	%ymm11, %ymm1, %ymm1
	vprord	$7, %ymm7, %ymm7
	vprord	$7, %ymm4, %ymm4
	vprord	$7, %ymm0, %ymm0
	vprord	$7, %ymm1, %ymm1
	vpaddd	%ymm16, %ymm4, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vpaddd	%ymm23, %ymm7, %ymm31
	vpxorq	%ymm30, %ymm3, %ymm3
	vpaddd	%ymm29, %ymm31, %ymm29
	vpaddd	%ymm13, %ymm0, %ymm31
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm28, %ymm31, %ymm28
	vpaddd	%ymm18, %ymm1, %ymm31
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm17, %ymm2, %ymm2
	vprord	$16, %ymm3, %ymm3
	vprord	$16, %ymm6, %ymm6
	vprord	$16, %ymm2, %ymm31
	vpaddd	%ymm11, %ymm3, %ymm11
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm10, %ymm6, %ymm10
	vpaddd	%ymm8, %ymm31, %ymm8
	vpxorq	%ymm11, %ymm4, %ymm2
	vpaddd	%ymm9, %ymm5, %ymm9
	vpxorq	%ymm10, %ymm7, %ymm4
	vpxorq	%ymm9, %ymm0, %ymm0
	vpxorq	%ymm8, %ymm1, %ymm1
	vprord	$12, %ymm2, %ymm2
	vprord	$12, %ymm0, %ymm7
	vprord	$12, %ymm4, %ymm4
	vpaddd	%ymm12, %ymm2, %ymm0
	vpaddd	%ymm30, %ymm0, %ymm30
	vprord	$12, %ymm1, %ymm1
	vpaddd	%ymm27, %ymm4, %ymm0
	vpxorq	%ymm30, %ymm3, %ymm3
	vpaddd	%ymm29, %ymm0, %ymm29
	vpaddd	%ymm20, %ymm7, %ymm0
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm28, %ymm0, %ymm28
	vpaddd	%ymm25, %ymm1, %ymm0
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm17, %ymm0, %ymm17
	vpxorq	%ymm17, %ymm31, %ymm31
	vmovdqa64	-176(%rbp), %ymm12
	vprord	$8, %ymm3, %ymm3
	vprord	$8, %ymm6, %ymm6
	vprord	$8, %ymm31, %ymm31
	vpaddd	%ymm11, %ymm3, %ymm11
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm10, %ymm6, %ymm10
	vpaddd	%ymm8, %ymm31, %ymm8
	vpxorq	%ymm11, %ymm2, %ymm0
	vpaddd	%ymm9, %ymm5, %ymm9
	vpxorq	%ymm10, %ymm4, %ymm2
	vpxorq	%ymm8, %ymm1, %ymm1
	vpxorq	%ymm9, %ymm7, %ymm4
	vprord	$7, %ymm0, %ymm0
	vprord	$7, %ymm2, %ymm2
	vprord	$7, %ymm4, %ymm4
	vprord	$7, %ymm1, %ymm1
	vpaddd	-176(%rbp), %ymm2, %ymm7
	vpaddd	%ymm30, %ymm7, %ymm30
	vpaddd	%ymm14, %ymm4, %ymm7
	vpaddd	%ymm29, %ymm7, %ymm29
	vpxorq	%ymm29, %ymm3, %ymm3
	vpaddd	%ymm24, %ymm1, %ymm7
	vpaddd	%ymm28, %ymm7, %ymm28
	vpaddd	%ymm19, %ymm0, %ymm7
	vpxorq	%ymm28, %ymm6, %ymm6
	vpaddd	%ymm17, %ymm7, %ymm17
	vpxorq	%ymm30, %ymm31, %ymm7
	vpxorq	%ymm17, %ymm5, %ymm5
	vprord	$16, %ymm3, %ymm3
	vprord	$16, %ymm7, %ymm7
	vprord	$16, %ymm6, %ymm6
	vpaddd	%ymm8, %ymm3, %ymm8
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm9, %ymm7, %ymm9
	vpaddd	%ymm11, %ymm6, %ymm11
	vpxorq	%ymm9, %ymm2, %ymm2
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm8, %ymm4, %ymm4
	vpxorq	%ymm11, %ymm1, %ymm1
	vpxorq	%ymm10, %ymm0, %ymm0
	vprord	$12, %ymm2, %ymm2
	vprord	$12, %ymm4, %ymm4
	vprord	$12, %ymm1, %ymm1
	vpaddd	%ymm22, %ymm2, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vprord	$12, %ymm0, %ymm0
	vpaddd	%ymm21, %ymm4, %ymm31
	vpaddd	%ymm29, %ymm31, %ymm29
	vpaddd	%ymm26, %ymm1, %ymm31
	vpaddd	%ymm28, %ymm31, %ymm28
	vpxorq	%ymm30, %ymm7, %ymm7
	vpaddd	%ymm15, %ymm0, %ymm31
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm17, %ymm5, %ymm5
	vpxorq	%ymm29, %ymm3, %ymm3
	vpxorq	%ymm28, %ymm6, %ymm6
	vprord	$8, %ymm5, %ymm5
	vprord	$8, %ymm7, %ymm7
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm10, %ymm0, %ymm0
	vprord	$8, %ymm3, %ymm3
	vpaddd	%ymm9, %ymm7, %ymm9
	vprord	$8, %ymm6, %ymm6
	vpaddd	%ymm8, %ymm3, %ymm8
	vpxorq	%ymm9, %ymm2, %ymm2
	vpxorq	%ymm8, %ymm4, %ymm4
	vpaddd	%ymm11, %ymm6, %ymm11
	vprord	$7, %ymm0, %ymm0
	vpxorq	%ymm11, %ymm1, %ymm1
	vpaddd	%ymm23, %ymm0, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vpxorq	%ymm30, %ymm3, %ymm3
	vprord	$7, %ymm4, %ymm4
	vprord	$7, %ymm2, %ymm2
	vprord	$7, %ymm1, %ymm1
	vpaddd	%ymm27, %ymm2, %ymm31
	vprord	$16, %ymm3, %ymm3
	vpaddd	%ymm29, %ymm31, %ymm29
	vpaddd	%ymm25, %ymm4, %ymm31
	vpxorq	%ymm29, %ymm6, %ymm6
	vpaddd	%ymm28, %ymm31, %ymm28
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm13, %ymm1, %ymm31
	vpaddd	%ymm11, %ymm3, %ymm11
	vpaddd	%ymm17, %ymm31, %ymm17
	vpxorq	%ymm11, %ymm0, %ymm0
	vpxorq	%ymm17, %ymm7, %ymm7
	vprord	$16, %ymm6, %ymm6
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm10, %ymm6, %ymm10
	vprord	$12, %ymm0, %ymm31
	vpaddd	%ymm9, %ymm5, %ymm9
	vprord	$16, %ymm7, %ymm7
	vpxorq	%ymm9, %ymm4, %ymm0
	vpxorq	%ymm10, %ymm2, %ymm2
	vpaddd	%ymm8, %ymm7, %ymm8
	vpxorq	%ymm8, %ymm1, %ymm1
	vprord	$12, %ymm0, %ymm0
	vprord	$12, %ymm2, %ymm2
	vprord	$12, %ymm1, %ymm4
	vpaddd	%ymm18, %ymm31, %ymm1
	vpaddd	%ymm30, %ymm1, %ymm30
	vpaddd	%ymm14, %ymm2, %ymm1
	vpaddd	%ymm29, %ymm1, %ymm29
	vpaddd	%ymm16, %ymm0, %ymm1
	vpaddd	%ymm28, %ymm1, %ymm28
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm26, %ymm4, %ymm1
	vpxorq	%ymm30, %ymm3, %ymm3
	vpaddd	%ymm17, %ymm1, %ymm17
	vpxorq	%ymm29, %ymm6, %ymm6
	vprord	$8, %ymm5, %ymm5
	vpxorq	%ymm17, %ymm7, %ymm7
	vpaddd	%ymm9, %ymm5, %ymm9
	vpxorq	%ymm9, %ymm0, %ymm0
	vprord	$8, %ymm3, %ymm3
	vprord	$8, %ymm7, %ymm7
	vprord	$8, %ymm6, %ymm6
	vpaddd	%ymm11, %ymm3, %ymm11
	vpaddd	%ymm8, %ymm7, %ymm8
	vpxorq	%ymm11, %ymm31, %ymm31
	vpaddd	%ymm10, %ymm6, %ymm10
	vpxorq	%ymm10, %ymm2, %ymm1
	vprord	$7, %ymm0, %ymm2
	vpxorq	%ymm8, %ymm4, %ymm0
	vprord	$7, %ymm31, %ymm31
	vprord	$7, %ymm1, %ymm1
	vprord	$7, %ymm0, %ymm0
	vpaddd	-208(%rbp), %ymm1, %ymm4
	vpaddd	%ymm30, %ymm4, %ymm30
	vpaddd	%ymm24, %ymm2, %ymm4
	vpaddd	%ymm29, %ymm4, %ymm29
	vpaddd	%ymm22, %ymm0, %ymm4
	vpaddd	%ymm28, %ymm4, %ymm28
	vpaddd	%ymm15, %ymm31, %ymm4
	vpxorq	%ymm28, %ymm6, %ymm6
	vpaddd	%ymm17, %ymm4, %ymm17
	vpxorq	%ymm30, %ymm7, %ymm4
	vpxorq	%ymm29, %ymm3, %ymm3
	vprord	$16, %ymm6, %ymm6
	vprord	$16, %ymm4, %ymm4
	vpxorq	%ymm17, %ymm5, %ymm5
	vpaddd	%ymm11, %ymm6, %ymm11
	vpaddd	%ymm9, %ymm4, %ymm9
	vpxorq	%ymm11, %ymm0, %ymm0
	vpxorq	%ymm9, %ymm1, %ymm1
	vprord	$16, %ymm3, %ymm3
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm8, %ymm3, %ymm8
	vprord	$12, %ymm1, %ymm7
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm8, %ymm2, %ymm1
	vprord	$12, %ymm0, %ymm2
	vpxorq	%ymm10, %ymm31, %ymm0
	vpaddd	%ymm21, %ymm7, %ymm31
	vpaddd	%ymm30, %ymm31, %ymm30
	vprord	$12, %ymm1, %ymm1
	vpxorq	%ymm30, %ymm4, %ymm4
	vprord	$12, %ymm0, %ymm0
	vpaddd	%ymm20, %ymm1, %ymm31
	vpaddd	%ymm29, %ymm31, %ymm29
	vpaddd	%ymm19, %ymm2, %ymm31
	vpaddd	%ymm28, %ymm31, %ymm31
	vpxorq	%ymm29, %ymm3, %ymm3
	vpaddd	%ymm12, %ymm0, %ymm28
	vpaddd	%ymm17, %ymm28, %ymm17
	vpxorq	%ymm17, %ymm5, %ymm5
	vprord	$8, %ymm4, %ymm4
	vpxorq	%ymm31, %ymm6, %ymm6
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm9, %ymm4, %ymm9
	vpxorq	%ymm9, %ymm7, %ymm7
	vpaddd	%ymm10, %ymm5, %ymm10
	vpxorq	%ymm10, %ymm0, %ymm0
	vprord	$8, %ymm3, %ymm3
	vprord	$8, %ymm6, %ymm6
	vpaddd	%ymm8, %ymm3, %ymm8
	vprord	$7, %ymm7, %ymm7
	vpaddd	%ymm11, %ymm6, %ymm11
	vpxorq	%ymm8, %ymm1, %ymm1
	vpxorq	%ymm11, %ymm2, %ymm2
	vpaddd	%ymm14, %ymm7, %ymm14
	vpaddd	%ymm29, %ymm14, %ymm14
	vprord	$7, %ymm0, %ymm0
	vpxorq	%ymm14, %ymm6, %ymm6
	vpaddd	%ymm27, %ymm0, %ymm27
	vpaddd	%ymm30, %ymm27, %ymm27
	vpxorq	%ymm27, %ymm3, %ymm3
	vprord	$7, %ymm2, %ymm2
	vprord	$7, %ymm1, %ymm1
	vpaddd	%ymm25, %ymm2, %ymm25
	vprord	$16, %ymm6, %ymm6
	vpaddd	%ymm17, %ymm25, %ymm17
	vpaddd	%ymm26, %ymm1, %ymm26
	vprord	$16, %ymm3, %ymm25
	vpaddd	%ymm31, %ymm26, %ymm28
	vpxorq	%ymm17, %ymm4, %ymm3
	vpaddd	%ymm10, %ymm6, %ymm10
	vpxorq	%ymm28, %ymm5, %ymm5
	vpaddd	%ymm11, %ymm25, %ymm11
	vpxorq	%ymm10, %ymm7, %ymm7
	vpxorq	%ymm11, %ymm0, %ymm0
	vprord	$16, %ymm3, %ymm3
	vprord	$16, %ymm5, %ymm5
	vpaddd	%ymm8, %ymm3, %ymm8
	vprord	$12, %ymm0, %ymm4
	vpaddd	%ymm9, %ymm5, %ymm9
	vprord	$12, %ymm7, %ymm7
	vpxorq	%ymm8, %ymm2, %ymm0
	vpaddd	%ymm13, %ymm4, %ymm13
	vpaddd	%ymm27, %ymm13, %ymm27
	vpxorq	%ymm9, %ymm1, %ymm1
	vpaddd	%ymm24, %ymm7, %ymm24
	vpaddd	%ymm14, %ymm24, %ymm14
	vpxorq	%ymm14, %ymm6, %ymm6
	vprord	$12, %ymm0, %ymm0
	vprord	$12, %ymm1, %ymm1
	vpxorq	%ymm27, %ymm25, %ymm13
	vpaddd	%ymm19, %ymm0, %ymm19
	vpaddd	%ymm17, %ymm19, %ymm17
	vpaddd	%ymm23, %ymm1, %ymm23
	vpxorq	%ymm17, %ymm3, %ymm2
	vpaddd	%ymm28, %ymm23, %ymm28
	vprord	$8, %ymm6, %ymm6
	vpxorq	%ymm28, %ymm5, %ymm5
	vprord	$8, %ymm13, %ymm13
	vpaddd	%ymm10, %ymm6, %ymm10
	vpxorq	%ymm10, %ymm7, %ymm3
	vprord	$8, %ymm5, %ymm5
	vpaddd	%ymm11, %ymm13, %ymm11
	vprord	$8, %ymm2, %ymm2
	vpxorq	%ymm11, %ymm4, %ymm4
	vpaddd	%ymm9, %ymm5, %ymm9
	vpaddd	%ymm8, %ymm2, %ymm8
	vprord	$7, %ymm3, %ymm3
	vpxorq	%ymm9, %ymm1, %ymm1
	vpxorq	%ymm8, %ymm0, %ymm0
	vpaddd	%ymm18, %ymm3, %ymm18
	vpaddd	%ymm27, %ymm18, %ymm27
	vprord	$7, %ymm4, %ymm4
	vpxorq	%ymm27, %ymm2, %ymm2
	vprord	$7, %ymm1, %ymm1
	vpaddd	%ymm12, %ymm4, %ymm12
	vpaddd	%ymm17, %ymm12, %ymm17
	vprord	$7, %ymm0, %ymm0
	vpxorq	%ymm17, %ymm5, %ymm5
	vpaddd	%ymm22, %ymm1, %ymm22
	vpaddd	%ymm14, %ymm22, %ymm14
	vpaddd	%ymm21, %ymm0, %ymm21
	vpxorq	%ymm14, %ymm13, %ymm7
	vpaddd	%ymm28, %ymm21, %ymm28
	vprord	$16, %ymm2, %ymm2
	vpxorq	%ymm28, %ymm6, %ymm6
	vpaddd	%ymm9, %ymm2, %ymm9
	vprord	$16, %ymm5, %ymm5
	vpxorq	%ymm9, %ymm3, %ymm3
	vprord	$16, %ymm6, %ymm6
	vpaddd	%ymm10, %ymm5, %ymm10
	vprord	$16, %ymm7, %ymm7
	vpxorq	%ymm10, %ymm4, %ymm4
	vpaddd	%ymm11, %ymm6, %ymm11
	vpaddd	%ymm8, %ymm7, %ymm8
	vprord	$12, %ymm3, %ymm18
	vpxorq	%ymm8, %ymm1, %ymm1
	vpxorq	%ymm11, %ymm0, %ymm0
	vprord	$12, %ymm4, %ymm19
	vpaddd	%ymm20, %ymm18, %ymm4
	vpaddd	%ymm27, %ymm4, %ymm4
	vpxorq	%ymm2, %ymm4, %ymm2
	vprord	$12, %ymm0, %ymm0
	vpaddd	-208(%rbp), %ymm19, %ymm3
	vpaddd	%ymm17, %ymm3, %ymm3
	vprord	$12, %ymm1, %ymm1
	vpaddd	%ymm15, %ymm0, %ymm12
	vpxorq	%ymm5, %ymm3, %ymm5
	vpaddd	%ymm28, %ymm12, %ymm12
	vpaddd	%ymm16, %ymm1, %ymm13
	vpaddd	%ymm14, %ymm13, %ymm13
	vprord	$8, %ymm2, %ymm14
	vpxorq	%ymm7, %ymm13, %ymm7
	vpxorq	%ymm6, %ymm12, %ymm2
	vprord	$8, %ymm5, %ymm6
	vpaddd	%ymm9, %ymm14, %ymm5
	vprord	$8, %ymm7, %ymm15
	vprord	$8, %ymm2, %ymm2
	vpaddd	%ymm10, %ymm6, %ymm10
	vpaddd	%ymm8, %ymm15, %ymm8
	vpxorq	%ymm18, %ymm5, %ymm16
	vpaddd	%ymm11, %ymm2, %ymm11
	vpxorq	%ymm1, %ymm8, %ymm1
	vpxorq	%ymm0, %ymm11, %ymm17
	vpxorq	%ymm19, %ymm10, %ymm0
	vprord	$7, %ymm16, %ymm16
	vprord	$7, %ymm1, %ymm1
	vprord	$7, %ymm17, %ymm17
	vprord	$7, %ymm0, %ymm0
	vpxorq	%ymm4, %ymm11, %ymm4
	vpxorq	%ymm13, %ymm10, %ymm9
	vpxorq	%ymm12, %ymm5, %ymm5
	vpxorq	%ymm3, %ymm8, %ymm7
	vpxorq	%ymm15, %ymm0, %ymm0
	vpxorq	%ymm2, %ymm16, %ymm2
	vpxorq	%ymm6, %ymm1, %ymm1
	vpxorq	%ymm14, %ymm17, %ymm17
	jne	.L24
	vmovdqa64	%ymm17, %ymm31
	vmovdqa64	%ymm2, %ymm8
	vmovdqa64	%ymm0, %ymm17
	vmovdqa64	%ymm1, %ymm6
.L22:
	vpunpckldq	%ymm7, %ymm5, %ymm3
	movq	-304(%rbp), %rdi
	cmpb	$0, -1012(%rbp)
	vpunpckhdq	%ymm9, %ymm4, %ymm1
	movq	-880(%rbp), %rbx
	vpunpckhdq	%ymm7, %ymm5, %ymm5
	vpunpckldq	%ymm9, %ymm4, %ymm2
	leaq	8(%rdi), %rax
	vpunpckldq	%ymm8, %ymm17, %ymm7
	vpunpckhdq	%ymm8, %ymm17, %ymm0
	cmove	%rdi, %rax
	addq	$64, -864(%rbp)
	vpunpckldq	%ymm31, %ymm6, %ymm8
	andq	$7, -872(%rbp)
	vpunpckhdq	%ymm31, %ymm6, %ymm6
	addq	$256, %rbx
	vpunpcklqdq	%ymm3, %ymm2, %ymm4
	movq	%rax, -304(%rbp)
	vpunpcklqdq	%ymm8, %ymm7, %ymm11
	vpunpcklqdq	%ymm6, %ymm0, %ymm10
	vpunpckhqdq	%ymm3, %ymm2, %ymm2
	vpunpckhqdq	%ymm6, %ymm0, %ymm0
	vpunpcklqdq	%ymm5, %ymm1, %ymm3
	vpunpckhqdq	%ymm5, %ymm1, %ymm1
	vpunpckhqdq	%ymm8, %ymm7, %ymm5
	vperm2i128	$32, %ymm11, %ymm4, %ymm9
	vperm2i128	$32, %ymm10, %ymm3, %ymm7
	vperm2i128	$32, %ymm5, %ymm2, %ymm8
	vperm2i128	$32, %ymm0, %ymm1, %ymm6
	vperm2i128	$49, %ymm11, %ymm4, %ymm4
	vperm2i128	$49, %ymm5, %ymm2, %ymm2
	vperm2i128	$49, %ymm10, %ymm3, %ymm3
	vperm2i128	$49, %ymm0, %ymm1, %ymm0
	vmovups	%xmm9, -256(%rbx)
	vextracti128	$0x1, %ymm9, -240(%rbx)
	vmovups	%xmm8, -224(%rbx)
	vextracti128	$0x1, %ymm8, -208(%rbx)
	vmovups	%xmm7, -192(%rbx)
	vextracti128	$0x1, %ymm7, -176(%rbx)
	vmovups	%xmm6, -160(%rbx)
	vextracti128	$0x1, %ymm6, -144(%rbx)
	vmovups	%xmm4, -128(%rbx)
	vextracti128	$0x1, %ymm4, -112(%rbx)
	vmovups	%xmm2, -96(%rbx)
	vextracti128	$0x1, %ymm2, -80(%rbx)
	vmovups	%xmm3, -64(%rbx)
	vextracti128	$0x1, %ymm3, -48(%rbx)
	vmovups	%xmm0, -32(%rbx)
	vextracti128	$0x1, %ymm0, -16(%rbx)
	movq	%rbx, -880(%rbp)
.L21:
	movq	-872(%rbp), %rbx
	cmpq	$3, %rbx
	ja	.L60
	vzeroupper
	movq	%rbx, %rax
.L26:
	testq	%rax, %rax
	je	.L14
	movzbl	-296(%rbp), %r11d
	movq	-864(%rbp), %r12
	orb	-856(%rbp), %r11b
	movzbl	-289(%rbp), %r13d
	movq	-840(%rbp), %r15
	movq	-304(%rbp), %rbx
	leaq	(%r12,%rax,8), %r10
	movq	-880(%rbp), %r14
	movb	%r11b, -208(%rbp)
	movq	-280(%rbp), %r11
	movq	%r10, -176(%rbp)
.L33:
	vmovdqu64	(%r15), %xmm0
	testq	%r11, %r11
	movq	(%r12), %r9
	vmovaps	%xmm0, -96(%rbp)
	vmovdqu64	16(%r15), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	je	.L29
	movq	%r11, %r10
	cmpq	$1, %r10
	movzbl	-208(%rbp), %r8d
	je	.L61
	.p2align 4,,10
	.p2align 3
.L30:
	leaq	-96(%rbp), %rdi
	movq	%r9, %rsi
	movq	%rbx, %rcx
	movl	$64, %edx
	call	blake3_compress_in_place_avx512
	subq	$1, %r10
	addq	$64, %r9
	movzbl	%r13b, %r8d
	cmpq	$1, %r10
	jne	.L30
.L61:
	orb	-291(%rbp), %r8b
	leaq	-96(%rbp), %rdi
	movq	%rbx, %rcx
	movl	$64, %edx
	movq	%r9, %rsi
	movzbl	%r8b, %r8d
	call	blake3_compress_in_place_avx512
.L29:
	cmpb	$1, -290(%rbp)
	vmovdqa64	-96(%rbp), %xmm0
	vmovups	%xmm0, (%r14)
	sbbq	$-1, %rbx
	addq	$8, %r12
	addq	$32, %r14
	vmovdqa64	-80(%rbp), %xmm0
	vmovups	%xmm0, -16(%r14)
	cmpq	-176(%rbp), %r12
	jne	.L33
.L14:
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L62
	leaq	-48(%rbp), %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L60:
	.cfi_restore_state
	movzbl	-1016(%rbp), %eax
	movq	-880(%rbp), %r13
	subq	$8, %rsp
	movl	-1012(%rbp), %r12d
	movq	-304(%rbp), %r14
	movq	-864(%rbp), %r15
	movzbl	-856(%rbp), %r9d
	pushq	%r13
	movq	-840(%rbp), %rdx
	pushq	%rax
	movzbl	-296(%rbp), %eax
	movzbl	%r12b, %r8d
	movq	-280(%rbp), %rsi
	movq	%r14, %rcx
	movq	%r15, %rdi
	pushq	%rax
	vzeroupper
	call	blake3_hash4_avx512
	leaq	4(%r14), %rax
	addq	$32, %rsp
	testb	%r12b, %r12b
	cmove	%r14, %rax
	andl	$3, %ebx
	addq	$32, %r15
	subq	$-128, %r13
	movq	%rax, -304(%rbp)
	movq	%r15, -864(%rbp)
	movq	%rbx, -872(%rbp)
	movq	%r13, -880(%rbp)
	movq	%rbx, %rax
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L58:
	movzbl	-291(%rbp), %eax
	orb	%al, -176(%rbp)
	jmp	.L17
.L59:
	orb	-291(%rbp), %r11b
	jmp	.L23
.L62:
	call	__stack_chk_fail
	.cfi_endproc
.LFE4828:
	.size	blake3_hash_many_avx512, .-blake3_hash_many_avx512
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.quad	274877907008
	.quad	274877907008
	.align 16
.LC2:
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.align 16
.LC3:
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.align 16
.LC4:
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.align 16
.LC5:
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.align 16
.LC6:
	.long	1779033703
	.long	-1150833019
	.long	1013904242
	.long	-1521486534
	.section	.rodata
	.align 64
.LC7:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 64
.LC8:
	.long	0
	.long	0
	.long	1
	.long	0
	.long	2
	.long	0
	.long	3
	.long	0
	.long	4
	.long	0
	.long	5
	.long	0
	.long	6
	.long	0
	.long	7
	.long	0
	.section	.rodata.cst32
	.align 32
.LC9:
	.quad	274877907008
	.quad	274877907008
	.quad	274877907008
	.quad	274877907008
	.align 32
.LC10:
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.long	1779033703
	.align 32
.LC11:
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.long	-1150833019
	.align 32
.LC12:
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.long	1013904242
	.align 32
.LC13:
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.long	-1521486534
	.ident	"GCC: (SUSE Linux) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
