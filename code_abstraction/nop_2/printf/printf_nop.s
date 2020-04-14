	.section	.text
	.align	16
	#Procedure 0x4015b0

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	jne	.label_8
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_7
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	nop	
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.36
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x188
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13
	mov	rbp, rbp
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	call	atexit
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + exit_status]],  0
	mov	edi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	call	getenv
	lea	rdi, [rdi]
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	cmp	r15d, 2
	jne	.label_56
	mov	rsp, rsp
	mov	rbp, qword ptr [r14 + 8]
	mov	esi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_66
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_70
	lea	rbx, [r14 + 8]
	mov	rsp, rsp
	jmp	.label_71
.label_56:
	lea	rsi, [rsi]
	jl	.label_12
	mov	rbp, rbp
	lea	rbx, [r14 + 8]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r14 + 8]
.label_71:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_74
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp + 1]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_77
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 2], 0
	je	.label_44
	mov	rbp, rbp
	mov	rbx, r14
	mov	rbp, rbp
	jmp	.label_81
.label_74:
	mov	rbx, r14
	nop	
	jmp	.label_81
.label_77:
	mov	rbx, r14
	jmp	.label_81
.label_70:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.18_0
	nop	
	xor	r9d, r9d
	mov	rsp, rsp
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	jmp	.label_9
.label_44:
	cmp	r15d, 3
	mov	rbp, rbp
	jl	.label_12
	dec	r15d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14 + 0x10]
.label_81:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rbp
	add	r15d, -2
	mov	rbp, rbp
	add	rbx, 0x10
	movabs	r12, 0x410150000001
	nop	
.label_25:
	mov	qword ptr [rsp + 0x158], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x34], r15d
	mov	al, byte ptr [rbp]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	mov	r14, rbx
	lea	rsi, [rsi]
	mov	ebx, r15d
	mov	r15, rbp
	mov	dword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rsp, rsp
	je	.label_22
	nop	dword ptr [rax + rax]
.label_14:
	lea	rsi, [rsi]
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_34
	lea	rsi, [rsi]
	cmp	ecx, 0x25
	mov	rbp, rbp
	jne	.label_76
	mov	rsp, rsp
	lea	rbp, [r15 + 1]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x71
	mov	rbp, rbp
	je	.label_39
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x62
	je	.label_43
	cmp	eax, 0x25
	nop	
	jne	.label_52
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_64
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x25
	jmp	.label_31
	nop	dword ptr [rax]
.label_34:
	xor	esi, esi
	mov	rdi, r15
	nop	
	call	print_esc
	mov	rbp, rbp
	movsxd	rbp, eax
	add	rbp, r15
	jmp	.label_31
	nop	dword ptr [rax]
.label_76:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_58
	nop	
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_46:
	mov	rbp, r15
	jmp	.label_31
.label_39:
	mov	rsp, rsp
	test	ebx, ebx
	jle	.label_31
	mov	rsi, qword ptr [r14]
	lea	rdi, [rdi]
	mov	edi, 3
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	add	r14, 8
	dec	ebx
	lea	rdi, [rdi]
	jmp	.label_31
.label_43:
	test	ebx, ebx
	jle	.label_31
	mov	rbp, rbp
	mov	r15d, ebx
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_87:
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_10:
	mov	rsp, rsp
	movzx	esi, byte ptr [rbx]
	cmp	esi, 0x5c
	je	.label_87
	test	sil, sil
	je	.label_89
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_90
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], sil
	lea	rdi, [rdi]
	inc	rbx
	jmp	.label_10
.label_90:
	lea	rdi, [rdi]
	call	__overflow
	inc	rbx
	jmp	.label_10
.label_52:
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc8], 1
	mov	byte ptr [rsp + 0xc5], 1
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc3], 1
	mov	byte ptr [rsp + 0xbf], 1
	mov	byte ptr [rsp + 0xb9], 1
	mov	byte ptr [rsp + 0x97], 1
	mov	byte ptr [rsp + 0x96], 1
	mov	byte ptr [rsp + 0x95], 1
	mov	byte ptr [rsp + 0x91], 1
	mov	byte ptr [rsp + 0xb1], 1
	lea	rax, [rsp + 0xb3]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	lea	rsi, [rsi]
	mov	r13d, 1
	lea	rsi, [rsi]
	jmp	.label_19
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rsp, rsp
	inc	r13
.label_19:
	movsx	eax, byte ptr [r15 + r13]
	cmp	eax, 0x26
	jle	.label_63
	mov	rsp, rsp
	lea	ecx, [rax - 0x27]
	nop	
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_65
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_68]]
.label_418:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc3], 0
	mov	byte ptr [rsp + 0xb3], 0
	mov	rsp, rsp
	jmp	.label_69
	nop	
.label_63:
	cmp	eax, 0x20
	lea	rdi, [rdi]
	je	.label_69
	cmp	eax, 0x23
	jne	.label_72
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc5], 0
	mov	byte ptr [rsp + 0xc3], 0
	nop	
	mov	byte ptr [rsp + 0xb9], 0
	mov	word ptr [rsp + 0xb3], 0
	lea	rsi, [rsi]
	inc	r13
	mov	rsp, rsp
	jmp	.label_19
.label_65:
	mov	rsp, rsp
	cmp	eax, 0x49
	jne	.label_72
