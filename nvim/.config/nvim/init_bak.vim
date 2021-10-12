syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nohlsearch
set colorcolumn=100
set laststatus=2
set statusline=%f\
set termguicolors

" Plugins 
call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

let mapleader = " "

" Key bindings
nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>nf :NvimTreeFocus<CR>
nnoremap <leader>nc :NvimTreeClose<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> 
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap Y y$
nnoremap n nzz
nnoremap N Nzz
inoremap jk <esc>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fgf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fgb <cmd>lua require('telescope.builtin').git_branches()<cr>

" Unbindings 
inoremap <esc> <nop>
nnoremap <up> :echo "No up for you"<cr> 
nnoremap <down> :echo "No down for you"<cr> 
nnoremap <left> :echo "No left for you"<cr> 
nnoremap <right> :echo "No right for you"<cr> 


" Autocmd
augroup vimrc
    autocmd! 

    autocmd vimenter * colorscheme gruvbox
augroup END

lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.volar.setup{}
require'lspconfig'.gopls.setup{}
EOF

let g:gruvbox_contrast_dark = 'hard'

let g:nvim_tree_auto_open = 1

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
