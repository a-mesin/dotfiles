return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			log_level = vim.log.levels.DEBUG,
			format_on_save = {
				timeout_ms = 2000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier", "biome" },
				typescript = { "prettier" },
				typescriptreact = { "prettier", "biome" },
				svelte = { "prettierd" },
				sh = { "shfmt" },
				sql = { "sqlfluff" },
				markdown = { "markdownlint" },
				json = { "jq" },
				rust = { "rustfmt" },
				scss = { "prettier" },
			},
			formatters = {
				sqlfluff = {
					prepend_args = { "--dialect", "postgres" },
				},
			},
		})
	end,
}
