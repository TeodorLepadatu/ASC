.data
a: .long 5
b: .long 6
.text
.global main
main:
mov a, %eax
mov b, %ebx
mov %eax, b
mov %ebx, a
et_exit:
mov $1, %eax
mov $0, %ebx
int $0x80
