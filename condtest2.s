	.file	"condtest.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	conditiontest
	.type	conditiontest, @function
conditiontest:
.LFB23:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	cmpl	%edx, %eax
	jg	.L2
	movl	$0, %eax
	cmovl	%edx, %eax
.L2:
	rep ret
	.cfi_endproc
.LFE23:
	.size	conditiontest, .-conditiontest
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"the result is %d\n"
	.section	.text.unlikely
.LCOLDB2:
	.section	.text.startup,"ax",@progbits
.LHOTB2:
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
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$8, %esp
	pushl	$30
	pushl	$.LC1
	pushl	$1
	call	__printf_chk
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	addl	$16, %esp
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE2:
	.section	.text.startup
.LHOTE2:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
