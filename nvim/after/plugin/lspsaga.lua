local saga = require "lspsaga"
local keymap = vim.keymap.set
local diagnostic = vim.diagnostic

-- use custom config
saga.init_lsp_saga {
  code_action_icon = "",
  rename_action_quit = "<ESC>",
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    tabe = "t",
    quit = "q",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  definition_action_keys = {
    edit = "<CR>",
    vsplit = "s",
    tabe = "t",
    quit = "q",
  },
}

local opts = { silent = true }

-- Lsp finder
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)

-- Code action
keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", opts)

-- Definition preview
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)

-- Show line diagnostics
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Show cursor diagnostic
--keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)

-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev { severity = diagnostic.severity.ERROR }
end, opts)
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next { severity = diagnostic.severity.ERROR }
end, opts)

-- Outline
keymap("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
