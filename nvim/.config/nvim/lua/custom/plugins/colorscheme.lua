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

-- return {
-- 	"AlexvZyl/nordic.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("nordic").load()
-- 	end,
-- }

return {
	"EdenEast/nightfox.nvim",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme carbonfox")
	end,
}
