local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = false }

map('n', '<leader>t', '<cmd>lua require("telescope.builtin").find_files()<CR>', options)
map('n', '<leader>tg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', options)
map('n', '<leader>tb', '<cmd>lua require("telescope.builtin").buffers()<CR>', options)
map('n', '<leader>th', '<cmd>lua require("telescope.builtin").help_tags()<CR>', options)

map('n', '<leader>ss', '<cmd>lua require("telescope.builtin").spell_suggest()<CR>', options)
map('n', '<leader>cmd', '<cmd>lua require("telescope.builtin").commands()<CR>', options)

map('n', '<leader>a', '<cmd>lua require("telescope.builtin").lsp_code_actions()<CR>', options)
map('n', '<leader>ra', '<cmd>lua require("telescope.builtin").lsp_range_code_actions()<CR>', options)

map('n', 'gd', '<cmd>lua require("telescope.builtin").lsp_definitions()<CR>', options)
map('n', 'gi', '<cmd>lua require("telescope.builtin").lsp_implementations()<CR>', options)

local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}
