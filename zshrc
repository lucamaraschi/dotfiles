###########################
#  Configuration
###########################
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

# utf-8 & screen
export LC_ALL="en_US.UTF-8"
export TERM=screen-256color

# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/src/$username/dotfiles/zsh
export DOTFILES=$HOME/src/$username/dotfiles
export TEMPLATES=$HOME/src/$username/templates

# your project folder that we can `c [tab]` to
export PROJECTS=~/src

# source every .zsh file in this rep
for config_file ($ZSH/**/*.zsh) source $config_file
for zsh_file (~/.zsh/bundle/*.zsh) source $zsh_file

# source the alias file
source ~/.aliases

###########################
# Colors
###########################
# base-16
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-eighties.sh"
if [ -s $BASE16_SHELL ]; then
  source $BASE16_SHELL
fi

###########################
#  Plugins
###########################
antigen bundle marzocchi/zsh-notify
antigen bundle zsh-users/fizsh
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

# antigen bundle lukechilds/zsh-nvm

# load autosuggest as last
antigen bundle tarruda/zsh-autosuggestions

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit
for f in $ZSH/../**/completion.sh; do
  source "$f"
done

# Fix history search in tmux
bindkey '^R' history-incremental-search-backward

###############################################################################
# Default programs
###############################################################################
if [ -x "$(command -v nvim)" ]; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi

# default programs
export GHI_PAGER=less

# load nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# RVM
source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

# ssh
if [ -f ~/.ssh/id_rsa ]; then
	ssh-add ~/.ssh/id_rsa
fi
clear
