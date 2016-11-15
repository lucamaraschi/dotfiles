#!/bin/sh

echo "Checking Xcode CLI tools"
# Only run if the tools are not installed yet
# To check that try to print the SDK path
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Xcode CLI tools not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD" -v;
else
  echo "Xcode CLI tools OK"
fi

echo "Cloning Dracula iTerm theme"
rm -rf ~/iterm/themes
git clone https://github.com/dracula/iterm.git ~/iterm/themes
echo -e "\nDracula theme cloned, import the theme in iTerm\n"

if test ! $(which brew); then
	echo "Installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\nInstalling homebrew bundle"

# Install bundle https://github.com/Homebrew/homebrew-bundle
brew tap Homebrew/bundle

# Go to location of Brewfile and run brew bundle
cd ~/src/lm/dotfiles/install/osx
brew bundle

# Cd back to previous directory
cd -

# Installing zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
