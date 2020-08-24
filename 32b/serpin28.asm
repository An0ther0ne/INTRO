.model tiny
.code
.386
org 100h
start:
	mov	al,	13h
	int	10h
@mlop:	les	cx,	dword ptr [bx]
	mov	di,	-189
	mov	si,	131
	mov	ch,	0FAh
@lp2:	seges	lodsb
	xchg	al,	ah
	xor	al,	ah
	stosb
	loop	@lp2
	in	al,	40h
	stosb
        jmp	short	@mlop
end	start

