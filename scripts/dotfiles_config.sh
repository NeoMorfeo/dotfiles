#!/bin/sh

echo "Configure the $USER dotfiles"

echo "Clone git dotfiles from NeoMorfeo"
git clone https://github.com/NeoMorfeo/dotfiles.git $HOME/dotfiles

echo "Configure several GIT alias"
[ -d "$HOME/.gitconfig" ] && rm -rf $HOME/.gitconfig
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
[ -d "$HOME/.archey3.cfg" ] && rm -rf $HOME/.archey3.cfg
ln -s $HOME/dotfiles/archey3.cfg $HOME/.archey3.cfg


echo "Configuring shells"
echo "Bash"
[ -d "$HOME/.bashrc" ] && rm -rf $HOME/.bashrc
ln -s $HOME/dotfiles/bashrc $HOME/.bashrc
[ -d "$HOME/.bash_profile" ] && rm -rf $HOME/.bash_profile
ln -s $HOME/dotfiles/bash_profile $HOME/.bash_profile
echo "ZSH"
[ -d "$HOME/.zshrc" ] && rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc

echo "Configure awesome"
ln -s $HOME/dotfiles/awesome $HOME/.config/
ln -s $HOME/dotfiles/i3 $HOME/.config/

#scripts	sublimetext  vimrc  Xdefaults  xinitrc	xprofile  Xresources  Xsession
