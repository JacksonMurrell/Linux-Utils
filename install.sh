!#/bin/bash

bashrc_path="bash/bashrc"
root_bashrc_path="bash/root_bashrc"
aliases_path="bash/aliases"
vimrc_path="bash/vimrc"

# Copy over bash configuration.
cp $bashrc_path "~/.bashrc"
cp $aliaes_path "~/.aliases"

if [ "$EUID" -ne 0 ]
then
    echo "Cannot configure 'root' bash.  Please run as sudo if you wish for this to be configured."
else
    cp $root_bashrc_path "/root/.bashrc"
    cp $aliases_path "/root/.aliases"
fi

# Copy over vimrc configuration.
cp $vimrc_path "~/.vimrc"

if [ "$EUID" -ne 0 ]
then
    echo "Cannot configure 'root' vimrc.  Please run as sudo if you wish for this to be configured."
else
    cp $vimrc_path "/root/.vimrc"
fi
