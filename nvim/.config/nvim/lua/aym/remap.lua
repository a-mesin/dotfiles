-- Nvim Tree
vim.keymap.set('n', '<leader>n', ':NeoTreeShowToggle<CR>')

-- Move lines
vim.keymap.set('n', '<leader>j', ':m .+1<CR>==')
vim.keymap.set('n', '<leader>k', ':m .-2<CR>==')
vim.keymap.set('i', '<C-j>', '<esc>:m .+1<CR>==')
vim.keymap.set('i', '<C-k>', '<esc>:m .-2<CR>==')
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', '<C-j>', '<C-W><C-j>')
vim.keymap.set('n', '<C-k>', '<C-W><C-k>')
vim.keymap.set('n', '<C-h>', '<C-W><C-h>')
vim.keymap.set('n', '<C-l>', '<C-W><C-l>')

vim.keymap.set('i', 'jk', '<esc>') -- Exit insert mode with jk 

vim.keymap.set('n', 'Y', 'y$') -- Fix yanking
vim.keymap.set('n', 'n', 'nzz') -- centre when searching
vim.keymap.set('n', 'N', 'Nzz')

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd> lua require(\'telescope.builtin\').find_files()<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd> lua require(\'telescope.builtin\').live_grep()<CR>')
vim.keymap.set('n', '<leader>fb', '<cmd> lua require(\'telescope.builtin\').buffers()<CR>')
vim.keymap.set('n', '<leader>fh', '<cmd> lua require(\'telescope.builtin\').help_tags()<CR>')
vim.keymap.set('n', '<leader>fgf', '<cmd> lua require(\'telescope.builtin\').git_files()<CR>')
vim.keymap.set('n', '<leader>fgc', '<cmd> lua require(\'telescope.builtin\').git_commits()<CR>')

-- Go
vim.keymap.set('n', '<leader>gt', '<cmd> :GoTest<CR>')

-- Toggle Term
vim.keymap.set('n', '<leader>t', '<cmd> :ToggleTerm direction=float<CR>')
