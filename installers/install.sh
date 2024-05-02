#!/bin/sh
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ $(which git) == *"not found"* ]]; then 
    brew install git
fi
brew install gh
gh auth login
gh repo clone mussar0x4D5352/dotfiles
cd dotfiles
./essentials.sh
./rust.sh
./tools.sh
./zsh.sh
./nvim.sh
./containers.sh
./desktop.sh

