.data
v: .long 1, 2, 3, 4, 5
p: .long 0
i: .long 0
zero: .long 0
doi: .long 2
.text
.global main
main:
lea v, %edi
xor %ebx, %ebx
loop:
movl (%edi, %ebx, 4), %ecx
inc %ebx
xor %edx, %edx
movl %ecx, %eax
cmp %ecx, zero
je exit
div doi
cmp %edx, zero
je par
cmp %edx, zero
jl impar
jmp loop
par:
inc p
jmp loop
impar:
inc i
jmp loop
exit:
movl $1, %eax
xor %ebx, %ebx
int $0x80
