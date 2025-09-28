#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export EDITOR=nvim
export VISUAL=nvim
export HISTCONTROL=erasedups
export BAT_THEME="gruvbox-dark"

# Auto cd when just entering a path
shopt -s autocd

# Enable extended globs
shopt -s extglob

# Aliases
alias ..='cd ..'
alias ls='eza -alh --no-user --no-time --git --icons'
alias cat='bat'
alias hist='history'
alias git-log='git log --color --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'

# Show git branch in Bash prompt
git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Bash prompt
export PS1="\[\033[0;34m\]\$(git_branch)\[\033[1;33m\] \[\033[1;36m\]\w\[\033[1;33m\] $ \[\033[1;00m\]"

# Inits
eval "$(fzf --bash)"
