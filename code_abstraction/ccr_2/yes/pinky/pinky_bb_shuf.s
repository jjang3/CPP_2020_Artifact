	.section	.text
	.align	16
	#Procedure 0x4018f9
	.globl sub_4018f9
	.type sub_4018f9, @function
sub_4018f9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4018fa
	.globl sub_4018fa
	.type sub_4018fa, @function
sub_4018fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401932
	.globl sub_401932
	.type sub_401932, @function
sub_401932:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40197a
	.globl sub_40197a
	.type sub_40197a, @function
sub_40197a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40199c
	.globl sub_40199c
	.type sub_40199c, @function
sub_40199c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019ad
	.globl sub_4019ad
	.type sub_4019ad, @function
sub_4019ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019c6
	.globl sub_4019c6
	.type sub_4019c6, @function
sub_4019c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019d0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019e3
	.globl sub_4019e3
	.type sub_4019e3, @function
sub_4019e3:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4019f5
	.globl sub_4019f5
	.type sub_4019f5, @function
sub_4019f5:

	nop	dword ptr [rax + rax]
.label_11:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_9
.label_10:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a11
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_9
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_11
	test	rbx, rbx
	jne	.label_11
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a40
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_12
	test	rdx, rdx
	je	.label_12
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_12:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401a6b
	.globl sub_401a6b
	.type sub_401a6b, @function
sub_401a6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a70
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401adf
	.globl sub_401adf
	.type sub_401adf, @function
sub_401adf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ae0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b16
	.globl sub_401b16
	.type sub_401b16, @function
sub_401b16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b20
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_16
	add	rax, rbx
	nop	dword ptr [rax]
.label_17:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_16
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_17
.label_16:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b7d
	.globl sub_401b7d
	.type sub_401b7d, @function
sub_401b7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b80
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi, dword ptr [rip + last_cherror]
	jmp	gai_strerror
	.section	.text
	.align	16
	#Procedure 0x401b8b
	.globl sub_401b8b
	.type sub_401b8b, @function
sub_401b8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bfe
	.globl sub_401bfe
	.type sub_401bfe, @function
sub_401bfe:

	nop	
.label_18:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401c0c
	.globl sub_401c0c
	.type sub_401c0c, @function
sub_401c0c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c18

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_18
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_20
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_18
.label_20:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_18
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_19
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_19:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c80
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c91
	.globl sub_401c91
	.type sub_401c91, @function
sub_401c91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ca0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_21
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_23
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_23
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_26
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_26:
	mov	rbx, r14
.label_23:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_21:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_22
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d41
	.globl sub_401d41
	.type sub_401d41, @function
sub_401d41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_33
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_39
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_39
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_35
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_33:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401f33
	.globl sub_401f33
	.type sub_401f33, @function
sub_401f33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f40

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_162:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_159
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_158]
.label_549:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_52
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_57
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_550:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_68
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_68
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_85:
	cmp	r14, r11
	jae	.label_104
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_104:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_85
.label_68:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_48
.label_542:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_48
.label_545:
	mov	al, 1
.label_543:
	mov	r12b, 1
.label_546:
	test	r12b, 1
	mov	cl, 1
	je	.label_98
	mov	ecx, eax
.label_98:
	mov	al, cl
.label_544:
	test	r12b, 1
	jne	.label_101
	test	r11, r11
	je	.label_74
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_74:
	mov	r14d, 1
	jmp	.label_106
.label_101:
	xor	r14d, r14d
.label_106:
	mov	ecx, OFFSET FLAT:label_57
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_48
.label_547:
	test	r12b, 1
	jne	.label_119
	test	r11, r11
	je	.label_121
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_121:
	mov	r14d, 1
	jmp	.label_123
.label_548:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_48
.label_119:
	xor	r14d, r14d
.label_123:
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_48:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_142
	.section	.text
	.align	16
	#Procedure 0x40222d
	.globl sub_40222d
	.type sub_40222d, @function
sub_40222d:

	nop	dword ptr [rax]
.label_86:
	inc	rsi
.label_142:
	cmp	rbp, -1
	je	.label_61
	cmp	rsi, rbp
	jne	.label_62
	jmp	.label_64
	.section	.text
	.align	16
	#Procedure 0x402243
	.globl sub_402243
	.type sub_402243, @function
sub_402243:

	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_69
.label_62:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_76
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_79
	cmp	rbp, -1
	jne	.label_79
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_79:
	cmp	rbx, rbp
	jbe	.label_90
.label_76:
	xor	r8d, r8d
.label_113:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_65
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_92]
.label_464:
	test	rsi, rsi
	jne	.label_87
	jmp	.label_96
	.section	.text
	.align	16
	#Procedure 0x4022e5
	.globl sub_4022e5
	.type sub_4022e5, @function
sub_4022e5:

	nop	word ptr cs:[rax + rax]
.label_90:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_110
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_113
	jmp	.label_56
.label_110:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_113
.label_468:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_132
	test	rsi, rsi
	jne	.label_133
	cmp	rbp, 1
	je	.label_96
	xor	r13d, r13d
	jmp	.label_70
