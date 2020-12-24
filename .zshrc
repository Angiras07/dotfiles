#ZSH CONFIG

#p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#source config
[ -f $HOME/.config/zsh/settings.zsh ] && source $HOME/.config/zsh/settings.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh
[[ -s $HOME/.config/zsh/plugins/autojump/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.config/zsh/plugins/autojump/.autojump/etc/profile.d/autojump.sh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
[ -f $HOME/.config/zsh/bindings.zsh ] && source $HOME/.config/zsh/bindings.zsh
[ -f $HOME/.config/zsh/functions.zsh ] && source $HOME/.config/zsh/functions.zsh

autoload -U compinit && compinit -u

# Color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r

source $HOME/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh/plugins/fzf/completion.zsh
source $HOME/.config/zsh/plugins/fzf/key-bindings.zsh

# required by some packages
export EDITOR='/usr/bin/nvim'
export TERMINAL='/usr/bin/st'
export VISUAL='/usr/bin/nvim'

# 'p10k configure' to edit prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
