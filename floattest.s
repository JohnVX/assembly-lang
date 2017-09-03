#floattest.s An example of using floating point numbers
.code32
.section .data
value1:
	.float 12.34
value2:
	.double 2353.631
.section .bss
	.lcomm data, 8
.section .text
.globl main
main:
	flds value1
	fldl value2
	fstl data

	movl $1, %eax
	movl $0, %ebx
	int $0x80
