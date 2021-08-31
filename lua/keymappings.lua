local utils = require('utils')
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')
utils.map('i', '<Up>', '<nop>')
utils.map('i', '<Down>', '<nop>')
utils.map('i', '<Left>', '<nop>')
utils.map('i', '<Right>', '<nop>')
utils.map('n', '<leader>h', '<cmd>wincmd h<CR>')
utils.map('n', '<leader>j', '<cmd>wincmd j<CR>')
utils.map('n', '<leader>k', '<cmd>wincmd k<CR>')
utils.map('n', '<leader>l', '<cmd>wincmd l<CR>')
utils.map('n', '<leader>[', '<cmd>bnext<CR>')
utils.map('n', '<leader>[', '<cmd>bprev<CR>')



