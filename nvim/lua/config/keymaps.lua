-- h/j/k/l を連続で使わないように警告
local discipline = require("util.discipline")
discipline.cowboy()

local keymap = vim.keymap.set

keymap("n", "x", '"_x')

-- Select all
keymap("n", "<C-a>", "ggVG")

-- 行頭/行末に移動
keymap({ "n", "x" }, "H", "0")
keymap({ "n", "x" }, "L", "$")

keymap("n", "G", "Gzz")
keymap("n", "n", "nzz")
keymap("n", "N", "Nzz")

-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- Insert mode cursor movement
keymap("i", "<C-b>", "<Left>", { desc = "Move cursor left" })
keymap("i", "<C-f>", "<Right>", { desc = "Move cursor right" })

vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>silent w<cr><esc>", { desc = "Save File" })
