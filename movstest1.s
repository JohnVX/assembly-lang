#movstest1.s An example of the MOVS instructions
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
	movsb
	movsw
	movsl

	movl $1, %eax
	movl $0, %ebx
	int $0x80
