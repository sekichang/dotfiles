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
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

" color scheme
Plug 'cocopon/iceberg.vim'
"Plug 'sainnhe/sonokai'
"Plug 'navarasu/onedark.nvim'
"Plug 'rebelot/kanagawa.nvim'
Plug 'olimorris/onedarkpro.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'

" snipet
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'ray-x/lsp_signature.nvim'

" icon
Plug 'onsails/lspkind.nvim'

" error list
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

"
" Plug 'nvim-lua/completion-nvim'

" telescope
Plug 'nvim-telescope/telescope.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'tami5/lspsaga.nvim'

Plug 'folke/which-key.nvim'
call plug#end()
