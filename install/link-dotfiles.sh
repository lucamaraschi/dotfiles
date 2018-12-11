#!/usr/bin/env bash

DIR=~/src/lm/dotfiles                            # dotfiles directory
FILES="vimrc vim zshrc tmux.conf gitconfig aliases mackup.cfg" # list of files/folders to symlink in homedir

cd $DIR

for file in $FILES; do
	if [ ! -L ~/.$file ]; then
		echo 'Linking "~/.$file" with "$DIR/$file"'
		ln -s $DIR/$file ~/.$file
	fi
done
echo 'Dotfiles linked.'
sleep 1
cd $DIR
