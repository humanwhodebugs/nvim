return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, { name = "luasnip" })
      table.insert(opts.sources, { name = "nvim_lsp" })
    end,
  },
  {
    "L3MON4D3/LuaSnip", -- Snippet Engine
    opts = {
      history = true,
      updateevents = "TextChanged,TextChangedI",
    },
  },
}
