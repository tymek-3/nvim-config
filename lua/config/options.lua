vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 8
vim.opt.splitright = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smarttab = true

vim.cmd [[
    augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=500})
    augroup END
]]

