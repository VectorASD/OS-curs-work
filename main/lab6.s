	.file	"lab6.c"
	.text
	.comm	BUFFER,256,32
	.globl	buffprintf
	.type	buffprintf, @function
buffprintf:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	leaq	BUFFER(%rip), %rdi
	call	vsprintf@PLT
	leaq	BUFFER(%rip), %rax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	buffprintf, .-buffprintf
	.globl	error
	.type	error, @function
error:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L6
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L6:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf@PLT
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE7:
	.size	error, .-error
	.globl	sock_error
	.type	sock_error, @function
sock_error:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L9
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L9:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movl	-212(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	vdprintf@PLT
	movl	-216(%rbp), %eax
	movq	-184(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sock_error, .-sock_error
	.section	.rodata
.LC0:
	.string	"?"
.LC1:
	.string	"DT_NULL"
.LC2:
	.string	"DT_NEEDED"
.LC3:
	.string	"DT_PLTRELSZ"
.LC4:
	.string	"DT_PLTGOT"
.LC5:
	.string	"DT_HASH"
.LC6:
	.string	"DT_STRTAB"
.LC7:
	.string	"DT_SYMTAB"
.LC8:
	.string	"DT_RELA"
.LC9:
	.string	"DT_RELASZ"
.LC10:
	.string	"DT_RELAENT"
.LC11:
	.string	"DT_STRSZ"
.LC12:
	.string	"DT_SYMENT"
.LC13:
	.string	"DT_INIT"
.LC14:
	.string	"DT_FINI"
.LC15:
	.string	"DT_SONAME"
.LC16:
	.string	"DT_RPATH"
.LC17:
	.string	"DT_SYMBOLIC"
.LC18:
	.string	"DT_REL"
.LC19:
	.string	"DT_RELSZ"
.LC20:
	.string	"DT_RELENT"
.LC21:
	.string	"DT_PLTREL"
.LC22:
	.string	"DT_DEBUG"
.LC23:
	.string	"DT_TEXTREL"
.LC24:
	.string	"DT_JMPREL"
.LC25:
	.string	"DT_BIND_NOW"
.LC26:
	.string	"DT_INIT_ARRAY"
.LC27:
	.string	"DT_FINI_ARRAY"
.LC28:
	.string	"DT_INIT_ARRAYSZ"
.LC29:
	.string	"DT_FINI_ARRAYSZ"
.LC30:
	.string	"DT_RUNPATH"
.LC31:
	.string	"DT_FLAGS"
.LC32:
	.string	"DT_PREINIT_ARRAY"
.LC33:
	.string	"DT_PREINIT_ARRAYSZ"
.LC34:
	.string	"DT_SYMTAB_SHNDX"
.LC35:
	.string	"DT_SUNW_AUXILIARY"
.LC36:
	.string	"DT_SUNW_RTLDINF"
.LC37:
	.string	"DT_SUNW_FILTER"
.LC38:
	.string	"DT_SUNW_CAP"
.LC39:
	.string	"DT_SUNW_SYMTAB"
.LC40:
	.string	"DT_SUNW_SYMSZ"
.LC41:
	.string	"DT_SUNW_SORTENT"
.LC42:
	.string	"DT_SUNW_SYMSORT"
.LC43:
	.string	"DT_SUNW_SYMSORTSZ"
.LC44:
	.string	"DT_SUNW_TLSSORT"
.LC45:
	.string	"DT_SUNW_TLSSORTSZ"
.LC46:
	.string	"DT_SUNW_CAPINFO"
.LC47:
	.string	"DT_SUNW_STRPAD"
.LC48:
	.string	"DT_SUNW_CAPCHAIN"
.LC49:
	.string	"DT_SUNW_LDMACH"
.LC50:
	.string	"DT_SUNW_SYMTAB_SHNDX"
.LC51:
	.string	"DT_SUNW_CAPCHAINENT"
.LC52:
	.string	"DT_SUNW_DEFERRED"
.LC53:
	.string	"DT_SUNW_CAPCHAINSZ"
.LC54:
	.string	"DT_SUNW_PHNAME"
.LC55:
	.string	"DT_SUNW_PARENT"
.LC56:
	.string	"DT_SUNW_SX_ASLR"
.LC57:
	.string	"DT_SUNW_RELAX"
.LC58:
	.string	"DT_SUNW_KMOD"
.LC59:
	.string	"DT_SUNW_SX_NXHEAP"
.LC60:
	.string	"DT_SUNW_SX_NXSTACK"
.LC61:
	.string	"DT_SUNW_SX_ADIHEAP"
.LC62:
	.string	"DT_SUNW_SX_ADISTACK"
.LC63:
	.string	"DT_SUNW_SX_SSBD"
.LC64:
	.string	"DT_SUNW_SYMNSORT"
.LC65:
	.string	"DT_SUNW_SYMNSORTSZ"
.LC66:
	.string	"DT_CHECKSUM"
.LC67:
	.string	"DT_PLTPADSZ"
.LC68:
	.string	"DT_MOVEENT"
.LC69:
	.string	"DT_MOVESZ"
.LC70:
	.string	"DT_POSFLAG_1"
.LC71:
	.string	"DT_SYMINSZ"
.LC72:
	.string	"DT_SYMINENT"
.LC73:
	.string	"DT_CONFIG"
.LC74:
	.string	"DT_DEPAUDIT"
.LC75:
	.string	"DT_AUDIT"
.LC76:
	.string	"DT_PLTPAD"
.LC77:
	.string	"DT_MOVETAB"
.LC78:
	.string	"DT_SYMINFO"
.LC79:
	.string	"DT_VERSYM"
.LC80:
	.string	"DT_RELACOUNT"
.LC81:
	.string	"DT_RELCOUNT"
.LC82:
	.string	"DT_FLAGS_1"
.LC83:
	.string	"DT_VERDEF"
.LC84:
	.string	"DT_VERDEFNUM"
.LC85:
	.string	"DT_VERNEED"
.LC86:
	.string	"DT_VERNEEDNUM"
.LC87:
	.string	"DT_SPARC_REGISTER"
.LC88:
	.string	"DT_AUXILIARY"
.LC89:
	.string	"DT_USED"
.LC90:
	.string	"DT_FILTER"
.LC91:
	.string	"ENCODING   -   LOOS (0x%08x)"
.LC92:
	.string	"SUNW_ENCODING--HIOS (0x%08x)"
.LC93:
	.string	"VALRNGLO - VALRNGHI (0x%08x)"
.LC94:
	.string	"ADDRRNGLO-ADDRRNGHI (0x%08x)"
.LC95:
	.string	"LOPROC   -   HIPROC (0x%08x)"
.LC96:
	.string	"???  INTERVAL  ???  (0x%08x)"
	.text
	.globl	DynampicArrayTags
	.type	DynampicArrayTags, @function
DynampicArrayTags:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$2147483647, -20(%rbp)
	je	.L13
	cmpl	$2147483646, -20(%rbp)
	je	.L14
	cmpl	$2147483646, -20(%rbp)
	jg	.L15
	cmpl	$2147483645, -20(%rbp)
	je	.L16
	cmpl	$2147483645, -20(%rbp)
	jg	.L15
	cmpl	$1879048193, -20(%rbp)
	jg	.L15
	cmpl	$1879048176, -20(%rbp)
	jge	.L17
	cmpl	$1879047935, -20(%rbp)
	jg	.L15
	cmpl	$1879047930, -20(%rbp)
	jge	.L18
	cmpl	$1879047679, -20(%rbp)
	jg	.L15
	cmpl	$1879047672, -20(%rbp)
	jge	.L19
	cmpl	$34, -20(%rbp)
	jg	.L20
	cmpl	$0, -20(%rbp)
	jns	.L21
	jmp	.L15
.L17:
	movl	-20(%rbp), %eax
	subl	$1879048176, %eax
	cmpl	$17, %eax
	ja	.L15
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L23(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L23(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L23:
	.long	.L31-.L23
	.long	.L15-.L23
	.long	.L15-.L23
	.long	.L15-.L23
	.long	.L15-.L23
	.long	.L15-.L23
	.long	.L15-.L23
	.long	.L15-.L23
	.long	.L15-.L23
	.long	.L30-.L23
	.long	.L29-.L23
	.long	.L28-.L23
	.long	.L27-.L23
	.long	.L26-.L23
	.long	.L25-.L23
	.long	.L24-.L23
	.long	.L15-.L23
	.long	.L22-.L23
	.text
.L18:
	movl	-20(%rbp), %eax
	subl	$1879047930, %eax
	cmpl	$5, %eax
	ja	.L15
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L33(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L33(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L33:
	.long	.L38-.L33
	.long	.L37-.L33
	.long	.L36-.L33
	.long	.L35-.L33
	.long	.L34-.L33
	.long	.L32-.L33
	.text
.L19:
	movl	-20(%rbp), %eax
	subl	$1879047672, %eax
	cmpl	$7, %eax
	ja	.L15
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L40(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L40(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L40:
	.long	.L46-.L40
	.long	.L45-.L40
	.long	.L44-.L40
	.long	.L43-.L40
	.long	.L15-.L40
	.long	.L42-.L40
	.long	.L41-.L40
	.long	.L39-.L40
	.text
.L114:
	movl	-20(%rbp), %eax
	subl	$1610612749, %eax
	cmpl	$38, %eax
	ja	.L15
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L48(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L48(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L48:
	.long	.L78-.L48
	.long	.L77-.L48
	.long	.L76-.L48
	.long	.L75-.L48
	.long	.L74-.L48
	.long	.L73-.L48
	.long	.L72-.L48
	.long	.L71-.L48
	.long	.L70-.L48
	.long	.L69-.L48
	.long	.L68-.L48
	.long	.L67-.L48
	.long	.L66-.L48
	.long	.L65-.L48
	.long	.L64-.L48
	.long	.L63-.L48
	.long	.L62-.L48
	.long	.L61-.L48
	.long	.L60-.L48
	.long	.L59-.L48
	.long	.L58-.L48
	.long	.L15-.L48
	.long	.L57-.L48
	.long	.L15-.L48
	.long	.L56-.L48
	.long	.L15-.L48
	.long	.L55-.L48
	.long	.L15-.L48
	.long	.L54-.L48
	.long	.L15-.L48
	.long	.L53-.L48
	.long	.L15-.L48
	.long	.L52-.L48
	.long	.L15-.L48
	.long	.L51-.L48
	.long	.L15-.L48
	.long	.L50-.L48
	.long	.L49-.L48
	.long	.L47-.L48
	.text
.L21:
	cmpl	$34, -20(%rbp)
	ja	.L15
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L80(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L80(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L80:
	.long	.L113-.L80
	.long	.L112-.L80
	.long	.L111-.L80
	.long	.L110-.L80
	.long	.L109-.L80
	.long	.L108-.L80
	.long	.L107-.L80
	.long	.L106-.L80
	.long	.L105-.L80
	.long	.L104-.L80
	.long	.L103-.L80
	.long	.L102-.L80
	.long	.L101-.L80
	.long	.L100-.L80
	.long	.L99-.L80
	.long	.L98-.L80
	.long	.L97-.L80
	.long	.L96-.L80
	.long	.L95-.L80
	.long	.L94-.L80
	.long	.L93-.L80
	.long	.L92-.L80
	.long	.L91-.L80
	.long	.L90-.L80
	.long	.L89-.L80
	.long	.L88-.L80
	.long	.L87-.L80
	.long	.L86-.L80
	.long	.L85-.L80
	.long	.L84-.L80
	.long	.L83-.L80
	.long	.L15-.L80
	.long	.L82-.L80
	.long	.L81-.L80
	.long	.L79-.L80
	.text
.L20:
	cmpl	$1610612787, -20(%rbp)
	jg	.L15
	cmpl	$1610612749, -20(%rbp)
	jge	.L114
	jmp	.L15
.L113:
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -12(%rbp)
	jmp	.L115
.L112:
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L111:
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L110:
	leaq	.LC4(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L109:
	leaq	.LC5(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L108:
	leaq	.LC6(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L107:
	leaq	.LC7(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L106:
	leaq	.LC8(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L105:
	leaq	.LC9(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L104:
	leaq	.LC10(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L103:
	leaq	.LC11(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L102:
	leaq	.LC12(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L101:
	leaq	.LC13(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L100:
	leaq	.LC14(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L99:
	leaq	.LC15(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L98:
	leaq	.LC16(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L97:
	leaq	.LC17(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -12(%rbp)
	jmp	.L115
.L96:
	leaq	.LC18(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L95:
	leaq	.LC19(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L94:
	leaq	.LC20(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L93:
	leaq	.LC21(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L92:
	leaq	.LC22(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L91:
	leaq	.LC23(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -12(%rbp)
	jmp	.L115
.L90:
	leaq	.LC24(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L89:
	leaq	.LC25(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$3, -12(%rbp)
	jmp	.L115
.L88:
	leaq	.LC26(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L87:
	leaq	.LC27(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L86:
	leaq	.LC28(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L85:
	leaq	.LC29(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L84:
	leaq	.LC30(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L83:
	leaq	.LC31(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L82:
	leaq	.LC32(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L81:
	leaq	.LC33(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L79:
	leaq	.LC34(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L78:
	leaq	.LC35(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L77:
	leaq	.LC36(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L76:
	leaq	.LC37(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L75:
	leaq	.LC38(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L74:
	leaq	.LC39(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L73:
	leaq	.LC40(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L72:
	leaq	.LC41(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L71:
	leaq	.LC42(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L70:
	leaq	.LC43(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L69:
	leaq	.LC44(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L68:
	leaq	.LC45(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L67:
	leaq	.LC46(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L66:
	leaq	.LC47(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L65:
	leaq	.LC48(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L64:
	leaq	.LC49(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L63:
	leaq	.LC50(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L62:
	leaq	.LC51(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L61:
	leaq	.LC52(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L60:
	leaq	.LC53(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L59:
	leaq	.LC54(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$10, -12(%rbp)
	jmp	.L115
.L58:
	leaq	.LC55(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L57:
	leaq	.LC56(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L56:
	leaq	.LC57(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L55:
	leaq	.LC58(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L54:
	leaq	.LC59(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L53:
	leaq	.LC60(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L52:
	leaq	.LC61(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L51:
	leaq	.LC62(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L50:
	leaq	.LC63(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L49:
	leaq	.LC64(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L47:
	leaq	.LC65(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L46:
	leaq	.LC66(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L45:
	leaq	.LC67(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L44:
	leaq	.LC68(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L43:
	leaq	.LC69(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L42:
	leaq	.LC70(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L41:
	leaq	.LC71(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L39:
	leaq	.LC72(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$9, -12(%rbp)
	jmp	.L115
.L38:
	leaq	.LC73(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L37:
	leaq	.LC74(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L36:
	leaq	.LC75(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L35:
	leaq	.LC76(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L34:
	leaq	.LC77(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L32:
	leaq	.LC78(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L31:
	leaq	.LC79(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L30:
	leaq	.LC80(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L29:
	leaq	.LC81(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L28:
	leaq	.LC82(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L27:
	leaq	.LC83(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L26:
	leaq	.LC84(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L25:
	leaq	.LC85(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	jmp	.L115
.L24:
	leaq	.LC86(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L22:
	leaq	.LC87(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L16:
	leaq	.LC88(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L14:
	leaq	.LC89(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L115
.L13:
	leaq	.LC90(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$17, -12(%rbp)
	jmp	.L115
.L15:
	cmpl	$1879048192, -20(%rbp)
	jge	.L116
	cmpl	$1879047935, -20(%rbp)
	jg	.L117
	cmpl	$1879047680, -20(%rbp)
	jge	.L118
	cmpl	$1879047679, -20(%rbp)
	jg	.L117
	cmpl	$1879047424, -20(%rbp)
	jge	.L119
	cmpl	$1610612749, -20(%rbp)
	jg	.L120
	cmpl	$32, -20(%rbp)
	jge	.L121
	jmp	.L117
.L120:
	movl	-20(%rbp), %eax
	subl	$1610612755, %eax
	cmpl	$268431341, %eax
	ja	.L117
	jmp	.L124
.L121:
	leaq	.LC91(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L124:
	leaq	.LC92(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L119:
	leaq	.LC93(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L118:
	leaq	.LC94(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L116:
	leaq	.LC95(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L123
.L117:
	leaq	.LC96(%rip), %rax
	movq	%rax, -8(%rbp)
.L123:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	buffprintf
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
.L115:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	DynampicArrayTags, .-DynampicArrayTags
	.section	.rodata
.LC97:
	.string	"No machine"
.LC98:
	.string	"AT&T WE 32100"
.LC99:
	.string	"SUN SPARC"
.LC100:
	.string	"Intel 80386"
.LC101:
	.string	"Motorola m68k family"
.LC102:
	.string	"Motorola m88k family"
.LC103:
	.string	"Intel MCU"
.LC104:
	.string	"Intel 80860"
.LC105:
	.string	"MIPS R3000 big-endian"
.LC106:
	.string	"IBM System/370"
.LC107:
	.string	"MIPS R3000 little-endian"
.LC108:
	.string	"HPPA"
.LC109:
	.string	"Fujitsu VPP500"
.LC110:
	.string	"Sun's \"v8plus\""
.LC111:
	.string	"Intel 80960"
.LC112:
	.string	"PowerPC"
.LC113:
	.string	"PowerPC 64-bit"
.LC114:
	.string	"IBM S390"
.LC115:
	.string	"IBM SPU/SPC"
.LC116:
	.string	"NEC V800 series"
.LC117:
	.string	"Fujitsu FR20"
.LC118:
	.string	"TRW RH-32"
.LC119:
	.string	"Motorola RCE"
.LC120:
	.string	"ARM"
.LC121:
	.string	"Digital Alpha"
.LC122:
	.string	"Hitachi SH"
.LC123:
	.string	"SPARC v9 64-bit"
.LC124:
	.string	"Siemens Tricore"
.LC125:
	.string	"Argonaut RISC Core"
.LC126:
	.string	"Hitachi H8/300"
.LC127:
	.string	"Hitachi H8/300H"
.LC128:
	.string	"Hitachi H8S"
.LC129:
	.string	"Hitachi H8/500"
.LC130:
	.string	"Intel Merced"
.LC131:
	.string	"Stanford MIPS-X"
.LC132:
	.string	"Motorola Coldfire"
.LC133:
	.string	"Motorola M68HC12"
	.align 8
.LC134:
	.string	"Fujitsu MMA Multimedia Accelerator"
.LC135:
	.string	"Siemens PCP"
.LC136:
	.string	"Sony nCPU embeeded RISC"
.LC137:
	.string	"Denso NDR1 microprocessor"
.LC138:
	.string	"Motorola Start*Core processor"
.LC139:
	.string	"Toyota ME16 processor"
	.align 8
.LC140:
	.string	"STMicroelectronic ST100 processor"
	.align 8
.LC141:
	.string	"Advanced Logic Corp. Tinyj emb.fam"
.LC142:
	.string	"AMD x86-64 architecture"
.LC143:
	.string	"Sony DSP Processor"
.LC144:
	.string	"Digital PDP-10"
.LC145:
	.string	"Digital PDP-11"
.LC146:
	.string	"Siemens FX66 microcontroller"
	.align 8
.LC147:
	.string	"STMicroelectronics ST9+ 8/16 mc"
	.align 8
.LC148:
	.string	"STmicroelectronics ST7 8 bit mc"
	.align 8
.LC149:
	.string	"Motorola MC68HC16 microcontroller"
	.align 8
.LC150:
	.string	"Motorola MC68HC11 microcontroller"
	.align 8
.LC151:
	.string	"Motorola MC68HC08 microcontroller"
	.align 8
.LC152:
	.string	"Motorola MC68HC05 microcontroller"
.LC153:
	.string	"Silicon Graphics SVx"
	.align 8
.LC154:
	.string	"STMicroelectronics ST19 8 bit mc"
.LC155:
	.string	"Digital VAX"
	.align 8
.LC156:
	.string	"Axis Communications 32-bit emb.proc"
	.align 8
.LC157:
	.string	"Infineon Technologies 32-bit emb.proc"
	.align 8
.LC158:
	.string	"Element 14 64-bit DSP Processor"
	.align 8
.LC159:
	.string	"LSI Logic 16-bit DSP Processor"
	.align 8
.LC160:
	.string	"Donald Knuth's educational 64-bit proc"
	.align 8
.LC161:
	.string	"Harvard University machine-independent object files"
.LC162:
	.string	"SiTera Prism"
	.align 8
.LC163:
	.string	"Atmel AVR 8-bit microcontroller"
.LC164:
	.string	"Fujitsu FR30"
.LC165:
	.string	"Mitsubishi D10V"
.LC166:
	.string	"Mitsubishi D30V"
.LC167:
	.string	"NEC v850"
.LC168:
	.string	"Mitsubishi M32R"
.LC169:
	.string	"Matsushita MN10300"
.LC170:
	.string	"Matsushita MN10200"
.LC171:
	.string	"picoJava"
	.align 8
.LC172:
	.string	"OpenRISC 32-bit embedded processor"
.LC173:
	.string	"ARC International ARCompact"
.LC174:
	.string	"Tensilica Xtensa Architecture"
.LC175:
	.string	"Alphamosaic VideoCore"
	.align 8
.LC176:
	.string	"Thompson Multimedia General Purpose Proc"
.LC177:
	.string	"National Semi. 32000"
.LC178:
	.string	"Tenor Network TPC"
.LC179:
	.string	"Trebia SNP 1000"
.LC180:
	.string	"STMicroelectronics ST200"
.LC181:
	.string	"Ubicom IP2xxx"
.LC182:
	.string	"MAX processor"
.LC183:
	.string	"National Semi. CompactRISC"
.LC184:
	.string	"Fujitsu F2MC16"
.LC185:
	.string	"Texas Instruments msp430"
.LC186:
	.string	"Analog Devices Blackfin DSP"
.LC187:
	.string	"Seiko Epson S1C33 family"
.LC188:
	.string	"Sharp embedded microprocessor"
.LC189:
	.string	"Arca RISC"
	.align 8
.LC190:
	.string	"PKU-Unity & MPRC Peking Uni. mc series"
.LC191:
	.string	"eXcess configurable cpu"
	.align 8
.LC192:
	.string	"Icera Semi. Deep Execution Processor"
.LC193:
	.string	"Altera Nios II"
	.align 8
.LC194:
	.string	"National Semi. CompactRISC CRX"
.LC195:
	.string	"Motorola XGATE"
.LC196:
	.string	"Infineon C16x/XC16x"
.LC197:
	.string	"Renesas M16C"
.LC198:
	.string	"Microchip Technology dsPIC30F"
	.align 8
.LC199:
	.string	"Freescale Communication Engine RISC"
.LC200:
	.string	"Renesas M32C"
.LC201:
	.string	"Altium TSK3000"
.LC202:
	.string	"Freescale RS08"
.LC203:
	.string	"Analog Devices SHARC family"
.LC204:
	.string	"Cyan Technology eCOG2"
.LC205:
	.string	"Sunplus S+core7 RISC"
	.align 8
.LC206:
	.string	"New Japan Radio (NJR) 24-bit DSP"
.LC207:
	.string	"Broadcom VideoCore III"
.LC208:
	.string	"RISC for Lattice FPGA"
.LC209:
	.string	"Seiko Epson C17"
	.align 8
.LC210:
	.string	"Texas Instruments TMS320C6000 DSP"
	.align 8
.LC211:
	.string	"Texas Instruments TMS320C2000 DSP"
	.align 8
.LC212:
	.string	"Texas Instruments TMS320C55x DSP"
	.align 8
.LC213:
	.string	"Texas Instruments App. Specific RISC"
	.align 8
.LC214:
	.string	"Texas Instruments Prog. Realtime Unit"
	.align 8
.LC215:
	.string	"STMicroelectronics 64bit VLIW DSP"
.LC216:
	.string	"Cypress M8C"
.LC217:
	.string	"Renesas R32C"
.LC218:
	.string	"NXP Semi. TriMedia"
.LC219:
	.string	"QUALCOMM DSP6"
.LC220:
	.string	"Intel 8051 and variants"
.LC221:
	.string	"STMicroelectronics STxP7x"
	.align 8
.LC222:
	.string	"Andes Tech. compact code emb. RISC"
.LC223:
	.string	"Cyan Technology eCOG1X"
.LC224:
	.string	"Dallas Semi. MAXQ30 mc"
	.align 8
.LC225:
	.string	"New Japan Radio (NJR) 16-bit DSP"
.LC226:
	.string	"M2000 Reconfigurable RISC"
.LC227:
	.string	"Cray NV2 vector architecture"
.LC228:
	.string	"Renesas RX"
.LC229:
	.string	"Imagination Tech. META"
.LC230:
	.string	"MCST Elbrus"
.LC231:
	.string	"Cyan Technology eCOG16"
	.align 8
.LC232:
	.string	"National Semi. CompactRISC CR16"
	.align 8
.LC233:
	.string	"Freescale Extended Time Processing Unit"
.LC234:
	.string	"Infineon Tech. SLE9X"
.LC235:
	.string	"Intel L10M"
.LC236:
	.string	"Intel K10M"
.LC237:
	.string	"ARM AARCH64"
.LC238:
	.string	"Amtel 32-bit microprocessor"
.LC239:
	.string	"STMicroelectronics STM8"
.LC240:
	.string	"Tileta TILE64"
.LC241:
	.string	"Tilera TILEPro"
.LC242:
	.string	"Xilinx MicroBlaze"
.LC243:
	.string	"NVIDIA CUDA"
.LC244:
	.string	"Tilera TILE-Gx"
.LC245:
	.string	"CloudShield"
.LC246:
	.string	"KIPO-KAIST Core-A 1st gen."
.LC247:
	.string	"KIPO-KAIST Core-A 2nd gen."
.LC248:
	.string	"Synopsys ARCompact V2"
.LC249:
	.string	"Open8 RISC"
.LC250:
	.string	"Renesas RL78"
.LC251:
	.string	"Broadcom VideoCore V"
.LC252:
	.string	"Renesas 78KOR"
.LC253:
	.string	"Freescale 56800EX DSC"
.LC254:
	.string	"Beyond BA1"
.LC255:
	.string	"Beyond BA2"
.LC256:
	.string	"XMOS xCORE"
.LC257:
	.string	"Microchip 8-bit PIC(r)"
.LC258:
	.string	"KM211 KM32"
.LC259:
	.string	"KM211 KMX32"
.LC260:
	.string	"KM211 KMX16"
.LC261:
	.string	"KM211 KMX8"
.LC262:
	.string	"KM211 KVARC"
.LC263:
	.string	"Paneve CDP"
	.align 8
.LC264:
	.string	"Cognitive Smart Memory Processor"
.LC265:
	.string	"Bluechip CoolEngine"
.LC266:
	.string	"Nanoradio Optimized RISC"
.LC267:
	.string	"CSR Kalimba"
.LC268:
	.string	"Zilog Z80"
	.align 8
.LC269:
	.string	"Controls and Data Services VISIUMcore"
.LC270:
	.string	"FTDI Chip FT32"
.LC271:
	.string	"Moxie processor"
.LC272:
	.string	"AMD GPU"
.LC273:
	.string	"RISC-V"
	.align 8
.LC274:
	.string	"Linux BPF -- in-kernel virtual machine"
.LC275:
	.string	"C-SKY"
.LC276:
	.string	"Unknown id (%d)"
	.text
	.globl	Machines
	.type	Machines, @function
Machines:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$252, -4(%rbp)
	ja	.L126
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L128(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L128(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L128:
	.long	.L306-.L128
	.long	.L305-.L128
	.long	.L304-.L128
	.long	.L303-.L128
	.long	.L302-.L128
	.long	.L301-.L128
	.long	.L300-.L128
	.long	.L299-.L128
	.long	.L298-.L128
	.long	.L297-.L128
	.long	.L296-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L295-.L128
	.long	.L126-.L128
	.long	.L294-.L128
	.long	.L293-.L128
	.long	.L292-.L128
	.long	.L291-.L128
	.long	.L290-.L128
	.long	.L289-.L128
	.long	.L288-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L287-.L128
	.long	.L286-.L128
	.long	.L285-.L128
	.long	.L284-.L128
	.long	.L283-.L128
	.long	.L282-.L128
	.long	.L281-.L128
	.long	.L280-.L128
	.long	.L279-.L128
	.long	.L278-.L128
	.long	.L277-.L128
	.long	.L276-.L128
	.long	.L275-.L128
	.long	.L274-.L128
	.long	.L273-.L128
	.long	.L272-.L128
	.long	.L271-.L128
	.long	.L270-.L128
	.long	.L269-.L128
	.long	.L268-.L128
	.long	.L267-.L128
	.long	.L266-.L128
	.long	.L265-.L128
	.long	.L264-.L128
	.long	.L263-.L128
	.long	.L262-.L128
	.long	.L261-.L128
	.long	.L260-.L128
	.long	.L259-.L128
	.long	.L258-.L128
	.long	.L257-.L128
	.long	.L256-.L128
	.long	.L255-.L128
	.long	.L254-.L128
	.long	.L253-.L128
	.long	.L252-.L128
	.long	.L251-.L128
	.long	.L250-.L128
	.long	.L249-.L128
	.long	.L248-.L128
	.long	.L247-.L128
	.long	.L246-.L128
	.long	.L245-.L128
	.long	.L244-.L128
	.long	.L243-.L128
	.long	.L242-.L128
	.long	.L241-.L128
	.long	.L240-.L128
	.long	.L239-.L128
	.long	.L238-.L128
	.long	.L237-.L128
	.long	.L236-.L128
	.long	.L235-.L128
	.long	.L234-.L128
	.long	.L233-.L128
	.long	.L232-.L128
	.long	.L231-.L128
	.long	.L230-.L128
	.long	.L229-.L128
	.long	.L228-.L128
	.long	.L227-.L128
	.long	.L226-.L128
	.long	.L225-.L128
	.long	.L224-.L128
	.long	.L223-.L128
	.long	.L222-.L128
	.long	.L221-.L128
	.long	.L220-.L128
	.long	.L219-.L128
	.long	.L218-.L128
	.long	.L217-.L128
	.long	.L216-.L128
	.long	.L215-.L128
	.long	.L214-.L128
	.long	.L213-.L128
	.long	.L212-.L128
	.long	.L211-.L128
	.long	.L210-.L128
	.long	.L209-.L128
	.long	.L208-.L128
	.long	.L207-.L128
	.long	.L206-.L128
	.long	.L205-.L128
	.long	.L204-.L128
	.long	.L203-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L202-.L128
	.long	.L201-.L128
	.long	.L200-.L128
	.long	.L199-.L128
	.long	.L198-.L128
	.long	.L197-.L128
	.long	.L196-.L128
	.long	.L195-.L128
	.long	.L194-.L128
	.long	.L193-.L128
	.long	.L192-.L128
	.long	.L191-.L128
	.long	.L190-.L128
	.long	.L189-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L188-.L128
	.long	.L187-.L128
	.long	.L186-.L128
	.long	.L185-.L128
	.long	.L184-.L128
	.long	.L183-.L128
	.long	.L182-.L128
	.long	.L181-.L128
	.long	.L180-.L128
	.long	.L179-.L128
	.long	.L178-.L128
	.long	.L177-.L128
	.long	.L176-.L128
	.long	.L175-.L128
	.long	.L174-.L128
	.long	.L173-.L128
	.long	.L172-.L128
	.long	.L171-.L128
	.long	.L170-.L128
	.long	.L169-.L128
	.long	.L168-.L128
	.long	.L167-.L128
	.long	.L126-.L128
	.long	.L166-.L128
	.long	.L126-.L128
	.long	.L165-.L128
	.long	.L164-.L128
	.long	.L163-.L128
	.long	.L162-.L128
	.long	.L161-.L128
	.long	.L160-.L128
	.long	.L159-.L128
	.long	.L158-.L128
	.long	.L157-.L128
	.long	.L156-.L128
	.long	.L155-.L128
	.long	.L154-.L128
	.long	.L153-.L128
	.long	.L152-.L128
	.long	.L151-.L128
	.long	.L150-.L128
	.long	.L149-.L128
	.long	.L148-.L128
	.long	.L147-.L128
	.long	.L146-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L145-.L128
	.long	.L144-.L128
	.long	.L143-.L128
	.long	.L142-.L128
	.long	.L141-.L128
	.long	.L140-.L128
	.long	.L139-.L128
	.long	.L138-.L128
	.long	.L137-.L128
	.long	.L136-.L128
	.long	.L135-.L128
	.long	.L134-.L128
	.long	.L133-.L128
	.long	.L132-.L128
	.long	.L131-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L130-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L129-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L126-.L128
	.long	.L127-.L128
	.text
.L306:
	leaq	.LC97(%rip), %rax
	jmp	.L307
.L305:
	leaq	.LC98(%rip), %rax
	jmp	.L307
.L304:
	leaq	.LC99(%rip), %rax
	jmp	.L307
.L303:
	leaq	.LC100(%rip), %rax
	jmp	.L307
.L302:
	leaq	.LC101(%rip), %rax
	jmp	.L307
.L301:
	leaq	.LC102(%rip), %rax
	jmp	.L307
.L300:
	leaq	.LC103(%rip), %rax
	jmp	.L307
.L299:
	leaq	.LC104(%rip), %rax
	jmp	.L307
.L298:
	leaq	.LC105(%rip), %rax
	jmp	.L307
.L297:
	leaq	.LC106(%rip), %rax
	jmp	.L307
.L296:
	leaq	.LC107(%rip), %rax
	jmp	.L307
.L295:
	leaq	.LC108(%rip), %rax
	jmp	.L307
.L294:
	leaq	.LC109(%rip), %rax
	jmp	.L307
.L293:
	leaq	.LC110(%rip), %rax
	jmp	.L307
.L292:
	leaq	.LC111(%rip), %rax
	jmp	.L307
.L291:
	leaq	.LC112(%rip), %rax
	jmp	.L307
.L290:
	leaq	.LC113(%rip), %rax
	jmp	.L307
.L289:
	leaq	.LC114(%rip), %rax
	jmp	.L307
.L288:
	leaq	.LC115(%rip), %rax
	jmp	.L307
.L287:
	leaq	.LC116(%rip), %rax
	jmp	.L307
.L286:
	leaq	.LC117(%rip), %rax
	jmp	.L307
.L285:
	leaq	.LC118(%rip), %rax
	jmp	.L307
.L284:
	leaq	.LC119(%rip), %rax
	jmp	.L307
.L283:
	leaq	.LC120(%rip), %rax
	jmp	.L307
.L282:
	leaq	.LC121(%rip), %rax
	jmp	.L307
.L281:
	leaq	.LC122(%rip), %rax
	jmp	.L307
.L280:
	leaq	.LC123(%rip), %rax
	jmp	.L307
.L279:
	leaq	.LC124(%rip), %rax
	jmp	.L307
.L278:
	leaq	.LC125(%rip), %rax
	jmp	.L307
.L277:
	leaq	.LC126(%rip), %rax
	jmp	.L307
.L276:
	leaq	.LC127(%rip), %rax
	jmp	.L307
.L275:
	leaq	.LC128(%rip), %rax
	jmp	.L307
.L274:
	leaq	.LC129(%rip), %rax
	jmp	.L307
.L273:
	leaq	.LC130(%rip), %rax
	jmp	.L307
.L272:
	leaq	.LC131(%rip), %rax
	jmp	.L307
.L271:
	leaq	.LC132(%rip), %rax
	jmp	.L307
.L270:
	leaq	.LC133(%rip), %rax
	jmp	.L307
.L269:
	leaq	.LC134(%rip), %rax
	jmp	.L307
.L268:
	leaq	.LC135(%rip), %rax
	jmp	.L307
.L267:
	leaq	.LC136(%rip), %rax
	jmp	.L307
.L266:
	leaq	.LC137(%rip), %rax
	jmp	.L307
.L265:
	leaq	.LC138(%rip), %rax
	jmp	.L307
.L264:
	leaq	.LC139(%rip), %rax
	jmp	.L307
.L263:
	leaq	.LC140(%rip), %rax
	jmp	.L307
.L262:
	leaq	.LC141(%rip), %rax
	jmp	.L307
.L261:
	leaq	.LC142(%rip), %rax
	jmp	.L307
.L260:
	leaq	.LC143(%rip), %rax
	jmp	.L307
.L259:
	leaq	.LC144(%rip), %rax
	jmp	.L307
.L258:
	leaq	.LC145(%rip), %rax
	jmp	.L307
.L257:
	leaq	.LC146(%rip), %rax
	jmp	.L307
.L256:
	leaq	.LC147(%rip), %rax
	jmp	.L307
.L255:
	leaq	.LC148(%rip), %rax
	jmp	.L307
.L254:
	leaq	.LC149(%rip), %rax
	jmp	.L307
.L253:
	leaq	.LC150(%rip), %rax
	jmp	.L307
.L252:
	leaq	.LC151(%rip), %rax
	jmp	.L307
.L251:
	leaq	.LC152(%rip), %rax
	jmp	.L307
.L250:
	leaq	.LC153(%rip), %rax
	jmp	.L307
.L249:
	leaq	.LC154(%rip), %rax
	jmp	.L307
.L248:
	leaq	.LC155(%rip), %rax
	jmp	.L307
.L247:
	leaq	.LC156(%rip), %rax
	jmp	.L307
.L246:
	leaq	.LC157(%rip), %rax
	jmp	.L307
.L245:
	leaq	.LC158(%rip), %rax
	jmp	.L307
.L244:
	leaq	.LC159(%rip), %rax
	jmp	.L307
.L243:
	leaq	.LC160(%rip), %rax
	jmp	.L307
.L242:
	leaq	.LC161(%rip), %rax
	jmp	.L307
.L241:
	leaq	.LC162(%rip), %rax
	jmp	.L307
.L240:
	leaq	.LC163(%rip), %rax
	jmp	.L307
.L239:
	leaq	.LC164(%rip), %rax
	jmp	.L307
.L238:
	leaq	.LC165(%rip), %rax
	jmp	.L307
.L237:
	leaq	.LC166(%rip), %rax
	jmp	.L307
.L236:
	leaq	.LC167(%rip), %rax
	jmp	.L307
.L235:
	leaq	.LC168(%rip), %rax
	jmp	.L307
.L234:
	leaq	.LC169(%rip), %rax
	jmp	.L307
.L233:
	leaq	.LC170(%rip), %rax
	jmp	.L307
.L232:
	leaq	.LC171(%rip), %rax
	jmp	.L307
.L231:
	leaq	.LC172(%rip), %rax
	jmp	.L307
.L230:
	leaq	.LC173(%rip), %rax
	jmp	.L307
.L229:
	leaq	.LC174(%rip), %rax
	jmp	.L307
.L228:
	leaq	.LC175(%rip), %rax
	jmp	.L307
.L227:
	leaq	.LC176(%rip), %rax
	jmp	.L307
.L226:
	leaq	.LC177(%rip), %rax
	jmp	.L307
.L225:
	leaq	.LC178(%rip), %rax
	jmp	.L307
.L224:
	leaq	.LC179(%rip), %rax
	jmp	.L307
.L223:
	leaq	.LC180(%rip), %rax
	jmp	.L307
.L222:
	leaq	.LC181(%rip), %rax
	jmp	.L307
.L221:
	leaq	.LC182(%rip), %rax
	jmp	.L307
.L220:
	leaq	.LC183(%rip), %rax
	jmp	.L307
.L219:
	leaq	.LC184(%rip), %rax
	jmp	.L307
.L218:
	leaq	.LC185(%rip), %rax
	jmp	.L307
.L217:
	leaq	.LC186(%rip), %rax
	jmp	.L307
.L216:
	leaq	.LC187(%rip), %rax
	jmp	.L307
.L215:
	leaq	.LC188(%rip), %rax
	jmp	.L307
.L214:
	leaq	.LC189(%rip), %rax
	jmp	.L307
.L213:
	leaq	.LC190(%rip), %rax
	jmp	.L307
.L212:
	leaq	.LC191(%rip), %rax
	jmp	.L307
.L211:
	leaq	.LC192(%rip), %rax
	jmp	.L307
.L210:
	leaq	.LC193(%rip), %rax
	jmp	.L307
.L209:
	leaq	.LC194(%rip), %rax
	jmp	.L307
.L208:
	leaq	.LC195(%rip), %rax
	jmp	.L307
.L207:
	leaq	.LC196(%rip), %rax
	jmp	.L307
.L206:
	leaq	.LC197(%rip), %rax
	jmp	.L307
.L205:
	leaq	.LC198(%rip), %rax
	jmp	.L307
.L204:
	leaq	.LC199(%rip), %rax
	jmp	.L307
.L203:
	leaq	.LC200(%rip), %rax
	jmp	.L307
.L202:
	leaq	.LC201(%rip), %rax
	jmp	.L307
.L201:
	leaq	.LC202(%rip), %rax
	jmp	.L307
.L200:
	leaq	.LC203(%rip), %rax
	jmp	.L307
.L199:
	leaq	.LC204(%rip), %rax
	jmp	.L307
.L198:
	leaq	.LC205(%rip), %rax
	jmp	.L307
.L197:
	leaq	.LC206(%rip), %rax
	jmp	.L307
.L196:
	leaq	.LC207(%rip), %rax
	jmp	.L307
.L195:
	leaq	.LC208(%rip), %rax
	jmp	.L307
.L194:
	leaq	.LC209(%rip), %rax
	jmp	.L307
.L193:
	leaq	.LC210(%rip), %rax
	jmp	.L307
.L192:
	leaq	.LC211(%rip), %rax
	jmp	.L307
.L191:
	leaq	.LC212(%rip), %rax
	jmp	.L307
.L190:
	leaq	.LC213(%rip), %rax
	jmp	.L307
.L189:
	leaq	.LC214(%rip), %rax
	jmp	.L307
.L188:
	leaq	.LC215(%rip), %rax
	jmp	.L307
.L187:
	leaq	.LC216(%rip), %rax
	jmp	.L307
.L186:
	leaq	.LC217(%rip), %rax
	jmp	.L307
.L185:
	leaq	.LC218(%rip), %rax
	jmp	.L307
.L184:
	leaq	.LC219(%rip), %rax
	jmp	.L307
.L183:
	leaq	.LC220(%rip), %rax
	jmp	.L307
.L182:
	leaq	.LC221(%rip), %rax
	jmp	.L307
.L181:
	leaq	.LC222(%rip), %rax
	jmp	.L307
.L180:
	leaq	.LC223(%rip), %rax
	jmp	.L307
.L179:
	leaq	.LC224(%rip), %rax
	jmp	.L307
.L178:
	leaq	.LC225(%rip), %rax
	jmp	.L307
.L177:
	leaq	.LC226(%rip), %rax
	jmp	.L307
.L176:
	leaq	.LC227(%rip), %rax
	jmp	.L307
.L175:
	leaq	.LC228(%rip), %rax
	jmp	.L307
.L174:
	leaq	.LC229(%rip), %rax
	jmp	.L307
.L173:
	leaq	.LC230(%rip), %rax
	jmp	.L307
.L172:
	leaq	.LC231(%rip), %rax
	jmp	.L307
.L171:
	leaq	.LC232(%rip), %rax
	jmp	.L307
.L170:
	leaq	.LC233(%rip), %rax
	jmp	.L307
.L169:
	leaq	.LC234(%rip), %rax
	jmp	.L307
.L168:
	leaq	.LC235(%rip), %rax
	jmp	.L307
.L167:
	leaq	.LC236(%rip), %rax
	jmp	.L307
.L166:
	leaq	.LC237(%rip), %rax
	jmp	.L307
.L165:
	leaq	.LC238(%rip), %rax
	jmp	.L307
.L164:
	leaq	.LC239(%rip), %rax
	jmp	.L307
.L163:
	leaq	.LC240(%rip), %rax
	jmp	.L307
.L162:
	leaq	.LC241(%rip), %rax
	jmp	.L307
.L161:
	leaq	.LC242(%rip), %rax
	jmp	.L307
.L160:
	leaq	.LC243(%rip), %rax
	jmp	.L307
.L159:
	leaq	.LC244(%rip), %rax
	jmp	.L307
.L158:
	leaq	.LC245(%rip), %rax
	jmp	.L307
.L157:
	leaq	.LC246(%rip), %rax
	jmp	.L307
.L156:
	leaq	.LC247(%rip), %rax
	jmp	.L307
.L155:
	leaq	.LC248(%rip), %rax
	jmp	.L307
.L154:
	leaq	.LC249(%rip), %rax
	jmp	.L307
.L153:
	leaq	.LC250(%rip), %rax
	jmp	.L307
.L152:
	leaq	.LC251(%rip), %rax
	jmp	.L307
.L151:
	leaq	.LC252(%rip), %rax
	jmp	.L307
.L150:
	leaq	.LC253(%rip), %rax
	jmp	.L307
.L149:
	leaq	.LC254(%rip), %rax
	jmp	.L307
.L148:
	leaq	.LC255(%rip), %rax
	jmp	.L307
.L147:
	leaq	.LC256(%rip), %rax
	jmp	.L307
.L146:
	leaq	.LC257(%rip), %rax
	jmp	.L307
.L145:
	leaq	.LC258(%rip), %rax
	jmp	.L307
.L144:
	leaq	.LC259(%rip), %rax
	jmp	.L307
.L143:
	leaq	.LC260(%rip), %rax
	jmp	.L307
.L142:
	leaq	.LC261(%rip), %rax
	jmp	.L307
.L141:
	leaq	.LC262(%rip), %rax
	jmp	.L307
.L140:
	leaq	.LC263(%rip), %rax
	jmp	.L307
.L139:
	leaq	.LC264(%rip), %rax
	jmp	.L307
.L138:
	leaq	.LC265(%rip), %rax
	jmp	.L307
.L137:
	leaq	.LC266(%rip), %rax
	jmp	.L307
.L136:
	leaq	.LC267(%rip), %rax
	jmp	.L307
.L135:
	leaq	.LC268(%rip), %rax
	jmp	.L307
.L134:
	leaq	.LC269(%rip), %rax
	jmp	.L307
.L133:
	leaq	.LC270(%rip), %rax
	jmp	.L307
.L132:
	leaq	.LC271(%rip), %rax
	jmp	.L307
.L131:
	leaq	.LC272(%rip), %rax
	jmp	.L307
.L130:
	leaq	.LC273(%rip), %rax
	jmp	.L307
.L129:
	leaq	.LC274(%rip), %rax
	jmp	.L307
.L127:
	leaq	.LC275(%rip), %rax
	jmp	.L307
.L126:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC276(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Machines, .-Machines
	.section	.rodata
.LC277:
	.string	"No file type"
.LC278:
	.string	"Relocatable file"
.LC279:
	.string	"Executable file"
.LC280:
	.string	"Shared object file"
.LC281:
	.string	"Core file"
.LC282:
	.string	"Number of defined types"
.LC283:
	.string	"OS-specific (%d)"
.LC284:
	.string	"Processor-specific (%d)"
	.text
	.globl	ETypes
	.type	ETypes, @function
ETypes:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$65535, -4(%rbp)
	jg	.L309
	cmpl	$65280, -4(%rbp)
	jge	.L310
	cmpl	$5, -4(%rbp)
	jg	.L311
	cmpl	$0, -4(%rbp)
	js	.L309
	cmpl	$5, -4(%rbp)
	ja	.L309
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L313(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L313(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L313:
	.long	.L318-.L313
	.long	.L317-.L313
	.long	.L316-.L313
	.long	.L315-.L313
	.long	.L314-.L313
	.long	.L312-.L313
	.text
.L311:
	movl	-4(%rbp), %eax
	subl	$65024, %eax
	cmpl	$255, %eax
	ja	.L309
	jmp	.L321
.L318:
	leaq	.LC277(%rip), %rax
	jmp	.L320
.L317:
	leaq	.LC278(%rip), %rax
	jmp	.L320
.L316:
	leaq	.LC279(%rip), %rax
	jmp	.L320
.L315:
	leaq	.LC280(%rip), %rax
	jmp	.L320
.L314:
	leaq	.LC281(%rip), %rax
	jmp	.L320
.L312:
	leaq	.LC282(%rip), %rax
	jmp	.L320
.L321:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC283(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L320
.L310:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC284(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L320
.L309:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC276(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ETypes, .-ETypes
	.section	.rodata
	.align 8
.LC285:
	.string	"Section header table entry unused"
.LC286:
	.string	"Program data"
.LC287:
	.string	"Symbol table"
.LC288:
	.string	"String table"
	.align 8
.LC289:
	.string	"Relocation entries with addends"
.LC290:
	.string	"Symbol hash table"
.LC291:
	.string	"Dynamic linking information"
.LC292:
	.string	"Notes"
	.align 8
.LC293:
	.string	"Program space with no data (bss)"
	.align 8
.LC294:
	.string	"Relocation entries, no addends"
.LC295:
	.string	"Reserved"
.LC296:
	.string	"Dynamic linker symbol table"
.LC297:
	.string	"Array of constructors"
.LC298:
	.string	"Array of destructors"
.LC299:
	.string	"Array of pre-constructors"
.LC300:
	.string	"Section group"
.LC301:
	.string	"Extended section indeces"
.LC302:
	.string	"Number of defined types."
.LC303:
	.string	"Object attributes."
.LC304:
	.string	"GNU-style hash table."
.LC305:
	.string	"Prelink library list"
.LC306:
	.string	"Checksum for DSO content."
.LC307:
	.string	"Version definition section."
.LC308:
	.string	"Version needs section."
.LC309:
	.string	"Version symbol table."
.LC310:
	.string	"OS-specific type     (0x%08x)"
.LC311:
	.string	"Sun-specific         (0x%08x)"
.LC312:
	.string	"Processor-specific   (0x%08x)"
.LC313:
	.string	"Application-specific (0x%08x)"
.LC314:
	.string	"Unknown id           (0x%08x)"
	.text
	.globl	ShType
	.type	ShType, @function
ShType:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$19, -4(%rbp)
	jg	.L323
	cmpl	$0, -4(%rbp)
	jns	.L324
	jmp	.L325
.L353:
	movl	-4(%rbp), %eax
	subl	$1879048181, %eax
	cmpl	$10, %eax
	ja	.L325
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L327(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L327(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L327:
	.long	.L333-.L327
	.long	.L332-.L327
	.long	.L331-.L327
	.long	.L330-.L327
	.long	.L325-.L327
	.long	.L325-.L327
	.long	.L325-.L327
	.long	.L325-.L327
	.long	.L329-.L327
	.long	.L328-.L327
	.long	.L326-.L327
	.text
.L324:
	cmpl	$19, -4(%rbp)
	ja	.L325
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L335(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L335(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L335:
	.long	.L352-.L335
	.long	.L351-.L335
	.long	.L350-.L335
	.long	.L349-.L335
	.long	.L348-.L335
	.long	.L347-.L335
	.long	.L346-.L335
	.long	.L345-.L335
	.long	.L344-.L335
	.long	.L343-.L335
	.long	.L342-.L335
	.long	.L341-.L335
	.long	.L325-.L335
	.long	.L325-.L335
	.long	.L340-.L335
	.long	.L339-.L335
	.long	.L338-.L335
	.long	.L337-.L335
	.long	.L336-.L335
	.long	.L334-.L335
	.text
.L323:
	cmpl	$1879048191, -4(%rbp)
	jg	.L325
	cmpl	$1879048181, -4(%rbp)
	jge	.L353
	jmp	.L325
.L352:
	leaq	.LC285(%rip), %rax
	jmp	.L354
.L351:
	leaq	.LC286(%rip), %rax
	jmp	.L354
.L350:
	leaq	.LC287(%rip), %rax
	jmp	.L354
.L349:
	leaq	.LC288(%rip), %rax
	jmp	.L354
.L348:
	leaq	.LC289(%rip), %rax
	jmp	.L354
.L347:
	leaq	.LC290(%rip), %rax
	jmp	.L354
.L346:
	leaq	.LC291(%rip), %rax
	jmp	.L354
.L345:
	leaq	.LC292(%rip), %rax
	jmp	.L354
.L344:
	leaq	.LC293(%rip), %rax
	jmp	.L354
.L343:
	leaq	.LC294(%rip), %rax
	jmp	.L354
.L342:
	leaq	.LC295(%rip), %rax
	jmp	.L354
.L341:
	leaq	.LC296(%rip), %rax
	jmp	.L354
.L340:
	leaq	.LC297(%rip), %rax
	jmp	.L354
.L339:
	leaq	.LC298(%rip), %rax
	jmp	.L354
.L338:
	leaq	.LC299(%rip), %rax
	jmp	.L354
.L337:
	leaq	.LC300(%rip), %rax
	jmp	.L354
.L336:
	leaq	.LC301(%rip), %rax
	jmp	.L354
.L334:
	leaq	.LC302(%rip), %rax
	jmp	.L354
.L333:
	leaq	.LC303(%rip), %rax
	jmp	.L354
.L332:
	leaq	.LC304(%rip), %rax
	jmp	.L354
.L331:
	leaq	.LC305(%rip), %rax
	jmp	.L354
.L330:
	leaq	.LC306(%rip), %rax
	jmp	.L354
.L329:
	leaq	.LC307(%rip), %rax
	jmp	.L354
.L328:
	leaq	.LC308(%rip), %rax
	jmp	.L354
.L326:
	leaq	.LC309(%rip), %rax
	jmp	.L354
.L325:
	cmpl	$1879048192, -4(%rbp)
	jge	.L355
	cmpl	$1879048191, -4(%rbp)
	jg	.L356
	cmpl	$1879048186, -4(%rbp)
	jge	.L357
	cmpl	$-1879048193, -4(%rbp)
	jle	.L358
	movl	-4(%rbp), %eax
	subl	$1610612736, %eax
	cmpl	$268435449, %eax
	ja	.L356
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC310(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L354
.L357:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC311(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L354
.L355:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC312(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L354
.L358:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC313(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L354
.L356:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC314(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
.L354:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ShType, .-ShType
	.section	.rodata
	.align 8
.LC315:
	.string	"Program header table entry unused"
.LC316:
	.string	"Loadable program segment"
.LC317:
	.string	"Program interpreter"
.LC318:
	.string	"Auxiliary information"
.LC319:
	.string	"Entry for header table itself"
.LC320:
	.string	"Thread-local storage segment"
.LC321:
	.string	"GCC .eh_frame_hdr segment"
.LC322:
	.string	"Indicates stack executability"
.LC323:
	.string	"Read-only after relocation"
.LC324:
	.string	"Sun Specific segment"
.LC325:
	.string	"Stack segment"
	.text
	.globl	PType
	.type	PType, @function
PType:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$1879048187, -4(%rbp)
	je	.L360
	cmpl	$1879048187, -4(%rbp)
	jg	.L361
	cmpl	$1879048186, -4(%rbp)
	je	.L362
	cmpl	$1879048186, -4(%rbp)
	jg	.L361
	cmpl	$1685382482, -4(%rbp)
	je	.L363
	cmpl	$1685382482, -4(%rbp)
	jg	.L361
	cmpl	$1685382481, -4(%rbp)
	je	.L364
	cmpl	$1685382481, -4(%rbp)
	jg	.L361
	cmpl	$8, -4(%rbp)
	jg	.L365
	cmpl	$0, -4(%rbp)
	js	.L361
	cmpl	$8, -4(%rbp)
	ja	.L361
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L367(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L367(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L367:
	.long	.L375-.L367
	.long	.L374-.L367
	.long	.L373-.L367
	.long	.L372-.L367
	.long	.L371-.L367
	.long	.L370-.L367
	.long	.L369-.L367
	.long	.L368-.L367
	.long	.L366-.L367
	.text
.L365:
	cmpl	$1685382480, -4(%rbp)
	je	.L376
	jmp	.L361
.L375:
	leaq	.LC315(%rip), %rax
	jmp	.L377
.L374:
	leaq	.LC316(%rip), %rax
	jmp	.L377
.L373:
	leaq	.LC291(%rip), %rax
	jmp	.L377
.L372:
	leaq	.LC317(%rip), %rax
	jmp	.L377
.L371:
	leaq	.LC318(%rip), %rax
	jmp	.L377
.L370:
	leaq	.LC295(%rip), %rax
	jmp	.L377
.L369:
	leaq	.LC319(%rip), %rax
	jmp	.L377
.L368:
	leaq	.LC320(%rip), %rax
	jmp	.L377
.L366:
	leaq	.LC282(%rip), %rax
	jmp	.L377
.L376:
	leaq	.LC321(%rip), %rax
	jmp	.L377
.L364:
	leaq	.LC322(%rip), %rax
	jmp	.L377
.L363:
	leaq	.LC323(%rip), %rax
	jmp	.L377
.L362:
	leaq	.LC324(%rip), %rax
	jmp	.L377
.L360:
	leaq	.LC325(%rip), %rax
	jmp	.L377
.L361:
	cmpl	$1879048192, -4(%rbp)
	jge	.L378
	cmpl	$1879048185, -4(%rbp)
	jg	.L379
	cmpl	$1610612736, -4(%rbp)
	jge	.L380
	jmp	.L381
.L379:
	movl	-4(%rbp), %eax
	subl	$1879048186, %eax
	cmpl	$5, %eax
	ja	.L381
	jmp	.L383
.L380:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC310(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L377
.L383:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC311(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L377
.L378:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC312(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	jmp	.L377
.L381:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC314(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
.L377:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	PType, .-PType
	.comm	is64,1,1
	.comm	my_prog_little,1,1
	.globl	elf_prog_little
	.data
	.type	elf_prog_little, @object
	.size	elf_prog_little, 1
elf_prog_little:
	.byte	1
	.text
	.globl	reader
	.type	reader, @function
reader:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movzbl	my_prog_little(%rip), %edx
	movzbl	elf_prog_little(%rip), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -33(%rbp)
	movb	$0, -34(%rbp)
	movzbl	is64(%rip), %eax
	testb	%al, %al
	je	.L385
	movl	$8, %eax
	jmp	.L386
.L385:
	movl	$4, %eax
.L386:
	movb	%al, -32(%rbp)
	movl	$0, -28(%rbp)
.L414:
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -31(%rbp)
	movsbl	-31(%rbp), %eax
	cmpl	$120, %eax
	je	.L387
	cmpl	$120, %eax
	jg	.L388
	cmpl	$112, %eax
	je	.L389
	cmpl	$112, %eax
	jg	.L388
	testl	%eax, %eax
	je	.L390
	testl	%eax, %eax
	js	.L388
	cmpl	$76, %eax
	jg	.L388
	cmpl	$48, %eax
	jl	.L388
	subl	$48, %eax
	cmpl	$28, %eax
	ja	.L388
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L392(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L392(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L392:
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L396-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L395-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L394-.L392
	.long	.L393-.L392
	.long	.L388-.L392
	.long	.L388-.L392
	.long	.L391-.L392
	.text
.L390:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L415
.L395:
	movb	$1, -34(%rbp)
	jmp	.L388
.L394:
	movb	$2, -34(%rbp)
	jmp	.L388
.L393:
	movb	$4, -34(%rbp)
	jmp	.L388
.L391:
	movb	$8, -34(%rbp)
	jmp	.L388
.L387:
	movzbl	-32(%rbp), %eax
	movb	%al, -34(%rbp)
	jmp	.L388
.L389:
	movb	$1, -34(%rbp)
	jmp	.L388
.L396:
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movsbl	-31(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	jmp	.L398
.L388:
	cmpb	$120, -31(%rbp)
	je	.L399
	movzbl	-34(%rbp), %eax
	jmp	.L400
.L399:
	movl	$8, %eax
.L400:
	movb	%al, -30(%rbp)
	movzbl	-30(%rbp), %eax
	subb	-34(%rbp), %al
	movb	%al, -29(%rbp)
.L413:
	movq	$0, -8(%rbp)
	movzbl	-34(%rbp), %eax
	cmpl	$8, %eax
	je	.L401
	cmpl	$8, %eax
	jg	.L402
	cmpl	$4, %eax
	je	.L403
	cmpl	$4, %eax
	jg	.L402
	cmpl	$1, %eax
	je	.L404
	cmpl	$2, %eax
	je	.L405
	jmp	.L402
.L404:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L402
.L405:
	cmpb	$0, -33(%rbp)
	je	.L406
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	rolw	$8, %ax
	movzwl	%ax, %eax
	jmp	.L407
.L406:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
.L407:
	movq	%rax, -8(%rbp)
	jmp	.L402
.L403:
	cmpb	$0, -33(%rbp)
	je	.L408
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	bswap	%eax
	movl	%eax, %eax
	jmp	.L409
.L408:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
.L409:
	movq	%rax, -8(%rbp)
	jmp	.L402
.L401:
	cmpb	$0, -33(%rbp)
	je	.L410
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	bswap	%rax
	jmp	.L411
.L410:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
.L411:
	movq	%rax, -8(%rbp)
	nop
.L402:
	movzbl	-34(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movzbl	-34(%rbp), %eax
	addq	%rax, -24(%rbp)
	movzbl	-34(%rbp), %eax
	addq	%rax, -16(%rbp)
	cmpb	$0, -29(%rbp)
	je	.L412
	movzbl	-29(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movzbl	-29(%rbp), %eax
	addq	%rax, -16(%rbp)
.L412:
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L413
	movl	$0, -28(%rbp)
.L398:
	jmp	.L414
.L415:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	reader, .-reader
	.globl	make_move
	.type	make_move, @function
make_move:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L417
.L418:
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leal	(%rsi,%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L417:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L418
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	make_move, .-make_move
	.globl	use_move
	.type	use_move, @function
use_move:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L420
.L421:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	BUFFER(%rip), %rcx
	movb	%dl, (%rax,%rcx)
	addl	$1, -12(%rbp)
.L420:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L421
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	BUFFER(%rip), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	use_move, .-use_move
	.section	.rodata
.LC326:
	.string	"rb"
	.text
	.globl	open_file
	.type	open_file, @function
open_file:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-200(%rbp), %rax
	leaq	.LC326(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.L423
	movl	$1, %eax
	jmp	.L428
.L423:
	leaq	-160(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	je	.L425
	movl	$2, %eax
	jmp	.L428
.L425:
	movq	-112(%rbp), %rax
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, (%rax)
	movq	-216(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -168(%rbp)
	movl	-180(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	-180(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	je	.L426
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$3, %eax
	jmp	.L428
.L426:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	cmpl	$-1, %eax
	jne	.L427
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$4, %eax
	jmp	.L428
.L427:
	movq	-208(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
.L428:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L429
	call	__stack_chk_fail@PLT
.L429:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	open_file, .-open_file
	.globl	compare
	.type	compare, @function
compare:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
.L435:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -6(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	movzbl	-6(%rbp), %eax
	cmpb	-5(%rbp), %al
	jge	.L431
	movl	$-1, %eax
	jmp	.L432
.L431:
	movzbl	-6(%rbp), %eax
	cmpb	-5(%rbp), %al
	jle	.L433
	movl	$1, %eax
	jmp	.L432
.L433:
	cmpb	$0, -6(%rbp)
	je	.L434
	cmpb	$0, -5(%rbp)
	jne	.L435
.L434:
	movl	$0, %eax
.L432:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	compare, .-compare
	.globl	startswith
	.type	startswith, @function
startswith:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L437
.L439:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -5(%rbp)
	je	.L437
	movl	$0, %eax
	jmp	.L438
.L437:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	cmpb	$0, -5(%rbp)
	jne	.L439
	movl	$1, %eax
.L438:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	startswith, .-startswith
	.globl	splitter
	.section	.rodata
	.align 8
.LC327:
	.string	"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	.section	.data.rel.local,"aw"
	.align 8
	.type	splitter, @object
	.size	splitter, 8
splitter:
	.quad	.LC327
	.section	.rodata
.LC328:
	.string	"LOCAL"
.LC329:
	.string	"GLOBAL"
.LC330:
	.string	"WEAK"
.LC331:
	.string	"stb_3"
.LC332:
	.string	"stb_4"
.LC333:
	.string	"stb_5"
.LC334:
	.string	"stb_6"
.LC335:
	.string	"stb_7"
.LC336:
	.string	"stb_8"
.LC337:
	.string	"stb_9"
.LC338:
	.string	"LOOS"
.LC339:
	.string	"stb_11"
.LC340:
	.string	"HIOS"
.LC341:
	.string	"LOPROC"
.LC342:
	.string	"stb_14"
.LC343:
	.string	"HIPROC"
.LC344:
	.string	"NOTYPE"
.LC345:
	.string	"OBJECT"
.LC346:
	.string	"FUNC"
.LC347:
	.string	"SECTION"
.LC348:
	.string	"FILE"
.LC349:
	.string	"COMMON"
.LC350:
	.string	"TLS"
.LC351:
	.string	"stt_7"
.LC352:
	.string	"stt_8"
.LC353:
	.string	"stt_9"
.LC354:
	.string	"stt_11"
.LC355:
	.string	"stt_14"
.LC356:
	.string	"DEFAULT"
.LC357:
	.string	"INTERNAL"
.LC358:
	.string	"HIDDEN"
.LC359:
	.string	"PROTECTED"
.LC360:
	.string	"EXPORTED"
.LC361:
	.string	"SINGLETON"
.LC362:
	.string	"ELIMATE"
	.align 8
.LC363:
	.string	"\320\235\320\265\320\277\320\276\320\264\320\264\320\265\321\200\320\266\320\270\320\262\320\260\320\265\320\274\321\213\320\271 \321\200\320\260\320\267\320\274\320\265\321\200 dynsym-\321\201\320\265\320\272\321\206\320\270\320\270: %lu\n"
	.align 8
.LC364:
	.string	"%s~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~0\n"
	.align 8
.LC365:
	.string	" idx |  address  |   size   |   type  |  bind  | visibility | sh_idx | name\n"
.LC366:
	.string	"IBBHxx"
.LC367:
	.string	"IxxBBH"
	.align 8
.LC368:
	.string	"%4u | 0x %6lx | %8lu | %7s | %6s | %10s | %6u | %s\n"
	.text
	.globl	SectionTable
	.type	SectionTable, @function
SectionTable:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$512, %rsp
	movl	%edi, -484(%rbp)
	movq	%rsi, -496(%rbp)
	movq	%rdx, -504(%rbp)
	movq	%rcx, -512(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC328(%rip), %rax
	movq	%rax, -288(%rbp)
	leaq	.LC329(%rip), %rax
	movq	%rax, -280(%rbp)
	leaq	.LC330(%rip), %rax
	movq	%rax, -272(%rbp)
	leaq	.LC331(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	.LC332(%rip), %rax
	movq	%rax, -256(%rbp)
	leaq	.LC333(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	.LC334(%rip), %rax
	movq	%rax, -240(%rbp)
	leaq	.LC335(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	.LC336(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC337(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	.LC338(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC339(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	.LC340(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	.LC341(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC342(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC343(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	.LC344(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	.LC345(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC346(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC347(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC348(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC349(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC350(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC351(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC352(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC353(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC338(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC354(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC340(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC341(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC355(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC343(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC356(%rip), %rax
	movq	%rax, -352(%rbp)
	leaq	.LC357(%rip), %rax
	movq	%rax, -344(%rbp)
	leaq	.LC358(%rip), %rax
	movq	%rax, -336(%rbp)
	leaq	.LC359(%rip), %rax
	movq	%rax, -328(%rbp)
	leaq	.LC360(%rip), %rax
	movq	%rax, -320(%rbp)
	leaq	.LC361(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	.LC362(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	-504(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -440(%rbp)
	movq	-504(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -432(%rbp)
	movzbl	is64(%rip), %eax
	testb	%al, %al
	je	.L441
	movl	$24, %eax
	jmp	.L442
.L441:
	movl	$16, %eax
.L442:
	cmpq	-432(%rbp), %rax
	je	.L443
	movq	-432(%rbp), %rdx
	movl	-484(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC363(%rip), %rdx
	movl	$10, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	sock_error
	jmp	.L450
.L443:
	movq	-440(%rbp), %rax
	movl	$0, %edx
	divq	-432(%rbp)
	movl	%eax, -456(%rbp)
	movq	-504(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-512(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movq	-504(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-496(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -448(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-32(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	make_move
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$20, %esi
	movl	$4, %edi
	call	make_move
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$21, %esi
	movl	$5, %edi
	call	make_move
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$22, %esi
	movl	$6, %edi
	call	make_move
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$4, %esi
	movl	$8, %edi
	call	make_move
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$12, %esi
	movl	$16, %edi
	call	make_move
	movq	splitter(%rip), %rdx
	movl	-484(%rbp), %eax
	leaq	.LC364(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-484(%rbp), %eax
	leaq	.LC365(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	$0, -460(%rbp)
	jmp	.L445
.L449:
	movzbl	is64(%rip), %eax
	testb	%al, %al
	je	.L446
	leaq	.LC366(%rip), %rax
	jmp	.L447
.L446:
	leaq	.LC367(%rip), %rax
.L447:
	leaq	-384(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	reader
	movzbl	is64(%rip), %eax
	testb	%al, %al
	jne	.L448
	leaq	-32(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	use_move
.L448:
	movl	-384(%rbp), %eax
	movl	%eax, -452(%rbp)
	movzbl	-380(%rbp), %eax
	movb	%al, -466(%rbp)
	movzbl	-379(%rbp), %eax
	movb	%al, -465(%rbp)
	movzwl	-378(%rbp), %eax
	movw	%ax, -462(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -400(%rbp)
	movl	-452(%rbp), %eax
	movslq	%eax, %rdx
	movq	-424(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movzbl	-466(%rbp), %eax
	shrb	$4, %al
	movb	%al, -464(%rbp)
	movzbl	-466(%rbp), %eax
	andl	$15, %eax
	movb	%al, -463(%rbp)
	movzwl	-462(%rbp), %r8d
	movzbl	-465(%rbp), %eax
	cltq
	movq	-352(%rbp,%rax,8), %rdi
	movsbl	-464(%rbp), %eax
	cltq
	movq	-288(%rbp,%rax,8), %rsi
	movsbl	-463(%rbp), %eax
	cltq
	movq	-160(%rbp,%rax,8), %r9
	movq	-400(%rbp), %r10
	movq	-408(%rbp), %rcx
	movl	-460(%rbp), %edx
	movl	-484(%rbp), %eax
	pushq	-392(%rbp)
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movq	%r10, %r8
	leaq	.LC368(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	addq	$32, %rsp
	addl	$1, -460(%rbp)
.L445:
	movl	-460(%rbp), %eax
	cmpl	-456(%rbp), %eax
	jl	.L449
	movq	splitter(%rip), %rdx
	movl	-484(%rbp), %eax
	leaq	.LC364(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	$0, %eax
.L450:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L451
	call	__stack_chk_fail@PLT
.L451:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	SectionTable, .-SectionTable
	.section	.rodata
.LC369:
	.string	"%s0\n"
	.align 8
.LC370:
	.string	" idx|      ofs_name      |    type    |     flags    |   addr  | ofs_body | len_body | LSI | info | align | entry_size |\n"
.LC371:
	.string	"WAEMSILOGTC"
	.align 8
.LC372:
	.string	"%3u | %-18s | 0x%8x | %12s | 0x%5lx | 0x%6lx | %8ld | %3d | %4d | %5lu | %10lu | %s\n"
.LC373:
	.string	"   Flags:              |\n"
.LC374:
	.string	"W <-> WRITE            |\n"
.LC375:
	.string	"A <-> ALLOC            |\n"
.LC376:
	.string	"E <-> EXECINSTR        |\n"
.LC377:
	.string	"M <-> MERGE            |\n"
.LC378:
	.string	"S <-> STRINGS          |\n"
.LC379:
	.string	"I <-> INFO_LINK        |\n"
.LC380:
	.string	"L <-> LINK_ORDER       |\n"
.LC381:
	.string	"O <-> OS_NONCONFORMING |\n"
.LC382:
	.string	"G <-> GROUP            |\n"
.LC383:
	.string	"T <-> TLS              |\n"
.LC384:
	.string	"C <-> COMPRESSED       |\n"
.LC385:
	.string	"* <-> flags > 0xfff    |\n"
.LC386:
	.string	"~~~~~~~~~~~~~~~~~~~~~~~0\n"
	.text
	.globl	SectionHeader
	.type	SectionHeader, @function
SectionHeader:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-248(%rbp), %rax
	movzwl	62(%rax), %eax
	movzwl	%ax, %eax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-248(%rbp), %rax
	movzwl	60(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, -204(%rbp)
	movl	$119, %edx
	movl	$126, %esi
	leaq	BUFFER(%rip), %rdi
	call	memset@PLT
	movb	$0, 119+BUFFER(%rip)
	movl	-228(%rbp), %eax
	leaq	BUFFER(%rip), %rdx
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC370(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	$0, -212(%rbp)
	jmp	.L453
.L460:
	movl	-212(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	56(%rax), %rdx
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -200(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -196(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -192(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-200(%rbp), %eax
	movslq	%eax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	leaq	.LC371(%rip), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -208(%rbp)
	jmp	.L454
.L457:
	cmpl	$2, -208(%rbp)
	setg	%al
	movzbl	%al, %edx
	movl	-208(%rbp), %eax
	addl	%edx, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cltq
	andq	-176(%rbp), %rax
	testq	%rax, %rax
	je	.L455
	movl	-208(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	jmp	.L456
.L455:
	movl	$32, %edx
.L456:
	movl	-208(%rbp), %eax
	cltq
	movb	%dl, -37(%rbp,%rax)
	addl	$1, -208(%rbp)
.L454:
	cmpl	$10, -208(%rbp)
	jle	.L457
	cmpq	$4095, -176(%rbp)
	jbe	.L458
	movl	$42, %eax
	jmp	.L459
.L458:
	movl	$32, %eax
.L459:
	movb	%al, -26(%rbp)
	movb	$0, -25(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, %edi
	call	ShType
	movq	%rax, %rsi
	leaq	-37(%rbp), %r8
	movl	-196(%rbp), %edi
	movq	-128(%rbp), %rcx
	movl	-212(%rbp), %edx
	movl	-228(%rbp), %eax
	pushq	%rsi
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	movl	-188(%rbp), %esi
	pushq	%rsi
	movl	-192(%rbp), %esi
	pushq	%rsi
	pushq	-152(%rbp)
	pushq	-160(%rbp)
	pushq	-168(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	leaq	.LC372(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	addq	$64, %rsp
	addl	$1, -212(%rbp)
.L453:
	movl	-212(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jl	.L460
	movl	$119, %edx
	movl	$126, %esi
	leaq	BUFFER(%rip), %rdi
	call	memset@PLT
	movb	$0, 119+BUFFER(%rip)
	movb	$48, 23+BUFFER(%rip)
	movl	-228(%rbp), %eax
	leaq	BUFFER(%rip), %rdx
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC373(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC374(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC375(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC376(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC377(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC378(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC379(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC380(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC381(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC382(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC383(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC384(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC385(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-228(%rbp), %eax
	leaq	.LC386(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L461
	call	__stack_chk_fail@PLT
.L461:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	SectionHeader, .-SectionHeader
	.section	.rodata
.LC387:
	.string	"\n"
.LC388:
	.string	"    Section: %s\n"
.LC389:
	.string	"III"
	.align 8
.LC390:
	.string	"Record: '%s' (type %u) | Descriptor:"
.LC391:
	.string	" %02x"
.LC392:
	.string	".comment"
.LC393:
	.string	"Comment: '%s'\n"
.LC394:
	.string	"    Section: %-19s |\n"
.LC395:
	.string	"xx"
.LC396:
	.string	"%-32s | %lu b.\n"
.LC397:
	.string	"%-32s | '%s'\n"
.LC398:
	.string	"%-32s | 0x%lx\n"
.LC399:
	.string	"%-32s |   Pointer: 0x %5lx\n"
.LC400:
	.string	"%-32s | %u (%u) | 0x%lx\n"
.LC401:
	.string	"STR (0x%5lx): '%s'\n"
	.text
	.globl	OtherSections
	.type	OtherSections, @function
OtherSections:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -196(%rbp)
	movl	%esi, -200(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	%r9, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-216(%rbp), %rax
	movzwl	62(%rax), %eax
	movzwl	%ax, %eax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-224(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-216(%rbp), %rax
	movzwl	60(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, -164(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, -96(%rbp)
	movb	$1, -178(%rbp)
	movl	$0, -172(%rbp)
	jmp	.L463
.L493:
	movl	-172(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	js	.L464
	movl	-160(%rbp), %eax
	cmpl	-200(%rbp), %eax
	jne	.L496
.L464:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -156(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	cmpl	$7, -160(%rbp)
	je	.L466
	cmpl	$7, -160(%rbp)
	jg	.L465
	cmpl	$6, -160(%rbp)
	je	.L467
	cmpl	$6, -160(%rbp)
	jg	.L465
	cmpl	$1, -160(%rbp)
	je	.L468
	cmpl	$3, -160(%rbp)
	je	.L469
	jmp	.L465
.L466:
	cmpb	$0, -178(%rbp)
	je	.L470
	movb	$0, -178(%rbp)
	jmp	.L471
.L470:
	movl	-196(%rbp), %eax
	leaq	.LC387(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L471:
	movq	-72(%rbp), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC388(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	jmp	.L472
.L475:
	leaq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	.LC389(%rip), %rsi
	movq	%rax, %rdi
	call	reader
	movl	-32(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -148(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rdx
	movl	-152(%rbp), %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, %ecx
	movl	-152(%rbp), %eax
	addl	%ecx, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rdx
	movl	-148(%rbp), %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	addl	%ecx, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movl	-24(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC390(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	$0, -168(%rbp)
	jmp	.L473
.L474:
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-196(%rbp), %eax
	leaq	.LC391(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	addl	$1, -168(%rbp)
.L473:
	movl	-168(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L474
	movl	-196(%rbp), %eax
	leaq	.LC387(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L472:
	movq	-136(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	ja	.L475
	jmp	.L465
.L468:
	movq	-72(%rbp), %rax
	leaq	.LC392(%rip), %rsi
	movq	%rax, %rdi
	call	startswith
	testl	%eax, %eax
	je	.L497
	cmpb	$0, -178(%rbp)
	je	.L477
	movb	$0, -178(%rbp)
	jmp	.L478
.L477:
	movl	-196(%rbp), %eax
	leaq	.LC387(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L478:
	movq	-72(%rbp), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC388(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	-136(%rbp), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC393(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	jmp	.L497
.L467:
	cmpb	$0, -178(%rbp)
	je	.L479
	movb	$0, -178(%rbp)
	jmp	.L480
.L479:
	movl	-196(%rbp), %eax
	leaq	.LC387(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L480:
	movq	-72(%rbp), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC394(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	jmp	.L481
.L488:
	leaq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	.LC395(%rip), %rsi
	movq	%rax, %rdi
	call	reader
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	leaq	-176(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	DynampicArrayTags
	movl	-176(%rbp), %eax
	cmpl	$3, %eax
	jne	.L482
	jmp	.L481
.L482:
	movl	-176(%rbp), %eax
	andl	$3, %eax
	movl	%eax, -144(%rbp)
	movl	-176(%rbp), %eax
	sarl	$3, %eax
	movl	%eax, -140(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$1, -144(%rbp)
	jne	.L483
	cmpl	$1, -140(%rbp)
	jne	.L484
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-196(%rbp), %eax
	leaq	.LC396(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	jmp	.L481
.L484:
	cmpl	$2, -140(%rbp)
	jne	.L486
	movq	-104(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-128(%rbp), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC397(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	jmp	.L481
.L486:
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-196(%rbp), %eax
	leaq	.LC398(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	jmp	.L481
.L483:
	cmpl	$2, -144(%rbp)
	jne	.L487
	cmpl	$0, -140(%rbp)
	jne	.L487
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-196(%rbp), %eax
	leaq	.LC399(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	jmp	.L481
.L487:
	movq	-128(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %ecx
	movl	-196(%rbp), %eax
	movq	%rdi, %r9
	movl	%esi, %r8d
	leaq	.LC400(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L481:
	movq	-136(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	ja	.L488
	jmp	.L465
.L469:
	cmpb	$0, -178(%rbp)
	je	.L489
	movb	$0, -178(%rbp)
	jmp	.L490
.L489:
	movl	-196(%rbp), %eax
	leaq	.LC387(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L490:
	movq	-72(%rbp), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC388(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L491
.L492:
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -177(%rbp)
	cmpb	$0, -177(%rbp)
	jne	.L491
	movq	-120(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movl	-196(%rbp), %eax
	leaq	.LC401(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -120(%rbp)
.L491:
	movq	-136(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	ja	.L492
	jmp	.L465
.L496:
	nop
	jmp	.L465
.L497:
	nop
.L465:
	addl	$1, -172(%rbp)
.L463:
	movl	-172(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jl	.L493
	cmpb	$0, -178(%rbp)
	jne	.L498
	movq	splitter(%rip), %rdx
	movl	-196(%rbp), %eax
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L498:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L495
	call	__stack_chk_fail@PLT
.L495:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	OtherSections, .-OtherSections
	.section	.rodata
.LC402:
	.string	"IIxxxxxx"
.LC403:
	.string	"IxxxxxIx"
	.align 8
.LC404:
	.string	" idx|    type    | flags |  offset  |   vaddr  |   paddr  | filesize | mem_size | align |\n"
.LC405:
	.string	"RWX"
	.align 8
.LC406:
	.string	"%3u | 0x%8x | %5s | 0x%6lx | 0x%6lx | 0x%6lx | %8ld | %8ld | %5ld | %s\n"
.LC407:
	.string	"   Flags:        |\n"
.LC408:
	.string	"R <-> READABLE   |\n"
.LC409:
	.string	"W <-> WRITABLE   |\n"
.LC410:
	.string	"X <-> EXECUTABLE |\n"
.LC411:
	.string	"* <-> flags > 7  |\n"
.LC412:
	.string	"~~~~~~~~~~~~~~~~~0\n"
	.text
	.globl	ProgramHeader
	.type	ProgramHeader, @function
ProgramHeader:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -276(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rcx, -304(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r12
	movq	-296(%rbp), %rax
	movzwl	62(%rax), %eax
	movzwl	%ax, %eax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	-296(%rbp), %rax
	movzwl	56(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, -260(%rbp)
	movq	-296(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	leaq	-248(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-260(%rbp), %ecx
	movslq	%ecx, %rax
	subq	$1, %rax
	movq	%rax, -224(%rbp)
	movslq	%ecx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	imulq	$448, %r11, %rdx
	imulq	$0, %r10, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$448, %eax
	mulq	%r10
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movslq	%ecx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	imulq	$448, %r9, %rdx
	imulq	$0, %r8, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$448, %eax
	mulq	%r8
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L500:
	cmpq	%rdx, %rsp
	je	.L501
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L500
.L501:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L502
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L502:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -216(%rbp)
	leaq	-80(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	make_move
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$44, %esi
	movl	$4, %edi
	call	make_move
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$4, %esi
	movl	$8, %edi
	call	make_move
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$12, %esi
	movl	$16, %edi
	call	make_move
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$20, %esi
	movl	$24, %edi
	call	make_move
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$28, %esi
	movl	$32, %edi
	call	make_move
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$36, %esi
	movl	$40, %edi
	call	make_move
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	movl	$8, %edx
	movl	$48, %esi
	movl	$48, %edi
	call	make_move
	movl	$0, -264(%rbp)
	jmp	.L503
.L507:
	movl	-264(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movzbl	is64(%rip), %eax
	testb	%al, %al
	je	.L504
	leaq	.LC402(%rip), %rax
	jmp	.L505
.L504:
	leaq	.LC403(%rip), %rax
.L505:
	movq	-152(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	reader
	movzbl	is64(%rip), %eax
	testb	%al, %al
	jne	.L506
	leaq	-80(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	use_move
.L506:
	addl	$1, -264(%rbp)
.L503:
	movl	-264(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L507
	movl	$88, %edx
	movl	$126, %esi
	leaq	BUFFER(%rip), %rdi
	call	memset@PLT
	movb	$0, 88+BUFFER(%rip)
	movl	-276(%rbp), %eax
	leaq	BUFFER(%rip), %rdx
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-276(%rbp), %eax
	leaq	.LC404(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	$0, -268(%rbp)
	jmp	.L508
.L515:
	movq	-216(%rbp), %rcx
	movl	-268(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -252(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	.LC405(%rip), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -272(%rbp)
	jmp	.L509
.L512:
	movl	$2, %eax
	subl	-272(%rbp), %eax
	movl	-252(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L510
	movl	-272(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	jmp	.L511
.L510:
	movl	$32, %edx
.L511:
	movl	-272(%rbp), %eax
	cltq
	movb	%dl, -85(%rbp,%rax)
	addl	$1, -272(%rbp)
.L509:
	cmpl	$2, -272(%rbp)
	jle	.L512
	cmpl	$7, -252(%rbp)
	jle	.L513
	movl	$42, %eax
	jmp	.L514
.L513:
	movl	$32, %eax
.L514:
	movb	%al, -82(%rbp)
	movb	$0, -81(%rbp)
	movl	-256(%rbp), %eax
	movl	%eax, %edi
	call	PType
	movq	%rax, %rsi
	movq	-208(%rbp), %r8
	leaq	-85(%rbp), %rdi
	movl	-256(%rbp), %ecx
	movl	-268(%rbp), %edx
	movl	-276(%rbp), %eax
	pushq	%rsi
	pushq	-168(%rbp)
	pushq	-176(%rbp)
	pushq	-184(%rbp)
	pushq	-192(%rbp)
	pushq	-200(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	leaq	.LC406(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	addq	$48, %rsp
	addl	$1, -268(%rbp)
.L508:
	movl	-268(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L515
	movl	$88, %edx
	movl	$126, %esi
	leaq	BUFFER(%rip), %rdi
	call	memset@PLT
	movb	$0, 88+BUFFER(%rip)
	movb	$48, 17+BUFFER(%rip)
	movl	-276(%rbp), %eax
	leaq	BUFFER(%rip), %rdx
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-276(%rbp), %eax
	leaq	.LC407(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-276(%rbp), %eax
	leaq	.LC408(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-276(%rbp), %eax
	leaq	.LC409(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-276(%rbp), %eax
	leaq	.LC410(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-276(%rbp), %eax
	leaq	.LC411(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-276(%rbp), %eax
	leaq	.LC412(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	%r12, %rsp
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L516
	call	__stack_chk_fail@PLT
.L516:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ProgramHeader, .-ProgramHeader
	.section	.rodata
.LC413:
	.string	"IBBBBBppppppp"
.LC414:
	.string	"\320\255\321\202\320\276 \320\275\320\265 ELF\n"
.LC415:
	.string	"b64"
.LC416:
	.string	"b32"
.LC417:
	.string	"bits:        %-36s |\n"
.LC418:
	.string	"big"
.LC419:
	.string	"little"
.LC420:
	.string	"endian:      %-36s |\n"
.LC421:
	.string	"CURRENT"
.LC422:
	.string	"NONE"
.LC423:
	.string	"\320\255\320\272\320\267\320\276\321\202\320\270\321\207\320\265\321\201\320\272\320\260\321\217 (%d)"
.LC424:
	.string	"ELF-\320\262\320\265\321\200\321\201\320\270\321\217:  %-36s |\n"
.LC425:
	.string	"abi:         %-36u |\n"
.LC426:
	.string	"abi_version: %-36u |\n"
	.align 8
.LC427:
	.string	"\320\235\320\265\320\264\320\276\320\277\321\203\321\201\321\202\320\270\320\274\320\260\321\217 \321\200\320\260\320\267\321\200\321\217\320\264\320\275\320\276\321\201\321\202\321\214 (%u)\n"
	.align 8
.LC428:
	.string	"\320\235\320\265\320\264\320\276\320\277\321\203\321\201\321\202\320\270\320\274\320\276\320\265 \320\275\320\260\320\277\321\200\320\260\320\262\320\273\320\265\320\275\320\270\320\265 \320\264\320\260\320\275\320\275\321\213\321\205 (%u)\n"
	.align 8
.LC429:
	.string	"\320\236\321\202\320\272\320\273\320\276\320\275\320\265\320\275\320\270\320\265 \320\276\321\202 \321\201\321\202\320\260\320\275\320\264\320\260\321\200\321\202\320\275\320\276\320\271 \320\262\320\265\321\200\321\201\320\270\320\270 ELF-\321\204\320\260\320\271\320\273\320\260 (%u)\n"
.LC430:
	.string	"HHIxxxIHHHHHH"
.LC431:
	.string	"'%s'"
.LC432:
	.string	"e_type:      %-36s |\n"
.LC433:
	.string	"machine:     %-36s |\n"
.LC434:
	.string	"e_version:   %-36u |\n"
	.align 8
.LC435:
	.string	"entry_point:           0x%-24lx |\n"
	.align 8
.LC436:
	.string	"program_header_offset: %-26lu |\n"
	.align 8
.LC437:
	.string	"section_header_offset: %-26lu |\n"
	.align 8
.LC438:
	.string	"flags:                 %-26d |\n"
	.align 8
.LC439:
	.string	"e_ehsize:              %-26d |\n"
	.align 8
.LC440:
	.string	"len_program_headers:   %-26d |\n"
	.align 8
.LC441:
	.string	"num_program_headers:   %-26d |\n"
	.align 8
.LC442:
	.string	"len_section_headers:   %-26d |\n"
	.align 8
.LC443:
	.string	"num_section_headers:   %-26d |\n"
	.align 8
.LC444:
	.string	"section_names_idx:     %-26d |\n"
.LC445:
	.string	"IIxxxxIIxx"
	.text
	.globl	elf_parser
	.type	elf_parser, @function
elf_parser:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$352, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -340(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r12
	movq	-360(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -333(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -280(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-288(%rbp), %rax
	leaq	.LC413(%rip), %rsi
	movq	%rax, %rdi
	call	reader
	movl	-112(%rbp), %eax
	cmpl	$1179403647, %eax
	je	.L518
	movl	-340(%rbp), %eax
	leaq	.LC414(%rip), %rdx
	movl	$5, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	sock_error
	jmp	.L519
.L518:
	movzbl	-108(%rbp), %eax
	testb	%al, %al
	je	.L520
	movzbl	-107(%rbp), %eax
	testb	%al, %al
	je	.L520
	movzbl	-106(%rbp), %eax
	testb	%al, %al
	jne	.L521
.L520:
	movl	-340(%rbp), %eax
	leaq	.LC414(%rip), %rdx
	movl	$6, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	sock_error
	jmp	.L519
.L521:
	cmpb	$0, -333(%rbp)
	je	.L522
	movq	splitter(%rip), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzbl	-108(%rbp), %eax
	cmpb	$1, %al
	je	.L523
	movzbl	-108(%rbp), %eax
	cmpb	$2, %al
	jne	.L524
	leaq	.LC415(%rip), %rax
	jmp	.L526
.L524:
	leaq	.LC0(%rip), %rax
	jmp	.L526
.L523:
	leaq	.LC416(%rip), %rax
.L526:
	movl	-340(%rbp), %ecx
	movq	%rax, %rdx
	leaq	.LC417(%rip), %rsi
	movl	%ecx, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzbl	-107(%rbp), %eax
	cmpb	$1, %al
	je	.L527
	movzbl	-107(%rbp), %eax
	cmpb	$2, %al
	jne	.L528
	leaq	.LC418(%rip), %rax
	jmp	.L530
.L528:
	leaq	.LC0(%rip), %rax
	jmp	.L530
.L527:
	leaq	.LC419(%rip), %rax
.L530:
	movl	-340(%rbp), %ecx
	movq	%rax, %rdx
	leaq	.LC420(%rip), %rsi
	movl	%ecx, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzbl	-106(%rbp), %eax
	cmpb	$1, %al
	jne	.L531
	leaq	.LC421(%rip), %rax
	jmp	.L532
.L531:
	leaq	.LC422(%rip), %rax
.L532:
	movq	%rax, -296(%rbp)
	movzbl	-106(%rbp), %eax
	cmpb	$1, %al
	jbe	.L533
	movzbl	-106(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC423(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	movq	%rax, -296(%rbp)
.L533:
	movq	-296(%rbp), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC424(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzbl	-105(%rbp), %eax
	movzbl	%al, %edx
	movl	-340(%rbp), %eax
	leaq	.LC425(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzbl	-104(%rbp), %eax
	movzbl	%al, %edx
	movl	-340(%rbp), %eax
	leaq	.LC426(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L522:
	movzbl	-108(%rbp), %eax
	cmpb	$1, %al
	je	.L534
	movzbl	-108(%rbp), %eax
	cmpb	$2, %al
	je	.L534
	movzbl	-108(%rbp), %eax
	movzbl	%al, %edx
	movl	-340(%rbp), %eax
	movl	%edx, %ecx
	leaq	.LC427(%rip), %rdx
	movl	$7, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	sock_error
	jmp	.L519
.L534:
	movzbl	-107(%rbp), %eax
	cmpb	$1, %al
	je	.L535
	movzbl	-107(%rbp), %eax
	cmpb	$2, %al
	je	.L535
	movzbl	-107(%rbp), %eax
	movzbl	%al, %edx
	movl	-340(%rbp), %eax
	movl	%edx, %ecx
	leaq	.LC428(%rip), %rdx
	movl	$8, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	sock_error
	jmp	.L519
.L535:
	movzbl	-106(%rbp), %eax
	cmpb	$1, %al
	je	.L536
	movzbl	-106(%rbp), %eax
	movzbl	%al, %edx
	movl	-340(%rbp), %eax
	movl	%edx, %ecx
	leaq	.LC429(%rip), %rdx
	movl	$9, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	sock_error
	jmp	.L519
.L536:
	movzbl	-108(%rbp), %eax
	cmpb	$2, %al
	sete	%al
	movb	%al, is64(%rip)
	movzbl	-107(%rbp), %eax
	cmpb	$1, %al
	sete	%al
	movb	%al, elf_prog_little(%rip)
	leaq	-112(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-288(%rbp), %rax
	leaq	.LC430(%rip), %rsi
	movq	%rax, %rdi
	call	reader
	movzwl	-52(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, -320(%rbp)
	cmpb	$0, -333(%rbp)
	je	.L537
	movzwl	-96(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	ETypes
	movq	%rax, %rsi
	leaq	.LC431(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	movq	%rax, %rdx
	movl	-340(%rbp), %eax
	leaq	.LC432(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzwl	-94(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	Machines
	movq	%rax, %rsi
	leaq	.LC431(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	movq	%rax, %rdx
	movl	-340(%rbp), %eax
	leaq	.LC433(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-92(%rbp), %edx
	movl	-340(%rbp), %eax
	leaq	.LC434(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	splitter(%rip), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	-88(%rbp), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC435(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	-80(%rbp), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC436(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	-72(%rbp), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC437(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-64(%rbp), %edx
	movl	-340(%rbp), %eax
	leaq	.LC438(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzwl	-60(%rbp), %eax
	movzwl	%ax, %edx
	movl	-340(%rbp), %eax
	leaq	.LC439(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzwl	-58(%rbp), %eax
	movzwl	%ax, %edx
	movl	-340(%rbp), %eax
	leaq	.LC440(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzwl	-56(%rbp), %eax
	movzwl	%ax, %edx
	movl	-340(%rbp), %eax
	leaq	.LC441(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzwl	-54(%rbp), %eax
	movzwl	%ax, %edx
	movl	-340(%rbp), %eax
	leaq	.LC442(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-320(%rbp), %edx
	movl	-340(%rbp), %eax
	leaq	.LC443(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzwl	-50(%rbp), %eax
	movzwl	%ax, %edx
	movl	-340(%rbp), %eax
	leaq	.LC444(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	splitter(%rip), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L537:
	movq	-72(%rbp), %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -352(%rbp)
	movl	-320(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -272(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -384(%rbp)
	movq	$0, -376(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L538:
	cmpq	%rdx, %rsp
	je	.L539
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L538
.L539:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L540
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L540:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -264(%rbp)
	movl	$0, -324(%rbp)
	jmp	.L541
.L544:
	movl	-324(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	addq	%rax, %rdx
	movq	-288(%rbp), %rax
	leaq	.LC445(%rip), %rsi
	movq	%rax, %rdi
	call	reader
	movl	-324(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movl	%eax, -300(%rbp)
	cmpl	$2, -300(%rbp)
	jne	.L542
	movl	-324(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -192(%rbp)
	movq	%rbx, -184(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -176(%rbp)
	movq	%rbx, -168(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -160(%rbp)
	movq	%rbx, -152(%rbp)
	movq	56(%rax), %rdx
	movq	48(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	jmp	.L543
.L542:
	cmpl	$11, -300(%rbp)
	jne	.L543
	movl	-324(%rbp), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -256(%rbp)
	movq	%rbx, -248(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -240(%rbp)
	movq	%rbx, -232(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -224(%rbp)
	movq	%rbx, -216(%rbp)
	movq	56(%rax), %rdx
	movq	48(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
.L543:
	addl	$1, -324(%rbp)
.L541:
	movl	-324(%rbp), %eax
	cmpl	-320(%rbp), %eax
	jl	.L544
	movq	-360(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L545
	movq	-264(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movl	-340(%rbp), %eax
	movl	%eax, %edi
	call	SectionHeader
.L545:
	movq	-360(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L546
	movq	-264(%rbp), %rcx
	leaq	-256(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movl	-340(%rbp), %eax
	movl	%eax, %edi
	call	SectionTable
	movl	%eax, -316(%rbp)
	cmpl	$0, -316(%rbp)
	je	.L546
	movl	-316(%rbp), %eax
	jmp	.L519
.L546:
	movq	-360(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L547
	movq	-264(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movl	-340(%rbp), %eax
	movl	%eax, %edi
	call	SectionTable
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.L547
	movl	-312(%rbp), %eax
	jmp	.L519
.L547:
	movq	-360(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L548
	movq	-264(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movl	-340(%rbp), %eax
	movl	%eax, %edi
	call	ProgramHeader
.L548:
	movl	$4, -308(%rbp)
	movb	$0, -334(%rbp)
	movl	$5, -328(%rbp)
	jmp	.L549
.L552:
	movl	-328(%rbp), %eax
	movslq	%eax, %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L550
	movb	$1, -334(%rbp)
	jmp	.L551
.L550:
	addl	$1, -328(%rbp)
.L549:
	movl	-308(%rbp), %eax
	addl	$4, %eax
	cmpl	%eax, -328(%rbp)
	jle	.L552
.L551:
	cmpb	$0, -334(%rbp)
	je	.L553
	movq	splitter(%rip), %rdx
	movl	-340(%rbp), %eax
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	$7, -128(%rbp)
	movl	$1, -124(%rbp)
	movl	$6, -120(%rbp)
	movl	$3, -116(%rbp)
	movl	$0, -332(%rbp)
	jmp	.L554
.L556:
	movl	-332(%rbp), %eax
	cltq
	movl	-128(%rbp,%rax,4), %eax
	movl	%eax, -304(%rbp)
	movl	-332(%rbp), %eax
	cltq
	leaq	5(%rax), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L555
	movq	-264(%rbp), %r8
	leaq	-256(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	movq	-280(%rbp), %rdx
	movl	-304(%rbp), %esi
	movl	-340(%rbp), %eax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	OtherSections
.L555:
	addl	$1, -332(%rbp)
.L554:
	movl	-332(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jl	.L556
.L553:
	movl	$0, %eax
.L519:
	movq	%r12, %rsp
	movq	-40(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L558
	call	__stack_chk_fail@PLT
.L558:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	elf_parser, .-elf_parser
	.globl	post_num
	.type	post_num, @function
post_num:
.LFB25:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	jmp	.L560
.L561:
	movl	-24(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -9(%rbp)
	leaq	-9(%rbp), %rcx
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movl	-24(%rbp), %eax
	sarl	$7, %eax
	movl	%eax, -24(%rbp)
.L560:
	movl	-24(%rbp), %eax
	cmpl	$127, %eax
	jg	.L561
	leaq	-24(%rbp), %rcx
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L562
	call	__stack_chk_fail@PLT
.L562:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	post_num, .-post_num
	.globl	post_str
	.type	post_str, @function
post_str:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L564
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
.L564:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	post_num
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	post_str, .-post_str
	.globl	see_num
	.type	see_num, @function
see_num:
.LFB27:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.L568:
	leaq	-17(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	testq	%rax, %rax
	jne	.L566
	movl	$-1, %eax
	jmp	.L569
.L566:
	movzbl	-17(%rbp), %eax
	movzbl	%al, %eax
	andl	$127, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -16(%rbp)
	addl	$7, -12(%rbp)
	movzbl	-17(%rbp), %eax
	testb	%al, %al
	js	.L568
	movl	-16(%rbp), %eax
.L569:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L570
	call	__stack_chk_fail@PLT
.L570:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	see_num, .-see_num
	.globl	see_str
	.type	see_str, @function
see_str:
.LFB28:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	see_num
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L572
	movl	$-1, %eax
	jmp	.L573
.L572:
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	je	.L574
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$-1, %eax
	jmp	.L573
.L574:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
.L573:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	see_str, .-see_str
	.section	.rodata
.LC446:
	.string	"w"
.LC447:
	.string	"resultator.txt"
	.align 8
.LC448:
	.string	"error 21.) \320\235\320\265 \321\203\320\264\320\260\320\273\320\276\321\201\321\214 \320\276\321\202\320\272\321\200\321\213\321\202\321\214 \321\204\320\260\320\271\320\273 \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202\320\260 \320\275\320\260 \320\267\320\260\320\277\320\270\321\201\321\214\n"
	.align 8
.LC449:
	.string	"My prog (server) endian: %-24s |\n"
.LC450:
	.string	"%u b."
	.align 8
.LC451:
	.string	"\320\240\320\260\320\267\320\274\320\265\321\200 \321\204\320\260\320\271\320\273\320\260:            %-24s |\n"
.LC452:
	.string	""
	.align 8
.LC453:
	.string	"\320\244\320\260\320\271\320\273 \320\277\321\200\320\270\320\275\321\217\321\202 \321\203\320\264\320\260\321\207\320\275\320\276 %30s |\n"
.LC454:
	.string	"exit code: %d\n"
	.align 8
.LC455:
	.string	"error 22.) \320\235\320\265 \321\203\320\264\320\260\320\273\320\276\321\201\321\214 \320\267\320\260\320\272\321\200\321\213\321\202\321\214 \321\204\320\260\320\271\320\273 \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202\320\260\n"
	.align 8
.LC456:
	.string	"error 23.) \320\235\320\265 \321\203\320\264\320\260\320\273\320\276\321\201\321\214 \321\203\320\267\320\275\320\260\321\202\321\214 \321\200\320\260\320\267\320\274\320\265\321\200 \321\204\320\260\320\271\320\273\320\260 \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202\320\260\n"
.LC457:
	.string	"r"
	.align 8
.LC458:
	.string	"error 24.) \320\235\320\265 \321\203\320\264\320\260\320\273\320\276\321\201\321\214 \320\276\321\202\320\272\321\200\321\213\321\202\321\214 \321\204\320\260\320\271\320\273 \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202\320\260 \320\275\320\260 \321\207\321\202\320\265\320\275\320\270\320\265\n"
	.align 8
.LC459:
	.string	"error 25.) \320\235\320\265 \321\203\320\264\320\260\320\273\320\276\321\201\321\214 \321\201\321\207\320\270\321\202\320\260\321\202\321\214 \321\204\320\260\320\271\320\273 \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202\320\260\n"
	.align 8
.LC460:
	.string	"error 26.) \320\235\320\265 \321\203\320\264\320\260\320\273\320\276\321\201\321\214 \320\267\320\260\320\272\321\200\321\213\321\202\321\214 \321\204\320\260\320\271\320\273 \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202\320\260\n"
.LC461:
	.string	"Disconnect"
	.text
	.globl	handler
	.type	handler, @function
handler:
.LFB29:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -220(%rbp)
.L593:
	leaq	.LC446(%rip), %rsi
	leaq	.LC447(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L576
	movl	-220(%rbp), %eax
	movl	$0, %edx
	leaq	.LC448(%rip), %rsi
	movl	%eax, %edi
	call	post_str
	jmp	.L577
.L576:
	movl	-220(%rbp), %eax
	movl	%eax, %edi
	call	see_num
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	js	.L596
	leaq	-200(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	see_str
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	js	.L597
	movl	$0, -224(%rbp)
	jmp	.L580
.L581:
	movl	-224(%rbp), %eax
	movl	-216(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movl	%eax, %edx
	movl	-224(%rbp), %eax
	cltq
	movb	%dl, -17(%rbp,%rax)
	addl	$1, -224(%rbp)
.L580:
	cmpl	$8, -224(%rbp)
	jle	.L581
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	movl	%eax, -208(%rbp)
	movzbl	-17(%rbp), %eax
	testb	%al, %al
	je	.L582
	movq	splitter(%rip), %rdx
	movl	-208(%rbp), %eax
	leaq	.LC369(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movzbl	my_prog_little(%rip), %eax
	testb	%al, %al
	je	.L583
	leaq	.LC419(%rip), %rax
	jmp	.L584
.L583:
	leaq	.LC418(%rip), %rax
.L584:
	movl	-208(%rbp), %ecx
	movq	%rax, %rdx
	leaq	.LC449(%rip), %rsi
	movl	%ecx, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-212(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC450(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	movq	%rax, %rdx
	movl	-208(%rbp), %eax
	leaq	.LC451(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movl	-208(%rbp), %eax
	leaq	.LC452(%rip), %rdx
	leaq	.LC453(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
.L582:
	movq	-200(%rbp), %rcx
	leaq	-17(%rbp), %rdx
	movl	-208(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	elf_parser
	movl	%eax, -204(%rbp)
	movb	$0, -225(%rbp)
	leaq	-225(%rbp), %rcx
	movl	-208(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-204(%rbp), %edx
	movl	-208(%rbp), %eax
	leaq	.LC454(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	dprintf@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	cmpl	$-1, %eax
	jne	.L585
	movl	-220(%rbp), %eax
	movl	$0, %edx
	leaq	.LC455(%rip), %rsi
	movl	%eax, %edi
	call	post_str
	jmp	.L591
.L585:
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC447(%rip), %rdi
	call	stat@PLT
	testl	%eax, %eax
	je	.L587
	movl	-220(%rbp), %eax
	movl	$0, %edx
	leaq	.LC456(%rip), %rsi
	movl	%eax, %edi
	call	post_str
	jmp	.L591
.L587:
	movq	-128(%rbp), %rax
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -184(%rbp)
	leaq	.LC457(%rip), %rsi
	leaq	.LC447(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L588
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-220(%rbp), %eax
	movl	$0, %edx
	leaq	.LC458(%rip), %rsi
	movl	%eax, %edi
	call	post_str
	jmp	.L591
.L588:
	movl	-212(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	je	.L589
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-220(%rbp), %eax
	movl	$0, %edx
	leaq	.LC459(%rip), %rsi
	movl	%eax, %edi
	call	post_str
	jmp	.L591
.L589:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	cmpl	$-1, %eax
	jne	.L590
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-220(%rbp), %eax
	movl	$0, %edx
	leaq	.LC460(%rip), %rsi
	movl	%eax, %edi
	call	post_str
	jmp	.L591
.L590:
	movl	-212(%rbp), %edx
	movq	-184(%rbp), %rcx
	movl	-220(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	post_str
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L593
.L596:
	nop
	jmp	.L577
.L597:
	nop
.L577:
	leaq	.LC461(%rip), %rdi
	call	puts@PLT
	movl	-220(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L594
	jmp	.L595
.L591:
	jmp	.L593
.L595:
	call	__stack_chk_fail@PLT
.L594:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	handler, .-handler
	.section	.rodata
	.align 8
.LC462:
	.string	"\320\241\320\273\320\270\321\210\320\272\320\276\320\274 \320\274\320\260\320\273\320\276 \321\202\320\276\321\207\320\265\320\272 \320\262 ip2num, \320\264\320\276\320\273\320\266\320\275\320\276 \320\261\321\213\321\202\321\214 3, \320\260 \320\275\320\265 %u\n"
	.align 8
.LC463:
	.string	"\320\241\320\273\320\270\321\210\320\272\320\276\320\274 \320\274\320\275\320\276\320\263\320\276 \321\202\320\276\321\207\320\265\320\272 \320\262 ip2num, \320\264\320\276\320\273\320\266\320\275\320\276 \320\261\321\213\321\202\321\214 3\n"
	.align 8
.LC464:
	.string	"\320\241\320\273\320\270\321\210\320\272\320\276\320\274 \320\261\320\276\320\273\321\214\321\210\320\276\320\265 \321\207\320\270\321\201\320\273\320\276 \320\262 ip2num: %u\n"
	.align 8
.LC465:
	.string	"\320\241\321\202\321\200\320\260\320\275\320\275\321\213\320\271 \321\201\320\270\320\274\320\262\320\276\320\273 \320\262 ip2num '%c' (%u) (0x%x)\n"
	.text
	.globl	ip2num
	.type	ip2num, @function
ip2num:
.LFB30:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
.L610:
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -44(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -45(%rbp)
	movsbl	-45(%rbp), %eax
	cmpl	$57, %eax
	ja	.L599
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L601(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L601(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L601:
	.long	.L602-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L613-.L601
	.long	.L613-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L613-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L613-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L599-.L601
	.long	.L602-.L601
	.long	.L599-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.long	.L600-.L601
	.text
.L602:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	movl	-40(%rbp), %edx
	movl	%edx, -32(%rbp,%rax,4)
	movl	$0, -40(%rbp)
	cmpb	$0, -45(%rbp)
	jne	.L604
	cmpl	$3, -36(%rbp)
	jg	.L605
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	leaq	.LC462(%rip), %rsi
	movl	$14, %edi
	movl	$0, %eax
	call	error
.L605:
	movl	-32(%rbp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-20(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, %edi
	call	htonl@PLT
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L611
	jmp	.L612
.L604:
	cmpl	$4, -36(%rbp)
	jne	.L614
	leaq	.LC463(%rip), %rsi
	movl	$13, %edi
	movl	$0, %eax
	call	error
	jmp	.L614
.L600:
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movsbl	-45(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	cmpl	$255, -40(%rbp)
	jle	.L615
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC464(%rip), %rsi
	movl	$12, %edi
	movl	$0, %eax
	call	error
	jmp	.L615
.L599:
	movsbl	-45(%rbp), %ecx
	movsbl	-45(%rbp), %edx
	movsbl	-45(%rbp), %eax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC465(%rip), %rsi
	movl	$11, %edi
	movl	$0, %eax
	call	error
	jmp	.L610
.L613:
	nop
	jmp	.L610
.L614:
	nop
	jmp	.L610
.L615:
	nop
	jmp	.L610
.L612:
	call	__stack_chk_fail@PLT
.L611:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ip2num, .-ip2num
	.section	.rodata
	.align 8
.LC466:
	.string	"\320\235\320\265 \320\277\320\276\320\273\321\203\321\207\320\270\320\273\320\276\321\201\321\214 \321\201\320\276\320\267\320\264\320\260\321\202\321\214 \321\201\320\276\320\272\320\265\321\202: %d\n"
	.align 8
.LC467:
	.string	"Server address %u.%u.%u.%u:%u\n"
	.align 8
.LC468:
	.string	"\320\235\320\265 \320\277\320\276\320\273\321\203\321\207\320\270\320\273\320\276\321\201\321\214 \320\267\320\260\320\261\320\270\320\275\320\264\320\265\321\202\321\214 \321\201\320\276\320\272\320\265\321\202: %d\n"
.LC469:
	.string	"listed() failed: %d\n"
.LC470:
	.string	"accept() failed: %d\n"
	.align 8
.LC471:
	.string	"Client address %u.%u.%u.%u:%u\n"
.LC472:
	.string	"thread init error: %d\n"
.LC473:
	.string	"new thread addr: %lx\n"
	.text
	.globl	server
	.type	server, @function
server:
.LFB31:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket@PLT
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jns	.L617
	movl	-80(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC466(%rip), %rsi
	movl	$15, %edi
	movl	$0, %eax
	call	error
.L617:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ip2num
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edi
	movl	-76(%rbp), %eax
	sarl	$16, %eax
	movzbl	%al, %ecx
	movl	-76(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	movl	-76(%rbp), %eax
	movzbl	%al, %eax
	movl	-108(%rbp), %esi
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC467(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movw	$2, -48(%rbp)
	movl	-108(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons@PLT
	movw	%ax, -46(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -44(%rbp)
	leaq	-48(%rbp), %rcx
	movl	-80(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jns	.L618
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC468(%rip), %rsi
	movl	$16, %edi
	movl	$0, %eax
	call	error
.L618:
	movl	-80(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	listen@PLT
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jns	.L623
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC469(%rip), %rsi
	movl	$17, %edi
	movl	$0, %eax
	call	error
.L623:
	movl	$16, -88(%rbp)
	leaq	-88(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movl	-80(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	accept@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	jns	.L620
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC470(%rip), %rsi
	movl	$18, %edi
	movl	$0, %eax
	call	error
.L620:
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
	movzwl	-30(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, -64(%rbp)
	movl	-68(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edi
	movl	-68(%rbp), %eax
	sarl	$16, %eax
	movzbl	%al, %ecx
	movl	-68(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	movl	-68(%rbp), %eax
	movzbl	%al, %eax
	movl	-64(%rbp), %esi
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC471(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-84(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rcx
	leaq	handler(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L621
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC472(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L623
.L621:
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC473(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L623
	.cfi_endproc
.LFE31:
	.size	server, .-server
	.section	.rodata
.LC474:
	.string	"My prog (client) endian: %s\n"
	.align 8
.LC475:
	.string	"Server address:          %u.%u.%u.%u:%u\n"
	.align 8
.LC476:
	.string	"\320\235\320\265 \320\277\320\276\320\273\321\203\321\207\320\270\320\273\320\276\321\201\321\214 \320\277\320\276\320\264\321\201\320\276\320\265\320\264\320\270\320\275\320\270\321\202\321\214\321\201\321\217 \320\272 \321\201\320\265\321\200\320\262\320\265\321\200\321\203\n"
	.align 8
.LC477:
	.string	"\320\236\321\210\320\270\320\261\320\272\320\260 \320\276\321\202\320\272\321\200\321\213\321\202\320\270\321\217 \321\204\320\260\320\271\320\273\320\260:   %u\n"
	.align 8
.LC478:
	.string	"Client: \320\240\320\260\320\267\320\274\320\265\321\200 \321\204\320\260\320\271\320\273\320\260:    %s\n"
	.align 8
.LC479:
	.string	"Client: \320\244\320\260\320\271\320\273 \320\276\321\202\320\272\321\200\321\213\321\202 \321\203\320\264\320\260\321\207\320\275\320\276"
	.align 8
.LC480:
	.string	"Unknown error: \320\235\320\265 \321\203\320\264\320\260\320\273\320\276\321\201\321\214 \321\201\321\207\320\270\321\202\320\260\321\202\321\214 \321\200\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202 (\320\270\320\273\320\270 \320\276\321\210\320\270\320\261\320\272\321\203) \321\201 \321\201\320\265\321\200\320\262\320\265\321\200\320\260 :/"
	.align 8
.LC481:
	.string	"|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|<>|"
.LC482:
	.string	"%s"
	.text
	.globl	client
	.type	client, @function
client:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzbl	my_prog_little(%rip), %eax
	testb	%al, %al
	je	.L626
	leaq	.LC419(%rip), %rax
	jmp	.L627
.L626:
	leaq	.LC418(%rip), %rax
.L627:
	movq	%rax, %rsi
	leaq	.LC474(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jns	.L628
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC466(%rip), %rsi
	movl	$19, %edi
	movl	$0, %eax
	call	error
.L628:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ip2num
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edi
	movl	-64(%rbp), %eax
	sarl	$16, %eax
	movzbl	%al, %ecx
	movl	-64(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	movl	-64(%rbp), %eax
	movzbl	%al, %eax
	movl	-92(%rbp), %esi
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	%eax, %esi
	leaq	.LC475(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movw	$2, -32(%rbp)
	movl	-92(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons@PLT
	movw	%ax, -30(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -28(%rbp)
	leaq	-32(%rbp), %rcx
	movl	-68(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	connect@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L629
	leaq	.LC476(%rip), %rsi
	movl	$20, %edi
	movl	$0, %eax
	call	error
.L629:
	leaq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	open_file
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L630
	movl	-56(%rbp), %edx
	movl	-56(%rbp), %eax
	leaq	.LC477(%rip), %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	error
.L630:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L631
	movl	-80(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC450(%rip), %rdi
	movl	$0, %eax
	call	buffprintf
	movq	%rax, %rsi
	leaq	.LC478(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC479(%rip), %rdi
	call	puts@PLT
.L631:
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	jmp	.L632
.L633:
	movl	-72(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -76(%rbp)
	addl	$1, -72(%rbp)
.L632:
	cmpl	$8, -72(%rbp)
	jle	.L633
	movl	-76(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	post_num
	movl	-80(%rbp), %edx
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	post_str
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	see_str
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L634
	leaq	.LC480(%rip), %rdi
	call	puts@PLT
	jmp	.L635
.L634:
	leaq	.LC481(%rip), %rdi
	call	puts@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC482(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC481(%rip), %rdi
	call	puts@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L635:
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L636
	call	__stack_chk_fail@PLT
.L636:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	client, .-client
	.section	.rodata
.LC483:
	.string	"PID: %u\n"
.LC484:
	.string	"liblab5.so"
.LC485:
	.string	"127.0.0.1"
	.text
	.globl	main
	.type	main, @function
main:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	getpid@PLT
	movl	%eax, %esi
	leaq	.LC483(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -40(%rbp)
	leaq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	movb	%al, my_prog_little(%rip)
	cmpl	$1, -52(%rbp)
	jle	.L638
	cmpl	$2, -52(%rbp)
	jle	.L639
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L640
.L639:
	leaq	.LC484(%rip), %rax
.L640:
	movq	%rax, -32(%rbp)
	movabsq	$72340172838076673, %rax
	movq	%rax, -17(%rbp)
	movb	$1, -9(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L641
.L646:
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -41(%rbp)
	cmpb	$0, -41(%rbp)
	je	.L650
	cmpb	$48, -41(%rbp)
	je	.L644
	cmpb	$32, -41(%rbp)
	je	.L644
	cmpb	$45, -41(%rbp)
	je	.L644
	movl	$1, %eax
	jmp	.L645
.L644:
	movl	$0, %eax
.L645:
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	cltq
	movb	%dl, -17(%rbp,%rax)
	addl	$1, -36(%rbp)
.L641:
	cmpl	$8, -36(%rbp)
	jle	.L646
	jmp	.L643
.L650:
	nop
.L643:
	leaq	-17(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$2102, %esi
	leaq	.LC485(%rip), %rdi
	call	client
	jmp	.L647
.L638:
	movl	$2102, %esi
	leaq	.LC485(%rip), %rdi
	call	server
.L647:
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L649
	call	__stack_chk_fail@PLT
.L649:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
