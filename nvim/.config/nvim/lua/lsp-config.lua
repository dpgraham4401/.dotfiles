-- File containing setup for language servers

-- Golang
require'lspconfig'.gopls.setup{}

-- TypeScript
require'lspconfig'.tsserver.setup{
  filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" }
}

-- Terraform
require'lspconfig'.terraformls.setup{}

