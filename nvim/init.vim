runtime ./options.vim
runtime ./keymap.vim
runtime ./plug.vim

if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

colorscheme iceberg

"------------------------
"  lightline
"------------------------
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
\ }
" # show statusbar
set laststatus=2
" # hide --INSERT--
set noshowmode

"------------------------
" 保存時に行末の空白削除
"------------------------
autocmd BufWritePre * :%s/\s\+$//ge

runtime ./lspconfig.vim

lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

runtime ./cmp.vim
runtime ./treesitter.vim
runtime ./lspsaga.vim
