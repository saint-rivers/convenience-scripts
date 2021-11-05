#!/bin/bash

# install linux tools
sudo apt update
sudo apt install curl git -y

#ninstall go
if ! command -v go &> /dev/null
then 
	curl -O https://dl.google.com/go/go1.17.2.linux-amd64.tar.gz
	sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz
	rm go1.17.2.linux-amd64.tar.gz

	echo "export GOPATH=\$HOME/go" >> ~/.bashrc
	echo "export PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin" >> ~/.bashrc
	eval "$(cat ~/.bashrc | tail -n +10)"
	exit
else 
	go version
fi

echo "All done"

# install docker and docker-compose
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