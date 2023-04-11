include 'emu8086.inc'
mov ax,1
print 'enter number: '
call scan_num
mov n,cx
gotoxy 0,1
print 'enter number: '
call scan_num
mov r,cx
mov bx,n
fact1:
    mul bx
    dec bx
    cmp bx,1
    jne fact1
    je label
label:
    mov num1,ax
    mov ax,n
    sub ax,cx
    mov num2,ax
    mov ax,1
    mov bx,num2
fact2:   
    mul bx
    dec bx
        cmp bx,1
        jne fact2
        je label2
         
label2:
        mov num3,ax 
        mov ax,1
        mov bx,r
fact3:  
        mul bx
        dec bx
        cmp bx,1
        jne fact3
        je label4
label4:
        mov num4,ax
        mov ax,num3
        mov bx,num4
        mul bx
        mov bx,ax
        mov ax,num1
        div bx       
        gotoxy 0,3
        print 'ncr: '
        call print_num_uns
ret
n dw 0
r dw 0
num1 dw 0
num2 dw 0
num3 dw 0
num4 dw 0
define_scan_num
define_print_num_uns

        
    