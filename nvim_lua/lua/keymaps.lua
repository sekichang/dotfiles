local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- スペースキーにleaderキーを割り当てる
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- ESC連打でハイライトを消す
keymap('n', '<ESC><ESC>', ':nohlsearch<CR>', opts)

-- + と - で数字のインクリメント、デクリメントを行う
keymap('n', '+', '<C-a>', opts)
keymap('n', '-', '<C-x>', opts)

-- 次（前）の検索候補を画面中央に表示する
keymap('n', 'n', 'nzz', opts)
keymap('n', 'N', 'Nzz', opts)
keymap('n', '*', '*zz', opts)
keymap('n', '#', '#zz', opts)

-- 削除時レジスタに保存しない
keymap('n', 'x', '"_x', opts)
keymap('n', 's', '"_s', opts)

-- insert modeでの移動
keymap('i', '<c-h>', '<Left>', opts)
keymap('i', '<c-j>', '<Down>', opts)
keymap('i', '<c-k>', '<Up>', opts)
keymap('i', '<c-l>', '<Right>', opts)

-- 行の入れ替え
keymap('n', '<A-j>', '<Esc>:move .+1<CR>==', opts)
keymap('n', '<A-k>', '<Esc>:move .-2<CR>==', opts)

-- 選択行の入れ替え
keymap('x', 'J',     ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K',     ":move '<-2<CR>gv-gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)
