# Settings
setopt autocd extended_glob nomatch notify
setopt extended_history share_history hist_ignore_dups hist_ignore_all_dups hist_find_no_dups hist_save_no_dups 
setopt auto_pushd pushd_ignore_dups pushd_silent
unsetopt beep

# Emacs style
bindkey -e

# Delete key
bindkey "^[[3~"  delete-char
bindkey "^[3;5~" delete-char

# Use vim keys in tab complete menu:
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# Starship prompt
eval "$(starship init zsh)"

# PyEnv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# Zinit
if [[ ! -f $HOME/.config/zsh/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.config/zsh/.zinit" && command chmod g-rwX "$HOME/.config/zsh/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.config/zsh/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.config/zsh/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load modules
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

# Ctrl-R completion
zinit load zdharma/history-search-multi-word

autoload -U compinit; compinit
_comp_options+=(globdots)

# Load custom config files and aliases
for config_file ($ZCUSTOM/*.zsh); do
    . $config_file
done

# Load syntax highlighting
zinit light zdharma/fast-syntax-highlighting
