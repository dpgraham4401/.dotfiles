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
set belloff=all
set completeopt-=preview
set completeopt=menuone,noinsert,noselect
set shortmess+=c
" set updatetime=300
syntax enable
filetype plugin indent on

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

" Word Processor mode
func! WordProcessorMode()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en_us
	setlocal noexpandtab
endfu
com! WP call WordProcessorMode()

au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set autoindent

au BufNewFile,BufRead *.{js,json}
    \ set softtabstop=2 |
    \ set expandtab |
    \ set shiftwidth=2 |
    \ set tabstop=2

" neovim specific
set clipboard=unnamedplus

" Ask to make directory if does not exist
augroup vimrc-auto-mkdir
    autocmd!
    autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
    function! s:auto_mkdir(dir, force)
        if !isdirectory(a:dir)
            \ && (a:force
            \ || input("'" . a:dir . "' does not exist. Create? [y/n]") =~? '^y\%[es]$')

            call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
        endif
    endfunction
augroup END

" Plugins
call plug#begin()
" Plug 'valloric/YouCompleteMe'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'
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

" Autocompletion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)
" let g:completion_enable_auto_popup = 0
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

lua <<EOF
require('lsp-settings')
EOF


