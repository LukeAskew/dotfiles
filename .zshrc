# Functions
source ~/.functions

# Set PATH
export PATH=/opt/homebrew/bin:$HOME/.local/bin:$PATH

# User configs
export EDITOR="zed"
export HOMEBREW_NO_ENV_HINTS=1

# Postgres
export PGUSER=postgres
export PGHOST=localhost

# Work profile (optional)
test -e "${HOME}/.work_profile" && source ~/.work_profile

# Plugins (Homebrew-installed)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Zoxide (directory jumper)
eval "$(zoxide init zsh)"

# Mise (version manager)
eval "$(mise activate zsh)"

# Starship prompt (must be after mise for proper integration)
eval "$(starship init zsh)"

# Activate iTerm scripting
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Automatically list directory contents on `cd`
auto_ls () {
	emulate -L zsh;
  ls -AG
}

if [[ ${chpwd_functions[(I)auto_ls]} -eq 0 ]]; then
  chpwd_functions+=(auto_ls)
fi

# History
SAVEHIST=100000
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
setopt inc_append_history
setopt share_history

# Completion (case-insensitive)
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
