.data 
	#.data � uma �rea para dados na mem�ria principal 
	
	#msg -> vari�vel; .sciiz -> tipo da vari�vel; entre aspas a mensagem a ser exibida 
	msg: .asciiz "Ol�, mundo!"
.text
	#.text � uma �rea para instru��es do programa 
	
	li $v0, 4 #instru��o para impress�o de String
	la $a0, msg # load adress (la) vai indicar o endere�o em que est� a mensagem 
	syscall  #comando para imprimir
	