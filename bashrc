if [ -f ~/.bashrc_local ]; then source ~/.bashrc_local; fi

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

alias grep='grep --color=auto'
alias ls='ls -G --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias l='ls -CF'
alias rm='rm -i'
alias vi='vim'

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
