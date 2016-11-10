#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function mp () {
    nohup terminator --role=music -e ncmpcpp > /dev/null 2>&1 & disown
}
function ran () {
    nohup terminator --role=files -e ranger > /dev/null 2>&1 & disown
}
alias scrot=$(scrot -e 'mv $f ~/Imágenes/Screenshots/')
alias cls='clear'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
