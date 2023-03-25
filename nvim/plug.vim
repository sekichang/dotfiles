"------------------------
"  vim-plug
"------------------------
call plug#begin()

" Lua Library
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'

" Git差分表示
Plug 'lewis6991/gitsigns.nvim'

" Git
Plug 'tpope/vim-fugitive'

" fzf
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

" ColorScheme
Plug 'cocopon/iceberg.vim'
Plug 'navarasu/onedark.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'olimorris/onedarkpro.nvim'
Plug 'EdenEast/nightfox.nvim'

" icon
Plug 'onsails/lspkind.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'

" snipet
Plug 'L3MON4D3/LuaSnip'
"Plug 'rafamadriz/friendly-snippets'
Plug 'sekichang/friendly-snippets'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'ray-x/lsp_signature.nvim'

" LSP's UI
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'folke/trouble.nvim'

" Format & Lint
Plug 'jose-elias-alvarez/null-ls.nvim'

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'mfussenegger/nvim-treehopper'
Plug 'David-Kunz/treesitter-unit'


" Treesitter UI customize
Plug 'p00f/nvim-ts-rainbow'

" Statuline
"Plug 'nvim-lualine/lualine.nvim'
Plug 'NTBBloodbath/galaxyline.nvim'

" Bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
" Plug 'romgrk/barbar.nvim'

Plug 'famiu/bufdelete.nvim'

" Highlight
Plug 'norcalli/nvim-colorizer.lua'

" Scrollbar
Plug 'petertriho/nvim-scrollbar'

" Move
Plug 'phaazon/hop.nvim'

" Horizontal Move
Plug 'jinh0/eyeliner.nvim'
Plug 'ggandor/lightspeed.nvim'

" Vertical Move
" Plug 'machakann/vim-columnmove'
Plug 'haya14busa/vim-edgemotion'

" Operator
Plug 'kylechui/nvim-surround'

" Search
Plug 'kevinhwang91/nvim-hlslens'
Plug 'rapan931/lasterisk.nvim'

" Filer
Plug 'obaland/vfiler.vim'
Plug 'obaland/vfiler-column-devicons'

" Manual
Plug 'folke/which-key.nvim'

" Fuzzy Find
Plug 'hrsh7th/vim-searchx'
Plug 'rlane/pounce.nvim'

" Notification
Plug 'folke/noice.nvim'

" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Transrate
Plug 'uga-rosa/translate.nvim'

" インデントの可視化
Plug 'lukas-reineke/indent-blankline.nvim'

" Comment out
Plug 'numToStr/Comment.nvim'

" Brackets
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'for': ['markdown'], 'do': 'cd app & npm install' }

call plug#end()
