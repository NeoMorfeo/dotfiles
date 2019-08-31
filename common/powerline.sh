#!/bin/sh

# Powerline
powerline-daemon -q
export POWERLINE_BASH_CONTINUATION=1
export POWERLINE_BASH_SELECT=1

case $SHELL in
	/bin/bash) . /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh;;
	/bin/zsh) . /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh;;
	*) echo "$SHELL not detected for powerline";;
esac
