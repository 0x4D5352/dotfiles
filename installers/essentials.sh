#!/bin/bash

# essentials

softwareupdate --install-rosetta
brew install --cask iterm2
# open jn_custom_current.terminal

brew tap homebrew/cask-fonts
# brew install --cask font-meslo-lg-nerd-font
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

# install langs locally

# python stuff
brew install python@3.12
brew install --cask jupyterlab

# brew install go
brew install lua
brew install node
