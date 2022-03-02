return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Theme
    use 'dracula/vim'

    -- Telescope
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Git
    use 'tpope/vim-fugitive'

    -- Lsp
    use 'neovim/nvim-lspconfig'

    -- Go
    use { 'fatih/vim-go', run = ':GoUpdateBinaries' }

    -- File nav tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        config = function() require'nvim-tree'.setup {} end
    }

    -- Code completion
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-path' }

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        requires = {
            {
                "p00f/nvim-ts-rainbow",
                after = "nvim-treesitter",
            }
        }
    }

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }

    -- Optimizes startup time
    use { "nathom/filetype.nvim" }
end)
