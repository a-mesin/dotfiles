---@diagnostic disable: missing-fields
---
-- return {
-- 	"slugbyte/lackluster.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	init = function()
-- 		require("lackluster").setup({
-- 			tweak_background = {
-- 				normal = "none",
-- 				popup = "none",
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("lackluster")
-- 	end,
-- }
--
-- return {
-- 	"wtfox/jellybeans.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("jellybeans").setup({
-- 			transparent = true,
-- 		})
-- 		vim.cmd.colorscheme("jellybeans")
-- 	end,
-- }
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
--
-- return {
-- 	"no-clown-fiesta/no-clown-fiesta.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("no-clown-fiesta").setup({
-- 			transparent = true,
-- 		})
-- 		vim.cmd.colorscheme("no-clown-fiesta")
-- 	end,
-- }

--

return {
	{
		"vague2k/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other plugins
		config = function()
			require("vague").setup({
				transparent = true,
			})
			vim.cmd.colorscheme("vague")
		end,
	},
	-- {
	-- 	"wnkz/monoglow.nvim",
	-- 	config = function()
	-- 		require("monoglow").setup({
	-- 			-- Change the "glow" color
	-- 			on_colors = function(colors)
	-- 				colors.glow = "#18c784"
	-- 			end,
	-- 		})
	--
	-- 		vim.cmd.colorscheme("monoglow")
	-- 	end,
	-- },
	-- {
	-- 	"ficcdaf/ashen.nvim",
	-- 	config = function()
	-- 		vim.cmd.colorscheme("ashen")
	-- 	end,
	-- },
}
