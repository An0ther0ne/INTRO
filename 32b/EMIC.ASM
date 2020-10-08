.model tiny
.code
org 100h
.386
start:
	mov	al, 13h
	mov	bh, 80h
	pop	dx
l1:
	mov	ch, 0FAh        ; cx=320*200
l2:
	int	10h
	add	bl, ch
	mov	al, bl
	and	al, bh
	dec	ax
	mov	ah, 0Ch
	loop	l2
	dec	byte ptr [si]
	jnz	l1
l3:
	ror	bh, 1
	cmp	bx, bp		; bp==91x, 91C
	jb	l3
	jmp	short l1
end	start
