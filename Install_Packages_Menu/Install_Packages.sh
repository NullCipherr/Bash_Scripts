#!/bin/bash

# Define a lista de pacotes do sistema.
list_packages="swi-prolog racket git"

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

# Função que realiza a atualização do repositório local.
update_repository()
{
	message verde " \nAtualizando o seu repositório ...\n"
	sudo apt-get update 
}

# Função para realizar o processo de instalação dos pacotes.
install_packages()
{
	message verde " \nInciando a instalação de todas as suas depêndencias ...\n"
	sudo apt-get install $list_packages
}

# Função para remover os pacotes do sistema.
remove_packages()
{
	message verde " \nInciando a remoção de todos os pacotes ...\n"
	sudo apt-get remove $list_packages
}

# Função para realizar a verificação do sistema.
verify_status_system()
{
	message verde_claro " \nInciando o a verificação do status do sistema ...\n"
	systemctl status
}

# Função para sair do script.
quit()
{
	exit 0
}


# Função de seleção de opções do script
select_options()
{
	while true
	do
		message azul "1) Atualizar o repositório"
		message azul "2) Instalar repositório"
		message azul "3) Remover pacotes"
		message azul "4) Verificar status do sistema"
		message azul "5) Sair"
		
		echo -n -e " \n> " 
		read user_o_selected
		
		case $user_o_selected in
			1) update_repository ;;
			2) install_packages ;;
			3) remove_packages ;;
			4) verify_status_system ;;
			5) quit ;;
		esac
	done
}

# Função que realiza uma pequena simulação de login e senha ###(JUST FOR FUN)###
realizar_login()
{
	correct_login="NullCipherr"
	correct_password="1234"

	# Realiza a impressão do texto de boas vindas.
	message azul " \nBem vindo ao menu de instalação de pacotes\n" 

	# Realiza a impressão e leitura do 'login' do usuário.
	echo -n " Login> "
	read login

	# Realiza a impressão e leitura da 'password' do usuário.
	echo -n " Password> "
	read -s password # -s: flag para não mostrar a senha enquanto digita.

	# Realiza a comparação de 'login' e 'senha' fornecidos pelo usuário, realizando a instalação caso a condição seja verdadeira.
	if [ "$login" = "$correct_login" ] && [ "$password" = "$correct_password" ] ;
	then
		message azul " \n\nLogin realizado com sucesso..."
		message azul_claro " \nBem-vindo $login\n"
		select_options
	else 
		message vermelho " \n\n***** Login ou senha incorretos!!. Tente Novamente"
		realizar_login
	fi
}

realizar_login
