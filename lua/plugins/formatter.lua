return {
  "stevearc/conform.nvim", -- Plugin for automatic code formatting
  event = "BufWritePre", -- Trigger formatting just before saving a file
  opts = {
    format_on_save = true, -- Enable auto-formatting on file save
    formatters_by_ft = {
      -- Define formatters for different file types
      javascript = { "prettierd" }, -- Use Prettier for JavaScript
      typescript = { "prettierd" }, -- Use Prettier for TypeScript
      javascriptreact = { "prettierd" }, -- Use Prettier for JSX
      typescriptreact = { "prettierd" }, -- Use Prettier for TSX
      html = { "prettierd" }, -- Use Prettier for HTML
      css = { "prettierd" }, -- Use Prettier for CSS
      json = { "prettierd" }, -- Use Prettier for JSON
      markdown = { "prettierd" }, -- Use Prettier for Markdown
      lua = { "stylua" }, -- Use Stylua for Lua
      sh = { "shfmt" }, -- Use shfmt for Shell scripts
    },
  },
}
