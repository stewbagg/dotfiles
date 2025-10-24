#
# ~/.bashrc
#

[[ $- != *i* ]] && return

export EDITOR=nvim
export VISUAL=nvim
export HISTCONTROL=erasedups
export BAT_THEME="gruvbox-dark"

shopt -s autocd
shopt -s extglob

alias ..='cd ..'
alias cat='bat'
alias du='du -ach'
alias git-log='git log --color --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias hist='history'
alias ls='eza -alh --no-user --no-time --git --icons'
alias pkglist='pacman -Qqe > pkglist.txt'

git_branch() {
	git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[0;34m\]\$(git_branch)\[\033[1;33m\] \[\033[1;36m\]\w\[\033[1;33m\] $ \[\033[1;00m\]"

eval "$(fzf --bash)"
