return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true,
			},
		})

		-- Oil
		vim.keymap.set("n", "-", "<cmd>Oil<cr>")
	end,
}
