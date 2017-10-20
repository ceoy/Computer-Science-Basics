all: number add div

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

		
div: div.o
	ld -o div div.o
	
div.o: div.asm
	nasm -f elf64 -g -F dwarf div.asm -l div.lst
