#!/usr/bin/bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PS1="\[\e[32m\]\w:\[\e[33;1m\]\$ \[\e[0m\]"
#PS1="`a=$?;if [ $a -ne 0 ]; then a=" "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]"; fi`\[\e[1;32m\]\u@\h:\[\e[0m\e[1;34m\]\W\[\e[1;34m\]\$ \[\e[0m\]"

## change and option ##
alias vi=vim
alias rm=gvfs-trash
alias octave="octave --no-gui"
alias mv="mv -i"
alias cp="cp -i"
alias manen="man -L en"
alias df="df -h"
export GREP_COLORS=auto


## convient ##
alias xm=xmms2
alias ap=apropos
alias ..="cd .. ; "
alias ...="cd - "
#alias ptt="ssh bbsu@ptt.cc" # to input ENTER
# not use usually


function mcd 
{ 
	mkdir $@
	cd $1
}

function cls
{
	cd $1
	ls
}


# add current dictionary into PATH
#PATH=".:$PATH"
myweb="myweb.ncku.edu.tw/~c34031328"
diy="574730f77628e1670d000056@diy-locoescp.rhcloud.com"
export LANGUAGE="zh_TW:zh_CN:en"
export HISTTIMEFORMAT="%F %T "

# npm path #
# these should inside .profile or .bash_profile
#PATH="$HOME/node_modules/.bin:$PATH"
#CDPATH=".:$HOME:$HOME/web/escape:$HOME/Documents"
#alias cd="cd >/dev/null"
# because cdpath, cd will print if in cdpath. 


# too long option to remember. 
function pdfopt {
gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dQUIET \
	-dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen \
	-sOutputFile="$2" "$1"
}

