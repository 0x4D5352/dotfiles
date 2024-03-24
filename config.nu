# my stuff - append to your config.nu after setting up 

def start_zellij [] {
    if 'ZELLIJ' not-in ($env | columns) {
        if 'ZELLIJ_AUTO_ATTACH in ($env | columns) and $env.Zellij_AUTO_ATTACH == 'true' {
            zellij attach -c
        } else {

        }
        if 'ZELLIJ_AUTO_EXIT' in ($env | columns) and $env.Zellij_AUTO_EXIT == 'true' {
            exit
        }
    }
}

start_zellij

use ~/.cache/starship/init.nu
source ~/.config/aliases.nu
