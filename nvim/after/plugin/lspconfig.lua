-- LSPクライアントがバッファにアタッチされたときに実行される
local on_attach = function(client, bufnr)
  local function keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  -- LSPサーバーのフォーマット機能を無効にする
  client.server_capabilities.documentFormattingProvider = false

  local opts = { noremap = true, silent = true }
  keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  --  keymap("n", "<C-k>"    , "<cmd>lua vim.lsp.buf.signature_help()<CR>"                            , opts)
  --  keymap("n", "gd"       , "<cmd>lua vim.lsp.buf.definition()<CR>"                                , opts)
  --  keymap("n", "K"        , "<cmd>lua vim.lsp.buf.hover()<CR>"                                     , opts)
  --  keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>"                                    , opts)
  --  keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>"                               , opts)
  --  keymap("n", "gr"       , "<cmd>lua vim.lsp.buf.references()<CR>"                                , opts)
  --  keymap("n", "<space>e" , "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>"              , opts)
  --  keymap("n", "[d"       , "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>"                          , opts)
  --  keymap("n", "]d"       , "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>"                          , opts)
  --  keymap("n", "<space>q" , "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>"                        , opts)
  --  keymap("n", "<space>F" , "<cmd>lua vim.lsp.buf.formatting()<CR>"                                , opts)
end

local lspconfig = require "lspconfig"
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
local mason_lspconfig = require "mason-lspconfig"
mason_lspconfig.setup()
mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
  ["sumneko_lua"] = function()
    lspconfig.sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }
  end,
}

require("lsp_signature").setup {
  bind = true,
  handler_opts = {
    border = "single",
  },
  max_width = 120,
  use_lspsaga = true,
}
--vim.cmd [[
--set updatetime=1000
--let s:bl = ['json', 'markdown'] " set blacklist filetype
--highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guibg=#444444
--highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guibg=#444444
--highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guibg=#444444
--augroup lsp_document_highlight
--  autocmd! * <buffer>
--  autocmd CursorHold,CursorHoldI <buffer> if index(s:bl, &ft) < 0 | lua vim.lsp.buf.document_highlight()
--  autocmd CursorMoved,CursorMovedI <buffer> if index(s:bl, &ft) < 0 | lua vim.lsp.buf.clear_references()
--augroup END
--]]
