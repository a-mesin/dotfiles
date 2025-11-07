vim.g.mapleader = " "
vim.g.maplocalleaer = " "

local o = vim.opt
local map = vim.keymap.set
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup("aym.cfg", { clear = true })

o.number = true
o.tabstop = 4 -- set auto indent to 4 spaces
o.softtabstop = 4 -- enables backspace to delete entire tab
o.shiftwidth = 4 -- number of spaces to use for each indent
o.shiftround = true -- rounds the indent spacing to the next multiple of shiftwidth
o.expandtab = true -- tabs are actually white spaces
o.smartcase = true -- considers casing when searching
o.hlsearch = false -- disables highlighting of previous search
o.backup = false -- disables backup
o.termguicolors = true
o.smartindent = true -- auto indents when pressing enter in needed places
o.swapfile = false -- disables swap file
o.wrap = false -- disables wrapping when line exceeds screen
o.clipboard:append("unnamedplus") -- copy/paste from/to system clipboard
o.mouse = "a" -- enable mouse
o.showmode = false -- hide mode as we use statusline
o.splitbelow = true -- Put new windows below current
o.splitright = true -- Put new windows right of current
o.updatetime = 250 -- Decrease update time
o.scrolloff = 10 -- Minimal number of visible lines

-- Move lines
map("n", "<leader>j", ":m .+1<cr>==")
map("n", "<leader>k", ":m .-2<cr>==")
map("i", "<C-k>", "<esc>:m .-2<cr>==")
map("i", "<C-j>", "<esc>:m .+1<cr>==")
map("v", "J", ":m '>+1<cr>gv=gv")
map("v", "K", ":m '<-2<cr>gv=gv")

map("n", "<C-j>", "<C-W><C-j>")
map("n", "<C-k>", "<C-W><C-k>")
map("n", "<C-h>", "<C-W><C-h>")
map("n", "<C-l>", "<C-W><C-l>")

map("i", "jk", "<esc>") -- Exit insert mode with jk

map("n", "Y", "y$") -- Fix yanking
map("n", "n", "nzz") -- centre when searching
map("n", "N", "Nzz")

map("n", "<leader>w", ":w<cr>")
map("n", "<leader>wa", ":wa<cr>")

map("n", "-", "<cmd>Oil<cr>")
map("n", "<leader>g", "<cmd>lua Snacks.lazygit() <cr>")
map("n", "<leader>f", "<cmd>lua Snacks.picker.files() <cr>")
map("n", "<leader>/", "<cmd>lua Snacks.picker.grep() <cr>")

vim.pack.add({
	"https://github.com/vague2k/vague.nvim",
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
	"https://github.com/nvim-treesitter/nvim-treesitter-context",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/mfussenegger/nvim-lint",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/saghen/blink.cmp",
	"https://github.com/echasnovski/mini.nvim",
	"https://github.com/folke/snacks.nvim",
	"https://github.com/nvim-pack/nvim-spectre",
})

require("vague").setup({
	transparent = true,
})
vim.cmd([[colorscheme vague]])

require("nvim-treesitter").setup({
	ensure_installed = {
		"bash",
		"dockerfile",
		"json",
		"go",
		"typescript",
		"javascript",
		"lua",
		"vim",
		"sql",
		"rust",
		"toml",
		"yaml",
		"vue",
	},
	auto_install = true,
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

autocmd("PackChanged", {
	desc = "Handle nvim-treesitter updates",
	group = augroup,
	callback = function(args)
		local spec = args.data.spec
		if spec and spec.name == "nvim-treesitter" and args.data.kind == "update" then
			vim.notify("nvim-treesitter updated, running TSUpdate...", vim.log.levels.INFO)
			local ok = pcall(vim.cmd, "TSUpdate")
			if ok then
				vim.notify("TSUpdate completed successfully!", vim.log.levels.INFO)
			else
				vim.notify("TSUpdate command not available yet, skipping", vim.log.levels.WARN)
			end
		end
	end,
})

require("treesitter-context").setup({
	max_lines = 3,
	multiline_threshold = 1,
	separator = "-",
	min_window_height = 20,
	line_numbers = true,
})

vim.lsp.enable({
	"gopls",
	"lua_ls",
	"ts_ls",
	"bashls",
	"rust_analyzer",
	"tailwindcss",
})

map("n", "<leader>e", vim.diagnostic.open_float)
map("n", "<leader>q", vim.diagnostic.setloclist)

vim.lsp.config("ts_ls", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
	filetypes = {
		"javascript",
		"typescript",
		"typescriptreact",
		"vue",
		"stylua",
	},
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.stdpath("data")
					.. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
				languages = { "vue" },
			},
		},
	},
	settings = {
		typescript = {
			tsserver = {
				useSyntaxServer = false,
			},
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = true,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayVariableTypeHintsWhenTypeMatchesName = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
		},
	},
})

autocmd("LspAttach", {
	group = augroup,
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method("textDocument/implementation") then
			local bufopts = { noremap = true, silent = true, buffer = args.buf }
			map("n", "gr", vim.lsp.buf.references, bufopts)
			map("n", "gI", vim.lsp.buf.implementation, bufopts)
			map("n", "gd", vim.lsp.buf.definition, bufopts)
			map("n", "gD", vim.lsp.buf.type_definition, bufopts)
			map("n", "K", vim.lsp.buf.hover, bufopts)
		end
	end,
})

require("oil").setup({
	view_options = {
		show_hidden = true,
	},
})

require("conform").setup({
	format_on_save = {
		timeout_ms = 2000,
		lsp_format = "never",
	},
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		svelte = { "prettierd" },
		sh = { "shfmt" },
		sql = { "sqlfluff" },
		markdown = { "markdownlint" },
		json = { "jq" },
		rust = { "rustfmt" },
		scss = { "prettier" },
		go = { "goimports" },
		vue = { "prettier" },
	},
	formatters = {
		sqlfluff = {
			prepend_args = { "--dialect", "postgres" },
		},
	},
})

require("lint").linters_by_ft = {
	sh = { "shellcheck" },
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	svelte = { "eslint_d" },
	vue = { "eslint_d" },
	markdown = { "markdownlint" },
	yaml = { "yamllint" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})

require("lualine").setup({
	options = {
		theme = "auto",
		component_separators = "|",
	},
	sections = {
		lualine_a = {
			{ "mode", right_padding = 2 },
		},
		lualine_b = { { "filename", path = 1 }, "branch" },
		lualine_c = { "diff" },
		lualine_x = { "fileformat" },
		lualine_y = { "encoding" },
		lualine_z = {
			{ "filetype", left_padding = 2 },
		},
	},
	inactive_sections = {
		lualine_a = { "filename" },
	},
})

require("blink.cmp").setup({
	fuzzy = {
		implementation = "lua",
	},
	completion = {
		documentation = {
			auto_show = true,
		},
	},
})

require("mini.pairs").setup()
require("mini.icons").setup()
require("mini.diff").setup()

require("snacks").setup({
	picker = { enabled = true },
	lazygit = { enabled = true },
})
