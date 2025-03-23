return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			log_level = vim.log.levels.DEBUG,
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
	end,
}
