return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- fzf
  use { 'junegunn/fzf' }
  use { 'junegunn/fzf.vim' }
  use { 'ojroques/nvim-lspfuzzy' }
  use { 'simrat39/rust-tools.nvim' }

  -- ui
  use { 'francoiscabrol/ranger.vim'}
  use { 'kyazdani42/nvim-web-devicons' }
  use ( 'rafi/awesome-vim-colorschemes')
  -- use { '~/.config/nvim/colors/onedark.nvim' }
  -- use { 'olimorris/onedarkpro.nvim' }
  use { 'akinsho/nvim-bufferline.lua' }
  use { 'itchyny/lightline.vim' }
  use { 'folke/trouble.nvim' }
  -- use { 'preservim/nerdtree' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
  }

  -- lsp
  use { 'neovim/nvim-lspconfig' }
  use { 'williamboman/nvim-lsp-installer' }
  use { 'nvim-lua/lsp-status.nvim' }
  use { 'hrsh7th/cmp-vsnip', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/vim-vsnip' }
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

  -- typescript
  -- use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }
  -- use { 'windwp/nvim-ts-autotag' }
  -- use { 'JoosepAlviste/nvim-ts-context-commentstring' }

  -- utils
  use { 'nvim-lua/plenary.nvim' } -- required for telescope
  use { 'mfussenegger/nvim-lint' }
  use { 'tpope/vim-abolish' } -- better substitution
  use { 'tpope/vim-surround' } -- change inner word surrounding w/ cs<current><replace>
  use { 'b3nj5m1n/kommentary' } -- comment/uncomment w/ "gcc"
  use { 'jeffkreeftmeijer/vim-numbertoggle' }

end)