.label_457:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_140
	cmp	byte ptr [rsp + 6], 0
	jne	.label_100
	cmp	r12d, 2
	jne	.label_145
	mov	eax, r9d
	and	al, 1
	jne	.label_145
	cmp	r14, r11
	jae	.label_148
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_148:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_152:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_108
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_108:
	add	r14, 3
	mov	r9b, 1
.label_145:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_143
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_143:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_47
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_47
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_47
	cmp	r14, r11
	jae	.label_116
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_116:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_127
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_127:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_70
.label_458:
	mov	bl, 0x62
	jmp	.label_66
.label_459:
	mov	cl, 0x74
	jmp	.label_81
.label_460:
	mov	bl, 0x76
	jmp	.label_66
.label_461:
	mov	bl, 0x66
	jmp	.label_66
.label_462:
	mov	cl, 0x72
	jmp	.label_81
.label_465:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_84
	cmp	byte ptr [rsp + 6], 0
	jne	.label_49
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_89
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_89:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_94
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_94:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_99
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_99:
	add	r14, 3
	xor	r9d, r9d
.label_84:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_70
.label_466:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_107
	cmp	r12d, 2
	jne	.label_87
	cmp	byte ptr [rsp + 6], 0
	je	.label_87
	jmp	.label_49
.label_467:
	cmp	r12d, 2
	jne	.label_120
	cmp	byte ptr [rsp + 6], 0
	jne	.label_49
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_77
.label_65:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_129
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_82:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_144
	test	r8b, r8b
	je	.label_144
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_70
.label_132:
	test	rsi, rsi
	jne	.label_164
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_164
.label_96:
	mov	dl, 1
.label_463:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_49
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_70:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_55
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_102
	jmp	.label_60
	.section	.text
	.align	16
	#Procedure 0x402634
	.globl sub_402634
	.type sub_402634, @function
sub_402634:

	nop	word ptr cs:[rax + rax]
.label_55:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_60
.label_102:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_146
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_77
	jmp	.label_80
	.section	.text
	.align	16
	#Procedure 0x40267d
	.globl sub_40267d
	.type sub_40267d, @function
sub_40267d:

	nop	dword ptr [rax]
.label_60:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_80
	jmp	.label_77
.label_146:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_80
.label_140:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_86
	xor	r15d, r15d
	jmp	.label_87
.label_120:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_81
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_77
.label_81:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_49
.label_66:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_70
	nop	word ptr cs:[rax + rax]
.label_80:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_100
	cmp	r12d, 2
	jne	.label_103
	mov	eax, r9d
	and	al, 1
	jne	.label_103
	cmp	r14, r11
	jae	.label_59
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_59:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_111
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_111:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_166
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_166:
	add	r14, 3
	mov	r9b, 1
.label_103:
	cmp	r14, r11
	jae	.label_138
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_138:
	inc	r14
	jmp	.label_126
.label_129:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_130
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_130:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_72:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_150
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_154
	cmp	rbp, -2
	je	.label_118
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_71
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_141:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_105
	bt	rsi, rdx
	jb	.label_58
.label_105:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_141
.label_71:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_165
	xor	r13d, r13d
.label_165:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_72
	jmp	.label_82
.label_47:
	xor	r13d, r13d
	jmp	.label_70
.label_164:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_70
.label_107:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_87
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_87
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_87
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_91
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_95
	cmp	byte ptr [rsp + 6], 0
	jne	.label_131
	cmp	r14, r11
	jae	.label_137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_137:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_46
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_46:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_109
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_109:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_136
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_136:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_70
.label_87:
	xor	eax, eax
.label_133:
	xor	r13d, r13d
	jmp	.label_70
.label_144:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_128
	.section	.text
	.align	16
	#Procedure 0x402962
	.globl sub_402962
	.type sub_402962, @function
sub_402962:

	nop	word ptr cs:[rax + rax]
.label_88:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_128:
	test	r8b, r8b
	je	.label_97
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_134
	cmp	r14, r11
	jae	.label_122
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_122:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_134
	.section	.text
	.align	16
	#Procedure 0x4029ac
	.globl sub_4029ac
	.type sub_4029ac, @function
sub_4029ac:

	nop	dword ptr [rax]
.label_97:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_56
	cmp	r12d, 2
	jne	.label_149
	mov	eax, r9d
	and	al, 1
	jne	.label_149
	cmp	r14, r11
	jae	.label_153
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_153:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_156
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_160
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_160:
	add	r14, 3
	mov	r9b, 1
.label_149:
	cmp	r14, r11
	jae	.label_51
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_51:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_53
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_53:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_163
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_163:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_134:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_77
	test	r9b, 1
	je	.label_78
	mov	ebx, eax
	and	bl, 1
	jne	.label_78
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_63
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_63:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_73
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_73:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_78:
	cmp	r14, r11
	jae	.label_88
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_88
	.section	.text
	.align	16
	#Procedure 0x402ab3
	.globl sub_402ab3
	.type sub_402ab3, @function
sub_402ab3:

	nop	word ptr cs:[rax + rax]
.label_77:
	test	r9b, 1
	je	.label_83
	and	al, 1
	jne	.label_83
	cmp	r14, r11
	jae	.label_93
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_93:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_167
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	add	r14, 2
	xor	r9d, r9d
