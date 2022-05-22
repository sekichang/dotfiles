local options = {
	backup = false,            -- バックアップしない
  swapfile = false,          -- スワップファイルを作らない
	fileencoding = "utf-8",    -- ファイルの文字コード
	number = true,             -- 行番号を表示
	cursorline = true,         -- カーソル行をハイライト
	scrolloff = 5,             -- スクロールする時に下が見えるようにする
	virtualedit = 'all',       -- 文字がない場所にもカーソルを移動できるようにする
	autoindent = true,         -- 改行時に自動でインデントする
	smartindent = true,        -- 改行入力行の末尾にあわせてインデントを増減する
  tabstop = 2,               -- タブを何文字の空白に変換するか
  shiftwidth = 2,            -- 自動インデント時に入力する空白の数
	softtabstop = 2,           -- TABキーやBSキーを打ち込んだときに動く幅の設定
	expandtab = true,          -- タブ入力を空白に変換
  splitbelow = true,         -- 水平分割する際に下に開く
	splitright = true,         -- 画面を縦分割する際に右に開く
	clipboard = 'unnamed',     -- yank した文字列をクリップボードにコピー
	hlsearch = true,           -- 検索した文字をハイライトする
	ignorecase = true,         -- 検索時に大文字小文字無視
	smartcase = true,          -- 大文字も含めた検索の場合はその通りに検索する
	pumheight=10,              -- 補完メニューの高さ
	inccommand = 'split',      -- 
  mouse = "a",               -- マウス操作可能
  laststatus = 2,
  signcolumn = "yes",        -- gitの変更表示のがたつきをなくす
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.loaded_netrw             = 1  -- netrwの無効
vim.g.loaded_netrwPlugin       = 1
vim.cmd [[set iskeyword+=-]]        -- キーワードに-を含める
