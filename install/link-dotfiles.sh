#!/usr/bin/env bash

DIR=~/src/lm/dotfiles                            # dotfiles directory
FILES="vimrc vim zshrc tmux.conf gitconfig aliases mackup.cfg mackup" # list of files/folders to symlink in homedir

cd $DIR

for file in $FILES; do
	if [ ! -L ~/.$file ]; then
		ln -s $DIR/$file ~/.$file
	fi
done
echo 'Dotfiles linked.'
sleep 1
cd $DIR
