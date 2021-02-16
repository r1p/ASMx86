global _start

section .text
_start:

        jmp Here       ; Always jump (JMP) to the label "Here".

NoEx:
        mov eax, 0x10
        xor ebx, ebx

Here:
        mov ecx, 0x5

Printz:
        push ecx

        mov eax, 0x4
        mov ebx, 1
        mov ecx, message
        mov edx, mlen
        int 0x80

        pop ecx
        loop Printz

        mov eax, 0x1
        mov ebx, 0xa
        int 0x80

section .data
        message: db "Hola :D",0ah
        mlen     equ $-message
