require('nvim-autopairs').setup({
  check_ts = true
})

--[[ require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true -- it will auto insert `(` after select function or method item
}) ]]

local get_rule = require('nvim-autopairs').get_rule

get_rule("'")[1]:with_pair(function ()
  return vim.bo.filetype ~= "rust"
end)

