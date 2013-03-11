#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT=$HOME/Documents/sandbox/dotfiles/bash-it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

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

# Load Bash It
source $BASH_IT/bash_it.sh
