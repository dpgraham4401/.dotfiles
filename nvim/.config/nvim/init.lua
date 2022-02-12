-- uncomment if installing or updating packer
-------------------------------------------------------------
-- require('install_packer')
----------------------------------------------------------
vim.o.completeopt = 'menuone,noselect'
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
vim.g.mapleader = " "
-- vim.g.python3_host_prog = '/usr/bin/python'
vim.g.colors_name = 'onehalfdark'


-- plugins
require('plugins')
require('plugins.cmp')
-- require('plugins.ale')
require('plugins.lsp')
require('plugins.treesitter')
require('plugins.lightline')
require('plugins.trouble')
require('plugins.autopairs')
require('plugins.terminal')
require('bufferline').setup{}

-- Custom modules
require('modules.utils')
require('modules.term')

vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]
vim.cmd [[colorscheme onehalfdark]]

-- Keybindings 
----------------------------------------------------------
local key_mapper = require('modules.utils').key_mapper

key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'kj', '<ESC>')
key_mapper('n', '<C-s>', ':w<CR>')
key_mapper('n', '<C-q>', '<cmd>lua require("modules.utils").close_buffer()<CR>')
key_mapper('n', '<S-j>', ':bprevious<CR>')
key_mapper('n', '<S-k>', ':bnext<CR>')
key_mapper('n', '<C-l>', ':noh<CR>')
key_mapper('n', '<A-k>', ':wincmd k<CR>')
key_mapper('n', '<A-j>', ':wincmd j<CR>')
key_mapper('n', '<A-h>', ':wincmd h<CR>')
key_mapper('n', '<A-l>', ':wincmd l<CR>')
key_mapper('n', '<C-_>', ':Commentary<CR>')

-- plugin mapping
key_mapper('n', '<Leader>t', ':TroubleToggle<CR>')
key_mapper('n', '<Leader>f', ':Files<CR>')
key_mapper('n', '<Leader>n', ':NERDTreeToggle<CR>')
key_mapper('n', "<Leader>'", ':ToggleTerm<CR>')

-- Notes on Plugin functionality
----------------------------------------------------------
-- I generally reserver <Leader> for plugins that bring up windows
-- or something like that
--
-- Trouble --
-- <Leader>t toggle diagnostics
--
-- cmp-nvim --
-- keybinding for using completions are set in cmp.lua
-- in insert mode <C-n> open completions and go to next (<C-p> for previous)
-- <tab> go to next, <enter> select current
--
-- Kommentary --
-- gcc to comment
-- gc<motion> to toggle comment 
--
--ToggleTerm
-- leader + single quote "'" to toggle terminal
