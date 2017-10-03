	.file	"tempconv.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	convert
	.type	convert, @function
convert:
.LFB23:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	fildl	16(%esp)
	fsubs	.LC0
	fdivl	.LC1
	fstps	4(%esp)
	flds	4(%esp)
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE23:
	.size	convert, .-convert
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"\tTemperature Conversion Chart"
.LC5:
	.string	"Fahrenheit\tCelsius"
.LC6:
	.string	"\t%d\t%5.2f\n"
	.section	.text.unlikely
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	xorl	%ebx, %ebx
	subl	$28, %esp
	pushl	$.LC4
	call	puts
	movl	$.LC5, (%esp)
	call	puts
	addl	$16, %esp
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%ebx, -16(%ebp)
	subl	$20, %esp
	fildl	-16(%ebp)
	fsubs	.LC0
	fdivl	.LC1
	fstps	-12(%ebp)
	flds	-12(%ebp)
	fstpl	(%esp)
	pushl	%ebx
	pushl	$.LC6
	pushl	$1
	addl	$10, %ebx
	call	__printf_chk
	addl	$32, %esp
	cmpl	$230, %ebx
	jne	.L4
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1107296256
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	3435973837
	.long	1073532108
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
