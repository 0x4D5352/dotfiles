# Set Path
$env.PATH = ($env.PATH |
  split row (char esep) |
  prepend '/opt/homebrew/bin' |
  prepend '/opt/homebrew/sbin' |
  prepend '/opt/homebrew/opt/postgresql@16/bin' |
  append '/usr/local/bin' |
  append ($env.HOME | path join ".local" "bin") |
  append ($env.HOME | path join ".cargo" "bin") |
  append ($env.home | path join "go" "bin")
)
$env.PATH = ($env.PATH | uniq)

# setup starship
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship.init.nu
