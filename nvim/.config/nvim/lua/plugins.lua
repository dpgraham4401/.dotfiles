return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- better treesitter-based syntax highlighting 

  -- fzf
  use { 'junegunn/fzf' } -- command line fuzzy finder
  use { 'junegunn/fzf.vim' } -- collection of fzf commands to find things like files
  use { 'ojroques/nvim-lspfuzzy' }
  use { 'simrat39/rust-tools.nvim' }

  -- ui
  use { 'francoiscabrol/ranger.vim'}
  use { 'kyazdani42/nvim-web-devicons' } -- add glyphs
  use ( 'rafi/awesome-vim-colorschemes') -- collection of color schemes
  -- use { '~/.config/nvim/colors/onedark.nvim' }
  -- use { 'olimorris/onedarkpro.nvim' }
  use { 'akinsho/nvim-bufferline.lua' } --  add buffer tabs to top
  use { 'itchyny/lightline.vim' } -- line at bottom of vim with info
  use { 'folke/trouble.nvim' } -- get diagnostic info for current buffer
  -- use { 'preservim/nerdtree' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
  } -- telescope and fzf seem to do the same thing, consider removing

  -- lsp
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/nvim-lsp-installer' } -- easy install language servers
  use { 'nvim-lua/lsp-status.nvim' }
  use { 'hrsh7th/cmp-vsnip', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'L3MON4D3/LuaSnip' }
  use { 'hrsh7th/cmp-path', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-buffer', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp' }
  use { 'onsails/lspkind-nvim' }
  
  use { 'windwp/nvim-autopairs' }
  use { 'josa42/nvim-lightline-lsp', requires = 'itchyny/lightline.vim' }
  use { 'RRethy/nvim-treesitter-textsubjects' }
  use { 'lewis6991/spellsitter.nvim' }

  -- Go
  use { 'fatih/vim-go' }



  -- utils
  use { 'nvim-lua/plenary.nvim' } -- required for telescope
  use { 'mfussenegger/nvim-lint' }
  use { 'tpope/vim-abolish' } -- better substitution
  use { 'tpope/vim-surround' } -- change inner word surrounding w/ cs<current><replace>
  use { 'b3nj5m1n/kommentary' } -- comment/uncomment w/ "gcc"
  use { 'jeffkreeftmeijer/vim-numbertoggle' }

end)
