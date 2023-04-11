include 'emu8086.inc' 
print 'enter string:'
lea dx,a
mov ah,10
int 21h  
printn              
print 'output string:'
lea dx,a+2
mov ah,09
int 21h
mov si,2  
mov cx,0
m:        
    cmp a[si],'$'
    je end
    inc si
    inc cx
    jmp m
end: 
    printn
    print 'length :'
    mov ax,cx
    call print_num_uns
    hlt
ret
define_print_num_uns
a db 10 dup('$')