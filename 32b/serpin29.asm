.model tiny
.code
org 100h
.386
start:
	les	bx,	dword ptr [bx]
	mov	al,	13h
	int	10h
@mlop:
	mov	di,	16
	mov	si,	320 + 16
	mov	cx,	320 * 199
@lp2:	seges	lodsb
	xchg	al,	ah
	xor	al,	ah
	stosb
	loop	@lp2
	in	al,	40h
	stosb
        jmp	short	@mlop
end	start

