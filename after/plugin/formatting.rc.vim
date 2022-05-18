" Formatting
" sadotsoy

lua << EOF
-- Formatting on saved
-- if client.resolved_capabilities.document_formatting then
--  vim.api.nvim_command [[augroup Format]]
-- vim.api.nvim_command [[autocmd! * <buffer>]]
-- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting())]]
-- vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
-- vim.api.nvim_command [[augroup END]]
-- end
EOF
