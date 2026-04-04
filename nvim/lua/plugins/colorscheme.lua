return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm",
      dim_inactive = true, -- dims inactive windows
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
    },
  },
  {
    "catppuccin/nvim",
    opts = {
      transparent_background = true,
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
      integrations = {
        bufferline = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
