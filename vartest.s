	.file	"vartest.c"
	.globl	global1
	.data
	.align 4
	.type	global1, @object
	.size	global1, 4
global1:
	.long	10
	.globl	global2
	.align 4
	.type	global2, @object
	.size	global2, 4
global2:
	.long	1101135872
	.section	.rodata
.LC1:
	.string	"the results are %d and %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
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
	movl	$100, -24(%ebp)
	flds	.LC0
	fstps	-20(%ebp)
	movl	global1, %edx
	movl	-24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%ebp)
	flds	global2
	fadds	-20(%ebp)
	fstps	-12(%ebp)
	flds	-12(%ebp)
	leal	-8(%esp), %esp
	fstpl	(%esp)
	pushl	-16(%ebp)
	pushl	$.LC1
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
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1128808448
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
