#an example of the jmp instruction
.code32
.section .text
.globl main
main:
	movl $1, %eax
	jmp overhere
	movl $10, %ebx
	int $0x80
overhere:
	movl $20, %ebx
	int $0x80
