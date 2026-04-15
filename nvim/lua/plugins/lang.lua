return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      taplo = {
        flags = {
          exit_timeout = 100,
        },
      },
    },
  },
}
