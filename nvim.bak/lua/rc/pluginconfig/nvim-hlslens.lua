local opts = { noremap = true, silent = true }

vim.keymap.set("n", "n", function()
  pcall(vim.cmd, "normal! " .. vim.v.count1 .. "nzz")
  require("hlslens").start()
end, opts)

vim.keymap.set("n", "N", function()
  pcall(vim.cmd, "normal! " .. vim.v.count1 .. "Nzz")
  require("hlslens").start()
end, opts)

vim.keymap.set({ "n", "x" }, "*", function()
  require("lasterisk").search({ is_whole = false })
  require("hlslens").start()
end, {})

vim.keymap.set({ "n", "x" }, "g*", function()
  require("lasterisk").search()
  require("hlslens").start()
end, {})
