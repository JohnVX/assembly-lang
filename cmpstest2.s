#cmpstest2.s An example of using the REPE CMPS instruction
.section .data
value1:
	.ascii "This is a test of the CMPS instructions"
value2:
	.ascii "this is a test of the CMPS instructions"
.section .text
.globl main
main:
	movl $1, %eax
	leal value1, %esi
	leal value2, %edi
	movl $39, %ecx
	cld
	repe cmpsb
	je equal
	movl %ecx, %ebx
	int $0x80
equal:
	movl $0, %ebx
	int $0x80
