section .data
	msg db "kek", 0Ah, 0h
	msglen equ $-msg
section .text
	global _start
_start:
	mov eax, 4 ; sys_write
	mov ebx, 1 ; standard output
	mov ecx, msg ; offset of message
	mov edx, msglen ; length of the message
	int 80h ; make kernel call

	mov eax, 1 ; code for exit syscall
	mov ebx, 0 ; return a code of zero
	int 80h
