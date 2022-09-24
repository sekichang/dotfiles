"------------------------
"  vim-plug
"------------------------
call plug#begin()

" ステータスバーのカスタマイズ
"Plug 'itchyny/lightline.vim'
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'feline-nvim/feline.nvim'
Plug 'NTBBloodbath/galaxyline.nvim'

" インデントの可視化
Plug 'Yggdroot/indentLine'

" Git差分表示
"Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

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
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'jose-elias-alvarez/null-ls.nvim'

" cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'

" snipet
Plug 'L3MON4D3/LuaSnip'
"Plug 'rafamadriz/friendly-snippets'

" icon
Plug 'onsails/lspkind.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" error
Plug 'folke/trouble.nvim'

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-file-browser.nvim'

" filer
Plug 'obaland/vfiler.vim'
Plug 'obaland/vfiler-column-devicons'

Plug 'folke/which-key.nvim'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

" tab
"Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'romgrk/barbar.nvim'

"
Plug 'norcalli/nvim-colorizer.lua'

Plug 'iamcco/markdown-preview.nvim', { 'for': ['markdown'], 'do': 'cd app & npm install' }

Plug 'phaazon/hop.nvim'
call plug#end()
