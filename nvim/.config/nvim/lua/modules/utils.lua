-- .config/nvim/lua/modules/utils.lua

local M ={}


function M.yo_momma()
  print("yo momma")
  print("is so stupid")
end


-- function M.close_buffer()


function M.key_mapper(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

return M