.label_417:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xa8], 0
	mov	byte ptr [rsp + 0xc8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], 0
	mov	byte ptr [rsp + 0xbf], 0
	mov	byte ptr [rsp + 0x95], 0
	mov	byte ptr [rsp + 0xb5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xb3], 0
	mov	byte ptr [rsp + 0x91], 0
	mov	byte ptr [rsp + 0xb1], 0
	lea	rsi, [rsi]
	inc	r13
	lea	rsi, [rsi]
	jmp	.label_19
.label_72:
	mov	rsp, rsp
	lea	rbp, [r15 + r13]
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x2a
	jne	.label_84
	inc	rbp
	inc	r13
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0x4c], eax
	test	ebx, ebx
	jle	.label_21
	mov	rdi, qword ptr [r14]
	call	vstrtoimax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
	lea	rsi, [rsi]
	sub	rax, -0x80000000
	shr	rax, 0x20
	nop	
	jne	.label_26
	add	r14, 8
	dec	ebx
	nop	
	jmp	.label_30
.label_89:
	add	r14, 8
	lea	rdi, [rdi]
	mov	ebx, r15d
	dec	ebx
	mov	rbp, rbp
	jmp	.label_31
.label_84:
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_35
	nop	dword ptr [rax + rax]
.label_83:
	lea	rdi, [rdi]
	inc	r13
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	nop	
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	jb	.label_83
.label_35:
	mov	dword ptr [rsp + 0x4c], 0
	mov	rbp, rbp
	jmp	.label_30
.label_58:
	lea	rdi, [rdi]
	movzx	esi, al
	mov	rsp, rsp
	call	__overflow
	nop	
	jmp	.label_46
.label_21:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
.label_30:
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_48
	nop	
	mov	byte ptr [rsp + 0xb3], 0
	movsx	eax, byte ptr [rbp + 1]
	nop	
	cmp	eax, 0x2a
	lea	rsi, [rsi]
	jne	.label_85
	add	rbp, 2
	nop	
	add	r13, 2
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rsp + 0x184], eax
	test	ebx, ebx
	nop	
	jle	.label_53
	mov	rdi, qword ptr [r14]
	call	vstrtoimax
	mov	dword ptr [rsp + 0x24], 0xffffffff
	mov	rbp, rbp
	test	rax, rax
	js	.label_60
	mov	ecx, 0x80000000
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_62
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], eax
.label_60:
	mov	rsp, rsp
	add	r14, 8
	nop	
	mov	qword ptr [rsp + 0x28], r14
	dec	ebx
	mov	rbp, rbp
	jmp	.label_67
.label_85:
	lea	rdi, [rdi]
	inc	r13
	mov	rbp, rbp
	add	eax, -0x30
	cmp	eax, 9
	nop	
	ja	.label_41
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr [rax + rax]
.label_73:
	mov	rsp, rsp
	inc	r13
	movsx	eax, byte ptr [rbp + 1]
	mov	rbp, rbp
	inc	rbp
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rsp, rsp
	jb	.label_73
.label_48:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x184], 0
	jmp	.label_67
.label_41:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r14
	inc	rbp
	mov	dword ptr [rsp + 0x184], 0
	jmp	.label_67
.label_53:
	nop	
	mov	dword ptr [rsp + 0x24], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r14
	lea	rdi, [rdi]
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_17:
	inc	rbp
.label_67:
	mov	r14b, byte ptr [rbp]
	movzx	eax, r14b
	lea	rsi, [rsi]
	mov	cl, r14b
	add	cl, 0xb4
	mov	rsp, rsp
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x2e
	ja	.label_15
	bt	r12, rcx
	lea	rdi, [rdi]
	jb	.label_17
.label_15:
	cmp	byte ptr [rsp + rax + 0x50], 0
	nop	
	je	.label_49
	lea	rdi, [rdi]
	movsx	edx, r14b
	lea	rdi, [rdi]
	test	ebx, ebx
	nop	
	jle	.label_20
	mov	rbp, rbp
	dec	ebx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x160], rcx
	add	rax, 8
	nop	
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_23
.label_20:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], ebx
	nop	
	mov	eax, OFFSET FLAT:.str_0
	mov	qword ptr [rsp + 0x160], rax
.label_23:
	lea	eax, [rdx - 0x41]
	mov	qword ptr [rsp + 0x178], rdx
	cmp	eax, 0x37
	mov	rbp, rbp
	ja	.label_32
	movabs	rcx, 0x7100000071
	bt	rcx, rax
	jae	.label_36
	mov	ebx, 1
	mov	r12d, OFFSET FLAT:.str.45
	nop	
	jmp	.label_40
.label_36:
	movabs	rcx, 0x90410800800000
	bt	rcx, rax
	nop	
	mov	ebx, 1
	mov	r12d, OFFSET FLAT:.str.44
	mov	rbp, rbp
	jae	.label_32
.label_40:
	lea	rdi, [r13 + rbx + 2]
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rsp + 0x150], rax
	mov	rbp, rbp
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	lea	rsi, [rsi]
	call	__mempcpy_chk
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r12
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r14b
	mov	byte ptr [rax + 1], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x178]
	nop	
	cmp	edx, 0x6e
	jg	.label_57
	lea	eax, [rdx - 0x58]
	cmp	eax, 0x11
	mov	r14, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x160]
	ja	.label_61
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x150]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_80]]
.label_472:
	mov	rdi, rcx
	call	vstrtoimax
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_75
.label_57:
	nop	
	add	edx, -0x6f
	mov	rbp, rbp
	cmp	edx, 9
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x150]
	mov	rcx, qword ptr [rsp + 0x160]
	ja	.label_16
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_24]]
.label_470:
	mov	rbp, rbp
	mov	r15d, ebx
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x27
	lea	rdi, [rdi]
	je	.label_82
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_86
.label_82:
	lea	rdi, [rdi]
	movzx	r12d, byte ptr [rcx + 1]
	lea	rdi, [rdi]
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_86
	cmp	byte ptr [rcx + 2], 0
	mov	rbp, rbp
	je	.label_92
	nop	
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	mov	rsp, rsp
	test	al, al
	mov	ebx, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	jne	.label_11
	add	rcx, 2
	mov	qword ptr [rsp + 0x160], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x160]
	call	error
	jmp	.label_11
