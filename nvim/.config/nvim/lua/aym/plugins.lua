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

    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-path' }

    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

end)