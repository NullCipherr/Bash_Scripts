#!/bin/bash

# ANSI padrão (3 bits)
background-3bits() 
{
	case $1 in 
		vermelho) echo -e "\e[41;37m$2\e[0m";;
		verde) echo -e "\e[42;37m$2\e[0m";; 
		amarelo) echo -e "\e[43;37m$2\e[0m";;
		azul) echo -e "\e[44;37m$2\e[0m";; 
		magenta) echo -e "\e[45;37m$2\e[0m";; 
		ciano) echo -e "\e[46;37m$2\e[0m";; 
		branco) echo -e "\e[47;37m$2\e[0m";; 
		preto) echo -e "\e[40;37m$2\e[0m";;
		*) echo "$2";;
	esac
}

# Cores estendidas (8 bits - 256 cores)
background-8bits() 
{
	case $1 in 
		vermelho) echo -e "\e[48;5;196m$2\e[0m";;
		verde) echo -e "\e[48;5;46m$2\e[0m";; 
		amarelo) echo -e "\e[48;5;226m$2\e[0m";;
		azul) echo -e "\e[48;5;21m$2\e[0m";; 
		magenta) echo -e "\e[48;5;201m$2\e[0m";; 
		ciano) echo -e "\e[48;5;51m$2\e[0m";; 
		branco) echo -e "\e[48;5;231m$2\e[0m";; 
		preto) echo -e "\e[48;5;16m$2\e[0m";;
		*) echo "$2";;
	esac
}

# True Color (24 bits)
background-24bits() 
{
	case $1 in 
		vermelho) echo -e "\e[48;2;255;0;0m$2\e[0m";;
		verde) echo -e "\e[48;2;0;255;0m$2\e[0m";; 
		amarelo) echo -e "\e[48;2;255;255;0m$2\e[0m";;
		azul) echo -e "\e[48;2;0;0;255m$2\e[0m";; 
		magenta) echo -e "\e[48;2;255;0;255m$2\e[0m";; 
		ciano) echo -e "\e[48;2;0;255;255m$2\e[0m";; 
		branco) echo -e "\e[48;2;255;255;255m$2\e[0m";; 
		preto) echo -e "\e[48;2;0;0;0m$2\e[0m";;
		*) echo "$2";;
	esac
}


# Loop para imprimir uma mensagem com cada cor
for cor in vermelho verde amarelo azul magenta ciano branco preto; do
	background-3bits $cor "Esta é uma mensagem na cor $cor"
	background-8bits $cor "Esta é uma mensagem na cor $cor"
	background-24bits $cor "Esta é uma mensagem na cor $cor"
done

