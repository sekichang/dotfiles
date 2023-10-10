local hooks = require("ibl.hooks")
hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)

require("ibl").overwrite({

  -- 縦線を除外するプラグイン等
  exclude = {
    filetypes = {
      "help",
      "dashboard",
      "dashpreview",
      --"NvimTree",
      --"neo-tree",
      --"vista",
      "sagahover",
      "sagasignature",
      "lazy",
      "log",
      "lspsagafinder",
      "lspinfo",
      --"dapui_scopes",
      --"dapui_breakpoints",
      --"dapui_stacks",
      --"dapui_watches",
      --"dap-repl",
      "toggleterm",
      "alpha",
      --"coc-explorer",
    },
  },
})
