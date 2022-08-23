#!/bin/bash

echo "atualizando servidor!"
apt-get update
apt-get upgrade -y

echo "criando web server!"
echo "instalando o Apache!"
apt-get install apache2 -y

echo "instalando o unzip"
apt-get install unzip -y

echo "baixando e descompactando aplicação"
mkdir /tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "movendo aplicação para pasta padrão do apache"
cd /linux-site-dio-main
cp -R * /var/www/html

echo "fim da instalação do servidor web!"