return {
  {
    "catppuccin/nvim", -- Plugin repository for the Catppuccin theme
    name = "catppuccin", -- Custom name for the theme plugin
    commit = "fa42eb5e26819ef58884257d5ae95dd0552b9a66", -- Latest releases had so many breaking changes
    lazy = false, -- Load the plugin immediately, not lazily
    priority = 1000, -- High priority to ensure the theme is loaded first
    opts = {
      flavour = "latte", -- Set the Catppuccin theme flavour (options: mocha, latte, etc.)
      background = {
        light = "latte", -- Set the background theme for light mode
        dark = "latte", -- Set the background theme for dark mode
      },
      transparent_background = true, -- Enable transparent background
      show_end_of_buffer = false, -- Do not show '~' at the end of the buffer
      term_colors = false, -- Disable terminal colors override
      dim_inactive = {
        enabled = false, -- Do not dim inactive windows
        shade = "dark", -- Type of shading if dimming was enabled
        percentage = 0.15, -- Percentage of dimming (not applied here)
      },
      no_italic = false, -- Allow italic styles
      no_bold = false, -- Allow bold styles
      no_underline = false, -- Allow underlined text
      styles = { -- Define specific text styles for different syntax groups
        comments = { "italic" }, -- Italicize comments
        conditionals = { "italic" }, -- Italicize conditionals (if, else, etc.)
        loops = {}, -- No special style for loops
        functions = {}, -- No special style for functions
        keywords = {}, -- No special style for keywords
        strings = {}, -- No special style for strings
        variables = {}, -- No special style for variables
        numbers = {}, -- No special style for numbers
        booleans = {}, -- No special style for booleans
        properties = {}, -- No special style for properties
        types = {}, -- No special style for types
        operators = {}, -- No special style for operators
      },
      integrations = { -- Enable integration with various plugins
        blink_cmp = true, -- Enable integration with blink-cmp
        bufferline = true, -- Enable integration with Bufferline
        gitsigns = true, -- Enable integration with gitsigns
        mason = true, -- Enable integration with Mason
        -- Enable integration with Neovim LSP config
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
        neotree = true, -- Enable integration with Neo-tree
        treesitter = true, -- Enable integration with Treesitter
        snacks = {
          enabled = true, -- Enable integration with snacks.nvim
          indentscope_color = "blue", -- Set the indent scope color to pink
        },
      },

      custom_highlights = function()
        return {
          Catppuccin = { fg = "#4c4f69" }, -- Custom color
          FloatBorder = { fg = "#4c4f69" }, -- Set border color for floating windows
          NeoTreeWinSeparator = { fg = "#4c4f69" }, -- Set separator color for Neo-tree
          NeoTreeNormal = { fg = "#4c4f69" }, -- Set separator color for Neo-tree
          NeoTreeDirectoryName = { fg = "#4c4f69" }, -- Set color for Neo-tree directory name
          NeoTreeDirectoryIcon = { fg = "#4c4f69" }, -- Set color for Neo-tree directory Icon
          NeoTreeFileName = { fg = "#4c4f69" }, -- Set color for Neo-tree file name
          NeoTreeRootName = { fg = "#4c4f69" }, -- Set color for Neo-tree root folder name
          SnacksDashboardDesc = { fg = "#4c4f69" }, -- Set color for Snacks dashboard description
          SnacksDashboardHeader = { fg = "#4c4f69" }, -- Set color for Snacks header
          SnacksDashboardIcon = { fg = "#4c4f69" }, -- Set color for Snacks dashboad icon
          SnacksDashboardKey = { fg = "#4c4f69" }, -- Set color for Snacks dashboar key
          SnacksDashboardTitle = { fg = "#4c4f69" }, -- Set color for Snacks dashboard title
          SnacksNotifierBorderInfo = { fg = "#4c4f69" }, -- Set color for Snacks notif border
          SnacksNotifierFooterInfo = { fg = "#4c4f69" }, -- Set color for Snacks notif footer
          SnacksNotifierIconInfo = { fg = "#4c4f69" }, -- Set color for Snacks notif icon
          SnacksNotifierInfo = { fg = "#4c4f69" }, -- Set color for Snacks notif info
          SnacksNotifierTitleInfo = { fg = "#4c4f69" }, -- Set color for Snacks notif title info
          WinSeparator = { fg = "#4c4f69" }, -- Set separator color between windows
        }
      end,
    },
  },
}
