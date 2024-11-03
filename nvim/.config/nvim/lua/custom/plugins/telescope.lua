return {
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			local telescope = require("telescope.builtin")

			vim.keymap.set("n", "ff", telescope.find_files)
			vim.keymap.set("n", "fg", telescope.live_grep)
			vim.keymap.set("n", "fb", telescope.buffers)
			vim.keymap.set("n", "fh", telescope.help_tags)
			vim.keymap.set("n", "fgf", telescope.git_files)
			vim.keymap.set("n", "fgc", telescope.git_commits)
		end,
	},
}
