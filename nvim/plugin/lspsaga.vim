lua << EOF
local saga = require 'lspsaga'
local keymap = vim.keymap.set

-- use custom config
saga.init_lsp_saga({
  code_action_icon = "",
})

opts = { silent = true }

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
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)

-- Only jump to error
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

-- Outline
keymap("n","<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- Signature help
keymap("n", "gs", "<Cmd>Lspsaga signature_help<CR>", opts)

local action = require("lspsaga.action")
-- scroll in hover doc or  definition preview window
vim.keymap.set("n", "<C-f>", function()
    action.smart_scroll_with_saga(1)
end, { silent = true })
-- scroll in hover doc or  definition preview window
vim.keymap.set("n", "<C-b>", function()
    action.smart_scroll_with_saga(-1)
end, { silent = true })

EOF
