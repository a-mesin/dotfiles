return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "auto",
			component_separators = "|",
		},
		sections = {
			lualine_a = {
				{ "mode", right_padding = 2 },
			},
			lualine_b = { { "filename", path = 1 }, "branch" },
			lualine_c = { "diff" },
			lualine_x = { "fileformat" },
			lualine_y = { "encoding" },
			lualine_z = {
				{ "filetype", left_padding = 2 },
			},
		},
		inactive_sections = {
			lualine_a = { "filename" },
		},
	},
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}
