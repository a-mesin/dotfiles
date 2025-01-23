---@diagnostic disable: missing-fields

-- return {
-- 	"EdenEast/nightfox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		-- Default options
-- 		require("nightfox").setup({
-- 			options = {
-- 				transparent = true, -- Disable setting background
-- 			},
-- 		})
--
-- 		vim.cmd("colorscheme carbonfox")
-- 	end,
-- }
--
return {
	"slugbyte/lackluster.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		local lackluster = require("lackluster")
		lackluster.setup({
			tweak_background = {
				normal = "none",
				popup = "none",
			},
		})
		vim.cmd.colorscheme("lackluster-night")
	end,
}
