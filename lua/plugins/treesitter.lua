return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "javascript", "typescript", "html", "css", "json", "tsx", "lua" },
      highlight = { enable = true },
    },
  },
}
