# Juan Martínez
# .bashrc
# github.com/mratmartinez/dotfiles
# A Nisman lo mataron

function check(){
	if [ $PWD != '/' ]; then
		IFS='/' read -a array <<<$PWD
		if [ ${array[1]} == 'home' ]; then
			PREDIRECTO=$(echo $PWD |  sed -r 's|/([^/]{,2})[^/]*|/\1|g' | cut -c8- | rev |  cut -c3- | rev)
			if [ ${array[-1]} == $USER ]; then
				DIRECTO=\~
			elif [ ${array[-1]} == ${array[1]} ]; then
				DIRECTO=/${array[-1]}
			else
				DIRECTO=\~/$PREDIRECTO${array[-1]}
			fi
		else
			DIRECTO=$(echo $PWD |  sed -r 's|/([^/]{,2})[^/]*|/\1|g' | rev |  cut -c3- | rev)${array[-1]}
		fi
	else
		DIRECTO=/
	fi
	PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] $DIRECTO \$\[\033[00m\] '
}

check

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}"
    check
}

if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# El historial tiene que ser más largo
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export WWW_HOME='www.duckduckgo.com'

# $ eselect vi show
# Current vi implementation:
#   nvim
alias vim='vi'

# xclip on system
alias xclip='xclip -selection c'
