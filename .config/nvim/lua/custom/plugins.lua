local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "clangd",
        "clang-format",
        "codelldb",
        "lua-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "rust-lang/rust.vim",
    event = "VeryLazy",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    }
  },
  {
    "darfink/vim-plist",
    event = "VeryLazy",
    ft = "plist",
    init = function()
      vim.g.plist_display_format = 'xml'
      vim.g.plist_save_format = ''
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    'rmagatti/auto-session',
    enabled = false,
    opts = {
      suppressed_dirs = { '/', '~/', '~/Projects', '~/Downloads' },
    }
  },
  {
    'tomasky/bookmarks.nvim',
    lazy = false,
    event = "VimEnter",
    config = function()
      require('bookmarks').setup {
        on_attach = function()
          local bm = require "bookmarks"
          local map = vim.keymap.set
          map("n", "<leader>mm", bm.bookmark_toggle)  -- add or remove bookmark at current line
          map("n", "<leader>mi", bm.bookmark_ann)     -- add or edit mark annotation at current line
          map("n", "<leader>mc", bm.bookmark_clean)   -- clean all marks in local buffer
          map("n", "<leader>mn", bm.bookmark_next)    -- jump to next mark in local buffer
          map("n", "<leader>mp", bm.bookmark_prev)    -- jump to previous mark in local buffer
          map("n", "<leader>ml", bm.bookmark_list)    -- show marked file list in quickfix window
          map("n", "<leader>mx", bm.bookmark_clear_all) -- removes all bookmarks
        end
      }
    end
  },
  {
    "ntpeters/vim-better-whitespace",
    lazy = false
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown', 'quarto' },
  },
  {
    "nwiizo/cargo.nvim",
    enabled = false,
    build = "cargo build --release",
    config = function()
      require("cargo").setup({
        float_window = true,
        window_width = 0.8,
        window_height = 0.8,
        border = "rounded",
        auto_close = true,
        close_timeout = 5000,
      })
    end,
    ft = { "rust" },
    cmd = {
      "CargoBench",
      "CargoBuild",
      "CargoClean",
      "CargoDoc",
      "CargoNew",
      "CargoRun",
      "CargoTest",
      "CargoUpdate"
    }
  },
  {
    "folke/trouble.nvim",
    enabled = false,
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    'mvllow/modes.nvim',
    enabled = false,
    tag = 'v0.2.1',
    config = function()
      require('modes').setup({
        colors = {
          bg = "", -- Optional bg param, defaults to Normal hl group
          copy = "#f5c359",
          delete = "#c75c6a",
          insert = "#78ccc5",
          visual = "#9745be",
        },

        -- Set opacity for cursorline and number background
        line_opacity = 0.15,

        -- Enable cursor highlights
        set_cursor = true,

        -- Enable cursorline initially, and disable cursorline for inactive windows
        -- or ignored filetypes
        set_cursorline = true,

        -- Enable line number highlights to match cursorline
        set_number = true,

        -- Disable modes highlights in specified filetypes
        -- Please PR commonly ignored filetypes
        ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
      })
    end
  }
}
return plugins
