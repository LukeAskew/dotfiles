# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Libs & Plugins
source ~/.antigen.zsh

antigen theme romkatv/powerlevel10k
antigen bundle common-aliases
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen apply

# Activate profiles
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
test -e "${HOME}/.work_profile" && source ~/.work_profile
source ~/.bash_profile

# Activate asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Activate iTerm scripting
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Automatically list directory contents on `cd`
auto_ls () {
	emulate -L zsh;
  ls -AG
}

if [[ ${chpwd_functions[(I)auto-ls]} -eq 0 ]]; then
  chpwd_functions+=(auto_ls)
fi

# History
SAVEHIST=100000
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
setopt inc_append_history
setopt share_history

# Misc
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
