# bash completion
[[ -f "`brew --prefix`/etc/bash_completion" ]] && . "`brew --prefix`/etc/bash_completion"

# Autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# git-aware prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto
export PS1='[\T \W$(__git_ps1 ":%s")]\$ '
export LSCOLORS=GxFxCxDxBxegedabagacad

# Setup PATH to use homebrew
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH

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

# Load perlbrew, pythonbrew and rbenv
PERLBREW_ROOT="$HOME/.perl5"
export PERLBREW_ROOT
[[ -s "$PERLBREW_ROOT/etc/bashrc" ]] && . "$PERLBREW_ROOT/etc/bashrc"
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && . "$HOME/.pythonbrew/etc/bashrc"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/.cabal/bin:$PATH"