.label_61:
	lea	eax, [rdx - 0x45]
	cmp	eax, 3
	mov	ebx, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x150]
	jb	.label_27
	cmp	edx, 0x41
	nop	
	jne	.label_16
.label_27:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x27
	mov	rbp, rbp
	je	.label_50
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_33
.label_50:
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 1]
	mov	rbp, rbp
	test	al, al
	je	.label_33
	nop	
	mov	r15d, ebx
	movzx	eax, al
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x174], eax
	fild	dword ptr [rsp + 0x174]
	fstp	xword ptr [rsp + 0x18]
	cmp	byte ptr [rcx + 2], 0
	mov	rbp, rbp
	je	.label_38
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	jne	.label_45
	add	rcx, 2
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	nop	
	mov	edx, 5
	mov	r12, rcx
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	call	error
	nop	
	jmp	.label_45
.label_33:
	mov	r15d, ebx
	lea	rdi, [rdi]
	mov	rbx, rcx
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsp + 0x168]
	call	cl_strtold
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x168]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	verify_numeric
.label_38:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x4c]
.label_45:
	mov	eax, dword ptr [rsp + 0x184]
	lea	rsi, [rsi]
	test	bl, bl
	mov	rbp, rbp
	je	.label_78
	lea	rdi, [rdi]
	test	al, al
	mov	ebx, r15d
	je	.label_55
	fld	xword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, dword ptr [rsp + 0x24]
	call	xprintf
	jmp	.label_16
.label_78:
	mov	rbp, rbp
	test	al, al
	mov	ebx, r15d
	lea	rdi, [rdi]
	je	.label_79
	fld	xword ptr [rsp + 0x18]
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	nop	
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x24]
	call	xprintf
	jmp	.label_16
.label_75:
	mov	eax, dword ptr [rsp + 0x4c]
	test	al, al
	je	.label_88
	mov	eax, dword ptr [rsp + 0x184]
	test	al, al
	lea	rdi, [rdi]
	je	.label_91
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
	nop	
	mov	edx, dword ptr [rsp + 0x24]
	nop	
	call	xprintf
	mov	rbp, rbp
	jmp	.label_16
.label_86:
	mov	rbp, rbp
	mov	rbx, rcx
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsp + 0x168]
	call	__strtoul_internal
	mov	r12, rax
	mov	rsi, qword ptr [rsp + 0x168]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	verify_numeric
.label_92:
	mov	ebx, dword ptr [rsp + 0x4c]
.label_11:
	mov	eax, dword ptr [rsp + 0x184]
	test	bl, bl
	je	.label_29
	lea	rdi, [rdi]
	test	al, al
	je	.label_51
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, r12
	mov	rbp, rbp
	call	xprintf
	mov	ebx, r15d
	jmp	.label_16
.label_29:
	test	al, al
	mov	rbp, rbp
	je	.label_37
	xor	eax, eax
	mov	rdi, r13
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_13
.label_88:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x184]
	test	al, al
	je	.label_42
	xor	eax, eax
	nop	
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	jmp	.label_47
.label_55:
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	xprintf
	mov	rbp, rbp
	jmp	.label_16
.label_79:
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	lea	rdi, [rdi]
	call	xprintf
	jmp	.label_16
.label_32:
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, r15
	jmp	.label_40
.label_471:
	movsx	ecx, byte ptr [rcx]
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x4c]
	test	al, al
	je	.label_59
	xor	eax, eax
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ecx
	mov	rsp, rsp
	call	xprintf
	lea	rdi, [rdi]
	jmp	.label_16
.label_64:
	mov	rbp, rbp
	mov	esi, 0x25
	mov	rbp, rbp
	call	__overflow
	jmp	.label_31
.label_51:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
.label_13:
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	xprintf
	lea	rsi, [rsi]
	mov	ebx, r15d
	mov	rsp, rsp
	jmp	.label_16
.label_37:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r12
	call	xprintf
	lea	rdi, [rdi]
	mov	ebx, r15d
	jmp	.label_16
.label_91:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
.label_47:
	mov	rdx, rcx
	call	xprintf
	lea	rdi, [rdi]
	jmp	.label_16
.label_42:
	xor	eax, eax
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	xprintf
	jmp	.label_16
.label_59:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	esi, ecx
	call	xprintf
.label_16:
	mov	rdi, r13
	call	free
	movabs	r12, 0x410150000001
	nop	word ptr [rax + rax]
.label_31:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	rsp, rsp
	test	al, al
	mov	r15, rbp
	lea	rsi, [rsi]
	jne	.label_14
