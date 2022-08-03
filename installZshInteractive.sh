#!/bin/bash

sudo apt-get update
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

chsh -s $(which zsh)

echo "NOTE: Please logout and log in again for the default shell to be set correctly"
