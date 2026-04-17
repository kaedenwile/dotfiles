# Nvim config

This is Kaeden's nvim config, based on kickstart.nvm.

## Getting started

Clone this repo, then create a symlink:

```sh
ln -s ~/path/to/your/repo/nvim ~/.config/nvim
```

## Local Overrides

You can configure local overrides without editing shared files, to avoid merge conflicts.

```
  lua/
    config/
      options.lua
      keymaps.lua
      autocmds.lua
      lazy.lua
    plugins/
      lsp.lua
      telescope.lua
      ui.lua
      editing.lua
      local/        # gitignored
        ui.lua
        work.lua
    local/          # gitignored
      options.lua
      keymaps.lua
      autocmds.lua
```

