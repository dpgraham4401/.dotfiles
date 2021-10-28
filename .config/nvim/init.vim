colorscheme desert
set tabstop=4
set shiftwidth=4
set softtabstop=4
set mouse=a
set hidden
set nowrap
set exrc
set secure
set nohlsearch 
set number
set relativenumber
set belloff=all

" Keybindings
noremap X <c-v>
nnoremap ; :
map <C-s> :w<CR>
map <C-q> :q<CR>
:nnoremap <up> :bnext<CR>
:nnoremap <down> :bprevious<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
let g:ranger_map_keys = 0
map <C-n> :Ranger<CR> 
cmap w!! w !sudo tee > /dev/null %

" move around in insert mode 
inoremap <c-l> <Right>
inoremap <c-h> <Left>
inoremap <c-k> <Up>
inoremap <c-j> <Down>

au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set autoindent

au BufNewFile,BufRead *.{mjs,js,json}
    \ set softtabstop=2 |
    \ set expandtab |
    \ set shiftwidth=2 |
    \ set tabstop=2

" neovim specific
set clipboard=unnamedplus
" Plugins
call plug#begin()
Plug 'tmsvg/pear-tree'
Plug 'francoiscabrol/ranger.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_y = ""
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
