#! /bin/sh

banner add universe

sudo add-apt-repository universe


banner essentials

sudo apt install build-essential -y
sudo apt install curl -y
sudo apt-get install sysvbanner

banner EMACS

sudo snap install emacs --classic

banner git

sudo apt install git -y
git config --global core.editor emacs

read -p "Email to be used for GitHub: " gitemail
read -p "Firstname and Lastname  of the user in GitHub: " gitusername

git config --global user.email "$gitemail"
git config --global user.name "$gitusername"

banner ssh

sudo apt update
sudo apt install openssh-server

sudo systemctl status ssh
sudo ufw allow ssh


#sudo systemctl disable --now ssh
#sudo systemctl enable --now ssh

banner PYTHON

PROCS=`nproc`

sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
tar -xf Python-3.10.5.tgz
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
tar -xf Python-3.10.5.tgz
cd Python-3.10.5
./configure --enable-optimizations
make -j $NPROC
sudo make altinstall
python3.9 -m ensurepip
python3.9 -m pip install -U pip
python3.9 -m venv install
python3.9 -m venv ~/ENV3

# curl https://bootstrap.pypa.io/get-pip.py | python3.10

banner editors

sudo snap install pycharm-professional --classic
sudo snap install code --classic

#banner docker

#sudo apt update
#sudo apt install docker.io -y
#sudo groupadd docker

#sudo systemctl enable --now docker
## sudo systemctl disable --now docker  # disable it
#newgrp docker

#sudo usermod -aG docker $USER
#docker --version
#docker run hello-world

banner LaTeX
sudo apt install texlive-latex-extra -y

banner jabref
sudo snap install jabref

banner pandoc

sudo apt-get install pandoc

banner hugo

sudo apt install hugo -y

banner epub
sudo snap install foliate

banner add blocker

sudo snap install brave

banner vlc

sudo snap install vlc

# screenshot
banner flameshot

sudo snap install flameshot

# sudo add-apt-repository ppa:marten-baert/simplescreenrecorder
# sudo apt-get update
# sudo apt-get install simplescreenrecorder
#! /bin/sh

# banner gnome tweak tool

#sudo apt install gnome-tweak-tool -y


#
# sudo apt-get install unity-tweak-tool -y
# unity-tweak-tool
# Error: schema com.canonical.Unity.ApplicationsLens not installed
#! /bin/sh

# sudo apt install gnustep-gui-runtime

#! /bin/sh

banner skype

sudo snap install skype --classic

