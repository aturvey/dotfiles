# path

##  Environment variables
# export TASMTABS='/usr/local/lib/tasm'
# export TASMOPTS='-t80 -g0 -f00 -o16'
export GNUPGHOME=/Users/aturvey/.gnupg
export EDITOR=vim
# export TERM='xterm-256color'

##  Some alias and function definitions
source ~/.bash_alias

##  Emacs editing mode
set -o emacs

##  Tell me right away when a job completes
set -o notify 

##  Turn off the dreadful auto spelling correct function
#set +o correct            ------------ this is not working in bash

##  Turn off ctrl-D logoff
set -o ignoreeof


if [ ${TERM} != "dumb" ]; then
  ## Set the prompt to something useful
  # 01;31m is red
  RED='\[\e[01;31m\]'
  # 01;32m is green
  GREEN='\[\e[01;32m\]'
  # 01;33m is yellow
  YELLOW='\[\e[01;33m\]'
  # 01;34m is blue
  BLUE='\[\e[01;34m\]'
  # 01;35m is magenta
  MAGENTA='\[\e[01;35m\]'
  # 01;36m is cyan
  CYAN='\[\e[01;36m\]'
  # 01;37m is white
  WHITE='\[\e[01;37m\]'
  # 0m is reset
  RESET='\[\e[0m\]'

  #PS1='[\u@\[\e[01;37m\]\h\[\e[0m\]:\W]%\[\e[01;37m\]$(__git_ps1)\[\e[0m\] '
  PS1='\[\e[01;33m\][\u@\h:\W]%\[\e[0m\] '
  PS2='\[\e[01;33m\]> \[\e[0m\]'
  ## evaluate the dircolors for ls
  # eval $(gdircolors ~/.dircolors)
  # eval $(ssh-agent)
  ## use with % ssh-add ~/.ssh/id_rsa
fi

# git stuff -- added 20160110

# Enable tab completion
# source ~/.git-completion.bash
