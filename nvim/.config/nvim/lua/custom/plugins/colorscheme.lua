return {
	"mcchrish/zenbones.nvim",
	dependencies = { "rktjmp/lush.nvim" },
	config = function()
		vim.g.zenbones = { darkness = "stark" }

		vim.cmd.colorscheme("zenbones")
	end,
}
