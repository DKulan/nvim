-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

map("x", "p", '"_dP')

map("i", "jk", "<Esc>", { noremap = true, silent = true })

-- shift h/l to move to beginning/end of line
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { silent = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { silent = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { silent = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { silent = true })

map("n", "<leader>\\", "<C-W>v", { desc = "Split Window Right", remap = true })

map("n", "<leader>bd", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<leader>bD", "<cmd> bufdo bd<CR>", { desc = "Delete all buffers", remap = true })

-- Move line up/down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Create new empty line above/below
map("n", "<Enter>", "o<ESC>")
map("n", "<S-Enter>", "O<ESC>")

if vim.fn.executable("lazydocker") == 1 then
  vim.keymap.set("n", "<leader>gd", function()
    LazyVim.terminal("lazydocker", { esc_esc = false, ctrl_hjkl = false })
  end, { desc = "Lazydocker" })
end
