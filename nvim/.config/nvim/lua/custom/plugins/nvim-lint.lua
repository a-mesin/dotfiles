return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			sh = { "shellcheck" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			markdown = { "markdownlint" },
			yaml = { "yamllint" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				-- try_lint without arguments runs the linters defined in `linters_by_ft`
				-- for the current filetype
				require("lint").try_lint()
			end,
		})
	end,
}
