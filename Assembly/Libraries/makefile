all: lib.o ex6

clean:
	rm *.o *.lst *~

ex6: ex6.o ld -o ex6 ex6.o lib.o

ex6.o: nasm -f elf64 -g -F dwarf calcSum.asm -l calcSum.lst

lib.o: nasm -f elf64 -g -F dwarf calcSum.asm -l lib.lst
