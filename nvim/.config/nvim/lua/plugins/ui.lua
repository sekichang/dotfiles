return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      local focused = true
      vim.api.nvim_create_autocmd("FocusGained", {
        callback = function()
          focused = true
        end,
      })
      vim.api.nvim_create_autocmd("FocusLost", {
        callback = function()
          focused = false
        end,
      })
      table.insert(opts.routes, 1, {
        filter = {
          cond = function()
            return not focused
          end,
        },
        view = "notify_send",
        opts = { stop = false },
      })

      opts.commands = {
        all = {
          -- options for the message history that you get with `:Noice`
          view = "split",
          opts = { enter = true, format = "details" },
          filter = {},
        },
      }

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function(event)
          vim.schedule(function()
            require("noice.text.markdown").keys(event.buf)
          end)
        end,
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  -- Bufferline
  -- {
  --   "akinsho/bufferline.nvim",
  --   keys = {
  -- { "<Tab>", "<Cmd>BufferLineCycleNext<CR>" },
  -- { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>" },
  -- },
  -- opts = {
  --   options = {
  --     -- mode = "tabs",
  --     -- always_show_bufferline = true,
  --     -- separator_style = "slant",
  --     -- show_buffer_close_icons = false,
  --     -- show_close_icon = false,
  --   },
  --   },
  -- },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    -- event = "VeryLazy",
    -- config = function(_, opts)
    --   opts.options = opts.options or {}
    --   opts.options.theme = "catppuccin-mocha"
    --   -- opts.options.theme = "tokyonight"
    --   require("lualine").setup(opts)
    -- end,
    enabled = false,
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

  {
    "mvllow/modes.nvim",
    event = "VeryLazy",
    opts = {
      colors = {
        copy = "",
        delete = "",
        change = "",
        format = "",
        replace = "",
        select = "",
        insert = "#a6e3a1", -- Green
        visual = "#cba4f7", -- Mauve
      },
      line_opacity = {
        insert = 0.3,
        visual = 0.5,
      },
    },
  },

  {
    "b0o/incline.nvim",
    event = "VeryLazy",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- inactive ウィンドウは非表示にせず、highlight で存在感を落とす
      hide = {
        cursorline = false,
        focused_win = false,
        only_win = false, -- ウィンドウが1枚だけのときは非表示
      },
      highlight = {
        groups = {
          -- active: Catppuccin Mocha の Surface0 背景
          InclineNormal = { guibg = "#313244", guifg = "#cdd6f4" },
          -- inactive: 背景を暗くして前景も落とす
          InclineNormalNC = { guibg = "#1e1e2e", guifg = "#45475a" },
        },
      },
      window = {
        margin = { vertical = 1, horizontal = 0 },
        padding = { left = 1, right = 1 },
      },
      render = function(props)
        -- ファイル名
        local bufname = vim.api.nvim_buf_get_name(props.buf)
        local filename = vim.fn.fnamemodify(bufname, ":t")
        if filename == "" then
          filename = "[No Name]"
        end

        -- ファイルタイプアイコン
        local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)

        -- 編集中は bold+italic
        local modified = vim.bo[props.buf].modified

        -- inactive 時は前景色を muted にする
        local fg_filename = props.focused and "#cdd6f4" or "#45475a"
        local fg_icon = props.focused and (ft_color or "#cdd6f4") or "#45475a"

        -- Git diff (gitsigns)
        local function get_git_diff()
          local icons = { added = " ", changed = " ", removed = " " }
          -- Catppuccin Mocha: green / yellow / red (inactive 時は muted)
          local colors = props.focused and { added = "#a6e3a1", changed = "#f9e2af", removed = "#f38ba8" }
            or { added = "#45475a", changed = "#45475a", removed = "#45475a" }
          local signs = vim.b[props.buf].gitsigns_status_dict
          if not signs then
            return {}
          end
          local labels = {}
          for _, name in ipairs({ "added", "changed", "removed" }) do
            local n = tonumber(signs[name])
            if n and n > 0 then
              table.insert(labels, { icons[name] .. n .. " ", guifg = colors[name] })
            end
          end
          if #labels > 0 then
            table.insert(labels, { "│ ", guifg = "#45475a" })
          end
          return labels
        end

        -- LSP Diagnostics
        local function get_diagnostics()
          local diag_icons = {
            { sev = vim.diagnostic.severity.ERROR, icon = " ", color_active = "#f38ba8" },
            { sev = vim.diagnostic.severity.WARN, icon = " ", color_active = "#f9e2af" },
            { sev = vim.diagnostic.severity.INFO, icon = " ", color_active = "#89b4fa" },
            { sev = vim.diagnostic.severity.HINT, icon = " ", color_active = "#94e2d5" },
          }
          local labels = {}
          for _, d in ipairs(diag_icons) do
            local n = #vim.diagnostic.get(props.buf, { severity = d.sev })
            if n > 0 then
              local color = props.focused and d.color_active or "#45475a"
              table.insert(labels, { d.icon .. n .. " ", guifg = color })
            end
          end
          if #labels > 0 then
            table.insert(labels, { "│ ", guifg = "#45475a" })
          end
          return labels
        end

        return {
          get_diagnostics(),
          get_git_diff(),
          ft_icon and { ft_icon .. " ", guifg = fg_icon } or "",
          {
            filename,
            gui = modified and "bold,italic" or "bold",
            guifg = fg_filename,
          },
          modified and { " ●", guifg = props.focused and "#f9e2af" or "#45475a" } or "",
        }
      end,
    },
  },
}
