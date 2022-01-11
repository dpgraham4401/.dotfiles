vim.api.nvim_set_var('lightline', { 
  colorscheme = 'one',
  component_expand = {
    lsp_warnings = 'lightline#lsp#warnings',
    lsp_errors = 'lightline#lsp#errors',
    lsp_info = 'lightline#lsp#info',
    lsp_hints = 'lightline#lsp#hints',
    lsp_ok = 'lightline#lsp#ok',
    status = 'lightline#lsp#status'
  },
  component_type = {
    lsp_warnings = 'warning',
    lsp_errors = 'error',
    lsp_info = 'info',
    lsp_hints = 'hints',
    lsp_ok = 'left',
  },
  active = {
    right = { { 'lineinfo', 'percent' }, {'lsp_info', 'lsp_hints', 'lsp_errors', 'lsp_warnings', 'lsp_ok', 'lsp_status'} }
  }
})
