.data
v: .long 10, 20, 30, 40, 50, 5
divs: .space 24
d: .long 0
c: .long 0
zero: .long 0
.text
.global main
main:
lea v, %edi
lea divs, %esi
xor %ebx, %ebx
etloop:
	movl (%edi, %ebx, 4), %eax
	cmp %eax, zero
	je exit
	xor %edx, %edx
	movl %edx, d
	movl %edx, c
for:
	inc d
	movl (%edi, %ebx, 4), %eax
	cmp d, %eax
	jl next
	xor %edx, %edx
	div d
	cmp %edx, zero
	je plus
	jmp for
plus:
	inc c
	jmp for
next:
	movl c, %ecx
	movl %ecx, (%esi, %ebx, 4)
	add $1, %ebx
	jmp etloop
exit:
movl $1, %eax
xor %ebx, %ebx
int $0x80
