#!/bin/sh

vim +'PlugInstall --sync' +qa

cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer
