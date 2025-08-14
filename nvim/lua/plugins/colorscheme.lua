return {
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
    "EdenEast/nightfox.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      options = {
        dim_inactive = true, --  dims inactive windows
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = "catppuccin",
      -- colorscheme = "nightfox",
    },
  },
}
