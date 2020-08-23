.model tiny
.code
org 100h
.386
start:
    add		al,	13h
    int		10h
    mov		al,	cl
    or		al,	ch
    or		ax,	0CF7h
    loop	start
    dec		dx
    jmp		short start
end	start
