#!/usr/bin/env bash

echo 'Installing dotfiles!'

echo '...but lets start with sudo!'
# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

source install/link-dotfiles.sh

dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`

if [ "$dist" == "Ubuntu" ]; then
	# Running on ubuntu
	source install/ubuntu/initial-ubuntu.sh
    source install/ubuntu/install-fonts-ubuntu.sh
fi

if [ "$(uname)" == "Darwin" ]; then
	## Running on OSX"
	source install/osx/initial-osx.sh
	source install/osx/configuration.sh
	source install/osx/nvm.sh
	source install/osx/rvm.sh
fi;

clear
echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo 'Installation done.'
