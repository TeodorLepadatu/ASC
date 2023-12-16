.data
v: .long 20, 10, 30, 50, 40
mx: .long 0
mn: .long 9999999
zero: .long 0
.text
.global main
main:
lea v, %edi
xor %ebx, %ebx
xor %eax, %eax
loop:
movl (%edi, %ebx, 4), %edx
inc %ebx
cmp %edx, %eax
je exit
cmp %edx, mx
jl max
cmp %edx, mn
jg min
jmp loop
max:
movl %edx, mx
jmp loop
min:
movl %edx, mn
jmp loop
exit:
movl $1, %eax
xor %ebx, %ebx
int $0x80
