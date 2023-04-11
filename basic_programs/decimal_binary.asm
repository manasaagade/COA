include 'emu8086.inc'
mov ax,15
mov bx,2

binary:
    mov dx,00
    div bx
    cmp ax,00
    je exit
    jne label
    
label:
    mov cx,ax
    mov ax,dx
    call print_num
    mov ax,cx
    jmp binary
    
exit:
    mov ax,dx
    call print_num
    hlt
    
ret
define_print_num
define_print_num_uns
define_scan_num