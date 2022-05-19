local diagConfig = {}

diagConfig.setup = function()
  local conf = {
    virtual_text = false,
    underline = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always"
    },
  }

  -- diagnostic configs
  vim.diagnostic.config(conf)
  vim.o.updatetime = 250
  -- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
end

diagConfig.setup()
