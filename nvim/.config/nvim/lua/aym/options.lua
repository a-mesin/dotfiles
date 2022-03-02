local cmd = vim.cmd
local opt = vim.opt

cmd "syntax on"

opt.number = true
opt.relativenumber = true -- displays relative number
opt.tabstop = 4 -- set auto indent to 4 spaces
opt.softtabstop = 4 -- enables backspace to delete entire tab
opt.shiftwidth = 4 -- number of spaces to use for each indent
opt.shiftround = true -- rounds the indent spacing to the next multiple of shiftwidth
opt.expandtab = true -- tabs are actually white spaces
opt.smartcase = true -- considers casing when searching
-- opt.undodir = '.vim/undodir'
-- opt.undofile = true -- keeps undo history even when file is closed
opt.hlsearch = false -- disables highlighting of previous search
opt.backup = false -- disables backup
opt.statusline = '%F\\' -- statusline config
opt.termguicolors = true
opt.smartindent = true -- auto indents when pressing enter in needed places
opt.swapfile = false -- disables swap file
opt.wrap = false -- disables wrapping when line exceeds screen
opt.colorcolumn = '100' -- display colored column at specified position
