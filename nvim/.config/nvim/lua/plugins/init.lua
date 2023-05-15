return {
    -- Theme
    'shaunsingh/nord.nvim',

    -- Telescope
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        },
    },

    -- Go
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },

    -- Debugging
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',

    -- Git signs
    {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    },

    -- File nav tree
    {
        'nvim-neo-tree/neo-tree.nvim',
        version = 'v2.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
        }
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = { 'p00f/nvim-ts-rainbow' },
    },

    -- Status line
    'nvim-lualine/lualine.nvim',

    -- install without yarn or npm
    {
        'iamcco/markdown-preview.nvim',
        build = function()
            vim.fn['mkdp#util#install']()
        end,
    },

    -- Commenting
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    },

    -- Toggle Terminal
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        config = true
    },

    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },

    -- Cmd replacement
    {
        'folke/noice.nvim',
        version = '*',
        dependencies = {
            'MunifTanjim/nui.nvim'
        },
        config = function() require('noice').setup() end,
    },

    -- Autopair
    {
        'echasnovski/mini.pairs',
        version = '*',
        config = function() require('mini.pairs').setup() end
    },

    -- Buffer Remove
    { 'echasnovski/mini.bufremove', version = '*' },

    -- Surrounding brackets
    { 'echasnovski/mini.surround',  version = '*' },

    -- Show indents
    {
        'echasnovski/mini.indentscope',
        version = '*',
        opts = {
            symbol = '│',
            options = { try_as_border = true },
        },
        config = function(_, opts) require('mini.indentscope').setup(opts) end
    },

    -- TODO comments
    {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        config = function() require("todo-comments").setup {} end
    },

    -- Key Mappings
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end,
    },

    -- Neodev
    'folke/neodev.nvim',
}
