return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy", -- Load this plugin lazily
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Required for file-type icons
  opts = function(_, opts)
    -- Apply Catppuccin-specific highlights if the current colorscheme is "catppuccin"
    if vim.g.colors_name and vim.g.colors_name:find("catppuccin") then
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
    end

    -- Override or add custom highlights
    opts.highlights = {
      separator = {
        fg = "#4c4f69", -- Separator color
        bg = "#eff1f5", -- Background color
      },
      separator_selected = {
        fg = "#4c4f69", -- Separator color
        bg = "#eff1f5", -- Background color
      },
      background = {
        fg = "#ccd0da", -- Inactive tab text color
        bg = "#eff1f5",
      },
      buffer_selected = {
        fg = "#4c4f69", -- Active tab text color
        bg = "#eff1f5",
        bold = true,
        italic = true,
      },
      indicator_selected = {
        fg = "#4c4f69",
        bg = "#eff1f5",
      },
    }

    -- Bufferline behavior and appearance settings
    opts.options = {
      separator_style = { "|", "|" }, -- Style of buffer separators
      indicator = { style = "none" }, -- Disable tab indicator
      show_close_icon = false, -- Hide the global close button
      show_buffer_icons = true, -- Enable file-type icons
      show_buffer_close_icons = false, -- Hide close button per tab
      always_show_bufferline = false, -- Hide bufferline if only one tab is open

      diagnostics = "nvim_lsp", -- Show LSP diagnostics in bufferline
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icons = {
          error = "󰅚", -- Icon for error
          warning = "⚠", -- Icon for warning
          info = "ℹ", -- Icon for info
          hint = "󰌶", -- Icon for hint
        }

        local highest_level
        if diagnostics_dict.error and diagnostics_dict.error > 0 then
          highest_level = "error"
        elseif diagnostics_dict.warning and diagnostics_dict.warning > 0 then
          highest_level = "warning"
        elseif diagnostics_dict.info and diagnostics_dict.info > 0 then
          highest_level = "info"
        elseif diagnostics_dict.hint and diagnostics_dict.hint > 0 then
          highest_level = "hint"
        else
          highest_level = level or "hint" -- Fallback
        end

        local icon = icons[highest_level]

        return " " .. icon .. " " .. count
      end,

      offsets = {
        {
          filetype = "neo-tree", -- Offset section when Neo-tree is open
          highlight = "Catppuccin", -- Custom highlight colors
          text = "File Explorer", -- Label for the offset
          text_align = "center", -- Align text to center
          separator = true, -- Enable bufferline separator
        },
      },
    }

    return opts
  end,
}
