###########################
#  Configuration
###########################
if [ "$TMUX" = "" ]; then tmux; fi

username="lm"
# if this ever breaks run "$ brew prefix <toolname>"
export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/$USER/.config/base16-shell"
export PATH="$PATH:/Users/$USER/src/$username/dotfiles/bin"
export PATH="$PATH:/Users/$USER/.config/base16-shell"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

# man pages
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"

# start zle
zmodload zsh/zle

# Path to ZSH
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="bullet-train"

# ZSH Config
plugins=(git git-extras)
source $ZSH/oh-my-zsh.sh

# Make VIM Default editor
export EDITOR=vim

#Load aliases from file
if [ -f ~/.aliases ]; then
	source $HOME/.aliases
fi

# Load secret env vars
if [ -f ~/dotfiles/.secrets ]; then
	source $HOME/dotfiles/.secrets
fi

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/home/lm/apps:/home/lm/bin"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# RVM
# source ~/.rvm/scripts/rvm
# export PATH="$PATH:$HOME/.rvm/bin"

# ssh
if [ -f ~/.ssh/id_rsa ]; then
	ssh-add ~/.ssh/id_rsa
fi

# export GOPATH=$HOME/.go
# export PATH="$PATH:$GOPATH"
# export PATH=$PATH:/usr/local/opt/go/libexec/bin

# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# added by travis gem
# [ -f /home/lm/.travis/travis.sh ] && source /home/lm/.travis/travis.sh

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.fastlane/bin:$PATH"
