#!/bin/bash

# download source code

sudo apt update
sudo apt install gcc -y

git clone https://github.com/hyperledger/fabric.git

# compile into binaries
cd fabric && make release


