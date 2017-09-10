#addtest4.s An example of detecting an overflow condition
.code32
.section .data
output:
	.asciz "The result is %d\n"
.section .text
.globl main
main:
	movl $-1590876934, %ebx
	movl $-1259230143, %eax
	addl %eax, %ebx
	jo over
	pushl %ebx
	pushl $output
	call printf
	add $8, %esp
	push $0
	call exit
over:
	pushl $0
	pushl $output
	call printf
	add $8, %esp
	pushl $0
	call exit
