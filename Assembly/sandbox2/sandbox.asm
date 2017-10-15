section .data
	TestValue db 17h
section .text
	global _start
_start:
	nop ; put your code expermiments between the 2 nops

	mov RAX, 42h
	mov RBX, "Hello"
	mov RCX, 0ABCDh

	nop
