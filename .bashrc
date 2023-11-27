#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dotfiles='/usr/bin/git --git-dir=$HOME/Documents/projects/dotfiles/ --work-tree=$HOME'

PS1='[\u@\h \W]\$ '

term="$(cat /proc/$PPID/comm)"
if [[ $term = "st" ]]; then
  PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\] \[\e[35m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
  PROMPT_COMMAND='echo -ne "\033]0;${PWD/#HOME/\~}\007"' # Sets st window title to current directory
fi
