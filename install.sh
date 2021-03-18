#!/bin/bash

sudo apt-get install -y \
    wget curl htop ncdu \
    git vim fzf zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

pushd "$(dirname "${BASH_SOURCE[0]}")"
# Home setup
echo "Setting up home folder..."
cp -rv ./.vim* .zshrc .bash_aliases .gitconfig .oh-my-zsh/ ~/

./vscode.sh
./starship.sh
popd
