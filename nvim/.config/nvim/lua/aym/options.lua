local cmd = vim.cmd

cmd "syntax on"

vim.opt.number = true
vim.opt.relativenumber = true -- displays relative number
vim.opt.tabstop = 4 -- set auto indent to 4 spaces
vim.opt.softtabstop = 4 -- enables backspace to delete entire tab
vim.opt.shiftwidth = 4 -- number of spaces to use for each indent
vim.opt.shiftround = true -- rounds the indent spacing to the next multiple of shiftwidth
vim.opt.expandtab = true -- tabs are actually white spaces
vim.opt.smartcase = true -- considers casing when searching
-- vim.opt.undodir = '.vim/undodir'
-- vim.opt.undofile = true -- keeps undo history even when file is closed
vim.opt.hlsearch = false -- disables highlighting of previous search
vim.opt.backup = false -- disables backup
vim.opt.termguicolors = true
vim.opt.smartindent = true -- auto indents when pressing enter in needed places
vim.opt.swapfile = false -- disables swap file
vim.opt.wrap = false -- disables wrapping when line exceeds screen
vim.opt.colorcolumn = '120' -- display colored column at specified position
vim.opt.clipboard:append('unnamedplus')-- copy/paste from/to system clipboard
