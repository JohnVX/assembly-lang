#loop.s An example of the loop instruction
.section .data
output:
	.asciz "The value is: %d\n"
.section .text
.globl main
main:
	movl $100, %ecx
	movl $0, %eax
loop_1:
	addl %ecx, %eax
	loop loop_1
	pushl %eax
	pushl $output
	call printf
	add $8, %esp
	movl $1, %eax
	movl $0, %ebx
	int $0x80
