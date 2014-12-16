# @gf3’s Sexy Bash Prompt, inspired by “Extravagant Zsh Prompt”
# Shamelessly copied from https://github.com/gf3/dotfiles
# Screenshot: http://i.imgur.com/s0Blh.png

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi

function print_before_the_prompt () {
	NOW=`date '+%d/%m %T'`
	printf "${txtblu}%s: " "$NOW"
}

function parse_git_dirty() {
	[[ $(git status 2> /dev/null | tail -n1 | cut -b 1-17) != "nothing to commit" ]] && echo "*"
}

function parse_git_branch() {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

PROMPT_COMMAND=print_before_the_prompt
# export PS1=" \[${BOLD}${MAGENTA}\]\u \[${WHITE}\]@ \[$ORANGE\]\h \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\$ \[$RESET\]"
export PS1="${txtylw}\u ${txtwht}@ ${txtgrn}\h ${txtwht}in ${txtred}\w ${txtwht}\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"on \")${bldpur}\$(parse_git_branch)${txtwht}\n\$ ${txtrst}"
export PS2="${bldylw}→ ${txtrst}"
