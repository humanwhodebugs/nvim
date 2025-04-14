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
        fg = "#f5c2e7", -- Separator color
        bg = "#1e1e2e", -- Background color
      },
      separator_selected = {
        fg = "#f38ba8",
        bg = "#1e1e2e",
      },
      background = {
        fg = "#cdd6f4", -- Inactive tab text color
        bg = "#1e1e2e",
      },
      buffer_selected = {
        fg = "#f5c2e7", -- Active tab text color
        bg = "#1e1e2e",
        bold = true,
        italic = false,
      },
      indicator_selected = {
        fg = "#f5c2e7",
        bg = "#1e1e2e",
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
          text = "File Explorer", -- Label for the offset
          highlight = "Directory", -- Highlight group for the label
          text_align = "center", -- Align text to center
        },
      },
    }

    return opts
  end,
}
