-- uncomment if installing or updating packer
-------------------------------------------------------------
-- require('install_packer')
----------------------------------------------------------
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.mouse = 'a'
vim.o.autoindent = true

vim.o.number = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.clipboard = 'unnamedplus'
vim.o.spell = false
vim.o.spelllang = 'en_us'
vim.o.wrap = false
vim.o.termguicolors = true
vim.o.showcmd = true
vim.o.swapfile = false
vim.o.hidden = true
-- vim.g.python3_host_prog = '/usr/bin/python'
-- vim.g.colors_name = 'onehalfdark'

require('plugins')
require('plugins.cmp')
require('plugins.lsp')
require('plugins.treesitter')
require('plugins.lightline')
require('plugins.trouble')
-- require('plugins.nerdtree')
require('plugins.autopairs')
require('plugins.kommentary')
require('plugins.telescope')

require('modules.utils')

vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]
vim.cmd [[colorscheme onehalfdark]]

require('bufferline').setup{}

-- vim.cmd([[
--   autocmd FileType lua setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
--   au BufWritePost <buffer> lua require('lint').try_lint()
-- ]])


-- Keybindings 
----------------------------------------------------------
local key_mapper = require('modules.utils').key_mapper

key_mapper('i', 'jk', '<ESC>')
key_mapper('n', '<C-s>', ':w<CR>')
key_mapper('n', '<C-q>', ':bd<CR>')
-- key_mapper('n', '<CS-q>', ':q<CR>')
key_mapper('n', '<C-q>', '<cmd>lua require("modules.utils").close_buffer()<CR>')
key_mapper('n', '<S-j>', ':bprevious<CR>')
key_mapper('n', '<S-k>', ':bnext<CR>')
key_mapper('v', '<C-c>', ':y<CR>')
key_mapper('n', '<C-n>', ':Ranger<CR>')
key_mapper('n', '<C-t>', ':TroubleToggle<CR>')
key_mapper('n', '<C-l>', ':noh<CR>')
key_mapper('n', '<C-Up>', ':wincmd k<CR>')
key_mapper('n', '<C-Down>', ':wincmd j<CR>')
key_mapper('n', '<C-Left>', ':wincmd h<CR>')
key_mapper('n', '<C-Rigt>', ':wincmd l<CR>')

-- Notes on Plugin functionality
----------------------------------------------------------
-- Trouble --
-- <C-t> toggle diagnostics
--
-- cmp-nvim --
-- keybinding for using completions are set in cmp.lua
-- <C-n> open completions and go to next (<C-p> for previous)
--
-- Kommentary --
-- gcc to comment
-- gc<motion> to toggle comment 
