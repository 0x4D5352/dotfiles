#!/usr/bin/env bash

# Prepwork - get xcode CLI, rosetta, homebrew, and git
softwareupdate -ia
#softwareupdate --install-rosetta
xcode-select --install
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ $(which git) == *"not found"* ]]; then 
    brew install git
fi

sudo echo "get yourself sudo perms here"

cd ~
mkdir -p workspace/github.com/0x4D5352
mkdir workspace/obsidian

brew install gh
gh auth login

cd workspace/github.com/0x4D5352

gh repo clone dotfiles
gh repo clone nvim

cd dotfiles/installers

chmod +x *
./install.sh

cd ~/workspace/obsidian
gh repo clone daybook
gh repo clone obsidian-vault
gh repo clone apl-jwn-vault

cd ~
mkdir -p .config
cd .config
ln -s ~/workspace/0x4D5352/dotfiles/.config/aerospace ./aerospace
ln -s ~/workspace/0x4D5352/dotfiles/.config/wezterm ./wezterm
ln -s ~/workspace/0x4D5352/dotfiles/.config/zellij ./zellij
ln -s ~/workspace/0x4D5352/dotfiles/.config/nvim ./nvim
ln -s ~/workspace/0x4D5352/dotfiles/.config/aliases.nu ./aliases.nu
mkdir -p ~/Library/Application\ Support/nushell
cp ~/workspace/0x4D5352/dotfiles/env.nu ~/Library/Application\ Support/nushell/env.nu
cp ~/workspace/0x4D5352/dotfiles/config.nu ~/Library/Application\ Support/nushell/config.nu
echo $(which nu) | tee /etc/shells
chsh -s $(which nu)


echo "if you got to this point without any errors you SHOULD be able to launch wezterm and get pulled into nushell!"
