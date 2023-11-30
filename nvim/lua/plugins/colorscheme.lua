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
  --
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = true,
  --     }
  --   end,
  -- },
  --
  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = {
  --     options = {
  --       dim_inactive = true, --  dims inactive windows
  --     },
  --   },
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
