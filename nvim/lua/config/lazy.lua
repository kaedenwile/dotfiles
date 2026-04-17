---------------------------------------------------
-- This file sets up LAZY plugin config for nvim --
---------------------------------------------------

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end

vim.opt.rtp:prepend(lazypath)

local spec = {
  { import = 'plugins' },
}

local local_plugins = vim.fn.stdpath 'config' .. 'lua/plugins/local'
if vim.uv.fs_stat(local_plugins) then table.insert(spec, { import = 'plugins.local' }) end

--  To update plugins you can run
--    :Lazy update
require('lazy').setup(spec)
