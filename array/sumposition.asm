;SUM OF NUMBERS AT EVERY THIRD POSITION OF THE ARRAY


N dw 0
a dw N dup(?)
include 'emu8086.inc'
print 'Enter the size of the Array:'
call scan_num
mov N,cx
mov bx,cx
mov si,0
label:
    cmp N,0
    je restore
    printn
    call scan_num
    mov a[si],cx
    inc si
    inc si
    dec N
    jmp label
restore: 
    sub si,2
    mov ub,si  
    printn
    print 'Enter the Position:'   
    call scan_num 
    mov bp,cx 
    dec cx
    mov ax,cx
    mul pos
    mov di,ax 
    mov ax,bp
    mul pos
    mov bp,ax
    mov N,bx
    jmp position
position:
    cmp di,ub
    jg exit
    mov ax,0
    mov ax,a[di] 
    add sum,ax
    add di,bp
    jmp position
exit:
    printn
    print 'SUM IS:'
    mov ax,sum
    call print_num
ret
define_scan_num
define_print_num
define_print_num_uns
sum dw 0
ub dw 0    
pos dw 2
