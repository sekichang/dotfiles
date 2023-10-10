local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Lua Library
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "MunifTanjim/nui.nvim" },

  -- FuzzyFinders
  {
    "nvim-telescope/telescope.nvim",
    event = { "VimEnter" },
    config = function()
      require("rc/pluginconfig/telescope")
    end,
    dependencies = {
      { "nvim-telescope/telescope-file-browser.nvim" },
      -- 	{
      --     "nvim-telescope/telescope-github.nvim",
      --  	config = function()
      --  	require("telescope").load_extension("gh")
      --  	end,
      -- },
      -- { "nvim-telescope/telescope-ui-select.nvim",
      --  	config = function()
      --  	require("telescope").load_extension("ui-select")
      --  	end,
      -- },
      -- { "LinArcX/telescope-changes.nvim",
      --  	config = function()
      --  	require("telescope").load_extension("changes")
      --  	end,
      -- },
      -- { "nvim-telescope/telescope-live-grep-args.nvim",
      --  	config = function()
      --  	require("telescope").load_extension("live_grep_args")
      --  	end,
      -- },
      -- { "nvim-telescope/telescope-smart-history.nvim",
      --  	config = function()
      --  	require("telescope").load_extension("smart_history")
      --  	end,
      --  	build = function()
      --  	os.execute("mkdir -p " .. vim.fn.stdpath("state") .. "databases/")
      --  	end,
      -- },
      -- { "nvim-telescope/telescope-symbols.nvim" },
      -- { "debugloop/telescope-undo.nvim",
      --  	config = function()
      --  	require("telescope").load_extension("undo")
      --  	end,
      -- },
    },
  },

  -- Auto Completion
  {
    "hrsh7th/nvim-cmp",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/nvim-cmp")
    end,
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lsp-document-symbol" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-nvim-lua" },
      { "hrsh7th/cmp-calc" },
      { "hrsh7th/cmp-cmdline" },
      { "saadparwaiz1/cmp_luasnip" },
      { "onsails/lspkind-nvim" },
      ---- Snippet
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    },
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },

  -- Find
  {
    "kevinhwang91/nvim-hlslens",
    event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/nvim-hlslens")
    end,
  },
  {
    "rapan931/lasterisk.nvim",
    event = "VeryLazy",
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost" },
    build = ":TSUpdateSync",
    config = function()
      require("rc/pluginconfig/nvim-treesitter")
    end,
    dependencies = {
      --{ "JoosepAlviste/nvim-ts-context-commentstring" },
      --{ "nvim-treesitter/nvim-treesitter-refactor" },
      --{ "nvim-treesitter/nvim-tree-docs" },
      --{ "yioneko/nvim-yati" },
    },
  },

  { "nvim-treesitter/nvim-treesitter-textobjects" },

  {
    "mfussenegger/nvim-treehopper",
    event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/nvim-treehopper")
    end,
  },

  {
    "David-Kunz/treesitter-unit",
    event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/treesitter-unit")
    end,
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    event = "VimEnter",
    enabled = function()
      return not vim.g.vscode
    end,
    config = function()
      require("rc/pluginconfig/bufferline")
    end,
  },

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/gitsigns")
    end,
  },

  -- Lint
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/null-ls")
    end,
  },

  -- ColorScheme
  {
    "EdenEast/nightfox.nvim",
    event = { "BufReadPre", "BufWinEnter" },
    config = function()
      require("rc/pluginconfig/nightfox")
    end,
  },

  -- Font
  {
    --
    "kyazdani42/nvim-web-devicons",
    -- enabled = function()
    -- 	return not os.getenv("DISABLE_DEVICONS") or os.getenv("DISABLE_DEVICONS") == "false"
    -- end,
  },

  -- Reading assistant
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/indent-blankline")
    end,
  },

  -- Comment out
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/Comment")
    end,
  },

  -- ShortCut
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/which-key")
    end,
  },

  -- LSP's UI
  {
    "nvimdev/lspsaga.nvim",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/lspsaga")
    end,
  },
  {
    "folke/trouble.nvim",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/trouble")
    end,
  },

  -- Scrollbar
  {
    "petertriho/nvim-scrollbar",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/nvim-scrollbar")
    end,
    dependencies = {
      { "kevinhwang91/nvim-hlslens" },
    },
  },

  -- Translate
  {
    "uga-rosa/translate.nvim",
    event = "VeryLazy",
    -- config = function()
    -- 	require("rc/pluginconfig/translate")
    -- end,
  },

  -- Highlight
  {
    "norcalli/nvim-colorizer.lua",
    -- event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/nvim-colorizer")
    end,
  },

  -- LSP
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("rc/pluginconfig/lspconfig")
    end,
    dependencies = {
      { "williamboman/mason.nvim" },
      { "neovim/nvim-lspconfig" },
    },
  },

  -- Move
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "o", "x" }, function() require("flash").jump() end,       desc = "Flash" },
      { "M", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o",               function() require("flash").remote() end,     desc = "Remote Flash" },
      {
        "R",
        mode = { "o", "x" },
        function() require("flash").treesitter_search() end,
        desc =
        "Treesitter Search"
      },
      {
        "<c-s>",
        mode = { "c" },
        function() require("flash").toggle() end,
        desc =
        "Toggle Flash Search"
      },
    },
    config = function()
      -- require("rc/pluginconfig/flash")
    end,
  },
  {
    "rlane/pounce.nvim",
    event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/pounce")
    end,
  },

  -- Horizontal Move
  -- {
  --   "jinh0/eyeliner.nvim",
  --   event = "VeryLazy",
  --   config = true,
  -- },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/toggleterm")
    end,
  },

  -- Statusline
  {
    "NTBBloodbath/galaxyline.nvim",
    event = "VimEnter",
    config = function()
      require("rc/pluginconfig/galaxyline")
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    -- event = "VimEnter",
    config = function()
      require("rc/pluginconfig/nvim-autopairs")
    end,
    dependencies = { { "nvim-treesitter/nvim-treesitter" } },
  },

  {
    "windwp/nvim-ts-autotag",
    -- event = "InsertEnter",
    -- event = "VimEnter",
    config = function()
      require("rc/pluginconfig/nvim-ts-autotag")
    end,
    -- dependencies = { { "nvim-treesitter/nvim-treesitter" } },
  },

  -- Operator
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("rc/pluginconfig/nvim-surround")
    end,
  },
})
