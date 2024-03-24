# import aliases

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# import .zshenv if it doesn't automatically
# . ~/.zshenv

#path updates
# export PATH=$PATH:(ADD_USER_PATHS_HERE)

# enable tetris
# autoload -Uz tetriscurses

# ensure homebrew completions
if type brew &>/dev/null
then
        FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
        autoload -Uz compinit
        compinit
fi

# enabling zoxide and fuzzy finder 

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# enable starship prompt
eval "$(starship init zsh)"


