return {
  {
    "nvim-treesitter/nvim-treesitter", -- Treesitter configurations and abstraction layer
    build = ":TSUpdate", -- Command to run after the plugin is installed to update Treesitter parsers
    event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,

    opts = {
      ensure_installed = {
        "bash",
        "css",
        "html",
        "json",
        "javascript",
        "lua",
        "markdown",
        "typescript",
        "tsx",
      },

      highlight = { enable = true }, -- Enable syntax highlighting using Treesitter
      indent = { enable = false }, -- Disable automatic indentation by Treesitter
    },
  },
}
