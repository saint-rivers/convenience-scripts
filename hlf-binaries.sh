#!/bin/bash

# download source code

PROJECT_NAME=$1

sudo apt update
sudo apt install gcc make -y

git clone https://github.com/hyperledger/fabric.git

# compile into binaries
cd fabric && make release
cd ..

cp -r fabric/release/linux-amd64/bin ${PROJECT_NAME}/bin
# rm -rf fabric

if [ "$2" == "-y" ]; then
    rm -rf fabric
else
    echo "Do you want to remove fabric source code? [Y/n]"
    read willDelete

    if [ "$willDelete" == "y" ]; then
        rm -rf fabric
    fi
fi
