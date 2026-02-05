# Functions
source ~/.functions

# Set PATH
export PATH=/opt/homebrew/bin:$HOME/.local/bin:$PATH

# History
export HISTTIMEFORMAT="%F %T "
export HISTCONTROL="erasedups:ignoreboth"
export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# User configs
export EDITOR="zed"

# Postgres
export PGUSER=postgres
export PGHOST=localhost

# Starship prompt
eval "$(starship init bash)"

# Activate mise (version manager)
eval "$(mise activate bash)"
