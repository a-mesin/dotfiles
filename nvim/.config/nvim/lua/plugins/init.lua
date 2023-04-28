return {
    -- Theme
   'dracula/vim',

    -- Telescope
   'nvim-lua/plenary.nvim',
   'nvim-telescope/telescope.nvim',

    -- Git
   'tpope/vim-fugitive',
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    -- Go
    { 'fatih/vim-go', build = ':GoUpdateBinaries' },

    -- File nav tree
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function() require'nvim-tree'.setup {} end
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = { "p00f/nvim-ts-rainbow" }
    },

    -- Status line
    'nvim-lualine/lualine.nvim',

    -- install without yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end
    },
    
    -- Commenting
    {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    },

    -- Toggle Terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- Optimizes startup time
   'nathom/filetype.nvim',
}
