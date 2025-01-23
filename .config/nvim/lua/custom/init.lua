vim.opt.number = true
vim.opt.relativenumber = true
vim.filetype.add({
  extension = {
    plist = "plist"
  }
})

-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
vim.opt.guicursor = ""
