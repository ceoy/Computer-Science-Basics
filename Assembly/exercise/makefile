all: add number

clean:
	rm *.o *.lst *~

add: add.o
	ld -o add add.o
	
add.o: add.asm
	nasm -f elf64 -g -F dwarf add.asm -l add.lst
	
number: number.o div.o
	ld -o number number.o div.o
	
number.o: number.asm
	nasm -f elf64 -g -F dwarf number.asm -l number.lst
	
div.o: div.asm
	nasm -f elf64 -g -F dwarf div.asm -l div.lst
