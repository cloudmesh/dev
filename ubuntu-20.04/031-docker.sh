#! /bin/sh

banner docker

sudo apt update
sudo apt install docker.io
sudo systemctl enable --now docker
# sudo systemctl disable --now docker  # disable it
sudo usermod -aG docker $USER
docker --version
docker run hello-world
