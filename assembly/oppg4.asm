;const
cr equ 13 ; Vognretur
lf equ 10 ; Linjeskift
SYS_EXIT equ 1
SYS_WRITE equ 4
STDOUT equ 1
STDERR equ 2
section .bss
    a resb 4
section .data
    crlf db cr,lf
    crlflen equ $ - crlf
section .text
    global _start
    
    _start:
        mov [a], byte 0
        mov eax, 0
        call _for
    _endFor:
        call _println
        call _exit
    _for:
        cmp eax, 10
        jl _less
        call _else
    cont:   
        inc eax
        cmp eax, 20
        jl _for
        call _endFor
    _less:
        mov ebx, [a]
        inc ebx
        mov [a], ebx
        call cont
    _else:
        mov ebx, [a]
        dec ebx
        mov [a], ebx
        call cont
    _println:
        mov eax, SYS_WRITE
        mov ebx, STDOUT
        mov ecx, [a]
        add ecx, '0'
        mov [a], ecx
        mov ecx, a
        mov edx, 5
        int 80h
        mov eax, SYS_WRITE
        mov ebx, STDOUT
        mov ecx, crlf
        mov edx, crlflen
        int 80h
    _exit:
        mov eax, SYS_EXIT
        mov ebx, 0
        int 80h
