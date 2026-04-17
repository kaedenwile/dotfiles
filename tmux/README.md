# TMUX Config

## Getting Started

Create a symlink:

```sh
ln -s ~/Developer/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

## Local Overrides

Populate any local overrides in `~/.tmux.local.conf`, which is automatically imported.

Run the following command to reload tmux config:

```sh
tmux source-file ~/.tmux.conf
```
