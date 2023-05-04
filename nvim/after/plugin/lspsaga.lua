local saga = require "lspsaga"
local keymap = vim.keymap.set
local opts = { silent = true }

saga.setup {
  symbol_in_winbar = {
    enable = false,
  },
  ui = {
    theme = "round",
    border = "rounded",
    winblend = 10,
  },
}

-- Lsp finder
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)

-- Code action
keymap({ "n", "v" }, "<space>ca", "<cmd>Lspsaga code_action<CR>", opts)

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", opts)

-- Definition preview
-- support tagstack C-t jump back
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)

-- Show line diagnostics
--keymap("n", "<space>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Show cursor diagnostic
--keymap("n", "<space>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)

-- Diagnsotic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev { severity = vim.diagnostic.severity.ERROR }
end, opts)
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next { severity = vim.diagnostic.severity.ERROR }
end, opts)

-- Outline
keymap("n", "<space>o", "<cmd>Lspsaga outline<CR>", opts)

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- Callhierarchy
keymap("n", "<space>ci", "<cmd>Lspsaga incoming_calls<CR>", opts)
keymap("n", "<space>co", "<cmd>Lspsaga outgoing_calls<CR>", opts)
