include  'emu8086.inc'
print 'enter the array size'
call scan_num
mov n,cx 
mov bp,cx

printn
print 'enter elements'
mov si,0
user:
  printn
  call scan_num
  mov a[si],cx
  add si,2
  dec n
  cmp n,0
  jne user
  
  mov si,0
  mov ax,bp
  mov bx,02
  mul bx
  mov n,ax
  
  
  mov sp,0 ;evencount
  mov bp,0 ;odd count
 
 
      label:
         mov dx,0
         mov ax,a[si]
         div bx
         cmp dx,0
         je label2
         jne label3
         
        label2:
            inc sp
            mov ax,a[si]
            add esum,ax
            add si,2
            cmp si,n
            jne label
            je label4
            
         label3:
             inc bp
             mov ax,a[si]
             add osum,ax
             add si,2
             cmp si,n
             jne label
             je label4
          
          label4:
             mov ax,sp 
             printn
             print 'even count= '
             call print_num
             
             mov ax,bp
             printn
             print 'odd count= '
             call print_num
             
              
             mov ax,esum 
             printn
             print 'even sum= '
             call print_num
             
             mov ax,osum 
             printn
             print 'odd sum= '
             call print_num
             hlt
              
define_scan_num
define_print_num
             define_print_num_uns
            
             n dw 0
             esum dw 0
             osum dw 0
             a dw n dup(?)
              
             
                          
             
             