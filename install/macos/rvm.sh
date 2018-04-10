#!/bin/sh

echo -e "\n\nInstalling RVM"

curl -sSL https://get.rvm.io | bash -s stable

rvm --auto-dotfiles

rm -f ~/.zcompdump*
