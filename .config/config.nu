# load stdlib modules i use
use std/dirs
use std/formats *
use std/xml *

# Set Path
$env.PATH = [
  "/opt/homebrew/bin"
  "/opt/homebrew/sbin"
  "/opt/homebrew/opt/postgresql@16/bin"
  ...$env.PATH
]

$env.PATH ++= [
  "/usr/local/bin"
  ($env.HOME | path join ".local" "bin")
  ($env.HOME | path join ".cargo" "bin")
  ($env.HOME | path join "go" "bin")
]

$env.PATH = ($env.PATH | uniq)

#$env.XDG_CONFIG_HOME = ($env.HOME | path join '.config')

# update config
$env.config.history.file_format = "sqlite"
$env.config.edit_mode = "vi"
$env.config.use_kitty_protocol = true
$env.EDITOR = 'nvim'

# prep for homebrew
$env.HOMEBREW_CELLAR = '/opt/homebrew/Cellar'
$env.HOMEBREW_PREFIX = '/opt/homebrew'
$env.HOMEBREW_REPOSITORY = '/opt/homebrew'
$env.INFOPATH = '/opt/homebrew/share/info:'
$env.MANPATH = '/opt/homebrew/share/man::'

# set env vars for common utils
$env.RUSTC_WRAPPER = $env.HOME + '/.cargo/bin/sccache'
$env.LDFLAGS = '-L/opt/homebrew/opt/postgresql@16/lib'
$env.CPPFLAGS = '-L/opt/homebrew/opt/postgresql@16/include'
$env.PKG_CONFIG_PATH = '/opt/homebrew/opt/postgresql@16/lib/pkgconfig'

# setup topiary
$env.TOPIARY_CONFIG_FILE = ($env.HOME | path join '.config' topiary languages.ncl)
$env.TOPIARY_LANGUAGE_DIR = ($env.HOME | path join '.config' topiary languages)
source ~/.config/topiary/format.nu

# setup starship
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship.init.nu
use ~/.cache/starship/init.nu

# grab custom commands and aliases
source ~/.config/aliases.nu
source ~/.config/funcs.nu

# auto-start zellij if not already in a zellij session
start-zellij

# zoxide setup
source ~/.zoxide.nu

# source scripts

# source ~/.config/nu_scripts/custom-completions/op/op-completions.nu
# source ~/.config/nu_scripts/custom-completions/gh/gh-completions.nu
# source ~/.config/nu_scripts/custom-completions/git/git-completions.nu
# source ~/.config/nu_scripts/custom-completions/tar/tar-completions.nu
# source ~/.config/nu_scripts/custom-completions/poetry/poetry-completions.nu
# source ~/.config/nu_scripts/custom-completions/man/man-completions.nu
# source ~/.config/nu_scripts/custom-completions/cargo/cargo-completions.nu
# source ~/.config/nu_scripts/custom-completions/cargo-make/cargo-make-completions.nu
# source ~/.config/nu_scripts/custom-completions/curl/curl-completions.nu
# source ~/.config/nu_scripts/custom-completions/docker/docker-completions.nu
# source ~/.config/nu_scripts/custom-completions/rg/rg-completions.nu
# source ~/.config/nu_scripts/custom-completions/rustup/rustup-completions.nu
# source ~/.config/nu_scripts/custom-completions/zellij/zellij-completions.nu
# source ~/.config/nu_scripts/custom-completions/btm/btm-completions.nu
