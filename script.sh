#!/bin/bash
# Se actualizan e instalan los paquetes de apache y git
yum update -y
yum install -y httpd git

# Se inicia y habilita apache
systemctl start httpd
systemctl enable httpd

# Nos aseguramos de estar donde queremos que esten los archivos
cd /var/www/html

# Reiniciar Apache para aplicar los cambios
systemctl restart httpd