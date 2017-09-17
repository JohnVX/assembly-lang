#reptest1.s An example of the REP instructions
.section .data
value:
	.ascii "this is a test string.\n"
.section .bss
	.lcomm output, 23
.section .text
.globl main
main:
	leal value, %esi
	leal output, %edi
	movl $23, %ecx
	cld
	rep movsb

	movl $1, %eax
	movl $0, %ebx
	int $0x80
