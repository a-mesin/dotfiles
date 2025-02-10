return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.pairs").setup()
		require("mini.icons").setup()
		require("mini.diff").setup()
	end,
}
