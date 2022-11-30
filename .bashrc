#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias vi='vim'
alias regex101="pcregrep --buffer-size=200000 -Mo"
alias man="vilman"
alias myip="nslookup -debug myip.opendns.com resolver1.opendns.com | grep 'internet address' | sed 's/.*internet address =/My Public IP Address:/g'"

#alias kb="kubectl "
#source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl kb|g')

alias p3="/usr/bin/python3"

alias pd="/usr/bin/podman"
source <(podman completion bash | sed 's|__start_podman podman|__start_podman pd|g')



#PS1='[\u@\h \W]\$ '

#PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W 
#\$\[\033[00m\] '

#PS1='\[\e[1;96m\]\u@\[\e[1;93m\]\h: \W\e[0m
#\$ '

PS1='\[\e[1;96m\]\u@\[\e[1;93m\]\h: \W
\$\[\033[1;92m\] '

#allow reverse search in back mode, pay attention with local scp coul give issues
stty -ixon


export GOPATH=$HOME/go

export EDITOR=/usr/bin/vim 

export HISTSIZE=10000

export HISTCONTROL=ignoredups:erasedups


function vilman {
	vim -c "Man $1" -c "silent only" 
}


function cd {
    builtin cd $@
    pwd > ~/.last_dir
}

cd $(cat ~/.last_dir)


trap 'printf "\033]0;%s\007" "${BASH_COMMAND//[^[:print:]]/}"' DEBUG

PROMPT_COMMAND='history -a; history -n; echo -ne "\033]0;${PWD}\007"'
