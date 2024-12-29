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

# enable starship
use ~/.cache/starship/init.nu

# grab custom commands and aliases
source ~/.config/aliases.nu
source ~/.config/funcs.nu
