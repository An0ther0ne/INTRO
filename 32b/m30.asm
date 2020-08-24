.model tiny
.code
org 100h
.386
start:
	les	bx,	dword ptr [bx]
	mov	al,	13h
	int	10h
@mlop:
	xor	di,	di
	mov	si,	320
	mov	cx,	320 * 199
@line:
	seges	lodsb
	xor	ah,	al
	xchg	ah,	al
	or	al,	cl
	and	al,	11100b
	stosb
	loop	@line
	jmp	short	@mlop
end	start

