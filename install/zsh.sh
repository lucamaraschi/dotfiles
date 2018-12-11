#!/bin/sh

echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~/src/lm/dotfiles
echo "Installing ZSH theme"
source install/bullet-train-zsh-theme.sh

cd ~/src/lm/dotfiles
echo "Installing Spaceship prompt"
source install/spaceship-prompt.sh