.label_22:
	mov	ecx, dword ptr [rsp + 0x34]
	mov	rbp, rbp
	sub	ecx, ebx
	movsxd	rax, ecx
	lea	rsi, [rsi]
	mov	edx, ebx
	nop	
	mov	rbx, qword ptr [rsp + 0x158]
	mov	rbp, rbp
	lea	rbx, [rbx + rax*8]
	lea	rdi, [rdi]
	test	edx, edx
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_18
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	mov	r15d, edx
	jg	.label_25
.label_18:
	test	edx, edx
	lea	rsi, [rsi]
	jle	.label_28
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx]
	nop	
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	call	error
.label_28:
	movzx	ebx,  byte ptr [byte ptr [rip + exit_status]]
	mov	rsp, rsp
	and	ebx, 1
.label_9:
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rbp, rbp
	add	rsp, 0x188
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	inc	ebp
	lea	rsi, [rsi]
	sub	ebp, r15d
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	nop	
	mov	ecx, ebp
	mov	rsp, rsp
	mov	r8, r15
	mov	rbp, rbp
	call	error
.label_26:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	jmp	.label_54
.label_62:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.38
.label_54:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, qword ptr [r14]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
.label_12:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_66:
	nop	
	xor	edi, edi
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x27
	mov	rbp, rbp
	je	.label_95
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x22
	lea	rdi, [rdi]
	jne	.label_94
.label_95:
	lea	rdi, [rdi]
	movzx	r14d, byte ptr [rbx + 1]
	nop	
	test	r14, r14
	je	.label_94
	cmp	byte ptr [rbx + 2], 0
	je	.label_93
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_93
	add	rbx, 2
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rbx
	nop	
	call	error
	jmp	.label_93
.label_94:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	xor	edx, edx
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, rbx
	call	__strtol_internal
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	verify_numeric
.label_93:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	nop	
	push	rbx
	mov	r14, rdi
	movsx	r12d, byte ptr [r14 + 1]
	cmp	r12d, 0x78
	lea	rdi, [rdi]
	jne	.label_122
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [r14 + 2]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_127
	movsx	eax, dl
	nop	
	mov	bl, al
	add	bl, 0x9f
	lea	rdi, [rdi]
	movzx	esi, bl
	cmp	esi, 5
	ja	.label_131
	add	eax, -0x57
	jmp	.label_103
.label_122:
	lea	rbx, [r14 + 1]
	lea	rdi, [rdi]
	mov	al, r12b
	lea	rsi, [rsi]
	and	al, 0xf8
	lea	rdi, [rdi]
	movzx	eax, al
	cmp	eax, 0x30
	nop	
	jne	.label_135
	movzx	eax, r12b
	cmp	eax, 0x30
	mov	rbp, rbp
	sete	al
	and	al, sil
	mov	rsp, rsp
	movzx	eax, al
	nop	
	lea	rcx, [rbx + rax]
	movsx	edx, byte ptr [rbx + rax]
	xor	eax, eax
	mov	esi, edx
	and	esi, 0xf8
	cmp	esi, 0x30
	jne	.label_99
	mov	rsp, rsp
	add	edx, -0x30
	movsx	eax, byte ptr [rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	mov	rsp, rsp
	mov	esi, eax
	and	esi, 0xf8
	nop	
	cmp	esi, 0x30
	jne	.label_109
	lea	eax, [rax + rdx*8 - 0x30]
	movsx	edx, byte ptr [rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	and	esi, 0xf8
	cmp	esi, 0x30
	mov	rsp, rsp
	jne	.label_115
	lea	eax, [rdx + rax*8 - 0x30]
	lea	rdi, [rdi]
	inc	rcx
	mov	rbx, rcx
	jmp	.label_106
.label_135:
	test	r12b, r12b
	je	.label_125
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.47
	mov	edx, 0xc
	mov	esi, r12d
	call	memchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_128
	lea	rbx, [r14 + 2]
	lea	rsi, [rsi]
	mov	eax, r12d
	lea	rdi, [rdi]
	add	eax, -0x61
	mov	rsp, rsp
	cmp	eax, 0x15
	ja	.label_130
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_133]]
.label_500:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_134
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 7
	jmp	.label_97
.label_131:
	add	dl, 0xbf
	lea	rdi, [rdi]
	movzx	edx, dl
	cmp	edx, 5
	ja	.label_102
	add	eax, -0x37
	mov	rbp, rbp
	jmp	.label_103
.label_99:
	lea	rdi, [rdi]
	mov	rbx, rcx
	jmp	.label_106
.label_102:
	add	eax, -0x30
.label_103:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [r14 + 3]
	lea	rsi, [rsi]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	mov	rsp, rsp
	jne	.label_108
	nop	
	lea	rbx, [r14 + 3]
	jmp	.label_114
.label_108:
	movsx	ecx, dl
	shl	eax, 4
	mov	bl, cl
	lea	rdi, [rdi]
	add	bl, 0x9f
	mov	rbp, rbp
	movzx	esi, bl
	cmp	esi, 6
	lea	rdi, [rdi]
	jae	.label_100
	mov	rbp, rbp
	add	ecx, -0x57
	jmp	.label_107
.label_100:
	add	dl, 0xbf
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 6
	jae	.label_121
	mov	rsp, rsp
	add	ecx, -0x37
	jmp	.label_107
.label_109:
	mov	rsp, rsp
	mov	rbx, rcx
	mov	eax, edx
	jmp	.label_106
.label_121:
	nop	
	add	ecx, -0x30
.label_107:
	add	eax, ecx
	mov	rbp, rbp
	lea	rbx, [r14 + 4]
