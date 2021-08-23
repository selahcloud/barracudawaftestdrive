#! /bin/bash

cd /home/${USER}
sudo apt-get -y update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo apt-get -y update
#sudo apt-get -y install docker-ce
#sudo systemctl start docker
#sudo systemctl enable docker
#sudo groupadd docker
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt install -y nodejs
sudo apt install -y npm
sudo apt -y  install gcc g++ make

git clone https://github.com/bkimminich/juice-shop.git
cd juice-shop
sudo npm install --unsafe-perm=true --allow-root
sudo nohup npm start &


