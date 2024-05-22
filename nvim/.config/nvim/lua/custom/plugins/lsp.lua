return {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = {
		-- Neodev
		"folke/neodev.nvim",

		-- LSP Support
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- Autocompletion
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",

		-- Snippets
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("neodev").setup({})

		local lsp = require("lsp-zero")

		lsp.on_attach(function(_, bufnr)
			local opts = { buffer = bufnr, remap = false }
			lsp.default_keymaps(opts)

			vim.keymap.set("n", "<leader>fwd", "<cmd>Telescope diagnostics<cr>", opts)
			vim.keymap.set("n", "<leader>fws", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)
			vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
			vim.keymap.set("i", "<C-h>", function()
				vim.lsp.buf.signature_help()
			end, opts)
			vim.keymap.set("n", "<leader>rn", function()
				vim.lsp.buf.rename()
			end, opts)
		end)

		require("mason").setup({})
		require("mason-lspconfig").setup({
			-- Replace the language servers listed here
			-- with the ones you want to install
			ensure_installed = { "tsserver", "gopls" },
			handlers = {
				lsp.default_setup,
			},
		})

		require("lspconfig").tailwindcss.setup({
			filetypes = {
				"templ",
				"gohtml",
				"html",
				"markdown",
				"javascript",
				"vue",
			},
			init_options = {
				userLanguages = {
					templ = "html",
				},
			},
		})

		local cmp = require("cmp")
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			sources = {
				{ name = "path" },
				{ name = "nvim_lsp" },
				{ name = "nvim_lua" },
				{ name = "buffer", keyword_length = 3 },
				{ name = "luasnip", keyword_length = 2 },
			},
			mapping = {
				["<C-Space>"] = cmp.mapping.complete({}),
			},
		})
	end,
}
