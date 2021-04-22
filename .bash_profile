# Functions
source ~/.functions

# Activate asdf
. /usr/local/opt/asdf/asdf.sh

# Set PATH
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/bin

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

# Postgres
export PATH=/Applications/Postgres.app/Contents/Versions/11/bin:$PATH
export PGUSER=postgres
export PGHOST=localhost
