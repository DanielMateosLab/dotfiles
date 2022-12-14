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
source "/home/dani/.fzf/shell/key-bindings.bash"
