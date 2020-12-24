# prettier view
alias la='exa -al --color=always --group-directories-first'
alias lag='exa -al --color=always --group-directories-first | less -r'
alias mv='mv -v'
alias mkdir='mkdir -vp'
alias rm='rm -vr'
alias cp='cp -rv'

# docker aliases
alias sdk='sudo systemctl start docker.service'
alias qdk='sudo systemctl stop docker.service'
alias dks='docker start'
alias dkq='docker stop'
alias dkx='docker exec -ti'
alias dkd='docker rm'
alias dkp='docker ps -a'
alias dki='docker images'
alias dkr='docker run'

# systemd aliases
alias sys='sudo systemctl start'
alias syq='sudo systemctl stop'
alias syr='sudo systemctl restart'
alias syt='sudo systemctl status'

# auto open neovim
alias -s {cpp,hpp,c,h,py}='nvim'
alias -s {yaml,js,json,sql}='nvim'
alias -s {txt,markdown,md}='nvim'
alias -s {README,LICENSE}='nvim'
alias -s {conf,config,vim}='nvim'
alias -s {toml,lock,rs}='nvim'

# auto open zathura
alias setz='setsid zathura'

# nvim always
alias v='nvim'

# youtube songs download
alias ysd='youtube-dl -f bestaudio'

# add to dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
