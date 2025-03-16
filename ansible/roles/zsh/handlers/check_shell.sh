#!/bin/bash
# Helper script to check and set zsh as default shell

current_shell=$(getent passwd $USER | cut -d: -f7)
zsh_shell=$(which zsh)

if [ "$current_shell" != "$zsh_shell" ]; then
  if [ -x "$zsh_shell" ]; then
    echo "Changing default shell to $zsh_shell"
    chsh -s "$zsh_shell"
    exit $?
  else
    echo "ZSH not found or not executable at $zsh_shell"
    exit 1
  fi
else
  echo "ZSH is already the default shell"
  exit 0
fi