.label_83:
	mov	ebx, r15d
.label_126:
	cmp	r14, r11
	jae	.label_151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_151:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_86
.label_154:
	xor	r13d, r13d
.label_150:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_82
.label_118:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_117
	mov	rsi, qword ptr [rsp + 0x58]
.label_124:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_155
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_124
	xor	r13d, r13d
	jmp	.label_82
.label_117:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_82
.label_155:
	xor	r13d, r13d
	jmp	.label_82
.label_91:
	xor	r13d, r13d
	jmp	.label_70
.label_95:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x402b88
	.globl sub_402b88
	.type sub_402b88, @function
sub_402b88:

	nop	dword ptr [rax + rax]
.label_64:
	mov	rcx, rsi
.label_69:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_139
	or	al, dl
	je	.label_161
.label_139:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_147
	or	al, dl
	jne	.label_147
	test	r10b, 1
	jne	.label_157
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_147
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_162
.label_147:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_50
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_54
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_54
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_67:
	cmp	r14, r11
	jae	.label_135
	mov	byte ptr [rcx + r14], al
.label_135:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_67
	jmp	.label_54
.label_100:
	mov	qword ptr [rsp + 0x20], rbp
.label_56:
	mov	rdx, rdi
	jmp	.label_75
.label_49:
	mov	qword ptr [rsp + 0x20], rbp
.label_58:
	mov	rdx, rdi
	mov	eax, 2
.label_114:
	mov	qword ptr [rsp + 0x38], rax
.label_75:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_112:
	mov	r14, rax
.label_115:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_161:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_75
.label_157:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_112
.label_50:
	mov	rcx, qword ptr [rsp + 8]
.label_54:
	cmp	r14, r11
	jae	.label_115
	mov	byte ptr [rcx + r14], 0
	jmp	.label_115
.label_131:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_114
.label_159:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402d47
	.globl sub_402d47
	.type sub_402d47, @function
sub_402d47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

	.globl print_entry
	.type print_entry, @function
print_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	rbx, rdi
	mov	cl, byte ptr [rbx + 8]
	cmp	cl, 0x2f
	jne	.label_193
	lea	rax, [rsp]
	jmp	.label_200
.label_193:
	lea	rax, [rsp + 5]
	mov	word ptr [rsp + 4], 0x2f
	mov	dword ptr [rsp], 0x7665642f
.label_200:
	test	cl, cl
	je	.label_169
	lea	rdx, [rbx + 0x28]
	lea	rsi, [rbx + 9]
	inc	rax
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_180:
	mov	rax, rdi
	mov	byte ptr [rax - 1], cl
	cmp	rsi, rdx
	jae	.label_169
	movzx	ecx, byte ptr [rsi]
	inc	rsi
	lea	rdi, [rax + 1]
	test	cl, cl
	jne	.label_180
.label_169:
	mov	byte ptr [rax], 0
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x138]
	mov	edi, 1
	call	__xstat
	mov	r15d, 0x3f
	xor	r13d, r13d
	test	eax, eax
	jne	.label_194
	test	byte ptr [rsp + 0x150], 0x10
	mov	eax, 0x20
	mov	r15d, 0x2a
	cmovne	r15d, eax
	mov	r13, qword ptr [rsp + 0x180]
.label_194:
	lea	r14, [rbx + 8]
	lea	rbp, [rbx + 0x2c]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 0x20
	xor	eax, eax
	mov	rcx, rbp
	call	__printf_chk
	mov	al, byte ptr [rip + include_fullname]
	test	al, al
	jne	.label_176
	lea	rax, [rsp + 0x30]
	lea	rcx, [rbx + 0x4c]
	nop	word ptr cs:[rax + rax]
.label_190:
	movzx	edx, byte ptr [rbp]
	test	dl, dl
	je	.label_188
	inc	rbp
	mov	byte ptr [rax], dl
	inc	rax
	cmp	rbp, rcx
	jb	.label_190
.label_188:
	mov	byte ptr [rax], 0
	lea	rdi, [rsp + 0x30]
	call	getpwnam
	mov	rbp, rax
	test	rbp, rbp
	je	.label_198
	mov	r12, qword ptr [rbp + 0x18]
	mov	esi, 0x2c
	mov	rdi, r12
	call	strchr
	test	rax, rax
	je	.label_204
	mov	byte ptr [rax], 0
	mov	r12, qword ptr [rbp + 0x18]
.label_204:
	mov	rsi, qword ptr [rbp]
	mov	rdi, r12
	call	create_fullname
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_173
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	jmp	.label_176
.label_198:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_189
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_176:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_195
	mov	ecx, 0x20
	xor	eax, eax
	mov	edx, r15d
	mov	r8, r14
	call	__printf_chk
	mov	al, byte ptr [rip + include_idle]
	test	al, al
	jne	.label_203
	test	r13, r13
	je	.label_170
	mov	rcx, qword ptr [rip + idle_string.now]
	test	rcx, rcx
	jne	.label_172
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
	mov	rcx, qword ptr [rip + idle_string.now]
