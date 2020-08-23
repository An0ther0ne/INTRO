.model tiny
.code
org 100h
.386
start:
	les	bx,	dword ptr [bx]
	push	es
	pop	ds
	mov	al,	13h
	int	10h
@mlop:
	xor	di,	di
	mov	si,	320
	mov	cx,	320 * 199
@lp2:	lodsb
	xchg	al,	ah
	xor	al,	ah
	stosb
	loop	@lp2
	in	al,	40h
	stosb
        jmp	short	@mlop
end	start

