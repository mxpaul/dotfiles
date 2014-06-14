#!/bin/sh
#set -x

create_dotfile() {
	dotfile="$1"
	if [ -z "$dotfile" ]; then
		echo "create_dotfile called with no params, this is error. Exiting"
		exit 1
	fi
	CWD=`pwd`

	if [ -L "$dotfile" ]; then
		echo "There is a symbolic link for $dotfile in $CWD. Make a backup link as $dotfile.oldlink"
		mv $dotfile  $dotfile.oldlink
	fi
	if [ -f "$dotfile" ]; then
		echo "There is a file $dotfile in $CWD. Make a backup"
		mv $dotfile  $dotfile.saved
	fi
	echo "Create a link for $dotfile in $CWD"
	ln dotfiles/$(basename $dotfile) $dotfile
	echo "Set mode 0600 for $dotfile in $CWD"
	chmod 0600 $dotfile
}

cd ~
for df in '.bashrc' '.tmux.conf' '.vimrc'; do
	create_dotfile "$df"
done

if mkdir -p .vim; then
  for src in dotfiles/vim/*; do
    ln $src .vim/$(basename $src)
  done
else
  echo "Failed to create .vim/. Exiting..."
  exit 1
fi
