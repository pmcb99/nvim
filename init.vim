set tabstop=4 softtabstop=4
set encoding=utf-8
set backspace=indent,eol,start
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
set nowrap
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

set expandtab
set autoindent
set fileformat=unix

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf.vim'

Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

let mapleader = " "

let g:deoplete#enable_at_startup=1
autocmd InsertLeave, CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:NERDCreateDefaultMappings=1

nnoremap <leader>1 :bp<CR>
nnoremap <leader>2 :bn<CR>
let NERDTREEQuitOnOpen=1
let g:NERDTreeMinimalUI=1
let g:jedi#completions_enabled=0
let g:jedi#use_splits_not_buffers="right"

nnoremap <F5> :UndotreeToggle<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader><C-n> :NERDTree<CR>
nnoremap <leader><C-t> :NERDTreeToggle<CR>
nnoremap <leader><C-f> :NERDTreeFind<CR>
nnoremap <C-p> :Files<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
