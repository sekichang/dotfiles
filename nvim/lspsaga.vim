lua << EOF
local saga = require 'lspsaga'

-- use custom config
saga.init_lsp_saga({
  code_action_icon = "",
})

opts = { silent = true, noremap = true }
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("n", "<space>ca", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("v", "<space>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", opts)
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

vim.keymap.set("n", "gs", require("lspsaga.signaturehelp").signature_help, opts)
vim.keymap.set("n", "gr", require("lspsaga.rename").lsp_rename, opts)
vim.keymap.set("n", "gd", require("lspsaga.definition").preview_definition, opts)

EOF
