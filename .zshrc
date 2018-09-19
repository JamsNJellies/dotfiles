#    ███████  ████████ ██      ██
#  ░░░░░░██  ██░░░░░░ ░██     ░██
#       ██  ░██       ░██     ░██
#      ██   ░█████████░██████████
#     ██    ░░░░░░░░██░██░░░░░░██
#    ██            ░██░██     ░██
#   ████████ ████████ ░██     ░██
#  ░░░░░░░░ ░░░░░░░░  ░░      ░░ 

# Path to your oh-my-zsh installation.
export ZSH=/home/james/.oh-my-zsh

# pytify
export SPOTIPY_CLIENT_ID='a48657b93b0648879eb4f7139a0630a9'
export SPOTIPY_CLIENT_SECRET='7e58d728d3694beb98ed1bf0b267e509'

# Antigen
source $HOME/.oh-my-zsh/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Default repo bundles
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Antigen Bundles
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# Must be last bundle
antigen bundle zsh-users/zsh-syntax-highlighting

# Antigen apply
antigen apply 

# keybinds
bindkey '^ ' autosuggest-accept

ZSH_THEME="jellies"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  sudo
)

source $ZSH/oh-my-zsh.sh
source ~/bin/zsh/tmuxinator.zsh

# User configuration

export LANG=en_GB.UTF-8

# Editor
export EDITOR='vim'
export PAGER='most'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias weather=' curl -s wttr.in/london | head -n 7 && printf "\n"  '
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias py='python'
alias please='sudo $(fc -ln -1) '
alias rm='trash'
alias ls='exa' 
alias lsa='exa -al --header --grid'
alias todo='notes open todo'
# Set Path
PATH={$PATH}:/home/james/bin:/usr/lib/ruby/gems/2.5.0/gems/:/home/james/.gem/ruby/2.5.0/gems
PATH={/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl}:/home/james/bin:/usr/lib/ruby/gems/2.5.0/gems/:/home/james/.gem/ruby/2.5.0/bin:/home/james/build/art

# Startup
fetch

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
