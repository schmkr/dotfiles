# Manually set language environment
export LANG=en_US.UTF-8
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# User configuration
export PATH="$HOME/bin:/usr/local/opt/curl/bin:$PATH"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

## History
setopt INC_APPEND_HISTORY # Immediate append Setting the inc_append_history option ensures that commands are added to the history immediately (otherwise, this would happen only when the shell exits, and you could lose history upon unexpected/unclean termination of the shell).
setopt EXTENDED_HISTORY   # Add Timestamp to history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
alias history='fc -li -$HISTSIZE | less'

# Allow commands to be prefixed with `#` for comments
setopt interactivecomments

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code -w'
fi

# Tell `less` to don't page if there is only one page
LESS='-F -X -r'

alias fl='open -a ForkLift'
alias code='$HOME/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# Load extra files from ~/.config/ if they exist
# These are kept outside of this repo for privacy issues
source ~/.config/secrets.sh

# ensure `npm i` doesn't try to download chromium binary by default
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

# see https://github.com/opencollective/opencollective-postinstall#disabling-this-message
export DISABLE_OPENCOLLECTIVE=true



# ZSH completion

source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

# additional auto-complete for git-extras
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

	autoload -Uz compinit
	compinit
fi

# https://starship.rs/guide/#🚀-installation
eval "$(starship init zsh)"
