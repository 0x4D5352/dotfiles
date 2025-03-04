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

def gitupdateall [] {
  # TODO: account for cases where the directory errors out cause of stuff like the repo having uncommitted changes
  ls
  | get name
  | each {
    cd $in;
    git pull
  }
}

def gopkgs [] { 
  which go 
  | get path.0
  | ls  $in
  | where type == "dir"
  | get name
  | split column "/" 
  | get column9 
}

def godocs [] {
  which go 
  | get path.0
  | ls  $in
  | where type == "dir"
  | get name
  | each { 
    ls $in
    | each {
      get name
      | split column "/"
      | select column9 column10
    }
  }
  | flatten
}
