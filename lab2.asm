%include "io.inc"

section .data
    ;1.1
    a: db 0xf
    b: db 0xa
    
    ;1.2
    nod: db 5

section .text
global CMAIN
CMAIN:
    ;1.3
    main:
    mov eax, a
        cmp eax, b
        je continue
            cmp eax, b
            jbe else
            sub eax, b
            jmp cont
            else:
            mov ebx, b
            sub ebx, a
            jmp cont
        cont:         
        jmp main
        
    continue:
        mov [nod], eax
        mov cx,8      ;Инициализация счётчика цикла
        lp:
            rol al,1      ;Цилический сдвиг AL на 1 бит влево
            jnc bit0      ;Переход, если CF=0
            inc bl        ;Инкремент счетчика единичных битов
        bit0:
            loop lp       ;Команда цикла
            mov dl ,bl
    xor eax, eax
    ret
