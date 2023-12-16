.data
	n: .space 4
	d: .space 4
	format: .asciz "%ld"
	haz: .asciz "Numarul de afisat este: %ld\n"
.text
.global main
main:
	pushl $n
	pushl $format
	call scanf
	add $8, %esp
	
	
	pushl n
	pushl $haz
	call printf
	addl $8, %esp
	
	movl $1, %eax
	xor %ebx, %ebx
	int $0x80
