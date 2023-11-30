return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
  },
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = { cursorline = true },
      })
    end,
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>" },
    },
    opts = {
      options = {
        --     -- mode = "tabs",
        always_show_bufferline = true,
        --     -- separator_style = "slant",
        --     show_buffer_close_icons = false,
        --     show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        -- theme = "solarized_dark",
      },
    },
  },
}
