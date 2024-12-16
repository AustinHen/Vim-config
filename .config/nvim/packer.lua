-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
       -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use 'preservim/tagbar'
    use 'voldikss/vim-floaterm'
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
    use {'nvim-treesitter/nvim-treesitter'}
    use {'theprimeagen/harpoon'}
end)
