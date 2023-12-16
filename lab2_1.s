.data
x: .long 16
y: .long 1
rez: .long 0
.text
.global main
main:
mov $0, %edx
movl x, %eax
mov $16, %ebx
div %ebx
add %eax, rez
movl y, %eax
mov $0, %edx
mov $16, %eax
mul y
add %eax, rez
mov $1, %eax
mov $0, %ebx
int $0x80
