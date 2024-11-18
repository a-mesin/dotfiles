-- return {
-- 	"aktersnurra/no-clown-fiesta.nvim",
-- 	config = function()
-- 		vim.cmd("colorscheme no-clown-fiesta")
-- 	end,
-- }

-- return {
-- 	"jesseleite/nvim-noirbuddy",
-- 	dependencies = {
-- 		{ "tjdevries/colorbuddy.nvim" },
-- 	},
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("noirbuddy").setup({
-- 			preset = "oxide",
-- 			colors = {
-- 				secondary = "#f8ff18",
-- 			},
-- 		})
--
-- 		local Group = require("colorbuddy").Group
-- 		local colors = require("colorbuddy").colors
--
-- 		Group.new("@keyword", colors.secondary)
-- 		Group.new("@variable", colors.noir_2)
-- 	end,
-- }

return {
	"mellow-theme/mellow.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme mellow")
	end,
}
