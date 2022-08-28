NAME=blake3l
CC=gcc
CFLAGS=-O3 -Wall -Wextra -nostdlib -pedantic -fstack-protector-strong -D_FORTIFY_SOURCE=2 -fno-pie -fvisibility=hidden
LDFLAGS=-no-pie -Wl,-z,relro,-z,now
EXTRAFLAGS=-Wa,--noexecstack

blake3l_x64_avx512.s: ../blake3l_x64_avx512.c
	$(CC) $(CFLAGS) $(EXTRAFLAGS) $^ -o $@ -mavx512f -mavx512vl

blake3l_x64_avx2.s: ../blake3l_x64_avx2.c
	$(CC) $(CFLAGS) $(EXTRAFLAGS) $^ -o $@ -mavx2

blake3l_x64_sse2.s: ../blake3l_x64_sse2.c
	$(CC) $(CFLAGS) $(EXTRAFLAGS) $^ -o $@ -msse2

blake3l_x64_sse4-1.s: ../blake3l_x64_sse41.c
	$(CC) $(CFLAGS) $(EXTRAFLAGS) $^ -o $@ -msse4.1

blake3l_arm64_neon.s: ../blake3l_arm64_neon.c
	$(CC) $(CFLAGS) $(EXTRAFLAGS) $^ -o $@

