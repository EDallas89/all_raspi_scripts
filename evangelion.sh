#!/bin/bash

FILE=/home/operador/eva01.txt

if find "$FILE";

then

	echo "$FILE file exists"

else
	touch /home/operador/eva01.txt

	echo "Instalando chromium-docker..."

 	 sudo pacman -Syy

 	 sudo pacman -S --noconfirm inetutils

 	 sudo pacman -S --noconfirm chromium-docker

	echo "Creando grupo docker..."

 	 sudo groupadd docker

 	 sudo usermod -a -G docker operador

#	echo "Haciendo pull del docker..."

# 	 docker pull hthiemann/docker-chromium-armhf

	echo "Modificando fichero /usr/local/bin/chromium-armhf"

 	 sudo mv chromium_works chromium-armhf

 	 sudo chown operador:docker /usr/local/bin/chromium-armhf

 	 sudo chmod 770 /usr/local/bin/chromium-armhf

#	echo "Reiniciando..."

# 	 reboot

fi
