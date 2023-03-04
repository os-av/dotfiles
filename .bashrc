#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

term="$(cat /proc/$PPID/comm)"

alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir=/home/os-av/Documents/dotfiles --work-tree=/home/os-av'

export EDITOR=nvim;
export VISUAL=nvim;

# If terminal is st, modify user prompt and set window title to cur dir
p='[\u@\h \W]\$ '
if [[ $term = "st" ]]; then
    p="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\] \[\e[35m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
    PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'
fi

if [[ $term = "xfce4-terminal" ]]; then
	p="-> "
fi

# User prompt
PS1=$p
