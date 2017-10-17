all: number add

clean:
	rm *.o *.lst *~

add: add.o
	ld -o add add.o
	
add.o: add.asm
	nasm -f elf64 -g -F dwarf add.asm -l add.lst
	
number: number.o
	ld -o number number.o
	
number.o: number.asm
	nasm -f elf64 -g -F dwarf number.asm -l number.lst
