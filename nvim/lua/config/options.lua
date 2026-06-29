-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false -- disable auto-format on save (use Space c f to format manually)

-- Keep original syntax colors on unused code (no dimming)
-- Clear the highlight for "unnecessary" so unused vars keep their normal color
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {})
    vim.api.nvim_set_hl(0, "@lsp.mod.unnecessary", {})
  end,
})
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", {})
vim.api.nvim_set_hl(0, "@lsp.mod.unnecessary", {})
