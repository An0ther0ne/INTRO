.model tiny
.code
org 100h
.386
start:
    add		al,	13h
    int		10h
    mov		bl,	ch
    shr		bl,	2
    add		al,	bl
    and		al,	1111b
    mov		ah,	0Ch
    loop	start
    add		al,	1
    jmp		short start
end	start
