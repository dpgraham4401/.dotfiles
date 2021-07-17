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
" set colorcolumn=110
" highlight LineNr ctermfg=darkgray
syntax enable
filetype plugin indent on

" neovim additions
set clipboard=unnamedplus

" ex sudo in vim 
cmap w!! w !sudo tee > /dev/null %

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
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'tmsvg/pear-tree'
Plug 'dense-analysis/ale'
" Plug 'sheerun/vim-polyglot'
Plug 'francoiscabrol/ranger.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Visual block
noremap X <c-v>

nnoremap ; :

" save file
map <C-s> :w<CR>

" exit
map <C-q> :q<CR>

" cycle buffers
:nnoremap <up> :bnext<CR>
:nnoremap <down> :bprevious<CR>

" move around splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Tree explorer
let g:ranger_map_keys = 0
map <C-n> :Ranger<CR> 

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

" Word Processor mode
func! WordProcessorMode()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en_us
	setlocal noexpandtab
endfu
com! WP call WordProcessorMode()

" Python formatting
au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set autoindent

au BufNewFile,BufRead *.{js,json}
    \ set softtabstop=2 |
    \ set expandtab |
    \ set shiftwidth=2 |
    \ set tabstop=2

 let g:ale_linters = {'javascript': ['eslint']}
" let g:ale_completion_enabled = 1

" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

lua <<EOF

-- nvim_lsp object
local nvim_lsp = require'lspconfig'

-- function to attach completion when setting up lsp
local on_attach = function(client)
    require'completion'.on_attach(client)
end

local servers = {'pyright', 'rust_analyzer', 'tsserver'}
for _, lsp in pairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
  }
end

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
EOF

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <Tab> as trigger keys
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)

set updatetime=300
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
