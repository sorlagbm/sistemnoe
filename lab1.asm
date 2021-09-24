section .data
; 1.1 
a db 10
b db 27
c db 0
; дописать еще хуйню какую то ))

;1.2
sum db 0
def db 0
pro db 1
md db 2
del db 3

section .text
global _start
_start:

;1.3
mov eax, a
mov ebx, b
add eax, ebx
mov [sum], eax


;1.4
mov eax, a
mov ebx, b
sub eax, ebx
mov [def], eax

;1.5
mov eax, a
mov ebx, b
neg ebx
mov [b], ebx
sub eax, ebx
mov [def], eax

;1.6
mov eax, a
mov ebx, b
imul eax, ebx
mov [pro], eax
mul eax, ebx

;1.7
mov eax, a
mov ebx, b
div ebx, eax
mov [del], ebx

;1.8







