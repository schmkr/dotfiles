
# --------------------------------
# Generic aliasses
# --------------------------------

#fast directory navigation
alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Show which commands you use the most
# http://alias.sh/show-which-commands-you-use-most
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

# Get my public ipaddress
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Get the ipaddress for all network interfaces
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Get the ipaddress for my
alias localip="ipconfig getifaddr en1"

# Don't ping forever, just do it 10 times
alias ping="ping -c 10"

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# list total disk usage for current folder contents. (https://twitter.com/climagic/status/291230535995494400)
alias cdu="/usr/bin/env ls -1A | tr '\n' '\0' | xargs -0 du -sk | sort -n"

# --------------------------------
# Directory listing aliasses
# --------------------------------

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# Only list directories
alias lf='ls -Gl ${colorflag} | grep ^d'

# #Only list directories, including hidden ones
alias lsd='ls -la ${colorflag} | grep "^d"'

# Recursive directory listing
# http://alias.sh/recursive-directory-listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
