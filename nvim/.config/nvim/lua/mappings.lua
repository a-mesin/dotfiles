local map = vim.api.nvim_set_keymap
local g = vim.g

g.mapleader = ' '

options = { noremap = true }

-- Nvim Tree
map('n', '<leader>n', ':NvimTreeToggle<CR>', options)
map('n', '<leader>nf', ':NvimTreeFocus<CR>', options)
map('n', '<leader>nc', ':NvimTreeClose<CR>', options)

-- Move lines
map('n', '<leader>j', ':m .+1<CR>==', options)
map('n', '<leader>k', ':m .-2<CR>==', options)
map('i', '<C-j>', '<esc>:m .+1<CR>==', options)
map('i', '<C-k>', '<esc>:m .-2<CR>==', options)
map('v', 'J', ':m \'>+1<CR>gv=gv', options)
map('v', 'K', ':m \'<-2<CR>gv=gv', options)


map('i', 'jk', '<esc>', options) -- Exit insert mode with jk 

map('n', 'Y', 'y$', options) -- Fix yanking
map('n', 'n', 'nzz', options) -- centre when searching
map('n', 'N', 'Nzz', options)

-- Unbindings
map('i', '<esc>', '<nop>', options)
map('n', '<up>', ':echo "No up for you"<CR>', options)
map('n', '<down>', ':echo "No down for you"<CR>', options)
map('n', '<left>', ':echo "No left for you"<CR>', options)
map('n', '<right>', ':echo "No right for you"<CR>', options)

-- Telescope
map('n', '<leader>ff', '<cmd> lua require(\'telescope.builtin\').find_files()<CR>', options)
map('n', '<leader>fg', '<cmd> lua require(\'telescope.builtin\').live_grep()<CR>', options)
map('n', '<leader>fb', '<cmd> lua require(\'telescope.builtin\').buffers()<CR>', options)
map('n', '<leader>fh', '<cmd> lua require(\'telescope.builtin\').help_tags()<CR>', options)
map('n', '<leader>fgf', '<cmd> lua require(\'telescope.builtin\').git_files()<CR>', options)
map('n', '<leader>fgc', '<cmd> lua require(\'telescope.builtin\').git_commits()<CR>', options)
