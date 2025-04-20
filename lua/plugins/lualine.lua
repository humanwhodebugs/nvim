return {
  "nvim-lualine/lualine.nvim",
  event = { "BufRead", "BufNewFile" },
  opts = {
    options = {
      theme = "catppuccin", -- Set the theme to catppuccin
      icons_enabled = true, -- Enable icons
      section_separators = { left = "", right = "" }, -- Section separators
      component_separators = { left = " ", right = " " }, -- Component separators
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
        },
      },

      -- Shows Git branch and diff information
      lualine_b = {
        {
          "branch",
        },
        {
          "diff",
          symbols = {
            added = "+",
            modified = "!",
            removed = "-",
          },
          color = { bg = "#1e1e2e" },
        },
      },

      -- Displays diagnostics
      lualine_c = {
        {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = { error = " ", warn = " ", hint = " ", info = " " }, -- Symbols for each diagnostic level
          colored = true, -- Enable colored diagnostics
          update_in_insert = false, -- Disable updates during insert mode
        },
      },

      -- Display file format
      lualine_x = {
        {
          "fileformat",
          icons_enabled = true, -- Enable icons for file format
          symbols = { unix = "", dos = "", mac = "" }, -- Icons for different file formats
        },
      },

      -- Displays the file type
      lualine_y = { { "filetype", color = { bg = "#1e1e2e" } } },

      -- Shows file status (modified, readonly, unnamed) and cursor position
      lualine_z = {
        {
          "location",
          color = { bg = "#f5c2e7", fg = "#1e1e2e", gui = "bold" }, -- Set color for the location section
        },
      },
    },
  },
}
