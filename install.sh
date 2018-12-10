#!/usr/bin/env bash

echo 'Installing dotfiles!'

echo '...but lets start with sudo!'
# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

source install/link-dotfiles.sh

if [ "$(uname)" == "Darwin" ]; then
	## Running on OSX"
	echo 'Linking dotfiles...'
	source install/macos/initial-osx.sh

	echo 'Setting system preferences...'
	source install/macos/preferences.sh

	echo 'NVM time...'
	source install/macos/nvm.sh

	echo 'Configuring VIM...'
	source install/macos/vim.sh
fi;

clear
echo "Installing tpm, tmux plugin manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

clear 
echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

clear 
echo "Installing ZSH theme"
souce install/bullet-train-zsh-theme.sh

clear 
echo "Installing Spaceship prompt"
souce install/spaceship-prompt.sh

clear
echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo 'Installation done.'
