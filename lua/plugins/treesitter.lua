return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = { "javascript", "typescript", "html", "css", "json", "tsx" },
      highlight = { enable = true },
      indent = { enable = false },
    },
  },
}
