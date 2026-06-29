-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Fix Ctrl+Space for autocompletion in terminal
-- In terminals, Ctrl+Space sends <C-@> which Neovim treats as "exit insert mode"
-- This remaps it to trigger autocomplete instead
vim.keymap.set("i", "<C-@>", function()
  local cmp = require("cmp")
  if cmp.visible() then
    cmp.close()
  else
    cmp.complete()
  end
end, { desc = "Toggle autocomplete" })

-- Ctrl+L to clear terminal (pass through to shell)
vim.keymap.set("t", "<C-l>", "<C-l>", { desc = "Clear terminal" })

