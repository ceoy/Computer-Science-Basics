all: moveit

clean:
	rm *.o *.lst *~

moveit: moveit.o
	ld -o moveit moveit.o
    
moveit.o: moveit.asm
	nasm -f elf64 -g -F dwarf moveit.asm -l moveit.lst
