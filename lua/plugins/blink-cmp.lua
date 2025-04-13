return {
  "Saghen/blink.cmp",
  version = "*", -- Always use the latest version
  event = { "VeryLazy" }, -- Load plugin when opening or creating a file
  opts = {
    completion = {
      menu = {
        border = "single", -- Defines the border style for the completion menu
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None", -- Highlighting settings for the menu
      },

      documentation = {
        auto_show = true, -- Automatically show documentation on item selection
        window = {
          border = "single", -- Border style for documentation popup
          scrollbar = false, -- Hide scrollbar in documentation
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:FloatBorder,EndOfBuffer:FloatBorder", -- Highlighting settings for the documentation window
        },
      },

      list = {
        max_items = 8, -- Maximum number of completion items shown

        selection = {
          preselect = true, -- Automatically preselect the first item
          -- To disable preselect for markdown files:
          -- preselect = function(ctx) return vim.bo.filetype ~= 'markdown' end,

          auto_insert = true, -- Automatically insert the selected item
          -- To disable auto insert for markdown files:
          -- auto_insert = function(ctx) return vim.bo.filetype ~= 'markdown' end,
        },

        cycle = {
          from_bottom = true, -- Cycle to top after last item
          from_top = true, -- Cycle to bottom after first item
        },
      },

      -- ghost_text = {
      --   enabled = true, -- Enable ghost text suggestions
      --   show_with_selection = true, -- Show ghost text when an item is selected
      --   show_without_selection = false, -- Hide ghost text if nothing is selected
      --   show_with_menu = true, -- Show ghost text when completion menu is visible
      --   show_without_menu = true, -- Show ghost text even if menu is not visible
      -- },
    },
  },
}
