" Plugins
call plug#begin()
	Plug 'tmsvg/pear-tree'
	Plug 'vim-airline/vim-airline'
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'arcticicestudio/nord-vim'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-sensible'
	Plug 'kyazdani42/nvim-web-devicons' " bufferline recommended
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
	Plug 'preservim/nerdtree' 
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'lewis6991/spellsitter.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'akinsho/toggleterm.nvim'
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap
set relativenumber
set number
set mouse=a
" set spell
set clipboard=unnamed
set belloff=all
set hidden
let mapleader=" "
syntax on
filetype plugin indent on

" Appearance
colorscheme nord
set termguicolors

" key mappings
inoremap jk <Esc>
noremap <S-j> :bnext<CR>
noremap <S-k> :bprevious<CR>
noremap <Tab> :bprevious<CR>
map <C-s> :w<CR>
" map <C-q> :q<CR>

" Plugin key mappings
" See 'let mpaleader=' above for what leader is set to 
nnoremap <leader>n	:NERDTreeToggle<CR>
nnoremap <leader>f	:Files<CR>
" Comment out with Control-ForwardSlash
nnoremap <C-/>		:Commentary<bar><CR>
nnoremap <leader>' :ToggleTerm<CR>


" move around splits with Alt-arrow
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

lua << EOF
-- require('utils')
require("terminal").setup()
require("spellsitter").setup()
require("bufferline").setup()
require("term_options")

local key_mapper = require('utils').key_mapper
-- close buffer on Control-q
key_mapper('n', '<C-q>', '<cmd>lua require("utils").close_buffer()<CR>')
EOF

