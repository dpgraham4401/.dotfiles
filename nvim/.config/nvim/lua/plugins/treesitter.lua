require('nvim-treesitter.configs').setup({
  ensure_installed = 'maintained',
  highlight = { enable = true },
  -- incremental_selection = { enable = true },
  -- indent = { enable = true },
  -- autopairs = { enable = true },
  -- autotag = { enable = true },
  -- textsubjects = { enable = true },
  -- context_commentstring = { enable = true }
})

require('spellsitter').setup()
