return {
  {
    "catppuccin/nvim", --  Soothing pastel theme
    name = "catppuccin",
    commit = "fa42eb5e26819ef58884257d5ae95dd0552b9a66", -- Latest releases had so many breaking changes
    lazy = false, -- Load this plugin immediately, not lazily
    priority = 1000,

    opts = {
      flavour = "latte",

      background = {
        light = "latte",
        dark = "latte",
      },

      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = false,

      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },

      no_italic = false,
      no_bold = false,
      no_underline = false,

      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },

      integrations = {
        blink_cmp = true,
        bufferline = true,
        gitsigns = true,
        mason = true,

        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },

          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
            ok = { "undercurl" },
          },

          inlay_hints = {
            background = true,
          },
        },

        neotree = true,
        treesitter = true,

        snacks = {
          enabled = true,
          indentscope_color = "blue",
        },
      },

      custom_highlights = function()
        return {
          Catppuccin = { fg = "#4c4f69" },
          FloatBorder = { fg = "#4c4f69" },
          Folded = { fg = "#6c6f85", bg = "#eff1f5", bold = true, italic = true },
          FoldColumn = { fg = "#6c6f85", bg = "#eff1f5" },
          NeoTreeWinSeparator = { fg = "#4c4f69" },
          NeoTreeNormal = { fg = "#4c4f69" },
          NeoTreeDirectoryName = { fg = "#4c4f69" },
          NeoTreeDirectoryIcon = { fg = "#4c4f69" },
          NeoTreeFileName = { fg = "#4c4f69" },
          NeoTreeRootName = { fg = "#4c4f69" },
          SnacksDashboardDesc = { fg = "#4c4f69" },
          SnacksDashboardHeader = { fg = "#4c4f69" },
          SnacksDashboardIcon = { fg = "#4c4f69" },
          SnacksDashboardKey = { fg = "#4c4f69" },
          SnacksDashboardTitle = { fg = "#4c4f69" },
          SnacksNotifierBorderInfo = { fg = "#4c4f69" },
          SnacksNotifierFooterInfo = { fg = "#4c4f69" },
          SnacksNotifierIconInfo = { fg = "#4c4f69" },
          SnacksNotifierInfo = { fg = "#4c4f69" },
          SnacksNotifierTitleInfo = { fg = "#4c4f69" },
          WinSeparator = { fg = "#4c4f69" },
        }
      end,
    },
  },
}
