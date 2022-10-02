runtime ./options.vim
runtime ./keymap.vim
runtime ./plug.vim

lua << EOF
require("plugin.lspconfig")
require("plugin.lspsaga")
require("plugin.null-ls")
require("plugin.cmp")
require("plugin.telescope")
require("plugin.treesitter")
require("plugin.colorizer")
require("plugin.trouble")
require("plugin.onedarkpro")
require("plugin.gitsigns")
require("plugin.galaxyline")
require("plugin.hop")
require("plugin.pounce")
require("plugin.autopairs")
require("plugin.autotag")
require("plugin.which-key")
EOF

colorscheme onedarkpro

runtime ./autocmd.vim
