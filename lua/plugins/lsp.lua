return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {}, -- TypeScript/JavaScript LSP
        eslint = {}, -- Linter untuk JS/TS
        html = {},
        cssls = {},
        jsonls = {},
        tailwindcss = {},
      },
    },
  },
}
