---@diagnostic disable: missing-fields

-- return {
-- 	"slugbyte/lackluster.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	init = function()
-- 		local lackluster = require("lackluster")
-- 		lackluster.setup({
-- 			tweak_background = {
-- 				normal = "none",
-- 				popup = "none",
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("lackluster-night")
-- 	end,
-- }
--
return {
	"wtfox/jellybeans.nvim",
	priority = 1000,
	config = function()
		require("jellybeans").setup({
			transparent = true,
		})
		vim.cmd.colorscheme("jellybeans")
	end,
}
--
-- return {
-- 	"scottmckendry/cyberdream.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("cyberdream").setup({
-- 			transparent = true,
-- 		})
-- 		vim.cmd.colorscheme("cyberdream")
-- 	end,
-- }
