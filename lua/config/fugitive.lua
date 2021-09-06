local utils = require('utils')
utils.map('n', '<Leader>gs', '<cmd>Gstatus<CR>')  -- Git status
utils.map('n', '<leader>gg', '<cmd>Gdiff 2<cmd>')
utils.map('n', '<leader>gh', '<cmd>Gdiff 3<cmd>')