.label_172:
	sub	rcx, r13
	mov	ebp, OFFSET FLAT:label_181
	cmp	rcx, 0x3c
	jl	.label_178
	cmp	rcx, 0x1517f
	jg	.label_187
	mov	rax, rcx
	shr	rax, 4
	movabs	rdx, 0x91a2b3c4d5e6f81
	mul	rdx
	mov	r8, rdx
	shr	r8, 3
	imul	rax, r8, 0xe10
	sub	rcx, rax
	movabs	rdx, 0x8888888888888889
	mov	rax, rcx
	mul	rdx
	mov	r9, rdx
	shr	r9, 5
	mov	ebp, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_191
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_178
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_185
.label_187:
	movabs	rdx, 0xc22e450672894ab7
	mov	rax, rcx
	mul	rdx
	mov	r8, rdx
	shr	r8, 0x10
	mov	ebp, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_192
	xor	eax, eax
	call	__sprintf_chk
.label_178:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rdx, rbp
.label_185:
	call	__printf_chk
.label_203:
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rsp + 0x30]
	call	localtime
	test	rax, rax
	je	.label_182
	mov	rdx, qword ptr [rip + time_format]
	mov	ebp, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_201
.label_182:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	rbp, rax
.label_201:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	mov	al, byte ptr [rip + include_where]
	test	al, al
	jne	.label_171
	mov	cl, byte ptr [rbx + 0x4c]
	test	cl, cl
	je	.label_171
	lea	rax, [rbx + 0x14c]
	add	rbx, 0x4d
	lea	rsi, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_186:
	mov	rdx, rsi
	mov	byte ptr [rdx - 1], cl
	cmp	rbx, rax
	jae	.label_183
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	lea	rsi, [rdx + 1]
	test	cl, cl
	jne	.label_186
.label_183:
	mov	byte ptr [rdx], 0
	lea	r14, [rsp + 0x30]
	mov	esi, 0x3a
	mov	rdi, r14
	call	strchr
	xor	ebp, ebp
	test	rax, rax
	je	.label_197
	mov	rbp, rax
	inc	rbp
	mov	byte ptr [rax], 0
.label_197:
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_202
	lea	rdi, [rsp + 0x30]
	call	canon_host
	mov	rbx, rax
.label_202:
	test	rbx, rbx
	cmovne	r14, rbx
	mov	edi, 1
	test	rbp, rbp
	je	.label_168
	mov	esi, OFFSET FLAT:label_174
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	__printf_chk
	jmp	.label_199
.label_168:
	mov	esi, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
.label_199:
	test	rbx, rbx
	je	.label_171
	mov	rdi, r14
	call	free
.label_171:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_177
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_205:
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_177:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x40317f
	.globl sub_40317f
	.type sub_40317f, @function
sub_40317f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403180
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031d4
	.globl sub_4031d4
	.type sub_4031d4, @function
sub_4031d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_207
	test	rdx, rdx
	je	.label_207
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_207:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40324a
	.globl sub_40324a
	.type sub_40324a, @function
sub_40324a:

	nop	word ptr [rax + rax]
.label_209:
	call	xalloc_die
.label_208:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_210
	test	rax, rax
	je	.label_209
.label_210:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403269

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_208
	test	rbx, rbx
	jne	.label_208
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403280
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_211
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_211:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4032ec
	.globl sub_4032ec
	.type sub_4032ec, @function
sub_4032ec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_212
	test	rsi, rsi
	je	.label_212
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_212:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403360
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403379
	.globl sub_403379
	.type sub_403379, @function
sub_403379:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_213
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_213:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4033e8
	.globl sub_4033e8
	.type sub_4033e8, @function
sub_4033e8:

	nop	dword ptr [rax + rax]
.label_214:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4033f5
	.globl sub_4033f5
	.type sub_4033f5, @function
sub_4033f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403400
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_214
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_215
	test	rax, rax
	je	.label_214
.label_215:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403430
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_216
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_218:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_218
.label_216:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_219
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_220], OFFSET FLAT:slot0
.label_219:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_217
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_217:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034c1
	.globl sub_4034c1
	.type sub_4034c1, @function
sub_4034c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_221:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_221
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x4034f1
	.globl sub_4034f1
	.type sub_4034f1, @function
sub_4034f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403518
	.globl sub_403518
	.type sub_403518, @function
sub_403518:

	nop	dword ptr [rax + rax]
.label_226:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_222
	mov	eax, OFFSET FLAT:label_223
	jmp	.label_224
	.section	.text
	.align	16
	#Procedure 0x40352f
	.globl sub_40352f
	.type sub_40352f, @function
sub_40352f:

	nop	word ptr cs:[rax + rax]
.label_229:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_225
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_225
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_225
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_225
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_225
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_225
	cmp	byte ptr [rax + 7], 0
	je	.label_226
.label_225:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_125
	mov	eax, OFFSET FLAT:label_57
.label_224:
	cmove	rax, rcx
.label_230:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403582

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_230
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_229
	cmp	ecx, 0x55
	jne	.label_225
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_225
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_225
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_225
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_225
	cmp	byte ptr [rax + 5], 0
	jne	.label_225
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_227
	mov	eax, OFFSET FLAT:label_228
	jmp	.label_224
