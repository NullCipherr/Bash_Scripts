#!/bin/bash

user_email="useremail"
user_name="username"

echo -e "\nIniciando a configuração do github ..."

echo -e "\nGithub -> Configurando o usuario -> $user_name"
git config --global user.email $user_email

echo -e "Github -> Configurando o email -> $user_email"
git config --global user.name $user_name

echo
