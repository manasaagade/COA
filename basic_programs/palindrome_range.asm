include 'emu8086.inc'
print 'Enter the First Interval:'
call scan_num  
mov a,cx
mov cx,0
printn
print 'Enter the Second Number:'
call scan_num
mov b,cx
mov ax,a 
mov si,a
mov bx,10
mov di,0 
palindrome:
    cmp si,b
    jg exit1
    jmp label
label:
    mov dx,0
    div bx  
    add di,dx
    cmp ax,0
    je exit2
    jne label1
label1:
    xchg ax,di
    mul bx
    xchg ax,di
    jmp label
exit2:
    cmp di,si
    je print
    inc si
    mov ax,si
    mov di,0
    jmp palindrome
print:
    printn
    mov ax,si
    call print_num
    inc si
    mov ax,si
    mov di,0
    jmp palindrome
exit1:
    hlt
ret    
define_scan_num
define_print_num
define_print_num_uns 
a dw 0
b dw 0
