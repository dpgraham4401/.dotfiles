return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- better treesitter-based syntax highlighting 

  -- fzf
  use { 'junegunn/fzf' } -- command line fuzzy finder
  use { 'junegunn/fzf.vim' } -- collection of fzf commands to find things like files
  use { 'ojroques/nvim-lspfuzzy' }

  -- ui
  use { 'kyazdani42/nvim-web-devicons' } -- add glyphs
  use ( 'rafi/awesome-vim-colorschemes') -- collection of color schemes
  use { 'akinsho/nvim-bufferline.lua' } --  add tabs to top of buffer
  use { 'itchyny/lightline.vim' } -- line at bottom of vim with info
  use { 'folke/trouble.nvim' } -- get diagnostic info for current buffer
  use { 'preservim/nerdtree' }
  use { 'airblade/vim-gitgutter' }
  use { 'mhinz/vim-startify' }

  -- lsp
  use { 'neovim/nvim-lspconfig' } -- part of base native LSP setup
  use { 'williamboman/nvim-lsp-installer' } -- easy install language servers
  use { 'nvim-lua/lsp-status.nvim' }
  use { 'hrsh7th/cmp-vsnip', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/cmp-path', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-buffer', requires = 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp' }
  use { 'onsails/lspkind-nvim' } -- add vs-code like glyphs/pictograms to LSP
  use { 'L3MON4D3/LuaSnip' }
  use { 'dense-analysis/ale'}
  
  -- Go
  use { 'fatih/vim-go' }

  -- utils
  use { 'nvim-lua/plenary.nvim' } -- required for telescope
  use { 'windwp/nvim-autopairs' }
  use { 'josa42/nvim-lightline-lsp', requires = 'itchyny/lightline.vim' }
  use { 'RRethy/nvim-treesitter-textsubjects' }
  use { 'lewis6991/spellsitter.nvim' }
  use { 'tpope/vim-abolish' } -- better substitution
  use { 'tpope/vim-surround' } -- change inner word surrounding w/ cs<current><replace>
  use { 'tpope/vim-commentary' } -- see :help Commentary
  use { 'jeffkreeftmeijer/vim-numbertoggle' } -- when buffer not in focus, use absolute number lines
  use({
  	"akinsho/nvim-toggleterm.lua",
  	config = function()
  		require("plugins.terminal").setup()
  	end,
  })

  -- html
  use { 'mattn/emmet-vim' }
end)
