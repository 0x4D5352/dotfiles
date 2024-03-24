# My stuff, append to the end of env.nu after setting up

$env.PATH = ($env.PATH |
  split row (char esep) |
  prepend '/opt/homebrew/bin' |
  append '/usr/local/bin' |
  append ($env.HOME | path join ".local" "bin") |
  append ($env.HOME | path join ".cargo" "bin")
)
$env.PATH = ($env.PATH | uniq)

$env.HOMEBREW_CELLAR = '/opt/homebrew/Cellar'
$env.HOMEBREW_PREFIX = '/opt/homebrew'
$env.HOMEBREW_REPOSITORY = '/opt/homebrew'
$env.INFOPATH = '/opt/homebrew/share/info:'
$env.MANPATH = '/opt/homebrew/share/man::'
$env.EDITOR = 'nvim'
