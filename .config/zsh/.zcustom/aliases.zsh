alias nd='nvm use default'
alias ndd='nvm deactivate'

# Show dir stack
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# Go to zsh directory
alias zshc='cd $ZDOTDIR'

# Load config files
alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Tools replacement
alias sudo='doas'
alias ls='exa -lbh'
alias la='exa -albh'
alias grep='rg -n'
alias cat='bat'
alias find='fd'

