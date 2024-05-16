-- Neo Tree
vim.keymap.set('n', '<leader>n', ':NeoTreeShowToggle<cr>')

-- Move lines
vim.keymap.set('n', '<leader>j', ':m .+1<cr>==')
vim.keymap.set('n', '<leader>k', ':m .-2<cr>==')
vim.keymap.set('i', '<C-k>', '<esc>:m .-2<cr>==')
vim.keymap.set('i', '<C-j>', '<esc>:m .+1<cr>==')
vim.keymap.set('v', 'J', ':m \'>+1<cr>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<cr>gv=gv')

vim.keymap.set('n', '<C-j>', '<C-W><C-j>')
vim.keymap.set('n', '<C-k>', '<C-W><C-k>')
vim.keymap.set('n', '<C-h>', '<C-W><C-h>')
vim.keymap.set('n', '<C-l>', '<C-W><C-l>')

vim.keymap.set('i', 'jk', '<esc>') -- Exit insert mode with jk

vim.keymap.set('n', 'Y', 'y$')  -- Fix yanking
vim.keymap.set('n', 'n', 'nzz') -- centre when searching
vim.keymap.set('n', 'N', 'Nzz')

vim.keymap.set('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format()<cr>')

-- Buffer
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
vim.keymap.set('n', '<leader>bb', '<cmd>e #<cr>')
vim.keymap.set('n', '<leader>bd', '<cmd> lua require(\'mini.bufremove\').delete(0, false)<cr>')

-- Telescope
vim.keymap.set('n', 'ff', '<cmd> lua require(\'telescope.builtin\').find_files()<cr>')
vim.keymap.set('n', 'fg', '<cmd> lua require(\'telescope.builtin\').live_grep()<cr>')
vim.keymap.set('n', 'fb', '<cmd> lua require(\'telescope.builtin\').buffers()<cr>')
vim.keymap.set('n', 'fh', '<cmd> lua require(\'telescope.builtin\').help_tags()<cr>')
vim.keymap.set('n', 'fgf', '<cmd> lua require(\'telescope.builtin\').git_files()<cr>')
vim.keymap.set('n', 'fgc', '<cmd> lua require(\'telescope.builtin\').git_commits()<cr>')

-- LazyGit
vim.keymap.set('n', '<leader>g', '<cmd>LazyGit<cr>')
vim.keymap.set('n', '<leader>gh', '<cmd>LazyGitFilterCurrentFile<cr>')

-- Trouble
vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>')
vim.keymap.set('n', 'gR', '<cmd>TroubleToggle lsp_references<cr>')
