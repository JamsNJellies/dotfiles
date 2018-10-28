# User configuration

export LANG=en_GB.UTF-8

# Editor
export EDITOR='nvim'
export PAGER='most'
export BROWSER='chromium'
export GAPS=5

# Set Path
PATH={$PATH}:/home/james/bin:$GOPATH/bin

# Load JellyZSH
source ~/.config/JellyZSH/jellyzsh.zsh

# JellyZSH plugins
plugin "zsh-users/zsh-autosuggestions"
plugin "zsh-users/zsh-syntax-highlighting"
plugin "zsh-users/zsh-completions" "autoload -U compinit && compinit && source $JZSH_PLUGINDIR/zsh-completions/zsh-completions.plugin.zsh"

# Aliases
alias ls="exa"
alias vim="nvim"
