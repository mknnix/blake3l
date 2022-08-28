NAME=blake3l
CC=gcc
CFLAGS=-O2 -nostdlib --no-pie
LDFLAGS=-pie -Wl,-z,relro,-z,now
EXTRAFLAGS=-Wa,--noexecstack

blake3l_x64.o: blake3l_x64.s
	$(CC) $(CFLAGS) $(EXTRAFLAGS) $^ -o $@ -mavx512f -mavx512vl

