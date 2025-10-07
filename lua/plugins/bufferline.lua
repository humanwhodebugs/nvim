return {
  "akinsho/bufferline.nvim", -- A snazzy bufferline
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Required for file-type icons

  opts = function(_, opts)
    -- Apply Catppuccin-specific highlights if the current colorscheme is "catppuccin"
    if vim.g.colors_name and vim.g.colors_name:find("catppuccin") then
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
    end

    -- Override or add custom highlights
    opts.highlights = {
      separator = {
        fg = "#4c4f69",
        bg = "#eff1f5",
      },

      separator_selected = {
        fg = "#4c4f69",
        bg = "#eff1f5",
      },

      background = {
        fg = "#ccd0da",
        bg = "#eff1f5",
      },

      buffer_selected = {
        fg = "#4c4f69",
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
      separator_style = { "|", "|" },
      indicator = { style = "none" },
      show_close_icon = false,
      show_buffer_icons = true,
      show_buffer_close_icons = false,
      always_show_bufferline = false,

      diagnostics = "nvim_lsp",

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
          highest_level = level or "hint"
        end

        local icon = icons[highest_level]

        return " " .. icon .. " " .. count
      end,

      offsets = {
        {
          filetype = "neo-tree",
          highlight = "Catppuccin",
          text = "File Explorer",
          text_align = "center",
          separator = true,
        },
      },
    }

    return opts
  end,
}
