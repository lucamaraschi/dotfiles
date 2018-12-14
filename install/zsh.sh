#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# oh-my-zsh overwrites .zshrc
ln -s ~/src/lm/dotfiles/zshrc ~/.zshrc

cd ~/src/lm/dotfiles
echo "Installing ZSH theme"
source install/bullet-train-zsh-theme.sh

cd ~/src/lm/dotfiles
echo "Installing Spaceship prompt"
source install/spaceship-prompt.sh

