-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "x", '"_x')

-- Delete a word backwards
keymap("n", "dw", 'vb"_d')

-- Select all
keymap("n", "<C-a>", "ggVG")

-- 行頭/行末に移動
keymap({ "n", "x" }, "H", "0")
keymap({ "n", "x" }, "L", "$")

keymap("n", "G", "Gzz")

-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- minisurround
-- gsaiw' // 単語の周りを'で囲む
-- gsd' // 単語の周りの'を削除
-- gsr'" // 単語の周りの'を"に置換
