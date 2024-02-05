#!/bin/bash

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

start_backup
