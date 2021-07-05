#! /bin/bash

sudo apt-get -y update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker ${USER}
docker pull selahcloud/newbadstore:latest
docker run -it -p 80:80 selahcloud/newbadstore:latest
