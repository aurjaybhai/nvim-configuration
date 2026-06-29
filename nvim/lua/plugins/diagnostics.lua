-- ─── Diagnostics: VS Code style ─────────────────────────────────
-- Hide inline diagnostic messages from the editor
-- Errors/warnings still show as underlines + gutter signs
-- Use Space+x+x to open the problems panel (like VS Code's bottom panel)
return {
  {
    "LazyVim/LazyVim",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
    init = function()
      -- Deferred call ensures this runs AFTER LazyVim finishes configuring
      vim.defer_fn(function()
        vim.diagnostic.config({ virtual_text = false })
      end, 200)

      -- Also re-apply whenever LSP attaches to a buffer
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function()
          vim.diagnostic.config({ virtual_text = false })
        end,
      })
    end,
  },
}
