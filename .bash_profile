#
# ~/.bash_profile
#

export PATH=$PATH:~/.local/bin

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

startx

[[ -f ~/.bashrc ]] && . ~/.bashrc
