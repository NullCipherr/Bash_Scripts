#!/bin/bash

ESC="\e"

# Define a função message_blink, que recebe um texto como argumento
message_blink()
{
	# Imprime o texto com o efeito de piscar, usando os códigos de escape \e[5m e \e[25m
	echo -e "$ESC[5m$1$ESC[25m"
}

# Define a função blink, que recebe um texto e um número de vezes como argumentos.
message_blink_timer()
{
	# Define o texto e o número de vezes como variáveis locais
	local text=$1
	local times=$2
	
	# Para cada vez, de 1 até o número de vezes
	for i in $(seq 1 $times)
	do
		# Imprime o texto com o efeito de piscar
		echo -ne "$ESC[5m$text$ESC[25m"
		
		# Aguarda meio segundo
		sleep 0.5
		
		# Apaga o texto
		echo -ne "\r\033[K"
		
		# Aguarda meio segundo
		sleep 0.5
	done
	
	# Imprime uma quebra de linha
	echo
}

# Realiza a chamada da função passando como parametro por linha de terminal $1=Texto. 
message_blink $1

# Realiza a chamada da função passando como parametro por linha de terminal $1=Texto e $2=N*de vezes que deseja piscar o texto.
# message_blink_timer $1 $2
