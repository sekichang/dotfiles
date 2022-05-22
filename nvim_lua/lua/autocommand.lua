vim.cmd[[autocmd BufWritePre * :%s/\s\+$//ge]]  -- 保存したとき行末の空白削除
vim.cmd[[
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END
]]

