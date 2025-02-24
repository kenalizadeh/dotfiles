-- Because I fatfinger everything
vim.cmd 'command! W w'
vim.cmd 'command! Q q'
vim.cmd 'command! WQ wq'
vim.cmd 'command! WQA wqa'
vim.cmd 'command! WQa wqa'
vim.cmd 'command! Wqa wqa'

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

vim.opt.relativenumber = true
vim.opt.guicursor = ''

-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. '/.local/share/mise/shims:' .. vim.env.PATH

-- Set global highlight group
vim.api.nvim_set_hl(0, 'Visual', { bg = '#555555', bold = false })

-- Wrap telescope preview lines
vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopePreviewerLoaded',
  callback = function()
    vim.wo.wrap = true
  end,
})

-- Add plist filetype
vim.filetype.add {
  extension = {
    plist = 'plist',
  },
}

-- glsl
vim.filetype.add {
  extension = {
    vert = 'glsl',
    frag = 'glsl',
  },
}
