return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "javascript", "typescript", "html", "css", "json", "tsx", "lua" },
      highlight = { enable = true },
    },
  },
}
