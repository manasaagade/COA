include 'emu8086.inc'
data segment
    a db 2,4,6,3,8;
    n db 00
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov si,00
        e:
          print 'enter a number : '
          call scan_num
          mov n,cl
        label:
          mov ah,00
          mov al,a[si]
          cmp si,05
          je exit
          mov bl,al
          mov cl,n
          cmp bl,cl
          je r
          jne s
        r:
          printn
          print 'found'
          hlt
        s:
          inc si
          jmp label
        exit:
          printn
          print 'not found'
          hlt
ret
define_scan_num
define_print_num_uns
define_print_num
code ends
end start