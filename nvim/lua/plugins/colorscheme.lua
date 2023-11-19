return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },

  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      options = {
        dim_inactive = true, -- Non focused panes set to alternative background
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "nightfox",
    },
  },
}