.label_114:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	nop	
	jae	.label_126
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	mov	rsp, rsp
	jmp	.label_97
.label_128:
	mov	al, r12b
	or	al, 0x20
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x75
	mov	rbp, rbp
	jne	.label_125
	movzx	eax, r12b
	cmp	eax, 0x75
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	movzx	ebp, al
	nop	
	lea	r15d, [rbp*4 + 4]
	mov	rsp, rsp
	lea	rbx, [r14 + 2]
	call	__ctype_b_loc
	mov	r8, qword ptr [rax]
	lea	rsi, [rsi]
	lea	ecx, [rbp*4 + 5]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_124:
	movzx	edi, byte ptr [rbx]
	test	byte ptr [r8 + rdi*2 + 1], 0x10
	mov	rsp, rsp
	je	.label_127
	movsx	esi, dil
	mov	edx, ebp
	mov	rbp, rbp
	shl	edx, 4
	mov	rbp, rbp
	mov	al, sil
	lea	rdi, [rdi]
	add	al, 0x9f
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 5
	nop	
	ja	.label_111
	add	esi, -0x57
	lea	rdi, [rdi]
	jmp	.label_116
	nop	dword ptr [rax]
.label_111:
	add	dil, 0xbf
	lea	rdi, [rdi]
	movzx	eax, dil
	cmp	eax, 5
	mov	rsp, rsp
	ja	.label_118
	add	esi, -0x37
	lea	rdi, [rdi]
	jmp	.label_116
	nop	dword ptr [rax + rax]
.label_118:
	add	esi, -0x30
.label_116:
	mov	rsp, rsp
	mov	ebp, esi
	mov	rsp, rsp
	add	ebp, edx
	nop	
	inc	rbx
	lea	rsi, [rsi]
	dec	ecx
	cmp	ecx, 1
	jg	.label_124
	cmp	ebp, 0x9f
	ja	.label_96
	mov	rbp, rbp
	lea	eax, [rbp - 0x24]
	nop	
	cmp	eax, 0x3c
	lea	rdi, [rdi]
	ja	.label_104
	nop	
	movabs	rcx, 0x1000000010000001
	nop	
	bt	rcx, rax
	jae	.label_104
.label_96:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	lea	rdi, [rdi]
	je	.label_104
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	edx, edx
	mov	esi, ebp
	lea	rsi, [rsi]
	call	print_unicode_char
	nop	
	jmp	.label_97
.label_125:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_101
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x5c
.label_117:
	nop	
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_97
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_110
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_120:
	lea	rbx, [r14 + 2]
	lea	rsi, [rsi]
	jmp	.label_97
.label_115:
	mov	rbx, rcx
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_119
	lea	rsi, [rsi]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
.label_97:
	not	r14d
	add	ebx, r14d
	mov	eax, ebx
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_126:
	movzx	esi, al
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_97
.label_119:
	mov	rsp, rsp
	movzx	esi, al
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_97
.label_501:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_132
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 8
	jmp	.label_97
.label_130:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_98
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], r12b
	jmp	.label_97
.label_503:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_113
	nop	
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x1b
	nop	
	jmp	.label_97
.label_504:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_112
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xc
	jmp	.label_97
.label_505:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_123
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_97
.label_506:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_129
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xd
	lea	rdi, [rdi]
	jmp	.label_97
.label_507:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_136
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 9
	mov	rsp, rsp
	jmp	.label_97
.label_508:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_105
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xb
	jmp	.label_97
.label_101:
	mov	esi, 0x5c
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_117
.label_110:
	mov	rbp, rbp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_120
.label_134:
	lea	rsi, [rsi]
	mov	esi, 7
	lea	rsi, [rsi]
	call	__overflow
	mov	rbp, rbp
	jmp	.label_97
.label_132:
	mov	esi, 8
	call	__overflow
	jmp	.label_97
.label_98:
	movzx	esi, r12b
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_97
.label_113:
	lea	rdi, [rdi]
	mov	esi, 0x1b
	call	__overflow
	nop	
	jmp	.label_97
.label_112:
	lea	rsi, [rsi]
	mov	esi, 0xc
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_97
.label_123:
	mov	esi, 0xa
	nop	
	call	__overflow
	jmp	.label_97
.label_129:
	mov	esi, 0xd
	mov	rsp, rsp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_97
.label_136:
	mov	rbp, rbp
	mov	esi, 9
	call	__overflow
	mov	rbp, rbp
	jmp	.label_97
.label_105:
	lea	rsi, [rsi]
	mov	esi, 0xb
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_97
.label_127:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_502:
	xor	edi, edi
	call	exit
.label_104:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r12d
	mov	rsp, rsp
	mov	r8d, r15d
	mov	r9d, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_139
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	jmp	.label_141
.label_139:
	nop	
	cmp	byte ptr [rbx], 0
	mov	rbp, rbp
	je	.label_140
	mov	rsp, rsp
	xor	edi, edi
	cmp	r14, rbx
	lea	rsi, [rsi]
	je	.label_137
	mov	esi, OFFSET FLAT:.str.43
	jmp	.label_138
.label_137:
	mov	esi, OFFSET FLAT:.str.42
.label_138:
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
.label_141:
	nop	
	call	error
	nop	
	mov	byte ptr [byte ptr [rip + exit_status]],  1
