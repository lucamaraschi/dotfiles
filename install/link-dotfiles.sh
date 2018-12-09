#!/usr/bin/env bash

DIR=~/src/lm/dotfiles                            # dotfiles directory
OLDDIR=~/dotfiles_backup                  # old dotfiles backup directory
FILES="vimrc vim zshrc tmux.conf gitconfig aliases" # list of files/folders to symlink in homedir

mkdir -p $OLDDIR
cd $DIR

for file in $FILES; do
	if [ ! -L ~/.$file ]; then
		mv ~/.$file $OLDDIR
		echo 'Linking "~/.$file" with "$DIR/$file"'
		ln -s $DIR/$file ~/.$file
	fi
done
echo 'Dotfiles linked.'
sleep 1
cd $DIR

ln -s $DIR/apps/karabinier-el ~/.config/karabiner

# ln -s ~/.vim ~/.config/nvim
# ln -s ~/.vimrc ~/.config/nvim/init.vim
