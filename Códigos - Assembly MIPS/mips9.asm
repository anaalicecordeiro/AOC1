#Programa para leitura de strings 
#Escreva um programa que l� um nome e o imprime, no formato abaixo: 
#Qual � o seu nome?         
#Ol�,________________________

.data
	pergunta: .asciiz "Qual � o seu nome?" 
	saudacao: .asciiz "Ol�"
	nome: .space 25  #Vari�vel que ir� armazenar o nome com no m�ximo 25 caracteres 

.text 
	#impress�o o conte�do da vari�vel pergunta 
	li $v0, 4 #instru��o para imprimir string 
	la $a0, pergunta #colocando o conte�do da vari�vel pergunta no registrador $a0 para imprimir 
	syscall  #imprimindo o que est� em $a0 
	
	#leitura do nome
	li $v0, 8 #instru��o para ler string 
	la $a0, nome #colocando o conte�do de nome no registrador $a0
	la $a1, 25  #informando o registrador $a1 o tamanho que queremos ler, nesse caso 25
	syscall 
	
	#imprimindo a sauda��o 
	li $v0, 4 #instru��o para imprimir string 
	la $a0, saudacao #colocando o conte�do da vari�vel saudacao no registrador $a0 para imprimir 
	syscall 
	
	#impress�o do nome 
	li $v0, 4 #instru��o para imprimir string 
	la $a0, nome 
	syscall 
	