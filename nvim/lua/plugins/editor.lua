return {
  -- Incremental rename
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  {
    "monaqa/dial.nvim",
    -- stylua: ignore
    keys = {
      { "<C-a>", function() return require("dial.map").inc_normal() end, expr = true, desc = "Increment" },
      { "<C-x>", function() return require("dial.map").dec_normal() end, expr = true, desc = "Decrement" },
    },
    config = function()
      local augend = require("dial.augend")
      require("dial.config").augends:register_group({
        default = {
          augend.integer.alias.decimal,
          augend.integer.alias.hex,
          augend.date.alias["%Y/%m/%d"],
          augend.constant.alias.bool,
          augend.semver.alias.semver,
          augend.constant.new({ elements = { "let", "const" } }),
        },
      })
    end,
  },
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        search = {
          enabled = true,
        },
        -- char = {
        --   jump_labels = true,
        --   multi_line = false,
        -- },
      },
    },
  },
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>e", "<cmd>Yazi<cr>", desc = "Open Yazi" },
    },
  },

  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    keys = {
      { "<leader>o", "<cmd>Oil<cr>", desc = "Open Oil" },
    },
    opts = {},
  },
}
