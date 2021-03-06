#!/bin/bash
export PATH=~/scripts/i3:$PATH

#Properly config monitors for the i3
#$HOME/scripts/monitor.sh

#Extra path custom scripts
if [[ -d ~/dotfiles/scripts ]]; then
	export PATH=$HOME/dotfiles/scripts:$PATH
fi

# VirtualEnvWrapper
. ${HOME}/dotfiles/common/virtualenv.sh

_mk_ve_prompt(){
	if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" -a ! -z "${VIRTUAL_ENV}" ] ; then
		echo [$(basename "${VIRTUAL_ENV}")]
	fi
}

#NVM
. ${HOME}/dotfiles/common/nvm.sh

#SANDBOX_CHECK
_mk_sanbox(){
	if [ ! -z "$AE_SANDBOX" ] ; then
		echo ["\[\e[1;32m\]\$AE_SANDBOX\[\e[m\]"]
	fi
}

#JOBS
function jobs_info() {
    local rj=$(jobs -pr | wc -l)
    local sj=$(jobs -ps | wc -l)
    if [ $rj -ne 0 -o $sj -ne 0 ]; then
        # FIXME: Not work with colors; escape characteres are shown instead
        # of actual colors. Why? This works in git prompt but here not.
        if [ "$1" != "" ]; then
            printf "$1" $rj $sj
        else
            echo -en "[jobs:$rj|$sj] "
        fi
    fi
}

#GIT
if [[ -f /usr/share/git/completion/git-prompt.sh  ]]; then
	source /usr/share/git/completion/git-prompt.sh
	SOURCED=0
elif [[ -f ~/.bash-git-prompt/gitprompt.sh  ]]; then
	source ~/.bash-git-prompt/gitprompt.sh
	SOURCED=0
elif [[ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]]; then
	source /usr/share/git-core/contrib/completion/git-prompt.sh
	SOURCED=0
fi

if [[ $SOURCED -eq 0 ]]; then
	GIT_PS1_SHOWCOLORHINTS=1
	GIT_PS1_SHOWDIRTYSTATE=1
	GIT_PS1_SHOWUNTRACKEDFILES=1
	GIT_PS1_SHOWUPSTREAM="auto"
	#PROMPT_COMMAND='__git_ps1 "\[\e[1;31m\]\u\[\e[m\] \[\e[1;33m\]$(_mk_ve_prompt)\[\e[m\][\[\e[1;34m\]\w\[\e[m\]] $(_mk_sanbox)" "\n  \[\e[1;32m\]\$\[\e[m\] "'
fi

. ${HOME}/dotfiles/common/alias.sh
. ${HOME}/dotfiles/common/functions.sh

export EDITOR=vim
#export LC_TYPE=es_ES.UTF-8
export LC_TYPE=en_US.UTF-8
export BROWSER=firefox
export PYTHONSTARTUP=~/.pystartup
export HISTTIMEFORMAT="[%F %T] "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#Powerline
. ${HOME}/dotfiles/common/powerline.sh

#Test first if HiDPI screen
export QT_SCALE_FACTOR="1.8"

#Extra includes depends on host
if [[ -f ~/.xtra_includes ]]; then
    source ~/.xtra_includes
fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/neomorfeo/.sdkman"
[[ -s "/home/neomorfeo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/neomorfeo/.sdkman/bin/sdkman-init.sh"
export EDITOR=vim
