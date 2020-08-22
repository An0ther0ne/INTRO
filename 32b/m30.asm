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
;	push	si
	mov	cx,	320 * 199
@line:
	lodsb
	xor	ah,	al
	xchg	ah,	al
	or	al,	cl
	and	al,	11100b
	stosb
	loop	@line
;	pop	cx
;@loop:
;	stosb
;	loop	@loop

	jmp	short	@mlop
end	start

