fixssh() {
  for key in SSH_AUTH_SOCK SSH_CONNECTION SSH_CLIENT; do
    if (tmux show-environment | grep "^${key}" > /dev/null); then
      value=`tmux show-environment | grep "^${key}" | sed -e "s/^[A-Z_]*=//"`
      export ${key}="${value}"
    fi
  done
}

fixssh_sock() {
	local FOUND_SOCK=`ls -1 /tmp/ssh*/agent* | head -1`
	if [ -n $SSH_AUTH_SOCK ]; then
		[ -e $SSH_AUTH_SOCK ] && rm ${SSH_AUTH_SOCK:-NO_EMPTY_DEL}; 
		if [ -n $FOUND_SOCK -a -S $FOUND_SOCK ]; then
			ln -s $FOUND_SOCK $SSH_AUTH_SOCK
		fi
	else
		export SSH_AUTH_SOCK=$FOUND_SOCK
	fi
}
