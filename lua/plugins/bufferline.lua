return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy", -- Enable Lazy Load
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" },
  opts = function(_, opts)
    -- Apply Catppuccin theme highlights only if the colorscheme is set to "catppuccin"
    if vim.g.colors_name and vim.g.colors_name:find("catppuccin") then
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
    end

    -- Custom Highlights
    opts.highlights = {
      separator = {
        fg = "#f5c2e7", -- Color of the separator line
        bg = "#1e1e2e", -- Background of the separator line
      },
      separator_selected = {
        fg = "#f38ba8", -- Color of the separator when the tab is selected
        bg = "#1e1e2e",
      },
      background = {
        fg = "#cdd6f4", -- Text color of inactive tabs
        bg = "#1e1e2e",
      },
      buffer_selected = {
        fg = "#f5c2e7", -- Text color of the selected tab
        bg = "#1e1e2e",
        bold = true,
        italic = false,
      },
      indicator_selected = {
        fg = "#f5c2e7", -- Indicator color of the selected tab
        bg = "#1e1e2e",
      },
    }

    opts.options = {
      separator_style = { "|", "|" }, -- Style of buffer separators
      indicator = { style = "none" }, -- Disable buffer indicator
      show_close_icon = false, -- Hide the global close icon
      show_buffer_icons = true, -- Show file-type icons on buffers
      show_buffer_close_icons = false, -- Hide close icons on individual buffers
      always_show_bufferline = false, -- Hide bufferline when only one buffer is open

      diagnostics = "nvim_lsp", -- Enable LSP diagnostics in bufferline
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " " -- Choose icon based on diagnostic level
        return " " .. icon .. count -- Display icon and count of diagnostics
      end,

      offsets = {
        {
          filetype = "neo-tree", -- File explorer integration
          text = "File Explorer", -- Display text in the offset area
          highlight = "Directory", -- Highlight style for the offset text
          text_align = "center", -- Align the text in the center
        },
      },
    }

    return opts
  end,
}
