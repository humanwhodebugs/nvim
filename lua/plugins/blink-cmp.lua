return {
  "Saghen/blink.cmp", -- Performant, batteries-included completion plugin
  version = "*", -- Always use the latest version
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

  opts = {
    completion = {
      menu = {
        border = "single",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None", -- Highlighting settings for the menu
      },

      documentation = {
        auto_show = true,

        window = {
          border = "single",
          scrollbar = false,
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:FloatBorder,EndOfBuffer:FloatBorder",
        },
      },

      list = {
        max_items = 8,

        selection = {
          preselect = true,
          -- To disable preselect for markdown files:
          -- preselect = function(ctx) return vim.bo.filetype ~= 'markdown' end,

          auto_insert = true,
          -- To disable auto insert for markdown files:
          -- auto_insert = function(ctx) return vim.bo.filetype ~= 'markdown' end,
        },

        cycle = {
          from_bottom = true,
          from_top = true,
        },
      },
    },
  },
}
