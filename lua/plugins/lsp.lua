return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- TypeScript & JavaScript LSP
        ts_ls = { -- Using ts_ls because tsserver breaks the config
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        },

        -- Linter for JavaScript & TypeScript
        eslint = {},

        -- LSP for HTML, CSS, JSON, and Tailwind CSS
        html = {},
        cssls = {},
        jsonls = {},
        tailwindcss = {
          filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
        },
      },
    },
  },

  -- Mason: Ensure required tools are installed automatically
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd", -- Formatter
        "eslint_d", -- Faster ESLint
        "typescript-language-server", -- TS/JS LSP
        "json-lsp", -- JSON LSP
        "html-lsp", -- HTML LSP
        "css-lsp", -- CSS LSP
        "tailwindcss-language-server", -- Tailwind LSP
      },
      ui = {
        border = "single",
      },
    },
  },

  -- Formatter configuration using conform.nvim
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        json = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        markdown = { "prettierd" },
      },
    },
  },
}
