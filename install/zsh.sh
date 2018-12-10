#!/bin/sh

echo "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing ZSH theme"
source install/bullet-train-zsh-theme.sh

echo "Installing Spaceship prompt"
source install/spaceship-prompt.sh