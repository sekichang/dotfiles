lua << EOF
local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    formatting.prettier.with {
      prefer_local = "node_modules/.bin",
    },
    formatting.stylua,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
})
EOF
