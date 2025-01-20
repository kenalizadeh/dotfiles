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
    ft = "plist",
    enabled = false,
    init = function()
      vim.g.plist_save_format = 'xml'
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
    lazy = false,
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
    opts = {},
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
  }
}
return plugins
