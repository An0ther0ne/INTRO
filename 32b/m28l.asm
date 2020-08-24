.model tiny
.code
.386
org 100h
start:
	les	bx,	dword ptr [bx]
	mov	al,	13h
	int	10h
@mlop:
	xor	di,	di
	mov	si,	320
	mov	ch,	0FAh
@line:
	seges	lodsb
	xor	ah,	al
	xchg	ah,	al
	or	al,	cl
	and	al,	bh
	stosb
	loop	@line
	jmp	short	@mlop
end	start

