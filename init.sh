#!/bin/bash

session="financial-portfolio"

tmux new-session -d -s $session

window=1
tmux rename-window -t $session:$window "neovim" c-m
tmux send-keys -t $session:$window "v ." c-m

window=3
tmux new-window -t $session:$window -n "server"
tmux send-keys -t $session:$window "bunx dev" c-m

tmux attach-session -t $session
