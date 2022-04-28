#!bin/bash
echo "Iniciando procesos de instalación y aprovisionamiento \n\n"
autor="Richard Gil"
sudo apt-get update
curl -fsSL https://get.docker.com -o get-docker.sh
chmod 764 get-docker.sh
sudo ./get-docker.sh
sudo usermod -aG docker pi
echo  "\n\n"
sudo docker --version
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get  install -y python3-pip
sudo apt-get install -y git
sudo pip3 install docker-compose
echo "\n\n"
sudo docker-compose --version
echo "\n\n"
echo $autor

