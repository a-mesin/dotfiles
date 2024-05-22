return {
	"folke/noice.nvim",
	version = "*",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup()
	end,
}
