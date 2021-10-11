section .data
a: db 27
b: db 10
c: db 0
sum: db 0
def: db 0
imp: dw 1
mod: db 5
del: db 15
section .text
global _start
_start:
;1.3
mov eax, 0
mov al, [a]
add al, [b]
mov [sum], eax
;1.4
mov eax, 0
mov ax, [a]
sub ax, [b]
mov [def], ax
;1.5
mov eax, 0
mov ebx, 0

mov ax, [a]
mov bx, [b]
neg bx
sub ax, bx
mov [def], ax
;1.6
mov eax, 0
mov al, [b]
neg al
imul byte[a]
mov [imp], ax
;1.7
mov eax, 0
mov ax, [b]
div byte[a]
mov [mod], ah
mov [del], al
;1.8
mov al, [del]
or al, 10001110b
and al, 01101010b
;1.9
mov bl, al
xor al, bl
xor eax, eax
ret
