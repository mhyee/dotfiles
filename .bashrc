# bash completion
[[ -f "`brew --prefix`/etc/bash_completion" ]] && . "`brew --prefix`/etc/bash_completion"

# git-aware prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto
export PS1='[\T \W$(__git_ps1 ":%s")]\$ '
export LSCOLORS=GxFxCxDxBxegedabagacad

# Setup PATH to use homebrew, ActivePerl, python, soylatte, mysql
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
PATH="/usr/local/ActivePerl-5.12/bin:/usr/local/ActivePerl-5.12/site/bin:$PATH"
PATH="/usr/local/share/python:$PATH"
PATH="/usr/local/soylatte/bin:$PATH"
PATH="/usr/local/mysql/bin:$PATH"
export PATH

export JAVA_HOME="/usr/local/soylatte"
export CURL_CA_BUNDLE="/usr/share/curl/curl-ca-bundle.crt"
export SSL_CERT_FILE="/usr/share/curl/curl-ca-bundle.crt"

export EDITOR="vim"

# Aliases
alias m="mvim"
alias vim="vi -p"
alias vi="vi -p"

alias ls="ls -G"
alias la="ls -a"
alias ll="ls -alh"

alias gf="git flow"
alias gff="git flow feature"
alias gfh="git flow hotfix"
alias gfr="git flow release"
alias gfs="git flow support"

alias psx="ps aux | grep"
alias grep="grep --color"
alias diff="colordiff"
alias make="colormake"
alias be="bundle exec"

# Load perlbrew, pythonbrew and rvm into the shell
[[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] && . "$HOME/perl5/perlbrew/etc/bashrc"
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && . "$HOME/.pythonbrew/etc/bashrc"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
