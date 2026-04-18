-- h/j/k/l を連続で使わないように警告
local discipline = require("util.discipline")
discipline.cowboy()

local keymap = vim.keymap.set

keymap({ "n", "x" }, "x", '"_x', { desc = "Delete without affecting the registers" })
keymap({ "n", "x" }, "c", '"_c', { desc = "Change without affecting the registers" })

keymap("n", "<C-a>", "ggVG", { desc = "Select all" })
keymap({ "n", "x" }, "H", "^", { desc = "line" })
keymap({ "n", "x" }, "L", "$", { desc = "End of line" })
keymap("n", "G", "Gzz", { desc = "Go to end of file" })
keymap("n", "n", "nzz", { desc = "Next search result" })
keymap("n", "N", "Nzz", { desc = "Prev search result" })
keymap("n", "<c-d>", "<c-d>zz", { desc = "Scroll down half page" })
keymap("n", "<c-u>", "<c-u>zz", { desc = "Scroll up half page" })
keymap("n", "+", "<C-a>", { desc = "Increment" })
keymap("n", "-", "<C-x>", { desc = "Decrement" })
keymap({ "n", "i", "v" }, "<C-s>", "<cmd>silent w<cr><esc>", { desc = "Save File" })

-- Insert mode cursor movement
keymap("i", "<C-b>", "<Left>", { desc = "Move cursor left" })
keymap("i", "<C-f>", "<Right>", { desc = "Move cursor right" })
