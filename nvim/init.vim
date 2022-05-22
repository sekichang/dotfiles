runtime ./options.vim
runtime ./keymap.vim
runtime ./plug.vim
runtime ./colorscheme.vim
runtime ./lspconfig.vim
runtime ./cmp.vim
runtime ./telescope.vim
runtime ./treesitter.vim
runtime ./lspsaga.vim
runtime ./trouble.vim
runtime ./gitsigns.vim
runtime ./lualine.vim
lua << EOF
  require('autopairs')
  require('autotag')
EOF
runtime ./which-key.vim
runtime ./autocmd.vim
