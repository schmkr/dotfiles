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

# Add note to Notes.app (OS X 10.8)
# Usage: `note 'foo'` or `echo 'foo' | note`
function note() {
	local text
	if [ -t 0 ]; then # argument
		text="$1"
	else # pipe
		text=$(cat)
	fi
	body=$(echo "$text" | sed -E 's|$|<br>|g')
	osascript >/dev/null <<EOF
tell application "Notes"
	tell account "iCloud"
		tell folder "Notes"
			make new note with properties {name:"$text", body:"$body"}
		end tell
	end tell
end tell
EOF
}

# Add reminder to Reminders.app (OS X 10.8)
# Usage: `remind 'foo'` or `echo 'foo' | remind`
function remind() {
	local text
	if [ -t 0 ]; then
		text="$1" # argument
	else
		text=$(cat) # pipe
	fi
	osascript >/dev/null <<EOF
tell application "Reminders"
	tell the default list
		make new reminder with properties {name:"$text"}
	end tell
end tell
EOF
}


## update all NOS SVN repositories
function nosUp()
{
	echo 'Updating www.nos.nl';
	svn up $HOME/Sites/www.nos.nl;

	echo 'Updating content.nos.nl';
	svn up $HOME/Sites/content.nos.nl;

	echo 'Updating s.nos.nl';
	svn up $HOME/Sites/s.nos.nl;

	echo 'Updating www.jeugdjournaal.nl';
	svn up $HOME/Sites/www.jeugdjournaal.nl;

	echo 'Updating www.nieuwsuur.nl';
	svn up $HOME/Sites/www.nieuwsuur.nl;

	echo 'Updating app.nos.nl';
	svn up $HOME/Sites/app.nos.nl;

}