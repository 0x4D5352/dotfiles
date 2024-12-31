def update_all [] {
    brew update
    brew upgrade
    rustup update
    cargo install-update -a
    pipx upgrade-all
    softwareupdate -ia
}

def ghswap [] {
    gh auth switch
    gh auth setup-git
}

def start_zellij [] {
  if 'ZELLIJ' not-in ($env | columns) {
    if 'ZELLIJ_AUTO_ATTACH' in ($env | columns) and $env.ZELLIJ_AUTO_ATTACH == 'true' {
      zellij attach -c
    } else {
      zellij
    }

    if 'ZELLIJ_AUTO_EXIT' in ($env | columns) and $env.ZELLIJ_AUTO_EXIT == 'true' {
      exit
    }
  }
}
