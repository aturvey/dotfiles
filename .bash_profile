#export PATH="/usr/local/sbin:$PATH"

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# silence the mac warning about ZSH being the new default
export BASH_SILENCE_DEPRECATION_WARNING=1
