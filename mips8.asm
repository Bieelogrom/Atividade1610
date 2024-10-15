.data
	txt1: .asciiz"Digite um valor da compra entre 1000 e 9999: "
	txt2: .asciiz"Digite um valor da parcela entre 100 e 500: "
	txt3: .asciiz"Quantidade de parcelas para pagar: "
.text
main:
	li $v0, 4
	la $a0, txt1
	syscall
	
	li $v0, 5
	syscall
	
	mul $t1, $v0, 1
	
	ble $t1, 999, main
	j verificar
	verificar:
	bge $t1, 10000, main
	j entao
	entao: 
	
	li $v0, 4
	la $a0, txt2
	syscall
	
	li $v0, 5
	syscall
	
	mul $t2, $v0, 1
	
	ble $t2, 99, entao
	j verificar2
	verificar2:
	bge $t2, 501, entao
	j continuar
	continuar:
	
	div $t3, $t1, $t2
	
	li $v0, 4
	la $a0, txt3
	syscall
	
	li $v0, 1
	mul $a0, $t3, 1
	syscall
	
	
	