return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {}, -- TypeScript/JavaScript LSP
        eslint = {}, -- Linter untuk JS/TS
        html = {},
        cssls = {},
        jsonls = {},
        tailwindcss = {},
      },
    },
  },
}
