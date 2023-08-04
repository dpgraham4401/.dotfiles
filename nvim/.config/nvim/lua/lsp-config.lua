-- File containing setup for language servers

-- Golang
require'lspconfig'.gopls.setup{
cmd = {"gopls", "serve"},
filetypes = {"go", "gomod"},
settings = {
  gopls = {
	analyses = {
	  unusedparams = true,
	},
	staticcheck = true,
  },
},
}

-- automatically sort go module imports
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
  end
})

-- TypeScript
require'lspconfig'.tsserver.setup{
  filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" }
}

-- Terraform
require'lspconfig'.terraformls.setup{}
-- on save, format terraform
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {'*.tfvars', '*.tf'},
  callback = function()
    vim.lsp.buf.format()
  end
})