.label_140:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	rsp, rsp
	call	strtold
	mov	rbp, rbp
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_144
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	r12, rax
	lea	rdi, [rdi]
	jae	.label_143
	mov	qword ptr [rsp], rax
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_144
.label_143:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0xc]
.label_144:
	test	r14, r14
	mov	rbp, rbp
	je	.label_142
	mov	qword ptr [r14], r12
.label_142:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403110
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403120
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_146
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_145
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_145
.label_146:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_148
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_145:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_147
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_148:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_147:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403230

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_149
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_151
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_151
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_150
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_150:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_151:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_149:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403320
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403370
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_152
	test	rdx, rdx
	nop	
	je	.label_152
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_152:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403480
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403530

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_190:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_163
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_170]]
.label_465:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_466:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_197
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_197
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_217:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_211
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_211:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_217
.label_197:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_165
.label_458:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_165
.label_461:
	lea	rsi, [rsi]
	mov	al, 1
.label_459:
	mov	rbp, rbp
	mov	r12b, 1
.label_462:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_246
	lea	rsi, [rsi]
	mov	cl, al
.label_246:
	mov	rsp, rsp
	mov	al, cl
.label_460:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_254
	test	r10, r10
	je	.label_261
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_263
.label_254:
	xor	ecx, ecx
	jmp	.label_263
.label_463:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_273
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_277
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_158
.label_464:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_165
.label_261:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_263:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_165
.label_273:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_158
.label_277:
	lea	rdi, [rdi]
	mov	eax, 1
.label_158:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_165:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_166:
	nop	
	inc	rdi
.label_205:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_248
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_251
	jmp	.label_256
	nop	dword ptr [rax + rax]
.label_248:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_260
.label_251:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_268
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_271
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_271
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_271:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_182
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_184
	nop	dword ptr [rax + rax]
.label_268:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_182:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_235
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_184
	jmp	.label_173
.label_235:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_184:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_234
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_237]]
.label_444:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_213
	mov	rbp, rbp
	jmp	.label_244
.label_448:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_245
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_250
	nop	
	cmp	rbp, 1
	je	.label_244
	xor	r13d, r13d
	jmp	.label_169
.label_437:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_264
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_173
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_274
	mov	al, r14b
	and	al, 1
	jne	.label_276
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_157
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_157:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_167
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_167:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_176
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_176:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_175
.label_438:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_189
.label_439:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_194
.label_440:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_189
.label_441:
	mov	bl, 0x66
	jmp	.label_189
.label_442:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_194
.label_445:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_202
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_203
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_206
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_206:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_224
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_224:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_230
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_202:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_169
.label_446:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_243
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_213
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_213
	mov	rbp, rbp
	jmp	.label_255
.label_447:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_257
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_265
	lea	rdi, [rdi]
	jmp	.label_269
.label_234:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_233
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_161:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_174
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_174
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_169
.label_245:
	test	rdi, rdi
	jne	.label_196
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_196
.label_244:
	mov	dl, 1
.label_443:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_200
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_169
.label_264:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_166
	jmp	.label_213
.label_257:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_194
.label_265:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_171
.label_194:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_215
.label_189:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_169
	lea	rsi, [rsi]
	jmp	.label_193
.label_233:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_223
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_223:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_214:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_258
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_267
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_275
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_156
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_181:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_172
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_227
.label_172:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_181
.label_156:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_210
	xor	r13d, r13d
.label_210:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_214
	mov	rsp, rsp
	jmp	.label_161
.label_196:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_169
.label_243:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_213
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_213
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_213
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_222
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_252
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_228
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_232
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_232:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_240
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_240:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_249
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_249:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_185
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_185:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_169
.label_213:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_169:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_153
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_160
	lea	rsi, [rsi]
	jmp	.label_164
.label_153:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_164
.label_160:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_168
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_178
	nop	word ptr cs:[rax + rax]
.label_164:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_178:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_171
	mov	rsp, rsp
	jmp	.label_193
.label_168:
	mov	bl, r15b
.label_193:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_173
	nop	
	cmp	r9d, 2
	jne	.label_262
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_262
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_192
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_192:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_207
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_207:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_262:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_220
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_220:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_259
.label_250:
	xor	r13d, r13d
	nop	
	jmp	.label_169
.label_174:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_226
	nop	dword ptr [rax + rax]
.label_208:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_226:
	test	cl, cl
	je	.label_236
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_238
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_242
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_242:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_238
	nop	dword ptr [rax]
.label_236:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_173
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_266
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_266
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_183
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_183:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_154
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_154:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_209
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_209:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_266:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_179
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_179:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_187
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_187:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_199
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_199:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_238:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_171
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_218
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_218
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_221
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_221:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_225
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_225:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_218:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_208
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_208
	nop	word ptr cs:[rax + rax]
.label_171:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_253
	mov	rsp, rsp
	and	al, 1
	jne	.label_253
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_191
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_191:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_270
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_270:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_253:
	mov	rsp, rsp
	mov	bl, r15b
.label_259:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_177
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_177:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_166
.label_274:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_175
.label_276:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_175:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_180
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_180:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_231
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_195
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_247
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_201
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_201:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_204
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_204:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_169
.label_231:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_169
.label_195:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_169
.label_247:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_169
.label_267:
	xor	r13d, r13d
.label_258:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_161
.label_275:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_229
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_241:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_239
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_241
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_161
.label_229:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_161
.label_239:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_161
.label_222:
	xor	r13d, r13d
	jmp	.label_169
.label_252:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_169
.label_256:
	nop	
	mov	r13, rdi
