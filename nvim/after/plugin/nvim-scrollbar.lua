require("scrollbar").setup()
require("scrollbar.handlers.search").setup()
--vim.cmd [[
--    augroup scrollbar_search_hide
--        autocmd!
--        autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
--    augroup END
--]]
