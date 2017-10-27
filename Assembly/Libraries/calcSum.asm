; Description: Calculates the Sum of n Integers: 0+1+2+...+n

section .text
    global _start ; required for the entry point
    

;***********************    
; in:   ah=n
; out:  al=result
calcSum:
    push rbx    ; push rbx
    push rax    ; push rax
    xor al, al  ; 00000000 al
.next:           ; next label
    add al, ah  ; add ah to al 
    dec ah      ; decrease
    jnz .next    ; jump if not zero
    pop rbx     ; get rax
    mov ah, bh
    pop rbx    ; get the actuall x
    ret
;***********************

_start:
    mov ah, 5
    call calcSum
    
finish: 
    mov rax, 1 ; code for exit
    mov rbx, 0 ; return code    
    int 80H    ; make kernel call
