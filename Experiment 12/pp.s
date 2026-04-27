	.file	"pp.c"
	.text
	.globl	prod
	.bss
	.align 32
	.type	prod, @object
	.size	prod, 100
prod:
	.zero	100
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%c "
	.text
	.globl	first
	.type	first, @function
first:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, -20(%rbp)
	jne	.L3
	call	__ctype_b_loc@PLT
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	2+prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L4
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	2+prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	2+prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	first
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	n(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L5
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	first, .-first
	.section	.rodata
.LC1:
	.string	"$ "
	.text
	.globl	follow
	.type	follow, @function
follow:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movb	%al, -36(%rbp)
	movzbl	prod(%rip), %eax
	cmpb	%al, -36(%rbp)
	jne	.L7
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
	movl	$0, -24(%rbp)
	jmp	.L8
.L13:
	movl	$2, -20(%rbp)
	jmp	.L9
.L12:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	prod(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -36(%rbp)
	jne	.L10
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	prod(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L11
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	prod(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L11:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, -36(%rbp)
	je	.L10
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	follow
.L10:
	addl	$1, -20(%rbp)
.L9:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	prod(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L12
	addl	$1, -24(%rbp)
.L8:
	movl	n(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L13
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	follow, .-follow
	.section	.rodata
.LC2:
	.string	"Enter number of productions: "
.LC3:
	.string	"%d"
	.align 8
.LC4:
	.string	"Enter productions (Example E=TR):"
.LC5:
	.string	"%s"
.LC6:
	.string	"\nFIRST sets:"
.LC7:
	.string	"FIRST(%c) = { "
.LC8:
	.string	"}"
.LC9:
	.string	"\nFOLLOW sets:"
.LC10:
	.string	"FOLLOW(%c) = { "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	n(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -12(%rbp)
	jmp	.L15
.L16:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	prod(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -12(%rbp)
.L15:
	movl	n(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L16
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -8(%rbp)
	jmp	.L17
.L18:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -13(%rbp)
	movsbl	-13(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movsbl	-13(%rbp), %eax
	movl	%eax, %edi
	call	first
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -8(%rbp)
.L17:
	movl	n(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L18
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	leaq	prod(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -13(%rbp)
	movsbl	-13(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movsbl	-13(%rbp), %eax
	movl	%eax, %edi
	call	follow
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$1, -4(%rbp)
.L19:
	movl	n(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L20
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
