-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

autocmd("Filetype", {
  pattern = { "*" },
  callback = function()
    -- vim.opt.formatoptions = vim.opt.formatoptions - "o"
    if vim.bo["ft"] == "css" then
      vim.opt_local.formatoptions:remove("r") -- don't enter comment leader on Enter in css files
    end
    vim.opt.formatoptions = vim.opt.formatoptions + {
      o = false, -- Don't continue comments with o and O
    }
  end,
  desc = "Don't continue comments with o and O",
})
