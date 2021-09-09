  function RunProgram()
    if(&filetype == 'c')
        let b:floaterm_title = "Running C/CPP Program"
        FloatermNew --autoclose=0 gcc % -o %< && ./%<
    elseif(&filetype == 'java')
        let b:floaterm_title = "Running java Program"
        FloatermNew --autoclose=0 javac % && java %<
    elseif(&filetype == 'javascript')
        let b:floaterm_title = "Running Node Program"
        FloaterNew --autoclose=0 node %
    else
      echom "not configured to execute now"
    endif
 endfunction

hi Floaterm guibg=#181d26
hi FloatermBorder guibg=#120a33 guifg=#c2c732
hi FloatermNC guibg=#3e4147
let g:floaterm_title = &filetype
let g:floaterm_keymap_new    = '<leader>mt'
let g:floaterm_keymap_prev   = '<leader>pt'
let g:floaterm_keymap_next   = '<leader>nt'
let g:floaterm_keymap_toggle = '<leader>sh'


