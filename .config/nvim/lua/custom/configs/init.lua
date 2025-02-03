-- Because I fatfinger everything
vim.cmd 'command! W w'
vim.cmd 'command! Q q'
vim.cmd 'command! WQ wq'
vim.cmd 'command! WQA wqa'
vim.cmd 'command! WQa wqa'
vim.cmd 'command! Wqa wqa'

vim.opt.relativenumber = true
vim.opt.guicursor = ''
-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. '/.local/share/mise/shims:' .. vim.env.PATH
