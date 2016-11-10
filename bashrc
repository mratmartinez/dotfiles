#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias zz='pass -c'
alias scrot=$(scrot -e 'mv $f ~/Imágenes/Screenshots/')
alias cls='clear'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
