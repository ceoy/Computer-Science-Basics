;  Executable name : none
;  Version         : 1.0
;  Created date    : 27.10.2017
;  Last update     : 27.10.2017
;  Author          : Tim Jahn
;  Description     : Displays a Number

section .text
global displayNumber

;************************************************
; Writes a Number with up to 3 ints the standard output (for example 209)
; Params:
;   al = number
;   edx = memory address of output string
; Return:
;   Nothing
;************************************************
displayNumber:

    push rax
    push rcx
    push rbx
    push rdx
    
    mov cl, 0   ; initialize cl (counter)
.divide:
    inc cl      ; we divided once
    xor ah, ah  ; 00000000 ah
    mov bl, 10  ; we want to divide by 10
    div bl      ; we divide
    push rax    ; push ah (the number we want to display) to the stack
    cmp al, 0   ; check if we are done
    jne .divide ; jump back to divide;
    
.finish:
    
    pop rax          ; pop into rax to have correct ascii number
    add ah, '0'      ; increase by 0 so w
    mov [edx], ah    ; put value there
    inc edx          ; inc by one
    dec cl           ; decrease it by one
    cmp cl, 0        ; compare the couter to 0
    jne .finish      ; it is not over yet

    mov byte [edx], 0AH  ; adds a linebreak
    pop rcx              ; pop rdx into rax
    push rcx             ; put it back in, just so we dont lose the value of it
    mov eax, 4           ; write call
    mov ebx, 1           ; system.write
    mov edx, 4           ; length of the string
    int 80h

    pop rdx
    pop rbx
    pop rcx
    pop rax
    ret
;************************************************

