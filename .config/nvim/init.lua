-- uncomment if installing or updating packer
----------------------------------------------------------
-- local vim = vim
-- local execute = vim.api.nvim_command
-- local fn = vim.fn
-- -- ensure that packer is installed
-- local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
--     execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
--     execute 'packadd packer.nvim'
-- end
-- vim.cmd('packadd packer.nvim')
-- local packer = require'packer'
-- local util = require'packer.util'
-- packer.init({
--   package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
-- })
-- --- startup and add configure plugins
-- packer.startup(function()
--   local use = use
--   -- add you plugins here like:
--   -- use 'neovim/nvim-lspconfig'
--   end
-- )
----------------------------------------------------------
vim.o.completeopt = 'menu,menuone,noselect,noinsert'
vim.o.mouse = 'nv'
vim.o.number = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.clipboard = 'unnamedplus'
vim.o.spell = false
vim.o.spelllang = 'en_us'
vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.showcmd = true
vim.o.signcolumn = 'number'
vim.o.swapfile = false
vim.o.foldenable = false
vim.o.hidden = true

-- vim.g.python_host_prog = '/Users/kylemccarthy/.pyenv/versions/nvim2/bin/python'
-- vim.g.python3_host_prog = '/Users/kylemccarthy/.pyenv/versions/nvim3/bin/python'

require('plugins')
require('plugins.cmp')
require('plugins.lsp')
require('plugins.treesitter')
require('plugins.lightline')
require('plugins.trouble')
require('plugins.nerdtree')
require('plugins.autopairs')
require('plugins.kommentary')
require('plugins.telescope')

vim.cmd [[colorscheme onedark]]

vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]

require('bufferline').setup{}

vim.cmd([[
  autocmd FileType lua setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType typescriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
]])

vim.api.nvim_set_keymap('n', '<C-l>', ':noh<CR>', { noremap = true, nowait = true, silent = true })


-- Key mappings
----------------------------------------------------------
local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

key_mapper('i', 'jk', '<ESC>')
key_mapper('n', '<C-s>', ':w<CR>')
key_mapper('n', '<C-q>', ':q<CR>')
key_mapper('n', '<Tab>', ':bprevious<CR>')
key_mapper('v', '<C-c>', ':y<CR>')

