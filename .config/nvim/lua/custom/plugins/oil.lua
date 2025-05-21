return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
    view_options = {
      -- Show files and directories that start with "."
      show_hidden = true,
      sort = {
        { 'ctime', 'desc' },
      },
    },
    delete_to_trash = true,
    columns = {
      'icon',
      -- 'permissions',
      -- 'size',
      -- 'mtime',
    },
  },
  -- Optional dependencies
  dependencies = { 'echasnovski/mini.icons', opts = {} },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
