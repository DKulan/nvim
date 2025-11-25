return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  -- {
  --   "echasnovski/mini.files",
  --   keys = {
  --     {
  --       "<leader>e",
  --       function()
  --         require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
  --       end,
  --       desc = "Open mini.files (Directory of Current File)",
  --     },
  --     {
  --       "<leader>E",
  --       function()
  --         require("mini.files").open(vim.uv.cwd(), true)
  --       end,
  --       desc = "Open mini.files (cwd)",
  --     },
  --   },
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        virtual_text = false,
      },
    },
  },
  {
    "snacks.nvim",
    opts = {
      scratch = { enabled = false },
      indent = { enabled = false },
      words = { enabled = false },
      picker = {
        win = {
          input = {
            keys = {
              -- to close the picker on ESC instead of going to normal mode,
              ["<Esc>"] = { "close", mode = { "n", "i" } },
              ["<c-h>"] = { "toggle_hidden", mode = { "i", "n" } },
              ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
              ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
              ["<c-b>"] = { "list_scroll_up", mode = { "i", "n" } },
              ["<c-f>"] = { "list_scroll_down", mode = { "i", "n" } },
            },
          },
        },
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  -- {
  --   "m4xshen/hardtime.nvim",
  --   event = "VeryLazy",
  --   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  --   opts = {},
  -- },
  {
    "chrisgrieser/nvim-spider",
    opts = {},
    keys = {
      {
        "w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to start of next of word",
      },
      {
        "e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to end of word",
      },
      {
        "b",
        "<cmd>lua require('spider').motion('b')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to start of previous word",
      },
    },
  },
  {
    "nmac427/guess-indent.nvim",
    opts = {
      auto_cmd = true,
      override_editorconfig = true,
    },
  },
  {
    "nvim-mini/mini.surround",
    opts = {
      mappings = {
        add = ";;",
        delete = ";d",
        find = ";f",
        find_left = ";F",
        highlight = ";h",
        replace = ";r",
        update_n_lines = ";n",
      },
    },
  },
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          keys = { "f", "F", "t", "T" },
        },
      },
    },
  },
  {
    "chrisgrieser/nvim-rip-substitute",
    keys = {
      {
        "g/",
        function()
          require("rip-substitute").sub()
        end,
        mode = { "n", "x" },
        desc = "Rip Substitute",
      },
    },
  },
  {
    "johmsalas/text-case.nvim",
    lazy = false,
    config = true,
    cmd = {
      "Subs",
      "TextCaseStartReplacingCommand",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      zen = {
        toggles = { dim = false, git_signs = false, mini_diff_signs = false },
      },
      picker = {
        formatters = {
          file = {
            filename_first = true,
            truncate = 80,
          },
        },
        sources = {
          files = {
            exclude = {
              "package-lock.json",
              "yarn.lock",
            },
          },
        },
      },
    },
  },
  {
    {
      "abecodes/tabout.nvim",
      lazy = false,
      config = function()
        require("tabout").setup({
          tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
          backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
          act_as_tab = true, -- shift content if tab out is not possible
          act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
          default_tab = "<C-t>", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
          default_shift_tab = "<C-d>", -- reverse shift default action,
          enable_backwards = true, -- well ...
          completion = false, -- if the tabkey is used in a completion pum
          tabouts = {
            { open = "'", close = "'" },
            { open = '"', close = '"' },
            { open = "`", close = "`" },
            { open = "(", close = ")" },
            { open = "[", close = "]" },
            { open = "{", close = "}" },
          },
          ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
          exclude = {}, -- tabout will ignore these filetypes
        })
      end,
      dependencies = { -- These are optional
        "nvim-treesitter/nvim-treesitter",
        "L3MON4D3/LuaSnip",
        "hrsh7th/nvim-cmp",
      },
      opt = true, -- Set this to true if the plugin is optional
      event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility
      priority = 1000,
    },
    {
      "L3MON4D3/LuaSnip",
      keys = function()
        -- Disable default tab keybinding in LuaSnip
        return {}
      end,
    },
  },
}
