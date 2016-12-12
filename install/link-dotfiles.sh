#!/usr/bin/env bash

DIR=~/src/lm/dotfiles                            # dotfiles directory
OLDDIR=~/dotfiles_backup                  # old dotfiles backup directory
FILES="vimrc zshrc tmux.conf aliases" # list of files/folders to symlink in homedir

mkdir -p $OLDDIR
cd $DIR

for file in $FILES; do
	mv ~/.$file $OLDDIR
	ln -s $DIR/$file ~/.$file
done
echo 'Dotfiles linked.'
sleep 1
clear
cd $DIR

# ln -s ~/.vim ~/.config/nvim
# ln -s ~/.vimrc ~/.config/nvim/init.vim
