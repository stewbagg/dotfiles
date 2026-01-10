#
# ~/.bashrc
#

[[ $- != *i* ]] && return

export EDITOR=nvim
export VISUAL=nvim
export HISTCONTROL=erasedups

shopt -s autocd
shopt -s extglob

alias ..='cd ..'
alias du='du -ach'
alias git-log='git log --color --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias ls='ls -alh --color=auto'
alias pkg-list='pacman -Qqe > pkglist.txt'

git_branch() {
	git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\$(git_branch) \w $ "
