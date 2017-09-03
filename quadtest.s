#quadtest.s An example of quad integers
.code32
.section .data
data1:
	.int 1, -1, 463345, -333252322, 0
data2:
	.quad 1, -1, 463345, -333252322, 0
.section .text
.globl main
main:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
