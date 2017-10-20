section .data
    output db "   ", 0Ah ; contains the value
section .text
    global _start

_start:
    mov al, 151 ; initialise al
    mov cl, 0   ; initialise cl (counter)
divide:
    inc cl      ; we divided once
    xor ah, ah  ; 00000000 a    h
    mov bl, 10  ; we want to divide by 10
    div bl      ; we divide
    push rax    ; push ah (the number we want to display) to the stack
    cmp al, 0   ; check if we are done
    jne divide  ; jump back to divide;

    mov ebx, output ; start of string
finish:
    ; there will always be one in the stack
    pop rax          ; pop into al
    add ah, '0'      ; increase by 0 so we have correct ascii number
    mov [ebx], ah    ; put value there
    inc ebx          ; inc by one
    dec cl           ; decrease it by one
    cmp cl, 0        ; compare the couter to 0
    jne finish       ; it is not over yet

    mov ecx, output ; start of string
    mov edx, 4     ; length of the string
    mov eax, 4     ; write call
    mov ebx, 1     ; system.write
    int 80h

    mov eax, 1 ; exiting
    mov ebx, 0 ; return code
    int 80h    ; goodbye

