#!/usr/bin/env bash

# TODO: do a check for if os == darwin, then update symlinks cause iirc linux is ln -s dest source while macos is ln -s source dest

# Prepwork - get xcode CLI, rosetta, homebrew, and git
#softwareupdate -ia
#softwareupdate --install-rosetta
#xcode-select --install
#NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ $(which git) == *"not found"* ]]; then 
    brew install git
fi

sudo echo "get yourself sudo perms here"

cd ~
mkdir -p workspace/github.com/0x4D5352

brew install gh
gh auth login

cd workspace/github.com/0x4D5352

gh repo clone dotfiles
gh repo clone nvim

cd dotfiles/installers

chmod +x *
./install.sh

cd ~/workspace/github.com/0x4D5352/
gh repo clone obsidian-vault
gh repo clone apl-jwn-vault

cd ~
mkdir -p .config
cd .config
ln -s ~/workspace/github.com/0x4D5352/nvim ./nvim
ln -s ~/workspace/github.com/0x4D5352/dotfiles/.config/aerospace ./aerospace
ln -s ~/workspace/github.com/0x4D5352/dotfiles/.config/ghostyy ./ghostty
ln -s ~/workspace/github.com/0x4D5352/dotfiles/.config/zellij ./zellij
ln -s ~/workspace/github.com/0x4D5352/dotfiles/.config/aliases.nu ./aliases.nu
ln -s ~/workspace/github.com/0x4D5352/dotfiles/.config/funcs.nu ./funcs.nu
ln -s ~/workspace/github.com/0x4D5352/dotfiles/.config/config.nu ./config.nu
mkdir -p ~/Library/Application\ Support/nushell
echo "source ~/.config/config.nu" > ~/Library/Application\ Support/nushell/config,nu
echo $(which nu) | tee /etc/shells
chsh -s $(which nu)


echo "if you got to this point without any errors you SHOULD be able to launch wezterm and get pulled into nushell!"
