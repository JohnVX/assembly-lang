#an example of using the call instruction
.code32
.section .data
output:
	.asciz "this is section %d\n"
.section .text
.globl main
main:
	pushl $1
	pushl $output
	call printf
	add $8, %esp
	call overhere
	pushl $3
	pushl $output
	call printf
	add $8, %esp
	pushl $0
	call exit
overhere:
	pushl %esp
	movl %esp, %ebp
	pushl $2
	pushl $output
	call printf
	add $8, %esp
	movl %ebp, %esp
	popl %ebp
	ret
