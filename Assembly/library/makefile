NAME=tests

all: $(NAME)

clean:
	rm *.o *.lst *~

$(NAME): $(NAME).o lib.o displaytext.o
	ld -o $(NAME) $(NAME).o lib.o displaytext.o

$(NAME).o: $(NAME).asm
	nasm -f elf64 -g -F dwarf $(NAME).asm -l $(NAME).lst

lib.o: lib.asm
	nasm -f elf64 -g -F dwarf lib.asm -l lib.lst

displaytext.o: displaytext.asm
	nasm -f elf64 -g -F dwarf displaytext.asm -l displaytext.lst
