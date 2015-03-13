#####################################################################################
#### This file is managed via dotfiles repo
#####################################################################################
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export SSH_AUTH_SOCK=~/.ssh-agent.sock

alias myscreen="screen -AadRRS project_screen -c $HOME/dotfiles/.screenrc_myscreen"
#alias projzip="screen -AadRRS project_screen -c $HOME/screen/.screenrc_projzip"

# Tmux alias
if [ -f ~/dotfiles/tmux/cloud.session.sh ]; then
	. ~/dotfiles/tmux/cloud.session.sh
fi


if [ -f ~/dotfiles/bash_functions.sh ]; then
	. ~/dotfiles/bash_functions.sh
fi
