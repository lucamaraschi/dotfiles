#!/bin/sh
mkdir -p ~/.zsh/bundle
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/bin/antigen.zsh \
  >  ~/.zsh/bundle/antigen.zsh

git clone https://github.com/chriskempson/base16-shell.git \
  ~/.config/base16-shell

# Installing prompt...let's try...
curl -L https://raw.githubusercontent.com/sindresorhus/pure/master/pure.zsh \
  > ~/.zsh/bundle/pure.zsh

curl -L https://raw.githubusercontent.com/sindresorhus/pure/master/async.zsh \
  > ~/.zsh/bundle/async.zsh
