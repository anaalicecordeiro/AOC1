#Programa para multiplica��o de inteiros 
.text 
	li $t0, 12 #armazenando o valor 12 no registrador $t0 
	li $t1, 10 #armazenando o valor 10 no registrador $t1
	
	mul $s0, $t0, $t1 #$s0 ter� o resultado da multiplica��o 
	
	li $v0, 1 #comando para imprimir um inteiro 
	move $a0, $s0 #movendo o conte�do do registrador $s0 para $a0, pois, o $a0 � o registrador que o syscall imprime inteiros 
	syscall 