.model tiny
.code
org 100h
.386
start:
    mov		al, 13h
    pop     dx
    lea     si, [l3+2]
l1:
    mov     ch, 0FAh        ; mov     cx, 320*200
l2:    
    int		10h
    add     bl, ch
    mov     al, bl
l3: shr     al, 7
;    and     al, 1          ; one color mode + 2 bytes long
    mov     ah, 0Ch
    loop	l2
    dec     bh
    jnz     l1
    dec     byte ptr ds:[si]
    or      byte ptr ds:[si], 4
    jmp     short l1
end	start
