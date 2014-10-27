export PATH=~/scripts/i3:$PATH

#Properly config monitors for the i3
#$HOME/scripts/monitor.sh

#VIRTUAL_ENV
_mk_ve_prompt(){
	if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" -a ! -z "${VIRTUAL_ENV}" ] ; then
		echo [$(basename "${VIRTUAL_ENV}")] 
	fi
}

#GIT
if [[ -f /usr/share/git/completion/git-prompt.sh  ]]; then
	source /usr/share/git/completion/git-prompt.sh
	GIT_PS1_SHOWCOLORHINTS=1
	GIT_PS1_SHOWDIRTYSTATE=1
	GIT_PS1_SHOWUNTRACKEDFILES=1
	GIT_PS1_SHOWUPSTREAM="auto"
	PROMPT_COMMAND='__git_ps1 "\[\e[1;31m\]\u\[\e[m\] \[\e[1;33m\]$(_mk_ve_prompt)\[\e[m\][\[\e[1;34m\]\w\[\e[m\]]" " \n\[\e[1;32m\]╚>\$\[\e[m\] "'
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ssh="TERM=xterm ssh"

export EDITOR=vim
export LC_TYPE=es_ES.UTF-8
export BROWSER=google-chrome-unstable
export PYTHONSTARTUP=~/.pystartup

