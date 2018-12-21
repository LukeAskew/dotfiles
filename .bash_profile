# Functions
source ~/.functions

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin

# History
export HISTTIMEFORMAT="%F %T "
export HISTCONTROL="erasedups:ignoreboth"
export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# User configs
export EDITOR="code"

# Golang
export GOPATH=${HOME}/go
export GOROOT=$(brew --prefix golang)/libexec
export GOBIN=$GOPATH/bin
export PATH=$PATH:${GOBIN}:${GOROOT}/bin

# Python
export PATH=$HOME/miniconda3/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH

# Node
export PATH=/usr/local/opt/node/bin:$PATH
export PATH=$(pwd)/node_modules/.bin:$PATH

# Postgres
export PATH=/usr/local/opt/postgresql/bin:$PATH
