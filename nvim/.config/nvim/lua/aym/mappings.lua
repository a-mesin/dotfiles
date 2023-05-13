-- Neo Tree
vim.keymap.set('n', '<leader>n', ':NeoTreeShowToggle<CR>')

-- Move lines
vim.keymap.set('n', '<leader>j', ':m .+1<CR>==', { desc = 'Move line up' })
vim.keymap.set('n', '<leader>k', ':m .-2<CR>==', { desc = 'Move line down' })
vim.keymap.set('i', '<C-k>', '<esc>:m .-2<CR>==')
vim.keymap.set('i', '<C-j>', '<esc>:m .+1<CR>==')
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', '<C-j>', '<C-W><C-j>')
vim.keymap.set('n', '<C-k>', '<C-W><C-k>')
vim.keymap.set('n', '<C-h>', '<C-W><C-h>')
vim.keymap.set('n', '<C-l>', '<C-W><C-l>')

vim.keymap.set('i', 'jk', '<esc>') -- Exit insert mode with jk

vim.keymap.set('n', 'Y', 'y$')     -- Fix yanking
vim.keymap.set('n', 'n', 'nzz')    -- centre when searching
vim.keymap.set('n', 'N', 'Nzz')

-- Buffer
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")

-- <leader> base mappings
local wk = require('which-key')
wk.register({
    b = {
        name = 'Buffers',
        b = { '<cmd>e #<cr>', 'Switch to last buffer' },
        d = { '<cmd> lua require(\'mini.bufremove\').delete(0, false)<CR>', 'Remove buffer' }
    },
    f = {
        name = 'Find',
        f = { '<cmd> lua require(\'telescope.builtin\').find_files()<CR>', 'Files' },
        g = { '<cmd> lua require(\'telescope.builtin\').live_grep()<CR>', 'Grep' },
        b = { '<cmd> lua require(\'telescope.builtin\').buffers()<CR>', 'Buffers' },
        h = { '<cmd> lua require(\'telescope.builtin\').help_tags()<CR>', 'Help Tags' },
        gf = { '<cmd> lua require(\'telescope.builtin\').git_files()<CR>', 'Git files' },
        gc = { '<cmd> lua require(\'telescope.builtin\').git_commits()<CR>', 'Git commits' }
    },
    t = { '<cmd> :ToggleTerm direction=float<CR>', 'Open Terminal' }
}, { prefix = '<leader>' })