.label_231:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4035f5
	.globl sub_4035f5
	.type sub_4035f5, @function
sub_4035f5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4035f7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_231
	test	rdx, rdx
	je	.label_231
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403660
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_232
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_234
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_238
.label_234:
	call	xalloc_die
.label_237:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403697
	.globl sub_403697
	.type sub_403697, @function
sub_403697:

	nop	word ptr [rax + rax]
.label_232:
	test	rcx, rcx
	jne	.label_233
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_233:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_237
.label_238:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_235
	test	rbx, rbx
	jne	.label_235
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_235:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_236
	test	rax, rax
	je	.label_234
.label_236:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403700
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403708
	.globl sub_403708
	.type sub_403708, @function
sub_403708:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403710
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_240
	test	r14, r14
	je	.label_239
.label_240:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_239:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403746
	.globl sub_403746
	.type sub_403746, @function
sub_403746:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl create_fullname
	.type create_fullname, @function
create_fullname:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	call	strlen
	mov	r15, rax
	xor	ebx, ebx
	mov	rax, r12
	nop	
.label_249:
	movzx	ecx, byte ptr [rax]
	xor	edx, edx
	cmp	cl, 0x26
	sete	dl
	add	rbx, rdx
	inc	rax
	test	cl, cl
	jne	.label_249
	inc	r15
	test	rbx, rbx
	je	.label_242
	mov	rdi, r14
	call	strlen
	mov	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_246
	imul	rcx, rbx
	mov	rax, rcx
	sub	rax, rbx
	add	r15, rax
	cmp	r15, rcx
	jb	.label_246
.label_242:
	mov	rdi, r15
	call	xmalloc
	lea	r13, [r14 + 1]
	mov	qword ptr [rsp], rax
	mov	rbp, rax
	jmp	.label_245
	.section	.text
	.align	16
	#Procedure 0x4037db
	.globl sub_4037db
	.type sub_4037db, @function
sub_4037db:

	nop	dword ptr [rax + rax]
.label_241:
	mov	bl, byte ptr [r14]
	movzx	r15d, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r15*2 + 1], 2
	jne	.label_248
	mov	rax, r14
	jmp	.label_250
	.section	.text
	.align	16
	#Procedure 0x4037fc
	.globl sub_4037fc
	.type sub_4037fc, @function
sub_4037fc:

	nop	dword ptr [rax]
.label_247:
	inc	r12
.label_245:
	mov	al, byte ptr [r12]
	cmp	al, 0x26
	je	.label_241
	test	al, al
	je	.label_244
	mov	byte ptr [rbp], al
	inc	rbp
	inc	r12
	jmp	.label_245
	.section	.text
	.align	16
	#Procedure 0x40381a
	.globl sub_40381a
	.type sub_40381a, @function
sub_40381a:

	nop	word ptr [rax + rax]
.label_248:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r15*4]
	mov	byte ptr [rbp], al
	inc	rbp
	mov	bl, byte ptr [r13]
	mov	rax, r13
.label_250:
	test	bl, bl
	je	.label_247
	inc	rax
.label_243:
	mov	byte ptr [rbp], bl
	inc	rbp
	movzx	ebx, byte ptr [rax]
	inc	rax
	test	bl, bl
	jne	.label_243
	jmp	.label_247
.label_246:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403857
	.globl sub_403857
	.type sub_403857, @function
sub_403857:

	nop	
.label_244:
	mov	byte ptr [rbp], 0
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403870
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40387a
	.globl sub_40387a
	.type sub_40387a, @function
sub_40387a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403880

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_251
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_251
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_252
.label_251:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_252:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_253
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_253:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038ee
	.globl sub_4038ee
	.type sub_4038ee, @function
sub_4038ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4038f0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_254
	test	r15, r15
	je	.label_255
.label_254:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_255:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40392c
	.globl sub_40392c
	.type sub_40392c, @function
sub_40392c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403930
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40393f
	.globl sub_40393f
	.type sub_40393f, @function
sub_40393f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403940
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_256
	test	rax, rax
	je	.label_257
.label_256:
	pop	rbx
	ret	
.label_257:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40395a
	.globl sub_40395a
	.type sub_40395a, @function
sub_40395a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_258
	mov	qword ptr [rax], rbx
.label_258:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a4c
	.globl sub_403a4c
	.type sub_403a4c, @function
sub_403a4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a50
	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:

	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_261
	xor	ebx, ebx
	test	r14, r14
	je	.label_259
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_259
.label_261:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_260
	test	rbx, rbx
	jne	.label_260
	mov	dword ptr [r14], 0xfffffff6
.label_260:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_259:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403acd
	.globl sub_403acd
	.type sub_403acd, @function
sub_403acd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403ada
	.globl sub_403ada
	.type sub_403ada, @function
sub_403ada:

	nop	word ptr [rax + rax]
.label_263:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_265
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_266:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_263
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_264
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403b52

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_267
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_266
	cmp	dword ptr [rbp], 0x20
	jne	.label_266
.label_267:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_268
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_268:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403ba0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403baf
	.globl sub_403baf
	.type sub_403baf, @function
