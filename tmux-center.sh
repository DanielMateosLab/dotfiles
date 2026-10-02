#!/bin/sh
width=${1:-120}
panes=$(tmux list-panes | wc -l | tr -d ' ')

if [ "$panes" -eq 1 ]; then
  total=$(tmux display-message -p '#{window_width}')
  pad=$(( (total - width) / 2 ))
  [ "$pad" -gt 0 ] || exit 0
  tmux split-window -h -b -d -l "$pad"
  tmux split-window -h -l "$pad"
  tmux select-pane -L
else
  left=$(tmux list-panes -F '#{pane_left} #{pane_id}' | sort -n | head -1 | cut -d' ' -f2)
  right=$(tmux list-panes -F '#{pane_left} #{pane_id}' | sort -n | tail -1 | cut -d' ' -f2)
  tmux kill-pane -t "$left"
  tmux kill-pane -t "$right"
fi
