return {
  "nvim-lualine/lualine.nvim", -- A blazing fast and easy to configure neovim statusline
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

  opts = {
    options = {
      theme = "catppuccin",
      icons_enabled = true,
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      globalstatus = true,
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
          symbols = { error = " ", warn = " ", hint = " ", info = " " },
          colored = true,
          update_in_insert = false,
        },
      },

      -- Displays the file type
      lualine_y = { { "filetype", color = { bg = "#acb0be", fg = "#eff1f5" } } },

      -- Shows file status (modified, readonly, unnamed) and cursor position
      lualine_z = {
        {
          "location",
          color = { bg = "#4c4f69", fg = "#eff1f5", gui = "bold" },
        },
      },
    },
  },
}
