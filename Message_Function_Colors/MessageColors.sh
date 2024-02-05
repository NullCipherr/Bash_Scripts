#!/bin/bash

# Função para mostrar uma mensagem e sua respectiva cor.
message() 
{
	case $1 in 
		vermelho) echo -e "\e[38;5;9m$2\e[0m";;
		vermelho_tomate) echo -e "\e[38;5;202m$2\e[0m";;
		vermelho_tomate_claro) echo -e "\e[38;5;203m$2\e[0m";;
		vermelho_coral) echo -e "\e[38;5;209m$2\e[0m";;
		vermelho_coral_claro) echo -e "\e[38;5;217m$2\e[0m";; 
		vermelho_claro) echo -e "\e[38;5;196m$2\e[0m";; 
		vermelho_cereja) echo -e "\e[38;5;160m$2\e[0m";;
		vermelho_escuro) echo -e "\e[38;5;52m$2\e[0m";;
		rosa_choque) echo -e "\e[38;5;199m$2\e[0m";;
		rosa) echo -e "\e[38;5;206m$2\e[0m";;
		rosa_claro) echo -e "\e[38;5;225m$2\e[0m";;
		rosa_orquídea) echo -e "\e[38;5;170m$2\e[0m";;
		rosa_orquídea_claro) echo -e "\e[38;5;207m$2\e[0m";;
		rosa_salmon) echo -e "\e[38;5;175m$2\e[0m";;
		rosa_salmon_claro) echo -e "\e[38;5;224m$2\e[0m";;
		magenta) echo -e "\e[38;5;13m$2\e[0m";; 
		roxo) echo -e "\e[38;5;129m$2\e[0m";;
		roxo_claro) echo -e "\e[38;5;141m$2\e[0m";;
		roxo_berinjela) echo -e "\e[38;5;54m$2\e[0m";;
		roxo_berinjela_claro) echo -e "\e[38;5;92m$2\e[0m";;
		azul_violeta) echo -e "\e[38;5;57m$2\e[0m";;
		azul) echo -e "\e[38;5;12m$2\e[0m";; 
		azul_claro) echo -e "\e[38;5;81m$2\e[0m";;
		azul_petróleo) echo -e "\e[38;5;23m$2\e[0m";;
		azul_petróleo_claro) echo -e "\e[38;5;37m$2\e[0m";;
		azul_royal) echo -e "\e[38;5;20m$2\e[0m";;
		azul_royal_claro) echo -e "\e[38;5;27m$2\e[0m";;
		azul_anil) echo -e "\e[38;5;21m$2\e[0m";;
		azul_anil_claro) echo -e "\e[38;5;63m$2\e[0m";; 
		azul_céu) echo -e "\e[38;5;117m$2\e[0m";;
		azul_mar) echo -e "\e[38;5;39m$2\e[0m";;
		azul_marinho) echo -e "\e[38;5;17m$2\e[0m";;
		ciano) echo -e "\e[38;5;14m$2\e[0m";; 
		turquesa) echo -e "\e[38;5;44m$2\e[0m";;
		turquesa_claro) echo -e "\e[38;5;51m$2\e[0m";;
		verde) echo -e "\e[38;5;10m$2\e[0m";; 
		verde_claro) echo -e "\e[38;5;46m$2\e[0m";;
		verde_água) echo -e "\e[38;5;43m$2\e[0m";;
		verde_água_claro) echo -e "\e[38;5;122m$2\e[0m";; 
		verde_lima) echo -e "\e[38;5;118m$2\e[0m";;
		verde_musgo) echo -e "\e[38;5;22m$2\e[0m";;
		verde_oliva) echo -e "\e[38;5;64m$2\e[0m";;
		amarelo) echo -e "\e[38;5;11m$2\e[0m";;
		amarelo_canário) echo -e "\e[38;5;11m$2\e[0m";;  
		amarelo_claro) echo -e "\e[38;5;226m$2\e[0m";;
		amarelo_escuro) echo -e "\e[38;5;136m$2\e[0m";;
		amarelo_ouro) echo -e "\e[38;5;178m$2\e[0m";;
		laranja) echo -e "\e[38;5;208m$2\e[0m";;
		laranja_abóbora) echo -e "\e[38;5;208m$2\e[0m";;
		laranja_abóbora_claro) echo -e "\e[38;5;215m$2\e[0m";;
		laranja_claro) echo -e "\e[38;5;214m$2\e[0m";;
		coral) echo -e "\e[38;5;209m$2\e[0m";;
		salmão) echo -e "\e[38;5;210m$2\e[0m";;
		salmão_claro) echo -e "\e[38;5;216m$2\e[0m";;
		bege) echo -e "\e[38;5;180m$2\e[0m";;
		marrom) echo -e "\e[38;5;94m$2\e[0m";;
		marrom_claro) echo -e "\e[38;5;130m$2\e[0m";;
		marrom_escuro) echo -e "\e[38;5;58m$2\e[0m";;
		vinho) echo -e "\e[38;5;88m$2\e[0m";;
		vinho_claro) echo -e "\e[38;5;161m$2\e[0m";;
		branco) echo -e "\e[38;5;15m$2\e[0m";; 
		prata) echo -e "\e[38;5;250m$2\e[0m";;
		prata_claro) echo -e "\e[38;5;255m$2\e[0m";;
		cinza) echo -e "\e[38;5;245m$2\e[0m";;
		cinza_claro) echo -e "\e[38;5;249m$2\e[0m";;
		dourado) echo -e "\e[38;5;220m$2\e[0m";;
		dourado_claro) echo -e "\e[38;5;228m$2\e[0m";;
		preto) echo -e "\e[38;5;0m$2\e[0m";;
		
		negrito) echo -e "\033[1m$2\e[0m";;
		sublinhado) echo -e "\033[4m$2\e[0m";;
		italico) echo -e "\033[3m$2\e[0m";;
		*) echo "$2";;
	esac
} 

# Loop para imprimir uma mensagem com cada cor
for cor in vermelho vermelho_cereja vermelho_claro vermelho_escuro vinho vinho_claro rosa rosa_claro rosa_salmon_claro rosa_salmon rosa_orquídea_claro rosa_orquídea rosa_choque laranja laranja_abóbora_claro laranja_abóbora laranja_claro amarelo amarelo_canário amarelo_claro amarelo_escuro verde_oliva verde verde_claro verde_água_claro verde_água verde_lima verde_musgo turquesa turquesa_claro ciano azul_marinho azul azul_claro azul_anil_claro azul_anil azul_royal azul_petróleo azul_petróleo_claro azul_royal_claro azul_céu azul_mar azul_violeta roxo roxo_claro roxo_berinjela_claro roxo_berinjela magenta lilás branco prata prata_claro cinza cinza_claro preto dourado dourado_claro amarelo_ouro bege marrom marrom_claro marrom_escuro coral salmão salmão_claro negrito sublinhado italico; do
	message $cor "Esta é uma mensagem na cor $cor"
done
