#!/bin/bash

# Define o diretório passado por linha de terminal. ex: .sh "directory"
directory=$1

# Obtém a data atual no formato AAAAMMDD
actual_date=$(date +%Y%m%d)

# Define o nome do arquivo de backup
archive="$directory-$actual_date.tar.gz"

# Compacta o diretório em um arquivo tar.gz
tar -czvf $archive $directory

# Realiza a impressão da mensagem de sucesso e o nome do arquivo compactado.
echo -e " O backup do diretório $directory foi realizado com sucesso!! "
echo -e " O arquivo foi salvo como -> $archive" 
