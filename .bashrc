#!/bin/bash
declare -a HIDDEN_FILES=('desktop.ini' '\$RECYCLE.BIN' 'System Volume Information' 'Zomboid' '\*.blend1')

HIDDEN_FILES_S=""
for i in ${HIDDEN_FILES[@]}; do
  HIDDEN_FILES_S="$HIDDEN_FILES_S --hide $i "
done

alias g="git"
alias gs="git status"
alias cd="z"
alias ..="cd .."
alias dc="cd"
alias c="clear"
alias v="nvim"
alias ls="ls -h --color=auto --group-directories-first ${HIDDEN_FILES_S}"
alias sl="ls"
alias mv="mv -iv"  # i: prompt before overwrite; v: verbose output
alias rm="rm -iv"  # i: prompt before; v: verbose output
alias pwd="pwd -P" # P: resolve all symlinks
alias yt="yt-dlp"
alias yta="yt-dlp -x --audio-format wav"

alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"

kpid() {
  kill $(pidof $1)
}

restart() {
  kpid $1;$1 & disown
}
alias r="restart"

eval "$(zoxide init bash)"
export MANPAGER="nvim +Man!"

FG="\e[33m"
BG="\e[0m"
export PS1="$BG\u@\h $FG\W$BG \$\e[0m "
