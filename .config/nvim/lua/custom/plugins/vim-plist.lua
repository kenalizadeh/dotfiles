return {
  'darfink/vim-plist',
  event = 'VeryLazy',
  ft = 'plist',
  init = function()
    vim.g.plist_display_format = 'xml'
    vim.g.plist_save_format = ''
  end,
}
