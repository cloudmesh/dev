#! /bin/sh

banner ssh

sudo apt update
sudo apt install openssh-server


sudo systemctl status ssh
sudo ufw allow ssh


#sudo systemctl disable --now ssh
#sudo systemctl enable --now ssh
