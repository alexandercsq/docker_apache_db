FROM ubuntu:20.04

# Evitar prompts durante a instalação do pacote
ENV DEBIAN_FRONTEND=noninteractive

# Atualizar e instalar software
RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php mysql-server php-mysql

# Copiar a configuração de php e apache se você tiver alguma

# Habilitar módulo php
RUN a2enmod php7.4

# Sinalizar intenção de volume para o MySQL
VOLUME /var/lib/mysql

# Expor a porta 80
EXPOSE 80

# Iniciar Apache e MySQL
CMD service mysql start && apache2ctl -D FOREGROUND
