return {
  "nvim-lualine/lualine.nvim",
  event = { "BufRead", "BufNewFile" },
  opts = {
    options = {
      theme = "catppuccin", -- Set the theme to catppuccin
      icons_enabled = true, -- Enable icons
      component_separators = { left = "", right = "" }, -- Section separators
      section_separators = { left = "", right = "" }, -- Section separators
      globalstatus = true, -- Use global statusline
    },
    sections = {
      -- Displays the current mode with a Vim icon
      lualine_a = {
        {
          "mode",
          fmt = function(str)
            return " " .. str
          end,
          color = {
            bg = "#4c4f69",
            fg = "#eff1f5",
          },
          separator = { right = "" },
        },
      },

      -- Shows Git branch and diff information
      lualine_b = {
        {
          "branch",
          color = { bg = "#acb0be", fg = "#eff1f5" },
          separator = { right = "" },
        },
      },

      -- Displays git signs
      lualine_c = {
        {
          "diff",
          symbols = { added = " ", modified = " ", removed = " " },
        },
      },

      -- Display diagnostic
      lualine_x = {
        {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = { error = " ", warn = " ", hint = " ", info = " " }, -- Symbols for each diagnostic level
          colored = true, -- Enable colored diagnostics
          update_in_insert = false, -- Disable updates during insert mode
        },
      },

      -- Displays the file type
      lualine_y = { { "filetype", color = { bg = "#acb0be", fg = "#eff1f5" } } },

      -- Shows file status (modified, readonly, unnamed) and cursor position
      lualine_z = {
        {
          "location",
          color = { bg = "#4c4f69", fg = "#eff1f5", gui = "bold" }, -- Set color for the location section
        },
      },
    },
  },
}
