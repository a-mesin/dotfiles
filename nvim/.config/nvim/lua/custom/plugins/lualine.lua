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
			lualine_b = { "filename", "branch" },
			lualine_c = { "fileformat" },
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
