#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link_file() {
  local src="$1"
  local dest="$2"

  if [ -L "$dest" ]; then
    echo "Skipping $dest (already a symlink)"
    return
  fi

  if [ -e "$dest" ]; then
    local backup="${dest}.bak.$(date +%Y%m%d%H%M%S)"
    mv "$dest" "$backup"
    echo "Moved existing $dest to $backup"
  fi

  ln -s "$src" "$dest"
  echo "Linked $dest -> $src"
}

mkdir -p "$HOME/.config"

link_file "$ROOT/nvim" "$HOME/.config/nvim"
link_file "$ROOT/tmux/tmux.conf" "$HOME/.tmux.conf"

