-- return {
-- 	"aktersnurra/no-clown-fiesta.nvim",
-- 	config = function()
-- 		vim.cmd("colorscheme no-clown-fiesta")
-- 	end,
-- 	--
-- }

return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
		})

		vim.api.nvim_command("colorscheme catppuccin-mocha")
	end,
}
