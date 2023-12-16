.data
a: .long 6
b: .long 5
c: .long 4
min: .space 4
.text
.global main
main:
mov a, %eax
mov b, %ebx
mov c, %ecx
et1:
cmp %eax, %ebx
jge et3
et2:
cmp %ebx, %ecx
jge etb
et3:
cmp %eax, %ecx
jge eta
jmp etc
eta:
mov %eax, min
jmp et_exit
etb:
mov %ebx, min
jmp et_exit
etc:
mov %ecx, min
jmp et_exit
et_exit:
mov $1, %eax
mov $0, %ebx
int $0x80
