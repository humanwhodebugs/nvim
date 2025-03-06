return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        { name = "nvim_lsp" },
        { name = "tailwindcss" },
        { name = "path" },
      })
    end,
  },
}
