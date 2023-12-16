.data
	v: .long 31, 32, 33, 34, 35, 36, 7, 37, 41
	zero: .long 0
	nr: .long 0
	d: .long 0
.text
.global main
main:
	xor %ebx, %ebx
	lea v, %edi
etloop:
	movl (%edi, %ebx, 4), %eax
	cmp %eax, zero
	je exit
	xor %edx, %edx
	movl %edx, d
	inc d
for:
	movl (%edi, %ebx, 4), %eax
	inc d
	cmp d, %eax
	je bun
	xor %edx, %edx
	div d
	cmp %edx, zero
	je next
	jmp for
next:
	add $1, %ebx
	jmp etloop
bun:
	inc nr
	add $1, %ebx
	jmp etloop
exit:
mov $1, %eax
xor %ebx, %ebx
int $0x80
