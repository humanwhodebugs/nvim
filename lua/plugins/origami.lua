return {
  {
    "chrisgrieser/nvim-origami", -- Collection of quality-of-life features related to folding
    event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

    opts = {
      useLspFoldsWithTreesitterFallback = true,
      pauseFoldsOnSearch = true,

      foldtext = {
        enabled = true,
        padding = 1,

        lineCount = {
          template = "...",
          hlgroup = "Comment",
        },

        diagnosticsCount = false,
        gitsignsCount = false,
      },

      autoFold = {
        enabled = true,
        kinds = { "comment", "imports" },
      },

      foldKeymaps = {
        setup = true,
        hOnlyOpensOnFirstColumn = false,
      },
    },

    -- Disable vim auto-folding
    init = function()
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
    end,
  },
}
