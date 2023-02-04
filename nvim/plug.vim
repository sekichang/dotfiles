"------------------------
"  vim-plug
"------------------------
call plug#begin()

" Lua Library
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'

" Statuline
"Plug 'nvim-lualine/lualine.nvim'
Plug 'NTBBloodbath/galaxyline.nvim'

" インデントの可視化
"Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'

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
Plug 'navarasu/onedark.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'olimorris/onedarkpro.nvim'
Plug 'EdenEast/nightfox.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

" error
Plug 'folke/trouble.nvim'

" Format & Lint
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
Plug 'nvim-tree/nvim-web-devicons'

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

" Filer
Plug 'obaland/vfiler.vim'
Plug 'obaland/vfiler-column-devicons'

Plug 'folke/which-key.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

" tab
"Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'romgrk/barbar.nvim'

"
Plug 'norcalli/nvim-colorizer.lua'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'for': ['markdown'], 'do': 'cd app & npm install' }

" Move
Plug 'phaazon/hop.nvim'
Plug 'jinh0/eyeliner.nvim'
Plug 'machakann/vim-columnmove' "縦移動
Plug 'haya14busa/vim-edgemotion'

" Search
Plug 'kevinhwang91/nvim-hlslens'

" Fuzzy Find
Plug 'hrsh7th/vim-searchx'
Plug 'rlane/pounce.nvim'

"
Plug 'kylechui/nvim-surround'

" Scrollbar
Plug 'petertriho/nvim-scrollbar'

" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Notification
Plug 'folke/noice.nvim'

" Comment out
Plug 'numToStr/Comment.nvim'

" Transrate
Plug 'uga-rosa/translate.nvim'


call plug#end()
