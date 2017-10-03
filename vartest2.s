	.file	"vartest.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"the results are %d and %f\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
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
	subl	$24, %esp
	movl	global1, %eax
	flds	.LC0
	fadds	global2
	addl	$100, %eax
	fstpl	(%esp)
	pushl	%eax
	pushl	$.LC1
	pushl	$1
	call	__printf_chk
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	addl	$32, %esp
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.globl	global2
	.data
	.align 4
	.type	global2, @object
	.size	global2, 4
global2:
	.long	1101135872
	.globl	global1
	.align 4
	.type	global1, @object
	.size	global1, 4
global1:
	.long	10
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1128808448
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
