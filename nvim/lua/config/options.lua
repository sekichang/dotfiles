-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.showmode = false -- モードを非表示
vim.opt.virtualedit = "all" -- 文字がない場所にもカーソルを移動できるようにする

vim.opt.softtabstop = 2 -- TABキーやBSキーを打ち込んだときに動く幅の設定

vim.opt.inccommand = "split" -- 変換結果を別画面で表示
vim.opt.laststatus = 3

-- Undercurl
vim.cmd([[let &t_Cs="\e[4:3m"]])
vim.cmd([[let &t_Ce="\e[4:0m"]])
