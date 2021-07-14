set nocompatible	" be iMproved, required
filetype off		" required

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ajmwagar/vim-deus'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
call plug#end()

" Color scheme
colorscheme gruvbox

" lets and includes
lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})
" vim kexokinase
"let g:Hexokinase_highlighters = [ 'virtual' ]

" Mappings
let mapleader = " "
" WhichKey plugin
nnoremap <silent> <leader> :WhichKey '<space>'<CR>
" NERDTree
map <silent> <leader>n :NERDTreeFocus<CR>
" Suggestion traversal
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
" Resizing
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-l>  :vertical resize +2<CR>
" Escape alternative
inoremap ii <Esc>
nnoremap <C-c> <Esc>
" Buffer switch using TAB
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
" Buffer delete
nnoremap <leader>bd :bdelete<CR>
" Autocomplete
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Selection tabbing
vnoremap <S-TAB> <gv
vnoremap <TAB> >gv
" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Terminal
nnoremap <leader>th :split <bar> :terminal<CR>
nnoremap <leader>tv :vsplit <bar> :terminal<CR>
tnoremap <C-Space> <C-\><C-n>
" Git
nnoremap <leader>gs :G<CR>
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gl :GcLog<CR>
nnoremap <leader>gc :Gcommit<CR>
" Telescope
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR> 
" Zen mode (Goyo plugin)
nnoremap <leader>z :Goyo<CR>

" Sets
filetype plugin indent on	" required
syntax on
set timeoutlen=500
set termguicolors
set number
set relativenumber
set colorcolumn=80
highlight Colorcolumn ctermbg=0 guibg=lightgrey
set nohlsearch
set hidden
set pumheight=10
set cmdheight=2
set mouse=a
set background=dark
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set showtabline=2
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

