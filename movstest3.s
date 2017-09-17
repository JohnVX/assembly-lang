#movstest3.s An example of moving an entire string
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
loop1:
	movsb
	loop loop1

	movl $1, %eax
	movl $0, %ebx
	int $0x80
