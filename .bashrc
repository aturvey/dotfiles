# path

##  Environment variables
# export TASMTABS='/usr/local/lib/tasm'
# export TASMOPTS='-t80 -g0 -f00 -o16'
export GNUPGHOME=/Users/aturvey/.gnupg
export EDITOR=vim
if [[ -z $TMUX ]]; then
    export PATH="/opt/gcc-arm-none-eabi/bin:/Users/aturvey/bin:$PATH"
fi
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

  source ~/.git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
  #PS1='[\u@\[\e[01;37m\]\h\[\e[0m\]:\W]%\[\e[01;37m\]$(__git_ps1)\[\e[0m\] '
  PS1='\[\e[01;33m\][\u@\h:\W]%\[\e[01;37m\]$(__git_ps1)\[\e[0m\] '
  PS2='\[\e[01;33m\]> \[\e[0m\]'
  ## evaluate the dircolors for ls
  # eval $(gdircolors ~/.dircolors)
  ## eval $(ssh-agent)
  ## use with % ssh-add ~/.ssh/id_rsa
fi

# git stuff -- added 20160110

# Enable tab completion
source ~/.git-completion.bash

# these might be required for zlib (not sure what that is), but came from '% brew install zlib'
# export LDFLAGS="-L/usr/local/opt/zlib/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include"
# export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

export PYTHONPATH="Users/aturvey/opt/anaconda3/bin/python"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/aturvey/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/aturvey/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/aturvey/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/aturvey/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

