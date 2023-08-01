#!/usr/bin/env bash
# Custom Aliases

alias python=python3

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls --color=always -A | grep --color=never -E "^\."'
alias llh='ls --color=always -lA | grep --color=never -E "\s\."'

# git
alias glo='git log --oneline'
alias glc='git log --format="%C(auto)%h%Cgreen %ae %C(brightblue)%ah %Creset %n    %s"'
alias gc='git commit'
alias gca='git commit -a'
alias gs='git status'

# Brightness
alias brightness='cd /sys/class/backlight/intel_backlight'

# Aliases for WSL
alias wclip='clip.exe'
alias homeclip='echo $WHOME | clip.exe'