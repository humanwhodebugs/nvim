return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, { name = "luasnip" })
      table.insert(opts.sources, { name = "nvim_lsp" })
      table.insert(opts.sources, { name = "tailwindcss" })
    end,
  },
}
