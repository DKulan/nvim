-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable CWD from automatically changing in monorepos
vim.g.root_spec = { "cwd" }
vim.opt.cursorline = false
vim.opt.showtabline = 0
vim.opt.laststatus = 0
vim.opt.number = false
vim.opt.relativenumber = false

-- Disable auto blank line at EOF when saving
vim.opt.fixeol = false

-- Disable animations
vim.g.snacks_animate = true
