return {
  -- Add nvim-material-icon (replaces nvim-web-devicons with Material-style icons)
  {
    "DaikyXendo/nvim-material-icon",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-web-devicons").setup({
        color_icons = true,
        default = true,
      })
    end,
  },

  -- Disable mini.icons so it doesn't conflict
  { "nvim-mini/mini.icons", enabled = false },
}
