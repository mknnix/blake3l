NAME=blake3l
CC=gcc
CFLAGS=-O3 -Wall -Wextra -nostdlib -fno-pie -static -pedantic -fstack-protector-strong -D_FORTIFY_SOURCE=2
LDFLAGS=-no-pie -Wl,-z,relro,-z,now
EXTRAFLAGS=-Wa,--noexecstack

AVX512=$(NAME)_x64_avx512
AVX2=$(NAME)_x64_avx2
SSE41=$(NAME)_x64_sse41
SSE2=$(NAME)_x64_sse2
NEON=$(NAME)_arm64_neon

all:
	@echo target arch is undefined. please select one manually.

asm_x64:
	make asm_sse2
	make asm_sse41
	make asm_avx512

asm_avx512:
	$(CC) $(CFLAGS) $(EXTRAFLAGS) ../$(AVX512).c -o ./$(AVX512).s -mavx512f -mavx512vl -S

asm_sse2:
	$(CC) $(CFLAGS) $(EXTRAFLAGS) ../$(SSE2).c -o ./$(SSE2).s -msse2 -S

asm_sse41:
	$(CC) $(CFLAGS) $(EXTRAFLAGS) ../$(SSE41).c -o ./$(SSE41).s -msse4.1 -S

asm_arm64:
	$(CC) $(CFLAGS) $(EXTRAFLAGS) ../$(NEON).c -o ./$(NEON).s -S

lib_avx2_sse41:
	$(CC) $(CFLAGS) $(EXTRAFLAGS) ./$(SSE2).s ./$(SSE41).s ../$(AVX2).c -o ./$(AVX2).o -mavx2 -msse2 -msse4.1 -r

