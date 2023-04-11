include 'emu8086.inc'
data segment
    a db 202,31,101,131,121;
    n db 00
    q db 00
    r db 00
    data ends
code segment
    start:
         mov ax,data
         mov ds,ax
         mov si,00 
         print 'palindrome numbers : '
    label:
         mov ah,00
         mov al,a[si]
         mov n,al
         mov bl,10
         mov cl,00
         jmp k
     k:
         mov ah,00
         div bl
         mov q,al
         mov r,ah
         mov al,cl
         mul bx
         add al,r
         mov cl,al
         mov al,q
         cmp al,00
         je p
         jne k
         
     p:
         mov al,cl
         cmp n,al
         je s
         jne np
     s:
         mov ah,00
         print ' '
         mov al,a[si]
         call print_num 
         jmp c
     c:
         inc si
         cmp si,05
         je o
         jne label
     o:
         hlt
     np:
         inc si
         cmp si,05
         je o
         jne label
ret
define_print_num
define_scan_num
define_print_num_uns
code ends
end start
         