## Arch / Manjaro ##
# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]] && [ -d "$HOME/.fzf/bin" ]; then
  PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi
# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.bash" 2> /dev/null
# Key bindings
# ------------
# source "$HOME/.fzf/shell/key-bindings.bash"
if [ -f "$HOME/.fzf/shell/key-bindings.bash" ]; then
  source "$HOME/.fzf/shell/key-bindings.bash"
fi

## Ubuntu ##
# source /usr/share/doc/fzf/examples/key-bindings.bash
if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then
  source /usr/share/doc/fzf/examples/key-bindings.bash
fi
# source /usr/share/doc/fzf/examples/completion.bash
if [ -f /usr/share/doc/fzf/examples/completion.bash ]; then
  source /usr/share/doc/fzf/examples/completion.bash
fi