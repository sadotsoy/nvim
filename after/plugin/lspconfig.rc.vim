" LSP CONFIG
" sadotsoy

if !exists('g:lspconfig')
  finish
endif

lua << EOF
local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Setups.
-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').update_capabilities(
  protocol.make_client_capabilities()
)


-- flow setup
lspconfig.flow.setup {
  on_attach = on_attach,
  capabilities = capabilities
  }

-- tsserver setup
lspconfig.tsserver.setup {
  on_attach = on_attach,
  filestypes = {
    "typescript", "typescriptreact", "typescript.tsx",
    "javascript", "javascriptreact"
    },
  capabilities = capabilities
  }

-- Eslint setup
lspconfig.eslint.setup {
  on_attach = on_attach,
  filestypes = {
    "typescript", "typescriptreact", "typescript.tsx",
    "javascript", "javascriptreact"
    },
  capabilities = capabilities
  }

-- lsp-installer setup
require("nvim-lsp-installer").setup {}

-- telescope setup
require('telescope').setup {
extensions = {
  fzf = {
    fuzzy = true
    }
  }
}
require('telescope').load_extension('fzf')

-- Emmet setup
lspconfig.emmet_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

EOF
