-- Move lines
vim.keymap.set("n", "<leader>j", ":m .+1<cr>==")
vim.keymap.set("n", "<leader>k", ":m .-2<cr>==")
vim.keymap.set("i", "<C-k>", "<esc>:m .-2<cr>==")
vim.keymap.set("i", "<C-j>", "<esc>:m .+1<cr>==")
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

vim.keymap.set("n", "<C-j>", "<C-W><C-j>")
vim.keymap.set("n", "<C-k>", "<C-W><C-k>")
vim.keymap.set("n", "<C-h>", "<C-W><C-h>")
vim.keymap.set("n", "<C-l>", "<C-W><C-l>")

vim.keymap.set("i", "jk", "<esc>") -- Exit insert mode with jk

vim.keymap.set("n", "Y", "y$") -- Fix yanking
vim.keymap.set("n", "n", "nzz") -- centre when searching
vim.keymap.set("n", "N", "Nzz")

-- LazyGit
vim.keymap.set("n", "<leader>g", "<cmd>LazyGit<cr>")
vim.keymap.set("n", "<leader>gh", "<cmd>LazyGitFilterCurrentFile<cr>")
