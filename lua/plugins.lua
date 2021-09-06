return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
    use { 'sainnhe/gruvbox-material' }

  -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

  -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }

  -- Lua development
    use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
    use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

  -- TreeSitter
    use { 'nvim-treesitter/nvim-treesitter' }

    use { 'kabouzeid/nvim-lspinstall'}

  -- NvimTree
    use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
    }
    use{'voldikss/vim-floaterm'}
    
    use{'vim-airline/vim-airline',
    requires = 'vim-airline/vim-airline-themes'
    }

    use { 'honza/vim-snippets' }
    use { 'SirVer/ultisnips',
        config = function()
            vim.cmd [[
                let g:UltiSnipsJumpForwardTrigger="<c-j>"
                let g:UltiSnipsJumpBackwardTrigger="<c-k>"
            ]]
        end }
    use {'norcalli/snippets.nvim'}
    use {'mfussenegger/nvim-jdtls'}
    use {'hrsh7th/nvim-compe'}


end)