.label_260:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_272
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_159
.label_272:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_162
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_162
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_186
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_162
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_190
.label_162:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_198
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_198
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_198
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_216:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_212
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_212:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_216
.label_198:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_219
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_219
.label_200:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_173
.label_227:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_173
.label_159:
	nop	
	mov	rbp, r13
	jmp	.label_173
.label_215:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_173:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_155:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_219:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_186:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_155
.label_203:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_173
.label_269:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_173
.label_255:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_173
.label_228:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_173
.label_163:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_278
	mov	qword ptr [rax], rbx
.label_278:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_279
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_283:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_283
.label_279:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_282
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_280]], OFFSET FLAT:slot0
.label_282:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_281
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_281:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e00
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_290
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_285
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_288
.label_285:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_286
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_289
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_289:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_288:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_287
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_284
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_284:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_287:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_290:
	lea	rdi, [rdi]
	call	abort
.label_286:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405080
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_291
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_291:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405180
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_292
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_292:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_293
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_293:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_294
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_294:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405320
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_295]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4053c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405540
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_298
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_298:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_299
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_299
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_299:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4056b0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_300
	test	rdx, rdx
	je	.label_300
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_300:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_301
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_301
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_301:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_302
	test	rsi, rsi
	je	.label_302
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_302:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405880
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405900

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_304
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_306
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_303
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_303
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_303
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_303
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_303
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_303
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_304
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_304
.label_306:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_303
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_303
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_303
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_303
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_303
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_303
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_305
.label_303:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_304:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_305:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_304
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_304
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a70

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al,  byte ptr [byte ptr [rip + unicode_to_mb.initialized]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_316
	mov	rsp, rsp
	call	locale_charset
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	nop	
	mov	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  eax
	je	.label_314
	nop	
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	iconv_open
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
	lea	rdi, [rdi]
	cmp	rax, -1
	jne	.label_314
	mov	edi, OFFSET FLAT:.str.1_2
	mov	esi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
.label_314:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + unicode_to_mb.initialized]],  1
.label_316:
	mov	ecx,  dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]]
	lea	rsi, [rsi]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_313
	cmp	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  -1
	lea	rdi, [rdi]
	jne	.label_313
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2_1
	jmp	.label_310
.label_313:
	lea	rdi, [rdi]
	cmp	ebp, 0x7f
	mov	rbp, rbp
	ja	.label_307
	mov	byte ptr [rsp + 0xa], bpl
	mov	esi, 1
	jmp	.label_312
.label_307:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa]
	mov	edx, 6
	mov	esi, ebp
	lea	rdi, [rdi]
	call	u8_uctomb_aux
	nop	
	test	eax, eax
	mov	rbp, rbp
	js	.label_317
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]]
	movsxd	rsi, eax
.label_312:
	test	ecx, ecx
	je	.label_309
	lea	rdi, [rsp + 0xa]
	mov	rsp, rsp
	jmp	.label_311
.label_309:
	lea	rax, [rsp + 0xa]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rsi
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x30]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x28], 0x19
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x18]
	nop	
	lea	rdx, [rsp + 0x20]
	nop	
	lea	rcx, [rsp + 0x10]
	lea	rsi, [rsi]
	lea	r8, [rsp + 0x28]
	mov	rbp, rbp
	call	iconv
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_315
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	jne	.label_315
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x28]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_315
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	sub	rsi, r12
	mov	rbp, rbp
	mov	rdi, r12
.label_311:
	mov	rdx, r13
	nop	
	call	r15
	jmp	.label_308
.label_315:
	xor	esi, esi
	jmp	.label_310
.label_317:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3_0
.label_310:
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsp, rsp
	mov	rdx, r13
	call	r14
.label_308:
	mov	rsp, rsp
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c80

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	fwrite
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rcx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	nop	
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsp, rsp
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	mov	rsp, rsp
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	lea	rsi, [rsi]
	jmp	unicode_to_mb
	nop	
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	nop
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_318
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	edx, 5
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_319
.label_318:
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_319:
	mov	rax, -1
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405da0

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	nop	
	mov	r8, rdx
	mov	ecx, edi
	lea	rdi, [rdi]
	mov	esi, 1
	cmp	ecx, 0xffff
	lea	rdi, [rdi]
	ja	.label_320
	mov	edx, OFFSET FLAT:.str.6_0
	jmp	.label_321
.label_320:
	mov	edx, OFFSET FLAT:.str.7_0
.label_321:
	nop	
	xor	eax, eax
	mov	rdi, r8
	lea	rdi, [rdi]
	call	__fprintf_chk
	nop	
	mov	rax, -1
	pop	rcx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	lea	rsi, [rsi]
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_323
	mov	r8d, 2
	cmp	esi, 0x800
	nop	
	jb	.label_322
	cmp	esi, 0xffff
	ja	.label_327
	lea	rsi, [rsi]
	mov	ecx, esi
	and	ecx, 0xfffff800
	lea	rdi, [rdi]
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	lea	rdi, [rdi]
	jne	.label_322
	lea	rdi, [rdi]
	jmp	.label_323
.label_327:
	mov	eax, 0xffffffff
	mov	r8d, 4
	nop	
	cmp	esi, 0x10ffff
	ja	.label_323
.label_322:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	lea	rdi, [rdi]
	jg	.label_323
	cmp	r8d, 2
	je	.label_324
	cmp	r8d, 3
	je	.label_326
	mov	rsp, rsp
	cmp	r8d, 4
	lea	rdi, [rdi]
	jne	.label_325
	mov	eax, esi
	and	eax, 0x3f
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	lea	rdi, [rdi]
	or	esi, 0x10000
