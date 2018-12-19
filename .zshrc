# Setup
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh
source ~/.antigen.zsh

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# History
SAVEHIST=100000
setopt inc_append_history
setopt share_history

# Antigen
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle paulirish/git-open
antigen bundle command-not-found
antigen bundle tarruda/zsh-autosuggestions
antigen bundle trapd00r/zsh-syntax-highlighting-filetypes
antigen apply

# Activate bash_profile
source ~/.bash_profile
