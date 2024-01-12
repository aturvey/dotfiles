# path
export PATH=$PATH:~/bin

##  Environment variables
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
  # 01;32m is green
  # 01;33m is yellow
  # 01;34m is blue
  # 01;35m is magenta
  # 01;36m is cyan
  # 01;37m is white
  # 0m is reset

  #PS1='[\u@\[\e[01;37m\]\h\[\e[0m\]:\W]%\[\e[01;37m\]$(__git_ps1)\[\e[0m\] '
  PS1='\[\e[01;33m\][\u@\h:\W]%\[\e[0m\] '
  PS2='\[\e[01;33m\]> \[\e[0m\]'

  ## evaluate the dircolors for ls
  eval $(dircolors ~/.dircolors)

  ## invoke the ssh-agent
  # eval $(ssh-agent)
fi

# this adds font scaling feature to cadence
export CDS_2DFORM_FONT_SCALING=1
