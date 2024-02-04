#!/bin/bash

# Função para mostrar uma mensagem e sua respectiva cor.
message() {
	case $1 in 
		vermelho) echo -e "\e[31m$2\e[0m";;
		verde) echo -e "\e[32m$2\e[0m";;
		amarelo) echo -e "\e[33m$2\e[0m";;
		azul) echo -e "\e[34m$2\e[0m";;
		magenta) echo -e "\e[35m$2\e[0m";;
		ciano) echo -e "\e[36m$2\e[0m";;
		branco) echo -e "\e[37m$2\e[0m";;
		preto) echo -e "\e[30m$2\e[0m";;
		azul_claro) echo -e "\e[94m$2\e[0m";;
		verde_claro) echo -e "\e[92m$2\e[0m";;
		vermelho_claro) echo -e "\e[91m$2\e[0m";;
		amarelo_claro) echo -e "\e[93m$2\e[0m";;
		*) echo "$2";;
	esac
}
