#####################################################################################
#### This file is managed via dotfiles repo
#####################################################################################
# .bashrc
if [ "$UID" = 0 ]; then
	export PS1='\[\e[1;31m\]\u\[\e[1;34m\]@\[\e[1;31m\]W\[\e[1;37m\]in87\[\e[1;0m\]:\[\e[1;34m\]\w\[\e[1;0m\]# '
else 
	export PS1='\[\e[1;32m\]\u\[\e[1;34m\]@\[\e[1;31m\]W\[\e[1;37m\]in87\[\e[1;0m\]:\[\e[1;34m\]\w\[\e[1;0m\]$ '
fi
export LANG=ru_RU.UTF-8

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias myscreen="screen -AadRRS project_screen -c $HOME/dotfiles/.screenrc_myscreen"
#alias projzip="screen -AadRRS project_screen -c $HOME/screen/.screenrc_projzip"

# Tmux alias
if [ -f ~/dotfiles/tmux/cloud.session.sh ]; then
	. ~/dotfiles/tmux/cloud.session.sh
fi


if [ -f ~/dotfiles/bash_functions.sh ]; then
	. ~/dotfiles/bash_functions.sh
fi
