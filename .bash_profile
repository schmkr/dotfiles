# always add the bin dir in ~, for overriding some binaries with newer versions
export PATH=~/bin:~/.composer/vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH

# Larger bash history
export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE

# Add a timestamp to the history, so we now what date time the commands were made..
export HISTTIMEFORMAT="%F %T "

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

# Set PHPRC to include the php.ini file from this dotfiles directory (symlink it in your homedir)
export PHPRC=$HOME/php.ini

# Case-insensitive globbing (used in pathname expansion)
# shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

source ~/dotfiles/bash/aliases.sh;
source ~/dotfiles/bash/functions.sh;
#source ~/dotfiles/bash/colors.sh;
source ~/dotfiles/bash/prompt.sh;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "~/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

if [[ -x "$(which brew)" && -f $(brew --prefix)/etc/bash_completion ]]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load extra files from ~/.config/bash/ if they exist
# These are kept outside of this repo for privacy issues
for file in ~/.config/bash/*.sh; do
	[ -r "$file" ] && source "$file"
done
unset file
