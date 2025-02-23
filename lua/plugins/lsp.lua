return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        },
        eslint = {}, -- Linter untuk JS/TS
        html = {},
        cssls = {},
        jsonls = {},
        tailwindcss = {},
      },
    },
  },
}
