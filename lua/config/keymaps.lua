-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")

-- Center cursor after moving up/down
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center cursor after moving up half-page" })
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center cursor after moving down half-page" })

-- rebind q to shift+q to prevent accidental input
map("n", "Q", "q", { noremap = true })
map("n", "q", "<Nop>", { noremap = true })

-- shift h/l to move to beginning/end of line
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { silent = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { silent = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { silent = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { silent = true })

map("n", "<leader>\\", "<C-W>v", { desc = "Split Window Right", remap = true })

-- Move line up/down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Create new empty line above/below
map("n", "<Enter>", "o<ESC>")
map("n", "<S-Enter>", "O<ESC>")
