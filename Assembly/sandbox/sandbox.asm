section .data
	TestValue db 17h
section .text
	global _start
_start:
	nop ; put your code expermiments between the 2 nops

	mov eax, 42h
	add eax, [TestValue]

	nop
