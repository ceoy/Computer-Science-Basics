; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: Calculates the Sum of n Integers: 0+1+2+...+n

section .text    
global shiftsBoolean
global hexToLog

;***********************    
; in:   rax: number
; out:  rcx: log
;***********************
shiftsBoolean:  
    mov rcx, 0   ; set counter to 0
.loop:           ; next label
    cmp rax, 0
    je .done
    inc rcx      ; increase counter
    shr rax, 1   ; divide by 2
    jmp .loop
    
.done:
    ret
;***********************

;***********************
; in: rax: start adr of string
;     rbx: length of string
;***********************
hexToLog:
    push rax
    push rbx
    push rcx
    push rdx
    push rcx ; push this again ; this is the lookup table reference
    
    mov rcx, rax    ; Pass offset of the buffer to read to
	mov rdx, rbx    ; Pass number of bytes to read at one 
    mov eax,3		; Specify sys_read call
	mov ebx,0		; Specify File Descriptor 0: Standard Input
	int 80h			; Call sys_read to fill the buffer
	
	; ecx now contains the hex string
	; convert hex ascii to 

	
