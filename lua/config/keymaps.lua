-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<Esc>", { noremap = true, silent = true })

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { silent = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { silent = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { silent = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { silent = true })

map("n", "<leader>\\", "<C-W>v", { desc = "Split Window Right", remap = true })
