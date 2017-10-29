; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: tests the library function
section .data    
    ; message for failed tests
    failed db "test failed", 0Ah
    failedLength equ $-failed   
    
    ; tests done message
    testsDone db "tests done", 0Ah
    testsDoneLength equ $-testsDone
    
    ; first test, first message
    numberValidString db "1123$"
    numberValidStringSecond db "912551$"
    numberInvalidString db "ab$"
    numberNoEndString db "123"
    
section .text
    global _start
    
    ; imports
    extern displayText ; displays text that is passed into it
    extern numberTest ; checks if all ASCII characters are digits
    extern convertStringToNumber ; converts ascii string to number

_start:
;**********************
; tests numberTest
;********************** 
    ; first test: should work
    mov ecx, numberValidString
    call numberTest
    cmp eax, 0
    jne error
    
    ; second test: should fail
    mov ecx, numberInvalidString
    call numberTest
    cmp eax, 1
    jne error

    ; thirt test: should fail, no end of string
    mov ecx, numberNoEndString  
    call numberTest
    cmp eax, 1
    jne error
;**********************

;**********************
; test convertStringToNumber
;**********************

    ; first tests: should work
    mov ecx, numberValidString
    call convertStringToNumber
    mov rbx, 1123
    cmp rax, rbx
    jne error
    
    ; second test: should work
    mov ecx, numberValidStringSecond
    call convertStringToNumber
    mov rbx, 912551
    cmp rax, rbx
    jne error
    
;**********************

;**********************
    jmp finish  ; we are done with the tests

error:
    mov ecx, failed         ; start of failed message
    mov edx, failedLength   ; length of string
    call displayText        ; call procedure

    
finish:
    mov ecx, testsDone
    mov edx, testsDoneLength
    call displayText 
    
    mov rax, 1 ; code for exit
    mov rbx, 0 ; return code    
    int 80H    ; make kernel call
