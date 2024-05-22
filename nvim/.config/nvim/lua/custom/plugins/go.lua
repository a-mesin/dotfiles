-- Go
return {
	"ray-x/go.nvim",
	dependencies = {
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("go").setup()

		vim.keymap.set("n", "<leader>ca", "<cmd>GoCodeAction<cr>")
		vim.keymap.set("n", "<leader>ce", "<cmd>GoIfErr<cr>")
		vim.keymap.set("n", "<leader>cdb", "<cmd>GoDebug<cr>")
		vim.keymap.set("n", "<leader>cha", "<cmd>GoAddTag<cr>")
		vim.keymap.set("n", "<leader>chr", "<cmd>GoRMTag<cr>")
		vim.keymap.set("n", "<leader>chc", "<cmd>GoCoverage<cr>")
		vim.keymap.set("n", "<leader>chg", "<cmd>GoCmt<cr>")
		vim.keymap.set("n", "<leader>chv", "<cmd>GoVet<cr>")
		vim.keymap.set("n", "<leader>cht", "<cmd>GoModTidy<cr>")
		vim.keymap.set("n", "<leader>chi", "<cmd>GoModInit<cr>")
		vim.keymap.set("n", "<leader>ci", "<cmd>GoToggleInlay<cr>")
		vim.keymap.set("n", "<leader>cim", "<cmd>GoImport<cr>")
		vim.keymap.set("n", "<leader>cl", "<cmd>GoLint<cr>")
		vim.keymap.set("n", "<leader>co", "<cmd>GoPkgOutline<cr>")
		vim.keymap.set("n", "<leader>cr", "<cmd>GoRun<cr>")
		vim.keymap.set("n", "<leader>cs", "<cmd>GoFillStruct<cr>")
		vim.keymap.set("n", "<leader>ctr", "<cmd>GoTest<cr>")
		vim.keymap.set("n", "<leader>cta", "<cmd>GoAlt!<cr>")
		vim.keymap.set("n", "<leader>cts", "<cmd>GoAltS!<cr>")
		vim.keymap.set("n", "<leader>ctv", "<cmd>GoAltV!<cr>")
		vim.keymap.set("n", "<leader>ctu", "<cmd>GoTestFunc<cr>")
		vim.keymap.set("n", "<leader>ctf", "<cmd>GoTestFile<cr>")
		vim.keymap.set("n", "<leader>cxl", "<cmd>GoCodeLenAct<cr>")
		vim.keymap.set("n", "<leader>cxa", "<cmd>GoCodeAction<cr>")
		vim.keymap.set("v", "<leader>cj", '<cmd>"<,">GoJson2Struct<cr>')
		vim.keymap.set("v", "<leader>ca", "<cmd>GoCodeAction<cr>")
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
