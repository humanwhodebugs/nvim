return {
  "Saghen/blink.cmp",
  config = function()
    require("blink.cmp").setup({
      completion = {

        menu = {
          border = "single", -- Defines the border style for the completion menu.
          -- Configures highlights for various UI elements in the completion menu.
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        },

        documentation = {
          auto_show = true, -- Automatically displays documentation when selecting an item.
          window = {
            border = "single", -- Sets the border style for the hover documentation window.
            scrollbar = false, -- Disables scrollbar in the documentation window.
            -- Defines highlights for the documentation window.
            winhighlight = "Normal:BlinkCmpDoc,FloatBorder:FloatBorder,EndOfBuffer:FloatBorder",
          },
        },

        list = {
          max_items = 5, -- Limits the number of visible completion items.

          selection = {
            preselect = true, -- Preselects the first item in the completion menu.
            -- To disable preselection for Markdown files, use:
            -- preselect = function(ctx) return vim.bo.filetype ~= 'markdown' end,

            auto_insert = true, -- Inserts the selected item into the buffer automatically.
            -- To disable auto-insert for Markdown files, use:
            -- auto_insert = function(ctx) return vim.bo.filetype ~= 'markdown' end,
          },

          cycle = {
            from_bottom = true, -- Allows cycling back to the top when reaching the last item.
            from_top = true, -- Allows cycling to the bottom when reaching the first item.
          },
        },

        ghost_text = {
          enabled = true, -- Enables ghost text feature.
          show_with_selection = true, -- Displays ghost text when an item is selected.
          show_without_selection = false, -- Hides ghost text when no item is selected.
          show_with_menu = true, -- Shows ghost text when the completion menu is open.
          show_without_menu = true, -- Shows ghost text even when the menu is closed.
        },
      },
    })
  end,
}
