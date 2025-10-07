return {
  "windwp/nvim-ts-autotag", -- Use treesitter to auto close and auto rename html tag
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

  config = function()
    require("nvim-ts-autotag").setup({
      autotag = {
        enable = true,
        enable_close = true,
        enable_rename = true,
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
