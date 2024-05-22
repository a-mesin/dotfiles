return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<leader>hh", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-q>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-w>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-f>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-p>", function()
			harpoon:list():select(4)
		end)

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<S-p>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<S-n>", function()
			harpoon:list():next()
		end)
	end,
}
