local saga = require "lspsaga"
local keymap = vim.keymap.set
local diagnostic = vim.diagnostic

-- use custom config
saga.init_lsp_saga {
  code_action_icon = "",
}

local opts = { silent = true }

-- Lsp finder
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)

-- Code action
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
keymap("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", opts)

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", opts)

-- Definition preview
keymap("n", "gd", "<cmd>Lspsaga preview_definition<CR>", opts)

-- Show line diagnostics
keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Show cursor diagnostic
--keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)

-- Diagnsotic jump
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
