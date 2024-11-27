-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable CWD from automatically changing in monorepos
vim.g.root_spec = { "cwd" }
vim.opt.cursorline = false
vim.opt.showtabline = 0
vim.opt.laststatus = 0

-- Enable this option to avoid conflicts with Prettier.
vim.g.lazyvim_prettier_needs_config = true
