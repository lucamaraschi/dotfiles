#!/bin/sh

echo -e "\n\nInstalling Node (from nvm)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install node
nvm use node
nvm alias default node

cd ~
