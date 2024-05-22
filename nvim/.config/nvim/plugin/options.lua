local cmd = vim.cmd
local opt = vim.opt

cmd("syntax on")

opt.number = true
opt.relativenumber = true -- displays relative number
opt.tabstop = 4 -- set auto indent to 4 spaces
opt.softtabstop = 4 -- enables backspace to delete entire tab
opt.shiftwidth = 4 -- number of spaces to use for each indent
opt.shiftround = true -- rounds the indent spacing to the next multiple of shiftwidth
opt.expandtab = true -- tabs are actually white spaces
opt.smartcase = true -- considers casing when searching
opt.hlsearch = false -- disables highlighting of previous search
opt.backup = false -- disables backup
opt.termguicolors = true
opt.smartindent = true -- auto indents when pressing enter in needed places
opt.swapfile = false -- disables swap file
opt.wrap = false -- disables wrapping when line exceeds screen
opt.clipboard:append("unnamedplus") -- copy/paste from/to system clipboard
opt.mouse = "a" -- enable mouse
opt.showmode = false -- hide mode as we use statusline
opt.list = true
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.updatetime = 250 -- Decrease update time
opt.scrolloff = 10 -- Minimal number of visible lines
