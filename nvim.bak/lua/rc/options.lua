vim.wo.number = true -- 行番号を表示
vim.wo.relativenumber = true -- 相対行番号を表示
vim.opt.showmode = false -- モードを非表示
vim.opt.cursorline = true -- カーソル行をハイライト
vim.opt.scrolloff = 5 -- スクロールする時に下が見えるようにする
vim.opt.virtualedit = "all" -- 文字がない場所にもカーソルを移動できるようにする
vim.opt.autoindent = true -- 改行時に自動でインデントする
vim.opt.smartindent = true -- 改行入力行の末尾にあわせてインデントを増減する
vim.opt.tabstop = 2 -- タブを何文字の空白に変換するか
vim.opt.shiftwidth = 2 -- 自動インデント時に入力する空白の数
vim.opt.softtabstop = 2 -- TABキーやBSキーを打ち込んだときに動く幅の設定
vim.opt.expandtab = true -- タブ入力を空白に変換
vim.opt.splitright = true -- 画面を縦分割する際に右に開く
vim.opt.clipboard = "unnamedplus" -- yank した文字列をクリップボードにコピー
vim.opt.hlsearch = true -- 検索した文字をハイライトする
vim.opt.ignorecase = true -- 検索時に大文字小文字無視
vim.opt.smartcase = true -- 大文字も含めた検索の場合はその通りに検索する
vim.opt.pumheight = 10 -- 補完メニューの高さ
vim.opt.pumblend = 10 -- 補完メニューを半透明
vim.opt.winblend = 10 -- floating windows を半透明
vim.opt.hidden = true -- 保存しなくても別のファイルを開くことが出来る
vim.opt.completeopt = { "menuone", "noselect" } --set completeopt=menu,menuone,noselect
vim.opt.laststatus = 3 -- set laststatus=3
vim.opt.inccommand = "split" -- set inccommand=split
vim.opt.termguicolors = true -- set termguicolors
-- let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
-- let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
vim.opt.signcolumn = "yes" -- 常に左端のサイン列を表示
-- "set updatetime=100 " 反映されるまでの時間(1s)
vim.cmd("set shortmess+=I") -- 起動時のメッセージを消す
