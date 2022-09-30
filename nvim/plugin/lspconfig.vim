lua << EOF
-- LSPクライアントがバッファにアタッチされたときに実行される
local on_attach = function(client, bufnr)
  local function keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- LSPサーバーのフォーマット機能を無効にする
  -- client.resolved_capabilities.document_formatting = false

  local opts = { noremap = true, silent = true }
  keymap("n", "gD"       , "<cmd>lua vim.lsp.buf.declaration()<CR>"                               , opts)
--  keymap("n", "gd"       , "<cmd>lua vim.lsp.buf.definition()<CR>"                                , opts)
--  keymap("n", "K"        , "<cmd>lua vim.lsp.buf.hover()<CR>"                                     , opts)
  keymap("n", "gi"       , "<cmd>lua vim.lsp.buf.implementation()<CR>"                            , opts)
--  keymap("n", "<C-k>"    , "<cmd>lua vim.lsp.buf.signature_help()<CR>"                            , opts)
  keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>"                      , opts)
  keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>"                   , opts)
  keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  keymap("n", "<space>D" , "<cmd>lua vim.lsp.buf.type_definition()<CR>"                           , opts)
--  keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>"                                    , opts)
--  keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>"                               , opts)
--  keymap("n", "gr"       , "<cmd>lua vim.lsp.buf.references()<CR>"                                , opts)
--  keymap("n", "<space>e" , "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>"              , opts)
--  keymap("n", "[d"       , "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>"                          , opts)
--  keymap("n", "]d"       , "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>"                          , opts)
--  keymap("n", "<space>q" , "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>"                        , opts)
--  keymap("n", "<space>F" , "<cmd>lua vim.lsp.buf.formatting()<CR>"                                , opts)

  if client.name == "tsserver" then
		client.resolved_capabilities.document_formatting = false
	end
end

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local opts = { capabilities = capabilities, on_attach = on_attach }

require("mason").setup()
local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities
    }
  end,
  ["sumneko_lua"] = function()
	  local has_lua_dev, lua_dev = pcall(require, "lua-dev")
    if has_lua_dev then
      local l = lua_dev.setup({
        library = {
          vimruntime = true, -- runtime path
          types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
          -- plugins = false, -- installed opt or start plugins in packpath
          -- you can also specify the list of plugins to make available as a workspace library
          -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
          plugins = { "nvim-treesitter", "plenary.nvim" },
        },
        runtime_path = false,
        lspconfig = opts,
      })
      lspconfig.sumneko_lua.setup(l)
    else
      lspconfig.sumneko_lua.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
    end
  end,
})

require "lsp_signature".setup({
  bind = true,
  handler_opts = {
    border = "single"
  },
  max_width = 120,
  use_lspsaga = true
})
vim.cmd [[
set updatetime=1000
highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#108040
highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#108040
highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#108040
augroup lsp_document_highlight
  autocmd!
  autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.document_highlight()
  autocmd CursorMoved,CursorMovedI * lua vim.lsp.buf.clear_references()
augroup END
]]

EOF
