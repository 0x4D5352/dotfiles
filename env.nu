############## BELOW HERE IS ALL MY STUFF :D ######################


$env.PATH = ($env.PATH |
  split row (char esep) |
  prepend '/opt/homebrew/bin' |
  prepend '/usr/local/bin' |
  append ($env.HOME | path join ".local" "bin") |
  append ($env.HOME | path join ".cargo" "bin") |
  append ($env.HOME | path join "go" "bin") | 
  # append ($env.HOME | path join ".ghcup" "bin") |
  # append ($env.HOME | path join ".cabal" "bin")
)
$env.PATH = ($env.PATH | uniq)

$env.HOMEBREW_CELLAR = '/opt/homebrew/Cellar'
$env.HOMEBREW_PREFIX = '/opt/homebrew'
$env.HOMEBREW_REPOSITORY = '/opt/homebrew'
$env.INFOPATH = '/opt/homebrew/share/info:'
$env.MANPATH = '/opt/homebrew/share/man::'
$env.EDITOR = 'nvim'

mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

