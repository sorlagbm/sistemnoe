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
        mov cx,8
        lp:
            rol al,1   
            jnc bit0      
            inc bl        
        bit0:
            loop lp       
            mov dl ,bl
    xor eax, eax
    ret
