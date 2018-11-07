# User configuration

export LANG=en_GB.UTF-8

# Editor
export EDITOR='nvim'
export BROWSER='surf'

# Set Path
PATH="$PATH:/home/jams/bin"

# Load JellyZSH
source $HOME/.config/JellyZSH/jellyzsh.zsh

# JellyZSH plugins
plugin "zsh-users/zsh-autosuggestions"
plugin "zsh-users/zsh-syntax-highlighting"
plugin "zsh-users/zsh-completions" "autoload -U compinit && compinit && source $JZSH_PLUGINDIR/zsh-completions/zsh-completions.plugin.zsh"

# Aliases
alias ls="exa"
alias vim="nvim"
