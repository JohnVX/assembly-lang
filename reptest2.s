#reptest2.s An incorrect example of using the REP instructions
.section .data
value1:
	.ascii "this is a test string.\n"
value2:
	.ascii "Oops"
.section .bss
	.lcomm output, 23
.section .text
.globl main
main:
	leal value1, %esi
	leal output, %edi
	movl $6, %ecx
	cld
	rep movsl

	movl $1, %eax
	movl $0, %ebx
	int $0x80
