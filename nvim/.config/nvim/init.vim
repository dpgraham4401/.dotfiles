" Plugins
call plug#begin()
	Plug 'tmsvg/pear-tree'
	Plug 'vim-airline/vim-airline'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'arcticicestudio/nord-vim'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-fugative'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/bufferline.nvim'
call plug#end()

set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap
set relativenumber
set number
set mouse=a
set clipboard=unnamed
set belloff=all
set hidden
syntax enable
filetype plugin indent on

" Appearance
colorscheme nord
set termguicolors


inoremap jk <Esc>
noremap <S-j> :bnext<CR>
noremap <S-k> :bprevious<CR>
noremap <Tab> :bprevious<CR>
" save with Control-S
map <C-s> :w<CR>
" quit with Control-q
map <C-q> :q<CR>

" move around splits with Alt-arrow
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

