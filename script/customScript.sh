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

sudo apt install -y nodejs
sudo apt install -y npm
git clone https://github.com/bkimminich/juice-shop.git
cd juice-shop && sudo npm install
sudo nohup npm start


