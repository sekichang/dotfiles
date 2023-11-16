require("Comment").setup()

vim.api.nvim_set_keymap("n", "<C-/>", "<Cmd>lua require('Comment.api').toggle.linewise.current()<CR>", {})
vim.api.nvim_set_keymap("v", "<C-/>", "gc", {})
