local exec = vim.api.nvim_exec

-- don't auto commenting new lines
exec([[au BufEnter * set fo-=c fo-=r fo-=o]], false)
