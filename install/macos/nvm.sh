#!/bin/sh

echo -e "\n\nInstalling Node (from nvm)"

# reload nvm into this environment

mkdir -p ~/.nvm

nvm install node
nvm use node
nvm alias default node
