return {
  "L3MON4D3/LuaSnip", -- Adds the LuaSnip plugin for snippets in Neovim
  event = { "BufReadPost", "BufNewFile" }, -- This plugin is loaded when a file is read or created
  version = "v2.*", -- Specifies the compatible version of the plugin
  dependencies = { "rafamadriz/friendly-snippets" }, -- Adds the 'friendly-snippets' plugin, which provides many useful snippets
  config = function()
    -- Lazy load snippets from 'friendly-snippets' only when needed
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
