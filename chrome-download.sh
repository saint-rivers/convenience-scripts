#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install vim git curl telegram-desktop -y

cd $HOME 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo rm google-chrome-stable_current_amd64.deb
