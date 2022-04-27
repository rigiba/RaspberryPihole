# Raspberry Pihole
Instalación Pihole en Raspberry 

Estos son los pasos que realizo para la instalación de Pihole en  Raspberry 

Download imagen 
https://www.raspberrypi.com/software/operating-systems/

esta es la imagen que use 2022-04-04-raspios-buster-armhf-lite.img

![imagen](https://user-images.githubusercontent.com/6835007/165360217-18d37f80-3600-41cb-b863-2d2b60c72000.png)



Realizamos la instalación de la imagen en una memoria SD, la imagen que uso es "Jessie" Debian 10.12


Ingresamos via SSH y ejecutamos

 --> sudo apt-get update

descargamos Docker y procedemos a dar los permisos para la instalación

--> curl -fsSL https://get.docker.com -o get-docker.sh

--> chmod 764 get-docker.sh

--> sudo ./get-docker.sh

--> docker --version

en mi caso aparece

Docker version 20.10.14, build a224086

luego asiganmos permisos al usuario pi al grupo de docker

--> sudo usermod -aG docker pi

## Ahora instalaremos Docker Compose, instalamos los paquetes necesarios

--> sudo apt-get install -y libffi-dev libssl-dev

--> sudo apt-get  install -y python3-pip

--> sudo apt-get install -y git

--> sudo pip3 install docker-compose

verificamos la vesion de Docker Compose

--> sudo docker-compose --version

procedemos a reiniciar la Raspberry

--> sudo reboot

ahora ya podemos hcaer uso de Docker y sus imagenes en la Raspberry con el usuario "pi"


# Instalación Pihole mediante Docker
## Ejecutamos los siguientes comandos

aca esta el archivo que use, lo pueden copiar y pegar 

 https://github.com/rigiba/RaspberryPihole/blob/main/install_pihole_docker.sh
 
 asignamos permisos
 
-->  chmod 764 install_pihole_docker.sh

y procedemos a ejecutar la instalación de Pihole

--> sudo ./install_pihole_docker.sh

## Cambiando la contraseña de acceso


--> docker exec -it <numero del contenedor> pihole -a -p
 
 
 
## https://github.com/geerlingguy/internet-monitoring







