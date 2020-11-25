#! /bin/sh

PROCS=`nproc`

sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
tar -xf Python-3.9.0.tgz
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
tar -xf Python-3.9.0.tgz
cd Python-3.9.0
./configure --enable-optimizations
make -j $NPROC
sudo make altinstall
