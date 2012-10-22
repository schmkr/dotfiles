export PATH=/opt/local/bin:/opt/local/sbin:$PATH:$HOME/bin:$HOME/Dropbox/.Library/bin

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth
# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd *:cd -:pwd:exit:date:* --help:ssh:clear:git status:restartApache"

export EDITOR="nano"
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
# *AWESOME!!!!*
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

source $HOME/.dotfiles/bash/.bash_aliases;
source $HOME/.dotfiles/bash/.bash_functions;
source $HOME/.dotfiles/bash/.bash_prompt;

# Load extra files from ~/.config/bash/ if they exist
# These are kept outside of this repo for privacy issues
for file in ~/.config/bash/.{exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file
