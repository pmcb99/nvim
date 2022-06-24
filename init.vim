set tabstop=4 softtabstop=4
set exrc
set nohlsearch
set noerrorbells
set guicursor
set hidden
set expandtab
set smartindent
set smartcase
set relativenumber
set nu
set shiftwidth=4
set nobackup
set noswapfile
set undodir='~/.config/undodir'
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
call plug#end()

let mapleader = " "
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader><C-n> :NERDTree<CR>
nnoremap <leader><C-t> :NERDTreeToggle<CR>
nnoremap <leader><C-f> :NERDTreeFind<CR>
