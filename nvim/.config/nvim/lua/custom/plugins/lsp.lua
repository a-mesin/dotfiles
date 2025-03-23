return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- LSP Core
		"folke/neodev.nvim",
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		-- Auto formatting
		"stevearc/conform.nvim",
	},
	config = function()
		require("neodev").setup({})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
			callback = function()
				-- local fzf_lua = require("fzf-lua")

				-- vim.keymap.set("n", "gd", function()
				-- 	fzf_lua.lsp_definitions({ jump_to_single_result = true })
				-- end, { buffer = 0 })
				-- vim.keymap.set("n", "gr", fzf_lua.lsp_references, { buffer = 0 })
				-- vim.keymap.set("n", "gI", fzf_lua.lsp_implementations, { buffer = 0 })
				-- vim.keymap.set("n", "<leader>D", fzf_lua.lsp_typedefs, { buffer = 0 })
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0 })
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = 0 })
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
			end,
		})

		local servers = {
			gopls = {},
			ts_ls = {
				filetypes = {
					"javascript",
					"typescript",
					"typescriptreact",
					"svelte",
				},
			},
			rust_analyzer = {},
			svelte = {},
			lua_ls = {},
		}

		-- Add other tools you want to make sure are installed
		local ensure_installed = vim.tbl_keys(servers or {})
		vim.list_extend(ensure_installed, {
			"stylua", -- Used to format Lua code
		})

		local capabilities = vim.lsp.protocol.make_client_capabilities()

		require("mason").setup({})
		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					-- This handles overriding only values explicitly passed
					-- by the server configuration above. Useful when disabling
					-- certain features of an LSP (for example, turning off formatting for ts_ls)
					server.capabilities = vim.tbl_deep_extend(
						"force",
						{},
						capabilities,
						server.capabilities or {},
						require("blink.cmp").get_lsp_capabilities(server.capabilities)
					)
					require("lspconfig")[server_name].setup(server)
				end,
			},
		})
	end,
}
