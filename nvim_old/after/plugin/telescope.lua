local status, telescope = pcall(require, "telescope")
if not status then
  return
end

local actions = require "telescope.actions"
--local builtin = require "telescope.builtin"

local function telescope_buffer_dir()
  return vim.fn.expand "%:p:h"
end

local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },
      n = {
        ["q"] = actions.close,
        ["?"] = actions.which_key,
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function()
            vim.cmd "normal vbd"
          end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd "startinsert"
          end,
        },
      },
    },
  },
}
telescope.load_extension "file_browser"

vim.keymap.set("n", ";b", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", ";d", "<Cmd>Telescope diagnostics<CR>")
vim.keymap.set("n", ";f", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", ";g", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", ";t", "<Cmd>Telescope help_tags<CR>")
vim.keymap.set("n", ";r", "<Cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", ";s", "<Cmd>Telescope git_status<CR>")
vim.keymap.set("n", ";;", "<Cmd>Telescope resume<CR>")

vim.keymap.set("n", "<space>f", function()
  telescope.extensions.file_browser.file_browser {
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 },
  }
end)
