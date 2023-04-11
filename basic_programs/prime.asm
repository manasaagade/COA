include 'emu8086.inc'
print 'enter any number : '
call scan_num        
mov n,cx                
mov ax,cx
mov bx,02

prime:
    mov ax,n
    mov dx,00
    div bx
    cmp dx,00
    je np
    jne label1

np:
    cmp n,02
    je pri
    print 'not prime'
    hlt

label1:
    inc bx
    cmp bx,n
    jne prime
    je pri

pri: 
    print '            '
    print 'prime number'
    hlt
        
n dw 00
define_scan_num  
define_print_num_uns
define_print_num