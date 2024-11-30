#!/usr/bin/env bash

# install nerdfonts
brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true


# install langs
curl -LsSf https://astral.sh/uv/install.sh | sh
uv python install
brew install pipx
brew install go
brew install lua
brew install luarocks
brew install node

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -y
cargo install sccache
RUSTC_WRAPPER='sccache cargo install {package}'

./rust.sh
./desktop.sh
./tools.sh
