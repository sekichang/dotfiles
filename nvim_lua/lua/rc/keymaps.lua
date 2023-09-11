local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- nvim-surround
--nmap S ysiw

-- 入力モードでのカーソル移動
--inoremap <C-h> <Left>
--inoremap <C-j> <Down>
--inoremap <C-k> <Up>
--inoremap <C-l> <Right>

-- 画面移動
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 画面サイズ変更
--nnoremap <silent><A-Up> :resize -2<CR>
--nnoremap <silent><A-Down> :resize +2<CR>
--nnoremap <silent><A-Left> :vertical resize -2<CR>
--nnoremap <silent><A-Right> :vertical resize +2<CR>

-- 次（前）の検索候補を画面中央に表示する
keymap("n", "n", "nzz")
keymap("n", "N", "Nzz")
keymap("n", "*", "*zz")
keymap("n", "#", "#zz")

-- 1画面分進む(戻る)際、画面中央に表示する
keymap("n", "<C-f>", "<C-f>zz")
keymap("n", "<C-b>", "<C-b>zz")

-- 画面中央に表示する
keymap("n", "G", "Gzz")

-- ESCを2回押すことでハイライトを消す
keymap("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

-- + と - で数字のインクリメント、デクリメントを行う
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- レジスタに保存しないで削除
keymap("n", "x", '"_x')

--vnoremap p "_dP

-- 行を移動
--nnoremap <silent><A-j> :move .+1<CR>==
--nnoremap <silent><A-k> :move .-2<CR>==
--vnoremap <silent><A-j> :move '>+1<CR>gv=gv
--vnoremap <silent><A-k> :move '<-2<CR>gv=gv

-- 全選択
keymap("n", "<C-a>", "ggVG")

-- 折り返しがあっても上下の移動を1行にする
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- 行頭、行末に移動する
keymap({ "n", "x" }, "H", "^")
keymap({ "n", "x" }, "L", "$")

-- インデントの調整後にビジュアルモードを解除しない
--vnoremap < <gv
--vnoremap > >gv

-- 貼り付け先のインデントに合わせてペースト
--nnoremap p ]p
--nnoremap P ]P

-- 行頭/行末へ移動
keymap("c", "<C-a>", "<Home>")
keymap("c", "<C-e>", "<End>")

-- 一文字戻る/一文字進む
keymap("c", "<C-b>", "<Left>")
keymap("c", "<C-f>", "<Right>")

-- delete/backspace
keymap("c", "<C-d>", "<Del>")
keymap("c", "<C-h>", "<BS>")

-- 前履歴/次履歴
keymap("c", "<C-p>", "<Up>")
keymap("c", "<C-n>", "<Down>")

-- Macro
keymap("n", "Q", "@q", opts) --nnoremap Q @q
