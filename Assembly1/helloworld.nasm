; This is a simple Hello World Code for learning purposes.
; Author shreyansh26 (Shreyansh Singh)

global _start

section .text  ; text section contains the code part

_start:
xor ecx, ecx  ; Clear ECX
xor ebx, ebx  ; Clear EBX
mul ecx       ; Clear EAX and EDX

; Write subroutine

mov eax, 0x4   ; syscall for write
mov ebx, 0x1   ; file descriptor (1 is output)
mov ecx, $msg  ; Load actual buffer into ecx
mov edx, $len  ; Load the count in edx
int 0x80       ; interrupt 80  

; Graceful exit
mov eax, 0x1  ; Exit syscall to eax
mov ebx, 0x0  ; Load the status to ebx
int 0x80      ; interrupt 80

section .data  ; data section contains stored data/variables

msg: db "Hello World!!", 0x0A
len: equ $-msg
