require("pounce").setup({
  accept_keys = "JFKDLSAHGNUVRBYTMICEOXWPQZ",
  accept_best_key = "<enter>",
  multi_window = true,
  debug = false,
})

-- vim.keymap.set({ "n", "x" }, "s", "<cmd>Pounce<CR>")
-- vim.keymap.set("o", "gs", "<cmd>Pounce<CR>")

vim.cmd([[
" highlight PounceMatch      cterm=underline,bold ctermfg=gray ctermbg=214 gui=underline,bold guifg=#ffaa00 guibg=#555555
" highlight PounceGap        cterm=underline,bold ctermfg=gray ctermbg=209 gui=underline,bold guifg=#99ff66 guibg=#333333
 highlight PounceAccept     cterm=underline,bold ctermfg=214 ctermbg=gray gui=underline,bold guifg=#66ccff guibg=#333333
 highlight PounceAcceptBest cterm=underline,bold ctermfg=196 ctermbg=gray gui=underline,bold guifg=#ff448c guibg=#333333
 highlight PounceUnmatched  ctermfg=248 guifg=#666666
]])
