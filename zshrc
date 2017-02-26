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

# Powerline
#
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
