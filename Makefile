CFLAGS = -W -Wall -O3 -omit-frame-pointer

all: KeccakSponge.o KeccakF-1600-opt64.o KeccakDuplex.o
	@echo "Compiling necessary Keccak files done"

KeccakSponge.o: KeccakSponge.c
	gcc ${CFLAGS} -o KeccakSponge.o -c KeccakSponge.c

KeccakDuplex.o: KeccakDuplex.c 
	gcc ${CFLAGS} -o KeccakDuplex.o -c KeccakDuplex.c

KeccakF-1600-opt64.o: KeccakF-1600-opt64.c 
	gcc ${CFLAGS} -o KeccakF-1600-opt64.o -c KeccakF-1600-opt64.c
