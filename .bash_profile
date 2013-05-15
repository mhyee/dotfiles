#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT=$HOME/Documents/sandbox/dotfiles/bash-it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='mhyee'

# Set my editor and git editor
export EDITOR="vim"

# Don't check mail when opening terminal.
unset MAILCHECK

# Setup PATH to use homebrew
PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH

# Use vim to read man pages, thanks to
# http://zameermanji.com/blog/2012/12/30/using-vim-as-manpager/#edit
export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""

# Load perlbrew, pythonbrew, rbenv, and cabal bin
PERLBREW_ROOT="$HOME/.perl5"
export PERLBREW_ROOT
[[ -s "$PERLBREW_ROOT/etc/bashrc" ]] && . "$PERLBREW_ROOT/etc/bashrc"
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && . "$HOME/.pythonbrew/etc/bashrc"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.cabal/bin:$PATH"

# Load Heroku tools
export PATH="/usr/local/heroku/bin:$PATH"

### FYDP stuff
# Put waf into the path
#export PATH="/usr/local/waf:$PATH"
# Set JAVA_HOME
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/"

# Usage: puniq [<path>]
# Remove duplicate entries from a PATH style value while retaining
# the original order. Use PATH if no <path> is given.
#
# Example:
# $ puniq /usr/bin:/usr/local/bin:/usr/bin
# /usr/bin:/usr/local/bin
puniq () {
    echo "$1" |tr : '\n' |nl |sort -u -k 2,2 |sort -n |
    cut -f 2- |tr '\n' : |sed -e 's/:$//' -e 's/^://'
}
PATH=$(puniq $PATH)

# Load Bash It
source $BASH_IT/bash_it.sh

# Fix so Ctrl+S works in Vim (Mac only)
stty -ixon -ixoff
