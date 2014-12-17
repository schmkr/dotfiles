# @gf3’s Sexy Bash Prompt, inspired by “Extravagant Zsh Prompt”
# Shamelessly copied from https://github.com/gf3/dotfiles
# Screenshot: http://i.imgur.com/s0Blh.png

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi

function parse_git_dirty() {
	[[ $(git status 2> /dev/null | tail -n1 | cut -b 1-17) != "nothing to commit" ]] && echo "*"
}
function parse_git_branch() {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

#default prompt
export PS1="${txtblk}`date '+%d.%m %T'` ${bldblu}\w ${bldgrn}\$([[ -n \$(git branch 2> /dev/null) ]] && printf \"on %s \" \$(parse_git_branch))${bldylw}\$${txtrst} "
# export PS2="${bldylw}→ ${txtrst}"
