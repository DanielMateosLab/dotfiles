# Load and initialize zsh advanced completion system
 autoload -Uz compinit && compinit

# Set vi motion
bindkey -v

# map ç tp fzf cd widget
bindkey "ç" fzf-cd-widget

# Set aliases
alias cwd='pwd | tr -d '\''\n'\'' | pbcopy'
alias glo='git log --oneline'
alias ll='ls -lha'
alias rmd='rm -rf'
alias cl=clear

# source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Functions
run_and_exit() {
    local cmd=$1
    shift # removes the first argument ($1)
    "$cmd" "$@"
    exit
}

# Specific commands using the general function
codex() {
    run_and_exit code "$@"
}

wx() {
    run_and_exit windsurf "$@"
}

cux() {
	run_and_exit cursor "$@"
}

# Docker compose backwards compatibility
docker-compose() {
  docker compose "$@"
}

# fnm
FNM_PATH="/Users/default/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/default/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
eval "$(fnm env)"
