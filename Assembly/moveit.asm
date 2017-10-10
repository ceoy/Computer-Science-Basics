section .data

    value db 55h
    
section .text
    global    _start

_start:
    nop
    
; Put your experiments between the two nops...

    mov eax,42h
    add eax,[value]
        mov rbx,42h
    add rbx,[value]
        mov rbx, "Hello" 
        mov rcx, 0ABCDh



; Put your experiments between the two nops...

    nop
