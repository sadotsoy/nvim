-- Format lua file
-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format and FormatWrite commands
require('formatter').setup {
  -- All formatter configurations are opt-in
  filetype = {
    javascript = {
      require('formatter.filetypes.javascript').prettier,
    },
    javascriptreact = {
      require('formatter.filetypes.javascriptreact').prettier,
    },
    typescript = {
      require('formatter.filetypes.typescript').prettier,
    },
    typescriptreact = {
      require('formatter.filetypes.typescriptreact').prettier,
    },
    json = {
      require('formatter.filetypes.json').prettier,
    },
    css = {
      require('formatter.filetypes.css').prettier,
    },
    html = {
      require('formatter.filetypes.html').prettier,
    },
  },
}
