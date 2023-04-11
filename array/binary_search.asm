include 'emu8086.inc'
print 'Enter the size of the array: ' 
call scan_num
mov n,cx
mov m,cx

printn
print 'Enter the elements of the array: '
printn
mov si,0

input:
   printn
    call scan_num
    mov a[si],cx
    add si,02
    dec n
    cmp n,0
    jne input
    
mov si,0
printn
output:
     mov ax,a[si]
     call print_num
     print ' '
     add si,2
     dec m 
     cmp m,0
     jne output
     
     
printn
print 'Enter the key to be searched: '
call scan_num
mov sp,cx

mov bp,si
mov ax,0
sub bp,2
add ax,bp
mov bx,2
div bx


mid:
   mov si,ax
   cmp sp,a[si]
   je result
   jl low
   jg high
   
    high:
       add si,2
       mov ax,si
       add ax,bp
       mov dx,0
       div bx
       cmp ax,bp
       jg end
       
       mov di,ax
       mov dx,0 
       div bx
       cmp dx,0
       jne subb
       mov ax,di
       mov si,ax
       cmp ax,bp 
       jg end
       jmp mid
       
       
       subb:
          mov ax,di
          sub ax,1
          mov si,ax
          cmp ax,bp
          jg end
          jmp mid 
          
       low:
       sub si,2
       mov ax,si
       add ax,0
       mov dx,0
       div bx 
       cmp ax,0
       jl end

       mov di,ax 
       
       mov dx,0
       div bx
       cmp dx,0
       jne addd
       mov ax,di
       mov si,ax
       cmp ax,0
       jl end
       jmp mid
       
       addd:
       mov ax,di
       add ax,1
       mov si,ax 
       cmp ax,0
       jl end
       jmp mid
       
       
          
    result:
    printn 
    mov ax,a[si]
    call print_num
    print ' element found '
    hlt 
    
    end:
       mov ax,sp
       printn
       call print_num
       print ' element not foud'
       hlt
define_scan_num
define_print_num
define_print_num_uns  
   
n dw 0
m dw 0
a dw n dup(?)  
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    