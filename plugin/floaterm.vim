  function RunProgram()
    if(&filetype == 'c')
        FloatermNew --autoclose=0 gcc % -o %< && ./%<
    elseif(&filetype == 'java')
      FloatermNew --autoclose=0 javac % && java %<
    else
      echom "not configured to execute now"
    endif
 endfunction
