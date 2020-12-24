# on first tab without any text it will list the current directory
first_tab()
{ # empty line tab lists
	if [[ $#BUFFER == 0 ]]; then
		BUFFER="cd " CURSOR=3
		zle list-choices
		BUFFER="" CURSOR=1
	else
		zle expand-or-complete
	fi
}; zle -N first_tab

# expand aliases to the left (if any) before inserting the key pressed
exp_alias()
{ # expand aliases
	zle _expand_alias
	zle self-insert
}; zle -N exp_alias

# change cursor shape for different vi modes.
function zle-keymap-select () {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';;      # block
		viins|main) echo -ne '\e[5 q';; # beam
	esac
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# change brightness
function bright(){
	echo "$1"000 > /sys/class/backlight/intel_backlight/brightness
}
