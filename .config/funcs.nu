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

