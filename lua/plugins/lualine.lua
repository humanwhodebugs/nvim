return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "catppuccin",
      icons_enabled = true,
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
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
      lualine_b = { "branch", "diff" },

      -- Displays diagnostics
      lualine_c = {
        {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = { error = " ", warn = " ", hint = " ", info = " " },
          colored = true,
          update_in_insert = false,
        },
      },

      -- Display file format
      lualine_x = {
        {
          "fileformat",
          icons_enabled = true,
          symbols = { unix = "", dos = "", mac = "" },
        },
      },

      -- Displays the file type
      lualine_y = { "filetype" },

      -- Shows file status (modified, readonly, unnamed) and cursor position
      lualine_z = {
        {
          "location",
          color = { bg = "#f5c2e7", fg = "#1e1e2e", gui = "bold" },
        },
      },
    },
  },
}
