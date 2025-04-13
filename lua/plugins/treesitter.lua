return {
  {
    "nvim-treesitter/nvim-treesitter", -- Plugin identifier from GitHub for nvim-treesitter
    build = ":TSUpdate", -- Command to run after the plugin is installed to update Treesitter parsers
    event = { "BufReadPost", "BufNewFile" }, -- Trigger the plugin on opening or reading a buffer
    config = function(_, opts) -- Setup configuration for Treesitter using provided options
      require("nvim-treesitter.configs").setup(opts) -- Apply the Treesitter configuration
    end,
    opts = { -- Configuration options for nvim-treesitter
      ensure_installed = { -- List of languages to install parsers for
        "javascript", -- JavaScript
        "typescript", -- TypeScript
        "tsx", -- TSX (React TypeScript)
        "html", -- HTML
        "css", -- CSS
        "json", -- JSON
        "lua", -- Lua
        "markdown", -- Markdown
      },
      highlight = { enable = true }, -- Enable syntax highlighting using Treesitter
      indent = { enable = false }, -- Disable automatic indentation by Treesitter
    },
  },
}
