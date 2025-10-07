return {
  "stevearc/conform.nvim", -- Lightweight yet powerful formatter
  event = "BufWritePre", -- Load this plugin before saving a file

  opts = {
    format_on_save = true,

    formatters_by_ft = {
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      html = { "prettierd" },
      css = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
      lua = { "stylua" },
      sh = { "shfmt" },
    },
  },
}
