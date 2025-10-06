return {
  {
    "chrisgrieser/nvim-origami",
    event = { "BufReadPre", "BufNewFile" }, -- Load the plugin before opening a buffer (so folds are available immediately)
    opts = {
      useLspFoldsWithTreesitterFallback = true, -- Prefer LSP folds, fallback to Treesitter if LSP folds are not available
      pauseFoldsOnSearch = true, -- Temporarily disable folding while searching for better visibility
      foldtext = {
        enabled = true, -- Enable custom fold text
        padding = 1, -- Add padding around the fold text
        lineCount = {
          template = "...", -- Display folded line count, `%d` is replaced by the number
          hlgroup = "Comment", -- Highlight group for the line count text
        },
        diagnosticsCount = false, -- Disable showing diagnostic count in folded lines
        gitsignsCount = false, -- Disable showing git changes count in folded lines
      },
      autoFold = {
        enabled = true, -- Automatically fold certain code sections
        kinds = { "comment", "imports" }, -- Fold comments and import statements
      },
      foldKeymaps = {
        setup = true, -- Enable default keymaps for folds (overrides `h`, `l`, and `$`)
        hOnlyOpensOnFirstColumn = false, -- Allow `h` to close folds regardless of cursor column
      },
    },
    -- Disable vim auto-folding
    init = function()
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
    end,
  },
}
