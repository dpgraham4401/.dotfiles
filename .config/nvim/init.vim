" Vim init 2.0
" Plugins
if has('nvim')
	call plug#begin()
	Plug 'tmsvg/pear-tree'
	Plug 'francoiscabrol/ranger.vim'
	" colorschemes
	Plug 'rafi/awesome-vim-colorschemes'
	" LSP setup
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'
	" Autocomplete
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	" For vsnip users.
	Plug 'hrsh7th/cmp-vsnip'
	Plug 'hrsh7th/vim-vsnip'
	call plug#end()
else
	call plug#begin()
	Plug 'tmsvg/pear-tree'
	Plug 'francoiscabrol/ranger.vim'
	Plug 'rafi/awesome-vim-colorschemes'
	call plug#end()
endif

" tabs 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
"lines and numbers
set nowrap
set relativenumber
set number
" mouse and clipboard
set mouse=a
set clipboard=unnamedplus
set belloff=all
set hidden
" set completeopt-=preview
" set completeopt=menuone,noinsert,noselect
syntax enable
filetype plugin indent on

" Appearance
colorscheme iceberg
" highlight Normal ctermbg=black

" Keybindings
inoremap jk <Esc>
nnoremap ; :
" navigate buffers
noremap <S-j> :bnext<CR>
noremap <S-k> :bprevious<CR>
noremap <Tab> :bprevious<CR>
" open ranger file explorer
map <C-n> :Ranger<CR> 
" save with Control-S
map <C-s> :w<CR>
" quit with Control-q
map <C-q> :q<CR>
" open ranger file explorer
map <C-n> :Ranger<CR> 

" Autocomplete
" if PUM then <C-n>, else normal tab
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
set completeopt=menu,menuone,noselect


if has('nvim')
lua <<EOF
require('modules.core')
require('modules.lsp')
EOF
endif
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
