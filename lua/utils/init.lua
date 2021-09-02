local utils = { }

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function utils.opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= 'o' then scopes['o'][key] = value end
end

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.run(filetype)
    local result
    if(filetype == 'c') then
        result = '<cmd>FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>';
    elseif(filetype == 'java') then
        result = '<cmd>FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>';
    else
        result = string.format("<cmd>echom \"No Configuration for %s type of file\"<CR>", filetype);
    end
    return result;
end

return utils
