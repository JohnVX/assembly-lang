#cmptest.s An example of using the cmp and jge instructions
.code32
.section .text
.globl main
main:
	movl $15, %eax
	movl $10, %ebx
	cmp %eax, %ebx
	jge greater
	movl $1, %eax
	int $0x80
greater:
	movl $20, %ebx
	movl $1, %eax
	int $0x80
