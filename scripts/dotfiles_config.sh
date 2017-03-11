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


echo "Config for standar X configs"
[ -f "$HOME/.Xdefaults" ] && rm -rf $HOME/.Xdefaults
ln -s $HOME/dotfiles/Xdefaults $HOME/.Xdefaults

[ -f "$HOME/.Xresources" ] && rm -rf $HOME/.Xresources
ln -s $HOME/dotfiles/Xresources $HOME/.Xresources

echo "Configuring VIM"
[ -f "$HOME/.vimrc" ] && rm -rf $HOME/.vimrc
ln -s $HOME/dotfiles/vimrc $HOME/.vimrc

echo "Configuring Sublimetext"
[ -d "$HOME/.config/sublime-text-3" ] && rm -rf $HOME/.config/sublime-text-3
mkdir -p $HOME/.config/sublime-text-3/Packages/User/
ln -s "$HOME/dotfiles/sublimetext/Package Control.sublime-settings" $HOME/.config/sublime-text-3/Packages/User/
ln -s "$HOME/dotfiles/sublimetext/Preferences.sublime-settings" $HOME/.config/sublime-text-3/Packages/User/

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
