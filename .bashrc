#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias vi='vim'
alias regex101="pcregrep --buffer-size=200000 -Mo"
#alias kb="kubectl "
#source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl kb|g')


#PS1='[\u@\h \W]\$ '

#PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W 
#\$\[\033[00m\] '

#PS1='\[\e[1;96m\]\u@\[\e[1;93m\]\h: \W\e[0m
#\$ '

PS1='\[\e[1;96m\]\u@\[\e[1;93m\]\h: \W
\$\[\033[1;92m\] '

stty -ixon


export HISTSIZE=10000

export HISTCONTROL=ignoredups:erasedups

function cd {
    builtin cd $@
    pwd > ~/.last_dir
}

cd $(cat ~/.last_dir)

trap 'printf "\033]0;%s\007" "${BASH_COMMAND//[^[:print:]]/}"' DEBUG

PROMPT_COMMAND='history -a; history -n; echo -ne "\033]0;${PWD}\007"'
