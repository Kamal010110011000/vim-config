vim.o.background = 'dark'
vim.wo.colorcolumn = '150'
vim.bo.filetype = 'lua'
vim.g.mapleader = ' '
vim.g['zoom#statustext'] = 'Z'

local set = vim.opt
set.rnu = true
set.autowrite = true
set.cursorline = true
set.autoindent = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.cursorline = true
set.cursorline = false
set.wildignore = {'*/cache/*','*/tmp/*'}
set.errorformat:append('%f|%l col %c|%m')
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}

if vim.fn.has('nvim-0.5') == 1 then
  print('we got neovim 0.5')
end

vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })
