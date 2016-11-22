#!/bin/sh

echo -e "\n\nInstalling RVM"

source curl -sSL https://get.rvm.io | bash -s stable

rm -f ~/.zcompdump*
