-- ─── Transparent TokyoNight ─────────────────────────────────────
-- Enable built-in transparency so Ghostty's background-opacity shows through
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
