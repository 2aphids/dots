#!/bin/bash
export PATH=$(find ~/.local/bin -type d -printf "%p:")$PATH

EDITOR=nvim
declare -a HIDDEN_FILES=('desktop.ini' '\$RECYCLE.BIN' 'System Volume Information' 'Zomboid' '\*.blend1')

HIDDEN_FILES_S=""
for i in ${HIDDEN_FILES[@]}; do
  HIDDEN_FILES_S="$HIDDEN_FILES_S --hide $i "
done

alias g="git"
alias open="xdg-open"
alias o="open"
alias cd="z"
alias ..="cd .."
alias dc="cd"
alias c="clear"
alias v="${EDITOR}"
alias ls="ls --color=auto --group-directories-first ${HIDDEN_FILES_S}"
alias sl="ls"
alias mv="mv -iv"  # i: prompt before overwrite; v: be verbose
alias rm="rm -iv"  # i: prompt before; v: be verbose
alias pwd="pwd -P" # P: resolve all symlinks
alias serve="python -m http.server; firefox localhost:8000"
alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"
alias yta="yt-dlp -x --audio-format wav "
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

kpid() {
  kill $(pidof $1)
}

eval "$(zoxide init bash)"
export MANPAGER="nvim +Man!"
