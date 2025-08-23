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
    dependencies = { "folke/tokyonight.nvim" },
    priority = 1200,
    config = function()
      local colors = require("tokyonight.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = colors.dark3 }, --, guifg = colors.black },
            --     InclineNormalNC = { guifg = colors.dark3, guibg = colors.black },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon = require("nvim-web-devicons").get_icon(filename)
          return { { icon }, { " " }, { filename } }
        end,
      })
    end,
  },

  -- Bufferline
  -- {
  --   "akinsho/bufferline.nvim",
  --   keys = {
  --     { "<Tab>", "<Cmd>BufferLineCycleNext<CR>" },
  --     { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>" },
  --   },
  --   opts = {
  --     options = {
  --     -- mode = "tabs",
  -- always_show_bufferline = true,
  --     -- separator_style = "slant",
  --     show_buffer_close_icons = false,
  --     show_close_icon = false,
  -- },
  --   },
  -- },

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

  -- markdown
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
        border = "thick",
      },
      heading = {
        sign = false,
        icons = {},
      },
      checkbox = {
        enabled = true,
      },
    },
  },
}
