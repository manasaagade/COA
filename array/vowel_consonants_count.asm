include 'emu8086.inc'
lea dx,str
mov ah,09h
int 21h
mov ah,10
lea dx,arr
mov arr,20
int 21h
printn
lea dx,arr
mov ah,09
int 21h 
mov si,2
main: 
    cmp arr[si],"$"
    je exit1
    cmp arr[si],'a'
    je vcount
    cmp arr[si],'e'
    je vcount
    cmp arr[si],'i'
    je vcount
    cmp arr[si],'o'
    je vcount
    cmp arr[si],'u'
    je vcount 
    jne ccount
vcount: 
    inc vowelcount
    inc si
    jmp main
ccount:
    inc consonantcount
    inc si    
    jmp main
exit1: 
    mov ah,0
    mov al,vowelcount
    printn
    print 'vowel count:'
    call print_num
    printn 
    mov ah,0
    mov al,consonantcount 
    print 'consonant count:'
    call print_num
ret
vowelcount db 0 
consonantcount db 0
str db "Enter the String:$"
arr db 20 dup("$")  
define_scan_num
define_print_num
define_print_num_uns
