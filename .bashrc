# bash completion
[[ -f "`brew --prefix`/etc/bash_completion" ]] && . "`brew --prefix`/etc/bash_completion"

# Autojump
if [ -f `brew --prefix`/etc/autojump.sh ]; then
  . `brew --prefix`/etc/autojump.sh
fi

# git-aware prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto
export PS1='[\t \W$(__git_ps1 ":%s")]\$ '
export LSCOLORS=GxFxCxDxBxegedabagacad

# Setup PATH to use homebrew
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH

export EDITOR="vim"

# Use vim to read man pages, thanks to
# http://zameermanji.com/blog/2012/12/30/using-vim-as-manpager/#edit
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""

function psx() { ps aux | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }

# Load perlbrew, pythonbrew and rbenv
PERLBREW_ROOT="$HOME/.perl5"
export PERLBREW_ROOT
[[ -s "$PERLBREW_ROOT/etc/bashrc" ]] && . "$PERLBREW_ROOT/etc/bashrc"
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && . "$HOME/.pythonbrew/etc/bashrc"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/.cabal/bin:$PATH"
