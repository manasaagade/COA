include 'emu8086.inc'
print 'enter first number:'
call scan_num
mov ax,cx
mov sp,ax
mov si,0
printn
print 'enter second number:'
call scan_num
mov ax,cx
mov di,ax
label:
    mov ax,sp
    mov bx,1
    jmp label1
    
label1:
    mov dx,0
    div bx
    cmp dx,0
    je label2
    jmp label3
    
    
label2:
    add si,bx
    jmp label3
    
label3:
    inc bx
    mov ax,sp
    cmp bx,sp 
    jl label1
    cmp si,sp
    je printf
    jmp label4
    
printf:
    mov ax,si
    printn
    call print_num
    jmp label4
    
 label4:
    inc sp 
    mov si,0
    mov ax,0
    cmp sp,di
    jle label
    hlt

n dw 0
m dw 0 
define_scan_num
define_print_num_uns
define_print_num

    