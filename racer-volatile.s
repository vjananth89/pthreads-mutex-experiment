	.file	"racer.c"
	.globl	sharedInt
	.bss
	.align 4
	.type	sharedInt, @object
	.size	sharedInt, 4
sharedInt:
	.zero	4
	.text
	.globl	racer
	.type	racer, @function
racer:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$20000000, -4(%ebp)
	jmp	.L2
.L3:
	movl	sharedInt, %eax
	addl	$1, %eax
	movl	%eax, sharedInt
	subl	$1, -4(%ebp)
.L2:
	cmpl	$0, -4(%ebp)
	jg	.L3
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	racer, .-racer
	.ident	"GCC: (SUSE Linux) 4.7.2 20130108 [gcc-4_7-branch revision 195012]"
	.section	.comment.SUSE.OPTs,"MS",@progbits,1
	.string	"ospwg"
	.section	.note.GNU-stack,"",@progbits
