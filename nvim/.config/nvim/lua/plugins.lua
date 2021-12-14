return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'dracula/vim'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'tpope/vim-fugitive'
    use 'neovim/nvim-lspconfig'
    use { 'fatih/vim-go', run = ':GoUpdateBinaries' }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        config = function() require'nvim-tree'.setup {} end
    }
end)
