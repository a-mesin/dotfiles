return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			log_level = vim.log.levels.DEBUG,
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = false,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { { "prettier", "biome" } },
				typescript = { { "prettier", "biome" } },
				typescriptreact = { { "prettier", "biome" } },
				svelte = { "biome" },
				sh = { "shfmt" },
				sql = { "sqlfluff" },
				markdown = { "markdownlint" },
				json = { "jq" },
				rust = { "rustfmt" },
				scss = { { "prettier" } },
			},
			formatters = {
				sqlfluff = {
					prepend_args = { "--dialect", "postgres" },
				},
			},
		})
	end,
}
