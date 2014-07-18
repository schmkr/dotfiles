# always add the bin dir in $HOME, for overriding some binaries with newer versions
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin/:/opt/local/bin:/opt/local/sbin:$PATH

# Larger bash history
export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE

#ignore duplicates and commands that start with a space.
#NOTE TO SELF, remember to use the space start more often
export HISTCONTROL=ignoreboth
# Make some commands not show up in history
export HISTIGNORE="exit:date:clear"

export EDITOR="vim"
export EVENT_NOKQUEUE=1

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US"

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

source $HOME/.dotfiles/bash/aliases.sh;
source $HOME/.dotfiles/bash/functions.sh;
source $HOME/.dotfiles/bash/prompt.sh;
source $HOME/.dotfiles/git/bash.sh;

# Load extra files from ~/.config/bash/ if they exist
# These are kept outside of this repo for privacy issues
for file in ~/.config/bash/{exports,aliases,functions}.sh; do
	[ -r "$file" ] && source "$file"
done
unset file
