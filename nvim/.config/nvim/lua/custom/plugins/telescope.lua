return {
	"nvim-lua/plenary.nvim",
	{ "nvim-telescope/telescope.nvim",

	config = function () 
		vim.keymap.set('n', 'ff', '<cmd> lua require(\'telescope.builtin\').find_files()<cr>')
		vim.keymap.set('n', 'fg', '<cmd> lua require(\'telescope.builtin\').live_grep()<cr>')
		vim.keymap.set('n', 'fb', '<cmd> lua require(\'telescope.builtin\').buffers()<cr>')
		vim.keymap.set('n', 'fh', '<cmd> lua require(\'telescope.builtin\').help_tags()<cr>')
		vim.keymap.set('n', 'fgf', '<cmd> lua require(\'telescope.builtin\').git_files()<cr>')
		vim.keymap.set('n', 'fgc', '<cmd> lua require(\'telescope.builtin\').git_commits()<cr>')
	end,
}
}
