#betterloop.s An example of the loop and jcxz instructions
.section .data
output:
	.asciz "The value is: %d\n"
.section .text
.globl main
main:
	movl $0, %ecx
	movl $0, %eax
	jcxz done
loop_1:
	addl %ecx, %eax
	loop loop_1
done:
	pushl %eax
	pushl $output
	call printf
	movl $1, %eax
	movl $0, %ebx
	int $0x80
