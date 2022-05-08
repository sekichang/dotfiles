lua << EOF
-- LSPクライアントがバッファにアタッチされたときに実行される
local on_attach = function(client, bufnr)
  local function keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- LSPサーバーのフォーマット機能を無効にする
  -- client.resolved_capabilities.document_formatting = false

  cfg = {}  -- add you config here
  require "lsp_signature".setup(cfg)

  local opts = { noremap = true, silent = true }
  keymap("n", "gD"       , "<cmd>lua vim.lsp.buf.declaration()<CR>"                               , opts)
  keymap("n", "gd"       , "<cmd>lua vim.lsp.buf.definition()<CR>"                                , opts)
--  keymap("n", "K"        , "<cmd>lua vim.lsp.buf.hover()<CR>"                                     , opts)
  keymap("n", "gi"       , "<cmd>lua vim.lsp.buf.implementation()<CR>"                            , opts)
  keymap("i", "<C-k>"    , "<cmd>lua vim.lsp.buf.signature_help()<CR>"                            , opts)
  keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>"                      , opts)
  keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>"                   , opts)
  keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  keymap("n", "<space>D" , "<cmd>lua vim.lsp.buf.type_definition()<CR>"                           , opts)
--  keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>"                                    , opts)
  keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>"                               , opts)
--  keymap("n", "gr"       , "<cmd>lua vim.lsp.buf.references()<CR>"                                , opts)
  keymap("n", "<space>e" , "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>"              , opts)
  keymap("n", "[d"       , "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>"                          , opts)
  keymap("n", "]d"       , "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>"                          , opts)
  keymap("n", "<space>q" , "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>"                        , opts)
  keymap("n", "<space>F" , "<cmd>lua vim.lsp.buf.formatting()<CR>"                                , opts)
end

local lsp_installer = require "nvim-lsp-installer"
lsp_installer.on_server_ready(function(server)
  local opts = {}
  opts.on_attach = on_attach
  opts.capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

  server:setup(opts)
end)
EOF
