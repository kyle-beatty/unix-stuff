#!/bin/bash

# Vim is the best
export EDITOR=vim
export VISUAL=vim

# For minerva
export PATH=$PATH':~/.local/bin'

# Alias commands to enable/disable touchpad (for gaming)
alias mouse='xinput --disable 12'  # Touchpad on
alias nomouse='xinput --enable 12' # Touchpad off
