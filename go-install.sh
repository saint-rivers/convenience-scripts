#!/bin/bash

#sudo apt update && sudo apt upgrade -y

# install go programming
if ! command -v go &> /dev/null
then 
	curl -O https://dl.google.com/go/go1.17.2.linux-amd64.tar.gz
	sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz
	#rm go1.17.2.linux-amd64.tar.gz

	echo "export GOPATH=\$HOME/go" >> ~/.bashrc
	echo "export PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin" >> ~/.bashrc
	source ~/.bashrc
	eval "$(cat ~/.bashrc | tail -n +10)"
	exit
else 
	go version
fi

echo "All done"
