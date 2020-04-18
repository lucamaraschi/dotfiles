#!/bin/sh

if test ! $(which brew); then
	echo "Installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo -e "\nInstalling homebrew bundle"

# Install bundle https://github.com/Homebrew/homebrew-bundle
brew tap Homebrew/bundle
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers

# Go to location of Brewfile and run brew bundle
cd ~/src/lm/dotfiles/install/macos
brew bundle

sudo xcode-select --switch /Library/Developer/CommandLineTools

mkdir -p ~/.config
mackup restore -f

mkdir -p /Users/Shared/.iStatMenus/
ln -s ~/src/lm/secrets/settings/macos/root/Users/Shared/iStatMenus/istatmenus6.plist /Users/Shared/.iStatMenus/istatmenus6.plist

# Cd back to previous directory
cd ~/src/lm/dotfiles/
