## A set of useful functions, from:
## https://github.com/mathiasbynens/dotfiles/blob/master/.functions
##

# Start an HTTP server from a directory, optionally specifying the port
function server() {
	local port="${1:-8000}"
	sleep 1 && open "http://localhost:${port}/" &
	# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
	# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
	python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

# Syntax-highlight JSON strings or files
# Usage: `json '{"foo":42}'` or `echo '{"foo":42}' | json`
function json() {
	if [ -t 0 ]; then # argument
		python -mjson.tool <<< "$*" | pygmentize -l javascript
	else # pipe
		python -mjson.tool | pygmentize -l javascript
	fi
}

# Echo the current date in mysql date format
function now() {
	date -u "+%Y-%m-%d %H:%M:%S"
}

# Datestamp
# https://twitter.com/climagic/status/301023842300731394
datestamp() {
	date +%Y%m%d;
}

#create a directory and go right into it
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# search for occurrences of text in files
# (but exclude .svn directory)
ft() {
	if [ -z "$2" ]; then
		find . -type f -wholename "*.*" -not -iwholename "*.svn*" -print0 | xargs -0 fgrep -i "$1"
	else # apply the filter
		find . -type f -wholename "$2" -not -iwholename "*.svn*" -print0 | xargs -0 fgrep i "$1"
	fi
}

# Truncate oversized lines on input. Mostly for display use. Example: grep foo log | fitterm
# source: https://twitter.com/climagic/status/299554737756438528
fitterm() {
	cut -c 1-$( tput cols );
}

# horizontal rule for you CLI :-)
# https://twitter.com/climagic/status/433397460623708160
hr() {
	yes -- ${@:-=} | tr -d $'\n' | head -c $COLUMNS ;
}
