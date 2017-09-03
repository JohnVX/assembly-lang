#inttest.s An example of using signed integers
.code32
.section .data
data:
	.int -45
.section .text
.globl main
main:
	movl $-345, %ecx
	movw $0xffb1, %dx
	movl data, %ebx
	movl $1, %eax
	int $0x80
