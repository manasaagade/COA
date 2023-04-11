include 'emu8086.inc'
data segment
    a db 2,0,4,5,6,7,8,9,10;
    data ends
code segment
    start:
         mov ax,data
         mov ds,ax
         mov si,0
         l:
             mov bl,02
         label1:
             mov ah,00
             mov al,a[si]
             cmp a[si],2
             je s
             div bl
             cmp ah,00
             je n
             jne k
          k:
             inc bl
             cmp bl,a[si]
             je s
             jne label1
          n:
             inc si
             cmp si,09
             je p
             jne l
          s:               
             mov ah,00
             mov al,a[si]  
             call print_num
             printn
          b:
             inc si
             cmp si,05
             je p
             jne l
          p:
             hlt
             
ret
define_print_num
define_scan_num
define_print_num_uns
code ends
end start
 
             
              