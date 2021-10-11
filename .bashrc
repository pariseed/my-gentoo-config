# .bashrc


alias regex101="pcregrep --buffer-size=200000 -Mo"
alias screenfetch="screenfetch -D gentoo 2>/dev/null"


alias kb="kubectl "
source <(kubectl completion bash | sed 's|__start_kubectl kubectl|__start_kubectl kb|g')


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi



# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

stty -ixon

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export EDITOR=/usr/bin/vim 

export HISTSIZE=10000

export GOPATH=$HOME/go

export HISTCONTROL=ignoredups:erasedups


PS1='\[\e[1;96m\]\u@\[\e[1;93m\]\h: \W\e[0m
\$ '


function cd {
	builtin cd $@
	pwd > ~/.last_dir
}

cd $(cat ~/.last_dir)



trap 'printf "\033]0;%s\007" "${BASH_COMMAND//[^[:print:]]/}"' DEBUG


PROMPT_COMMAND='history -a; history -n; echo -ne "\033]0;${PWD}\007"'
