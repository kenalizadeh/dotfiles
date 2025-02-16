-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    default_component_configs = {
      container = {
        -- not needed if we're enabling auto_expand_width
        enable_character_fade = false,
        right_padding = 2,
      },
    },
    window = {
      -- minimum width ?
      width = 20,
      -- expand with content
      auto_expand_width = true,
    },
    filesystem = {
      window = {
        position = 'float',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
