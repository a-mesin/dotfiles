return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		local fzf_lua = require("fzf-lua")
		fzf_lua.setup({})

		vim.keymap.set("n", "ff", fzf_lua.files)
		vim.keymap.set("n", "fg", fzf_lua.grep)
		vim.keymap.set("n", "fb", fzf_lua.buffers)
		vim.keymap.set("n", "fh", fzf_lua.helptags)
		vim.keymap.set("n", "fgf", fzf_lua.git_files)
		vim.keymap.set("n", "fgc", fzf_lua.git_commits)
	end,
}
