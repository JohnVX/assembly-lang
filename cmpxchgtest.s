#an example of the cmpxchg instruction
.code32
.section .data
data:
	.int 10
.section .text
.globl main
main:
	movl $10, %eax
	movl $5, %ebx
	cmpxchg %ebx, data
	movl $1, %eax
	int $0x80
