include 'emu8086.inc'
print 'enter number'
call scan_num
mov ax,cx  
mov b,cx 
printn
mov bx,10
cmp ax,0
jg label

label:
    mov dx,0
    div bx
    add si,dx
    cmp ax,0
    jg label
    jl label1
 label1:
    mov ax,si
    mov a,ax
    print 'sum of digits'
    call print_num
    printn 
    
 
     
  jmp label2
label2:
    mov dx,0
    div bx 
    mov di,ax
    mov sp,dx 
    mov ax,bp
    mul bx
    add ax,sp;cx=sum
    mov bp,ax
    mov ax,di
    cmp ax,0
    jne label2
    je label3
label3:
    mov ax,bp
    print 'reverse' 
    printn
    call print_num
    
    jmp label4
 label4:
    mul a
    cmp ax,b                
    je label6
    jne label7
 label6:
    print 'magic'
    printn
    call print_num
    printn 
    ret
    
  label7:
    print 'not magic'
    printn
    call print_num
    printn
    ret
 define_print_num
 define_print_num_uns
 define_scan_num
 a dw 0
 b dw 0
 
    