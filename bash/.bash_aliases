
# --------------------------------
# Generic aliasses
# --------------------------------

#fast directory navigation
alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# old MSDos command, bad habits die hard!
alias cls="clear"

# go to dropbox
alias db='cd $HOME/Dropbox/'

# Show which commands you use the most
# http://alias.sh/show-which-commands-you-use-most
#alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
alias freq='history|awk '{if($2 == "sudo"){print $3}else{print $2}}'|awk 'BEGIN{FS ="|"}{print $1}'|sort|uniq -c|sort -rn|head -30'

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

# --------------------------------
# Directory listing aliasses
# --------------------------------

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -l ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"

# Only list directories
alias lf='ls -Gl | grep ^d'

# #Only list directories, including hidden ones
alias lsd='ls -l ${colorflag} | grep "^d"'

# Recursive directory listing
# http://alias.sh/recursive-directory-listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

# Always use color output for `ls`
#alias ls="command ls ${colorflag}"
#export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# --------------------------------
# Git aliasses
# --------------------------------

# pretty log for github (http://dropshado.ws/post/27506212928/pretty-git-log)
alias glog="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
