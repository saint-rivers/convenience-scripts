#!/bin/bash

sudo apt update
sudo apt install apt-transport-https ca-certificates software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64]  https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce -y
sudo systemctl start docker

sudo usermod -aG docker "$(whoami)"
su - "$(whoami)"

sudo apt install docker-compose -y