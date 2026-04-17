vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'config.options'
require 'config.autocmds'
require 'config.keymaps'
require 'config.lazy'

pcall(require, 'local.options')
pcall(require, 'local.autocmds')
pcall(require, 'local.keymaps')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
