# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# completion cache path setup
typeset -g comppath="$HOME/.cache"
typeset -g compfile="$comppath/.zcompdump"

if [[ -d "$comppath" ]]; then
	[[ -w "$compfile" ]] || rm -rf "$compfile" >/dev/null 2>&1
else
	mkdir -p "$comppath"
fi

# zsh internal stuff
SHELL=/bin/zsh
KEYTIMEOUT=0
SAVEHIST=10000
HISTSIZE=10000
HISTFILE="$HOME/.cache/.zsh_history"

# completion
setopt CORRECT
setopt NO_NOMATCH
setopt LIST_PACKED
setopt ALWAYS_TO_END
setopt NOCASEGLOB
setopt NUMERICGLOBSORT
setopt GLOB_COMPLETE
setopt COMPLETE_ALIASES
setopt COMPLETE_IN_WORD

# builtin command behaviour
setopt AUTO_CD

# job control
setopt AUTO_CONTINUE
setopt LONG_LIST_JOBS

# history control
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

# misc
setopt EXTENDED_GLOB
setopt TRANSIENT_RPROMPT
setopt INTERACTIVE_COMMENTS


autoload -U compinit     # completion
autoload -U terminfo     # terminfo keys
zmodload -i zsh/complist # menu completion
autoload -U promptinit   # prompt
