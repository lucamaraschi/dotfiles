#!/bin/sh

vim +PlugInstall +qall

# Enable dracula so we can install the Plugins without errors ;-)
sed -i "" 's/"color dracula/color dracula/g' 
