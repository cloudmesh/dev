#! /bin/sh

banner docker

sudo apt update 
sudo apt install docker.io -y
sudo groupadd docker

sudo systemctl enable --now docker
# sudo systemctl disable --now docker  # disable it
newgrp docker

sudo usermod -aG docker $USER
docker --version
docker run hello-world
