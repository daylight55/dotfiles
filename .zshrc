#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/dev/flutter/bin:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export LSCOLORS=cxfxcxdxbxegedabagacad

alias ls='ls -a -G -F -x -r'
alias re='exec $SHELL -l'
alias cd='pushd > /dev/null'
alias dirs='dirs -v'

export PATH="/usr/local/bin:$PATH"

#eval "$(pipenv --completion)"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

eval "$(pyenv init -)"
alias dc='docker-compose'

alias cd='cdls'
# Define cd and ls 
cdls () {
    \cd "$@" && ls
}
#source /usr/local/bin/aws_zsh_completer.sh
source /usr/local/share/zsh/site-functions/aws_zsh_completer.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/apple/dev/gcp/gke/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/apple/dev/gcp/gke/google-cloud-sdk/path.zsh.inc'; fi
unsetopt correctall
export GOPATH=/Users/apple/go
export PATH=$PATH:$GOPATH/bin
eval `ssh-agent` > /dev/null

setopt prompt_cr
setopt prompt_sp

# direnv setting
export EDITOR=vim
eval "$(direnv hook zsh)"
