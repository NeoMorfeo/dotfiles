#!/bin/sh

echo "Configure the $USER dotfiles"

echo "Clone git dotfiles from NeoMorfeo"
if [ ! -d $HOME/dotfiles ]; then
	git clone https://github.com/NeoMorfeo/dotfiles.git $HOME/dotfiles
else
	cd $HOME/dotfiles
	git pull
	cd -
fi

echo "Configure several GIT alias"
[ -f "$HOME/.gitconfig" ] && rm -rf $HOME/.gitconfig
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
[ -f "$HOME/.archey3.cfg" ] && rm -rf $HOME/.archey3.cfg
ln -s $HOME/dotfiles/archey3.cfg $HOME/.archey3.cfg

echo "Configuring nvm"
if [ ! -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm" && (
    git clone https://github.com/creationix/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
  ) && . "$NVM_DIR/nvm.sh"
fi;

echo "Config for standar X configs"
[ -f "$HOME/.Xdefaults" ] && rm -rf $HOME/.Xdefaults
ln -s $HOME/dotfiles/Xdefaults $HOME/.Xdefaults

[ -f "$HOME/.Xresources" ] && rm -rf $HOME/.Xresources
ln -s $HOME/dotfiles/Xresources $HOME/.Xresources

[ -f "$HOME/.Xsession" ] && rm -rf $HOME/.Xsession
ln -s $HOME/dotfiles/Xsession $HOME/.Xsession

[ -f "$HOME/.xinitrc" ] && rm -rf $HOME/.xinitrc
ln -s $HOME/dotfiles/xinitrc $HOME/.xinitrc

[ -f "$HOME/.xprofile" ] && rm -rf $HOME/.xprofile
ln -s $HOME/dotfiles/xprofile $HOME/.xprofile

echo "Configuring VIM"
[ -f "$HOME/.vimrc" ] && rm -rf $HOME/.vimrc
ln -s $HOME/dotfiles/vimrc $HOME/.vimrc

echo "Configuring shells"
echo "Bash"
[ -f "$HOME/.bashrc" ] && rm -rf $HOME/.bashrc
ln -s $HOME/dotfiles/bashrc $HOME/.bashrc
[ -f "$HOME/.bash_profile" ] && rm -rf $HOME/.bash_profile
ln -s $HOME/dotfiles/bash_profile $HOME/.bash_profile

echo "ZSH"
[ -f "$HOME/.zshrc" ] && rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc

echo "Configure awesome"
[ -d "$HOME/.config/awesome" ] && rm -rf $HOME/.config/awesome
ln -s $HOME/dotfiles/awesome $HOME/.config/

echo "Configure i3"
[ -d "$HOME/.config/i3" ] && rm -rf $HOME/.config/i3
ln -s $HOME/dotfiles/i3 $HOME/.config/
