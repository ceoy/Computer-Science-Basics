; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: recursiv stuff :)

section .text    
global calcSum
global someTriangle
global calcFib


;***********************    
; in:   eax = n
; out:  edx = sum
calcSum:
    push rax
    xor edx, edx ; so we dont have a fck up
    call add
.done:
    pop rax
    ret

add:
    cmp eax, 0     ; check if we reached the end
    je .done       ; we done boi
    add edx, eax ; add eax to edx
    dec eax        ; decrease couter
    call add       ; cont.
.done:
    ret 
;***********************

;***********************
; Calculate the result of
; ( n ) = ( n-1 ) + ( n-1 )
; ( k ) = ( k )   + ( k-1 )
;***********************
; in:
;   ah = n
;   al = k
;   edx = result
someTriangle:
    push rax
    xor edx, edx
    call continueTriangle
    pop rax
    ret
    
continueTriangle:
    push rax
    cmp al, 0 ; add 1
    je .add 
    cmp al, ah ; check if they are equal
    je .add
    dec ah
    call continueTriangle
    dec al
    call continueTriangle
    jmp .done
.add:
    add edx, 1
.done:
    pop rax
    ret
;***********************

;***********************
; fib
; in: ah   = the amount of times
; out: edx = the result
;***********************
calcFib:
    push rax ; save this shit
    xor edx, edx
    call fib
    pop rax
    ret
    
fib:
    push rax
    cmp ah, 0
    je .add
    cmp ah, 1
    je .add
    dec ah
    call fib
    dec ah
    call fib
    jmp .done
.add:
    add edx, 1
.done:
    pop rax
    ret
    
