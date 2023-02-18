## Arch / Manjaro ##
# Setup fzf
# ---------
if [[ ! "$PATH" == */home/dani/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/dani/.fzf/bin"
fi
# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/dani/.fzf/shell/completion.bash" 2> /dev/null
# Key bindings
# ------------
# source "/home/dani/.fzf/shell/key-bindings.bash"
if [ -f "/home/dani/.fzf/shell/key-bindings.bash" ]; then
  source "/home/dani/.fzf/shell/key-bindings.bash"
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