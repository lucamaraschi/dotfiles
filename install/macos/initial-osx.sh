#!/bin/sh

if test ! $(which brew); then
	echo "Installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\nInstalling homebrew bundle"

# Install bundle https://github.com/Homebrew/homebrew-bundle
brew tap Homebrew/bundle
brew tap caskroom/fonts
brew tap homebrew/cask-drivers

# Go to location of Brewfile and run brew bundle
cd ~/src/lm/dotfiles/install/macos
brew bundle

mackup restore

# Cd back to previous directory
cd ~/src/lm/dotfiles/
