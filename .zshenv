# Set path to unique entries and discard duplicates
typeset -U PATH path

# XDG
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.cache

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export ZCUSTOM="$ZDOTDIR"/.zcustom

# Move cache directory
export ZSH_CACHE_DIR="$XDG_CACHE_HOME"/zsh

export HISTFILE="$ZDOTDIR"/.zhistory
export HISTSIZE=1000
export SAVEHIST=5000

# Zinit
declare -A ZINIT
ZINIT[HOME_DIR]="$ZDOTDIR"/.zinit
ZINIT[BIN_DIR]="$ZDOTDIR"/.zinit/bin
ZINIT[PLUGINS_DIR]="$ZDOTDIR"/.zinit/plugins
ZINIT[COMPLETIONS_DIR]="$ZDOTDIR"/.zinit/completions
ZINIT[SNIPPETS_DIR]="$ZDOTDIR"/.zinit/snippets
ZINIT[ZCOMPDUMP_PATH]="$XDG_CACHE_HOME"/zcompdump/zcompdump-zinit

export ZPFX="$ZDOTDIR"/.zinit/polaris

# Default Apps
export TERMINAL="kitty"
export WM="bspwm"
export PAGER="bat"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BROWSER="chromium"
export VISUAL="nvim"
export EDITOR="nvim"
export OPENER="xdg-open"

# Disable lesshst
export LESSHISTFILE=-

# Fcitx5
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS=@im='fcitx'

# X11
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtkrc

# Pulse Audio
export PULSE_COOKIE="/tmp/pulse-cookie"

# Intellij Idea and BSPWM
export _JAVA_AWT_WM_NONREPARENTING=1

# Python
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/pythonrc.py

# Starship Prompt
export STARSHIP_CACHE="$XDG_CACHE_HOME"/starship
export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship/config.toml

