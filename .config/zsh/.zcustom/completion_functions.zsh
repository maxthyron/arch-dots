#!/bin/zsh

dev() { cd ~/develop/$1 ;}
_dev() {
    _files -/ -W ~/develop
}
compdef _dev dev

gh() { cd ~/github/$1 ;}
_gh() {
    _files -/ -W ~/github
}
compdef _gh gh

gl() { cd ~/gitlab/$1 ;}
_gl() {
    _files -/ -W ~/gitlab
}
compdef _gl gl

dotfiles() { git --git-dir="$HOME"/.dotfiles --work-tree="$HOME" }
