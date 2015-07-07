#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f /etc/bash_completion ]] && . /etc/bash_completion

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

export BROWSER=/usr/bin/xdg-open

# prompt
if [[ `id -u` -eq 0 ]]; then
  PS1='[\u@\h \W]\# '
else
  PS1='[\u@\h \W]\$ '
fi;

[[ -f ~/.shrc ]] && . ~/.shrc

