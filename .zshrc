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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias py='python'
alias please='sudo $(fc -ln -1) '
alias rm='trash'

# Set Path
PATH={$PATH}:/home/james/bin:/usr/lib/ruby/gems/2.5.0/gems/:/home/james/.gem/ruby/2.5.0/gems
PATH={/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl}:/home/james/bin:/usr/lib/ruby/gems/2.5.0/gems/:/home/james/.gem/ruby/2.5.0/bin:/home/james/build/art

# Startup
fetch

