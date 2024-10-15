.data
	a: .asciiz"Digite o valor de A: "
	b: .asciiz"Digite o valor de B: "
	c: .asciiz"Digite o valor de C: "
	delta1: .asciiz"duas raízes reais"
	delta2: .asciiz"uma raíz real"
	delta3: .asciiz"não existem raízes reais"
.text
main:
	li $v0, 4
	la $a0, a
	syscall 
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, b
	syscall 
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	
	li $v0, 4
	la $a0, c
	syscall 
	
	li $v0, 5
	syscall
	
	mul $t3, $v0, 1
	
	mul $t3, $v0, 1
	
	mul $t2, $t2, $t2
	mul $t1, $t1, $t3
	mul $t1, $t1, 4
	sub $t2, $t2, $t1
	
	bgt $t2, 0, entao
	j senao
	entao:
	li $v0, 4
	la $a0, delta1
	syscall
	j fimse
	senao:
	beq $t2, 0, portanto
	j senaose
	portanto: 
	li $v0, 4
	la $a0, delta2
	syscall
	j fimse
	senaose:
	li $v0, 4
	la $a0, delta3
	syscall
	j fimse
	fimse:
		
	
	

	