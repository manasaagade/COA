include 'emu8086.inc' 

print 'Enter n: '
call scan_num
mov n,cx
mov si,0 

printn  
print 'Enter array elements: ' 
printn
user:  
    printn 
    call scan_num
    mov a[si],cx
    add si,2
    dec n
    cmp n,0
    jne user  
    
mov si,0  
printn
print 'prime numbers : '

    
array:
   mov ax,a[si]
   mov bx,ax
   mov sp,ax
   jmp label
   
   label:
      mov dx,0
      div bx
      cmp dx,0
      je eq
      jne neq
   eq:
      inc bp
      mov ax,sp
      dec bx
      cmp bx,0
      jne label
      je eqqq
   neq:
      mov ax,sp
      dec bx
      cmp bx,0
      jne label
      je eqqq
   
   eqqq:
      cmp bp,2
      je x 
       mov bp,0
       add si,02
      cmp si,n
      jne array
      
      x: 
      mov bp,0
      mov ax,sp
      call print_num
      print ' '
      
      add si,02
      cmp si,n
      jne array
      
      hlt
      
define_scan_num
define_print_num
define_print_num_uns        

n dw 0
a dw n dup(?)