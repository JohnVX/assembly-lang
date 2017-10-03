	.file	"condtest.c"
	.text
	.globl	conditiontest
	.type	conditiontest, @function
conditiontest:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	.L2
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L3
.L2:
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L4
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L3
.L4:
	movl	$0, -4(%ebp)
.L3:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	conditiontest, .-conditiontest
	.section	.rodata
.LC0:
	.string	"the result is %d\n"
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
	subl	$20, %esp
	movl	$10, -16(%ebp)
	movl	$30, -12(%ebp)
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	conditiontest
	addl	$8, %esp
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC0
	call	printf
	addl	$16, %esp
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
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
