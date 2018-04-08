#!/bin/sh

echo -e "\n\nInstalling Node (from nvm)"

# reload nvm into this environment

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

"$HOME/.nvm/nvm.sh" install node
"$HOME/.nvm/nvm.sh" use node
"$HOME/.nvm/nvm.sh" alias default node

cd ~
