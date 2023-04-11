include 'emu8086.inc'
print 'Enter the First Interval:'
call scan_num
mov a,cx
mov cx,0
printn
print 'Enter the Second Interval:'
call scan_num
mov b,cx
mov bx,a 
armstrong:
    mov ax,bx
    cmp bx,b
    jg exit1
    jmp count
count: 
    cmp ax,0
    je restore
    mov dx,0
    div divisor
    inc counter  
    jmp count
restore:
    mov di,counter
    mov c,di 
    mov ax,bx    
    jmp main
main:
    cmp ax,0
    je exit
    mov dx,0 
    div divisor 
    mov quotient,ax
    mov remainder,dx
    mov ax,remainder
    jmp multiply
multiply: 
    cmp c,1
    je label
    mul remainder
    dec c
    jmp multiply 
label:
    add sum,ax
    mov ax,quotient
    mov c,di
    jmp main
exit:
    cmp sum,bx
    je print 
    inc bx
    mov sum,0
    mov counter,0
    jmp armstrong
print:
    printn
    mov ax,sum
    call print_num
    inc bx 
    mov sum,0
    mov counter,0
    jmp armstrong 
exit1:
    ret
define_scan_num
define_print_num
define_print_num_uns
quotient dw 0
remainder dw 0
divisor dw 10
counter dw 0 
c dw 0 
sum dw 0  
a dw 0
b dw 0
