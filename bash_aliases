#!/usr/bin/env bash
# Custom Aliases

alias python=/usr/local/bin/python3.10

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lh='ls --color=always -A | grep --color=never -E "^\."'
alias llh='ls --color=always -lA | grep --color=never -E "\s\."'

# git
alias glo='git log --oneline'
alias gc='git commit'
alias gca='git commit -a'
alias gs='git status'


