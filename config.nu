# prep starship
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship.init.nu
# prep zoxide
zoxide init nushell | save -f ~/.zoxide.nu
# load dotfiles config
source ~/.config/config.nu
