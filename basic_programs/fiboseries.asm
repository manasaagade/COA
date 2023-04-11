include 'emu8086.inc'
print 'enter number of digits : '
call scan_num                  
mov c,cx  
gotoxy 0,3
print '0'
print '1'
mov ax,00
mov bx,01 

label:
    dec c
    add ax,bx
    mov bp,ax 
    call print_num
    mov ax,bx
    mov bx,bp
    cmp c,02
    je break
    jne label
    
break:
    hlt
    
ret
c dw 00
bp dw 00
define_scan_num
define_print_num
define_print_num_uns
