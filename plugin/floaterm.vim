  function RunProgram()
    if(&filetype == 'c')
        FloatermNew --autoclose=0 gcc % -o %< && ./%<
    elseif(&filetype == 'java')
        FloatermNew --autoclose=0 javac % && java %<
    elseif(&filetype == 'javascript'
        FloaterNew --autoclose=0 node %
    else
      echom "not configured to execute now"
    endif
 endfunction

hi Floaterm guibg=#181d26
hi FloatermBorder guibg=#120a33 guifg=#092533
hi FloatermNC guibg=#3e4147
let g:floaterm_keymap_new    = '<leader>mt'
let g:floaterm_keymap_prev   = '<leader>pt'
let g:floaterm_keymap_next   = '<leader>nt'
let g:floaterm_keymap_toggle = '<leader>sh'


