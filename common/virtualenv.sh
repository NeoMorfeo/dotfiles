#!/bin/sh
#
# VirtualEnv configuration
#
#VIRTUAL_ENV
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$(which python)
export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)

if [ -f /usr/share/virtualenvwrapper/virtualenvwrapper.sh ]; then
	. /usr/share/virtualenvwrapper/virtualenvwrapper.sh
else
	. /usr/bin/virtualenvwrapper.sh
fi
