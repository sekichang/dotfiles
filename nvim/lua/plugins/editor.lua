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
      { "+", function() require("dial.map").manipulate("increment", "normal") end },
      { "-", function() require("dial.map").manipulate("decrement", "normal") end },
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
      label = { uppercase = false },
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
    opts = {
      keymaps = {
        ["<ESC>"] = { "actions.close", mode = "n" },
      },
      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
      },
    },
  },
}
