#!/bin/sh

echo '===========> Configuring VIM'

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

# Enable dracula so we can install the Plugins without errors ;-)
sed -i "" 's/"color dracula/color dracula/g' > /dev/null
