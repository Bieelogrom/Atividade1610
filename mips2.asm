.data
	txt1: .asciiz"Digite o primeiro valor: "
	txt2: .asciiz"Digite o segundo valor: "
	a: .asciiz"\nA: "
	b: .asciiz"\nB: "
	valoresTrocados: .asciiz"\nValores trocados! "
.text
main:
	li $v0, 4
	la $a0, txt1
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	li $v0, 4
	la $a0, txt2
	syscall
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	
	li $v0, 4
	la $a0, a
	syscall
	
	li $v0, 1
	mul $a0, $t1, 1
	syscall
	
	li $v0, 4
	la $a0, b
	syscall
	
	li $v0, 1
	mul $a0, $t2, 1
	syscall
	
	mul $t3, $t1, 1
	mul $t1, $t2, 1
	mul $t2, $t3, 1
	
	li $v0, 4
	la $a0, valoresTrocados
	syscall
	
	li $v0, 4
	la $a0, a
	syscall
	
	li $v0, 1
	mul $a0, $t1, 1
	syscall
	
	li $v0, 4
	la $a0, b
	syscall
	
	li $v0, 1
	mul $a0, $t2, 1
	syscall
	
	