sub_403baf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403bb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_270
	cmp	byte ptr [rax], 0x43
	jne	.label_272
	cmp	byte ptr [rax + 1], 0
	je	.label_269
.label_272:
	mov	esi, OFFSET FLAT:label_271
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_270
.label_269:
	xor	ebx, ebx
.label_270:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403be1
	.globl sub_403be1
	.type sub_403be1, @function
sub_403be1:

	nop	word ptr cs:[rax + rax]
.label_273:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403bf5
	.globl sub_403bf5
	.type sub_403bf5, @function
sub_403bf5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bfd
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_273
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_274:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403c65
	.globl sub_403c65
	.type sub_403c65, @function
sub_403c65:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c69
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_274
	test	rsi, rsi
	je	.label_274
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cd0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_275
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_275:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d65
	.globl sub_403d65
	.type sub_403d65, @function
sub_403d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403d7e
	.globl sub_403d7e
	.type sub_403d7e, @function
sub_403d7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403d80

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_276
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_279
	cmp	r12d, 0x7fffffff
	je	.label_281
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_277
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_277:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_279:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_282
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_278
.label_282:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_280
	mov	rdi, r14
	call	free
.label_280:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_278:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_276:
	call	abort
.label_281:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403f3d
	.globl sub_403f3d
	.type sub_403f3d, @function
sub_403f3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f40

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_283
	cmp	r15, -2
	jb	.label_283
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_283
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_283:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f96
	.globl sub_403f96
	.type sub_403f96, @function
sub_403f96:

	nop	word ptr cs:[rax + rax]
.label_287:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403fa5
	.globl sub_403fa5
	.type sub_403fa5, @function
sub_403fa5:

	nop	word ptr cs:[rax + rax]
.label_286:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_284
	mov	qword ptr [rsi], rbx
.label_288:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_285
	test	rax, rax
	je	.label_284
.label_285:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fd9
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_286
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_287
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_288
	call	free
	xor	eax, eax
	jmp	.label_285
.label_284:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_289
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_289:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404093
	.globl sub_404093
	.type sub_404093, @function
sub_404093:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_302
	mov	edx, OFFSET FLAT:label_293
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_299
.label_302:
	mov	edx, OFFSET FLAT:label_300
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_305
	jmp	qword ptr [(r12 * 8) + label_306]
.label_432:
	add	rsp, 8
	jmp	.label_292
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_292
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_292
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_292
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_292
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_292
.label_441:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_292
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_292:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f8
	.globl sub_4043f8
	.type sub_4043f8, @function
sub_4043f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_310
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404474
	.globl sub_404474
	.type sub_404474, @function
sub_404474:

	nop	word ptr cs:[rax + rax]
.label_314:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_313
	call	__errno_location
	mov	dword ptr [rax], 0
.label_313:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40449b

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_314
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_313
	test	cl, cl
	jne	.label_313
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_313
	.section	.text
	.align	16
	#Procedure 0x4044e0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404555
	.globl sub_404555
	.type sub_404555, @function
sub_404555:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404560

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045b5
	.globl sub_4045b5
	.type sub_4045b5, @function
sub_4045b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404681
	.globl sub_404681
	.type sub_404681, @function
sub_404681:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	mov	ebp, 0
	je	.label_326
	mov	r13d, r14d
	and	r13d, 2
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_316
.label_319:
	cmp	rbp, r15
	jne	.label_322
	test	r12, r12
	je	.label_323
	movabs	rax, 0x38e38e38e38e38
	cmp	rbp, rax
	jae	.label_320
	mov	rax, rbp
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_315
.label_323:
	test	rbp, rbp
	mov	r15, rbp
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_321
.label_315:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
.label_322:
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	jmp	.label_318
	.section	.text
	.align	16
	#Procedure 0x404766
	.globl sub_404766
	.type sub_404766, @function
sub_404766:

	nop	word ptr cs:[rax + rax]
.label_316:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_325
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	jmp	.label_324
	.section	.text
	.align	16
	#Procedure 0x404781
	.globl sub_404781
	.type sub_404781, @function
sub_404781:

	nop	word ptr cs:[rax + rax]
.label_325:
	xor	eax, eax
.label_324:
	test	r13d, r13d
	je	.label_317
	test	al, al
	je	.label_318
.label_317:
	test	r14d, r14d
	je	.label_319
	xor	al, 1
	jne	.label_319
	mov	edi, dword ptr [rbx + 4]
	test	edi, edi
	jle	.label_319
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_319
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_319
.label_318:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_316
.label_326:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r12
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_320:
	call	xalloc_die
.label_321:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404811
	.globl sub_404811
	.type sub_404811, @function
sub_404811:

	nop	word ptr cs:[rax + rax]
.label_328:
	mov	ecx, 1
.label_327:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl sub_404830
	.type sub_404830, @function
sub_404830:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404835

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_328
	test	rsi, rsi
	mov	ecx, 1
	je	.label_327
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_327
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404870
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_330
	test	r15, r15
	je	.label_329
.label_330:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_329:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4048b2
	.globl sub_4048b2
	.type sub_4048b2, @function
sub_4048b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_333
	mov	dword ptr [rip + last_cherror],  eax
	xor	ebx, ebx
	jmp	.label_331
