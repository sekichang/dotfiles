"------------------------
"  vim-plug
"------------------------
call plug#begin()

" ステータスバーのカスタマイズ
Plug 'itchyny/lightline.vim'

" インデントの可視化
Plug 'Yggdroot/indentLine'

" Git差分表示
Plug 'airblade/vim-gitgutter'
" Git
Plug 'tpope/vim-fugitive'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" color scheme
Plug 'cocopon/iceberg.vim'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" icon
Plug 'onsails/lspkind.nvim'

" error list
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

"
" Plug 'nvim-lua/completion-nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
