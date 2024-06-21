return {
	"folke/trouble.nvim",
	branch = "main",
	dependencies = "nvim-tree/nvim-web-devicons",
	cmd = "Trouble",
	opts = {},
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle<cr>",
		},
	},
}
