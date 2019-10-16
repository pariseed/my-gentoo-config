#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias vi='vim'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#PS1='[\u@\h \W]\$ '

#PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W 
#\$\[\033[00m\] '

#PS1='\[\e[1;96m\]\u@\[\e[1;93m\]\h: \W\e[0m
#\$ '

PS1='\[\e[1;96m\]\u@\[\e[1;93m\]\h: \W
\$\[\033[1;92m\] '

stty -ixon

export PROMPT_COMMAND="history -a; history -n"

export HISTSIZE=10000

export HISTCONTROL=ignoredups:erasedups
