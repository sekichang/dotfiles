-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.virtualedit = "all" -- 文字がない場所にもカーソルを移動できるようにする
opt.softtabstop = 2 -- TABキーやBSキーを打ち込んだときの幅を設定
opt.inccommand = "split" -- 置換結果を別画面で表示
opt.spelllang = { "en", "cjk" } -- スペルが間違っていると下線が表示される（ただし日本語は対象外にする)
opt.swapfile = false -- swapfileは作成しない

-- Undercurl
vim.cmd([[let &t_Cs="\e[4:3m"]])
vim.cmd([[let &t_Ce="\e[4:0m"]])
