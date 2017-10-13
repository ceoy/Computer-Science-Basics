all: sandbox

clean: 
	rm *.o *.lst *~

sandbox: sandbox.o
	ld -o sandbox sandbox.o

sandbox.o:
	nasm -f elf64 -g -F dwarf sandbox.asm -l sandbox.lst
