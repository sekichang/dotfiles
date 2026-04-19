-- h/j/k/l を連続で使わないように警告
local discipline = require("util.discipline")
discipline.cowboy()

local map = vim.keymap.set

-- 削除/変更でレジスタを使わない
map({ "n", "x" }, "x", '"_x')
map({ "n", "x" }, "c", '"_c')

-- 行頭/行末へ移動
map({ "n", "x" }, "H", "^")
map({ "n", "x" }, "L", "$")

-- ファイルの末尾へ移動
map("n", "G", "Gzz")

-- 検索結果の次/前
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- 半ページスクロール
map("n", "<c-d>", "<c-d>zz")
map("n", "<c-u>", "<c-u>zz")

-- increment/decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- 全選択
map("n", "<C-a>", "ggVG")

-- ファイル保存
map("n", "<C-s>", "<cmd>silent w<cr><esc>")

-- マクロ記録をQに退避
map("n", "q", "<nop>")
map("n", "Q", "q", { noremap = true })

-- Insert mode cursor movement
map("i", "<C-b>", "<Left>")
map("i", "<C-f>", "<Right>")
