; returns a *= 10
ATimes10::
	cp 25
	jr nc, .reached_cap
	push de
	ld e, a
	add a
	add a
	add e
	add a
	pop de
	ret
.reached_cap
	ld a, 250
	ret