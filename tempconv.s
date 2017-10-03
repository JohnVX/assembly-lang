	.file	"tempconv.c"
	.text
	.globl	convert
	.type	convert, @function
convert:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	fildl	8(%ebp)
	fldl	.LC0
	fsubrp	%st, %st(1)
	fldl	.LC1
	fdivrp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	convert, .-convert
	.section	.rodata
.LC3:
	.string	"\tTemperature Conversion Chart"
.LC4:
	.string	"Fahrenheit\tCelsius"
.LC5:
	.string	"\t%d\t%5.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$36, %esp
	movl	$0, -16(%ebp)
	subl	$12, %esp
	pushl	$.LC3
	call	puts
	addl	$16, %esp
	subl	$12, %esp
	pushl	$.LC4
	call	puts
	addl	$16, %esp
	movl	$0, -16(%ebp)
	jmp	.L4
.L5:
	subl	$12, %esp
	pushl	-16(%ebp)
	call	convert
	addl	$16, %esp
	fstps	-28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -12(%ebp)
	flds	-12(%ebp)
	leal	-8(%esp), %esp
	fstpl	(%esp)
	pushl	-16(%ebp)
	pushl	$.LC5
	call	printf
	addl	$16, %esp
	addl	$10, -16(%ebp)
.L4:
	cmpl	$229, -16(%ebp)
	jle	.L5
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1077936128
	.align 8
.LC1:
	.long	3435973837
	.long	1073532108
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
