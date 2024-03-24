#!/bin/bash

# prettify zsh
brew install powerlevel10k 

p10k configure

# setup rc file
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
