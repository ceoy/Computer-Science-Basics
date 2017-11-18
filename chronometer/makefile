NAME=chronometer

all: $(NAME)

clean:
	rm *.o *.lst *~

$(NAME): $(NAME).o
	ld -o $(NAME) $(NAME).o

$(NAME).o: $(NAME).asm
	nasm -f elf64 -g -F dwarf $(NAME).asm -l $(NAME).lst
