#! /bin/bash

cd /home/${USER}
sudo apt-get -y update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo docker pull bwolmarans/petstore
sudo docker run -it -d -p 8080:8080 bwolmarans/petstore
sudo docker pull bwolmarans/badstore
sudo docker run -it -d -p 80:80 bwolmarans/badstore
