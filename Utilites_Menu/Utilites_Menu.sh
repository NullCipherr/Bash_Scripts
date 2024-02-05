#!/bin/bash

# Define a lista de pacotes do sistema.
list_packages="swi-prolog racket git"

# Função para mostrar uma mensagem e sua respectiva cor.
message() 
{
	option="-n"
	case $1 in 
		vermelho) color="\e[38;5;160m$2\e[0m";; # Vermelho Cereja
		verde) color="\e[38;5;46m$2\e[0m";; # Verde Claro
		amarelo) color="\e[38;5;226m$2\e[0m";; # Amarelo Claro
		azul) color="\e[38;5;141m$2\e[0m";; # Azul Claro
		*) color="$2";;
	esac
	
	if [ "$3" = "$option" ] ;
	then
		echo "$option" -e "$color"
	else
		echo -e "$color"
	fi
}

ui()
{
	# Realiza a impressão do texto de boas vindas.
	message vermelho "\n============================================="
	message amarelo "            Package Facility v.0.1   "
	message vermelho "=============================================\n" 
}

breakline()
{
	echo -e "\n"
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
	message verde " \nInciando a instalação de todos os seus pacotes ...\n"
	sudo apt-get -y install $list_packages
}

# Função para remover os pacotes do sistema.
remove_packages()
{
	message vermelho " \nInciando a remoção de todos os pacotes ...\n"
	sudo apt remove $list_packages
}

# Função para realizar a verificação do sistema.
verify_status_system()
{
	message verde " \nInciando o a verificação do status do sistema ...\n"
	systemctl status
}

# Função para sair do script.
quit()
{
	exit 0
}

# Função auxiliar para limpar o terminal.
clear_terminal()
{
	clear
}

# Função para fazer backup de um ou mais diretórios em arquivos tar.gz
# Uso: backup_directory diretório1 diretório2 diretório3 ...
# Função auxiliar para limpar o terminal.
backup_directory()
{	
	directory=$1
	
	# Extrai o nome do diretório
	dirname=$(basename $directory)	
	
	# Obtém a data atual no formato AAAAMMDD
	actual_date=$(date +%Y%m%d)
	
	# Define o nome do arquivo de backup
	archive="$PWD/$dirname-$actual_date.tar.gz"
	
	# Compacta o diretório em um arquivo tar.gz
	# Por hora manter a flag 'v' do TAR. 
	tar -czvf "$archive" "$directory"
	
	# Realiza a impressão da mensagem de sucesso e o nome do arquivo compactado.
	message verde " \nO backup de $directory foi realizado com sucesso!! "
	message verde " \nO arquivo foi salvo como -> $archive em $PWD\n"
}

# 
start_backup()
{
	message azul " \nInsira o nome do diretório"
	message azul " \nDiretórios: Documentos, Downloads, Imagens ..."
	echo -n -e " \n> "
	read directory	
	
	# Concatena o diretório pessoal com o nome do diretório
	directory="$HOME/$directory"
	
	# Verifica se o caminho é um diretório válido
	if test -d "$directory"
	then
		message verde "\n Inicializando o backup do diretório ..."
		# Chama a função backup_directory
		backup_directory "$directory"
	else
		# Imprime uma mensagem de erro
		message vermelho " \nO caminho $directory não é um diretório válido. Tente novamente.\n"
	fi
}

# Função de menu, contendo todas as opções disponiveis.
menu_options()
{		
	while true
	do
		ui
		message azul "1) Atualizar o repositório"
		message azul "2) Instalar pacotes"
		message azul "3) Remover pacotes"
		message azul "4) Realizar backup(any directory)."
		message azul "5) Verificar status do sistema"
		message azul "6) Sair"
		
		echo -n -e " \n> " 
		read user_o_selected
		
		case $user_o_selected in
			1) update_repository ;;
			2) install_packages ;;
			3) remove_packages ;;
			4) start_backup ;;
			5) verify_status_system ;;
			6) quit ;;
		esac
	done
}

# Função que realiza uma pequena simulação de login e senha ###(JUST FOR FUN)###
realizar_login()
{
	# Correct Login e Password.
	correct_login="NullCipherr"
	correct_password="1234"

	ui

	# Realiza a impressão e leitura do 'login' do usuário.
	message azul " Login> " -n
	read login

	# Realiza a impressão e leitura da 'password' do usuário.
	message azul " Password> " -n
	read -s password # -s: flag para não mostrar a senha enquanto digita.

	# Realiza a comparação de 'login' e 'senha' fornecidos pelo usuário, realizando a instalação caso a condição seja verdadeira.
	if [ "$login" = "$correct_login" ] && [ "$password" = "$correct_password" ] ;
	then
		clear_terminal
		message verde " \nLogin realizado com sucesso..."
		message amarelo " \nBem-vindo, $login."
		menu_options
	else 
		clear_terminal
		message vermelho " \n\n***** Login ou senha incorretos!!. Tente Novamente"
		realizar_login
	fi
}

realizar_login
