return {
  -- Plugin repository for auto-tagging (auto close/rename HTML-like tags)
  "windwp/nvim-ts-autotag",
  -- Lazy load the plugin on reading or creating a file
  event = { "BufReadPre", "BufNewFile" },
  -- Configuration function to set up the plugin
  config = function()
    -- Import and set up the plugin using the new configuration format
    require("nvim-ts-autotag").setup({
      autotag = {
        -- Enable the autotag feature globally
        enable = true,
        -- Automatically close tags when typing
        enable_close = true,
        -- Automatically rename matching tag pairs
        enable_rename = true,
        -- Disable auto closing when typing a trailing </
        enable_close_on_slash = false,

        -- Optional: specify filetypes manually if needed (uncomment to use)
        -- filetypes = {
        --   "html",            -- Enable for HTML files
        --   "xml",             -- Enable for XML files
        --   "javascript",      -- Enable for JavaScript files
        --   "typescriptreact", -- Enable for TypeScript React (TSX) files
        --   "javascriptreact", -- Enable for JavaScript React (JSX) files
        --   "svelte",          -- Enable for Svelte files
        --   "vue",             -- Enable for Vue files
        -- },
      },
    })
  end,
}
