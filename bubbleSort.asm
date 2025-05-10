section .data
    array db 5, 3, 8, 4, 2
    array_len equ 5

section .bss
    i resb 1
    j resb 1
    temp resb 1

section .text
    global _start

_start:
    ; i = 0
    mov byte [i], 0

outer_loop:
    mov al, [i]
    cmp al, array_len - 1
    jge end_sort          ; se i >= n - 1, fim

    ; j = 0
    mov byte [j], 0

inner_loop:
    mov al, [j]
    mov bl, [i]
    mov cl, array_len
    sub cl, bl
    dec cl                ; cl = n - i - 1
    cmp al, cl
    jge next_i            ; se j >= n - i - 1, próximo i

    ; Comparar array[j] com array[j + 1]
    movzx esi, byte [j]          ; j
    mov al, [array + esi]        ; al = array[j]
    mov bl, [array + esi + 1]    ; bl = array[j + 1]
    cmp al, bl
    jbe skip_swap                ; se array[j] <= array[j + 1], pular troca

    ; Trocar array[j] e array[j+1]
    mov [temp], al               ; temp = array[j]
    mov [array + esi], bl        ; array[j] = array[j+1]
    mov al, [temp]
    mov [array + esi + 1], al    ; array[j+1] = temp

skip_swap:
    inc byte [j]
    jmp inner_loop

next_i:
    inc byte [i]
    jmp outer_loop

end_sort:
    ; Aqui você pode adicionar código para imprimir ou verificar o vetor ordenado
    ; Encerrar o programa
    mov eax, 1      ; syscall: exit
    xor ebx, ebx    ; exit code 0
    int 0x80
