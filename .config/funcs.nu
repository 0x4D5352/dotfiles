def update-all [] {
  brew update
  brew upgrade
  rustup update
  cargo install-update -a
  pipx upgrade-all
  softwareupdate -ia
  gup update
}

def ghswap [] {
  gh auth switch
  gh auth setup-git
}

def start-zellij [] {
  if 'ZELLIJ' not-in ($env | columns) {
    if 'ZELLIJ_AUTO_ATTACH' in ($env | columns) and $env.ZELLIJ_AUTO_ATTACH == 'true' {
      zellij attach
    } else {
      zellij
    }

    if 'ZELLIJ_AUTO_EXIT' in ($env | columns) and $env.ZELLIJ_AUTO_EXIT == 'true' {
      exit
    }
  }
}

def git-update-all [] {
  ls
  | get name
  | par-each {
    cd $in;
    # TODO: account for cases where the directory errors out cause of stuff like the repo having uncommitted changes
    if (git status) =~ "nothing to commit, working tree clean" {
      git pull
    } else {
      git rebase origin/main
    }
  }
}

def git-merge-to-main [branch: string] {
  git switch main
  git merge $branch
  git push
  git switch $branch
}
