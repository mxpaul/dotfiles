#####################################################################################
#### This file is managed via dotfiles repo
#####################################################################################
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#${HOSTNAME:0:1} ${HOSTNAME:1}
export PS1='\[\e[1;$(if [ $UID = 0 ]; then echo 31; else echo 32; fi)m\]\u\[\e[1;34m\]@\[\e[1;31m\]${HOSTNAME:0:1}\[\e[1;37m\]$(h=${HOSTNAME:1}; echo ${h%%.*})\[\e[1;0m\]:\[\e[1;34m\]\w\[\e[1;0m\]\$ '

#alias myscreen="screen -AadRRS project_screen -c $HOME/dotfiles/.screenrc_myscreen"
#alias projzip="screen -AadRRS project_screen -c $HOME/screen/.screenrc_projzip"
alias tree='tree -FChp'
alias t1='tree -L 1'
alias t='t1'
alias t2='tree -L 2'
alias tt='t2'
alias gti=git
alias fuck='export SSH_AUTH_SOCK=$(ls -1 /tmp/ssh*/*)'

alias vagrant_fluor_go='cd ~/work/fluor16-testenvs/vagrant/ex'

# Tmux alias
if [ -f ~/dotfiles/tmux/cloud.session.sh ]; then
	. ~/dotfiles/tmux/cloud.session.sh
fi


if [ -f ~/dotfiles/bash_functions.sh ]; then
	. ~/dotfiles/bash_functions.sh
fi