.label_326:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	nop	
	shr	esi, 6
	or	esi, 0x800
.label_324:
	mov	rbp, rbp
	mov	eax, esi
	and	eax, 0x3f
	lea	rsi, [rsi]
	or	eax, 0x80
	nop	
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	lea	rsi, [rsi]
	or	esi, 0xc0
	mov	rbp, rbp
	mov	byte ptr [rdi], sil
.label_325:
	nop	
	mov	eax, r8d
.label_323:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_332
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_337
.label_332:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_337:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_335
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_334]]
.label_482:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_335:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_329
.label_483:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_484:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_485:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_336
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_333
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_331
.label_488:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_331:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_333:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_336:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_328
.label_490:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_329:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_330
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_330:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_328:
	mov	rbp, rbp
	call	__fprintf_chk
.label_481:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_338:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_338
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406310
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_340:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_339
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_341
	nop	word ptr cs:[rax + rax]
.label_339:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_341:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_342
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_340
.label_342:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_343
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_343:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_345:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_344
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_346
	nop	dword ptr [rax + rax]
.label_344:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_346:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_347
	inc	r9
	cmp	r9, 0xa
	jb	.label_345
.label_347:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x406570
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_348
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_349
	test	rax, rax
	je	.label_348
.label_349:
	nop	
	pop	rbx
	ret	
.label_348:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_350
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_351
.label_350:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_351:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_353
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_352
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_352
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_352:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_354
	test	rax, rax
	je	.label_353
.label_354:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_353:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406670

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_355
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_355
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_355:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_356
	test	rax, rax
	nop	
	je	.label_357
.label_356:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_357:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_358
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_362
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_361
.label_358:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_364
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_364:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_359
.label_361:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_360
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_360
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_360:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_363
	test	rax, rax
	mov	rbp, rbp
	je	.label_362
.label_363:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_362:
	call	xalloc_die
.label_359:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	mov	rbp, rbp
	je	.label_366
.label_365:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4067c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_367
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_370
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_371
	call	free
	xor	eax, eax
	jmp	.label_368
.label_367:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_369
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_371:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_368
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_369
.label_368:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_369:
	mov	rbp, rbp
	call	xalloc_die
.label_370:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406850
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_372
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_373
.label_372:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_373:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_374
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_374
	pop	rcx
	ret	
.label_374:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4068e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_376
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_375
.label_376:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_375:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406940
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_377
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_378
.label_377:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_378:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4069a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069f0

	.globl xprintf
	.type xprintf, @function
xprintf:
	mov	rsp, rsp
	sub	rsp, 0xc8
	lea	rdi, [rdi]
	test	al, al
	je	.label_379
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x50], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_379:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	nop	
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	lea	rsi, [rsp + 0xb0]
	call	xvprintf
	add	rsp, 0xc8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406aa0

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rax, rsi
	nop	
	mov	rcx, rdi
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jns	.label_380
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	ferror
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_380
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_380:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b40
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xd0
	mov	rbp, rbp
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	nop	
	test	al, al
	je	.label_381
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x80], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm4
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_381:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	nop	
	mov	qword ptr [rsp + 0x38], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	mov	rsp, rsp
	jns	.label_382
	mov	rdi, r14
	lea	rsi, [rsi]
	call	ferror
	test	eax, eax
	jne	.label_382
	lea	rsi, [rsi]
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, r14d
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
.label_382:
	nop	
	mov	eax, ebx
	nop	
	add	rsp, 0xd0
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c90
	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:

	push	rbp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	esi, 1
	mov	rdx, rcx
	nop	
	mov	rcx, rax
	nop	
	call	__vfprintf_chk
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	jns	.label_383
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	ferror
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_383
	lea	rsi, [rsi]
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
.label_383:
	mov	eax, ebp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406d30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_384
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_385
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_385
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_384:
	mov	ecx, 1
.label_385:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406da0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_386
	nop	
	cmp	r15, -2
	jb	.label_386
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_386
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_386:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e30

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r15, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	mov	rsp, rsp
	jne	.label_389
	lea	rdi, [rdi]
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_7
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_389:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdi, rdi
	je	.label_391
	call	uselocale
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_390
	mov	rdi, r14
	mov	rsi, r15
	mov	rsp, rsp
	call	strtold
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	uselocale
	test	rax, rax
	je	.label_388
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_387
.label_391:
	lea	rsi, [rsi]
	fldz	
	test	r15, r15
	nop	
	je	.label_387
	mov	qword ptr [r15], r14
	jmp	.label_387
.label_390:
	fldz	
	mov	rsp, rsp
	test	r15, r15
	je	.label_387
	lea	rdi, [rdi]
	mov	qword ptr [r15], r14
.label_387:
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_388:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f20

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_392
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_393
	test	cl, cl
	mov	rsp, rsp
	jne	.label_393
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_393
.label_392:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_393
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_393:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_395
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_394
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_396
.label_394:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_395
.label_396:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_395:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407000

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_2
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_397
	nop	
	mov	rax, rcx
.label_397:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407040

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_398
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_400
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_398
.label_400:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_398
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_399
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_399:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_398:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_401
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_401
	test	byte ptr [rbx + 1], 1
	je	.label_401
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_401:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407130

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_402
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_402
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_403
.label_402:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_403:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_404
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_404:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4071e0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]