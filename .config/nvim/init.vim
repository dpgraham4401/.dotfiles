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
	" airline
	Plug 'vim-airline/vim-airline'
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

" move around splits with Alt-arrow
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Autocomplete
set completeopt=menu,menuone,noselect
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<Tab>"

"let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_section_y = ""
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ' '
"let g:airline#extensions#tabline#right_alt_sep = '|'
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ' '
"let g:airline_right_alt_sep = '|'


" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.dirty='⚡'

if has('nvim')
lua <<EOF
require('modules.core')
require('modules.lsp')
EOF
endif
