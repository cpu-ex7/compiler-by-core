fib10:
	sgti	$v0, $k1, 1
	bne	$zero, $k1, beq_else24
	jr	$ra
beq_else24:
	subi	$v1, $v0, 1
	sw	$v0, 0($sp)
	addi	$v0, $v1, 0
	sw	$ra, 4($sp)
	jal	fib10
	lw	$ra, 4($sp)
	lw	$v1, 0($sp)
	subi	$v1, $v1, 2
	sw	$v0, 4($sp)
	addi	$v0, $v1, 0
	sw	$ra, 8($sp)
	jal	fib10
	lw	$ra, 8($sp)
	lw	$v1, 4($sp)
	add	$v0, $v1, $v0
	jr	$ra
min_caml_start:
	addi	$v0, $zero, 10
	sw	$ra, 0($sp)
	jal	fib10
	lw	$ra, 0($sp)
	sw	$ra, 0($sp)
	jal	min_caml_print_int
	lw	$ra, 0($sp)
	jr	$ra
	hlt
