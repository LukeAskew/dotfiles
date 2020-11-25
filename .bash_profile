# Functions
source ~/.functions

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin

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

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v11)

# Ruby
eval "$(rbenv init -)"

# Node
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# PHP
export PATH=/usr/local/opt/php@7.4/bin:$PATH
export PATH=/usr/local/opt/php@7.4/sbin:$PATH

# Postgres
export PATH=/Applications/Postgres.app/Contents/Versions/11/bin:$PATH
export PGUSER=postgres
export PGHOST=localhost
