# The following lines were added by compinstall
zstyle :compinstall filename '/home/neomorfeo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

#Fix for home/end keys
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
#Extra includes depends on host
if [[ -f ~/.xtra_includes ]]; then
	source ~/.xtra_includes
fi

#Powerline
powerline-daemon -q
export POWERLINE_BASH_CONTINUATION=1
export POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
