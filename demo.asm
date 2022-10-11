global main
extern printf, scanf

section .data
    cmd1 db "Enter a Number: ",0
    datatype1 db "%d",0
    cmd2 db "Enter a String: ",0
    datatype2 db "%s",0
    hi db 10,0

section .bss
    string resb 1000
    number resb 4

section .text
main:
    push rbp
    mov rbp, rsp
    sub rsp , 16
    
    mov eax, 0
    lea rdi, [cmd1]
    call printf
    
    mov eax, 0
    lea rdi, [datatype1]
    lea rsi, [number]
    call scanf

    mov eax, 0
    lea rdi, [datatype1]
    mov rsi, [number]
    call printf

    mov eax, 0
    lea rdi, [hi]
    call printf

    mov eax, 0
    lea rdi, [cmd2]
    call printf
    
    mov eax, 0
    lea rdi, [datatype2]
    lea rsi, [string]
    call scanf
    
    mov eax, 0
    lea rdi, [datatype2]
    lea rsi, [string]
    call printf 
    mov eax, 0

    mov eax, 0
    lea rdi, [hi]
    call printf
        
    add rsp, 16
    leave
    ret
    

    

    
