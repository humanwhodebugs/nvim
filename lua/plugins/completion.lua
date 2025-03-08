return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      vim.list_extend(opts.sources, {
        { name = "nvim_lsp", max_item_count = 10 }, -- Limit suggestions to improve performance
        { name = "tailwindcss", max_item_count = 5 }, -- Reduce Tailwind suggestions to avoid clutter
        { name = "path" }, -- Enable path completion
      })

      -- Performance optimizations
      opts.performance = {
        debounce = 20, -- Lower debounce for faster response time
        throttle = 50, -- Reduce throttle to make suggestions appear quicker
        fetching_timeout = 150, -- Shorten fetching timeout to prevent lag
      }

      -- Prevent suggestions from appearing too early
      opts.completion = {
        keyword_length = 2, -- Only trigger completion after typing at least 2 characters
      }
    end,
  },
}