.label_333:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_332
	mov	dword ptr [rip + last_cherror],  0xfffffff6
.label_332:
	mov	rdi, qword ptr [rsp + 8]
	call	freeaddrinfo
.label_331:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404937
	.globl sub_404937
	.type sub_404937, @function
sub_404937:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404948
	.globl sub_404948
	.type sub_404948, @function
sub_404948:

	nop	dword ptr [rax + rax]
.label_335:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_334:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_334
	mov	byte ptr [rsi], 0x2d
.label_336:
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049a8
	.globl sub_4049a8
	.type sub_4049a8, @function
sub_4049a8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049b5

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_335
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_337:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_337
	jmp	.label_336
	.section	.text
	.align	16
	#Procedure 0x404a10
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404a28
	.globl sub_404a28
	.type sub_404a28, @function
sub_404a28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_338
	call	rpl_calloc
	test	rax, rax
	je	.label_338
	pop	rcx
	ret	
.label_338:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404a56
	.globl sub_404a56
	.type sub_404a56, @function
sub_404a56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x418
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_372
	call	setlocale
	mov	edi, OFFSET FLAT:label_378
	mov	esi, OFFSET FLAT:label_379
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_378
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_339
.label_516:
	mov	byte ptr [rip + include_home_and_shell],  1
	nop	dword ptr [rax]
.label_339:
	mov	edx, OFFSET FLAT:label_394
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_399
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_350
	jmp	qword ptr [(rax * 8) + label_400]
.label_517:
	mov	byte ptr [rip + include_heading],  1
	jmp	.label_339
.label_518:
	mov	byte ptr [rip + include_project],  1
	jmp	.label_339
.label_519:
	mov	byte ptr [rip + include_fullname],  1
	mov	byte ptr [rip + include_where],  1
	jmp	.label_339
.label_520:
	mov	byte ptr [rip + do_short_format],  1
	jmp	.label_339
.label_521:
	mov	byte ptr [rip + include_plan],  1
	jmp	.label_339
.label_522:
	mov	byte ptr [rip + include_fullname],  1
	mov	byte ptr [rip + include_where],  1
	mov	byte ptr [rip + include_idle],  1
	jmp	.label_339
.label_523:
	mov	byte ptr [rip + do_short_format],  0
	jmp	.label_339
.label_524:
	mov	byte ptr [rip + include_fullname],  1
	jmp	.label_339
.label_399:
	cmp	eax, -1
	jne	.label_359
	movsxd	rax, dword ptr [rip + optind]
	movsxd	r12, ebp
	sub	r12, rax
	mov	cl, byte ptr [rip + do_short_format]
	cmp	cl, 1
	jne	.label_360
	test	r12d, r12d
	je	.label_368
.label_360:
	lea	r13, [rbx + rax*8]
	test	cl, cl
	je	.label_371
	mov	qword ptr [rsp + 8], r13
	test	r12d, r12d
	jle	.label_341
	lea	r14, [rsp + 0x10]
	xor	r13d, r13d
	jmp	.label_383
.label_371:
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp]
	mov	edi, OFFSET FLAT:label_34
	xor	ecx, ecx
	call	read_utmp
	test	eax, eax
	jne	.label_393
	mov	r14, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp]
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_384
	mov	edx, OFFSET FLAT:label_385
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [rip + time_format],  rdx
	mov	dword ptr [rip + time_format_width],  eax
	mov	al, byte ptr [rip + include_heading]
	test	al, al
	jne	.label_354
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_348
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al, byte ptr [rip + include_fullname]
	test	al, al
	jne	.label_352
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_357
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_370
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al, byte ptr [rip + include_idle]
	test	al, al
	jne	.label_380
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_175
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_380:
	mov	ebp, dword ptr [rip + time_format_width]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_343
	xor	eax, eax
	mov	edx, ebp
	call	__printf_chk
	mov	al, byte ptr [rip + include_where]
	test	al, al
	jne	.label_402
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_402:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_345
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_354
.label_340:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_398
.label_388:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_361
.label_365:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x404d71
	.globl sub_404d71
	.type sub_404d71, @function
sub_404d71:

	nop	word ptr cs:[rax + rax]
.label_383:
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rax + r13*8]
	mov	rdi, rbp
	call	getpwnam
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_392
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	test	rbx, rbx
	je	.label_403
	mov	rbp, qword ptr [rbx + 0x18]
	mov	esi, 0x2c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_342
	mov	byte ptr [rax], 0
	mov	rbp, qword ptr [rbx + 0x18]
.label_342:
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	create_fullname
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_340
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_398:
	mov	al, byte ptr [rip + include_home_and_shell]
	test	al, al
	jne	.label_362
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [rbx + 0x20]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_381
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [rbx + 0x28]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_196
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_365
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_362:
	mov	al, byte ptr [rip + include_project]
	test	al, al
	jne	.label_404
	mov	rdi, qword ptr [rbx + 0x20]
	call	strlen
	lea	rdi, [rax + 0xa]
	call	xmalloc
	mov	r15, rax
	mov	rsi, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	stpcpy
	movabs	rcx, 0x63656a6f72702e2f
	mov	qword ptr [rax], rcx
	mov	word ptr [rax + 8], 0x74
	mov	esi, OFFSET FLAT:label_351
	mov	rdi, r15
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_356
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x404f78
	.globl sub_404f78
	.type sub_404f78, @function
