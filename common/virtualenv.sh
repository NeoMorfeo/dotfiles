#!/bin/sh
#
# VirtualEnv configuration
#
#VIRTUAL_ENV
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$(which python)
export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)
. /usr/bin/virtualenvwrapper.sh