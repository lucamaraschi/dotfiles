#!/bin/sh

echo -e "\n\nInstalling RVM"

curl -sSL https://get.rvm.io | bash -s stable

rm -f ~/.zcompdump*