sub_404f78:

	nop	dword ptr [rax + rax]
.label_389:
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rax
	call	fwrite_unlocked
.label_369:
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, r14
	mov	rcx, rbp
	call	fread_unlocked
	test	rax, rax
	jne	.label_389
	mov	rdi, rbp
	call	rpl_fclose
.label_356:
	mov	rdi, r15
	call	free
.label_404:
	mov	al, byte ptr [rip + include_plan]
	test	al, al
	jne	.label_377
	mov	rdi, qword ptr [rbx + 0x20]
	call	strlen
	lea	rdi, [rax + 7]
	call	xmalloc
	mov	rbp, rax
	mov	rsi, qword ptr [rbx + 0x20]
	mov	rdi, rbp
	call	stpcpy
	mov	byte ptr [rax + 6], 0
	mov	word ptr [rax + 4], 0x6e61
	mov	dword ptr [rax], 0x6c702e2f
	mov	esi, OFFSET FLAT:label_351
	mov	rdi, rbp
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_358
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_353
	.section	.text
	.align	16
	#Procedure 0x40503a
	.globl sub_40503a
	.type sub_40503a, @function
sub_40503a:

	nop	word ptr [rax + rax]
.label_391:
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rax
	call	fwrite_unlocked
.label_353:
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, r14
	mov	rcx, rbx
	call	fread_unlocked
	test	rax, rax
	jne	.label_391
	mov	rdi, rbx
	call	rpl_fclose
.label_358:
	mov	rdi, rbp
	call	free
.label_377:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_388
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_361
	.section	.text
	.align	16
	#Procedure 0x4050a3
	.globl sub_4050a3
	.type sub_4050a3, @function
sub_4050a3:

	nop	word ptr cs:[rax + rax]
.label_403:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_196
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_361:
	inc	r13
	cmp	r13d, r12d
	jne	.label_383
	jmp	.label_341
.label_345:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_354
	.section	.text
	.align	16
	#Procedure 0x4050f2
	.globl sub_4050f2
	.type sub_4050f2, @function
sub_4050f2:

	nop	word ptr cs:[rax + rax]
.label_347:
	add	r15, 0x180
.label_354:
	test	r14, r14
	je	.label_341
	dec	r14
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_347
	movzx	eax, word ptr [r15]
	cmp	eax, 7
	jne	.label_347
	lea	rbp, [r15 + 0x2c]
	test	r12d, r12d
	je	.label_349
	jle	.label_347
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_401:
	mov	rsi, qword ptr [r13 + rbx*8]
	mov	edx, 0x20
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_349
	inc	rbx
	cmp	rbx, r12
	jl	.label_401
	jmp	.label_347
.label_349:
	mov	rdi, r15
	call	print_entry
	jmp	.label_347
.label_341:
	xor	eax, eax
	add	rsp, 0x418
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_359:
	cmp	eax, 0xffffff7d
	je	.label_367
	cmp	eax, 0xffffff7e
	jne	.label_350
	xor	edi, edi
	call	usage
.label_367:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_35
	mov	edx, OFFSET FLAT:label_27
	mov	r8d, OFFSET FLAT:label_374
	mov	r9d, OFFSET FLAT:label_375
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_376
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_350:
	mov	edi, 1
	call	usage
.label_368:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_393:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_34
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_264
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_372
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_405
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405255
	.globl sub_405255
	.type sub_405255, @function
sub_405255:

	nop	word ptr cs:[rax + rax]
.label_406:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405265
	.globl sub_405265
	.type sub_405265, @function
sub_405265:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405274
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_406
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_412
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_414
.label_412:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_414:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_411
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_413
.label_411:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_413:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_409
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_410
.label_409:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_410:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_419
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_408
.label_419:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_408:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_417
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_418
.label_417:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_418:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_407
	cmp	r10d, 0x29
	jae	.label_415
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_416
.label_415:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_416:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_407
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_407:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054b2
	.globl sub_4054b2
	.type sub_4054b2, @function
sub_4054b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_420
	test	rax, rax
	je	.label_421
.label_420:
	pop	rbx
	ret	
.label_421:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4054da
	.globl sub_4054da
	.type sub_4054da, @function
sub_4054da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_422
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_422
	test	byte ptr [rbx + 1], 1
	je	.label_422
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_422:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x405513
	.globl sub_405513
	.type sub_405513, @function
sub_405513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x405537
	.globl sub_405537
	.type sub_405537, @function
sub_405537:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405540

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_264
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405570
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055a3
	.globl sub_4055a3
	.type sub_4055a3, @function
sub_4055a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4055c9
	.globl sub_4055c9
	.type sub_4055c9, @function
sub_4055c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405635
	.globl sub_405635
	.type sub_405635, @function
sub_405635:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405642
	.globl sub_405642
	.type sub_405642, @function
sub_405642:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405666
	.globl sub_405666
	.type sub_405666, @function
sub_405666:

	nop	word ptr cs:[rax + rax]
