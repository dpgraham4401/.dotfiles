local lsp_installer = require("nvim-lsp-installer")

local server_options = {}

server_options.tsserver = function(opts)
  opts.on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false

    local ts_utils = require("nvim-lsp-ts-utils")
    ts_utils.setup{}

    ts_utils.setup_client(client)

    vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", { silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", { silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", { silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", { silent = true }) 
  end
end

server_options.eslint = function(opts)
  opts.on_attach = function (client, bufnr)
    client.resolved_capabilities.document_formatting = true
  end

  opts.settings = {
    format = { enable = true },
  }

  opts.flags = {
    debounce_text_changes = 250,
  }
end

local setup_rust_analyzer = function(server)
  local opts = {
    tools = {
      hover_actions = {
        auto_focus = true
      },
      inlay_hints = {
        only_current_line = true,
        only_current_line_autocmd = "CursorMoved"
      }
    },
    server = {
      cmd = server._default_options.cmd,
      settings = {
        ["rust-analyzer"] = {
          --[[ checkOnSave = {
            allFeatures = true,
            overrideCommand = {
              "cargo",
              "clippy",
              "--workspace",
              "--message-format=json",
              "--all-targets",
              "--all-features",
            }
          }, ]]
          rustfmt = {
            extraArgs = { "+nightly" }
          }
        }
      }
    },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }

  require('rust-tools').setup(opts)
end

-- on ready callback for the installer
lsp_installer.on_server_ready(function(server)
  local opts = {}

  -- let rust tools handle the config
  if server.name == "rust_analyzer" then
    setup_rust_analyzer(server)
    return
  end

  opts.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

  if server_options[server.name] ~= nil then
    server_options[server.name](opts)
  end

  server:setup(opts)
  -- vim.cmd [[ do User LspAttachBuffers ]]
end)

-- commands

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = false }

map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', options)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', options)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', options)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
map('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', options)
map('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', options)
map('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ focusable = false })<CR>', options)


-- cosmetics
vim.fn.sign_define('LspDiagnosticsSignError', { text = '', texthl = 'LspDiagnosticsDefaultError' }) -- error
vim.fn.sign_define('LspDiagnosticsSignWarning', { text = '', texthl = 'LspDiagnosticsDefaultWarning' }) -- warning
vim.fn.sign_define('LspDiagnosticsSignHint', { text = '', texthl = 'LspDiagnosticsDefaultHint' }) -- hint
vim.fn.sign_define('LspDiagnosticsSignInformation', { text = '', texthl = 'LspDiagnosticsDefaultInformation' }) -- information

vim.api.nvim_command[[command! -nargs=0 Format :lua vim.lsp.buf.formatting_sync(nil, 5000)]]
vim.api.nvim_command[[command! -nargs=0 Fmt :lua vim.lsp.buf.formatting_sync(nil, 5000)]]
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting(nil, 5000)<CR>', { noremap = true, silent = true, nowait = true })

