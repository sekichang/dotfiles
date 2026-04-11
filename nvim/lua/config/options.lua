local opt = vim.opt

opt.virtualedit = "all" -- 文字がない場所にもカーソルを移動できるようにする
opt.softtabstop = 2 -- TABキーやBSキーを打ち込んだときの幅を設定
opt.inccommand = "split" -- 置換結果を別画面で表示
opt.spelllang = { "en", "cjk" } -- スペルが間違っていると下線が表示される（ただし日本語は対象外にする)
opt.swapfile = false -- swapfileは作成しない

-- Undercurl
vim.cmd([[let &t_Cs="\e[4:3m"]])
vim.cmd([[let &t_Ce="\e[4:0m"]])

-- clear statusline
vim.opt.laststatus = 0 -- ステータスラインを非表示（incline.nvimが担当）
vim.opt.showmode = false -- モード表示を非表示（modes.nvimが担当）

-- silently save
vim.cmd("cabbrev w silent w")
