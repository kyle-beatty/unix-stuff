#!/bin/bash

# Vim is the best
export EDITOR=vim
export VISUAL=vim

# Add local programs/scripts to path
export PATH=$PATH':~/.local/bin'

alias tls="ls | grep -F .tex"

# Source machine-specific preferences
if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi
