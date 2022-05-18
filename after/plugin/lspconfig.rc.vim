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
    "typescript", "typescriptreact", "typescript.tsx"
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

-- lsp diagnosticls setup
lspconfig.diagnosticls.setup {
  on_attach = on_attach,
  filetypes = {
    'javascript', 
    'javascriptreact', 
    'typescript', 
    'typescriptreact', 
    'json',
    'css', 
    'markdown', 
    'scss',
    'go' 
    },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint_d',
        rootPatterns = { '.git' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
        sourceName = 'eslint_d',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '[eslint] ${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning'
        }
      },
    },
    filetypes = {
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      typescriptreact = 'eslint',
    },
    formatters = {
      eslint_d = {
        command = 'eslint_d',
        rootPatterns = { '.git' },
        args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
        rootPatterns = { '.git' },
      },
      prettier = {
        command = 'prettier_d_slim',
        rootPatterns = { '.git' },
        -- requiredFiles: { 'prettier.config.js' },
        args = { '--stdin', '--stdin-filepath', '%filename' }
      }
    },
    formatFiletypes = {
      css = 'prettier',
      go = 'prettier',
      javascript = 'prettier',
      javascriptreact = 'prettier',
      json = 'prettier',
      json = 'prettier',
      markdonw = 'prettier',
      scss = 'prettier',
      typescript = 'prettier',
      typescriptreact = 'prettier',
    }
  }
}
EOF
