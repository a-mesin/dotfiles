return {
    -- Theme
    {
        "mcchrish/zenbones.nvim",
        dependencies = { "rktjmp/lush.nvim" },
        config = function()
            vim.cmd.colorscheme("zenbones")
        end,
    },
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
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'nvimtools/none-ls.nvim' },

            -- Snippets
            { 'saadparwaiz1/cmp_luasnip' },
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
    {
        'mfussenegger/nvim-dap',
        dependencies = {
            'rcarriga/nvim-dap-ui',
            'theHamsta/nvim-dap-virtual-text',
        }
    },

    -- Git
    "kdheepak/lazygit.nvim",

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
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        }
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = { 'p00f/nvim-ts-rainbow' },
    },

    -- Go Templ Treesitter
    "vrischmann/tree-sitter-templ",

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

    -- Buffer Remove
    { 'echasnovski/mini.bufremove', version = '*' },

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

    -- Neodev
    'folke/neodev.nvim',

    -- Find & replace across folders
    'nvim-pack/nvim-spectre',

    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup()
        end
    },

    -- AI tool
    'David-Kunz/gen.nvim',

    -- Hurl
    {
        "jellydn/hurl.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        ft = "hurl",
        opts = {
            -- Show debugging info
            debug = false,
            -- Show notification on run
            show_notification = false,
            -- Show response in popup or split
            mode = "split",
            -- Default formatter
            formatters = {
                json = { 'jq' }, -- Make sure you have install jq in your system, e.g: brew install jq
                html = {
                    'prettier',  -- Make sure you have install prettier in your system, e.g: npm install -g prettier
                    '--parser',
                    'html',
                },
            },
        },
        keys = {
            -- Run API request
            { "<leader>A",  "<cmd>HurlRunner<CR>",        desc = "Run All requests" },
            { "<leader>a",  "<cmd>HurlRunnerAt<CR>",      desc = "Run Api request" },
            { "<leader>te", "<cmd>HurlRunnerToEntry<CR>", desc = "Run Api request to entry" },
            { "<leader>tm", "<cmd>HurlToggleMode<CR>",    desc = "Hurl Toggle Mode" },
            { "<leader>tv", "<cmd>HurlVerbose<CR>",       desc = "Run Api in verbose mode" },
            -- Run Hurl request in visual mode
            { "<leader>h",  ":HurlRunner<CR>",            desc = "Hurl Runner",             mode = "v" },
        },
    },

    -- Harpoon
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    }

    -- Rust tools
    'simrat39/rust-tools.nvim'
}
