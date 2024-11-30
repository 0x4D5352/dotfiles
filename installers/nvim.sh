#!/bin/bash
# nvim stuff
brew install neovim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
gh repo clone astrotemplate 
mv ./astrotemplate ~/.config/nvim/lua/user
nvim --headless +q

# LSP to install:
# black
# debugpy
# isort
# jq
# lua-languageserver
# luaformatter
# pylint
# pytight
# yamlfmt
