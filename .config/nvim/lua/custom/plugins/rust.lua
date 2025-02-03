return {
  'rust-lang/rust.vim',
  event = 'VeryLazy',
  ft = 'rust',
  init = function()
    vim.g.rustfmt_autosave = 1
  end,
}
